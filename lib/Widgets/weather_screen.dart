import 'package:flutter/material.dart';
import '../controller/weather_controller.dart';
import '../network/dio_client.dart';
import '../service/weather_service.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late WeatherController controller;

  @override
  void initState() {
    super.initState();
    controller = WeatherController(
      WeatherService(DioClient()),
    );

    _loadWeather();
  }

  Future<void> _loadWeather() async {
    await controller.loadWeather(22.5726, 88.3639);
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: controller.isLoading
          ? const CircularProgressIndicator()
          : Container(
              width: 280,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.location,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.thermostat, color: Colors.orange),
                      const SizedBox(width: 6),
                      Text('${controller.temperature}°C',
                          style: const TextStyle(fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.wb_sunny, color: Colors.yellow),
                      const SizedBox(width: 6),
                      Text(controller.description),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.water_drop, color: Colors.blue),
                      const SizedBox(width: 6),
                      Text('Humidity: ${controller.humidity}%'),
                    ],
                  ),
                ],
              ),
            )
      ),
    );
  }
}

 