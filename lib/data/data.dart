import 'package:airsmartt/constants/constants.dart';
import 'package:airsmartt/models/analytic_info_model.dart';

List analyticData = [
  AnalyticInfo(
    title: "Total Organizations",
    count: 56,
    svgSrc: "assets/dashboard/building.svg",
    color: primaryColor500,
  ),
  AnalyticInfo(
    title: "Total Sites",
    count: 65,
    svgSrc: "assets/icons/Post.svg",
    color: teal500,
  ),
  AnalyticInfo(
    title: "Total Sectors",
    count: 920,
    svgSrc: "assets/icons/Pages.svg",
    color: primaryDefault,
  ),
  AnalyticInfo(
    title: "Total Batches",
    count: 1200,
    svgSrc: "assets/dashboard/batches.svg",
    color: errorDefault,
  ),
  AnalyticInfo(
    title: "Total Soil Analysis",
    count: 400,
    svgSrc: "assets/dashboard/tree.svg",
    color: secondaryDefault,
  ),
  AnalyticInfo(
    title: "Total Devices",
    count: 32,
    svgSrc: "assets/dashboard/device-message.svg",
    color: successDefault,
  ),
];
