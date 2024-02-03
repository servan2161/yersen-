import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//kaydedilen hafızaları okumak için
class storage {
  readtoken() async {
    final storage = new FlutterSecureStorage();
    var token = await storage.read(key: "token");
    if (token == null) {
      return null;
    } else {
      return {"token": token};
    }
  }

//kaydetmek için
  savetoke(String anahtar) async {
    final storage = new FlutterSecureStorage();
    await storage.write(key: "token", value: anahtar);
  }
}
