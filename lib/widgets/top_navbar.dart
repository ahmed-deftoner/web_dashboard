import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/styles.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !responsive.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset('assets/icons/logo.png'),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
              child: CustomText(
                  text: 'Dash',
                  color: lightGrey,
                  size: 20,
                  weight: FontWeight.bold)),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: dark.withOpacity(.7))),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: dark.withOpacity(.7))),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          SizedBox(
            width: 24,
          ),
          CustomText(
            text: "Ahmed Nadeem",
            color: lightGrey,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: active.withOpacity(.5),
                borderRadius: BorderRadius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
