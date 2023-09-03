import 'dart:io';

import 'package:flutter/material.dart';
import 'camerapage.dart';

class ImageDisplayScreen extends StatelessWidget {
  ImageDisplayScreen({super.key, required this.image});
  final File? image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 169, 219, 195),
        appBar: AppBar(
          backgroundColor: const Color(0xFF70BC98),
          title: const Text(
            'VIEW PICTURES',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: getImageWidget(),
        ),
      ),
    );
  }

  Widget getImageWidget() {
    if (image == null) {
      return Text('No image selected');
    } else {
      return Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        child: Image.file(image!),
      );
    }
  }
}
