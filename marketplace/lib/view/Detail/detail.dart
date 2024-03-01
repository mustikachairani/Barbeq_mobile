import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int _selectedIndex = 0;

  // Fungsi untuk menangani perubahan indeks BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xFFE9EAEC),
              leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back))
              ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //gambar
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFE9EAEC),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    color: Color(0xFFE9EAEC).withOpacity(
                                        0.5), // Warna border yang tersamarkan
                                    width: 2.0, // Lebar border
                                  ),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: Center(
                                  child: Image.asset(
                                    'assets/mouse.png',
                                    width: 250.0,
                                    height: 250.0,
                                  ),
                                  // child: Image.network(
                                  //   'https://th.bing.com/th/id/R.e5eece3464b4cc1ffa89d823f8aace44?rik=OkMVK4pPCgW6EQ&riu=http%3a%2f%2fwww.techpowerup.com%2fimg%2f06-08-24%2f12886.jpg&ehk=rgRfxllS%2bstUSt6vxZEfZQs7Ox%2fUb1CTYYquyoPDAgk%3d&risl=&pid=ImgRaw&r=0', // Ganti dengan URL gambar yang sebenarnya
                                  //   width:
                                  //       250.0, // Sesuaikan lebar gambar sesuai kebutuhan Anda
                                  //   height:
                                  //       250.0, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //nama produk
                              const Text(
                                'Logitech Gaming Mouse',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              //ikon like
                              Icon(
                                Icons.favorite,
                                color: Colors.red[600],
                                size: 27.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //rating
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Text(
                                'Rp.1.240.000',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          //warna produk
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Color',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          //deskripsi barang
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deskripsi Barang',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Kondisi barang : Tidak ada kerusakan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              Text(
                                'Lama Pemakaian barang : 1 bulan pemakaian',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              Text(
                                'Dokumen dan aksesoris : Lengkap',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                    border: Border.all(
                      color: Colors.black, // Warna border yang tersamarkan
                      width: 1.5, // Lebar border
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //IB MESSAGE
                      Container(
                        padding:
                            EdgeInsets.all(2), // Adjust the size of the border
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors
                                .black54, // Adjust the color to desired one
                            width: 1, // Adjust the thickness
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message, // Replace with any icon you need
                            size: 20, // Adjust size as needed
                            color: Colors.black,
                          ),
                        ),
                      ),

                      //IB CART
                      Container(
                        padding:
                            EdgeInsets.all(2), // Adjust the size of the border
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors
                                .black54, // Adjust the color to desired one
                            width: 1, // Adjust the thickness
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons
                                .shopping_cart_outlined, // Replace with any icon you need
                            size: 20, // Adjust size as needed
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB50B0B),
                            minimumSize: Size(200, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Atur sesuai kebutuhan
                            ),
                          ),
                          child: Text(
                            'Buy Now',
                            style: TextStyle(fontSize: 17),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
