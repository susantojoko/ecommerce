
// import 'package:flutter/material.dart';
// import 'profile_page.dart';

// class MainHomePage extends StatelessWidget {
//   final GlobalKey<NavigatorState> navigatorKey;

//   MainHomePage({required this.navigatorKey});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       bottomNavigationBar: BottomAppBar(
//         height: 100,
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   Icon(Icons.home_filled),
//                   Text('Home')
//                 ],
//               ),
//               Column(
//                 children: [
//                   Icon(Icons.add_card_rounded),
//                   Text('Voucher')
//                 ],
//               ),
//               Column(
//                 children: [
//                   Icon(Icons.wallet),
//                   Text('Wallet')
//                 ],
//               ),
//               Column(
//                 children: [
//                   IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {
//                 // Navigasi ke halaman profile.dart saat tombol Settings ditekan
//                 Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => ProfilePage()),
//                 );
//               },
//             ),
//             Text('Setting')
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: Colors.blueAccent,
//               width: 360,
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 10),
//                     child: Container(
//                       height: 40,
//                       width: 230,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(
//                             Icons.search,
//                             size: 20,
//                           ),
//                           hintText: 'Search...',
//                           hintStyle: TextStyle(
//                             fontSize: 15,
//                             color: Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(top: 10),
//                     child: Badge(
//                       label: Text("2"),
//                       child: Icon(Icons.shopping_cart),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     margin: EdgeInsets.only(top: 10, right: 20),
//                     child: Badge(
//                       label: Text("2"),
//                       child: Icon(Icons.chat),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               height: 180,
//               width: double.infinity,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Container(
//                     width: 360,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage('assets/images/promo.jpg'),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 360,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage('assets/images/promo.jpg'),
//                       ),
//                     ),
//                   ),
//                   // Tambahkan gambar-gambar promosi lainnya di sini
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 80,
//                     width: 360,
//                     color: Colors.lightBlue,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffF6F6F6),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Container(
//                                   height: 35,
//                                   width: 35,
//                                   child: Icon(
//                                     Icons.grid_3x3_rounded,
//                                   ),
//                                 ),
//                               ),
//                               Text('Category'),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffF6F6F6),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Container(
//                                   height: 35,
//                                   width: 35,
//                                   child: Icon(
//                                     Icons.smartphone_sharp,
//                                   ),
//                                 ),
//                               ),
//                               Text('SmartPhone'),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffF6F6F6),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Container(
//                                   height: 35,
//                                   width: 35,
//                                   child: Icon(
//                                     Icons.smartphone,
//                                   ),
//                                 ),
//                               ),
//                               Text('Smartphone'),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffF6F6F6),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Container(
//                                   height: 35,
//                                   width: 35,
//                                   child: Icon(
//                                     Icons.smartphone_outlined,
//                                   ),
//                                 ),
//                               ),
//                               Text('SmartPhone'),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 18.0, right: 10),
//               child: Container(
//                 width: 360,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Product',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       'see more',
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 20, left: 30, right: 30),
//               child: Container(
//                 width: 360,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 150,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image(
//                                 height: 60,
//                                 width: 150,
//                                 image: AssetImage('assets/images/hp1.jpg'),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'SmartPhone1',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.orange,
//                                     ),
//                                     Text(
//                                       '4,5 | 3987',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),
//                                     Text(
//                                       'Rp 1.500.000',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff2a977d),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 150,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image(
//                                 height: 60,
//                                 width: 150,
//                                 image: AssetImage('assets/images/hp1.jpg'),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'SmartPhone1',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.orange,
//                                     ),
//                                     Text(
//                                       '4,5 | 3987',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),
//                                     Text(
//                                       'Rp 1.500.000',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff2a977d),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 150,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image(
//                                 height: 60,
//                                 width: 150,
//                                 image: AssetImage('assets/images/hp1.jpg'),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'SmartPhone1',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.orange,
//                                     ),
//                                     Text(
//                                       '4,5 | 3987',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),
//                                     Text(
//                                       'Rp 1.500.000',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff2a977d),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 150,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image(
//                                 height: 60,
//                                 width: 150,
//                                 image: AssetImage('assets/images/hp1.jpg'),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'SmartPhone1',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.orange,
//                                     ),
//                                     Text(
//                                       '4,5 | 3987',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),
//                                     Text(
//                                       'Rp 1.500.000',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff2a977d),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 150,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image(
//                                 height: 60,
//                                 width: 150,
//                                 image: AssetImage('assets/images/hp1.jpg'),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'SmartPhone1',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Row(
//                                       children: [
//                                         Icon(
//                                       Icons.star,
//                                       size: 10,
//                                       color: Colors.orange,
//                                     ),
//                                     SizedBox(width: 3,),
//                                     Text(
//                                       '4,5 | 3987',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),

//                                       ],
//                                     ),
                                    
//                                     Text(
//                                       'Rp 1.500.000',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff2a977d),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 150,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image(
//                                 height: 60,
//                                 width: 150,
//                                 image: AssetImage('assets/images/hp1.jpg'),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'SmartPhone1',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.orange,
//                                     ),
//                                     Text(
//                                       '4,5 | 3987',
//                                       style: TextStyle(color: Colors.grey),
//                                     ),
//                                     Text(
//                                       'Rp 1.500.000',
//                                       style: TextStyle(
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.bold,
//                                         color: Color(0xff2a977d),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
