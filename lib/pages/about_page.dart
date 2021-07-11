part of 'pages.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "About Bedjoe Kopi",
      subtitle: "ringkasan mengenai aplikasi",
      onBackButtonPressed: () {
        Get.back();
      },
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Logo Kedai BedjoeKopi",
                    style: blackFontStyle2,
                  ),
                ),
                Text(
                    "Logo Kedai Bedjoekopi berbentuk secangkir kopi. Yang artinya kopi tak hanya sebuah "
                    "minuman hangat berwarna hitam pekat dengan dominan rasa pahit yang sesekali diselingi rasa manis "
                    "serta dilengkapi aroma yang mampu membangkitkan semangat. Tetapi secangkir kopi "
                    "adalah sebuah representasi akan realitas kehidupan",
                    style: greyFontStyle,
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text("Profile Kedai BedjoeKopi", style: blackFontStyle2),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Merupakan perusahaan yang bergerak di bidang kuliner. Terutama minuman "
                      "kopi. Kedai kopi ini resmi dibuka 28 Juni 2020. Kedai Bedjokopi didirikan oleh "
                      "Wiliam. Pengetahuan tentang kopi, maka Kedai Bedjokopi didirikan untuk menyampaikan "
                      "ketertarikan sang pemilik. Ini adalah data pribadi Kedai Bedjoekopi",
                      style: greyFontStyle,
                      textAlign: TextAlign.justify),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        "Nama Perusahaan ",
                        style: greyFontStyle,
                      )),
                      Container(
                          child:
                              Text("Kedai Bedjoekopi", style: greyFontStyle)),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Alamat ",
                            style: greyFontStyle, textAlign: TextAlign.start),
                        Text(
                            "Jl. Vikamus Selatan I Blok B4 No. 1C, \nKapuk Muara, Jakarta Utara",
                            style: greyFontStyle,
                            textAlign: TextAlign.end),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("No. Telepon ",
                          style: greyFontStyle, textAlign: TextAlign.start),
                      Text("089917782888",
                          style: greyFontStyle, textAlign: TextAlign.end),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pemilik ",
                          style: greyFontStyle, textAlign: TextAlign.start),
                      Text("Wiliam",
                          style: greyFontStyle, textAlign: TextAlign.end),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Visi Kedai BedjoKopi",
                    style: blackFontStyle2,
                  ),
                ),
                Text(
                    "Menjadi pelopor Coffeeshop ternama di Asia Tenggara maupun Internasional yang berkualitas. Dan "
                    "menjaga cita rasa yang ada di Indonesia serta menjadi produsen yang memakai biji biji kopi "
                    "kopi yang ada di Indonesia",
                    style: greyFontStyle,
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Misi Kedai BedjoKopi",
                    style: blackFontStyle2,
                  ),
                ),
                Text(
                    "a) Menghasilkan produk produk biji kopi yang ada di Indonesia\n"
                    "b) Meningkatkan kualitas mutu biji kopi yang ada di Indonesia\n"
                    "c) Menyediakan produk pilihan dengan cita rasa tinggi, inovatif,"
                    "harga terjangkau dan memastikan ketersediaannya bagi pelanggan\n"
                    "d) Berkomitmen untuk meningkatkan kualitas barista di Indonesia",
                    style: greyFontStyle,
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
