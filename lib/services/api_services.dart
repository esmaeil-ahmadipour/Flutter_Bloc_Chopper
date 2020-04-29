import 'package:chopper/chopper.dart';
import 'package:flutterblocchopper/models/login_model.dart';

part 'api_services.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Post(path: "/login")
  Future<Response<Login>> getResult(@Body() Map<String, dynamic> body);

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: "https://reqres.in/api",
      services: [_$ApiService()],
      converter: JsonConverter(),
      errorConverter: JsonConverter(),
    );
    return _$ApiService(client);
  }
}
