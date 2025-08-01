import 'package:equatable/equatable.dart';

class Documents extends Equatable {
  final String id;
  final String name;

  const Documents({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
