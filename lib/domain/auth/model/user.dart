import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String id;
  final String username;
  final String email;
  final int coins;
  final Prefs prefs;
  @JsonKey(name: 'badgeIndicators')
  final BadgeIndicators notifications;
  final String createdAt;
  final String updatedAt;

  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.coins,
    required this.prefs,
    required this.notifications,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class BadgeIndicators {
  final int chatMessages;
  final int inboxMessages;
  final int inboxActivities;
  BadgeIndicators({
    required this.chatMessages,
    required this.inboxMessages,
    required this.inboxActivities,
  });

  factory BadgeIndicators.empty() => BadgeIndicators(
        chatMessages: 0,
        inboxActivities: 0,
        inboxMessages: 0,
      );

  factory BadgeIndicators.fromJson(Map<String, dynamic> json) =>
      _$BadgeIndicatorsFromJson(json);
  Map<String, dynamic> toJson() => _$BadgeIndicatorsToJson(this);
}

@JsonSerializable()
class Prefs {
  final bool online;
  @JsonKey(name: 'forced_offline')
  final bool forcedOffline;
  final bool premium;
  @JsonKey(name: 'over_18')
  final bool over18;
  final bool verified;
  @JsonKey(name: 'num_friends')
  final int numFriends;

  Prefs({
    required this.online,
    required this.forcedOffline,
    required this.premium,
    required this.over18,
    required this.verified,
    required this.numFriends,
  });

  factory Prefs.fromJson(Map<String, dynamic> json) => _$PrefsFromJson(json);
  Map<String, dynamic> toJson() => _$PrefsToJson(this);
}
