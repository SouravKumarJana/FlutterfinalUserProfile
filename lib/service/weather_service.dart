import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../network/dio_client.dart';

class WeatherService {
  final DioClient dioClient;

  WeatherService(this.dioClient);

  final String _baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';

  final String _apiKey = dotenv.env['WEATHER_API_KEY'] ?? '';

  Future<Map<String, dynamic>?> fetchWeather(
      double lat, double lon) async {
    try {
      final response = await dioClient.dio.get(
        _baseUrl,
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'units': 'metric',
          'appid': _apiKey,
        },
      );

      if (response.statusCode == 200) {
        return Map<String, dynamic>.from(response.data);
      }
      return null;
    } catch (e) {
      print('Weather API error: $e');
      return null;
    }
  }
}
