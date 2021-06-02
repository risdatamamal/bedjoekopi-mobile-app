part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeay! Completed",
        subtitle: "Now you are able to order\nsome coffee as a self reward",
        picturePath: 'assets/food_whises.png',
        buttonTap1: () {},
        buttonTitle1: 'Finds Coffees',
      ),
    );
  }
}
