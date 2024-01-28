class SmartException implements Exception {
  const SmartException({
    required this.message,
  });
  final String message;

  @override
  String toString() => message;
}
