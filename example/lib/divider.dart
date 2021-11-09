import 'package:flutter/material.dart';

class SimpleDivider extends StatelessWidget {
  /// text is Text text
  final String text;

  /// SimpleDivider constructor
  const SimpleDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Divider(
                color: Colors.grey[200],
                thickness: 4,
                indent: 8,
                endIndent: 22,
                height: 2,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
