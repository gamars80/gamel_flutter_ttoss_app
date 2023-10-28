import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../vo/vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem(this.stock,{ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: context.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(stock.stockImagePath,width: 50,),
          width20,
          (stock.name).text.color(Colors.white).size(18).bold.make(),
          emptyExpanded,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ///(오늘의 가격 - 전날의 가격) %
              stock.todayPercentage.text.color(stock.getPriceColor(context)).make(),
              "${stock.currentPrice.toComma()}원".text.color(context.appColors.leesImportant).make(),
            ],
          )

        ],
      ),
    );
  }
}
