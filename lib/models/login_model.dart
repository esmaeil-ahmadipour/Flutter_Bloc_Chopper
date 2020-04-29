
import 'package:json_annotation/json_annotation.dart';

// Add This Line Before build_runner
part 'login_model.g.dart';

@JsonSerializable(nullable: false)
class Login{
String token;
// Add This Line Before build_runner
Login(this.token); //"token": "QpwL5tke4Pnpja7X4"

factory Login.fromJson(Map<String , dynamic> json) => _$LoginFromJson(json);

  Map<String , dynamic> toJson() => _$LoginToJson(this);
}