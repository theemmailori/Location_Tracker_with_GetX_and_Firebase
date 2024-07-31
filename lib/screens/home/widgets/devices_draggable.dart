import 'package:flutter/material.dart';
import 'package:getx_and_firebase_app/models/device.dart';

import 'device_widget.dart';

class DevicesDraggable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: .3,
        builder: (context, scrollable) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.8),
                      offset: Offset(3, 2),
                      blurRadius: 7)
                ]),
                child: ListView(
                  controller: scrollable,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          height: 6,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                    DeviceWidget(
                      device: DeviceModel(
                        id: "1",
                        name: "Samsung S24 Ultra",
                        os: 'android',
                        token: "token1",
                        location: {"lat": 0.0, "lng": 0.0},
                      ),
                    ),
                    DeviceWidget(
                      device: DeviceModel(
                        id: "2",
                        name: "iPhone 15 Pro max",
                        os: 'ios',
                        token: "token2",
                        location: {"lat": 0.0, "lng": 0.0},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
