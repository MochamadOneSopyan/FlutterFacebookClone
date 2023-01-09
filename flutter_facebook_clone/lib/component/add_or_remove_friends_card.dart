import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddOrRemoveFriendsCard extends StatelessWidget {
  const AddOrRemoveFriendsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 11,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            const CircleAvatar(
              radius: 44,
              backgroundImage: AssetImage('images/profil.jpg'),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Yoms Skuy'),
                TextButton.icon(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('images/profil.jpg'),
                  ),
                  label: const Text('1 mutual friends'),
                ),
                Row(
                  children: [
                    MaterialButton(
                      padding: const EdgeInsets.all(0),
                      minWidth: 100,
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {},
                      height: 34,
                      child: const Text('Add Friend'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 100,
                      color: Colors.grey.shade300,
                      onPressed: () {},
                      height: 34,
                      child: const Text('Remove'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
