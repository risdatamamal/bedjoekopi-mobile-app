part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subtitle: "Find your best ever coffee",
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.only(right: 26),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/logo.png')),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Email Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.black)),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your password'),
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 24),
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: isLoading
                  ? loadingIndicator
                  : RaisedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });

                        await context.bloc<UserCubit>().signIn(
                            emailController.text, passwordController.text);
                        UserState state = context.bloc<UserCubit>().state;

                        if (state is UserLoaded) {
                          context.bloc<CoffeeCubit>().getCoffees();
                          context.bloc<TransactionCubit>().geTransactions();
                          Get.to(MainPage());
                        } else {
                          Get.snackbar("", "",
                              backgroundColor: "D9435E".toColor(),
                              icon: Icon(
                                MdiIcons.closeCircleOutline,
                                color: Colors.white,
                              ),
                              titleText: Text(
                                "Sign In Failed",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              messageText: Text(
                                (state as UserLoadingFailed).message,
                                style: GoogleFonts.poppins(color: Colors.white),
                              ));
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      color: mainColor,
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            color: secColor, fontWeight: FontWeight.w500),
                      ),
                    )),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 24),
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: isLoading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      onPressed: () {
                        Get.to(() => SignUpPage());
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      color: greyColor,
                      child: Text(
                        'Create New Account',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    )),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 4),
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: isLoading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      onPressed: () {
                        Get.to(() => ForgotPasswordPage());
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      color: Colors.transparent,
                      child: Text(
                        'Forget Password',
                        style: GoogleFonts.poppins(
                            color: greyColor, fontWeight: FontWeight.w500),
                      ),
                    )),
        ],
      ),
    );
  }
}
