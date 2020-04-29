import 'package:chopper/chopper.dart';
import 'package:flutterblocchopper/models/login_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginState {}

class InitialLoginState extends LoginState {}
class LoadingLoginState extends LoginState{}
class LoadedLoginState extends LoginState{
  final Response<Login> login;

  LoadedLoginState({@required this.login});

}
class ErrorLoginState extends LoginState{}
