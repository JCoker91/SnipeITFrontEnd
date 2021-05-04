import 'package:flutter/material.dart';

import 'create_asset_screen.dart';
import 'help_desk_screen.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class TabScreenController extends StatefulWidget {
  @override
  _TabScreenControllerState createState() => _TabScreenControllerState();
}

class _TabScreenControllerState extends State<TabScreenController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).backgroundColor,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                foregroundColor: Theme.of(context).primaryColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: TabBarView(
                children: [
                  HomeScreen(),
                  CreateAssetScreen(),
                  HelpDeskScreen(),
                  SettingsScreen(),
                ],
              ),
              backgroundColor: Colors.transparent,
              bottomNavigationBar: Container(
                color: Theme.of(context).accentColor,
                height: 80,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Color.fromRGBO(124, 124, 124, 1),
                  tabs: [
                    Tab(icon: Icon(Icons.ac_unit)),
                    Tab(icon: Icon(Icons.ac_unit)),
                    Tab(icon: Icon(Icons.ac_unit)),
                    Tab(icon: Icon(Icons.ac_unit)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
