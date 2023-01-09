import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(5),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage('images/milk.jpg'),
                  height: 200,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    backgroundImage: Image.asset('images/profil.jpg').image,
                    radius: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    // return Padding(
    //   padding: const EdgeInsets.all(4.0),
    //   child: Stack(
    //     children: [
    //       ClipRRect(
    //         borderRadius: BorderRadius.circular(15),
    //         child: const Image(
    //           image: AssetImage('images/milk.jpg'),
    //           height: 200,
    //           width: 100,
    //           fit: BoxFit.fill,
    //         ),
    //       ),
    //       Positioned(
    //         top: 8,
    //         left: 8,
    //         child: CircleAvatar(
    //           radius: 22,
    //           backgroundColor: Colors.blue,
    //           child: CircleAvatar(
    //             backgroundImage: Image.asset('images/profil.jpg').image,
    //             radius: 20,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // return Padding(
    //   padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    //   child: Row(
    //     // crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CircleAvatar(
    //         radius: 20,
    //         backgroundImage: Image.asset('images/profil.jpg').image,
    //       ),
    //       Flexible(
    //         child: ListTile(
    //           title: Row(
    //             children: [
    //               const Text(
    //                 'Laughing User',
    //                 style: TextStyle(fontSize: 14),
    //               ),
    //               const Icon(
    //                 Icons.verified,
    //                 color: Colors.blue,
    //                 size: 15,
    //               ),
    //             ],
    //           ),
    //           subtitle: const Text(
    //             '20m',
    //             style: TextStyle(fontSize: 12),
    //           ),
    //         ),
    //       ),
    //       Row(
    //         children: [
    //           IconButton(
    //             onPressed: () {},
    //             icon: const Icon(Icons.more_horiz),
    //           ),
    //           IconButton(
    //             onPressed: () {},
    //             icon: const Icon(Icons.close),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
