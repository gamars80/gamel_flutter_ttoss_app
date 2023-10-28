import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';

import '../vo/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;

  const PopularStockItem({Key? key, required this.stock, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 40, child: number.text.color(Colors.white).make()),
        width30,
        stock.name.text.color(Colors.white).make(),
        emptyExpanded,
        stock.todayPercentageString.text
            .color(stock.getPriceColor(context))
            .make()
      ],
    ).pSymmetric(v: 25);
  }
}
