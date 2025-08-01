import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/core/widgets/button/custom_icon_button.dart';
import 'package:tasaheel/features/home/presentation/widgets/container_widget.dart';
import 'package:tasaheel/features/home/presentation/widgets/quick_send_widget.dart';
import 'package:tasaheel/features/home/presentation/widgets/title_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أهلاً , ماجد'),
        titleTextStyle: TextStyles.sf40018.copyWith(color: AppPalette.black),
        leading: Container(
          height: 47,
          width: 47,
          margin: const EdgeInsets.only(right: 12.0),
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        ),

        actions: [
          CustomIconButton(icon: Icons.search, size: 27),
          CustomIconButton(icon: Icons.headset_mic_outlined, size: 27),
          CustomIconButton(icon: Icons.notifications_none, size: 27),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              AppText.eligibleAmount,
              style: TextStyles.sf60018.copyWith(color: AppPalette.greyPrimary),
            ),
            SizedBox(height: 24),
            Text("14,4000", style: TextStyles.sf50036),
            SizedBox(height: 10),
            Row(
              children: [
                ContainerWidget(
                  color: AppPalette.yellow,
                  title: AppText.importantAlerts,
                  subTitle1: '${AppText.iqamaExpired} ياسمين',
                  image: 'assets/image/notifications.png',
                  height: 140,
                ),
                Spacer(),
                ContainerWidget(
                  color: AppPalette.blue,
                  title: AppText.completedTransfers,
                  extraTitle: true,
                  subTitle1: AppText.fromTotal,
                  subTitle2: "1",
                  subTitle3: "2",
                  image: 'assets/image/direction.png',
                  height: 150,
                  width: 130,
                ),
              ],
            ),
            SizedBox(height: 33),
            TitleTextWidget(title: AppText.quickSend),
            SizedBox(height: 17),
            Flexible(child: QuickSendWidget()),
            SizedBox(height: 33),
            TitleTextWidget(title: AppText.transfers),
          ],
        ),
      ),
    );
  }
}
