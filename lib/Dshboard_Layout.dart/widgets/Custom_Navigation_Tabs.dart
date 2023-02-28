import 'package:flutter/material.dart';

class CustomNavigationTabs extends StatefulWidget {
  final List<Widget> screens;
  CustomNavigationTabs({required this.screens});
  @override
  State<CustomNavigationTabs> createState() => _CustomNavigationTabsState();
}

class _CustomNavigationTabsState extends State<CustomNavigationTabs> {
  bool isPressed = true;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;

  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          width: 500,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isPressed = true;
                    isPressed1 = false;
                    isPressed2 = false;
                    isPressed3 = false;
                    _pageIndex = 0;
                  });
                },
                child: NavigationTab(
                  isPressed: isPressed,
                  title: 'Raw Materials',
                  tabIndex: 0,
                ),
              ),
              InkWell(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isPressed1 = true;
                    isPressed = false;
                    isPressed2 = false;
                    isPressed3 = false;
                    _pageIndex = 1;
                  });
                },
                child: NavigationTab(
                  isPressed: isPressed1,
                  title: 'Chemicals',
                  tabIndex: 1,
                ),
              ),
              InkWell(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isPressed2 = true;
                    isPressed1 = false;
                    isPressed = false;
                    isPressed3 = false;
                    _pageIndex = 2;
                  });
                },
                child: NavigationTab(
                  isPressed: isPressed2,
                  title: 'Products',
                  tabIndex: 2,
                ),
              ),
              InkWell(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isPressed3 = true;
                    isPressed2 = false;
                    isPressed1 = false;
                    isPressed = false;
                    _pageIndex = 3;
                  });
                },
                child: NavigationTab(
                  isPressed: isPressed3,
                  title: 'Assets',
                  tabIndex: 3,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        widget.screens[_pageIndex],
      ],
    );
  }
}

// ignore: must_be_immutable
class NavigationTab extends StatelessWidget {
  String title;
  bool isPressed;
  int tabIndex = 0;
  NavigationTab({
    required this.isPressed,
    required this.title,
    required this.tabIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: isPressed ? Colors.grey.shade400 : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
