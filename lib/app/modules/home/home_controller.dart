import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class HomeController extends GetxController {
  final AudioPlayer audioPlayer1 = AudioPlayer();
  final AudioPlayer audioPlayer2 = AudioPlayer();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    audioPlayer1.dispose();
    audioPlayer2.dispose();
  }
}
