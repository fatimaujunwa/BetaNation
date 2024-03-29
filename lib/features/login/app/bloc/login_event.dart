part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  final String? nin;
  final String? password;

  const LoginEvent({this.nin, this.password});
  @override
  List<Object?> get props => [nin, password];
}
