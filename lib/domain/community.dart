class SubredditInfo {
  final bool isNSFW;
  final int onlineCount;
  final int memberCount;
  final String name;
  final String avatar;
  final String backgroundImage;
  final String description;

  SubredditInfo({
    required this.isNSFW,
    required this.onlineCount,
    required this.memberCount,
    required this.name,
    required this.avatar,
    required this.backgroundImage,
    required this.description,
  });
}
