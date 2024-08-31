
import 'package:agri_buddy/pages/explore_page.dart';
import 'package:agri_buddy/pages/farmer_explore_page.dart';
import 'package:agri_buddy/pages/farmer_order_page.dart';
import 'package:agri_buddy/pages/orders_page.dart';
import 'package:agri_buddy/pages/profile_page.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:agri_buddy/pages/farmer_chat_box.dart';
import '../widgets/my_drawer.dart';

class FarmerHomePage extends StatefulWidget {
  final int initialPageIndex;

  const FarmerHomePage({super.key, this.initialPageIndex = 0});

  @override
  State<FarmerHomePage> createState() => _FarmerHomePageState();
}

class _FarmerHomePageState extends State<FarmerHomePage> {
  @override

    final pages = [
      const FarmerExplorePage(),
      const FarmerChatBox(),
      const FarmerOrderPage(),
      const ProfilePage(),
    ];

    late int currentPageIndex;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    @override
    void initState() {
      super.initState();
      currentPageIndex = widget.initialPageIndex;
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(),
        appBar: AppBar(
          centerTitle: false,
          leading: IconButton.filledTonal(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Aayush 👋🏾",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text("Enjoy our services",
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton.filledTonal(
                onPressed: () {},
                icon: badges.Badge(
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  position: badges.BadgePosition.topEnd(top: -15, end: -12),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.deepPurple,
                  ),
                  child: const Icon(IconlyBroken.notification),
                ),
              ),
            ),
          ],
        ),
        body: pages[currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: "Home",
              activeIcon: Icon(IconlyBold.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.chat),
              label: "ChatBox",
              activeIcon: Icon(IconlyBold.chat),
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.buy),
              label: "Order Status",
              activeIcon: Icon(IconlyBold.buy),
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
              label: "Profile",
              activeIcon: Icon(IconlyBold.profile),
            ),
          ],
        ),
      );
    }
  }


// class HomePage extends StatefulWidget {
//   final int initialPageIndex;
//
//   const HomePage({super.key, this.initialPageIndex = 0});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
// }