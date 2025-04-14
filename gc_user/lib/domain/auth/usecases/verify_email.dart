import 'package:dartz/dartz.dart';
import 'package:gc_user/core/base_usecase.dart';
import 'package:gc_user/data/models/auth/email_verifiaction_req_params.dart';

class VerifyEmail extends BaseUsecase<Either, EmailVerifiactionReqParams> {
  @override
  Future<Either> call({EmailVerifiactionReqParams? param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
