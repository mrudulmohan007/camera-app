import 'package:flutter/material.dart';

class CameraHomePage extends StatelessWidget {
  const CameraHomePage({super.key});

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
        body: Column(
          children: [
            Container(
              height: 400,
              child: const Center(
                child: Text(
                  'CLICK PHOTOS,MAKE MEMORIES !',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Capture here !',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        size: 40,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
