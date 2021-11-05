import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const UserProductItem({required this.title, required this.imageUrl, Key? key})
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
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                )),
            IconButton(
                color: Theme.of(context).errorColor,
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                )),
          ],
        ),
      ),
    );
  }
}
