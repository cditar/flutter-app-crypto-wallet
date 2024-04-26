import 'package:flutter/widgets.dart';
import 'package:flutter_application_test/models/coin_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CoinController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Coin> coinsList = <Coin>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCoins();
  }

  fetchCoins() async {
    try {
      isLoading(true);
      var response = await http
          .get(Uri.parse('https://api.blockchain.com/v3/exchange/tickers'));
      List<Coin> coins = coinFromJson(response.body);
      coinsList.value = coins;
    } finally {
      isLoading(false);
    }
  }
}
