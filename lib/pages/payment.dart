import 'package:flutter/material.dart';


class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Total Payment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Rp 1.500.000',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff2a977d),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Credit Card'),
              onTap: () {
                // Tambahkan logika untuk pemilihan kartu kredit
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Wallet'),
              onTap: () {
                // Tambahkan logika untuk pemilihan dompet elektronik
              },
            ),
            SizedBox(height: 32),
            Text(
              'Billing Address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'City',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Postal Code',
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk melakukan pembayaran
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
