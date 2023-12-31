import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/opensource/vo_package.dart';
import 'package:flutter/material.dart';

class OpensourceItem extends StatelessWidget {
  final Package package;

  const OpensourceItem(this.package, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:40, bottom:30,),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          package.name.text.color(Colors.white).size(20).bold.make().pOnly(left:20, bottom: 8),
          package.description.text.color(Colors.white).size(14).make().pOnly(left:20, bottom: 8, right:20),
          if(package.authors.isNotEmpty)(package.authors.join(", ")).text.size(14).make().pOnly(left:20, top:12),
          if(isNotBlank(package.homepage))(package.homepage?? "").text.make().pOnly(left:20, top:15),
          Container(
            decoration: BoxDecoration(color: context.appColors.buttonBackground, border: Border.all(color: context.appColors.divider), borderRadius: BorderRadius.circular(4)),
            margin: const EdgeInsets.only(left: 20, top:15, right:20),
            height: 230,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  (package.license ?? "").text.color(Colors.white).make(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
