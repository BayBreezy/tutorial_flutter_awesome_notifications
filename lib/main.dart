import 'package:flutter/material.dart';
import 'package:flutter_awesome_notifications/bindings/allbindings.dart';
import 'package:flutter_awesome_notifications/controllers/notification.controller.dart';
import 'package:get/get.dart';
import '/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationController.initializeNotificationService();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Return GetMaterial so that we can use Getx features in our app
    return GetMaterialApp(
      initialBinding: AllBindings(),
      title: 'Flutter Awesome Notification',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(),
    );
  }
}
