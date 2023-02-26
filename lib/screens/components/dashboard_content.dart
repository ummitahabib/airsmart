import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/constants/responsive.dart';
import 'package:airsmartt/screens/components/analytic_cards.dart';
import 'package:airsmartt/screens/components/custom_appbar.dart';
import 'package:airsmartt/screens/components/organization_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'organization.dart';

class DashboardContent extends StatefulWidget {
  DashboardContent({Key? key}) : super(key: key);

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  final organizeList = Organize.organizeList();
  final _organizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(
              height: appPadding,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          AnalyticCards(),
                          SizedBox(
                            height: appPadding,
                          ),
                          //Users(),
                          for (Organize organization in organizeList)
                            Organization(
                              organize: organization,
                              onDeleteOrg: _deleteOrg,
                            ),
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: appPadding,
                            ),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(
                        width: appPadding,
                      ),
                  ],
                ),
              ],
            ),
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
