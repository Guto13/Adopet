import 'package:adopet/classes/formularioClasse.dart';
import 'package:adopet/classes/resultado.dart';
import 'package:adopet/componentes_gerais/constants.dart';
import 'package:adopet/downloads/container_download.dart';
import 'package:adopet/downloads/salvar_abrir.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class BodyDowmloads extends StatefulWidget {
  BodyDowmloads(this.resultadoFinal, this.formulario);

  final Resultado resultadoFinal;
  final FormularioClasse formulario;

  @override
  _BodyDowmloadsState createState() => _BodyDowmloadsState();
}

class _BodyDowmloadsState extends State<BodyDowmloads> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(15),
      child: Wrap(
        children: [
          ContainerDownload(
            titulo: 'Formulário Respondido',
            descricao:
                'Baixe o formulário com todas as suas respostas. Nas ONGs, quando pedirem seus dados, você pode apresentar estas informações para agilizar o processo!',
            titleButton: 'Baixar o Formulário',
            function: () {
              _criarPDFFormulario();
            },
          ),
          SizedBox(
            width: 20,
          ),
          ContainerDownload(
            titulo: 'Animal Recomendado e Dicas',
            descricao:
                'Baixe os resultados do animal recomendado e todas as dicas em um arquivo PDF, assim você terá todas as informações sempre que precisar',
            titleButton: 'Baixar os Resultados',
            function: () {
              _criarPDFDicas();
            },
          ),
        ],
      ),
    ));
  }

  Future<void> _criarPDFFormulario() async {
    PdfDocument document = PdfDocument();
    document.pageSettings.orientation = PdfPageOrientation.portrait;
    document.pageSettings.margins.all = 50;
    final page = document.pages.add();

    void _colocarLinha(String _texto, double _left, double _top, double _width,
        double _height, double _font, PdfPen _color) {
      _color == PdfPens.green
          ? page.graphics.drawString(
              _texto, PdfStandardFont(PdfFontFamily.helvetica, _font),
              pen: _color, bounds: Rect.fromLTWH(_left, _top, _width, _height))
          : page.graphics.drawString(
              _texto, PdfStandardFont(PdfFontFamily.helvetica, _font),
              bounds: Rect.fromLTWH(_left, _top, _width, _height));
    }

    _colocarLinha('Adopet', 130, 0, 300, 100, 75, PdfPens.green);

    _colocarLinha('FORMULÁRIO PARA ADOÇÃO DE CÃES E GATOS', 78, 130, 400, 25,
        15, PdfPens.black);

    _colocarLinha('Uniftec Faculdades', 190, 150, 390, 20, 12, PdfPens.black);

    _colocarLinha(
        'Nome: ' + widget.formulario.nome, 0, 190, 390, 20, 12, PdfPens.black);

    _colocarLinha('Idade: ' + widget.formulario.idade.toString(), 0, 205, 100,
        20, 12, PdfPens.black);

    _colocarLinha('Email: ' + widget.formulario.email, 190, 205, 390, 20, 12,
        PdfPens.black);

    _colocarLinha('Endereço: ' + widget.formulario.endereco, 0, 220, 400, 20,
        12, PdfPens.black);

    _colocarLinha('Bairro: ' + widget.formulario.bairro, 0, 235, 400, 20, 12,
        PdfPens.black);

    _colocarLinha('Cidade: ' + widget.formulario.cidade, 230, 235, 400, 20, 12,
        PdfPens.black);

    _colocarLinha('Estado: ' + widget.formulario.estado, 410, 235, 400, 20, 12,
        PdfPens.black);

    _colocarLinha('Tipo de Moradia: ' + widget.formulario.tipoMoradia, 0, 250,
        400, 20, 12, PdfPens.black);

    _colocarLinha('Renda: ' + widget.formulario.rendaFinal.toString(), 250, 250,
        400, 20, 12, PdfPens.black);

    _colocarLinha('Animal Preferido: ' + widget.formulario.animalPreferido, 0,
        265, 400, 20, 12, PdfPens.black);

    _colocarLinha(
        'Este formulário tem como principal objetivo, realizar a adoção responsável, no qual fica de',
        0,
        400,
        515,
        20,
        12,
        PdfPens.black);

    _colocarLinha('responsabilidade do adotante cuidar de seu futuro pet.', 0,
        415, 515, 20, 12, PdfPens.black);

    _colocarLinha(
        '________________________', 0, 460, 300, 20, 12, PdfPens.black);

    _colocarLinha(
        '    Assinatura do Adotante', 0, 480, 300, 20, 12, PdfPens.black);

    _colocarLinha(
        '________________________', 325, 460, 300, 20, 12, PdfPens.black);

    _colocarLinha(
        '  Assinatura do responsável', 325, 480, 300, 20, 12, PdfPens.black);

    final PdfPageTemplateElement footerTemplate =
        PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 515, 25));
    footerTemplate.graphics.drawString(
        'Para mais informações, contate nos pelo site adopet-27328.web.app',
        PdfStandardFont(PdfFontFamily.helvetica, 10),
        bounds: const Rect.fromLTWH(150, 15, 500, 15));
    document.template.bottom = footerTemplate;

    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, "Formulário Adopet.pdf");
  }

  Future<void> _criarPDFDicas() async {
    PdfDocument document = PdfDocument();
    document.pageSettings.orientation = PdfPageOrientation.portrait;
    document.pageSettings.margins.all = 50;
    final page = document.pages.add();

    void _colocarLinha(String _texto, double _left, double _top, double _width,
        double _height, double _font, PdfPen _color) {
      _color == PdfPens.green
          ? page.graphics.drawString(
              _texto, PdfStandardFont(PdfFontFamily.helvetica, _font),
              pen: _color, bounds: Rect.fromLTWH(_left, _top, _width, _height))
          : page.graphics.drawString(
              _texto, PdfStandardFont(PdfFontFamily.helvetica, _font),
              bounds: Rect.fromLTWH(_left, _top, _width, _height));
    }

    _colocarLinha('Adopet', 130, 0, 300, 100, 75, PdfPens.green);

    _colocarLinha('ANIMAL RECOMENDADO E DICAS PARA ADOÇÃO', 78, 130, 400, 25,
        15, PdfPens.black);

    _colocarLinha('Uniftec Faculdades', 190, 150, 390, 20, 12, PdfPens.black);

    _colocarLinha(
        'Nome: ' + widget.formulario.nome, 0, 190, 390, 20, 12, PdfPens.black);

    _colocarLinha('Idade: ' + widget.formulario.idade.toString(), 0, 205, 100,
        20, 12, PdfPens.black);

    _colocarLinha('Email: ' + widget.formulario.email, 190, 205, 390, 20, 12,
        PdfPens.black);

    _colocarLinha('Animal Recomendado: ' + widget.resultadoFinal.animal.tipo, 0,
        250, 450, 20, 12, PdfPens.black);

    if (widget.resultadoFinal.animal.tipo == 'gato') {
      _colocarLinha(dicasGato[0].titulo, 0, 295, 450, 25, 18, PdfPens.black);

      _colocarLinha(
          'Para quem busca aumentar a família - e não só adotar, mas ser adotado por um bichano,',
          0,
          320,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'é comum ter dúvidas sobre onde adotar um gato, seja ele filhote ou adulto. A boa notícia ',
          0,
          335,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'é que existem maneiras bem fáceis e rápidas de encontrar gatos para adotar: anúncios em ',
          0,
          350,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'redes sociais, abrigos e protetores independentes, ongs e feirinhas de adoção. Nesses casos,',
          0,
          365,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          ' é possível fazer uma visita aos locais e, pessoalmente, eleger o novo membro da família.',
          0,
          380,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(dicasGato[1].titulo, 0, 410, 450, 25, 18, PdfPens.black);

      _colocarLinha(
          'O gatinho está vacinado, com a saúde em dia e pronto para ganhar um novo lar. E agora? ',
          0,
          435,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'Está na hora de você preparar a casa para a sua chegada! Não é segredo para ninguém que a ',
          0,
          450,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'maioria dos gatos amam as voltinhas noturnas pela vizinhança. Ainda assim, essa prática não é ',
          0,
          465,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'recomendada, já que ele pode se machucar, se envolver em brigas e até contrair doenças.Sendo assim, ',
          0,
          480,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(
          'o primeiro passo antes de levar o gatinho para casa é telar todas as janelas para evitar fugas e acidentes.',
          0,
          495,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(dicasGato[2].titulo, 0, 525, 450, 25, 18, PdfPens.black);

      _colocarLinha(
          'Alimentar seu gato com uma ração de qualidade e saborosa é muito fácil. É só escolher entre ',
          0,
          550,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'os vários tipos de ração seca ou úmida. Pra te ajudar, eu vou dar algumas dicas sobre o assunto, ',
          0,
          565,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'olha só. Gatos gostam de comidas com sabor marcante. E têm muitas opções de  rações pra atender ',
          0,
          580,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'até o bichano mais exigente. Como a ração de peixe, frango, carne, frutos do mar, peru e até ',
          0,
          595,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'mix de grãos, no caso das secas, que misturam vários sabores em um só pacote. Além dos sabores, ',
          0,
          610,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'as rações tem diferentes classificações conforme seu tipo: standard, premium e super premium. ',
          0,
          625,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(
          'E dentro dessas classificações, têm as rações pra diferentes gatos, como castrados, filhotes,',
          0,
          640,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha('obesos etc.', 0, 640, 450, 20, 10, PdfPens.black);
    } else {
      _colocarLinha(dicasCao[0].titulo, 0, 295, 450, 25, 18, PdfPens.black);

      _colocarLinha(
          'As rações de cachorro são desenvolvidas por especialistas que pensam em cada detalhe da ',
          0,
          320,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'alimentação do pet. Por isso, por mais que seja difícil saber que nosso amigo come todos ',
          0,
          335,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'os dias a mesma ração seca, saiba que os cachorros adoram e que, aliada a uma rotina saudável,',
          0,
          350,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'a ração é a melhor opção para eles. Mas é comum que os  tutores queiram dar outros alimentos ',
          0,
          365,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'para seus pets. Além disso, oferecer uma comida diferente pode ser muito útil para ajudar no ',
          0,
          380,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(
          'adestramento e também para fortalecer o vínculo entre vocês.',
          0,
          395,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(dicasCao[1].titulo, 0, 425, 450, 25, 18, PdfPens.black);

      _colocarLinha(
          'Os cachorros adoram brincar, né? Eles pulam, correm, giram e querem sempre alguma coisa nova ',
          0,
          450,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'pra se divertirem. Por isso, se você tem um cachorro, é ideal dar alguns brinquedos caninos pra',
          0,
          465,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'ele! E não importa se ele é filhote ou adulto, as brincadeiras vão ajudar eles se exercitarem e ',
          0,
          480,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'gastarem energia. Então, se o seu cachorro é filhote ou tá em fase de crescimento, a dica é dar um ',
          0,
          495,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(
          'mordedor ou aqueles ossos que podem ser roídos pra ele brincar. É que quando os dentinhos tão ',
          0,
          510,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(
          'crescendo, eles precisam roer algum objeto. Aí é melhor que sejam os brinquedos e não os seus móveis, né?',
          0,
          525,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(dicasCao[2].titulo, 0, 555, 450, 25, 18, PdfPens.black);

      _colocarLinha(
          'É sempre bom ficar de olho nas leis municipais, estaduais e federais que dizem respeito aos cães ',
          0,
          580,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'antes de escolher o porte ou raça ideal para sua família e rotina. Você sabia que, por exemplo, no estado de SP, ',
          0,
          595,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'existe uma lei específica para passear com cães das raças mastim napolitano, pit bull, rottweiller e ',
          0,
          610,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'american stafforshire terrier? O desrespeito à legislação pode acarretar multa aos tutores e outras',
          0,
          625,
          450,
          20,
          10,
          PdfPens.black);
      _colocarLinha(
          'penalidades. Por isso, é bom se prevenir logo no momento da adoção de cachorro, já se preparando',
          0,
          640,
          450,
          20,
          10,
          PdfPens.black);

      _colocarLinha(
          'para adquirir acessórios específicos, caso seja necessário.',
          0,
          655,
          450,
          20,
          10,
          PdfPens.black);
    }

    final PdfPageTemplateElement footerTemplate =
        PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 515, 25));
    footerTemplate.graphics.drawString(
        'Para mais informações, contate nos pelo site adopet-27328.web.app',
        PdfStandardFont(PdfFontFamily.helvetica, 10),
        bounds: const Rect.fromLTWH(150, 15, 500, 15));
    document.template.bottom = footerTemplate;

    List<int> bytes = document.save();
    document.dispose();

    saveAndLaunchFile(bytes, "Dicas Adopet.pdf");
  }
}
