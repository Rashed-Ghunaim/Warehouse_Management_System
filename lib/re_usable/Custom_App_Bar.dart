import 'package:flutter/material.dart';

import '../assets/icons/My_Icons.dart';

PreferredSize customAppBar(
    {required BuildContext context, required scaffoldKey}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70.0),
    child: Container(
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.dehaze, color: Colors.black),
                  onPressed: () {
                    if (scaffoldKey.currentState!.isDrawerOpen == true) {
                      scaffoldKey.currentState!.openEndDrawer();
                    } else {
                      scaffoldKey.currentState!.openDrawer();
                    }
                  },
                ),
                Container(
                  height: 50,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        MyIcons.user,
                        color: Colors.black,
                        fill: 0.1,
                        size: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rashed Ghunaim',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          MyIcons.down_open,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
