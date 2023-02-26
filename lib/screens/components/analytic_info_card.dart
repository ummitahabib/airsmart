import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/models/analytic_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnalyticInfoCard extends StatelessWidget {
  const AnalyticInfoCard({Key? key, required this.info}) : super(key: key);

  final AnalyticInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: appPadding / 2,
      ),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.count}",
                style: textStyle,
              ),
              Container(
                padding: EdgeInsets.all(appPadding / 2),
                height: 42.72,
                width: 42.72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.21),
                    color: info.color!.withOpacity(0.1),
                    shape: BoxShape.rectangle),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  color: info.color,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 23.0,
            ),
            child: Text(
              info.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: subCont,
            ),
          )
        ],
      ),
    );
  }
}
