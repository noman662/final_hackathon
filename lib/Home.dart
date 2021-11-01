// ignore_for_file: deprecated_member_use

import 'package:card/screens/Pivacy.dart';
import 'package:card/screens/account/Account.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // key for drawer
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  //
  // BottomNavigationBar Index
  int _selectedIndex = 0;
  //
  List<Widget> _WidgetOptions = <Widget>[
    _firstIndex(),
    _messages(),
    Center(child: Text("Cart is Empty")),
  ];
  //
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => _key.currentState!.openDrawer(),
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  showSearch(context: context, delegate: DataSearch());
                });
              },
              color: Colors.black,
            )
          ]),
      // assign key for drawer
      key: _key,
      // now make drawer
      drawer: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        width: 300,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              // drawer header
              DrawerHeader(
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person, size: 80),
                            Text("Switch Your Acoount \n\ Create A account ")
                          ],
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Account()));
                          });
                        }),
                  ),
                ),
              ),
              //
              ListTile(
                leading: Icon(Icons.favorite_rounded),
                title: Text("Favourite"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.category_rounded),
                title: Text("Categories"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Account Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip_outlined),
                title: Text("Privacy & Policies"),
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => privacy()));
                  });
                },
              ),
            ],
          ),
        ),
      ),
      // Bottom NAv bar
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey[700],
        selectedFontSize: 16,
        unselectedFontSize: 12,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Messeges'),
            icon: Icon(Icons.messenger),
          ),
          BottomNavigationBarItem(
            title: Text('Cart'),
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      //
      body: Container(
        child: _WidgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  // Home class
  // its first index of bottom nav bar
  static _firstIndex() {
    return Container(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                          "assets/Home/sales/1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                          "assets/Home/sales/2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                          "assets/Home/sales/3.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                          "assets/Home/sales/4.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                          "assets/Home/sales/5.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Image.asset(
                          "assets/Home/sales/6.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "#Vouchers",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Deals",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Play Games and Win ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Missions",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Seller",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Best Collection ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Clothes of the year",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
                InkWell(
                  child: Card(
                    child: Container(
                        height: 160,
                        width: 150,
                        child: Column(
                          children: [
                            Image.network(
                                "https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/1/6/167y5pa_2_1_1.png"),
                            Text("40000.rs"),
                            Text("Click to buy",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
              ]),
            ],
          )
        ],
      ),
    ));
  }

// messege class
// it's 2nd index
  static _messages() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.all(0.5),
                child: InkWell(
                    child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://icons.iconarchive.com/icons/dtafalonso/android-lollipop/512/Messenger-icon.png',
                  ),
                  backgroundColor: Colors.white,
                )),
              ),
              Padding(
                padding: EdgeInsets.all(0.5),
                child: InkWell(
                    child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeYleLjRX0xgZECSJJqQ-Klh7XtY1ExgB9Lw&usqp=CAU'),
                )),
              ),
              Padding(
                padding: EdgeInsets.all(0.5),
                child: InkWell(
                    child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'data:image/png;base64,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',
                      scale: 0.5),
                )),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text("Messages"),
            Text("Orders"),
            Text("Cancellation"),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Notification",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.vertical, child: Column(children: []))
      ],
    );
  }
}

// Search class
class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Back Pouch",
    "Laptop Cover",
    "Accessories",
    "Mobile",
    "Bike",
    "Home ",
    "Men Clothes",
    "Women Clothes",
    "Women Fasion",
    "Men Faasion",
    "Watches",
    "Shoes",
    "Toys",
    "Hubby",
    "DIY",
    "Electronics",
    "Food",
    "Kitchen",
    "Furniture",
    "Laptop",
    "Mobile",
    "Car Rim",
    "Tablets",
    "Printer",
  ];

  //
  final recentCities = [
    "Laptop",
    "Mobile",
    "Car Rim",
    "Tablets",
    "Printer",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, 'null');
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.shopping_bag),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: TextStyle(color: Colors.black),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
