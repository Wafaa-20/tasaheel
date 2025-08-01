import 'package:tasaheel/features/documents/domain/entities/documents.dart';

class DocumentsModel {
  final String id;
  final String name;

  DocumentsModel({
    required this.id,
    required this.name,
  });

  factory DocumentsModel.fromJson(Map<String, dynamic> json) {
    return DocumentsModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  Documents toEntity() {
    return Documents(
      id: id,
      name: name,
    );
  }
}
