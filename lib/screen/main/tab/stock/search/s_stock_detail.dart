import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;
  const StockDetailScreen( this.stockName,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(stockName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '주식 상세'.text.color(Colors.white).make(),
          ],
        ),
      ),
    );
  }
}
