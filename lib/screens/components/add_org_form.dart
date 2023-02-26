import 'package:airsmartt/constants/constants.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _institutionName;
  String? _institutionName2;
  String? _shortDescription;
  String? _address;

  final _nameController = TextEditingController();
  final _typeController = TextEditingController();
  final _desController = TextEditingController();
  final _sitesController = TextEditingController();
  final _sectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 20.0,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institution Name',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: formFilledColor,
                            hintText: 'Institution name',
                            hintStyle: hintTextStyle,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institution Name2',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: _typeController,
                          decoration: InputDecoration(
                            hintText: 'Institution name 2',
                            filled: true,
                            fillColor: formFilledColor,
                            hintStyle: hintTextStyle,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Short Description',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: _desController,
                    maxLines: 3,
                    maxLength: 40,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: formFilledColor,
                      hintText: 'Short description',
                      hintStyle: hintTextStyle,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Long Description',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: _sitesController,
                    maxLines: 3,
                    maxLength: 40,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: formFilledColor,
                      hintText: 'Long description',
                      hintStyle: hintTextStyle,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: _sectController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: formFilledColor,
                      hintText: 'Address',
                      hintStyle: hintTextStyle,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    child: Text('Create organization'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
