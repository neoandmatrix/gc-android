// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EmailVerifiactionReqParams {
  final String email;

  EmailVerifiactionReqParams({required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory EmailVerifiactionReqParams.fromMap(Map<String, dynamic> map) {
    return EmailVerifiactionReqParams(
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmailVerifiactionReqParams.fromJson(String source) =>
      EmailVerifiactionReqParams.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
