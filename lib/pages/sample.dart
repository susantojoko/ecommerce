import 'package:flutter/material.dart';


class MyListView extends StatelessWidget {
  // Buat sebuah daftar (list) dengan beberapa elemen yang memiliki key
  final List<Map<String, dynamic>> items = [
    {"id": 1, "name": "Item 1"},
    {"id": 2, "name": "Item 2"},
    {"id": 3, "name": "Item 3"},
    {"id": 4, "name": "Item 4"},
    {"id": 5, "name": "Item 5"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh ListView dengan Key'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            key: ValueKey<int>(item['id']), // Set key berdasarkan id
            title: Text(item['name']),
          );
        },
      ),
    );
  }
}



// import 'package:flutter/material.dart';


// class Sample extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<Sample> {
//   final List<Map<String, dynamic>> pakaian = [
//     {
//       'imageUrl': 'assets/images/pakaian/jeans.jpg',
//       'jenis': 'jeans',
//       'Warna': ['merah', 'kuning', 'biru', 'hijau'],
//     },
//   ];

//   List<String> selectedColors = [];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Daftar Pakaian'),
//         ),
//         body: Column(
//           children: [
//             Wrap(
//               children: pakaian[0]['Warna'].map<Widget>((warna) {
//                 return FilterChip(
//                   label: Text(warna),
//                   selected: selectedColors.contains(warna),
//                   onSelected: (bool selected) {
//                     setState(() {
//                       if (selected) {
//                         selectedColors.add(warna);
//                       } else {
//                         selectedColors.remove(warna);
//                       }
//                     });
//                   },
//                 );
//               }).toList(),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: pakaian.length,
//                 itemBuilder: (context, index) {
//                   final pakaianItem = pakaian[index];
//                   final imageUrl = pakaianItem['imageUrl'];
//                   final jenis = pakaianItem['jenis'];
//                   final warnaList = pakaianItem['Warna'] as List<dynamic>;

//                   if (selectedColors.isEmpty || selectedColors.any((color) => warnaList.contains(color))) {
//                     return Card(
//                       child: Column(
//                         children: [
//                           Image.asset(imageUrl),
//                           Text('Jenis: $jenis'),
//                           Text('Warna: ${warnaList.join(', ')}'),
//                         ],
//                       ),
//                     );
//                   } else {
//                     return SizedBox.shrink();
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
