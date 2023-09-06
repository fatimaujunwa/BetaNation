//this class represents the different states of the api when called
// loading, success, error

import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:beta_nation/utils/api/models/betanation_response.dart';
import 'package:equatable/equatable.dart';

abstract class ApiState<T> extends Equatable {
  final T? data;
  final bool? isEmpty;
  final BetaNationException? error;
  final bool? isSuccess;
  final String? emptyMessage;
  final bool? isLoading;
  final BetaNationApiResponse? sucess;

  bool get hasData => this.data != null;
  bool get hasError => this.error != null;

  const ApiState({
    this.data,
    required this.isEmpty,
    required this.isLoading,
    this.error,
    required this.isSuccess,
    this.sucess,
    this.emptyMessage,
  });

  ApiState<T> loading() {
    return copyWith(isLoading$: true, isSuccess$: false, data$: this.data);
  }

  ApiState<T> failed(BetaNationException error) {
    return copyWith(
      data$: this.data ?? null,
      error$: error,
      isLoading$: false,
      isSuccess$: false,
    );
  }

  ApiState<T> stopLoading() {
    return copyWith(data$: data, isLoading$: false, isSuccess$: false);
  }

  ApiState<T> success(T data) {
    return copyWith(
        data$: data, isLoading$: false, isSuccess$: false, isEmpty$: false);
  }

  ApiState<T> copyWith(
      {T? data$,
      bool? isLoading$,
      bool? isEmpty$,
      BetaNationException? error$,
      bool? isSuccess$,
      BetaNationApiResponse? success$,
      String? emptyMessage$});

  @override
  List<Object?> get props =>
      [data, isEmpty, isLoading, error, isSuccess, emptyMessage];
}
