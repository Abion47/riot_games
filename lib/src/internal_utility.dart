

Future sendHttpRequest(String endpoint, String method, {Map<String, String> headers, Map<String, dynamic> body}) async {
  
}

class Response {
  final int code;
  final Map<String, String> headers;
  final String body;

  Response(this.code, this.headers, this.body);

  ResponseError toError() {
    switch (code) {
      case 400: return ResponseError(this, '(400) Bad request. Check your request URL and parameters and try again.');
      case 401: return ResponseError(this, '(401) The API key was missing from the request.');
      case 403: return ResponseError(this, '(403) The API key provided was invalid, expired, or blacklisted.');
      case 404: return ResponseError(this, '(404) The endpoint was not found. Check your URL and try again.');
      case 415: return ResponseError(this, '(415) The format specified in "Content-Type" header is unsupported.');
      case 429: return ResponseError(this, '(425) This application has exhausted its maximum number of API calls for a given duration. Please wait an amount of time indicated by the "Retry-After" header (in seconds) before trying again. Check your API Call graphs in the Riot Developer Portal for more information. Warning: Repeatedly making calls during this period could result in your access getting rate-limited or your API key getting blacklisted.');
      case 500: return ResponseError(this, '(500) The server experienced an internal error. Please try again later.');
      case 503: return ResponseError(this, '(503) The server is currently unable to handle requests. Please try again later.');
      default: return ResponseError(this, '($code) The API returned a status code this package has not implemented an error message for. Consult the Riot API documentation for further information.');
    }
  }
}

class ResponseError extends StateError {
  final Response response;

  ResponseError(this.response, String message) : super(message);

  @override
  String toString() => super.toString();
}