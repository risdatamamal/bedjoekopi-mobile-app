part of 'pages.dart';

class CoffeeQRDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Transaction transaction;

  final String code;

  CoffeeQRDetailsPage({this.onBackButtonPressed, this.transaction, this.code});

  @override
  _CoffeeQRDetailsPageState createState() => _CoffeeQRDetailsPageState();
}

class _CoffeeQRDetailsPageState extends State<CoffeeQRDetailsPage> {
  String coffees = "P001";

  int quantity = 1;

  // Future<Coffee> getCoffeeCode() async {
  //   await http
  //       .get(Uri.parse(
  //           "http://192.168.0.14:8000/api/coffee?code=${widget.code}"))
  //       .then((response) {
  //     if (jsonDecode(response.body) != null) {
  //       setState(() {
  //         coffees = Coffee.fromJson(jsonDecode(response.body));
  //       });
  //     }
  //   });
  //   return coffees;
  // }

  Future<ApiReturnValue<List<Coffee>>> getCoffeeCode(
      {http.Client client}) async {
    client ??= http.Client();

    String url = "http://192.168.0.14:8000/api/coffee?code=${widget.code}";

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

  @override
  void initState() {
    getCoffeeCode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: coffees == null
            ? Center(
                child: Text(
                  "MENU TIDAK DITEMUKAN, ${widget.code}",
                  style: blackFontStyle1,
                ),
              )
            : Stack(
                children: [
                  Container(
                    color: mainColor,
                  ),
                  SafeArea(
                      child: Container(
                    color: Colors.white,
                  )),
                  SafeArea(
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  widget.transaction.coffee.picturePath),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SafeArea(
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            //// onBackPressButton
                            Container(
                              height: 100,
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    if (widget.onBackButtonPressed != null) {
                                      widget.onBackButtonPressed();
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(3),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black12,
                                    ),
                                    child: Image.asset(
                                        'assets/arrow_back_white.png'),
                                  ),
                                ),
                              ),
                            ),
                            // Body
                            Container(
                              margin: EdgeInsets.only(top: 180),
                              padding: EdgeInsets.symmetric(
                                  vertical: 26, horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                134, // 32 + 102
                                            child: Text(
                                              widget.transaction.coffee.name,
                                              style: blackFontStyle2,
                                            ),
                                          ),
                                          SizedBox(height: 6),
                                          RatingStars(
                                              widget.transaction.coffee.rate),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                quantity = max(1, quantity - 1);
                                              });
                                            },
                                            child: Container(
                                              width: 26,
                                              height: 26,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(width: 1),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/btn_min.png')),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 50,
                                            child: Text(
                                              quantity.toString(),
                                              textAlign: TextAlign.center,
                                              style: blackFontStyle2,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                quantity =
                                                    min(999, quantity + 1);
                                              });
                                            },
                                            child: Container(
                                              width: 26,
                                              height: 26,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(width: 1),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/btn_add.png')),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
                                    child: Text(
                                      widget.transaction.coffee.description,
                                      style: greyFontStyle,
                                    ),
                                  ),
                                  Text('Categories', style: blackFontStyle3),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                                    child: Text(
                                        widget.transaction.coffee.categories,
                                        style: greyFontStyle),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total Price',
                                            style: greyFontStyle.copyWith(
                                                fontSize: 13),
                                          ),
                                          Text(
                                            NumberFormat.currency(
                                              locale: 'id-ID',
                                              symbol: 'Rp',
                                              decimalDigits: 0,
                                            ).format(quantity *
                                                widget
                                                    .transaction.coffee.price),
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 163,
                                        height: 45,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Get.to(PaymentPage(
                                              transaction: widget.transaction
                                                  .copyWith(
                                                      quantity: quantity,
                                                      total: quantity *
                                                          widget.transaction
                                                              .coffee.price),
                                            ));
                                          },
                                          color: mainColor,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Text(
                                            'Order Now',
                                            style: blackFontStyle3.copyWith(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
