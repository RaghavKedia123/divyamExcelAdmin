class RowCheckboxData {
  RowCheckboxData({
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final void Function(bool?) onChanged;
}
