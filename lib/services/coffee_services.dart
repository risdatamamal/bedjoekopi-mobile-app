part of 'services.dart';

class CoffeeServices {
  static Future<ApiReturnValue<List<Coffee>>> getCoffees(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'coffee';

    var response = await client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    List<Coffee> coffees = (data['data']['data'] as Iterable)
        .map((e) => Coffee.fromJson(e))
        .toList();

    return ApiReturnValue(value: coffees);
  }
}
