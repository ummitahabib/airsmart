import 'package:airsmartt/constants/constants.dart';
import 'package:flutter/material.dart';

import '../organization_item.dart';
import 'create_site_form.dart';

class MyModalForm extends StatefulWidget {
  @override
  State<MyModalForm> createState() => _MyModalFormState();
}

class _MyModalFormState extends State<MyModalForm> {
  final _formKey = GlobalKey<FormState>();
  late final organizeList = Organize.organizeList();
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
          Text('Create Site'),
        ],
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (_) => Center(
                    // Aligns the container to center
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  // A simplified version of dialog.
                  width: 500.0,
                  height: 600.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Text('New Organization'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black38,
                      ),
                      MyForm(),
                    ],
                  ),
                )));
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
