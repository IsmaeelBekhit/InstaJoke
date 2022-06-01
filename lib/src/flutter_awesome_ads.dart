import 'package:flutter/material.dart';


class AwesomeFullScreenAd extends StatefulWidget {


  const AwesomeFullScreenAd({
    Key? key,
    this.imageSrc,
    this.subtitle,
    this.title,
    this.description,
    this.buttonText,
    this.primaryColor,
    this.secondaryColor,
    this.link
  }) : super(key: key);


  final ImageProvider? imageSrc;
  final String? subtitle;
  final String? title;
  final String? description;
  final String? buttonText;
  final Color? primaryColor;
  final Color? secondaryColor;
  final String? link;

  @override
  _AwesomeFullScreenAdState createState() => _AwesomeFullScreenAdState();
}

class _AwesomeFullScreenAdState extends State<AwesomeFullScreenAd> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
             SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .33,
              child: Image(
                image: widget.imageSrc??const AssetImage("assets/default1.jpg"),
                fit: BoxFit.fitHeight,
              ),
            )
          ],
        )
    );
  }
}
