import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/constants/responsive.dart';
import 'package:airsmartt/controllers/controller.dart';
import 'package:airsmartt/screens/components/dashboard_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/drawer_menu.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

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
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
