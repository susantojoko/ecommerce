import 'package:flutter/material.dart';
import 'payment.dart';
// import '../fucntion/fucntion.dart';
import '../data/data.dart';

class ProductDetailPage extends StatefulWidget {
  final String imageUrl;
  final String jenis;
  final String warna;
  final double rating;
  final int reviewCount;
  final double price;

  ProductDetailPage({
    required this.imageUrl,
    required this.jenis,
    required this.warna,
    required this.rating,
    required this.reviewCount,
    required this.price,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
   // Menggunakan List<CartItem> untuk menyimpan item belanja

  String selectedSize = 'S';

  // ALERT
  void _showSizeSelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top:400.0),
          child: AlertDialog(
            title: Text('Pilih Ukuran'),
            backgroundColor: Colors.amber,
            contentPadding: EdgeInsets.all(0), // Atur padding ke nol
            content: SingleChildScrollView( // Gunakan SingleChildScrollView
              child: Container(
                height: 200, // Atur lebar sesuai kebutuhan
                child: Column(
                  children: <Widget>[
                    DropdownButton<String>(
                      value: selectedSize,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            selectedSize = newValue;
                          });
                        }
                      },
                      items: <String>['S', 'M', 'L', 'XL']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 20),
                    
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Implementasi logika untuk menambahkan produk ke keranjang belanja
                        // atau melanjutkan ke halaman checkout.
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage()));
                      },
                      child: Text('Checkout'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _addData() {
    // Membuat objek CartItem dengan data produk yang sedang ditampilkan
    CartItem newItem = CartItem(widget.jenis, 1, widget.price);

    setState(() {
      cartItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.jenis)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 360,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(widget.imageUrl),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.jenis,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Rp ${widget.price}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2a977d),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '${widget.rating} | ${widget.reviewCount} Terjual',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Spesifikasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Deskripsi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(widget.warna),
                    Text('Bahan Berkualitas'),
                    Text('Bahan Berkualitas'),
                    Text('Bahan Berkualitas'),
                    Text('Bahan Berkualitas'),
                  ],
                ),
              ),
            ),
            buildKeranjang(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Tambahkan logika untuk chat di sini
                    },
                    icon: Icon(Icons.chat),
                  ),
                  SizedBox(width: 20,),
                  IconButton(
                    onPressed: (){
                    CartItem newItem = CartItem(widget.jenis, 1, widget.price);
                      cartItems.add(newItem); },
                    icon: Icon(Icons.shopping_cart),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.redAccent,
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: MaterialButton(
                    onPressed: () {

                      _showSizeSelectionDialog();
                      _showCartDialog();
                      // Tambahkan logika untuk pembelian di sini
                    },
                    child: Text('Beli Sekarang'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan logika untuk menampilkan keranjang belanja di sini
          _showCartDialog();
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }

  // Metode untuk menampilkan dialog keranjang belanja
  void _showCartDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Keranjang Belanja'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cartItems.map((item) {
              return ListTile(
                title: Text(item.jenis),
                subtitle: Text(
                  'Quantity: ${item.quantity}, Price: \$${item.price.toStringAsFixed(2)}',
                ),
              );
            }).toList(),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
  Widget buildKeranjang (BuildContext context) {
     if (cartItems.isEmpty) {
    // Jika cartItems kosong, tampilkan pesan kosong
    return Center(
      child: Text('Keranjang belanja kosong'),
    );
  } else {
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: cartItems.map((item) {
              return ListTile(
                title: Text(item.jenis),
                subtitle: Text(
                  'Quantity: ${item.quantity}, Price: \$${item.price.toStringAsFixed(2)}',
                ),
              );
            }).toList(),
      )
    );
  }
}
}