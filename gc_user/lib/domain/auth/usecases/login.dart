import 'package:dartz/dartz.dart';
import 'package:gc_user/core/base_usecase.dart';
import 'package:gc_user/data/models/auth/login_req_params.dart';

class Login extends BaseUsecase<Either,LoginReqParams> {
  @override
  Future<Either> call({LoginReqParams? param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}