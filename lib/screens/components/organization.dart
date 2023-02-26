import 'package:airsmartt/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import 'organization/organization_details.dart';
import 'organization_item.dart';

class Organization extends StatelessWidget {
  final Organize organize;
  final onDeleteOrg;
  const Organization({Key? key, required this.organize, this.onDeleteOrg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: 1124,
      height: 64,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              organize.orgName,
              style: TextStyle(
                color: grayscaleLabel,
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 11,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Expanded(
            child: Text(
              organize.orgType,
              style: TextStyle(
                color: grayscaleLabel,
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 11,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Expanded(
            child: Text(
              organize.orgDes,
              style: TextStyle(
                color: grayscaleLabel,
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 11,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Text(
                  organize.sites,
                  style: TextStyle(
                    color: grayscaleLabel,
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 11,
                  ),
                )),
                Expanded(
                  child: Text(
                    'site',
                    style: TextStyle(
                      color: primaryColor500,
                      fontSize:
                          MediaQuery.of(context).size.width > 600 ? 16 : 11,
                      //fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Expanded(
                child: Text(
                  organize.sector,
                  style: TextStyle(
                    color: grayscaleLabel,
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 11,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Sector',
                  style: TextStyle(
                    color: primaryColor500,
                    fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 11,
                    //fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChangeNotifierProvider<Controller>(
                        create: (_) => Controller(),
                        child: const OrganizationDetailScreen(),
                      ),
                    ),
                  );

                  // Navigator.push(
                  // Get.
                  // context,
                  // MaterialPageRoute(
                  //     builder: (context) =>
                  //         const OrganizationDetailScreen()));
                },
                child: Container(
                  width: 86,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Color(0xffC1B497),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'View',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: grayscaleLabel,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        color: grayscaleLabel,
                        fontWeight: FontWeight.w500,
                        fontSize:
                            MediaQuery.of(context).size.width > 600 ? 16 : 8,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: grayscaleLabel,
                      ),
                      iconSize: 18,
                      color: Colors.black12,
                      onPressed: () {
                        onDeleteOrg(organize.id);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
