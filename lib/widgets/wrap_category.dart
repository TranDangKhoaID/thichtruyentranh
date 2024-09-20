import 'package:flutter/material.dart';
import 'package:thichtruyentranh/common/share_color.dart';
import 'package:thichtruyentranh/models/category.dart';

class WrapCategory extends StatelessWidget {
  const WrapCategory({
    super.key,
    required this.items,
  });

  final List<Category> items;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      //alignment: WrapAlignment.start,
      children: List.generate(
        items.length,
        (index) => IntrinsicWidth(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: ShareColors.kSecondColor,
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.topLeft,
            //width: handleWidthCategory(items, context),
            child: Text('#${items[index].name}'),
          ),
        ),
      ),
    );
  }
}

double handleWidthCategory(List items, BuildContext context) {
  double width = 0;
  if (items.length == 1) {
    width = MediaQuery.of(context).size.width - 20;
  } else if (items.length == 2) {
    width = (MediaQuery.of(context).size.width - 20) * 0.45;
  } else {
    width = (MediaQuery.of(context).size.width - 20) * 0.3;
  }
  return width;
}
