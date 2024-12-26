```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ignore: avoid_print
        print(jsonData);
      } on FormatException catch (e) {
        // ignore: avoid_print
        print('Error: Invalid JSON format: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // ignore: avoid_print
    print('Error: $e');
  }
}
```