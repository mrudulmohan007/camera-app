import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraHomePage extends StatefulWidget {
  const CameraHomePage({super.key});

  @override
  State<CameraHomePage> createState() => _CameraHomePageState();
}

class _CameraHomePageState extends State<CameraHomePage> {
  File? _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickerImage = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickerImage != null) {
        _image = File(pickerImage.path);
      } else {
        print('no image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF70BC98),
        appBar: AppBar(
          backgroundColor: Color(0xFF70BC98),
          title: const Text(
            'CAMERA APP',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child:
              _image == null ? Text('No image selected') : Image.file(_image!),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getImage();
          },
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
