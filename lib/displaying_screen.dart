import 'dart:io';

import 'package:flutter/material.dart';
import 'camerapage.dart';

class ImageDisplayScreen extends StatelessWidget {
  ImageDisplayScreen({super.key, required this.image});
  final File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View pics'),
        centerTitle: true,
      ),
      body: Center(
        child: getImageWidget(),
      ),
    );
  }

  Widget getImageWidget() {
    if (image == null) {
      return Text('No image selected');
    } else {
      return Image.file(image!);
    }
  }
}
