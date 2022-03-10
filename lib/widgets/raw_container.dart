import 'package:flutter/material.dart';

class RawContainer extends StatefulWidget {
  final List<Widget> givenWidgetList;

  const RawContainer({
    Key? key,
    required this.givenWidgetList,
  }) : super(key: key);

  @override
  _RawContainerState createState() => _RawContainerState();
}

class _RawContainerState extends State<RawContainer> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 8, top: 4),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: const BorderRadius.all(
            Radius.circular(9),
          ),
        ),
        child: Column(
          children: widget.givenWidgetList,
        ),
      ),
    );
  }
}
