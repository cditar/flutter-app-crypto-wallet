import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 208, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                color: const Color.fromARGB(255, 14, 38, 255),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      title: Text('Make your first Investment today',
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800)),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, bottom: 10),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                            onPressed: () {},
                            child: const Text('Enabled'),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Trending coins',
                        style: GoogleFonts.getFont('Nunito',
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w800))),
              ),
              Card(
                  child: InkWell(
                splashColor: Colors.blue,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: const Text(
                        "+45%",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: const Icon(Icons.album),
                      title: Text('Bitcoin',
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      subtitle: const Text('BTC'),
                    ),
                  ],
                ),
              )),
              const Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: Text(
                        "+45%",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: Icon(Icons.album),
                      title: Text('Ethereum'),
                      subtitle: Text('ETH'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: const Text(
                        "+45%",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: const Icon(Icons.album),
                      title: Text('Bitcoin',
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      subtitle: const Text('BTC'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: const Text(
                        "+45%",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: const Icon(Icons.album),
                      title: Text('Crypto Dollar',
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      subtitle: const Text('USDT'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: const Text(
                        "+45%",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: const Icon(Icons.album),
                      title: Text('Band Protocol',
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      subtitle: const Text('BTC'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: const Text(
                        "+45%",
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: const Icon(Icons.album),
                      title: const Text('Band Protocol'),
                      subtitle: Text('BTC',
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
