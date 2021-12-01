import 'package:flutter/material.dart';

import 'homePage.dart';

class NewCheckList extends StatelessWidget {
  const NewCheckList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: newCheckList(),
    );
  }
}

class newCheckList extends StatefulWidget {
  const newCheckList({Key key}) : super(key: key);

  @override
  _newCheckListState createState() => _newCheckListState();
}

class _newCheckListState extends State<newCheckList> {
  bool checked = false;
  List<int> selectedList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfff96060),
        elevation: 0,
        title: Center(
          child: Text(
            "Check List",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 30,
              color: Color(0xfff96060),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ispd asd asd',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CheckboxListTile(
                                title: Text("List Item 1"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: selectedList.contains(1),
                                onChanged: (bool value) {
                                  setState(() {
                                    if (value) {
                                      selectedList.add(1);
                                    } else {
                                      selectedList.remove(1);
                                    }
                                  });
                                }),
                            CheckboxListTile(
                                title: Text("List Item 2"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: selectedList.contains(2),
                                onChanged: (bool value) {
                                  setState(() {
                                    if (value) {
                                      selectedList.add(2);
                                    } else {
                                      selectedList.remove(2);
                                    }
                                  });
                                }),
                            CheckboxListTile(
                                title: Text("List Item 3"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: selectedList.contains(3),
                                onChanged: (bool value) {
                                  setState(() {
                                    if (value) {
                                      selectedList.add(3);
                                    } else {
                                      selectedList.remove(3);
                                    }
                                  });
                                }),
                            Text(
                              "color",
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xfff4ca8f),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.red,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xff3d3a62),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Color(0xfff96060),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Check List",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
