// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tela_login_goga/pages/alugueis.dart';
import 'package:tela_login_goga/pages/clientes.dart';
import 'package:tela_login_goga/pages/enderecos.dart';
import 'package:tela_login_goga/pages/homepage.dart';

import 'equipamentos.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  static logout() {
    Get.offAll(HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Base Equipamentos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: logout,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Get.to(() => AlugueisPage());
                },
                child: Text('Alugueis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {Get.to(() => ClientesPage());},
                child: Text('Clientes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: () {Get.to(() => EquipamentosPage());},
                child: Text('Equipamentos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {Get.to(() => EnderecosPage());},
                child: Text(
                  'Endereços',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
