import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  void _playCow() async {
    // await controller.audioPlayer1.setAsset('assets/audio/audio_cow.mp3');
    await controller.audioPlayer1.setUrl(
      'https://www.applesaucekids.com/sound%20effects/moo.mp3',
    );
    controller.audioPlayer1.play();
  }

  void _playHorse() async {
    // await controller.audioPlayer2.setAsset('assets/audio/audio_horse.mp3');
    await controller.audioPlayer2.setUrl(
      'https://www.applesaucekids.com/sound%20effects/horse_whinney_2.mp3',
    );
    controller.audioPlayer2.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Just Audio Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _playCow,
              child: Text('Cow'),
            ),
            SizedBox(width: 24),
            ElevatedButton(
              onPressed: _playHorse,
              child: Text('Horse'),
            ),
          ],
        ),
      ),
    );
  }
}
