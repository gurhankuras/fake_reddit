import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/colors.dart';
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
          title: const AppHeaderText(
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
                const SubsectionHeader('ACCOUNT SETTINGS'),
                const AccountSettingsGroup(),
                const SubsectionHeader('REDDIT PREMIUM'),
                const PremiumSettingsGroup(),
                const SubsectionHeader('VIEW OPTIONS'),
                const ViewOptionsSettingsGroup(),
                const SubsectionHeader('DARK MODE'),
                const DarkModeSettingsGroup(),
                const SubsectionHeader('ADVANCED'),
                const AdvancedSettingsGroup(),
                const SubsectionHeader('ABOUT'),
                const AboutSettingsGroup(),
                const SubsectionHeader('SUPPORT'),
                const SupportSettingsGroup(),
              ],
            ),
          ),
        ));
  }
}

class SubsectionHeader extends StatelessWidget {
  final String text;
  const SubsectionHeader(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppHeaderText(
        text,
        fontSizeFactor: 0.55,
        color: AppColors.moreLightGrey,
      ),
    );
  }
}
