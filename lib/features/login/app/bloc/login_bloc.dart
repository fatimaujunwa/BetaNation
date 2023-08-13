import 'package:beta_nation/utils/api/abstract_api_state.dart';
import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.init()) {
    on<LoginEvent>((event, emit) async {
      emit(state.loading() as LoginState);
    });
  }
}
