import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/home/domain/entities/home.dart';

abstract class HomeRepository {
  Future<Either<Failure, Home>> getHome();
}
