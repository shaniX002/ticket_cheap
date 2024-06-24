import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ticket_cheap/widgets/ctm_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(25, 32, 49, 0.89),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 670,
                right: 20,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Positioned.fill(
                bottom: 250,
                child: Image.asset(
                  'assets/images/worldmap.png',
                ),
              ),
              Positioned.fill(
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/aeroplan.png',
                    )),
              ),
              const Positioned.fill(
                top: 170,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Discover Your\nDream Flight\nEasily',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              const Positioned.fill(
                top: 500,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'find an easy way to buy airplane ticket with \n just a few click in the application',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Jost',
                            fontSize: 18),
                      )),
                ),
              ),
              Positioned.fill(
                  top: 650,
                  left: 20,
                  right: 20,
                  bottom: 50,
                  child: CustomButton(
                      text: 'Get Started',
                      color: Colors.cyan,
                      width: 10,
                      height: 10,
                      onPressed: () async {
                        final pers = await SharedPreferences.getInstance();
                        pers.setBool('onBoarding', true);

                        if (!mounted) return;
                        // ignore: use_build_context_synchronously
                        context.go('/nav');
                      })),
            ],
          ),
        ));
  }
}
