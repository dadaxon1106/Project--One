import 'package:flutter/material.dart';
import 'package:project_one/pages/gallerypage/gallery_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final name = "Dadaxon";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.home_filled,
              size: 60,
            ),
            Text("$name You are on Home page"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                debugPrint("TAP");
                return GalleryPage();
              },
            ),
          );
        },
        child: Icon(Icons.image),
      ),
    );
  }
}
