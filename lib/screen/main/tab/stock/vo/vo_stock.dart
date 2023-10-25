import 'package:flutter/cupertino.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/vo/vo_popular_stock.dart';
import 'package:get/get.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock(
      {required this.stockImagePath,
      required super.yesterdayClosePrice,
      required super.currentPrice,
      required super.stockName});

}
