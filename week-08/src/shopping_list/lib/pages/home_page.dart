import 'package:flutter/material.dart';
import 'package:shopping_list/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        image: 'assets/gulaku.png',
        stok: 5,
        rating: 4),
    Item(
        name: 'Salt',
        price: 2000,
        image: 'assets/garam.png',
        stok: 12,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID THN 2017-2018 3rd',
        price: 120000,
        image: 'assets/01.jpg',
        stok: 120,
        rating: 4),
    Item(
        name: 'JERSEY REAL MADRID THN 2023 HOME',
        price: 60000,
        image: 'assets/02.jpg',
        stok: 112,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID THN 2023 AWAY',
        price: 50000,
        image: 'assets/03.jpg',
        stok: 19,
        rating: 4),
    Item(
        name: 'JERSEY REAL MADRID THN 2014 AWAY',
        price: 20000,
        image: 'assets/04.jpg',
        stok: 200,
        rating: 3),
    Item(
        name: 'JERSEY REAL MADRID THN 2021 3rd',
        price: 150000,
        image: 'assets/05.jpg',
        stok: 15,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID THN 2017-2018 AWAY',
        price: 111000,
        image: 'assets/06.jpg',
        stok: 121,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID THN 2017-2018 HOME',
        price: 200000,
        image: 'assets/07.jpg',
        stok: 18,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID THN 2017-2018',
        price: 42000,
        image: 'assets/08.jpg',
        stok: 23,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID 2014',
        price: 55000,
        image: 'assets/09.jpg',
        stok: 5,
        rating: 5),
    Item(
        name: 'JERSEY REAL MADRID KIPER CASILAS',
        price: 70000,
        image: 'assets/10.jpg',
        stok: 2,
        rating: 2),
  ];

  HomePage({super.key});

  // pecah widget grid untuk menjawab soal no 5
  Widget BuildGridItem(BuildContext context, int index) {
    final item = items[index];
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item); // no 1
      },
      child: Card(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                    child: Center(
                        child: Hero(
                            // no 4
                            tag: item.image.toString(),
                            child: Image.asset(item.image.toString())))),
              ),
              Text(
                item.name.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp. ' + item.price.toString(),
                    textAlign: TextAlign.end,
                  ),
                  Text('Stok : ${item.stok.toString()}'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < 5; i++)
                    (i < item.rating)
                        ? Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          )
                        : Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.black,
                          ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          // no 3
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom dalam grid
            crossAxisSpacing: 8, // Jarak antara kolom
            mainAxisSpacing: 8, // Jarak antara baris
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return BuildGridItem(context, index);
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Nama : Febryan Rizki Hidayatullah",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Nim : 2141720059",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
