// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/filght_card.dart';

class FightTicketCard extends StatefulWidget {
  const FightTicketCard({super.key});

  @override
  State<FightTicketCard> createState() => _FightTicketCardState();
}

class _FightTicketCardState extends State<FightTicketCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: const [FlightCard()],
      ),
    );
  }
}
