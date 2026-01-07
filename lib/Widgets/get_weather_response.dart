import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart'; 

class WeatherResponse {
  final dio = Dio();
  final String apiKey = dotenv.env['WEATHER_API_KEY'] ?? "";
  final String base_url = 'https://api.openweathermap.org/data/2.5/weather';

  Future<Map<String, dynamic>?> getWeather(double lat, double lon) async {
    try {
      final response = await dio.get(
        '$base_url?lat=$lat&lon=$lon&units=metric&appid=$apiKey',
      );
      
      if (response.statusCode == 200) {
       
        return Map<String, dynamic>.from(response.data); 
      }
      return null;
    } catch (e) {
      print("Error fetching weather: $e");
      return null;
    }
  }
}