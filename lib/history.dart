import 'dart:math';

import 'package:flutter/material.dart';
import 'package:speedometer_chart/speedometer_chart.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'temp.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => HistoryState();
}

class HistoryState extends State<History> {
  String select = 'Select Duration';
  String select1 = '';

  bool isIcon = true;
  bool isIcon1 = true;
  bool isIcon2 = true;
  bool isIcon3 = true;

  bool isInitialText = true;
  bool isInitialText1 = true;
  String buttonText1 = 'Untake';
  String buttonText = 'Untake';
  bool isInitialText2 = true;
  String buttonText2 = 'Untake';
  bool isInitialText3 = true;
  String buttonText3 = 'Untake';

  void changeButtonText() {
    setState(() {
      if (isInitialText) {
        buttonText = "Take";
      } else {
        buttonText = "Untake";
      }
      isInitialText = !isInitialText;
    });
  }

  void changeButtonText1() {
    setState(() {
      if (isInitialText1) {
        buttonText1 = "Take";
      } else {
        buttonText1 = "Untake";
      }
      isInitialText1 = !isInitialText1;
    });
  }

  void changeButtonText2() {
    setState(() {
      if (isInitialText2) {
        buttonText2 = "Take";
      } else {
        buttonText2 = "Untake";
      }
      isInitialText2 = !isInitialText2;
    });
  }

  void changeButtonText3() {
    setState(() {
      if (isInitialText3) {
        buttonText3 = "Take";
      } else {
        buttonText3 = "Untake";
      }
      isInitialText3 = !isInitialText3;
    });
  }

  void toggleIcons() {
    setState(() {
      isIcon = !isIcon;
    });
  }

  void toggleIcons1() {
    setState(() {
      isIcon1 = !isIcon1;
    });
  }

  void toggleIcons2() {
    setState(() {
      isIcon2 = !isIcon2;
    });
  }

  void toggleIcons3() {
    setState(() {
      isIcon3 = !isIcon3;
    });
  }

  @override
  Widget build(BuildContext context) {
    String week = 'Weekly';
    String month = 'Monthly';
    String year = 'Yearly';
    String paraciane = 'Paraciane';
    String aspirin = 'Aspirin';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'History',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          toolbarHeight: 56,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: 0.0,
          titleSpacing: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  decoration: ShapeDecoration(
                    color: Color(0xFFDEF9FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () async {
                            List<DateTime>? dateTimeList =
                                await showOmniDateTimeRangePicker(
                                    context: context);
                            if (dateTimeList != null) {
                              // User selected a date and time.
                              // Do something with the selected dateTimeList.
                            } else {
                              // User didn't select a date and time.
                              // Handle this case.
                            }
                          },
                          icon: const Icon(
                            Icons.calendar_month_rounded,
                          ))
                      // TextButton(
                      //     onPressed: () {
                      //       showModalBottomSheet(
                      //         context: context,
                      //         builder: (BuildContext) {
                      //           return SafeArea(
                      //             child: Scaffold(
                      //               appBar: AppBar(
                      //                 title: const Text(
                      //                   'Select Duration',
                      //                   style: TextStyle(color: Colors.black),
                      //                 ),
                      //                 elevation: 0,
                      //                 toolbarHeight: 56,
                      //                 automaticallyImplyLeading: false,
                      //                 backgroundColor: Colors.transparent,
                      //                 leadingWidth: 0.0,
                      //                 titleSpacing: 0,
                      //                 centerTitle: true,
                      //               ),
                      //               body: Column(
                      //                 children: [
                      //                   Column(
                      //                       mainAxisAlignment:
                      //                           MainAxisAlignment.start,
                      //                       crossAxisAlignment:
                      //                           CrossAxisAlignment.start,
                      //                       children: [
                      //                         InkWell(
                      //                           onTap: () {
                      //                             setState(() {
                      //                               select = week;
                      //                               Navigator.pop(context);
                      //                             });
                      //                           },
                      //                           child: Container(
                      //                             height: 50,
                      //                             child: Center(
                      //                               child: Text(week),
                      //                             ),
                      //                           ),
                      //                         ),
                      //                         InkWell(
                      //                           onTap: () {
                      //                             setState(() {
                      //                               select = month;
                      //                               Navigator.pop(context);
                      //                             });
                      //                           },
                      //                           child: Container(
                      //                             height: 50,
                      //                             child: Center(
                      //                               child: Text(month),
                      //                             ),
                      //                           ),
                      //                         ),
                      //                         InkWell(
                      //                           onTap: () {
                      //                             setState(() {
                      //                               select = year;
                      //                               Navigator.pop(context);
                      //                             });
                      //                           },
                      //                           child: Container(
                      //                             height: 50,
                      //                             child: Center(
                      //                               child: Text(year),
                      //                             ),
                      //                           ),
                      //                         )
                      //                       ])
                      //                 ],
                      //               ),
                      //             ),
                      //           );
                      //         },
                      //       );
                      //     },
                      //     child: Text(
                      //       select,
                      //       style: const TextStyle(color: Colors.black),
                      //     ))
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 35,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDEF9FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext) {
                                return SafeArea(
                                  child: Scaffold(
                                    appBar: AppBar(
                                      title: const Text(
                                        'All Medicine',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      elevation: 0,
                                      toolbarHeight: 56,
                                      automaticallyImplyLeading: false,
                                      backgroundColor: Colors.transparent,
                                      leadingWidth: 0.0,
                                      titleSpacing: 0,
                                      centerTitle: true,
                                    ),
                                    body: Column(
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                      value: true,
                                                      activeColor: Colors.green,
                                                      onChanged:
                                                          (bool? newValue) {
                                                        setState(() {
                                                          newValue = newValue!;
                                                        });
                                                      }),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        select1 = paraciane;
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 50,
                                                      child: Center(
                                                        child: Text(paraciane),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                      value: true,
                                                      activeColor: Colors.green,
                                                      onChanged:
                                                          (bool? newValue) {
                                                        setState(() {
                                                          newValue = newValue!;
                                                        });
                                                      }),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        select1 = aspirin;
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 50,
                                                      child: Center(
                                                        child: Text(aspirin),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ])
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text(
                            "All Medicine",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Container(
              width: 343,
              height: 127,
              decoration: ShapeDecoration(
                  color: const Color(0xFF5CE0E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              child: const Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 20),
                        child: Text(
                          "Adherene Score",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "12 Aug 2022 to 12 Sep 2022",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 210, top: 40),
                    child: SpeedometerChart(
                      dimension: 100,
                      minValue: 0,
                      maxValue: 100,
                      value: 60,
                      minTextValue: "",
                      maxTextValue: "",
                      graphColor: [Colors.blue, Colors.yellow, Colors.green],
                      pointerColor: Colors.black,
                      valueVisible: true,
                      rangeVisible: true,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 236, 234, 234),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mon,12 Sep",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "8.00 AM",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  title: const Text(
                                    'Mon 12 Sep',
                                    textAlign: TextAlign.center,
                                  ),
                                  alignment: Alignment.center,
                                  content: Container(
                                    width: 165,
                                    height: 140,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(39))),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 18,
                                                      vertical: 4),
                                                  decoration: ShapeDecoration(
                                                      color: Color(0xFF3DE462),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          39))),
                                                  child: const Text(
                                                    '8:00AM',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 100,
                                          height: 35,
                                          child: const Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Paraciane',
                                                style: TextStyle(
                                                  color: Color(0xFF333333),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'Take 5.5ml from cabinet',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFF898989)),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 40,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFDEF9FA),
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 2,
                                                    color: Color(0xFF5CE0E6)),
                                                borderRadius:
                                                    BorderRadius.circular(70)),
                                          ),
                                          child: TextButton(
                                              child: Text(
                                                buttonText,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              onPressed: () {
                                                changeButtonText();
                                                toggleIcons();

                                                Navigator.pop(context);
                                              }),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: isIcon
                            ? const Icon(Icons.check_box, color: Colors.green)
                            : const Icon(Icons.cancel, color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Paraciane',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  title: const Text(
                                    'Mon 12 Sep',
                                    textAlign: TextAlign.center,
                                  ),
                                  alignment: Alignment.center,
                                  content: Container(
                                    width: 165,
                                    height: 140,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(39))),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 18,
                                                      vertical: 4),
                                                  decoration: ShapeDecoration(
                                                      color: const Color(
                                                          0xFF3DE462),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          39))),
                                                  child: const Text(
                                                    '8:00AM',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 100,
                                          height: 35,
                                          child: const Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Aspirin',
                                                style: TextStyle(
                                                  color: Color(0xFF333333),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'Take 5.5ml from cabinet',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFF898989)),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 40,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFDEF9FA),
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 2,
                                                    color: Color(0xFF5CE0E6)),
                                                borderRadius:
                                                    BorderRadius.circular(70)),
                                          ),
                                          child: TextButton(
                                              child: Text(
                                                buttonText1,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              onPressed: () {
                                                changeButtonText1();

                                                toggleIcons1();
                                                Navigator.pop(context);
                                              }),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: isIcon1
                            ? const Icon(Icons.check_box, color: Colors.green)
                            : const Icon(Icons.cancel, color: Colors.red),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 252, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "11.00 AM",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  title: const Text(
                                    'Mon 12 Sep',
                                    textAlign: TextAlign.center,
                                  ),
                                  alignment: Alignment.center,
                                  content: Container(
                                    width: 165,
                                    height: 140,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(39))),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 18,
                                                      vertical: 4),
                                                  decoration: ShapeDecoration(
                                                      color: const Color(
                                                          0xFF3DE462),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          39))),
                                                  child: const Text(
                                                    '11:00AM',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 100,
                                          height: 35,
                                          child: const Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Aspirin',
                                                style: TextStyle(
                                                  color: Color(0xFF333333),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'Take 5.5ml from cabinet',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFF898989)),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 40,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFDEF9FA),
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 2,
                                                    color: Color(0xFF5CE0E6)),
                                                borderRadius:
                                                    BorderRadius.circular(70)),
                                          ),
                                          child: TextButton(
                                              child: Text(
                                                buttonText2,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              onPressed: () {
                                                changeButtonText2();
                                                toggleIcons2();
                                                Navigator.pop(context);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: isIcon2
                            ? const Icon(Icons.check_box, color: Colors.green)
                            : const Icon(Icons.cancel, color: Colors.red),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 236, 234, 234),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tue,11 Sep",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 249, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "8.00 AM",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  title: const Text(
                                    'Tue 11 Sep',
                                    textAlign: TextAlign.center,
                                  ),
                                  alignment: Alignment.center,
                                  content: Container(
                                    width: 165,
                                    height: 140,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(39))),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 18,
                                                      vertical: 4),
                                                  decoration: ShapeDecoration(
                                                      color: const Color(
                                                          0xFF3DE462),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          39))),
                                                  child: const Text(
                                                    '8:00AM',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 100,
                                          height: 35,
                                          child: const Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Aspirin',
                                                style: TextStyle(
                                                  color: Color(0xFF333333),
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'Take 5.5ml from cabinet',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFF898989)),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 40,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFDEF9FA),
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 2,
                                                    color: Color(0xFF5CE0E6)),
                                                borderRadius:
                                                    BorderRadius.circular(70)),
                                          ),
                                          child: TextButton(
                                            child: Text(
                                              buttonText3,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            ),
                                            onPressed: () {
                                              changeButtonText3();
                                              toggleIcons3();
                                              Navigator.pop(context);
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: isIcon3
                            ? const Icon(Icons.check_box, color: Colors.green)
                            : const Icon(Icons.cancel, color: Colors.red),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
            // Row(
            //   // mainAxisSize: MainAxisSize.min,
            //   //crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Container(
            //           padding: const EdgeInsets.all(16),
            //           child: const Icon(Icons.check_box, color: Colors.green),
            //         ),
            //         TextButton(
            //           child: const Text(
            //             "Aspirin",
            //             style: TextStyle(color: Colors.black),
            //           ),
            //           onPressed: () {
            //             showDialog(
            //                 context: context,
            //                 builder: (BuildContext) {
            //                   return AlertDialog(
            //                     title: const Text(
            //                       'Tue 11 Sep',
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     alignment: Alignment.center,
            //                     content: Container(
            //                       width: 165,
            //                       height: 140,
            //                       padding: const EdgeInsets.symmetric(
            //                           horizontal: 5, vertical: 5),
            //                       decoration: ShapeDecoration(
            //                           shape: RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(39))),
            //                       child: Column(
            //                         mainAxisSize: MainAxisSize.min,
            //                         mainAxisAlignment: MainAxisAlignment.start,
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.center,
            //                         children: [
            //                           Column(
            //                             children: [
            //                               Column(
            //                                 mainAxisAlignment:
            //                                     MainAxisAlignment.center,
            //                                 crossAxisAlignment:
            //                                     CrossAxisAlignment.center,
            //                                 children: [
            //                                   Container(
            //                                     padding:
            //                                         const EdgeInsets.symmetric(
            //                                             horizontal: 18,
            //                                             vertical: 4),
            //                                     decoration: ShapeDecoration(
            //                                         color:
            //                                             const Color(0xFF3DE462),
            //                                         shape:
            //                                             RoundedRectangleBorder(
            //                                                 borderRadius:
            //                                                     BorderRadius
            //                                                         .circular(
            //                                                             39))),
            //                                     child: const Text(
            //                                       '8:00AM',
            //                                       textAlign: TextAlign.center,
            //                                       style: TextStyle(
            //                                           color: Colors.black,
            //                                           fontSize: 20,
            //                                           fontFamily: 'Nunito',
            //                                           fontWeight:
            //                                               FontWeight.w600,
            //                                           height: 0),
            //                                     ),
            //                                   ),
            //                                 ],
            //                               ),
            //                             ],
            //                           ),
            //                           Container(
            //                             width: 100,
            //                             height: 35,
            //                             child: const Column(
            //                               mainAxisSize: MainAxisSize.min,
            //                               mainAxisAlignment:
            //                                   MainAxisAlignment.center,
            //                               crossAxisAlignment:
            //                                   CrossAxisAlignment.center,
            //                               children: [
            //                                 Text(
            //                                   'Aspirin',
            //                                   style: TextStyle(
            //                                     color: Color(0xFF333333),
            //                                     fontSize: 20,
            //                                   ),
            //                                 ),
            //                               ],
            //                             ),
            //                           ),
            //                           const Text(
            //                             'Take 5.5ml from cabinet',
            //                             textAlign: TextAlign.center,
            //                             style:
            //                                 TextStyle(color: Color(0xFF898989)),
            //                           ),
            //                           Container(
            //                             width: 100,
            //                             height: 40,
            //                             decoration: ShapeDecoration(
            //                               color: const Color(0xFFDEF9FA),
            //                               shape: RoundedRectangleBorder(
            //                                   side: const BorderSide(
            //                                       width: 2,
            //                                       color: Color(0xFF5CE0E6)),
            //                                   borderRadius:
            //                                       BorderRadius.circular(70)),
            //                             ),
            //                             child: TextButton(
            //                               child: const Text(
            //                                 'Untake',
            //                                 textAlign: TextAlign.center,
            //                                 style: TextStyle(
            //                                     color: Colors.black,
            //                                     fontSize: 18),
            //                               ),
            //                               onPressed: () =>
            //                                   Navigator.pop(context),
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                   );
            //                 });
            //           },
            //         )
            //       ],
            //     )
            //   ],
            // ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          //BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Hisrory'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel_sharp), label: 'More'),
        ]),
      ),
    );
  }
}
