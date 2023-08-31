import 'package:flutter/material.dart';

class ContentListItem extends StatefulWidget {
  const ContentListItem({super.key, required this.content});
  final String content;

  @override
  State<ContentListItem> createState() => _ContentListItemState();
}

class _ContentListItemState extends State<ContentListItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                offset: Offset(0, 3),
                color: Color.fromRGBO(0, 0, 0, 0.1))
          ]),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) => setState(() {
              isChecked = !isChecked;
            }),
          ),
          Text(
            widget.content,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
