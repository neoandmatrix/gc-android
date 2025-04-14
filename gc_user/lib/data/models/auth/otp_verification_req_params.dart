// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OtpVerifiactionReqParams {
  final int otp;

  OtpVerifiactionReqParams({required this.otp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'otp': otp,
    };
  }

  factory OtpVerifiactionReqParams.fromMap(Map<String, dynamic> map) {
    return OtpVerifiactionReqParams(
      otp: map['otp'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory OtpVerifiactionReqParams.fromJson(String source) =>
      OtpVerifiactionReqParams.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
