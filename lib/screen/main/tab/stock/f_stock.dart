import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/setting/s_setting.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/tab/f_my_stock.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/tab/f_todays_discovery.dart';

import '../../../../common/widget/w_image_button.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({
    Key? key,
  }) : super(key: key);

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  // TabController tabController;
  late final tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(length: 2, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: context.appColors.roundedLayoutBackground,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                Nav.push(SearchStockScreen());
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('캘린터');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                Nav.push(SettingScreen());
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            title,
            tabBar,
            if (currentIndex == 0)
              const MyStockFragment()
            else
              const TodaysDiscoveryFragment()
            // myAccount,
            // height20,
            // myStocks,
          ],
        ))
      ],
    );
  }

  Widget get title => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(24).color(Colors.white).bold.make(),
            width20,
            'S&P 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.leesImportant)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make(),
          ],
        ).pOnly(left: 20),
      );

  Widget get tabBar => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: tabController,
                indicatorColor: Colors.white,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                labelPadding: const EdgeInsets.symmetric(vertical: 20),
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  '내 주식'.text.color(Colors.white).make(),
                  '오늘의 발견'.text.color(Colors.white).make()
                ]),
            const Line(),
          ],
        ),
      );
}
