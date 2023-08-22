import 'dart:math';

import 'package:beta_nation/features/login/data/repository/login_repository.dart';
import 'package:beta_nation/utils/api/abstract_api_state.dart';
import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _respositories = LoginRepositories();
  LoginBloc() : super(LoginState.init()) {
    on<LoginEvent>((event, emit) async {
      emit(state.loading() as LoginState);
      Future.delayed(Duration.zero);
      try {

        final data = _respositories.login(event.nin!, event.password!);
        emit(state.success(data) as LoginState);
      }  on BetaNationException catch (error) {
        emit(state.failed(error) as LoginState);
        
      }
      catch (e){
       print(e);
      }
    });
  }
}
