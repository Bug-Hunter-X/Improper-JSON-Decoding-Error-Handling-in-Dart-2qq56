```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // ignore: avoid_print
      print(jsonData);
    } else {
      // Handle error here
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    // ignore: avoid_print
    print('Error: $e');
  }
}
```