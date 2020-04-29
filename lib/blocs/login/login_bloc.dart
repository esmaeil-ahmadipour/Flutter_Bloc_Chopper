import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:flutterblocchopper/models/login_model.dart';
import 'package:flutterblocchopper/services/api_services.dart';

import './bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => InitialLoginState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is Fetch) {
      Map<String, dynamic> body = {
        "email": event.email,
        "password": event.password
      };

      yield LoadingLoginState();

      try {
        final Response response = await ApiService.create().getResult(body);
        final Login _convertResponse = Login.fromJson(response.body);

        yield LoadedLoginState(login: _convertResponse);
      } catch (e) {
        yield ErrorLoginState(error: e.toString());
      }
    }
  }
}
