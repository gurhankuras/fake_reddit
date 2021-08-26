import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/utility/launch_url.dart';

import '../../../application/settings/app_settings.dart';
import '../../core/app/extensions/string_fill_extension.dart';
import '../../core/authentication_button.dart';
import 'settings_group.dart';
import 'settings_tile.dart';

class AccountSettingsGroup extends StatelessWidget {
  const AccountSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        SettingsTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://external-preview.redd.it/_o7PutALILIg2poC9ed67vHQ68Cxx67UT6q7CFAhCs4.png?auto=webp&s=2560c01cc455c9dcbad0d869116c938060e43212'),
          ),
          text: 'Brilliant_Program22'.toUser,
          leadingIcon: Icons.circle,
          onTap: () => print('tapped'),
        ),
      ],
    );
  }
}

class PremiumSettingsGroup extends StatelessWidget {
  const PremiumSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        SettingsTile(
          text: 'Get Premium',
          leadingIcon: Icons.shield_outlined,
          onTap: () => print('tapped'),
        ),
        SettingsTile(
          text: 'Change App Icon',
          leadingIcon: Icons.app_registration,
          onTap: () => print('tapped'),
        ),
        SettingsTile(
          text: 'Style Avatar',
          leadingIcon: FontAwesomeIcons.tshirt,
          onTap: () => print('tapped'),
        ),
      ],
    );
  }
}

class ViewOptionsSettingsGroup extends StatelessWidget {
  const ViewOptionsSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        SettingsTile(
          text: 'Language',
          leadingIcon: Icons.settings_outlined,
          onTap: () => print('tapped'),
        ),
        SettingsTile.multichoice(
          text: 'Default View',
          leadingIcon: Icons.view_agenda_outlined,
          onTap: () => print('tapped'),
        ),
        SettingsTile(
          text: 'Autoplay',
          leadingIcon: Icons.play_arrow_outlined,
          onTap: () => print('tapped'),
        ),
        SettingsTile(
          text: 'Text Size',
          leadingIcon: Icons.text_fields,
          onTap: () => print('tapped'),
        ),
        Consumer<AppSettings>(
          builder: (context, settings, child) => SettingsSwitchTile(
            // cacheKey: SettingsKeys.reduceAwardAnimations,

            text: 'Reduce award animations',
            leadingIcon: Icons.remove_red_eye_outlined,
            onChanged: (bool value) {
              settings.toggleReduceAwardAnimations();
            },
            value: settings.reduceAwardAnimations,
            // propertySelector: (settings) => settings.swipeToCollapseComments,
            // setterFunction: (settings) => settings.toggleReduceAwardAnimations, onChanged: (bool value) {  }, value: null,
          ),
          // child: SettingsSwitchTile(
          //   // cacheKey: SettingsKeys.reduceAwardAnimations,
          //   text: 'Reduce award animations',
          //   leadingIcon: Icons.remove_red_eye_outlined, onChanged: (bool value) {  }, value: null,
          //   // propertySelector: (settings) => settings.swipeToCollapseComments,
          //   // setterFunction: (settings) => settings.toggleReduceAwardAnimations, onChanged: (bool value) {  }, value: null,
          // ),
        ),
      ],
    );
  }
}

class DarkModeSettingsGroup extends StatelessWidget {
  const DarkModeSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        // SettingsSwitchTile(
        //   cacheKey: SettingsKeys.automaticMode,
        //   text:
        //       'Automatic (follow ${Platform.isIOS ? 'iOS' : 'Android'} setting)',
        //   leadingIcon: Icons.settings_outlined,
        // ),
        // SettingsSwitchTile(
        //   cacheKey: SettingsKeys.darkMode,
        //   text: 'Dark Mode',
        //   leadingIcon: Icons.dark_mode_outlined,
        // ),
        SettingsTile(
          text: 'Light Mode',
          leadingIcon: Icons.light_mode_outlined,
          onTap: () {
            // TODO
          },
        ),
        SettingsTile(
          text: 'Dark Theme',
          leadingIcon: Icons.dark_mode_outlined,
          onTap: () {
            // TODO
          },
        ),
      ],
    );
  }
}

class AdvancedSettingsGroup extends StatelessWidget {
  const AdvancedSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        // SettingsSwitchTile(
        //   text: 'Swipe to collapse comments',
        //   leadingIcon: Icons.keyboard_arrow_up,
        //   propertySelector: (settings) => settings.swipeToCollapseComments,
        //   setterFunction: (settings) => settings.toggleReduceAwardAnimations(),
        //   // cacheKey: SettingsKeys.collapseComments,

        // ),
        // SettingsSwitchTile(
        //   cacheKey: SettingsKeys.savedImageAttribution,
        //   text: 'Saved image attribution',
        //   leadingIcon: Icons.image_outlined,
        // ),
        // SettingsSwitchTile(
        //   cacheKey: SettingsKeys.quietAudioMode,
        //   text: 'Quiet audio mode',
        //   leadingIcon: Icons.volume_off_outlined,
        // ),
        // SettingsSwitchTile(
        //   cacheKey: SettingsKeys.recentCommunities,
        //   text: 'Recent communities',
        //   leadingIcon: Icons.access_time_outlined,
        // ),
        SettingsTile(
          text: 'Default comment sort',
          leadingIcon: Icons.mode_comment_outlined,
          onTap: () {
            // TODO
          },
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'Open links',
          leadingIcon: Icons.explore_outlined,
          onTap: () {
            // TODO
          },
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'Clear local history',
          leadingIcon: Icons.delete_outlined,
          onTap: () {
            // TODO
          },
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'Retry Pending Purchases',
          leadingIcon: Icons.refresh,
          onTap: () {
            // TODO
          },
          trailingIcon: null,
        ),
      ],
    );
  }
}

class AboutSettingsGroup extends StatelessWidget {
  const AboutSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        SettingsTile(
          text: 'Content policy',
          leadingIcon: Icons.dashboard_customize,
          onTap: () =>
              launchURL('https://www.redditinc.com/policies/content-policy'),
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'Privacy policy',
          leadingIcon: Icons.vpn_key_outlined,
          onTap: () =>
              launchURL('https://www.redditinc.com/policies/privacy-policy'),
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'User agreement',
          leadingIcon: Icons.person_outlined,
          onTap: () =>
              launchURL('https://www.redditinc.com/policies/user-agreement'),
          trailingIcon: null,
        ),
      ],
    );
  }
}

class SupportSettingsGroup extends StatelessWidget {
  const SupportSettingsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      children: [
        SettingsTile(
          text: 'Help FAQ',
          leadingIcon: Icons.info_outlined,
          onTap: () => launchURL(
              'https://www.reddithelp.com/hc/en-us/sections/200919715'),
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'Visit r/redditmobile',
          leadingIcon: FontAwesomeIcons.redditAlien,
          onTap: () {
            // TODO
          },
          trailingIcon: null,
        ),
        SettingsTile(
          text: 'Report a bug',
          leadingIcon: Icons.mail_outlined,
          onTap: () =>
              launchURL('https://reddit.zendesk.com/hc/en-us/requests/new'),
          trailingIcon: null,
        ),
      ],
    );
  }
}
