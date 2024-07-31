import 'package:flutter/material.dart';
import 'package:getx_and_firebase_app/constants/asset_path.dart';
import 'package:getx_and_firebase_app/constants/controllers.dart';
import 'package:getx_and_firebase_app/models/device.dart';
import 'package:getx_and_firebase_app/screens/home/widgets/single_device_draggable.dart';
import 'package:getx_and_firebase_app/widgets/custom_text.dart';

class DeviceWidget extends StatelessWidget {
  final DeviceModel device;

  const DeviceWidget({required this.device});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        appController.changeActiveDeviceTo(device);
        appController.changeActiveDraggableWidgetTo(SingleDeviceDraggable());
      },
      leading: Image.asset(
        _returnImage(),
        width: 45,
      ),
      title: CustomText(
        text: device.name,
        size: 18,
        weight: FontWeight.bold,
        color: Colors.black,
      ),
      subtitle: CustomText(
        text: "Last log 2 days ago",
        size: 14,
        color: Colors.grey,
        weight: FontWeight.normal,
      ),
    );
  }

  String _returnImage() {
    if (device.os == "android") {
      return android;
    } else {
      return iphone;
    }
  }
}
