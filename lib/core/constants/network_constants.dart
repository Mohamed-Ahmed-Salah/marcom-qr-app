abstract class NetworkConstants {
  ///updated from cache singleton
  static String devUrl = 'http://16.171.161.240:8080';
  static String releaseUrl = 'http://16.171.161.240:8080';

  static const headers = {'Content-Type': 'application/json; charset=UTF-8'};
  static const pageSize = 10;
  static const timeout = 5;

  static Future<Map<String, String>> getHeaders(
      {String contentType = "application/json"}) async {
    Map<String, String> headers = <String, String>{
      "Cache-Control": "no-cache",
      "Content-Type": contentType,
      "x-api-key": "",
      "Accept": contentType,
      "x-request-timestamp": "",
      "x-request-timezone": "",
    };
    return headers;
  }

}
