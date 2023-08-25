part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 220,
                margin: EdgeInsets.only(bottom: defaultMargin),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/photo_border.png'))),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage((context
                                        .read<UserCubit>()
                                        .state as UserLoaded)
                                    .user
                                    .picturePath ?? ''),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      (context.read<UserCubit>().state as UserLoaded).user.name ?? '',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      (context.read<UserCubit>().state as UserLoaded)
                          .user
                          .email ?? '',
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                )),
            // TODO: Body
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ["Account", "Bedjokopi"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: ((selectedIndex == 0)
                            ? ['Edit Profile', 'Home Address', 'Payment']
                            : ['About App', 'Rate App'])
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  bottom: 16,
                                  left: defaultMargin,
                                  right: defaultMargin),
                              child: GestureDetector(
                                onTap: () {
                                  print("Menu ditekan");
                                  // Buatkan kode untuk tiap list menu account dan bedjokopi menuju ke halaman yang berbeda bedasarkan nama menu
                                  if (e == "Edit Profile") {
                                    Get.snackbar('Edit Profile', 'Anda menekan edit profile');
                                  } else if (e == "Home Address") {
                                    Get.snackbar('Home Address', 'Anda menekan home address');
                                  } else if (e == "Payment") {
                                    Get.snackbar('Payment', 'Anda menekan payment');
                                  } else if (e == "About App") {
                                    Get.to(AboutPage());
                                  } else if (e == "Rate App") {
                                    Get.snackbar('Rate App', 'Anda menekan rate app');
                                  };
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e,
                                      style: blackFontStyle3,
                                    ),
                                    SizedBox(
                                      height: 16,
                                      width: 16,
                                      child: Image.asset(
                                        'assets/right_arrow.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ],
    );
  }
}
