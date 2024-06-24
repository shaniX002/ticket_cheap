import 'package:flutter/material.dart';
import 'package:ticket_cheap/constant/ctm_texttheme.dart';
import 'package:ticket_cheap/widgets/ticket_card.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Result',
                        style: TTextTheme.bodyblackBlod,
                      ),
                      Text(
                        '132 Result',
                        style: TTextTheme.captionBlack,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TicketCard(),
                const SizedBox(
                  height: 20,
                ),
                const TicketCard(),
                const SizedBox(
                  height: 20,
                ),
                const TicketCard(),
                const SizedBox(
                  height: 20,
                ),
                const TicketCard(),
              ],
            ),
          )),
    );
  }
}
