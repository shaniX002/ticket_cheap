import 'package:flutter/material.dart';
import '../component/fight_Card.dart';
import '../constant/ctm_texttheme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(25, 32, 49, 0.89),
                  image: DecorationImage(
                    image: AssetImage('assets/images/worldmap.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/pic.png'),
                        radius: 28,
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('Welcome Back\nShani Malik',
                          style: TTextTheme.caption),
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 55,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Center(
                                            child: Text(
                                          'P',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Text('Filght Points',
                                              style: TTextTheme.captionsnall),
                                        ),
                                        Text(
                                          '5,124',
                                          style: TTextTheme.caption,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const FightTicketCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
