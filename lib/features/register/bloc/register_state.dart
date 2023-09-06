


import 'package:beta_nation/utils/api/abstract_api_state.dart';
import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';

class RegisterState extends ApiState<dynamic> {


  const RegisterState(
      {dynamic data,
      bool? isEmpty,
      bool? isLoading,
      bool? isSuccess,
      BetaNationException? error,
      BetaNationApiResponse? success})
      : super(
          data: data,
          isEmpty: isEmpty,
          isLoading: isLoading,
          error: error,
          sucess: success,
          isSuccess: isSuccess,
        );

       

  factory RegisterState.init() {
    return const RegisterState(
      isLoading: false,
      isEmpty: false,
      isSuccess: false,
    );
  }

  

  @override
  ApiState copyWith(
          {data$,
          bool? isLoading$,
          bool? isEmpty$,
          BetaNationException? error$,
          bool? isSuccess$,
          BetaNationApiResponse? success$,
          String? emptyMessage$}) =>
      RegisterState(
          data: data$,
          isLoading: isLoading$,
          error: error$,
          isSuccess: isSuccess$,
          success: sucess);
}