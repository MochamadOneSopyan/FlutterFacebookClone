import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CreateRowForLikeCommentShareButton extends StatefulWidget {
  const CreateRowForLikeCommentShareButton({Key? key}) : super(key: key);

  @override
  State<CreateRowForLikeCommentShareButton> createState() =>
      _CreateRowForLikeCommentShareButtonState();
}

class _CreateRowForLikeCommentShareButtonState
    extends State<CreateRowForLikeCommentShareButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.thumb_up_alt_outlined,
            color: Colors.grey,
          ),
          label: const Text(
            'Like',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.comment_bank_outlined, color: Colors.grey),
          label: const Text(
            'Comment',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.send, color: Colors.grey),
          label: const Text(
            'Send',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
