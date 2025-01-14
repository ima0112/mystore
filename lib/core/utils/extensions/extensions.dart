extension StringExtension on String {
  String get capitalize {
    if (isEmpty) {
      return "";
    }
    return split(' ')
        .map((word) => word.isNotEmpty
            ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
            : '')
        .join(' ');
  }
}

extension IntExtendion on int {
  String get formatTime {
    final minutes = (this ~/ 60).toString().padLeft(1, '0'); // Minutes
    final seconds = (this % 60).toString().padLeft(2, '0'); // Seconds
    return '$minutes:$seconds';
  }
}
