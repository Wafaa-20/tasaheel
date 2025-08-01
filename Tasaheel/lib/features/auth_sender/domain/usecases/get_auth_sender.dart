import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/auth_sender/domain/entities/auth_sender.dart';
import 'package:tasaheel/features/auth_sender/domain/repositories/auth_sender_repository.dart';

class GetAuth_sender {
  final Auth_senderRepository repository;

  GetAuth_sender(this.repository);

  Future<Either<Failure, Auth_sender>> call() async {
    return await repository.getAuth_sender();
  }
}
