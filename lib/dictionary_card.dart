import 'package:flutter/material.dart';
import 'dictionary_data.dart';

class DictionaryCard extends StatelessWidget {
  final DictionaryEntry entry;

  const DictionaryCard({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Amharic word
            Text(
              entry.amharic,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 8.0),

            // Pronunciation (if available)
            if (entry.pronunciation != null) ...[
              Text(
                'Pronunciation: ${entry.pronunciation}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 4.0),
            ],

            // English translation
            Text(
              entry.english,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
