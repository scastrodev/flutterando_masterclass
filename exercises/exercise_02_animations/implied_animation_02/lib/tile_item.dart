class TileItem {
  TileItem({required this.title, required this.contentText, required this.contentImageUrl});

  final String title;
  final String contentText;
  final String contentImageUrl;

  factory TileItem.fromJson(Map<String, Object> json) => TileItem(
        title: json['title'] as String,
        contentText: json['contentText'] as String,
        contentImageUrl: json['contentImageUrl'] as String,
      );
}
