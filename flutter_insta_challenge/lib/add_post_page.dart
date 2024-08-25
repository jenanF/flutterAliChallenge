import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class AddPostPage extends StatefulWidget {
  AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  TextEditingController name = TextEditingController();

  TextEditingController caption_ = TextEditingController();

  // File? _image;
  // XFile? _pickedFile;
  // Future<void> _pickImage() async{
  //   _pickedFile = await _picker.getImage(source: ImageSource.gallery);
  //   if (_pickedFile != null){
  //     setState(() {
  //       _image = File(_pickedFile!.path);

  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Post",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15).copyWith(bottom: 0),
                child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      hintStyle: TextStyle(fontSize: 11),
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20).copyWith(bottom: 0),
                child: TextField(
                    controller: caption_,
                    decoration: InputDecoration(
                      hintText: "Enter your Caption",
                      hintStyle: TextStyle(fontSize: 11),
                      labelText: "Caption",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20).copyWith(bottom: 0),
                child: Transform.scale(
                  scale: 1.3,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Upload image",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Transform.scale(
                  scale: 1.2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
