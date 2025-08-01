import 'package:equatable/equatable.dart';

sealed class DocumentsState extends Equatable {
  const DocumentsState();

  @override
  List<Object> get props => [];
}

final class DocumentsInitial extends DocumentsState {}
