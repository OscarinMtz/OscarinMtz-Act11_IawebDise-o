import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CarritoPage(),
  ));
}

class CarritoPage extends StatelessWidget {
  CarritoPage({Key? key}) : super(key: key);

  // Colores sólidos
  final Color bgBody = Color(0xFFD6D6D6); 
  final Color bannerBlue = Color(0xFFB2EBF2); 
  final Color buttonOrange = Color(0xFFFFB74D); 
  final Color arrowBoxBlue = Color(0xFFE0F7FA); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBody,
      body: SafeArea(
        child: Column(
          children: [
            // Barra Superior
            Container(
              color: bannerBlue,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('OscarMtz', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(width: 10),
                  Icon(Icons.menu, size: 28),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Título TU CARRITO
                    Text(
                      'TU\nCARRITO',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        height: 1.0,
                      ),
                    ),
                    SizedBox(height: 30),

                    // LISTA DE PRODUCTOS
                    // Imagen actualizada a un Mouse Gamer real
                    _buildItem("Raton AMD™", "29.00\$", "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=500"),
                    _buildItem("Teclado Logitech", "40.00\$", "https://images.unsplash.com/photo-1511467687858-23d96c32e4ae?w=500"),
                    _buildItem("Monitor Ryzen", "250.00\$", "https://images.unsplash.com/photo-1528928441742-b4ccac1bb04c?w=500"),

                    SizedBox(height: 10),
                    Divider(color: Colors.black38, thickness: 1.5),
                    
                    Text(
                      'Total: 319',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 20),

                    // Botón PAGAR
                    Center(
                      child: Container(
                        width: 180,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: buttonOrange,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.black38),
                        ),
                        child: Center(
                          child: Text(
                            'PAGAR',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String nombre, String precio, String imgUrl) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen del producto
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
            ),
            child: Image.network(imgUrl, fit: BoxFit.cover),
          ),
          SizedBox(width: 15),
          // Info del Producto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nombre, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(precio, style: TextStyle(fontSize: 20, color: Colors.black54)),
              ],
            ),
          ),
          // Unidades
          Column(
            children: [
              Container(
                width: 45,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                child: Text('1', style: TextStyle(fontSize: 18)),
              ),
              Container(
                width: 45,
                height: 30,
                decoration: BoxDecoration(
                  color: arrowBoxBlue,
                  border: Border(
                    left: BorderSide(color: Colors.black26),
                    right: BorderSide(color: Colors.black26),
                    bottom: BorderSide(color: Colors.black26),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Flechas en AZUL CLARO
                    Text('<', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.cyan)),
                    SizedBox(width: 5),
                    Text('>', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.cyan)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}