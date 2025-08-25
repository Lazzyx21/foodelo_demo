// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 80);

//     // 🔹 First curve goes UP
//     var firstControlPoint = Offset(size.width / 4, size.height - 160); // higher
//     var firstEndPoint = Offset(size.width / 2,size.height - 100,); // also higher
//     path.quadraticBezierTo(
//       firstControlPoint.dx,
//       firstControlPoint.dy,
//       firstEndPoint.dx,
//       firstEndPoint.dy,
//     );

//     // 🔹 Second curve goes back DOWN
//     var secondControlPoint = Offset(size.width * 3 / 4, size.height);
//     var secondEndPoint = Offset(size.width, size.height - 80);
//     path.quadraticBezierTo(
//       secondControlPoint.dx,
//       secondControlPoint.dy,
//       secondEndPoint.dx,
//       secondEndPoint.dy,
//     );

//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
