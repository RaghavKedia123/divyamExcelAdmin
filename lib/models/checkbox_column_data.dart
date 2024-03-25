class CheckboxColumnData {
  CheckboxColumnData({
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final void Function(bool?) onChanged;
}
