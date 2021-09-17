// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      coins: json['coins'] as int,
      prefs: Prefs.fromJson(json['prefs'] as Map<String, dynamic>),
      notifications: BadgeIndicators.fromJson(
          json['badgeIndicators'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'coins': instance.coins,
      'prefs': instance.prefs,
      'badgeIndicators': instance.notifications,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

BadgeIndicators _$BadgeIndicatorsFromJson(Map<String, dynamic> json) =>
    BadgeIndicators(
      chatMessages: json['chatMessages'] as int,
      inboxMessages: json['inboxMessages'] as int,
      inboxActivities: json['inboxActivities'] as int,
    );

Map<String, dynamic> _$BadgeIndicatorsToJson(BadgeIndicators instance) =>
    <String, dynamic>{
      'chatMessages': instance.chatMessages,
      'inboxMessages': instance.inboxMessages,
      'inboxActivities': instance.inboxActivities,
    };

Prefs _$PrefsFromJson(Map<String, dynamic> json) => Prefs(
      online: json['online'] as bool,
      forcedOffline: json['forced_offline'] as bool,
      premium: json['premium'] as bool,
      over18: json['over_18'] as bool,
      verified: json['verified'] as bool,
      numFriends: json['num_friends'] as int,
    );

Map<String, dynamic> _$PrefsToJson(Prefs instance) => <String, dynamic>{
      'online': instance.online,
      'forced_offline': instance.forcedOffline,
      'premium': instance.premium,
      'over_18': instance.over18,
      'verified': instance.verified,
      'num_friends': instance.numFriends,
    };
