import 'package:flutter/material.dart';
import 'package:flutter_application_test/controllers/coin_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Cryptocurrency {
  final String name;
  final String shortName;

  Cryptocurrency({required this.name, required this.shortName});
}

class CryptocurrencyList extends StatelessWidget {
  final List<Cryptocurrency> cryptocurrencies = [
    Cryptocurrency(name: 'Bitcoin', shortName: 'BTC'),
    Cryptocurrency(name: 'Ethereum', shortName: 'ETH'),
    Cryptocurrency(name: 'Binance Coin', shortName: 'BNB'),
    Cryptocurrency(name: 'Cardano', shortName: 'ADA'),
    Cryptocurrency(name: 'Solana', shortName: 'SOL'),
    Cryptocurrency(name: 'XRP', shortName: 'XRP'),
    Cryptocurrency(name: 'Polkadot', shortName: 'DOT'),
    Cryptocurrency(name: 'Dogecoin', shortName: 'DOGE'),
    Cryptocurrency(name: 'Avalanche', shortName: 'AVAX'),
    Cryptocurrency(name: 'Chainlink', shortName: 'LINK'),
  ];

  @override
  Widget build(BuildContext context) {
    final CoinController controller = Get.put(CoinController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 203, 255),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          height: 780,
          child: Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.coinsList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          trailing: Text(
                              'Last 24hs: ${controller.coinsList[index].price24H}'
                                  .toString()),
                          leading: const Icon(Icons.album),
                          title: Text(controller.coinsList[index].symbol,
                              style: GoogleFonts.getFont('Nunito',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Last 24h volume: ${controller.coinsList[index].volume24H}'
                                    .toString(),
                                style: const TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Last trade price: ${controller.coinsList[index].lastTradePrice}'
                                    .toString(),
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          isThreeLine: true,
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
