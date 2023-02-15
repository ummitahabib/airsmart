import 'package:airsmartt/constants/constants.dart';
import 'package:flutter/material.dart';

import 'organization_item.dart';

class MyModalForm extends StatefulWidget {
  @override
  State<MyModalForm> createState() => _MyModalFormState();
}

class _MyModalFormState extends State<MyModalForm> {
  final _formKey = GlobalKey<FormState>();
  late final organizeList = Organize.organizeList();
  //final _organizeController = TextEditingController();
  final _nameController = TextEditingController();
  final _typeController = TextEditingController();
  final _desController = TextEditingController();
  final _sitesController = TextEditingController();
  final _sectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
      child: Row(
        children: [
          Text(
            '+ ',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Text('Add Organization'),
        ],
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Modal Title'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Organization Name',
                      ),
                    ),
                    TextFormField(
                      controller: _typeController,
                      decoration: InputDecoration(
                        labelText: 'Organization Type',
                      ),
                    ),
                    TextFormField(
                      controller: _desController,
                      decoration: InputDecoration(
                        labelText: 'Organization Description',
                      ),
                    ),
                    TextFormField(
                      controller: _sitesController,
                      decoration: InputDecoration(
                        labelText: 'Sites',
                      ),
                    ),
                    TextFormField(
                      controller: _sectController,
                      decoration: InputDecoration(
                        labelText: 'Sector',
                      ),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Submit'),
                  onPressed: () {
                    _addOrg(
                      _nameController.text,
                      _typeController.text,
                      _desController.text,
                      _sitesController.text,
                      _sectController.text,
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _addOrg(
    String orgName,
    String orgType,
    String orgDes,
    String sites,
    String sector,
  ) {
    setState(() {
      organizeList.add(
        Organize(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            orgName: orgName,
            orgType: orgType,
            orgDes: orgDes,
            sites: sites,
            sector: sector),
      );
    });
    _nameController.clear();
    _typeController.clear();
    _desController.clear();
    _sitesController.clear();
    _sectController.clear();
  }
}
