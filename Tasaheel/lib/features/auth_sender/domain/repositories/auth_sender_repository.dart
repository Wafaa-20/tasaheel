import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/auth_sender/domain/entities/auth_sender.dart';

abstract class Auth_senderRepository {
  Future<Either<Failure, Auth_sender>> getAuth_sender();
}
