import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatefulWidget {
  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage>
    with SingleTickerProviderStateMixin {
  var _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    )),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text('😀'),
                              ),
                            ],
                          ),
                        ),
                        // Expanded(
                        //   flex: 2,
                        //   child: Container(),
                        // ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Where Do You\n like to Go?',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Card(
                            elevation: 4,
                            child: Padding(
                              padding:  EdgeInsets.all(5),
                              child: Container(

                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.search),
                                  hintText: 'Search',
                                  fillColor: Colors.grey,
                                ),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 8,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: TabBar(
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                          fontSize: 18,
                        ),
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        indicatorColor: Colors.deepOrange,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 3,
                        tabs: [
                          Tab(
                            text: 'Popular',
                          ),
                          Tab(
                            text: 'Recommended',
                          ),
                          Tab(
                            text: 'Cost-efficiency',
                          ),
                        ],
                        controller: _tabController,
                      ),
                    ),
                    Expanded(
                      flex: 12,
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 8, bottom: 8),
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 260,
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/Kasserine.jpg'),
                                        fit: BoxFit.fill,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.2),
                                            BlendMode.darken)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Spacer(),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text(
                                          'Sbeitla Kasserine',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            ...List<Widget>.generate(
                                                5,
                                                (index) => Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 20,
                                                    )).toList(),
                                            Text(
                                              '(32)',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 7),
                                          child: Container(
                                            height: 38,
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 2,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        bottom: 0,
                                                        child: CircleAvatar(
                                                          child: Text('👩‍🦳'),
                                                          radius: 15,
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 16,
                                                        top: 0,
                                                        bottom: 0,
                                                        child: CircleAvatar(
                                                          child: Text('👩‍🦳'),
                                                          backgroundColor: Colors.blue,
                                                          radius: 30,
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 16,
                                                        top: 0,
                                                        bottom: 0,
                                                        child: CircleAvatar(
                                                          child: Text('👨‍🦱'),
                                                          backgroundColor: Colors.orange,
                                                          radius: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // Expanded(child: Placeholder(),),
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    ' 120 Dt',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                color: Colors.grey,
                                width: 200,
                              );
                            },
                          ),
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                color: Colors.red,
                                width: 200,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
