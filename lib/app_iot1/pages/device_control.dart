import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/components/bnt_icons.dart';
import 'package:ui_ux_project/app_iot1/components/card_actions_device_control.dart';
import 'package:ui_ux_project/app_iot1/components/card_infor.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';

class DeviceControlPage extends StatefulWidget {
  const DeviceControlPage({super.key});

  @override
  State<DeviceControlPage> createState() => _DeviceControlPageState();
}

class _DeviceControlPageState extends State<DeviceControlPage> {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> _valueNot = ValueNotifier(60);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 32,
          ),
        ),
        title: Text("Smart Light"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.pending_outlined,
              size: 32,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 18,
          children: [
            DeviceControlCardActionsDetailsDevice(),
            SizedBox(
              child: Column(
                spacing: 18,
                children: [
                  Text(
                    "Controller",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DashedCircularProgressBar(
                    width: 200,
                    height: 200,
                    progress: _valueNot.value,
                    backgroundStrokeWidth: 10,
                    foregroundStrokeWidth: 6,
                    backgroundColor: AppColorsDevice.primary950,
                    ltr: false,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ValueListenableBuilder(
                            valueListenable: _valueNot,
                            builder: (_, double value, __) => Column(
                              children: [
                                Text(
                                  "${value.round()}%",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "light intensity",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DeviceControlButtonIcons(),
                  DeviceControlCardInfor(
                    value: _valueNot.value,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(AppColorsDevice.black),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Add new device",
                              style: TextStyle(color: AppColorsDevice.primary50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
