import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:get/get.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {

  final TextEditingController controller;
  SearchAutoCompleteList(this.controller,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stock = searchData.autoCompleteList[index];
        final stockName = stock.name;
        return Tap(
          onTap: () {
            controller.clear();
            searchData.addHistory(stock);
            Nav.push(
                StockDetailScreen(stockName));
          },
          child: stockName.text
              .color(Colors.white)
              .make()
              .p(20),
        );
      },
      // searchData.autoCompleteList[index].stockName.text.color(Colors.white).make(),
      itemCount: searchData.autoCompleteList.length,
    );
  }
}
