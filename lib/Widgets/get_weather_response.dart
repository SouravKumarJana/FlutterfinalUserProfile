import 'package:dio/dio.dart'; 

class WeatherResponse {
  final dio = Dio();
  final String apiKey = "ab0555c6e405b5dab41d7e306b5f0f64"; 

  Future<Map<String, dynamic>?> getWeather(double lat, double lon) async {
    try {
      final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=$apiKey',
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