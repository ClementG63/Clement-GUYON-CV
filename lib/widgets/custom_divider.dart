import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 45,
      ),
      child: Divider(
        color: Theme.of(context).secondaryHeaderColor.withOpacity(0.2),
      ),
    );
  }
}
