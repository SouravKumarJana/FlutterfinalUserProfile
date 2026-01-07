import '../service/weather_service.dart';

class WeatherController {
  final WeatherService weatherService;

  WeatherController(this.weatherService);

  String temperature = "0";
  String description = "Loading...";
  String humidity = "0";
  String location = "";
  bool isLoading = true;

  Future<void> loadWeather(double lat, double lon) async {
    final data = await weatherService.fetchWeather(lat, lon);

    if (data != null) {
      location = data['name']?.toString() ?? 'Unknown';
      temperature = data['main']?['temp']?.toString() ?? '0';
      humidity = data['main']?['humidity']?.toString() ?? '0';
      description = data['weather']?[0]?['main'] ?? 'Unknown';
    } else {
      description = 'Error';
    }

    isLoading = false;
  }
}

