part of 'widgets.dart';

class CoffeeListItem extends StatelessWidget {
  final Coffee coffee;
  final double itemWidth;

  CoffeeListItem({@required this.coffee, this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(coffee.picturePath), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth - 182, // 60 + 12 + 110
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coffee.name,
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                NumberFormat.currency(
                        symbol: 'Rp ', decimalDigits: 0, locale: 'id-ID')
                    .format(coffee.price),
                style: greyFontStyle.copyWith(fontSize: 13),
              ),
            ],
          ),
        ),
        RatingStars(coffee.rate),
      ],
    );
  }
}
