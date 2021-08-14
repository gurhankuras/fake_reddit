import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/app/colors.dart';
import '../core/reusable/app_header.dart';
import 'widgets/settings_groups.dart';

class SettingsPanelPage extends StatelessWidget {
  final Widget page;
  const SettingsPanelPage({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const AppHeader(
            'Settings',
            fontSizeFactor: 0.85,
          ),
          backgroundColor: AppColors.lightBlack,
          centerTitle: true,
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SettingsHeader('ACCOUNT SETTINGS'),
                const AccountSettingsGroup(),
                const SettingsHeader('REDDIT PREMIUM'),
                const PremiumSettingsGroup(),
                const SettingsHeader('VIEW OPTIONS'),
                const ViewOptionsSettingsGroup(),
                const SettingsHeader('DARK MODE'),
                const DarkModeSettingsGroup(),
                const SettingsHeader('ADVANCED'),
                const AdvancedSettingsGroup(),
                const SettingsHeader('ABOUT'),
                const AboutSettingsGroup(),
                const SettingsHeader('SUPPORT'),
                const SupportSettingsGroup(),
              ],
            ),
          ),
        ));
  }
}

class SettingsHeader extends StatelessWidget {
  final String text;
  const SettingsHeader(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppHeader(
        text,
        fontSizeFactor: 0.55,
        color: AppColors.moreLightGrey,
      ),
    );
  }
}
