import 'dart:math' as lg;
import 'dart:developer';
import 'package:beta_nation/features/login/data/repository/login_repository.dart';
import 'package:beta_nation/features/register/bloc/register_event.dart';
import 'package:beta_nation/features/register/bloc/register_state.dart';
import 'package:beta_nation/features/register/data/models/regions_model.dart';
import 'package:beta_nation/features/register/data/models/states_model.dart';
import 'package:beta_nation/features/register/data/repository/register_repository.dart';
import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final _respositories = RegisterRepository();
  RegisterBloc() : super(RegisterState.init()) {
    on<RegisterEvent>(
      (event, emit) async {
        if (event is RegisterLGAEvent) {
          emit(state.loading() as RegisterState);
          await Future.delayed(Duration.zero);

          try {
            final data = await _respositories.getLga(event.stateOfOrigin!);
            Regions e = data;
            print(e.lgas);

            emit(state.success(data) as RegisterState);
          } on BetaNationException catch (error) {
            emit(state.failed(error) as RegisterState);
          } catch (e) {
            print(e);
          }
        }

        if (event is RegisterStatesEvent){
          emit(state.loading() as RegisterState);
          await Future.delayed(Duration.zero);
             try {
            final data = await _respositories.getStates();
           

            emit(state.success(data) as RegisterState);
          } on BetaNationException catch (error) {
            emit(state.failed(error) as RegisterState);
          } catch (e) {
            print(e);
          }


        }
      },
    );
  }
}
