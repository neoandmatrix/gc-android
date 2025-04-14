import 'package:dartz/dartz.dart';
import 'package:gc_user/core/base_usecase.dart';
import 'package:gc_user/data/models/auth/otp_verification_req_params.dart';

class VerifyOtp extends BaseUsecase<Either,OtpVerifiactionReqParams> {
  @override
  Future<Either> call({OtpVerifiactionReqParams? param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}