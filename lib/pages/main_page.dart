part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int initialPage;

  MainPage({this.initialPage = 0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;

  Future<void> scanQRCode() async {
    await FlutterBarcodeScanner.scanBarcode(
            '#ff6666', 'CANCEL', true, ScanMode.QR)
        .then((String code) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CoffeeQRDetailsPage(
                    code: code,
                    transaction: Transaction(
                      // coffee: ,
                      user:
                          (context.bloc<UserCubit>().state as UserLoaded).user,
                    ),
                    onBackButtonPressed: () {
                      Get.back();
                    },
                  )));
    });
  }

  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              Center(
                child: CoffeePage(),
              ),
              Center(
                child: OrderHistoryPage(),
              ),
              Center(
                child: ProfilePage(),
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 60, right: 10),
        child: FloatingActionButton(
          onPressed: () => scanQRCode(),
          child: const Icon(MdiIcons.qrcode),
          backgroundColor: mainColor,
        ),
      ),
    );
  }
}
