

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {

    static final _notifications = FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings()
    );

    await _notifications.initialize(initializationSettings);
  }

  static Future<void> showNotification(String title, String body) async {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'channel_id',
        'channel_name',
        channelDescription: 'This channel is for periodic notifications',
        importance: Importance.high,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(
        
      )
    );

    await _notifications.show(
      0, // Notification ID
      title,
      body,
      notificationDetails,
    );
  }
}