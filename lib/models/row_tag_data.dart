enum TagColor {
  green,
  purple,
  orange,
  cyan,
  red,
  grey,
}

class RowTagData {
  RowTagData({
    required this.tagLabel,
    required this.tagColor,
  });

  final String tagLabel;
  final TagColor tagColor;
}
