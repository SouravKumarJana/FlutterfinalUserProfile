import 'package:flutter/material.dart';
import 'get_weather_response.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherResponse _weatherResponse = WeatherResponse();

  String temperature = "0";
  String description = "Loading...";
  String humidity = "0";
  bool isLoading = true;
  String location = '';

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  void _fetchWeatherData() async {
    double lat = 22.5726; 
    double lon = 88.3639;

    Map<String, dynamic>? data = await _weatherResponse.getWeather(lat, lon);

    if (!mounted) return; 

    if (data != null) {

      setState(() {
        location = data['name'].toString();
        temperature = data['main']['temp'].toString();
        description = data['weather'][0]['main'];
        humidity = data['main']['humidity'].toString();
        isLoading = false;
      });
    } else {

      setState(() {
        description = "Error";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading 
            ? const CircularProgressIndicator()
            : Container(
                width: 280,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4)),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(location, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.thermostat, color: Colors.orange),
                        const SizedBox(width: 6),
                        Text('$temperature°C', style: const TextStyle(fontSize: 18)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.wb_sunny, color: Colors.yellow),
                        const SizedBox(width: 6),
                        Text(description),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.water_drop, color: Colors.blue),
                        const SizedBox(width: 6),
                        Text('Humidity: $humidity%'),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}