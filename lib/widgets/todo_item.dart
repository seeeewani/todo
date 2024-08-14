// widgets/todo_item.dart

import 'package:flutter/material.dart';
import 'package:to_do_app/constraints/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  get tdBlack => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Clicked on Todo Item.');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: tdBlack,
        ),
        title: const Text(
          'Check Mail',
          style: TextStyle(
            fontSize: 16,
            //color: tdBlack,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
              onPressed: () {
                print('Clicked on delete icon');
              },
            )),
      ),
    );
  }
}
