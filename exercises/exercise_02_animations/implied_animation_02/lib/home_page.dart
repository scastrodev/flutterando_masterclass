import 'package:flutter/material.dart';
import 'package:implied_animation_02/custom_expansion_tile.dart';
import 'package:implied_animation_02/items.dart';
import 'package:implied_animation_02/tile_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: _buildItems(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    List<TileItem> itemsModel = items.map((item) => TileItem.fromJson(item)).toList();
    return itemsModel.map((item) => CustomExpansionTile(item: item)).toList();
  }
}
