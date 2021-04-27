import 'package:flutter/material.dart';

import 'widgets.dart';

class HorizontalList extends StatefulWidget {
  final List<Widget> widgets;
  final double height;
  const HorizontalList({Key? key, required this.widgets, required this.height})
      : super(key: key);
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  late final ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: widget.height,
          child: ListView(
            controller: _controller,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
                widget.widgets.length, (index) => widget.widgets[index]),
          ),
        ),
        ArrowIcon(
          direction: Icons.arrow_forward,
          alignment: Alignment.centerRight,
          onPressed: () {
            _controller.animateTo(_controller.position.maxScrollExtent,
                duration: Duration(seconds: 2), curve: Curves.easeIn);
          },
        ),
        ArrowIcon(
          direction: Icons.arrow_back,
          alignment: Alignment.centerLeft,
          onPressed: () {
            _controller.animateTo(_controller.position.minScrollExtent,
                duration: Duration(seconds: 2), curve: Curves.easeIn);
          },
        ),
      ],
    );
  }
}
