import 'package:flutter/material.dart';
import 'package:ticket_cheap/constant/ctm_texttheme.dart';
import 'package:ticket_cheap/widgets/thick_container.dart';

class TicketCard extends StatefulWidget {
  const TicketCard({super.key});

  @override
  State<TicketCard> createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
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
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Semarang-SRG',
                          style: TTextTheme.bodyblack,
                        ),
                        const Spacer(),
                        Text(
                          'Fir Jan 27th',
                          style: TTextTheme.bodyblack,
                        ),
                        const Spacer(),
                        Text(
                          'Tokyo-TYO',
                          style: TTextTheme.bodyblack,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'SRG',
                          style: TTextTheme.bodyblack,
                        ),
                        Expanded(child: Container()),
                        const ThickContainer(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(), (index) {
                                      return SizedBox(
                                          height: 1,
                                          width: 3,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                          )));
                                    }),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: const Icon(
                                    Icons.flight,
                                    color: Colors.cyan,
                                  )),
                            ),
                          ],
                        )),
                        const ThickContainer(),
                        Expanded(child: Container()),
                        Text(
                          'TYO',
                          style: TTextTheme.bodyblack,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '12:12 AM',
                          style: TTextTheme.captionBlack,
                        ),
                        const Spacer(),
                        Text(
                          '15h 40m',
                          style: TTextTheme.captionBlack,
                        ),
                        const Spacer(),
                        Text(
                          '06 00 AM',
                          style: TTextTheme.captionBlack,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.05),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            int itemCount = (constraints.maxWidth / 15)
                                .floor(); // Adjust the divisor to change the number of items
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                itemCount,
                                (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.05),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'Business Class',
                      style: TTextTheme.bodyblack,
                    ),
                    const Spacer(),
                    Text(
                      "\$ 160.00",
                      style: TTextTheme.bodyblack.copyWith(color: Colors.cyan),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\$ 200.00",
                      style: TTextTheme.captionBlack.copyWith(
                        fontSize: 12,
                      ),
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
