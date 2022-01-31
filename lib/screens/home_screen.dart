import 'package:flutter/material.dart';
import 'package:flutter_awesome_notifications/controllers/notification.controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("N O T I F I C A T I O N S"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<NotificationController>().createBasicNotification();
                },
                child: Text("Basic Notification")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.find<NotificationController>()
                      .createPictureNotification();
                },
                child: Text("Picture Notification")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.find<NotificationController>()
                      .createScheduledNotification();
                },
                child: Text("Scheduled Notification")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.find<NotificationController>().cleareAllNotifications();
                  //Send feedback
                  Get.snackbar("Cancelled", "All notifcations cancelled.");
                },
                child: Text("Cancel Notifications")),
          ],
        ),
      ),
    );
  }
}
