class AppUrl {
  static const String baseUrl = 'http://192.168.0.110:8000/user';
  static const String registerUrl = '$baseUrl/signup';
  static const String loginUrl = '$baseUrl/login';
  static const String createTodoUrl = '$baseUrl/todocreate';

  static String getTodoUrl(String userId) =>
      '$baseUrl/getTodo?userId=$userId';
}
