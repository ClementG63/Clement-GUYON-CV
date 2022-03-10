import 'dart:developer';

import 'package:clement_guyon/config.dart';
import 'package:clement_guyon/widgets/custom_divider.dart';
import 'package:clement_guyon/widgets/job_raw.dart';
import 'package:clement_guyon/widgets/raw_container.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool cupertinoSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    log(Theme.of(context).primaryColorLight.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                    top: 10.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Bienvenue",
                      style: TextStyle(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 35),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/maPhoto.jpg"),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 6.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Clément Guyon",
                                      style: TextStyle(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "21 ans, Développeur Flutter",
                                    style: TextStyle(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(9),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(1.0),
                                    child: Icon(
                                      Icons.highlight_rounded,
                                      color:
                                          Theme.of(context).primaryColorLight,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      "Light mode",
                                      style: TextStyle(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CupertinoSwitch(
                              value: cupertinoSwitchValue,
                              onChanged: (value) {
                                setState(() {
                                  cupertinoSwitchValue = !cupertinoSwitchValue;
                                });
                                currentTheme.switchTheme();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    RawContainer(
                      givenWidgetList: [
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: lyonApside,
                              periode: septAjdApside,
                              imageName: "apside.png",
                              jobName: "Apside - Développeur Flutter",
                              contratType: "Contrat en alternance",
                              description: devFlutterApside,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: clermontVille,
                              periode: "Septembre 2020 - Août 2021",
                              imageName: "apside.png",
                              jobName: "Apside - Développeur C#",
                              contratType: "Contrat en alternance",
                              description: devCsharpApside,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: clermontVille,
                              periode: "Août 2020",
                              imageName: "bm.png",
                              jobName: "B&M - Préparateur de commandes",
                              contratType: "Contrat d'intérim",
                              description: prepaCommandes,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: clermontVille,
                              periode: "Mai 2020 - Juin 2020",
                              imageName: "cgi.jpg",
                              jobName: "CGI - Analyse Développeur",
                              contratType: "Stage",
                              description: stageCGI,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: brestVille,
                              periode: "Août 2017 - Juillet 2020",
                              imageName: "marine.jpg",
                              jobName: "Marine Nationale - Réserviste",
                              contratType: "Réserve Opérationnelle",
                              description: reserve,
                            ),
                          ),
                        ),
                      ],
                    ),
                    RawContainer(
                      givenWidgetList: [
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: lyonApside,
                              periode: "2021 - 2023",
                              imageName: "ynov.jpeg",
                              jobName:
                                  "Mastère en Développement Logiciel, Mobile & IoT",
                              contratType: "Ynov Lyon Campus",
                              description: mastere1,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: lyonApside,
                              periode: "2021 - 2023",
                              imageName: "ynov.jpeg",
                              jobName:
                                  "Expert en Informatique et Systèmes d'Information",
                              contratType:
                                  "Bac +5 - Ynov Lyon - Titre RNCP Niveau 7",
                              description: mastere2,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: clermontVille,
                              periode: "2020 - 2021",
                              imageName: "uca.png",
                              jobName:
                                  "Licence Professionnelle - Dévelopepement sur Plateforme Mobile",
                              contratType:
                                  "Bac +3 - Université Clermont Auvergne",
                              description: lp,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: clermontVille,
                              periode: "2020 - 2021",
                              imageName: "uca.png",
                              jobName: "DUT Informatique",
                              contratType:
                                  "Bac +2 - Université Clermont-Auvergne",
                              description: dut,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: sbVille,
                              periode: "2015 - 2018",
                              imageName: "chaptal.png",
                              jobName: "Bac STI2D - Option SIN",
                              contratType: "Lycée Chaptal",
                              description: bac,
                            ),
                          ),
                        ),
                        const CustomDivider(),
                        ExpandableNotifier(
                          child: ScrollOnExpand(
                            child: const JobRaw(
                              localisation: sbVille,
                              periode: "2017 - 2018",
                              imageName: "marine.jpg",
                              jobName: "Préparation Militaire Marine",
                              contratType:
                                  "Marine Nationale - Mention Très Bien",
                              description: reserveFormation,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('/contact'),
                      child: RawContainer(
                        givenWidgetList: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 7, top: 8, bottom: 5),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                      child: Image.asset(
                                        "assets/person.png",
                                        width: 27,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 12.0,
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Contact",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColorLight,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                child: Image.asset(
                                  "assets/petitUn.png",
                                  width: 27,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
