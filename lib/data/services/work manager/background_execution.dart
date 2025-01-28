import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/services/api_client.dart';
import 'package:stock_market_game/data/services/local%20notification/local_notification_service.dart';
import 'package:workmanager/workmanager.dart';

class BackgroundExecution {
  @pragma(
      'vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
  void _checkForStopLoss() {
    Workmanager().registerPeriodicTask('fetchstockprice', 'checkForStopLoss');
  }

  void callbackDispatcher() {
      Workmanager().executeTask((taskName, inputData) async {
      // Initialize Riverpod
      final container = ProviderContainer();
      final apiClient = container.read(apiClientProvider(apiConfigName: APIConfigName.alpaca));

      // Fetch data from server
      try {
        final data = await apiClient.get; // Your API call
        // Show a notification with the fetched data
        await LocalNotificationService.showNotification(
          "New Update",
          "Fetched data: $data", // Customize this based on API response
        );
      } catch (e) {
        print("Error fetching data: $e");
      } finally {
        container.dispose(); // Dispose of the container after the task
      }

      return Future.value(true); // Indicate success
    });
  }

  void initalize() {
    Workmanager().initialize(
        _checkForStopLoss, // The top level function, aka callbackDispatcher
        isInDebugMode:
            true // If enabled it will post a notification whenever the task is running. Handy for debugging tasks
        );
  }
}
