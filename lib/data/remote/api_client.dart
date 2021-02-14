import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sawamall/data/remote/token_interceptor.dart';

import 'logger_interceptor.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.androidhive.info/json")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) {
    dio.options = BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    dio.interceptors.add(DioLoggingInterceptors(dio));
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @GET("/airline-tickets.php?from={from}&to={to}")
  Future<List<String>> getFlightTickets(
      @Path("from") String from, @Path("to") String to);

  @GET("/airline-tickets-price.php?flight_number={flight_number}&from={from}&to={to}")
  Future<String> getTicketPrice(@Path("flight_number") String flightNumber,
      @Path("from") String from, @Path("to") String to);
}