import 'package:flutter/material.dart';
import 'package:travel_singlepage_day1/containerTabbar.dart';
import 'package:travel_singlepage_day1/itemCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Todo Implementation App bar
            const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 48,
                    bottom: 0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Travel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Spacer(),
                          Icon(Icons.search),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/17838702/pexels-photo-17838702/free-photo-of-black-and-white-portrait-of-a-young-man.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1https://images.pexels.com/photos/17838702/pexels-photo-17838702/free-photo-of-black-and-white-portrait-of-a-young-man.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1https://images.pexels.com/photos/17838702/pexels-photo-17838702/free-photo-of-black-and-white-portrait-of-a-young-man.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            backgroundColor: Colors.amber,
                          ),
                        ],
                      ),
                      Text(
                        "Finding Your Travel experince ",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                )),
            //Todo Implementation Popular
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Row(
                          children: [
                            Text(
                              " Popular",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              " See more",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 270,
                        child: CardListItem(),
                      ),
                    ],
                  ),
                )),
            //Todo Implementation Tab bar
            Expanded(
                flex: 1,
                child: TabBar(
                    //tabAlignment: TabAlignment.start,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.zero,
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    //labelPadding: EdgeInsets.only(right: 20, left: 20),
                    tabs: [
                      Tab(
                        text: ("Recommended"),
                      ),
                      Tab(
                        text: ("New"),
                      ),
                      Tab(
                        text: ("Rating"),
                      ),
                      Tab(
                        text: ("Favorite"),
                      ),
                    ],
                    controller: _tabController)),
            //Todo Implementation TabBar view
            Expanded(
                flex: 3,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ContainerTabBar(),
                    ContainerTabBar(),
                    ContainerTabBar(),
                    ContainerTabBar(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
