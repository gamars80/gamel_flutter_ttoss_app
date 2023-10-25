import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/stock_dummy.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/tab/w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks.map((element) => StockItem(element)).toList(),
      ],
    );
  }
}
