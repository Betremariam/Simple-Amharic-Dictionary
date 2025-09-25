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

class DictionaryData {
  static List<DictionaryEntry> entries = [
    DictionaryEntry(
      amharic: "ሰላም",
      english: "Peace, Hello",
      pronunciation: "Salam",
    ),
    DictionaryEntry(
      amharic: "እንደምን አደርክ",
      english: "How are you?",
      pronunciation: "Endemin aderk?",
    ),
    DictionaryEntry(
      amharic: "በጣም ጥሩ",
      english: "Very good",
      pronunciation: "Betam tru",
    ),
    DictionaryEntry(
      amharic: "አመሰግናለሁ",
      english: "Thank you",
      pronunciation: "Ameseginalehu",
    ),
    DictionaryEntry(
      amharic: "እባክሽ",
      english: "Please (to female)",
      pronunciation: "Ebakesh",
    ),
    DictionaryEntry(
      amharic: "እባክህ",
      english: "Please (to male)",
      pronunciation: "Ebakeh",
    ),
    DictionaryEntry(
      amharic: "ይቅርታ",
      english: "Sorry, Excuse me",
      pronunciation: "Yikirta",
    ),
    DictionaryEntry(amharic: "አዎ", english: "Yes", pronunciation: "Awo"),
    DictionaryEntry(amharic: "አይ", english: "No", pronunciation: "Aye"),
    DictionaryEntry(
      amharic: "መልካም ሌሊት",
      english: "Good night",
      pronunciation: "Melkam lelit",
    ),
    DictionaryEntry(
      amharic: "መልካም ቀን",
      english: "Good day",
      pronunciation: "Melkam ken",
    ),
    DictionaryEntry(amharic: "ምግብ", english: "Food", pronunciation: "Migib"),
    DictionaryEntry(amharic: "ውሃ", english: "Water", pronunciation: "Woha"),
    DictionaryEntry(
      amharic: "ቤት",
      english: "House, Home",
      pronunciation: "Bet",
    ),
    DictionaryEntry(
      amharic: "መጽሐፍ",
      english: "Book",
      pronunciation: "Mets'haf",
    ),
    DictionaryEntry(
      amharic: "ተማሪ",
      english: "Student",
      pronunciation: "Temari",
    ),
    DictionaryEntry(
      amharic: "መምህር",
      english: "Teacher",
      pronunciation: "Memhir",
    ),
    DictionaryEntry(
      amharic: "እግር",
      english: "Foot, Leg",
      pronunciation: "Igir",
    ),
    DictionaryEntry(amharic: "እጅ", english: "Hand", pronunciation: "Ij"),
    DictionaryEntry(amharic: "ፊት", english: "Face", pronunciation: "Fit"),
  ];

  static List<DictionaryEntry> searchEntries(String query) {
    if (query.isEmpty) return entries;

    return entries.where((entry) {
      return entry.amharic.toLowerCase().contains(query.toLowerCase()) ||
          entry.english.toLowerCase().contains(query.toLowerCase()) ||
          (entry.pronunciation?.toLowerCase().contains(query.toLowerCase()) ??
              false);
    }).toList();
  }
}
