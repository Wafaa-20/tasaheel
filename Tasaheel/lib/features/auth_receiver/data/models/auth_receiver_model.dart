import 'package:tasaheel/features/auth_receiver/domain/entities/auth_receiver.dart';

class Auth_receiverModel {
  final String id;
  final String name;

  Auth_receiverModel({
    required this.id,
    required this.name,
  });

  factory Auth_receiverModel.fromJson(Map<String, dynamic> json) {
    return Auth_receiverModel(
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

  Auth_receiver toEntity() {
    return Auth_receiver(
      id: id,
      name: name,
    );
  }
}
