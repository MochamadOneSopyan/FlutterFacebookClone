import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../component/create_row_for_like_comment_share_button.dart';
import '../component/user_post_card.dart';
import '../component/stories_widget.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 20.0, bottom: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: Image.asset('images/profil.jpg').image,
                  radius: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    maxLines: 1,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Write something here...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 10,
          ),
          TabBar(
            labelColor: Colors.indigo,
            indicatorColor: Colors.indigo,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            tabs: const [
              Tab(text: 'Stories'),
              Tab(text: 'Reels'),
            ],
          ),
          SizedBox(
            height: 200,
            child: TabBarView(
              controller: tabController,
              children: [
                const StoriesWidget(),
                reelsWidget(),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 10,
          ),

          const UsersPostCard(),

          const Divider(
            color: Colors.grey,
            thickness: 10,
          ),

          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   // child: Text('This image is very amazing'),
          //   child: Text('This image is very amazing'),
          // ),
          // //TODO:// this image willl come from network

          // LoadingImageFromNetwork(),

          // TextButton.icon(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.recommend,
          //     size: 16,
          //   ),
          //   label: const Text(
          //     'Yans Piyan and 1.2M others  14k comments + 6.0k shares',
          //     overflow: TextOverflow.ellipsis,
          //     style: TextStyle(fontSize: 12),
          //   ),
          // ),

          // const Divider(),

          // const CreateRowForLikeCommentShareButton(),

          // const Divider(
          //   color: Colors.grey,
          //   thickness: 10,
          // ),
        ],
      ),
    );
  }

  // createUserNameRow() {
  //   return
  // }

  // Widget loadingImageFromNetwork() {
  //   return Image.network(
  //     'https://images.unsplash.com/photo-1571738270609-4e3347847718?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGd1bnVuZ3xlbnwwfHwwfHw%3D&w=1000&q=80',
  //     // height: 300,
  //     // fit: BoxFit.fill,
  //   );
  // }

  // Widget createRowForLikeCommentShareButton() {
  // Widget CreateRowForLikeCommentShareButton() {}

  // Widget storiesWidget() {
  //   return ListView.builder(
  //     itemCount: 10,
  //     shrinkWrap: true,
  //     scrollDirection: Axis.horizontal,
  //     padding: const EdgeInsets.all(5),
  //     itemBuilder: (context, index) {
  //       return Padding(
  //         padding: const EdgeInsets.all(4.0),
  //         child: Stack(
  //           children: [
  //             ClipRRect(
  //               borderRadius: BorderRadius.circular(15),
  //               child: const Image(
  //                 image: AssetImage('images/milk.jpg'),
  //                 height: 200,
  //                 width: 100,
  //                 fit: BoxFit.fill,
  //               ),
  //             ),
  //             Positioned(
  //               top: 8,
  //               left: 8,
  //               child: CircleAvatar(
  //                 radius: 22,
  //                 backgroundColor: Colors.blue,
  //                 child: CircleAvatar(
  //                   backgroundImage: Image.asset('images/profil.jpg').image,
  //                   radius: 20,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget reelsWidget() {
    return Container(
      color: Colors.orange,
    );
  }
}
