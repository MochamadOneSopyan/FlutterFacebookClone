import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_facebook_clone/tabs_screen/friends_tab_screen.dart';
import 'package:flutter_facebook_clone/tabs_screen/home_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.grey)),
              Tab(icon: Icon(Icons.people, color: Colors.grey)),
              Tab(icon: Icon(Icons.video_camera_back, color: Colors.grey)),
              Tab(
                  icon: Icon(Icons.supervised_user_circle_rounded,
                      color: Colors.grey)),
              Tab(icon: Icon(Icons.notification_add, color: Colors.grey)),
              Tab(icon: Icon(Icons.verified_user_outlined, color: Colors.grey)),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'images/facebook.jpg',
            width: 200,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.messenger_outline,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            HomeTabScreen(),
            FriendsTabScreen(),
            // Container(
            //   color: Colors.black,
            // ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
