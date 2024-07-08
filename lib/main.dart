import 'package:flutter/material.dart';
import 'package:mystore/app.dart';
import 'package:mystore/injection_container.dart';

void main() {
  configureDependencies();

  runApp(const App());
}
