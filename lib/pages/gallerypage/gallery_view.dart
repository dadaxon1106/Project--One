import 'package:flutter/material.dart';
import 'package:project_one/pages/profilepage/profile_view.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: const Text("Gallery Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You are on Gallery Page"),
            Icon(
              Icons.image,
              size: 60,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProfilePage();
          }));
          ;
        },
        child: const Icon(
          Icons.person,
        ),
      ),
    );
  }
}
