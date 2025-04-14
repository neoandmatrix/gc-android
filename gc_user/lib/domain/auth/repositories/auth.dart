import 'package:dartz/dartz.dart';
import 'package:gc_user/data/models/auth/email_verifiaction_req_params.dart';
import 'package:gc_user/data/models/auth/login_req_params.dart';
import 'package:gc_user/data/models/auth/otp_verification_req_params.dart';
import 'package:gc_user/data/models/auth/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> verifyOtp(OtpVerifiactionReqParams params);
  Future<Either> verifyEmail(EmailVerifiactionReqParams params);
  Future<Either> login(LoginReqParams params);
  Future<Either> signup(SignupReqParams params);
  Future<bool> isLoggedIn();
}
