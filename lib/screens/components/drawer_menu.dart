import 'package:airsmartt/screens/components/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffFFFFFF),
      child: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 20, top: 15),
                child: Image.asset("assets/images/logowithtext.png"),
              ),
            ],
          ),
          DrawerListTile(
            title: 'Organizations',
            svgSrc: 'assets/icons/home.svg',
            tap: () {},
            bgCheck: true,
          ),
          DrawerListTile(
            title: 'Device Management',
            svgSrc: 'assets/icons/device-message.svg',
            tap: () {},
            bgCheck: false,
          ),
          DrawerListTile(
            title: 'Farm Loan',
            svgSrc: 'assets/icons/money-4.svg',
            tap: () {},
            bgCheck: false,
          ),
          DrawerListTile(
            title: 'Manage Agent ',
            svgSrc: 'assets/icons/user.svg',
            tap: () {},
            bgCheck: false,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
          //   child: Divider(
          //     color: grey,
          //     thickness: 0.2,
          //   ),
          // ),
          DrawerListTile(
            title: 'Account',
            svgSrc: 'assets/icons/setting-2.svg',
            tap: () {},
            bgCheck: false,
          ),
          // DrawerListTile(
          //     title: 'Logout', svgSrc: 'assets/icons/Logout.svg', tap: () {}),
        ],
      ),
    );
  }
}
