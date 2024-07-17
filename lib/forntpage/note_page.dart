import 'package:flutter/material.dart';
import 'package:note_manager/model/checkbox&text/chekbox.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  ///list of Checkboxs Widget
  List<CheckBoxs> listDynamic = [];

  addfuction() {
    listDynamic.add(const CheckBoxs());
    setState(() {});
  }

  /// return the list of checkbox type
  List<CheckBoxs> getListItems() {
    return listDynamic;
  }

  ///create the list View
  Widget getList() {
    List<CheckBoxs> list = getListItems();
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return listDynamic.isEmpty ? const Scaffold() : listDynamic[index];
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(16), child: getList()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            addfuction();
          });
        },
      ),
    );
  }
}
