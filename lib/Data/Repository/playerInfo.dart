import 'dart:convert';
import 'package:alert/Data/Model/GetInfoModel.dart';
import 'package:http/http.dart' as http;

class PlayerInfo {
  Future<Player?> getinfo() async {
    try {
      var response = await http.get(Uri.parse(
          "https://apiv2.allsportsapi.com/football/?&met=Players&playerId=103051168&APIkey=425993696093602702f69a72803df945798494ea12369a5078abbbe050f8e34b"));
      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        Player myresponse = Player.fromJson(decodedResponse);
        return myresponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
