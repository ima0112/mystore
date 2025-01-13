import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/usecases/manage_user_use_case.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final ManageUserUseCase _manageUserUseCase;

  UserBloc(this._manageUserUseCase)
      : super(const UserState(user: UserEntity.empty)) {
    on<UserEvent>((event, emit) async {
      await event.when(
        getUser: () async {
          final user = await _manageUserUseCase(const NoParams());

          if (user.$2 != null) {
            emit(state.copyWith(user: user.$2!));
          }
        },
      );
    });
  }
}
