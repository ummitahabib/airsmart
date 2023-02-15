import 'package:airsmartt/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, required this.svgSrc, required this.tap})
      : super(key: key);

  final String title, svgSrc;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      horizontalTitleGap: 0.0,
      leading: Container(
          padding: EdgeInsets.all(appPadding / 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.1),
              color: Color(0xffEFF0F6)!.withOpacity(0.5),
              shape: BoxShape.rectangle),
          child: SvgPicture.asset(
            svgSrc,
            color: grayscaleLabel,
            height: 15.26,
            width: 15.26,
          )),
      title: Padding(
        padding: const EdgeInsets.only(left: 13.0),
        child: Text(
          title,
          style: TextStyle(
              color: Color(0xff4E4B66),
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
