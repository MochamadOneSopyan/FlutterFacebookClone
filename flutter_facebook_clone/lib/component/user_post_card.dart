import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/component/network_image.dart';

import 'create_row_for_like_comment_share_button.dart';

class UsersPostCard extends StatelessWidget {
  const UsersPostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 11, //off in video
      shrinkWrap: true, //off in video
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: Image.asset('images/profil.jpg').image,
                  ),
                  Flexible(
                    child: ListTile(
                      title: Row(
                        children: [
                          const Text(
                            'Laughing User',
                            style: TextStyle(fontSize: 14),
                          ),
                          const Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: 14,
                          ),
                        ],
                      ),
                      subtitle: const Text(
                        '20m',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          semanticLabel: 'close',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                // child: Text('This image is very amazing'),
                child: Text('This image is very amazing'),
              ),
              //TODO:// this image willl come from network

              // LoadingImageFromNetwork(),
              const LoadNetworkImage(),

              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.recommend,
                  size: 16,
                ),
                label: const Text(
                  'Yans Piyan and 1.2M others  14k comments + 6.0k shares',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
              ),

              const Divider(),

              const CreateRowForLikeCommentShareButton(),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.grey,
          thickness: 10,
        );
      },
    );
  }
}
