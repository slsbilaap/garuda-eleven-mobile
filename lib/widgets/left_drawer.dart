import 'package:flutter/material.dart';
import 'package:garuda_eleven/screens/login.dart';
import 'package:garuda_eleven/screens/menu.dart';
import 'package:garuda_eleven/screens/productlist_form.dart';
import 'package:garuda_eleven/screens/products_entry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(color: Colors.blueGrey[200]),
            child: Column(
              children: [
                Text(
                  "Garuda Eleven",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Temukan kebutuhan olahragamu!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[800],
                  ),
                ),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),

          // listtile add product
          ListTile(
            leading: const Icon(Icons.add_business_rounded),
            title: const Text('Create Product'),
            // Redirection ke MyHomePage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductsFormPage()),
              );
            },
          ),

          // listtile view products
          ListTile(
            leading: const Icon(Icons.shopify),
            title: const Text('View All Products'),
            // Redirection ke MyHomePage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsEntryListPage(filter: 'all',),
                ),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.store_rounded),
            title: const Text('View My Products'),
            // Redirection ke MyHomePage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsEntryListPage(filter: 'user',),
                ),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
