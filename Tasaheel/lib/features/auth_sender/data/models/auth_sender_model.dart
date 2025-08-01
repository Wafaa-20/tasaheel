import 'package:tasaheel/features/auth_sender/domain/entities/auth_sender.dart';

class Auth_senderModel {
  final String id;
  final String name;

  Auth_senderModel({
    required this.id,
    required this.name,
  });

  factory Auth_senderModel.fromJson(Map<String, dynamic> json) {
    return Auth_senderModel(
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

  Auth_sender toEntity() {
    return Auth_sender(
      id: id,
      name: name,
    );
  }
}
