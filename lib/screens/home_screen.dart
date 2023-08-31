import 'package:flutter/material.dart';
//widget
import 'package:flutter_todo/widgets/content_input_widget.dart';
import 'package:flutter_todo/widgets/content_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _todoList = ["숙제하기", "저녁음식 장보기", "책 읽기"];

  // void initState() {
  //   _todo_list = ;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO_INPUT
        ContentInputWidget(),
        //TODO_LIST
        ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
          ..._todoList.map((content) => ContentListItem(content: content))
        ]),
      ],
    );
  }
}
