import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LoadNetworkImage extends StatelessWidget {
  const LoadNetworkImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.unsplash.com/photo-1571738270609-4e3347847718?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGd1bnVuZ3xlbnwwfHwwfHw%3D&w=1000&q=80',
      // height: 300,
      // fit: BoxFit.fill,
    );
  }
}
