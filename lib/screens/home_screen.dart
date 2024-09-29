import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../store/app_state.dart';
import '../store/actions.dart';
import '../widgets/item_widget.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Redux Example')),
      body: StoreConnector<AppState, List<String>>(
        converter: (store) => store.state.items,
        builder: (context, items) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(item: items[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(hintText: 'Add Item'),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        if (_controller.text.isNotEmpty) {
                          StoreProvider.of<AppState>(context).dispatch(
                            AddItemAction(_controller.text),
                          );
                          _controller.clear();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
