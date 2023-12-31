import 'dart:convert';

class Helpers {
  static capitaliseFirstLetter(String? input) {
    if (input != null) {
      return input[0].toUpperCase() + input.substring(1);
    } else {
      return '';
    }
  }

  static String decodeBase64(String? val) {
    String uid = '';
    if (val != null) {
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      uid = stringToBase64.decode(val);
    }
    return uid;
  }

  static String encodeBase64(String? valArg) {
    String val = '';
    if (valArg != null) {
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      val = stringToBase64.encode(valArg);
    }
    return val;
  }
}
