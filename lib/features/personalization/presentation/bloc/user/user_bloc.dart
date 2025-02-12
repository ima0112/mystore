import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/usecases/manage_user_use_case.dart';
import 'package:mystore/core/constants/enums.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final ManageUserUseCase _manageUserUseCase;

  UserEntity user = UserEntity.empty;

  UserBloc(this._manageUserUseCase)
      : super(const UserState(user: UserEntity.empty)) {
    on<UserEvent>((event, emit) async {
      await event.when(
        getUser: () async {
          final result = _manageUserUseCase.getUser();

          if (result.$2 != null) {
            user = result.$2!;
            emit(state.copyWith(user: result.$2!));
          }
        },
        updateUser: (firstName, lastName) async {
          emit(state.copyWith(status: Status.loading));

          user = user.copyWith(firstName: firstName, lastName: lastName);
          final result = await _manageUserUseCase.updateUser(user);

          if (result.$2 != null) {
            emit(state.copyWith(user: result.$2!, status: Status.loaded));
          } else if (result.$1 != null) {
            emit(state.copyWith(status: Status.error));
          }
        },
      );
    });
  }
}
