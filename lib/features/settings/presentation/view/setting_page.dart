import 'package:flutter/material.dart';
import 'package:t_square/features/settings/presentation/view/widget/setting/setting_body.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsBody(),
    );
  }
}
