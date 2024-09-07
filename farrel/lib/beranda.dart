import 'package:flutter/material.dart';

class BerandaApp extends StatefulWidget {
  BerandaApp({Key? key}) : super(key: key);

  @override
  State<BerandaApp> createState() => _BerandaAppState();
}

class _BerandaAppState extends State<BerandaApp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            height: 30,
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Cari...',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Harga Promo'),
                const SizedBox(height: 8),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        buildImageWithLabel('images/ml.png', 'Mobile Legends'),
                        buildImageWithLabel('images/pubgm.png', 'PUBG Mobile'),
                        buildImageWithLabel('images/telkomsel.png', 'Telkomsel'),
                        buildImageWithLabel('images/three.png', 'Three'),
                        buildImageWithLabel('images/axis.png', 'Axis'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Produk Terpopuler'),
                const SizedBox(height: 8),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        buildImageWithLabel('images/ml.png', 'Mobile Legends'),
                        buildImageWithLabel('images/pubgm.png', 'PUBG Mobile'),
                        buildImageWithLabel('images/telkomsel.png', 'Telkomsel'),
                        buildImageWithLabel('images/three.png', 'Three'),
                        buildImageWithLabel('images/axis.png', 'Axis'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      ElevatedButton(onPressed: (){}, child: Text('All')),
                      ElevatedButton(onPressed: (){}, child: Text('Games')),
                      ElevatedButton(onPressed: (){}, child: Text('Pulsa')),
                      ElevatedButton(onPressed: (){}, child: Text('Paket Data')),
                      ElevatedButton(onPressed: (){}, child: Text('E-Wallet')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 8),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: <Widget>[
                    buildImageWithLabel('images/ml.png', 'Mobile Legends'),
                    buildImageWithLabel('images/pubgm.png', 'PUBG Mobile'),
                    buildImageWithLabel('images/ff.png', 'Free Fire'),
                    buildImageWithLabel('images/three.png', 'Three'),
                    buildImageWithLabel('images/telkomsel.png', 'Telkomsel'),
                    buildImageWithLabel('images/xl.png', 'XL'),
                    buildImageWithLabel('images/axis.png', 'Axis'),
                    buildImageWithLabel('images/ovo.png', 'OVO'),
                    buildImageWithLabel('images/dana.png', 'DANA'),
                    buildImageWithLabel('images/gopay.png', 'Gopay'),
                    buildImageWithLabel('images/ShopeePay.png', 'Shopee Pay'),
                    buildImageWithLabel('images/pln.png', 'Token PLN'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageWithLabel(String imagePath, String label) {
    return Container(
      width: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 75,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
