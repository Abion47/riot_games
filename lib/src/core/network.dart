import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHandler {
  static Map<String, String> _getDefaultHeaders(String apiKey) => {
        'Accept-Charset': 'application/x-www-form-urlencoded; charset=UTF-8',
        'X-Riot-Token': apiKey,
        'Accept-Language': 'en-US,en;q=0.9',
      };

  static Future<Response> sendHttpRequest(
    http.Client client,
    String apiKey,
    Uri endpoint,
    String method, {
    Map<String, String> headers,
    Map<String, dynamic> body,
    ResponseType responseType,
  }) async {
    http.Response httpResponse;

    var allHeaders = {
      ..._getDefaultHeaders(apiKey),
      ...(headers ?? {}),
    };

    try {
      switch (method) {
        case 'GET':
          httpResponse = await client.get(endpoint, headers: allHeaders);
          break;
        case 'POST':
          httpResponse =
              await client.post(endpoint, headers: allHeaders, body: body);
          break;
        case 'PUT':
          httpResponse =
              await client.put(endpoint, headers: allHeaders, body: body);
          break;
        default:
          throw UnsupportedError('Method unsupported: $method');
      }
    } catch (e) {
      return Response.noConnection();
    } finally {
      client.close();
    }

    return Response.fromHttpResponse(httpResponse, responseType);
  }
}

enum ResponseType {
  binary,
  text,
  json,
}

class Response {
  final int code;
  final Map<String, String> headers;
  final dynamic body;

  Response(this.code, this.headers, this.body);

  factory Response.noConnection() => Response(0, {}, {});

  factory Response.fromHttpResponse(
      http.Response response, ResponseType responseType) {
    final code = response.statusCode;
    final headers = response.headers;

    final contentType =
        headers['content-type'] ?? headers['Content-Type'] ?? '';

    dynamic body;
    if (responseType != null) {
      body = contentType.contains('application/json')
          ? json.decode(response.body)
          : response.bodyBytes;
    } else {
      switch (responseType) {
        case ResponseType.binary:
          body = response.bodyBytes;
          break;
        case ResponseType.text:
          body = response.body;
          break;
        case ResponseType.json:
        default:
          body = json.decode(response.body);
          break;
      }
    }

    return Response(code, headers, body);
  }

  ResponseError toError() {
    switch (code) {
      case 0:
        return ResponseError(this,
            '(0) HTTP Request failed. Check your internet connection and try again.');
      case 400:
        return ResponseError(this,
            '(400) Bad request. Check your request URL and parameters and try again.');
      case 401:
        return ResponseError(
            this, '(401) The API key was missing from the request.');
      case 403:
        return ResponseError(this,
            '(403) The API key provided was invalid, expired, or blacklisted.');
      case 404:
        return ResponseError(this,
            '(404) The endpoint was not found. Check your URL and try again.');
      case 415:
        return ResponseError(this,
            '(415) The format specified in "Content-Type" header is unsupported.');
      case 429:
        return ResponseError(this,
            '(425) This application has exhausted its maximum number of API calls for a given duration. Please wait an amount of time indicated by the "Retry-After" header (in seconds) before trying again. Check your API Call graphs in the Riot Developer Portal for more information. Warning: Repeatedly making calls during this period could result in your access getting rate-limited or your API key getting blacklisted.');
      case 500:
        return ResponseError(this,
            '(500) The server experienced an internal error. Please try again later.');
      case 503:
        return ResponseError(this,
            '(503) The server is currently unable to handle requests. Please try again later.');
      default:
        return ResponseError(this,
            '($code) The API returned a status code this package has not implemented an error message for. Consult the Riot API documentation for further information.');
    }
  }

  @override
  String toString() => 'code: $code, headers: $headers, body: $body';
}

class ResponseError extends StateError {
  final Response response;

  ResponseError(this.response, String message) : super(message);

  @override
  String toString() => super.toString();
}
