import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'indicator.dart';

double active, total;

class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex;

  // ignore: top_level_instance_method
  // final data = ApiData().fetchCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 3,
                  child: PieChart(
                    PieChartData(
                        pieTouchData:
                        PieTouchData(touchCallback: (pieTouchResponse) {
                          setState(() {
                            final desiredTouch = pieTouchResponse.touchInput
                            is! PointerExitEvent &&
                                pieTouchResponse.touchInput
                                is! PointerUpEvent;
                            if (desiredTouch &&
                                pieTouchResponse.touchedSection != null) {
                              touchedIndex = pieTouchResponse
                                  .touchedSection.touchedSectionIndex;
                            } else {
                              touchedIndex = -1;
                            }
                          });
                        }),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections()),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Indicator(
                      color: Colors.red,
                      text: 'Tow Vehicle',
                      isSquare: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Indicator(
                      color: Color(0xff13d38e),
                      text: 'Technician',
                      isSquare: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Indicator(
                      color: Color(0xff845bef),
                      text: 'Total Queries',
                      isSquare: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Indicator(
                      color: Color(0xfff8b250),
                      text: 'Resolved Queries',
                      isSquare: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Indicator(
                      color: Color(0xff133d8e),
                      text: 'Unresolved Queries',
                      isSquare: false,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(5, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 80 : 60;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 12,
            title: '12%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 34,
            title: '34%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.red,
            value: 46,
            title: '46%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: const Color(0xff133d8e),
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }
}


// import 'package:admin_tow_tech/Api/api.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
//
// import 'indicator.dart';
//
// double active, total;
//
// class PieChartSample2 extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => PieChart2State();
// }
//
// class PieChart2State extends State {
//   int touchedIndex;
//
//   // ignore: top_level_instance_method
//   final data = ApiData().fetchCourses();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: data,
//       builder: (context, snapshot) {
//         active = 0;
//         if (snapshot.hasData) {
//           total = snapshot.data.length.toDouble();
//           for (int i = 0; i < snapshot.data.length; i++) {
//             if (snapshot.data[i]['course_status'] == '1') {
//               active += 1;
//             }
//           }
//           return Column(
//             children: <Widget>[
//               Row(
//                 children: [
//                   Expanded(
//                     child: AspectRatio(
//                       aspectRatio: 3,
//                       child: PieChart(
//                         PieChartData(
//                             pieTouchData:
//                             PieTouchData(touchCallback: (pieTouchResponse) {
//                               setState(() {
//                                 final desiredTouch = pieTouchResponse.touchInput
//                                 is! PointerExitEvent &&
//                                     pieTouchResponse.touchInput
//                                     is! PointerUpEvent;
//                                 if (desiredTouch &&
//                                     pieTouchResponse.touchedSection != null) {
//                                   touchedIndex = pieTouchResponse
//                                       .touchedSection.touchedSectionIndex;
//                                 } else {
//                                   touchedIndex = -1;
//                                 }
//                               });
//                             }),
//                             borderData: FlBorderData(
//                               show: false,
//                             ),
//                             sectionsSpace: 0,
//                             centerSpaceRadius: 40,
//                             sections: showingSections()),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 60.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const <Widget>[
//                         Indicator(
//                           color: Color(0xff0293ee),
//                           text: 'Total Courses',
//                           isSquare: false,
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Indicator(
//                           color: Color(0xfff8b250),
//                           text: 'Active Courses',
//                           isSquare: false,
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Indicator(
//                           color: Color(0xff845bef),
//                           text: 'Total Queries',
//                           isSquare: false,
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Indicator(
//                           color: Color(0xff13d38e),
//                           text: 'Resolved Queries',
//                           isSquare: false,
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Indicator(
//                           color: Color(0xff133d8e),
//                           text: 'Unresolved Queries',
//                           isSquare: false,
//                         ),
//                         SizedBox(
//                           height: 18,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 28,
//               ),
//             ],
//           );
//         } else if (snapshot.hasError) {
//           return Container(
//             height: MediaQuery.of(context).size.height * .5,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.wifi_off_rounded,
//                       size: 80.0,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "No Internet Connection!",
//                       style: TextStyle(
//                         fontSize: 20.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         }
//         return Container(
//           margin: EdgeInsets.only(
//             top: MediaQuery.of(context).size.height / 2.5,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // JumpingText(
//                   //   "Elite High School...",
//                   //   style: TextStyle(
//                   //     fontSize: 20.0,
//                   //     color: Color(0xff007bff),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   List<PieChartSectionData> showingSections() {
//     return List.generate(5, (i) {
//       final isTouched = i == touchedIndex;
//       final double fontSize = isTouched ? 25 : 16;
//       final double radius = isTouched ? 80 : 60;
//       switch (i) {
//         case 0:
//           return PieChartSectionData(
//             color: const Color(0xff0293ee),
//             value: total,
//             title: '$total',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         case 1:
//           return PieChartSectionData(
//             color: const Color(0xfff8b250),
//             value: active,
//             title: '$active',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         case 2:
//           return PieChartSectionData(
//             color: const Color(0xff845bef),
//             value: 5,
//             title: '5',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         case 3:
//           return PieChartSectionData(
//             color: const Color(0xff13d38e),
//             value: 78,
//             title: '78',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         case 4:
//           return PieChartSectionData(
//             color: const Color(0xff133d8e),
//             value: 22,
//             title: '22',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         default:
//           return null;
//       }
//     });
//   }
// }