import 'package:gamel_flutter_ttoss/screen/main/tab/stock/vo/stock_percentage_data_provider.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/vo/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageDataProvider{
  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;

  PopularStock({required this.yesterdayClosePrice,  required this.currentPrice, required String stockName})
      : super(stockName);

}