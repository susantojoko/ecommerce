import 'package:flutter/material.dart';

class FillImageCard extends StatelessWidget {
  final String imageUrl;
  final String jenis;
  final String warna;
  final double rating;
  final int reviewCount;
  final double price;

  FillImageCard({
    required this.imageUrl,
    required this.jenis,
    required this.warna,
    required this.rating,
    required this.reviewCount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jenis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  warna,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '$rating ($reviewCount reviews)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),
                    ),
                  ],
                ),
                Text(
                  'Rp $price',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
