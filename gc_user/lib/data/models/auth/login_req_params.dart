// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginReqParams {
  final String email;
  final String password;

  LoginReqParams({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory LoginReqParams.fromMap(Map<String, dynamic> map) {
    return LoginReqParams(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginReqParams.fromJson(String source) => LoginReqParams.fromMap(json.decode(source) as Map<String, dynamic>);
}
