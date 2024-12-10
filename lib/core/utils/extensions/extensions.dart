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

  String generateUsername() {
    List<String> nameParts = split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camelCaseUsername';
    return usernameWithPrefix;
  }
}

extension IntExtendion on int {
  String get formatTime {
    final minutes = (this ~/ 60).toString().padLeft(1, '0'); // Minutes
    final seconds = (this % 60).toString().padLeft(2, '0'); // Seconds
    return '$minutes:$seconds';
  }
}
