import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Text(
                      "User",
                      style:
                          TextStyle(color: Color(0xff002E64), fontSize: 25.0),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text("Dashboard",
                    style: TextStyle(color: Colors.orange, fontSize: 25.0)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.0, color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(15.0)),
                        border: InputBorder.none,
                        fillColor: Colors.grey[300],
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search"),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {},
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                          title: Text(
                        "Main Menu",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                      SizedBox(height: 20.0),
                      ListTile(
                          leading: Icon(Icons.home_filled),
                          title: Text(
                            "Home",
                            style: TextStyle(
                              color: Color(0xff002E64),
                            ),
                          )),
                      ListTile(
                          leading: Icon(Icons.message),
                          title: Text(
                            "Messages",
                            style: TextStyle(
                              color: Color(0xff002E64),
                            ),
                          )),
                      ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                            "Profile",
                            style: TextStyle(
                              color: Color(0xff002E64),
                            ),
                          )),
                      ListTile(
                          leading: Icon(Icons.settings),
                          title: Text(
                            "Setting",
                            style: TextStyle(
                              color: Color(0xff002E64),
                            ),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.black26,
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0.0,
                                              color: Colors.grey[300]),
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      border: InputBorder.none,
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                      prefixIcon: Icon(Icons.search),
                                      hintText: "Search"),
                                ),
                              ),
                              // Container(
                              //   height: MediaQuery.of(context).size.height,
                              //   color: Colors.red,
                              //   child: ListView.builder(
                              //     itemBuilder: (context, index) {
                              //       return ListTile(
                              //         title: Text(users[index].name),
                              //       );
                              //     },
                              //     itemCount: users.length,
                              //   ),
                              // )
                            ],
                          ),
                          VerticalDivider()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
