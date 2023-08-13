part of 'login_bloc.dart';

class LoginState extends ApiState<dynamic> {
  const LoginState(
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

       

  factory LoginState.init() {
    return const LoginState(
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
      LoginState(
          data: data$,
          isLoading: isLoading$,
          error: error$,
          isSuccess: isSuccess$,
          success: sucess);
}
