import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/edit_products_screen.dart';
import 'package:provider/provider.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;

  const UserProductItem(
      {required this.id, required this.title, required this.imageUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          imageUrl,
        ),
      ),
      trailing: SizedBox(
        width: 150,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(EditProductsScreen.routeName, arguments: id);
                },
                icon: const Icon(
                  Icons.edit,
                )),
            IconButton(
                color: Theme.of(context).errorColor,
                onPressed: () {
                  Provider.of<Products>(context, listen: false)
                      .deleteProduct(id);
                },
                icon: const Icon(
                  Icons.delete,
                )),
          ],
        ),
      ),
    );
  }
}
