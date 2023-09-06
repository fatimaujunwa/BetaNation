import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  final String? stateOfOrigin;
  const RegisterEvent({this.stateOfOrigin});
}

class RegisterLGAEvent extends RegisterEvent {
  const RegisterLGAEvent({required super.stateOfOrigin});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class RegisterStatesEvent extends RegisterEvent {
  const RegisterStatesEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}


class RegisterVerifyEvent extends RegisterEvent {
  const RegisterVerifyEvent();

  @override
  List<Object?> get props => [super.stateOfOrigin];
}
