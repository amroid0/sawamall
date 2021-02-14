// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.androidhive.info/json';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<String>> getFlightTickets(from, to) async {
    ArgumentError.checkNotNull(from, 'from');
    ArgumentError.checkNotNull(to, 'to');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        '/airline-tickets.php?from=$from&to=$to',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data.cast<String>();
    return value;
  }

  @override
  Future<String> getTicketPrice(flightNumber, from, to) async {
    ArgumentError.checkNotNull(flightNumber, 'flightNumber');
    ArgumentError.checkNotNull(from, 'from');
    ArgumentError.checkNotNull(to, 'to');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<String>(
        '/airline-tickets-price.php?flight_number=$flightNumber&from=$from&to=$to',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }
}
