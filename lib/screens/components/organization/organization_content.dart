import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/screens/components/organization_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';

class OrganizationContent extends StatefulWidget {
  OrganizationContent({Key? key}) : super(key: key);

  @override
  State<OrganizationContent> createState() => _OrganizationContentState();
}

class _OrganizationContentState extends State<OrganizationContent> {
  final organizeList = Organize.organizeList();
  final _organizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            Appbar(),
            SizedBox(
              height: appPadding,
            ),
            Column(
              children: [Image.asset('assets/images/map.png')],
            )
          ],
        ),
      ),
    );
  }

  void _deleteOrg(String id) {
    setState(() {
      organizeList.removeWhere((item) => item.id == id);
    });
  }
}
