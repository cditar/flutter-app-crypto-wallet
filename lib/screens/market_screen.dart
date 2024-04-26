import 'package:flutter/material.dart';
import 'package:flutter_application_test/components/cryptocurrency_list.dart';
import 'package:flutter_application_test/controllers/coin_controller.dart';
import 'package:flutter_application_test/models/coin_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 203, 255),
      body: CryptocurrencyList(),
    );
  }
}
