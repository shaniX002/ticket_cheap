import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_cheap/widgets/ctm_button.dart';
import '../constant/ctm_texttheme.dart';
import 'ticket_card.dart';

class FlightCard extends StatefulWidget {
  const FlightCard({super.key});

  @override
  State<FlightCard> createState() => _FlightCardState();
}

class _FlightCardState extends State<FlightCard> {
  bool isSwitched = false;
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(
                                Icons.keyboard_double_arrow_right_rounded,
                                size: 26,
                              ),
                              Text(
                                'One-Way',
                                style: TTextTheme.bodyblack,
                              )
                            ],
                          )),
                      const SizedBox(
                        width: 40,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(
                                Icons.autorenew,
                                size: 26,
                              ),
                              Text(
                                'Round-Trip',
                                style: TTextTheme.bodyblack,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 110,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.black12),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.flight_takeoff_outlined),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Semarang - SRG',
                            style: TTextTheme.bodyblackBlod,
                          )
                        ],
                      ),
                      const Divider(
                        endIndent: 50,
                        indent: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.flight_land_outlined),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Tokyo - TYO',
                            style: TTextTheme.bodyblackBlod,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 70,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black12),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () async {
                                  DateTime? datePicked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2023),
                                    lastDate: DateTime(2030),
                                  );
                                  if (datePicked != null) {
                                    setState(() {
                                      selectedDate = datePicked;
                                    });
                                  }
                                },
                                icon:
                                    const Icon(Icons.calendar_month_outlined)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              selectedDate != null
                                  ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                                  : "No date selected",
                              style: TTextTheme.bodyblackBlod,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          'Return?',
                          style: TTextTheme.captionBlack,
                        ),
                        Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            }),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black12),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(CupertinoIcons.profile_circled),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Business",
                              style: TTextTheme.bodyblackBlod,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 70,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.black12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(CupertinoIcons.profile_circled),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "2 Seat",
                            style: TTextTheme.bodyblackBlod,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    text: 'Sreach',
                    color: Colors.cyan,
                    width: 300,
                    height: 50,
                    onPressed: () {
                      context.pushNamed('/ticket');
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Active Tickets', style: TTextTheme.bodyblackBlod),
              TextButton(
                  onPressed: () {
                    context.pushNamed('/ticket');
                  },
                  child: const Row(
                    children: [
                      Text(
                        'See More',
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 16,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.cyan,
                      )
                    ],
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const TicketCard(),
      ],
    );
  }
}
