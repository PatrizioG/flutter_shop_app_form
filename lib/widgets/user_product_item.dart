import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String image;

  const UserProductItem({
    Key? key,
    required String this.title,
    required String this.image,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                icon: Icon(Icons.edit)),
            IconButton(
                color: Theme.of(context).errorColor,
                onPressed: () {},
                icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
