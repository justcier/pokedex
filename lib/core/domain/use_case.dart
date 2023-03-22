abstract class UseCase<Type, Param> {
  Type call(Param params);
}

class NoParams {
  const NoParams();
}
