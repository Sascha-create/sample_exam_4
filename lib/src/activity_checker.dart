import 'package:flutter/material.dart';


class ActivityChecker extends StatefulWidget {
  const ActivityChecker(
      {super.key, required this.header, required this.description});

  final String header;
  final String description;

  @override
  State<ActivityChecker> createState() => _ActivityCheckerState();
}

class _ActivityCheckerState extends State<ActivityChecker> {
  bool isCheckedPreperation = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            activeColor: Colors.white,
            value: isCheckedPreperation,
            onChanged: (value) {
              setState(() {
                isCheckedPreperation = !isCheckedPreperation;
              });
            }),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                widget.header),
            Text(style: TextStyle(fontSize: 16), widget.description),
          ],
        ),
      ],
    );
  }
}
