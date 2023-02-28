import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utilties/theme.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Color _backGroundColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      width: 250,
      child: Expanded(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  ),
                  overlayColor: MaterialStatePropertyAll(Colors.grey.shade200),
                  iconColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maximumSize: MaterialStatePropertyAll(Size(50, 60)),
                  minimumSize: MaterialStatePropertyAll(Size(50, 60)),
                  backgroundColor: MaterialStatePropertyAll(_backGroundColor),
                ),
                onPressed: () {
                  // setState(() {
                  //   _backGroundColor = Colors.grey.shade300;
                  // });
                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.viewDashboard,
                        size: 25,
                      ),
                      SizedBox(width: 25),
                      Text(
                        'Dashboard',
                        style: lightTheme.textTheme.labelMedium!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            buildTopLevelHeader(
              title: 'Stock',
              subLevel: [
                {
                  'category': 'Raw Materials',
                  'img': 'lib/assets/imgs/raw_materials.png'
                },
                {
                  'category': 'Products',
                  'img': 'lib/assets/imgs/icons8-package.png'
                },
                {
                  'category': 'Chemicals',
                  'img': 'lib/assets/imgs/icons8-can.png'
                },
                {
                  'category': 'Assets',
                  'img': 'lib/assets/imgs/icons8-bank.png'
                },
              ],
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget buildTopLevelHeader({
    required String title,
    required List<Map<String, dynamic>> subLevel,
  }) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ExpansionTile(
        iconColor: Colors.black,
        shape: BeveledRectangleBorder(
          side: BorderSide(
            color: Colors.transparent,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 0.0),
                child: Image.asset(
                  'lib/assets/imgs/icons8-big-parcel.png',
                  height: 27,
                  width: 27,
                ),
              ),
              SizedBox(width: 25),
              Text(
                'Stock',
                style: lightTheme.textTheme.labelMedium!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        children: subLevel.map((subLevel) {
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50, right: 10),
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    ),
                    overlayColor:
                        MaterialStatePropertyAll(Colors.grey.shade200),
                    iconColor: MaterialStatePropertyAll(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // maximumSize: MaterialStatePropertyAll(Size(50, 60)),
                    // minimumSize: MaterialStatePropertyAll(Size(50, 60)),
                    backgroundColor: MaterialStatePropertyAll(_backGroundColor),
                  ),
                  onPressed: () {
                    // setState(() {
                    //   _backGroundColor = Colors.grey.shade300;
                    // });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          subLevel['img'],
                          height: 17,
                          width: 17,
                        ),
                        SizedBox(width: 25),
                        Text(
                          subLevel['category'],
                          style: lightTheme.textTheme.labelMedium!.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 33, top: 7),
                color: Colors.black,
                width: 1.0,
                height: 40,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
   // return ListTile(
          //   onTap: () {},
          //   hoverColor: Colors.grey.shade200,
          //   selectedColor: Colors.grey.shade300,
          //   title: Container(
          //     margin: EdgeInsets.only(left: 5),
          //     child: Row(
          //       children: [
          //         Image.asset(
          //           subLevel['img'],
          //           height: 17,
          //           width: 17,
          //         ),
          //         SizedBox(width: 15),
          //         Text(
          //           subLevel['category'],
          //           style: lightTheme.textTheme.labelMedium!.copyWith(
          //             fontSize: 15,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          //   leading: Container(
          //     margin: EdgeInsets.only(left: 15),
          //     height: 40,
          //     width: 1,
          //     color: Colors.grey,
          //   ),
          // );