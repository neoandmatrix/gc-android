import 'package:dartz/dartz.dart';
import 'package:gc_user/core/base_usecase.dart';
import 'package:gc_user/data/models/auth/signup_req_params.dart';

class Signup extends BaseUsecase<Either,SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}