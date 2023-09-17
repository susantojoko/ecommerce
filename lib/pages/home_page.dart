import 'package:flutter/material.dart';
import 'detail_product.dart';
import '../data/data.dart';
import 'fillImage.dart'; 
import '../fucntion/fucntion.dart';


class MainHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
  //     appBar: AppBar(
  // backgroundColor: Colors.blueAccent,
  // title: Container(
  //   child: buildSearchBar(), // Menggunakan fungsi buildSearchBar()
  // ),),
     
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            buildPromoCarousel(),
            SizedBox(height: 30,),
            buildProductPromo(context),
            SizedBox(height: 30,), // Pass BuildContext to this function
            buildProductSection(context), // Pass BuildContext to this function
            
          ],
        ),
      ),
    );
  }
  Widget buildSearchBar() {
    return Container(
      color: Colors.blueAccent,
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 1),
            child: Container(
              height: 40,
              width: 140,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 5,),
          PopupMenuButton<String>(
          onSelected: (value) {
            // Tambahkan logika untuk setiap pilihan yang dipilih
            if (value == 'kategori') {
              // Navigasi atau tampilkan halaman kategori
            } else if (value == 'bantuan') {
              // Navigasi atau tampilkan halaman bantuan
            } else if (value == 'scan') {
              // Tambahkan logika untuk scan
            } else if (value == 'lainnya') {
              // Tampilkan opsi lainnya
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'kategori',
              child: Text('Kategori'),
            ),
            const PopupMenuItem<String>(
              value: 'bantuan',
              child: Text('Bantuan'),
            ),
            const PopupMenuItem<String>(
              value: 'scan',
              child: Text('Scan'),
            ),
            const PopupMenuItem<String>(
              value: 'lainnya',
              child: Text('Lainnya'),
            ),
        ],
      ),
        ],
    ),
    );
  }

  Widget buildBadgeIcon(IconData icon, String badgeText) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Badge(
        label: Text(badgeText),
        child: Icon(icon),
      ),
    );
  }

  Widget buildPromoCarousel() {
    return Container(
      height: 120,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildPromoImage('assets/images/promo.jpg'),
          buildPromoImage('assets/images/promo.jpg'),
          buildPromoImage('assets/images/promo.jpg'),
          buildPromoImage('assets/images/promo.jpg'),
          // Tambahkan gambar-gambar promosi lainnya di sini
        ],
      ),
    );
  }

  Widget buildPromoImage(String imageUrl) {
    return Container(
      width: 320,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
      child: Padding(padding: EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Icon(Icons.favorite,
          size: 20,
          color: Colors.red
          ),
        ),
      ),
      ),
    );
  }
  Widget buildProductSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [ 
            buildProductSectionHeader(),
            Container(
              width: double.infinity,
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children:[
                  buildProductRow(context), // Pass BuildContext to this function
                  buildProductRow(context), // Pass BuildContext to this function
                  buildProductRow(context),
                  buildProductRow(context),
                  buildProductRow(context),
                  ],
                ),
                  ),          ],
        ),
      ),
    );
  
  }
  Widget buildProductPromo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: Container(
        width:double.infinity,
        child: Column(
          children: [
            buildProductPromoHeader(),
            Container(
              width: double.infinity,
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children:[
                  buildProductRow1(context), // Pass BuildContext to this function
                  buildProductRow1(context), // Pass BuildContext to this function
                  buildProductRow1(context),
                  buildProductRow1(context),
                  buildProductRow1(context),
                  ],
                ),
            ),
             // Pass BuildContext to this function
          ],
        ),
      ),
    );
  }

  Widget buildProductSectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recommended',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
    //     GestureDetector(
    //   onTap: () {
    //   Navigator.of(navigatorKey.currentContext!).push(
    //         MaterialPageRoute(builder: (context) => ProductPage()),
    //     );  // Tambahkan logika untuk tindakan saat "see more" diklik di sini
    //   },
    //   child: Text(
    //     'see more',
    //     style: TextStyle(
    //       fontSize: 12,
    //       color: Colors.red,
    //       decoration: TextDecoration.underline, // Menambahkan garis bawah pada teks
    //     ),
    //   ),
    // ),
      ],
    );
  }

  Widget buildProductPromoHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Promo',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
    //     GestureDetector(
    //   onTap: () {
    //   Navigator.of(navigatorKey.currentContext!).push(
    //         MaterialPageRoute(builder: (context) => ProductPage()),
    //     );  // Tambahkan logika untuk tindakan saat "see more" diklik di sini
    //   },
    //   child: Text(
    //     'see more',
    //     style: TextStyle(
    //       fontSize: 12,
    //       color: Colors.red,
    //       decoration: TextDecoration.underline, // Menambahkan garis bawah pada teks
    //     ),
    //   ),
    // ),
      ],
    );
  }

//nb prono diambil dari product section 

  Widget buildProductRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: pakaian.map((product){
        return buildProductItem(
          product['imageUrl'],
          product['jenis'],
          product['warna'],
          product['rating'],
          product['reviewCount'],
          product['price'],
          context,
        );
    },).toList(),
    );
  }
  Widget buildProductRow1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: pakaian.map((product){
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: FillImageCard(
                imageUrl:product['imageUrl'], // Ganti dengan URL gambar produk Anda
                jenis: product['jenis'],
                warna: product['warna'],
                rating: product['rating'], // Ganti dengan peringkat produk Anda
                reviewCount: product['reviewCount'], // Ganti dengan jumlah ulasan produk Anda
                price: product['price'],    
          ),
        );
      },).toList(),
    );
  }

  
}
