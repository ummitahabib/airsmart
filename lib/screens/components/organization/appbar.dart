import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/constants/responsive.dart';
import 'package:airsmartt/controllers/controller.dart';
import 'package:airsmartt/screens/components/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'create_site.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Organizations',
                style: GoogleFonts.openSans(textStyle: textStyle),
              ),
              ProfileInfo()
            ],
          ),
        ),
        const Divider(
          color: Color(0xffD9DBE9),
          height: 25,
          thickness: 1,
          indent: 5,
          endIndent: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Row(
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
              Container(width: 250, child: Text('Adam Farm')),
              MyModalForm()
            ],
          ),
        ),
      ],
    );
  }
}
