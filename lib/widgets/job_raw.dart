import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JobRaw extends StatelessWidget {
  final String imageName;
  final String jobName;
  final String periode;
  final String contratType;
  final String description;
  final String localisation;

  const JobRaw({
    Key? key,
    required this.imageName,
    required this.jobName,
    required this.contratType,
    required this.description,
    required this.periode,
    required this.localisation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExpandableController expandableController = ExpandableController.of(context, required: true)!;

    return GestureDetector(
      onTap: () => expandableController.toggle(),
      child: ExpandablePanel(
        controller: expandableController,
        collapsed: buildCollapsedRow(context),
        expanded: buildExpandedRow(context),
      ),
    );
  }

  Container buildExpandedRow(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 7.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  buildJobImage(),
                  buildJobName(context),
                ],
              ),
              Icon(
                Icons.expand_more_rounded,
                color: Theme.of(context).primaryColorLight,
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildContratTypeRow(context),
                  buildPeriodeRow(context),
                  buildLocalisationRow(context),
                  buildDescriptionRow(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ExpandableButton buildCollapsedRow(BuildContext context) {
    return ExpandableButton(
      child: Padding(
        padding: const EdgeInsets.only(left: 7.0),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      buildJobImage(),
                      buildJobName(context),
                    ],
                  ),
                  Icon(
                    Icons.expand_more_rounded,
                    color: Theme.of(context).primaryColorLight,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildJobName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Text(
          jobName,
          style: TextStyle(
            color: Theme.of(context).primaryColorLight,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Container buildJobImage() {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 5),
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
          "assets/$imageName",
          width: 27,
        ),
      ),
    );
  }

  Padding buildContratTypeRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          contratType,
          style: TextStyle(
            color: Theme.of(context).primaryColorLight.withOpacity(0.9),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Padding buildDescriptionRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 10,
        right: 60,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          description,
          style: TextStyle(
            color: Theme.of(context).primaryColorLight.withOpacity(0.8),
          ),
        ),
      ),
    );
  }

  Padding buildLocalisationRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          localisation,
          style: TextStyle(
            color: Theme.of(context).primaryColorLight.withOpacity(0.6),
          ),
        ),
      ),
    );
  }

  Align buildPeriodeRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        periode,
        style: TextStyle(
          color: Theme.of(context).primaryColorLight.withOpacity(0.8),
        ),
      ),
    );
  }
}
