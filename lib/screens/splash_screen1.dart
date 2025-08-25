// // import 'package:flutter/material.dart';
// // import '../widgets/oval_clipper.dart';
// // import 'splash_screen2.dart';

// // class Splash1 extends StatelessWidget {
// //   const Splash1({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: PageView(children: const [Splash1Content(), Splash2()]),
// //     );
// //   }
// // }

// // class Splash1Content extends StatelessWidget {
// //   const Splash1Content({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         ClipPath(
// //           clipper: OvalClipper(),
// //           child: Container(
// //             height: 500,
// //             width: double.infinity,
// //             color: Colors.redAccent,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.only(top: 197),
// //                   child: Image.asset(
// //                     "assets/images/girl_ordering.png",
// //                     height: 250,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //         const SizedBox(height: 20),
// //         const Text(
// //           "Your hunger doesn’t wait. Neither do we",
// //           textAlign: TextAlign.center,
// //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //         ),
// //         const SizedBox(height: 10),
// //         const Padding(
// //           padding: EdgeInsets.symmetric(horizontal: 30),
// //           child: Text(
// //             "Choose everything from burgers to biryani – fast, fresh, and just a tap away.",
// //             textAlign: TextAlign.center,
// //             style: TextStyle(color: Colors.grey, fontSize: 16),
// //           ),
// //         ),
// //         const Spacer(),
// //         Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
// //           child: ElevatedButton(
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor: Colors.redAccent,
// //               minimumSize: const Size(double.infinity, 55),
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(15),
// //               ),
// //             ),
// //             onPressed: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (_) => const Splash2()),
// //               );
// //             },
// //             child: const Text(
// //               "Continue",
// //               style: TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'splash_screen2.dart';

// class Splash1 extends StatelessWidget {
//   const Splash1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(children: const [Splash1Content(), Splash2()]),
//     );
//   }
// }

// class Splash1Content extends StatelessWidget {
//   const Splash1Content({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: 385,
//           height: 500,
//           clipBehavior: Clip.antiAlias,
//           decoration: const BoxDecoration(color: Colors.white),
//           child: Stack(
//             children: [
//               Positioned(
//                 child: Container(
//                   width: 385,
//                   height: 380,
//                   decoration: const ShapeDecoration(
//                     color: Color(0xFFF13F53),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(350),
//                         bottomRight: Radius.circular(350),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               Positioned(
//                 top: 197,
//                 left: 0,
//                 right: 0,
//                 child: Image.asset(
//                   "assets/images/girl_ordering.png",
//                   height: 250,
//                 ),
//               ),
//             ],
//           ),
//         ),
        
//         const SizedBox(height: 20),
//         const Text(
//           "Your hunger doesn’t wait. Neither do we",
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           child: Text(
//             "Choose everything from burgers to biryani – fast, fresh, and just a tap away.",
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.grey, fontSize: 16),
//           ),
//         ),
//         const Spacer(),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.redAccent,
//               minimumSize: const Size(double.infinity, 55),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => const Splash2()),
//               );
//             },
//             child: const Text(
//               "Continue",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
