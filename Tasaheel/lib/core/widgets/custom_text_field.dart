import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/core/widgets/button/custom_icon_button.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_bloc.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_event.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_state.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.labelText,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.labelstyle,
    this.hintstyle,
    this.textstyle,
    required this.fieldKey,
    this.keyboardType,
    this.onTap,
    this.readOnly = false,
  });
  final ValueChanged<String>? onChanged;
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final bool? obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextStyle? labelstyle;
  final TextStyle? hintstyle;
  final TextStyle? textstyle;
  final String fieldKey;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    focusNode.addListener(() {
      context.read<AuthSenderBloc>().add(
        FocusChanged(fieldKey: fieldKey, isFocused: focusNode.hasFocus),
      );
    });
    return BlocBuilder<AuthSenderBloc, AuthSenderState>(
      builder: (context, state) {
        final isFocus =
            state is FocusState &&
            state.fieldKey == fieldKey &&
            state.isFocused;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                labelText ?? "",
                style: TextStyles.sf60018.copyWith(
                  color: isFocus ? AppPalette.yellow : null,
                ),
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: controller,
              keyboardType: keyboardType ?? TextInputType.number,
              obscureText: obscureText!,
              readOnly: readOnly!,
              onTap: onTap,
              style: textstyle,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: hintstyle,
                prefixIcon: prefixIcon,
                suffixIcon:
                    suffixIcon ??
                    (isFocus
                        ? CustomIconButton(
                            icon: Icons.cancel,
                            color: AppPalette.grey,
                            onPressed: () {
                              controller.clear();
                            },
                          )
                        : null),
              ),
              validator: validator,
              onChanged: onChanged,
            ),
          ],
        );
      },
    );
  }
}
