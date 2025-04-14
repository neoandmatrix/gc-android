// this files basically dictates the methods each of the usecase must implement

abstract class BaseUsecase<Type, Param> {
  Future<Type> call({Param param});
}
