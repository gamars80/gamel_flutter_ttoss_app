import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/common/dart/extension/datetime_extension.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/w_popuplar_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.color(Colors.white).bold.make(),
            emptyExpanded,
            '오늘 ${DateTime.now().formattedTime} 기준'
                .text
                .color(context.appColors.leesImportant)
                .size(12)
                .make(),
          ],
        ),
        height20,
        // ...popularStocksList.mapIndexed((element, index) => PopularStockItem(stock: element,number: index+1)).toList(),
        ...popularStocksList
            .mapIndexed((element, index) =>
            OpenContainer<bool>(
              openColor: Colors.black,
              closedColor: Colors.black,
              openBuilder: (BuildContext context, VoidCallback _) {
                return StockDetailScreen(element.name);
              },
              closedBuilder: (BuildContext context, VoidCallback action) {
                return Row(
                  children: [
                    (index + 1).text.bold.white.size(16).make(),
                    width20,
                    element.name.text.bold.white.size(16).make(),
                    emptyExpanded,
                    element.todayPercentageString.text
                        .color(element.getTodayPercentageColor(context))
                        .size(16)
                        .make(),
                  ],
                ).pSymmetric(h: 20, v: 20);
              },
            ))
      ],
    ).pSymmetric(h: 20);
  }
}
