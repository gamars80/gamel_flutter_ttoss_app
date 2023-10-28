import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:get/get.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({Key? key}) : super(key: key);

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 65,
        child: Obx(
              () =>
              ListView.builder(
                padding: const EdgeInsets.only(top: 5),
                scrollDirection: Axis.horizontal,
                itemCount: searchData.searchHistoryList.length,
                itemBuilder: (context, index) {
                  final stockName = searchData.searchHistoryList[index];
                  return Column(

                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Row(
                          children: [
                            Tap(
                              onTap: () {
                                Nav.push(StockDetailScreen(stockName));
                              },
                              child: stockName.text
                                  .color(Colors.white)
                                  .make(),
                            ),
                            Tap(onTap: () {
                              searchData.removeHistory(stockName);
                            }, child: Icon(Icons.close, color: Colors.white,),),
                          ],
                        ).box
                            .withRounded(value: 6)
                            .color(context.appColors.roundedLayoutBackground)
                            .p8
                            .make(),
                      ),
                    ],
                  );
                },
              ),
        ));
  }
}
