```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print(jsonResponse);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error in fetchData: $e');
    rethrow; // Re-throw the exception to be handled by the caller
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    // Handle the exception in the main function
    print('An error occurred in main: $e');
    // Implement proper error handling like logging or showing an error message to the user.
  }
}
```