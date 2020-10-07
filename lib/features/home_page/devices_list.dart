import 'package:CyBearJinni/features/home_page/smart_device_widget.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/material.dart';

class DevicesList extends StatefulWidget {
  DevicesList(this.devices, {this.howMuchToShow, this.axis = Axis.vertical}) {
    if (devices != null && howMuchToShow == null) {
      howMuchToShow = devices.length;
    }
  }

  final List<SmartDeviceObject> devices;
  int howMuchToShow;
  final Axis axis;

  @override
  State<StatefulWidget> createState() {
    return _DevicesList();
  }
}

class _DevicesList extends State<DevicesList> {
  List<SmartDeviceObject> _devices;
  int _howMuchToShow;
  Axis _axis;

  @override
  void initState() {
    super.initState();
    _devices = widget.devices;
    _howMuchToShow = widget.howMuchToShow;
    _axis = widget.axis;
  }

  Widget _buildItemList(BuildContext context, int index) {
    return SmartDevicePage(_devices[index]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: _axis,
      itemBuilder: _buildItemList,
      itemCount: _howMuchToShow,
    );
  }
}
