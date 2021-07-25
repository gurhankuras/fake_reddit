extension StringFillX on String {
  String fillN(int n, [String filler = ' ']) {
    final filledText = List.filled(n, filler).join();
    return '$filledText${this}$filledText';
  }

  String get toUser => 'u/${this}';
  String get toSubreddit => 'r/${this}';
}
