import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 203, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(15),
              color: const Color.fromARGB(255, 14, 38, 255),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Portfolio',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.getFont('Nunito',
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    const Text('Holding Value'),
                    Text('USD 2,509.75',
                        style: GoogleFonts.getFont('Nunito',
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800)),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                            color: Color.fromARGB(255, 14, 38, 255), width: 2)),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 197, 203, 255)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(158, 50)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                    onPressed: () {},
                    child: Text(
                      "Deposit INR",
                      style: GoogleFonts.getFont('Nunito',
                          color: const Color.fromARGB(255, 14, 38, 255),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )),
                OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 14, 38, 255),
                        ),
                        minimumSize:
                            MaterialStateProperty.all(const Size(150, 50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                    onPressed: () {},
                    child: Text(
                      "Withdraw INR",
                      style: GoogleFonts.getFont('Nunito',
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
