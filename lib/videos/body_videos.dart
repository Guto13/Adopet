import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:flutter/material.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

class BodyVideos extends StatefulWidget {
  BodyVideos(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  _BodyVideosState createState() => _BodyVideosState();
}

class _BodyVideosState extends State<BodyVideos> {
  final ScrollController _controllerOne = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _controllerOne,
        child: ListView(
          controller: _controllerOne,
          scrollDirection: Axis.horizontal,
          children: List.generate(widget.resultadoFinal.videos.length, (index) {
            return Column(
              children: [
                Container(
                  height: 300,
                  padding: EdgeInsets.all(10),
                  child: YoutubePlayerIFrame(
                    controller: YoutubePlayerController(
                      initialVideoId:
                          widget.resultadoFinal.videos[index].youtubeURL,
                      params: YoutubePlayerParams(
                        startAt: Duration(seconds: 0),
                        showControls: true,
                        showFullscreenButton: true,
                      ),
                    ),
                    aspectRatio: 16 / 9,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
