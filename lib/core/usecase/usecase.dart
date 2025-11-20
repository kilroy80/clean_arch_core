import 'package:dartz/dartz.dart';
import 'failure.dart';

abstract class UseCase<TYPE, PARAMS> {
  Future<Either<Failure, TYPE>> call(PARAMS params);
}