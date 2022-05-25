import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(play());
}

class play extends StatefulWidget {
  const play({Key? key}) : super(key: key);

  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {
  bool switchstate = false;
  int index = 0;
  int i = 0;

  Color color1b = Colors.blue;
  Color color2g = Colors.grey;

  Color green = Colors.green;
  Color grey = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return (switchstate == false)
        ? CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoSwitch(
            value: switchstate,
            onChanged: (value) {
              switchstate = value;
              setState(() {});
            },
          ),
        ),
        child: IndexedStack(
          index: index,
          children: <Widget>[
            //1.Today_page
            Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 95, right: 240, left: 20),
                            child: Text(
                              "THURSDAY MARCH 7",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 14,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 205),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8&w=1000&q=80'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(right: 20, left: 20),
                              child: Container(
                                height: 400,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image:
                                      AssetImage('assets/img/1.jpg'),
                                      opacity: 1.7,
                                      fit: BoxFit.cover),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 220),
                                        child: Text(
                                          "SERIOUSLY?",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5, right: 30),
                                        child: Text(
                                          "Bizarre Sports Games",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Padding(
                              padding:
                              EdgeInsets.only(right: 20, left: 20),
                              child: Container(
                                height: 450,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.nintendolife.com/7fd7e158b00a8/nintendo-switch-sports-pro-league.large.jpg'),
                                      opacity: 1.7,
                                      fit: BoxFit.cover),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Padding(
                              padding:
                              EdgeInsets.only(right: 20, left: 20),
                              child: Container(
                                height: 450,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.vox-cdn.com/thumbor/6I-IQtvx29OSQp0nZscVi7Ev9rA=/0x0:1920x1080/1200x675/filters:focal(807x387:1113x693)/cdn.vox-cdn.com/uploads/chorus_image/image/68510166/jbareham_201201_ecl1050_goty_2020_top_50_02.0.jpg'),
                                      opacity: 1.7,
                                      fit: BoxFit.cover),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //Bottom NavigationBar
                Padding(
                  padding: EdgeInsets.only(top: 755.4),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  size: 30,
                                  color: color1b,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Today",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: color1b,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  size: 30,
                                  color: color2g,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Games",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons
                                        .square_stack_3d_up_fill,
                                    size: 30,
                                    color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Apps",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons.square_arrow_down_fill,
                                    size: 30,
                                    color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Updates",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(CupertinoIcons.search,
                                    size: 30, color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
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
            //2.Games
            Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 95, right: 240, left: 20),
                            child: Text(
                              "THURSDAY",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Games",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 190),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8&w=1000&q=80'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                              EdgeInsets.only(right: 20, left: 20),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 285, top: 8),
                              child: Text(
                                "NEW GAMES",
                                style: TextStyle(
                                    color: color1b,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 100, top: 5),
                              child: Text(
                                "Warhammer Aos: Realm War",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Padding(
                              padding:
                              EdgeInsets.only(left: 20, right: 120),
                              child: Text(
                                "Compete in thrilling battles",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Container(
                                height: 230,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.ctfassets.net/5lpapfxq15sk/6en2742oyxTj7C3FyAuZWR/e9c4288ed470e64d36d6e036653f2c4d/LA-1920x580_v3_MOBILE__1_.jpg'),
                                      opacity: 1.7,
                                      fit: BoxFit.cover),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  right: 20, left: 20, top: 20),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Discover AR Gaming",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 80),
                                  Text(
                                    "See All",
                                    style: TextStyle(
                                        fontSize: 16, color: color1b),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://play-lh.googleusercontent.com/ZykpV0_oJm4Hyr-miUVIHzP__37czU1T8sA2b4DOFZNB8ckyDdmjwi5l_0vgmFngpWw"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    children: [
                                      Text(
                                        "Kings of Pool",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        "Ultimate AR Pool",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            color: Colors.grey.shade200),
                                        child: Text(
                                          "GET",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: color1b,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 3),
                            Divider(
                                thickness: 1, endIndent: 20, indent: 120),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://i.pinimg.com/564x/eb/c9/54/ebc9549955a512b4263f17f8d4d357fd--cartoon-network-characters-regular-show.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    children: [
                                      const Padding(
                                        padding:
                                        EdgeInsets.only(right: 55),
                                        child: Text(
                                          "AR Robot",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      const Text(
                                        "Build! Battle! Upgrade!",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            color: Colors.grey.shade200),
                                        child: Text(
                                          "GET",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: color1b,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //Bottom NavigationBar
                Padding(
                  padding: EdgeInsets.only(top: 755.4),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  size: 30,
                                  color: color2g,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Today",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: color2g,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  size: 30,
                                  color: color1b,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Games",
                                  style: TextStyle(
                                      fontSize: 14, color: color1b),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons
                                        .square_stack_3d_up_fill,
                                    size: 30,
                                    color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Apps",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons.square_arrow_down_fill,
                                    size: 30,
                                    color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Updates",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(CupertinoIcons.search,
                                    size: 30, color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
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
            //3. Apps
            Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 95, right: 240, left: 20),
                            child: Text(
                              "THURSDAY",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Apps",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 220),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8&w=1000&q=80'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                              EdgeInsets.only(right: 20, left: 20),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 270, top: 8),
                              child: Text(
                                "NOW WITH SIRI",
                                style: TextStyle(
                                    color: color1b,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 180, top: 5),
                              child: Text(
                                "Triplt: Travel Planner",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Padding(
                              padding:
                              EdgeInsets.only(left: 20, right: 95),
                              child: Text(
                                "Quickly get flight info with Siri",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image:
                                      AssetImage('assets/img/2.jpg'),
                                      fit: BoxFit.cover),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  right: 20, left: 20, top: 20),
                              child: Divider(
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "12 Great Apps for iOS 12",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 38),
                                  Text(
                                    "See All",
                                    style: TextStyle(
                                        fontSize: 16, color: color1b),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUzBLF890kx5-CMA0M0N128MpGzZMS73ZkUw&usqp=CAU"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 60),
                                        child: Text(
                                          "Sky Guide",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      Text(
                                        "View Stars Night or Day",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 85),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        color: Colors.grey.shade200),
                                    child: Text(
                                      "OPEN",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: color1b,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 3),
                            Divider(
                                thickness: 1, endIndent: 20, indent: 80),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/img/3.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 2),
                                        child: Text(
                                          "Noted: Notepade Audi...",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 42),
                                        child: Text(
                                          "View Stars Night or Day",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 40),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        color: Colors.grey.shade200),
                                    child: Text(
                                      "GET",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: color1b,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 3),
                            Divider(
                                thickness: 1, endIndent: 20, indent: 80),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShdN-Zh5kvPO854jpCdodX3vdg1PClBqwJOA&usqp=CAU"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 60),
                                        child: Text(
                                          "Overcast",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      Text(
                                        "View Stars Night or Day",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 85),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        color: Colors.grey.shade200),
                                    child: Text(
                                      "GET",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: color1b,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //Bottom NavigationBar
                Padding(
                  padding: EdgeInsets.only(top: 755.4),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  size: 30,
                                  color: color2g,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Today",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: color2g,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  size: 30,
                                  color: color2g,
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Games",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons
                                        .square_stack_3d_up_fill,
                                    size: 30,
                                    color: color1b),
                                SizedBox(height: 3),
                                Text(
                                  "Apps",
                                  style: TextStyle(
                                      fontSize: 14, color: color1b),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons.square_arrow_down_fill,
                                    size: 30,
                                    color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Updates",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(CupertinoIcons.search,
                                    size: 30, color: color2g),
                                SizedBox(height: 3),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      fontSize: 14, color: color2g),
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
          ],
        ),
      ),
    )
        : MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Switch(
            value: switchstate,
            activeColor: Colors.green,
            activeTrackColor: Colors.green.shade200,
            onChanged: (value) {
              switchstate = value;
              setState(() {});
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        leading: Icon(Icons.menu),
                        title: Text(
                          "Search for apps & games",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Icon(Icons.mic_rounded),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              i=0;
                            });
                          },
                          child:  Text(
                            "For you",
                            style: TextStyle(
                                fontSize: 16,
                                color: (i==0)?green:grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              i=1;
                            });
                          },
                          child: Text(
                            "Top charts",
                            style: TextStyle(
                                fontSize: 16,
                                color: (i==1)?green:grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Children",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 3,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                      ),
                      (i==0)?Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Container(
                          height: 3,
                          width: 70,
                          color: Colors.green,
                        ),
                      ):
                      Padding(
                        padding: EdgeInsets.only(left: 110),
                        child: Container(
                          height: 3,
                          width: 90,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Stack(
                children: [
                  IndexedStack(
                    index: i,
                    children: <Widget>[
                      //page:1
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 25, right: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Recommended for you", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25, top:20),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/s5GouLUXk_86K6_eZ9th1Fq_o2_Qx-PE9QVD9-6tfpJvxS31exdCUS3qO5kFXT-fog"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Nest\n4.2 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://miro.medium.com/max/638/1*yRdQ4-XFnqnAYZMwRUb58Q.jpeg"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("nike training\n4.6 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/gcAQcWADEZsAU8DPXisFrTF2Y9eFNF-l7IZmYt0oOLK4vXewovKreaz6jEBG_2wWNw"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Testy App\n4.7 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJhyOBkI9m73a63Ayf9uQFQdDrLA5aTSJahQ&usqp=CAU"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Duolingo App\n4.5 *"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("New & updated apps", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25, top:20),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/LzUvgH7tSaV1mzA9lzlA8iKnHCrVZnjTYtLZCgIYzN3FhAM84gJ3XLhHhB_6k3Lu9Q"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Weather Under..\n4.6 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://i.pinimg.com/originals/7b/98/5c/7b985cad660ed20eece3fd4c509f9fb7.png"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Airbnb\n4.5 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thetrendingtimes.com/wp-content/uploads/2020/08/unnamed-3.png"),
                                                  fit: BoxFit.cover),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  blurRadius: 2,
                                                  spreadRadius: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Google Home\n4.1 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/_lq2HX0YJNDrr0EeUebLAB2JsGbRGyoFY-XOnuUFTPfeEqaHNIyMOGqLx-oq4mUWPpn0"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("domino's pizza\n4.0 *"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("New & updated apps", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25, top:20),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://i.pinimg.com/originals/65/a4/24/65a4240ae9174aa1e5f3af541faba57b.jpg"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Weather Under..\n4.6 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/1JMJ518jogwPeaD0pYn2mBu1cRLD0xRi45wNbtTIRvam1_xx-y3KJOjRAx-W9P4Lf0U"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Airbnb\n4.5 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/nufRXPpDI9XP8mPdAvOoJULuBIH_OK4YbZZVu8i_-eDPulZpgb-Xp-EmI8Z53AlXHpqX"),
                                                  fit: BoxFit.cover),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  blurRadius: 2,
                                                  spreadRadius: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Google Home\n4.1 *"),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A"),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("domino's pizza\n4.0 *"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //page:2
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.pink,
                      ),

                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 522),
                    child: Container(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                      height: 65,
                      width: double.infinity,
                      color: Colors.white,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                i=0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(Icons.videogame_asset_outlined, color: (i==0)?green:grey),
                                Text("Games", style: TextStyle(color: (i==0)?green:grey),),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                i=1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(Icons.apps, color: (i==1)?green:grey),
                                Text("Apps", style: TextStyle(color: (i==1)?green:grey),),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(Icons.local_movies_outlined, color: grey,),
                              Text("Movies & TV", style: TextStyle(color: grey),),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.book_outlined, color: grey,),
                              Text("Book", style: TextStyle(color: grey),),
                            ],
                          ),
                        ],
                      ),
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
}