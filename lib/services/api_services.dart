import 'package:chopper/chopper.dart';

@ChopperApi(baseUrl: "")
abstract class ApiService extends ChopperService{
@Post()
  Future<Response> getResult(@Body() Map<String , dynamic> body);


}