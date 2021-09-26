class Video {
  late String titulo;
  late String descricao;
  late String youtubeURL;
  late bool statusAtivo;

  Video(String titulo, String descricao, String youtubeURL, bool statusAtivo) {
    this.descricao = descricao;
    this.titulo = titulo;
    this.youtubeURL = youtubeURL;
    this.statusAtivo = statusAtivo;
  }
}