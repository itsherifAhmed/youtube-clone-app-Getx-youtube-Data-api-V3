import 'package:get/get.dart';
import 'package:youtube_clone_app/src/components/youtube_bottom_sheet.dart';

enum RouteName { Home, GetXVd, Add, DartVid, CleanCode }

class AppController extends GetxService {
  //If you need to use your controller in many other places, and outside of GetBuilder, just create a get in your controller and have it easily. (or use Get.find<Controller>() ) نصيحه يعني
  static AppController get to => Get.find();


  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.Add) {
      _showBottomSheet();
    } else {
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(YoutubeBottomSheet());
  }
}

