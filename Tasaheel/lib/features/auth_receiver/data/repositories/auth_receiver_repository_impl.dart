import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/auth_receiver/data/datasources/auth_receiver_datasource.dart';
import 'package:tasaheel/features/auth_receiver/domain/entities/auth_receiver.dart';
import 'package:tasaheel/features/auth_receiver/domain/repositories/auth_receiver_repository.dart';

class Auth_receiverRepositoryImpl implements Auth_receiverRepository {
  final Auth_receiverDatasource datasource;

  Auth_receiverRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Auth_receiver>> getAuth_receiver() async {
    try {
      final result = await datasource.getAuth_receiver();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
