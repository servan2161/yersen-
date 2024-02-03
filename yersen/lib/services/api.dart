import 'package:dio/dio.dart';

//kayıtlı kullanıcıları listelemek için
class API {
  final dio = Dio();
  final String baseurl = "https://reqres.in/api/";
  login({required String email, required String password}) async {
    try {
      final String yonlendirme = "$baseurl/login";
      final params = {
        "email": email,
        "password": password,
      };
      final cevap = await dio.post(yonlendirme, data: params);
      return cevap.data;
    } catch (e) {
      return e;
    }
  }
}
