class DictionaryEntry {
  final String amharic;
  final String english;
  final String? pronunciation;

  DictionaryEntry({
    required this.amharic,
    required this.english,
    this.pronunciation,
  });
}
