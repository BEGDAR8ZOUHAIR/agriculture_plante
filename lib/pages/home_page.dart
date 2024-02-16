import 'package:agriculture_plante/pages/cart_page.dart';
import 'package:agriculture_plante/pages/explore_page.dart';
import 'package:agriculture_plante/pages/profile_page.dart';
import 'package:agriculture_plante/pages/services_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const ExplorePage(),
    const ServicesPage(),
    const CartPage(),
    const ProfilePage(),
  ];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
          centerTitle: false,
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Hi Zack ! ✋",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Enjoy your day",
              // style: Theme.of(context).textTheme.bodySmall ,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
              ),
            ),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton.filledTonal(
                  onPressed: () {},
                  icon: badges.Badge(
                      badgeContent: const Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      position: badges.BadgePosition.topEnd(top: -15, end: -12),
                      child: const Icon(IconlyBroken.notification))),
            ),
          ]),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.home),
            label: 'Home',
            activeIcon: Icon(IconlyBold.home),
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyBroken.call),
              label: 'Services',
              activeIcon: Icon(IconlyBold.call)),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.buy),
            label: 'Cart',
            activeIcon: Icon(IconlyBold.buy),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.profile),
            label: 'Profile',
            activeIcon: Icon(IconlyBold.profile),
          ),
        ],
      ),
    );
  }
}
