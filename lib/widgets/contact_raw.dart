import 'package:clement_guyon/model/managers/hypertext_manager.dart';
import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  final String coordinates;
  final String fieldName;
  final String link;
  final String uriType;

  const ContactRow({
    Key? key,
    required this.fieldName,
    required this.coordinates,
    required this.link,
    required this.uriType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 7.0,
        top: 3,
        bottom: 3,
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    fieldName,
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                    top: 5,
                    right: 7,
                  ),
                  child: TextButton(
                    onPressed: () {
                      HyperTextManager.launchHyperText(
                        link,
                        uriType,
                      );
                    },
                    child: Text(
                      coordinates,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
