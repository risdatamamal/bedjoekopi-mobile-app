part of 'services.dart';

class CoffeeServices {
  static Future<ApiReturnValue<List<Coffee>>> getCoffees() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockCoffees);
  }
}
