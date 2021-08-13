import 'package:flutter/material.dart';
import 'package:flutter_shop_app_form/providers/cart.dart';
import 'package:flutter_shop_app_form/providers/orders.dart';
import 'package:flutter_shop_app_form/providers/products.dart';
import 'package:flutter_shop_app_form/screens/cart_screen.dart';
import 'package:flutter_shop_app_form/screens/orders_screen.dart';
import 'package:flutter_shop_app_form/screens/product_detail_screen.dart';
import 'package:flutter_shop_app_form/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => Products(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Cart(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Orders(),
          ),
        ],
        child: MaterialApp(
            title: 'MyShop',
            theme: ThemeData(
              primarySwatch: Colors.purple,
              accentColor: Colors.deepOrange,
              fontFamily: 'Lato',
            ),
            home: ProductsOverviewScreen(),
            routes: {
              ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
              CartScreen.routeName: (ctx) => CartScreen(),
              OrdersScreen.routeName: (ctx) => OrdersScreen(),
            }));
  }
}
