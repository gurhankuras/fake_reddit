import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/app/colors.dart';
import '../../../infastructure/core/cache_service.dart';

import '../../../injection.dart';

mixin SettingsTileMixin {
  Widget title(String text, BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.bodyText1?.apply(
              color: AppColors.iron,
              fontWeightDelta: 2,
            ),
      );
}

enum SettingsTileType {
  multichoice,
  switchs,
  standart,
}

class SettingsTile extends StatefulWidget {
  final VoidCallback? onTap;
  final SettingsTileType type;
  final IconData? leadingIcon;
  final Widget? leading;
  final bool? cachedValue;

  final String text;
  final IconData? trailingIcon;
  final ValueChanged<bool>? onSwitchChanged;
  const SettingsTile({
    Key? key,
    this.onTap,
    this.type = SettingsTileType.standart,
    required this.leadingIcon,
    this.leading,
    this.cachedValue,
    required this.text,
    this.trailingIcon = Icons.arrow_forward,
    this.onSwitchChanged,
  })  : assert(leading != null || (leading == null && leadingIcon != null)),
        super(key: key);

  const SettingsTile._({
    Key? key,
    this.onTap,
    required this.leadingIcon,
    this.leading,
    required this.text,
    this.trailingIcon = Icons.arrow_forward,
    this.onSwitchChanged,
    required this.type,
    this.cachedValue,
  })  : assert(leading != null || (leading == null && leadingIcon != null)),
        super(key: key);

  factory SettingsTile.withSwitch({
    required bool cachedValue,
    required IconData leadingIcon,
    required String text,
    required ValueChanged<bool> onSwitchChanged,
  }) =>
      SettingsTile._(
        type: SettingsTileType.switchs,
        leadingIcon: leadingIcon,
        onSwitchChanged: onSwitchChanged,
        text: text,
        cachedValue: cachedValue,
      );

  factory SettingsTile.multichoice({
    required IconData leadingIcon,
    required String text,
    required VoidCallback onTap,
  }) =>
      SettingsTile._(
        type: SettingsTileType.multichoice,
        leadingIcon: leadingIcon,
        onTap: onTap,
        text: text,
      );

  @override
  _SettingsTileState createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile> {
  bool switched = false;

  Widget? resolveTrailing() {
    switch (widget.type) {
      case SettingsTileType.switchs:
        return CupertinoSwitch(
          value: switched,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() {
              switched = value;
            });
            widget.onSwitchChanged?.call(value);
          },
        );
      case SettingsTileType.multichoice:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hahahaha'),
            Icon(Icons.expand_more, color: AppColors.iron),
          ],
        );
      case SettingsTileType.standart:
        return widget.trailingIcon != null
            ? Icon(
                widget.trailingIcon,
                color: AppColors.iron,
              )
            : null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: widget.onTap,
      leading: widget.leading ??
          Icon(
            widget.leadingIcon,
            color: AppColors.iron,
          ),
      title: Text(
        widget.text,
        style: Theme.of(context).textTheme.bodyText1?.apply(
              color: AppColors.iron,
              fontWeightDelta: 2,
            ),
      ),
      trailing: resolveTrailing(),
    );
  }
}

class SettingsSwitchTile extends StatefulWidget with SettingsTileMixin {
  final String cacheKey;
  final IconData leadingIcon;
  final String text;
  // final ValueChanged<bool> onSwitchChanged;
  SettingsSwitchTile({
    Key? key,
    required this.cacheKey,
    required this.leadingIcon,
    required this.text,
    // required this.onSwitchChanged,
  }) : super(key: key);

  @override
  _SettingsSwitchTileState createState() => _SettingsSwitchTileState();
}

class _SettingsSwitchTileState extends State<SettingsSwitchTile> {
  bool switched = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      final s = await getIt<CacheService>().getBool(widget.cacheKey);
      setState(() {
        switched = s.getOrElse(() => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(
        widget.leadingIcon,
        color: AppColors.iron,
      ),
      title: widget.title(widget.text, context),
      trailing: CupertinoSwitch(
        value: switched,
        activeColor: Colors.blue,
        onChanged: (value) {
          setState(() {
            switched = value;
          });
          getIt<CacheService>().setBool(widget.cacheKey, value);
        },
      ),
    );
  }
}
