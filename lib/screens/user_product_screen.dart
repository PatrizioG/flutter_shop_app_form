import 'package:flutter/material.dart';
import 'package:flutter_shop_app_form/providers/products.dart';
import 'package:flutter_shop_app_form/widgets/app_drawer.dart';
import 'package:flutter_shop_app_form/widgets/user_product_item.dart';
import 'package:provider/provider.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({Key? key}) : super(key: key);
  static const routeName = '/user-product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your products'),
        actions: [
          IconButton(
              onPressed: null,
              icon: const Icon(Icons.add))
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Consumer<Products>(
          builder: (context, products, child) => ListView.builder(
                itemCount: products.items.length,
                itemBuilder: (_, i) => UserProductItem(
                    title: products.items[i].title,
                    image: products.items[i].imageUrl))
        ),
      ),
    );
  }
}
