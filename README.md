# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: failing to properly handle exceptions in asynchronous operations.

The `bug.dart` file contains code that fetches data from an API. While it includes a `try-catch` block, it only prints the error to the console.  This is insufficient for many applications; errors should be propagated or handled more robustly to prevent application crashes.

The `bugSolution.dart` file shows a corrected version where exceptions are rethrown to be handled appropriately by the calling function.