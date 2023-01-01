import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_flutter/add_todo_page.dart';

class TodoPage extends StatefulWidget {
  TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<String> todos = [
    "Mandi",
    "Mengerjakan Project",
    "Game",
    "Belanja"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todos"),
          actions: [
            IconButton(
                onPressed: () {
                  var halaman = AddTodoPage();
                  var rute = MaterialPageRoute(builder: (ctx) {
                    return halaman;
                  });
                  Navigator.of(context).push(rute);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              var text = todos[index];
              return TodoItemWidget(
                title: text,
                onDelete: () {
                  setState(() {
                    todos.removeAt(index);
                  });
                },
              );
            }));
  }
}

class TodoItemWidget extends StatelessWidget {
  final String title;
  final Function() onDelete;

  const TodoItemWidget({Key? key, required this.title, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.lightBlue, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          IconButton(onPressed: onDelete, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
