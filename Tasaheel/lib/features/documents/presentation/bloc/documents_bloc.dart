import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/features/documents/presentation/bloc/documents_event.dart';
import 'package:tasaheel/features/documents/presentation/bloc/documents_state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  DocumentsBloc() : super(DocumentsInitial()) {
    on<DocumentsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
