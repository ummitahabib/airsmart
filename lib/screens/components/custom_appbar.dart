import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/constants/responsive.dart';
import 'package:airsmartt/controllers/controller.dart';
import 'package:airsmartt/screens/components/profile_info.dart';
import 'package:airsmartt/screens/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'add_organization.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Organizations',
              style: textStyle,
            ),
            ProfileInfo()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                onPressed: context.read<Controller>().controlMenu,
                icon: Icon(
                  Icons.menu,
                  color: textColor.withOpacity(0.5),
                ),
              ),
            Container(width: 250, child: SearchField()),
            MyModalForm()
          ],
        ),
      ],
    );
  }
}
