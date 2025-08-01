import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/auth_receiver/domain/entities/auth_receiver.dart';
import 'package:tasaheel/features/auth_receiver/domain/repositories/auth_receiver_repository.dart';

class GetAuth_receiver {
  final Auth_receiverRepository repository;

  GetAuth_receiver(this.repository);

  Future<Either<Failure, Auth_receiver>> call() async {
    return await repository.getAuth_receiver();
  }
}
