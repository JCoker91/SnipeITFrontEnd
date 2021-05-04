import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(34, 45, 50, 1),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "KFCS Inventory",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    "Welcome to Hoard!",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            Container(
              width: 375,
              height: 150,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Text("Search Asset"),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(34, 45, 50, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Bar Code Number",
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, .3),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Theme.of(context).primaryColor,
                            child: IconButton(
                              iconSize: 32,
                              color: Color.fromRGBO(34, 34, 34, 1),
                              icon: Icon(
                                Icons.search,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(57, 204, 204, 1),
                        ),
                        child: IconButton(
                            iconSize: 40,
                            icon: Icon(Icons.ac_unit),
                            onPressed: () {}),
                      ),
                      Text(
                        "Assets",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(255, 140, 0, 1),
                        ),
                        child: IconButton(
                            iconSize: 40,
                            icon: Icon(Icons.ac_unit),
                            onPressed: () {}),
                      ),
                      Text(
                        "Accessories",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(216, 27, 96, 1),
                        ),
                        child: IconButton(
                            iconSize: 40,
                            icon: Icon(Icons.ac_unit),
                            onPressed: () {}),
                      ),
                      Text(
                        "Licenses",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(96, 92, 168, 1),
                        ),
                        child: IconButton(
                            iconSize: 40,
                            icon: Icon(Icons.ac_unit),
                            onPressed: () {}),
                      ),
                      Text(
                        "Consumables",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
