import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo Page"),
      ),
      body: Column(children: [
        TextFormField(
          decoration: InputDecoration(hintText: "Masukkan todo"),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(onPressed: () {


          
        }, child: Text("Save"))
      ]),
    );
  }
}
