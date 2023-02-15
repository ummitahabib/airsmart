import 'package:flutter/material.dart';

import '../../constants/constants.dart';
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
          Text(
            organize.orgName,
            style: paraGr,
          ),
          Text(
            organize.orgType,
            style: paraGr,
          ),
          Text(
            organize.orgDes,
            style: paraGr,
          ),
          Column(
            children: [
              Text(organize.sites),
              Text(
                'site',
                style: paraGr2,
              )
            ],
          ),
          Column(
            children: [
              Text(organize.sector),
              Text(
                'Sector',
                style: paraGr2,
              )
            ],
          ),
          Row(
            children: [
              Container(
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
                      style: paraGr,
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
