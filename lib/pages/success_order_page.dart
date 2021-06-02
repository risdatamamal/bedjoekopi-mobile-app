part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You've Made Order",
        subtitle:
            "Just stay at home or your table while we\n preparing your best coffee",
        picturePath: 'assets/bike.png',
        buttonTap1: () {},
        buttonTitle1: 'Order Other Coffee',
        buttonTap2: () {},
        buttonTitle2: 'View My Order',
      ),
    );
  }
}
