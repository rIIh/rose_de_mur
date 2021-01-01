class Failure {
  final Object error;

  Failure([Object error]) : error = error ?? Exception('No message provided');

  @override
  String toString() => error.toString();
}
