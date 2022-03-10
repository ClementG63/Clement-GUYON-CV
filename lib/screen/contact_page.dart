import 'package:clement_guyon/widgets/contact_raw.dart';
import 'package:clement_guyon/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blue,
                      ),
                      Text(
                        "Accueil",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Contact",
                  style: TextStyle(color: Theme.of(context).primaryColorLight),
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        foregroundColor: Theme.of(context).primaryColorLight,
        titleSpacing: 0,
        leadingWidth: 120,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17, 25.0, 17, 25),
        child: Container(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 8, top: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: const BorderRadius.all(
              Radius.circular(9),
            ),
          ),
          child: Column(
            children: const [
              ContactRow(
                fieldName: "Numéro de téléphone",
                coordinates: "07.81.91.53.32",
                link: "0781915332",
                uriType: "tel",
              ),
              CustomDivider(),
              ContactRow(
                fieldName: "Adresse mail",
                coordinates: "clement.guyon1@gmail.com",
                link: "clement.guyon1@gmail.com",
                uriType: "mailto",
              ),
              CustomDivider(),
              ContactRow(
                fieldName: "Linkedin",
                coordinates: "in/clementguyon/",
                link: "//www.linkedin.com/in/clementguyon",
                uriType: "http",
              ),
              CustomDivider(),
              ContactRow(
                fieldName: "Instagram",
                coordinates: "@clementg.photos",
                link: "//www.instagram.com/clementg.photos/",
                uriType: "http",
              ),
              CustomDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
