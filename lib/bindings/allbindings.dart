import 'package:flutter_awesome_notifications/controllers/notification.controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationController());
  }
}
