import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/widgets/button/custom_button.dart';
import 'package:tasaheel/core/widgets/button/custom_icon_button.dart';
import 'package:tasaheel/core/widgets/custom_text_field.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_bloc.dart';
import 'package:tasaheel/features/auth_sender/presentation/widgets/date_text_field.dart';
import 'package:tasaheel/features/auth_sender/presentation/widgets/text_account_widget.dart';

class AuthSenderPage extends StatelessWidget {
  const AuthSenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthSenderBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<AuthSenderBloc>();
          return Scaffold(
            body: SafeArea(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Image.asset("assets/image/auth_sender.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: Icons.arrow_back_ios,
                        ),
                        SizedBox(height: 40),
                        Text(AppText.signupTitle, style: TextStyles.sf60028),
                        SizedBox(height: 14),
                        Text(AppText.signupSubTitle, style: TextStyles.sf40014),
                        SizedBox(height: 45),
                        CustomTextField(
                          controller: bloc.phoneNumController,
                          labelText: AppText.phoneNum,
                          hintText: AppText.phoneNumHint,
                          fieldKey: 'phone',
                        ),
                        SizedBox(height: 60),
                        CustomTextField(
                          controller: bloc.nationalIdController,
                          labelText: AppText.nationalId,
                          hintText: AppText.nationalIdHint,
                          fieldKey: 'nationalId',
                        ),
                        SizedBox(height: 60),
                        DateTextField(bloc: bloc),

                        SizedBox(height: 72),
                        Center(
                          child: Column(
                            children: [
                              CustomButton(
                                onPressed: () {},
                                child: Text(
                                  AppText.register,
                                  style: TextStyles.sf50016,
                                ),
                              ),
                              SizedBox(height: 48),
                              TextAccountWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
