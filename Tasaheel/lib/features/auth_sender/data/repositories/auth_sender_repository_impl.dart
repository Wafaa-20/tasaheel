import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/auth_sender/data/datasources/auth_sender_datasource.dart';
import 'package:tasaheel/features/auth_sender/domain/entities/auth_sender.dart';
import 'package:tasaheel/features/auth_sender/domain/repositories/auth_sender_repository.dart';

class Auth_senderRepositoryImpl implements Auth_senderRepository {
  final Auth_senderDatasource datasource;

  Auth_senderRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Auth_sender>> getAuth_sender() async {
    try {
      final result = await datasource.getAuth_sender();
      return Right(result.toEntity());
    } on Exception {
      return Left(ServerFailure(message: "Something went wrong!"));
    }
  }
}
