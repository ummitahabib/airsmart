import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/constants/responsive.dart';
import 'package:airsmartt/controllers/controller.dart';
import 'package:airsmartt/screens/components/organization/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'organization_content.dart';

class OrganizationDetailScreen extends StatelessWidget {
  const OrganizationDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: DrawerMenu(),
              ),
            Expanded(
              flex: 5,
              child: OrganizationContent(),
            )
          ],
        ),
      ),
    );
  }
}
