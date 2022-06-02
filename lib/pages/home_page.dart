import 'package:flutter/material.dart';
import 'package:flutter_tic_toc_clone/widgets/bottom_navigation.dart';

import '../widgets/home/video_player.dart';
import '../widgets/home/video_description.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (_, pos) => Stack(
          children: [
            const AppVideoPlayer(),
            onScreenControllers(),
          ],
        ),
        itemCount: 10,
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
