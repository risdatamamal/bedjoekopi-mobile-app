part of 'pages.dart';

class CoffeePage extends StatefulWidget {
  @override
  _CoffeePageState createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            // HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bedjo Kopi',
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let's get some coffee",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                (context.bloc<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            // LIST OF COFFEE
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockCoffees
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  left: (e == mockCoffees.first)
                                      ? defaultMargin
                                      : 0,
                                  right: defaultMargin),
                              child: GestureDetector(
                                  onTap: () {
                                    Get.to(CoffeeDetailsPage(
                                      transaction: Transaction(
                                        coffee: e,
                                        user: (context.bloc<UserCubit>().state
                                                as UserLoaded)
                                            .user,
                                      ),
                                      onBackButtonPressed: () {
                                        Get.back();
                                      },
                                    ));
                                  },
                                  child: CoffeeCard(e)),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            // LIST OF COFFEE (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: [
                      'Manual Brew',
                      'Espresso Based',
                      'Snack',
                      'Non-Coffee',
                      'Tea'
                    ],
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
                  Builder(builder: (_) {
                    List<Coffee> coffees = (selectedIndex == 0)
                        ? manualBrew
                        : (selectedIndex == 1)
                            ? espressoBased
                            : (selectedIndex == 2)
                                ? snack
                                : (selectedIndex == 3)
                                    ? nonCoffee
                                    : tea;
                    return Column(
                      children: coffees
                          .map((e) => Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  defaultMargin, 0, defaultMargin, 16),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(CoffeeDetailsPage(
                                    transaction: Transaction(
                                      coffee: e,
                                      user: (context.bloc<UserCubit>().state
                                              as UserLoaded)
                                          .user,
                                    ),
                                    onBackButtonPressed: () {
                                      Get.back();
                                    },
                                  ));
                                },
                                child: CoffeeListItem(
                                  coffee: e,
                                  itemWidth: listItemWidth,
                                ),
                              )))
                          .toList(),
                    );
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ],
    );
  }
}
