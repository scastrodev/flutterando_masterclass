import 'package:flutter/material.dart';
import 'package:implied_animation_02/tile_item.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({super.key, required this.item});

  final TileItem item;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;
  void setExpanded() => setState(() => isExpanded = !isExpanded);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 4,
          color: isExpanded ? Colors.blue : null,
          child: ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 700),
                  style: isExpanded ? buildTitleStyle(color: Colors.white) : buildTitleStyle(),
                  child: Text(widget.item.title),
                ),
              ],
            ),
            onTap: setExpanded,
            trailing: AnimatedRotation(
              curve: Curves.easeOut,
              turns: isExpanded ? 0 : -0.5,
              duration: const Duration(milliseconds: 700),
              child: Icon(
                Icons.expand_less,
                size: 28,
                color: isExpanded ? Colors.white : Colors.blue,
              ),
            ),
          ),
        ),
        ClipRect(
          child: AnimatedAlign(
            curve: Curves.easeOutCirc,
            alignment: Alignment.center,
            widthFactor: isExpanded ? 2 : 0,
            heightFactor: isExpanded ? 1 : 0,
            duration: const Duration(seconds: 1),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(maxRadius: 50, backgroundImage: NetworkImage(widget.item.contentImageUrl)),
                        Text(widget.item.contentText),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  TextStyle buildTitleStyle({Color? color = Colors.blue}) {
    return TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w700);
  }
}
