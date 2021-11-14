import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerApoiadores extends StatelessWidget {
  ContainerApoiadores(this.url, this.image);

  final String url;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _rodaURL(url),
        child: Container(
          height: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              alignment: Alignment.centerLeft,
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }

  void _rodaURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Não foi possível abrir o site $_url';
    }
  }
}
