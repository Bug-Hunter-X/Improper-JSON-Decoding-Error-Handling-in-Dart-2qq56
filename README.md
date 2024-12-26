# Improper JSON Decoding Error Handling in Dart

This repository demonstrates a common error in Dart applications involving network requests and JSON decoding. The initial code lacks robust error handling for JSON decoding failures, leading to potential crashes.  The solution provides improved error handling to gracefully manage these scenarios.

## Bug

The `bug.dart` file contains code that fetches data from a remote API. While it handles network request errors, it doesn't explicitly catch `FormatException` that could occur if the response body isn't valid JSON. This can lead to unexpected application termination.

## Solution

The `bugSolution.dart` file improves the error handling by adding a specific `catch` block to handle `FormatException`. This allows for better error reporting and recovery.
