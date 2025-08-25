// import 'package:flutter/material.dart';
// import 'package:foodelo_demo/widgets/waveclipper.dart';
// import 'splash_screen3.dart';

// class Splash2 extends StatelessWidget {
//   const Splash2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(children: const [Splash2Content(), Splash3()]),
//     );
//   }
// }

// class Splash2Content extends StatelessWidget {
//   const Splash2Content({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ClipPath(
//           clipper: OvalClipper(),
//           child: Container(
//             height: 500,
//             width: double.infinity,
//             color: const Color.fromARGB(255, 255, 1, 1),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset("assets/images/splash2.png", height: 250),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(height: 20),
//         const Text(
//           "Multiple kitchens, countless cravings satisfied",
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           child: Text(
//             "order from a variety of top-rated restaurants anytime you want.",
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
//                 MaterialPageRoute(builder: (_) => const Splash3()),
//               );
//             },
//             child: const Text(
//               "Continue",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 255, 255, 255),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
