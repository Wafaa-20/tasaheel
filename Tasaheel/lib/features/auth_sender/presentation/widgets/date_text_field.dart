import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/widgets/custom_text_field.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_bloc.dart';

class DateTextField extends StatelessWidget {
  const DateTextField({super.key, required this.bloc});
  final AuthSenderBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextField(
          controller: bloc.dayController,
          labelText: AppText.date,
          hintText: AppText.dayHint,
          fieldKey: 'day',
        ),
        CustomTextField(
          controller: bloc.monthController,
          hintText: AppText.monthHint,
          fieldKey: 'month',
        ),
        CustomTextField(
          controller: bloc.yearController,
          hintText: AppText.yearHint,
          fieldKey: 'year',
        ),
      ],
    );
  }
}
