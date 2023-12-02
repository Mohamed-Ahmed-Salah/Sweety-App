

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sweety_app/core/constants/app_colors.dart';

enum SingingCharacter { lafayette, jefferson }

class TEMPPPP extends StatelessWidget {
  const TEMPPPP({super.key});

  @override
  Widget build(BuildContext context) {
    SingingCharacter? character = SingingCharacter.lafayette;

    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("TEXT")),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Text Text ",
                  suffixIcon: Icon(Icons.abc)),
            ),
            CupertinoSwitch(
              // This bool value toggles the switch.
              value: false,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
              },
            ),
            CupertinoSwitch(
              // This bool value toggles the switch.
              value: true,
              activeColor: AppColors.primaryColor,
              // activeTrackColor: AppColors.primaryColor,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
              },
            ),
            ListTile(
              title: const Text('Lafayette'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: character,
                // activeColor: AppColors.primaryColor,

                onChanged: (SingingCharacter? value) {},
              ),
            ),
            ListTile(
              title: const Text('Thomas Jefferson'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.jefferson,
                groupValue: character,
                // activeColor: AppColors.primaryColor,
                onChanged: (SingingCharacter? value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
