import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:isar/isar.dart';
import 'package:mystore/core/utils/http_client/logger_interceptor.dart';
import 'package:mystore/features/authentication/data/models/user_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => '';

  @preResolve
  Future<SharedPreferences> prefs() => SharedPreferences.getInstance();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  Dio client(@Named('BaseUrl') String url) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LoggerInterceptor());
    }

    return dio;
  }

  @preResolve
  @Named("dir")
  Future<Directory> appDocumentsDir() => getApplicationDocumentsDirectory();

  @preResolve
  Future<Isar> bd(@Named('dir') Directory dir) => Isar.open(
        [
          IsarUserModelSchema,
        ],
        directory: dir.path,
      );
}
