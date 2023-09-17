import 'package:flutter/material.dart';

class ProductDetailPage2 extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage2> {
  String selectedSize = 'S';

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
                    ElevatedButton(
                      onPressed: () {
                        // Implementasi logika untuk menambahkan produk ke keranjang belanja
                        // atau melanjutkan ke halaman checkout.
                        Navigator.of(context).pop();
                        _navigateToCheckout();
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

  void _navigateToCheckout() {
    // Implementasi navigasi ke halaman checkout atau proses pembayaran.
    // Anda dapat menggunakan Navigator untuk berpindah halaman.
    // Contoh:
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CheckoutPage(selectedSize)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/10/28/b6194e12-0ada-409f-9a24-3d4027d59379.jpg'),
            Text('Nama Produk'),
            Text('Harga: \$100'),
            Text('Deskripsi Produk'),
            Text('Ukuran Terpilih: $selectedSize'),
            ElevatedButton(
              onPressed: _showSizeSelectionDialog,
              child: Text('Beli Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutPage extends StatelessWidget {
  final String selectedSize;

  CheckoutPage(this.selectedSize);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Anda telah memilih ukuran: $selectedSize'),
            // Implementasi halaman checkout atau proses pembayaran di sini.
          ],
        ),
      ),
    );
  }
}
