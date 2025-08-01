import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/auth_receiver/domain/entities/auth_receiver.dart';

abstract class Auth_receiverRepository {
  Future<Either<Failure, Auth_receiver>> getAuth_receiver();
}
