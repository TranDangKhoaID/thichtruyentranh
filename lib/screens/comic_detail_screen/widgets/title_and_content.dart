import 'package:flutter/material.dart';

class TitleAndContent extends StatelessWidget {
  const TitleAndContent({super.key, this.title = '', this.content = ''});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.justify,
            content,
          ),
        ],
      ),
    );
  }
}
