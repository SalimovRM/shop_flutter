import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/app/widgets/CategoriesWidget.dart';
import 'package:shop_flutter/app/widgets/HomeAppBar.dart';
import 'package:shop_flutter/app/widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Colors.white,
        title: const Text(
          "R Shop ",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color(0XFF4C53A5),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Sidebar Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Действия при выборе элемента меню
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Действия при выборе элемента меню
              },
            ),
            // Добавьте остальные элементы меню
          ],
        ),
      ),
      body: ListView(
        
        children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  // controller: _categoriesController.searchController,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.camera_alt_outlined,
                      ),
                      onPressed: () {
                        log("message ====>");
                      },
                      hoverColor: Colors.red,
                      focusColor: Colors.red,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: const TextStyle(
                        fontSize: 16,
                        // fontFamily: "Gentium",
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    hintText: " Поиск...",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 2.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста напишите Имя ученика';
                    }
                    return null;
                  },
                ),
              ),

              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 15),
              //   padding: EdgeInsets.symmetric(horizontal: 15),
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(children: [
              //     Container(
              //       margin: EdgeInsets.only(left: 5),
              //       height: 50,
              //       width: 300,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             border: InputBorder.none, hintText: 'Поиск...'),
              //       ),
              //     ),
              //     // Spacer(),
              //     Icon(Icons.camera_alt, size: 27, color: Color(0XFF4C53A5)),
              //   ]),
              // ),
              Container(
                // alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  'Категории',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF4C53A5)),
                ),
              ), // Categories
              CategoriesWidget(),

              // items

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  'Best Selling',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF4C53A5)),
                ),
              ),
              ItemsWidget(),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
