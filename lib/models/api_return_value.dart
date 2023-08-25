part of 'models.dart';

class ApiReturnValue<T> {
  final T? value;
  final String message;

  ApiReturnValue({this.value, required this.message});
}
