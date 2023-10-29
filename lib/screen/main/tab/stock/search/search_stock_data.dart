import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/util/local_json.dart';
import 'package:get/get.dart';

import '../vo/vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController{
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성','엘지','현대차','넷플릭']);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async{
    final jsonList = await LocalJson.getObjectList<SimpleStock>("json/stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if(keyword.isEmpty) {
      autoCompleteList.clear();
      return;
    }

    autoCompleteList.value =
        stocks.where((element) => element.name.contains(keyword))
        .toList();

    debugPrint(autoCompleteList.toString());
  }

  void addHistory(SimpleStock stock) {
    searchHistoryList.add(stock.name);
  }

  void    removeHistory(String stockName) {
    searchHistoryList.remove(stockName);
  }
}