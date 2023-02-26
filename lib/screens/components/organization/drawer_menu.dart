import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 5.0, bottom: 20, top: 15),
                    child: Image.asset(
                      "assets/images/logowithouttext.png",
                      width: 70.7,
                      height: 56,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(appPadding / 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.1),
                      color: Color(0xffEFF0F6)!.withOpacity(0.5),
                      shape: BoxShape.rectangle),
                  child: SvgPicture.asset(
                    'assets/icons/home.svg',
                    color: grayscaleLabel,
                    height: 15.26,
                    width: 15.26,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(appPadding / 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.1),
                      color: Color(0xffEFF0F6)!.withOpacity(0.5),
                      shape: BoxShape.rectangle),
                  child: SvgPicture.asset(
                    'assets/icons/device-message.svg',
                    color: grayscaleLabel,
                    height: 15.26,
                    width: 15.26,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(appPadding / 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.1),
                      color: Color(0xffEFF0F6)!.withOpacity(0.5),
                      shape: BoxShape.rectangle),
                  child: SvgPicture.asset(
                    'assets/icons/money-4.svg',
                    color: grayscaleLabel,
                    height: 15.26,
                    width: 15.26,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(appPadding / 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.1),
                      color: Color(0xffEFF0F6)!.withOpacity(0.5),
                      shape: BoxShape.rectangle),
                  child: SvgPicture.asset(
                    'assets/icons/setting-2.svg',
                    color: grayscaleLabel,
                    height: 15.26,
                    width: 15.26,
                  )),
            ],
          ),
          VerticalDivider(),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xffD9DBE9), width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 12,
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Back')
                    ],
                  ),
                ),
              ),

              // DropdownButton<String>(
              //   icon: Icon(
              //     Icons.arrow_forward_ios_outlined,
              //     size: 15,
              //   ),
              //   value: 'Adam Farm',
              //   items: [
              //     DropdownMenuItem(
              //         child: Text('Adam Farm'), value: 'Adam Farm'),
              //     DropdownMenuItem(child: Text('Option 2'), value: 'Option 2'),
              //     DropdownMenuItem(child: Text('Option 3'), value: 'Option 3'),
              //   ],
              //   onChanged: (value) {},
              // ),
              // const Divider(
              //   color: Colors.black,
              //   height: 5,
              //   thickness: 1,
              //   indent: 5,
              //   endIndent: 5,
              // ),
              // DropdownButton<String>(
              //   value: 'Damilola Farm',
              //   items: [
              //     DropdownMenuItem(
              //         child: Text('Damilola Farm'), value: 'Damilola Farm'),
              //     DropdownMenuItem(child: Text('Option 5'), value: 'Option 5'),
              //     DropdownMenuItem(child: Text('Option 6'), value: 'Option 6'),
              //   ],
              //   onChanged: (value) {},
              // ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  width: 135.89,
                  height: 1,
                  color: Color(0xffEFF0F6),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Adam Farm    '),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  width: 135.89,
                  height: 1,
                  color: Color(0xffEFF0F6),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Damilola Farm'),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
