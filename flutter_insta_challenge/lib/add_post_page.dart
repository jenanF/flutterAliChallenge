import 'dart:io';

//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/navbar.dart';
import 'package:flutter_insta_challenge/posts.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_insta_challenge/home.dart';

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
  // final _picker = ImagePicker();
  // Future<void> _pickImage() async {
  //   _pickedFile = Image.memory(await _pickedFile.readAsBytes()); //getImage(source: ImageSource.gallery);
  //   if (_pickedFile != null) {
  //     setState(() {
  //       _image = File(_pickedFile!.path);
  //     });
  //   }
  // }

  /////////////////////////////////////////////////////////////////////////

  // late File _image;
  // final picker = ImagePicker();
  // var test = "";

  // Future getImage() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  //   setState(() {
  //     _image = File(pickedFile!.path);
  //     test = _image.toString();
  //   });
  // }

  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  void addPosts(img) {
    Posts post = Posts(
      username: name.text,
      img: img,
      caption: caption_.text,
      avatar:
          "https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg",
      like: false,
      liked: () {},
    );

    setState(() {
      posts_.add(post);
    });
  }

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
                  child: GestureDetector(
                    onTap: () {
                      // print("HEREEEEEEEEEE");
                      // getImage();
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        print("HEREEEEEEEEEE");
                        getImage();
                      },
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
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Transform.scale(
                  scale: 1.2,
                  child: ElevatedButton(
                    onPressed: () {
                      addPosts(_image!.path);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NavBarScreen();
                      }));
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              ),
              _image == null
                  ? const Text('No image selected.')
                  : Image.network(_image!.path),
            ],
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
}
