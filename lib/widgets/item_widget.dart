import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../store/app_state.dart';
import '../store/actions.dart';

// Widget untuk menampilkan item
class ItemWidget extends StatelessWidget {
  final String item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          StoreProvider.of<AppState>(context).dispatch(RemoveItemAction(item));
        },
      ),
    );
  }
}
