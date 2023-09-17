import 'package:flutter/material.dart';
import 'payment.dart'; // Pastikan Anda mengganti ini dengan path yang benar
// import '../fucntion/fucntion.dart'; // Pastikan Anda mengganti ini dengan path yang benar
import '../data/data.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<CartItem> newCartItems = List<CartItem>.from(cartItems); // Salin data dari cartItems ke newCartItems

@override
Widget build(BuildContext context) {
  double subtotal = 0.0;
  for (var item in newCartItems) {
    subtotal += item.quantity * item.price;
  }

  return Scaffold(
    appBar: AppBar(
      title: Text('Keranjang Belanja'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          },
          icon: Icon(Icons.shopping_cart),
        )
      ],
    ),
    body: newCartItems.isEmpty // Periksa apakah newCartItems kosong
        ? Center(
            child: Text('Keranjang belanja kosong'), // Tampilkan pesan jika kosong
          )
        : ListView.builder(
            itemCount: newCartItems.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(newCartItems[index].jenis),
                subtitle: Text('Harga: \Rp${newCartItems[index].price.toStringAsFixed(2)}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (newCartItems[index].quantity > 1) {
                            newCartItems[index].quantity--;
                          }
                        });
                      },
                    ),
                    Text(newCartItems[index].quantity.toString()),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          newCartItems[index].quantity++;
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
    bottomNavigationBar: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Subtotal: \Rp${subtotal.toStringAsFixed(2)}'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              );
              // Tambahkan logika untuk melanjutkan ke halaman checkout di sini
            },
            child: Text('Lanjut ke Checkout'),
          ),
        ],
      ),
    ),
  );
}
}