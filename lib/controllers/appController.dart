import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_and_firebase_app/models/device.dart';
import 'package:getx_and_firebase_app/screens/home/widgets/devices_draggable.dart';

class AppController extends GetxController {
  static AppController instance = Get.find();
  Rx<Widget> activeDraggableWidget = Rx<Widget>(DevicesDraggable());
  Rx<DeviceModel> activeDevie = DeviceModel.defaultDevice().obs;
  RxBool isLoginWidgetDisplayed = true.obs;

  changeDIsplayedAuthWidget() {
    isLoginWidgetDisplayed.value = !isLoginWidgetDisplayed.value;
  }

  changeActiveDeviceTo(DeviceModel device) {
    activeDevie.value = device;
  }

  changeActiveDraggableWidgetTo(Widget widget) {
    activeDraggableWidget.value = widget;
  }
}
