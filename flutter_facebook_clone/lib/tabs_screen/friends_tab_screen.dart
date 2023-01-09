import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_facebook_clone/component/add_or_remove_friends_card.dart';

class FriendsTabScreen extends StatefulWidget {
  const FriendsTabScreen({Key? key}) : super(key: key);

  @override
  State<FriendsTabScreen> createState() => _FriendsTabScreenState();
}

class _FriendsTabScreenState extends State<FriendsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Friends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                shape: CircleBorder(),
                color: Colors.grey.shade300,
                onPressed: () {},
                child: Icon(Icons.search),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey.shade300,
                onPressed: () {},
                child: Text('Suggestions'),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey.shade300,
                onPressed: () {},
                child: Text('Your Friends'),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          const Text(
            'People You May Know',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),

          const AddOrRemoveFriendsCard(),

          // Row(
          //   children: [
          //     CircleAvatar(
          //       radius: 50,
          //       backgroundImage: AssetImage('images/profil.jpg'),
          //     ),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text('Yoms Skuy'),
          //         TextButton.icon(
          //           onPressed: () {},
          //           icon: CircleAvatar(
          //             radius: 14,
          //             backgroundImage: AssetImage('images/profil.jpg'),
          //           ),
          //           label: Text('1 mutual friends'),
          //         ),
          //         Row(
          //           children: [
          //             MaterialButton(
          //               padding: EdgeInsets.all(0),
          //               minWidth: 100,
          //               color: Colors.blue,
          //               textColor: Colors.white,
          //               onPressed: () {},
          //               height: 34,
          //               child: const Text('Add Friend'),
          //             ),
          //             SizedBox(
          //               width: 10,
          //             ),
          //             MaterialButton(
          //               padding: EdgeInsets.all(0),
          //               minWidth: 100,
          //               color: Colors.grey.shade300,
          //               onPressed: () {},
          //               height: 34,
          //               child: const Text('Remove'),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
