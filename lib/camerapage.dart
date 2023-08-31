import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'displaying_screen.dart';

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

  void gotodisplayScreen() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => ImageDisplayScreen(
              image: _image,
            ))));
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
        body: Container(
          child: Center(
            child: Text('Click photos,make memories !'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getImage();
            gotodisplayScreen();
          },
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
