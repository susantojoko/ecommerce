
// products_data.dart
List<Map<String, dynamic>> products = [
  {
    'imageUrl': 'assets/images/pakaian/jeans.jpg',
    'productName': 'SmartPhone1',
    'rating': 4.5,
    'reviewCount': 3987,
    'price': 1.500000,
  },
  {
    'imageUrl': 'assets/images/hp2.jpg',
    'productName': 'SmartPhone2',
    'rating': 4.0,
    'reviewCount': 2750,
    'price': 1.200000,
  },
  {
    'imageUrl': 'assets/images/hp3.jpg',
    'productName': 'SmartPhone3',
    'rating': 4.0,
    'reviewCount': 2750,
    'price': 1.900000,
  },
  // Tambahkan produk lainnya di sini
];

List<Map<String, dynamic>> pakaian = [
  {
    'imageUrl': 'assets/images/pakaian/jeans.jpg',
    'jenis': 'jeans',
    'warna': 'merah',
    'rating': 4.0,
    'reviewCount': 2750,
    'price': 170000.00,
  },
  {
    'imageUrl': 'assets/images/pakaian/kemeja1.jpg',
    'jenis': 'kemeja',
    'warna': 'merah',
    'rating': 4.0,
    'reviewCount': 2750,
    'price': 100000.00,
  },
  {
    'imageUrl': 'assets/images/pakaian/kemeja2.jpg',
    'jenis': 'kemeja',
    'warna': 'merah',
    'rating': 4.0,
    'reviewCount': 2750,
    'price': 50000.00,
  },
  {
    'imageUrl': 'assets/images/pakaian/kaos1.jpg',
    'jenis': 'kaos',
    'warna': 'merah',
    'rating': 4.0,
    'reviewCount': 2750,
    'price': 20000.00,
  },
];

//data
class CartItem {
  String jenis;
  int quantity;
  double price;

  CartItem(this.jenis, this.quantity, this.price,);
}
List<CartItem> cartItems = [];