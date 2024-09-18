import 'package:flutter/material.dart';
import 'package:thichtruyentranh/widgets/shimmer_item_home.dart';

class ShimmerGridItems extends StatelessWidget {
  final String? text;
  const ShimmerGridItems({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Text(
                text ?? '',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_forward_ios,
                ),
              )
            ],
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.56,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ShimmerGridItem();
          },
          itemCount: 6,
        ),
      ],
    );
  }
}

class ShimmerListItems extends StatelessWidget {
  final String? text;
  const ShimmerListItems({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Text(
                text ?? '',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_forward_ios,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ShimmerListItem();
            },
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}
