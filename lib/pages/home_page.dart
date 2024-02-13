import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          centerTitle: false,
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Hi Zack ! ✋",
              style: Theme.of(context).textTheme.titleMedium,
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
              padding: const EdgeInsets.only(right: 8.0),
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
    );
  }
}
