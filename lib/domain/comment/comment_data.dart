class CommentData {
  final String text;
  final String username;
  final String image;
  final String date;
  final int upvotes;
  final List<CommentData> comments;
  CommentData({
    required this.text,
    required this.username,
    required this.image,
    required this.date,
    required this.upvotes,
    required this.comments,
  });

  @override
  String toString() {
    return 'CommentData(text: $text, username: $username, date: $date, upvotes: $upvotes, comments: $comments)';
  }
}
