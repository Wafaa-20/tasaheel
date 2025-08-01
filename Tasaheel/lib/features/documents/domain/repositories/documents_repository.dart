import 'package:dartz/dartz.dart';
import 'package:tasaheel/core/error/failures.dart';
import 'package:tasaheel/features/documents/domain/entities/documents.dart';

abstract class DocumentsRepository {
  Future<Either<Failure, Documents>> getDocuments();
}
