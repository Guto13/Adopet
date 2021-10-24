import 'package:adopet/classes/dica.dart';
import 'package:adopet/classes/marcadores.dart';
import 'package:adopet/classes/video.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';

const KPrimaryColor = Color(0xFFe1fffb);
const KButtonColor = Color(0xFF005349);
const KTextColor = Color(0xFF029784);

List<Dica> dicasGato = [
  Dica(
      'Adotar um gato: como você pode fazer isso?',
      'Para quem busca aumentar a família - e não só adotar, mas ser adotado por um bichano -, é comum ter dúvidas sobre onde adotar um gato, seja ele filhote ou adulto. A boa notícia é que existem maneiras bem fáceis e rápidas de encontrar gatos para adotar: anúncios em redes sociais, abrigos e protetores independentes, ongs e feirinhas de adoção. Nesses casos, é possível fazer uma visita aos locais e, pessoalmente, eleger o novo membro da família.',
      false),
  Dica(
      'Adotar gato: decisão traz mudanças para sua vida e para a casa',
      'O gatinho está vacinado, com a saúde em dia e pronto para ganhar um novo lar. E agora? Está na hora de você preparar a casa para a sua chegada! Não é segredo para ninguém que a maioria dos gatos amam as voltinhas noturnas pela vizinhança. Ainda assim, essa prática não é recomendada, já que ele pode se machucar, se envolver em brigas e até contrair doenças. Sendo assim, o primeiro passo antes de levar o gatinho para casa é telar todas as janelas para evitar fugas e acidentes. ',
      false),
  Dica(
      'Tipos de ração pra gato',
      'Alimentar seu gato com uma ração de qualidade e saborosa é muito fácil. É só escolher entre os vários tipos de ração seca ou úmida. Pra te ajudar, eu vou dar algumas dicas sobre o assunto, olha só. Gatos gostam de comidas com sabor marcante. E têm muitas opções de  rações pra atender até o bichano mais exigente. Como a ração de peixe, frango, carne, frutos do mar, peru e até mix de grãos, no caso das secas, que misturam vários sabores em um só pacote. Além dos sabores, as rações tem diferentes classificações conforme seu tipo: standard, premium e super premium. E dentro dessas classificações, têm as rações pra diferentes gatos, como castrados, filhotes, obesos etc. ',
      false),
  Dica(
      'Brinquedo pra gato, escolha o certo!',
      'Arranhadores\nVarinhas com penduricalhos\nBolinhas\nBrinquedos com luzes\nRatinhos e insetos',
      false)
];

List<Dica> dicasCao = [
  Dica(
      'Ração, a melhor opção',
      'As rações de cachorro são desenvolvidas por especialistas que pensam em cada detalhe da alimentação do pet. Por isso, por mais que seja difícil saber que nosso amigo come todos os dias a mesma ração seca, saiba que os cachorros adoram e que, aliada a uma rotina saudável, a ração é a melhor opção para eles. Mas é comum que os tutores queiram dar outros alimentos para seus pets. Além disso, oferecer uma comida diferente pode ser muito útil para ajudar no adestramento e também para fortalecer o vínculo entre vocês, desde que sejam alimentos saudáveis para cães.',
      false),
  Dica(
      'Brinquedos são importantes pro cachorro',
      'Os cachorros adoram brincar, né? Eles pulam, correm, giram e querem sempre alguma coisa nova pra se divertirem. Por isso, se você tem um cachorro, é ideal dar alguns brinquedos caninos pra ele! E não importa se ele é filhote ou adulto, as brincadeiras vão ajudar eles se exercitarem e gastarem energia.\n- Então, se o seu cachorro é filhote ou tá em fase de crescimento, a dica é dar um mordedor ou aqueles ossos que podem ser roídos pra ele brincar. É que quando os dentinhos tão crescendo, eles precisam roer algum objeto. Aí é melhor que sejam os brinquedos e não os seus móveis, né?\n- Outra dica é dar uma bolinha pro seu cachorro. Elas são as queridinhas deles, porque dá pra correr atrás, morder e esconder onde eles quiserem. Ah, e se você quiser, pode até escolher uma bolinha que vem com um guizo dentro. Seu cãozinho vai amar!\n- Agora, se o seu cachorro tá velhinho, é importante que ele continue brincando, viu? E como ele já vai ter dificuldade pra pular e correr, a dica é dar uma pelúcia ou um brinquedo bem macio pra ele morder e passar o tempo. É ideal que a mente dele continue ativa!',
      false),
  Dica(
      'Conhecer as leis locais para cachorros',
      'É sempre bom ficar de olho nas leis municipais, estaduais e federais que dizem respeito aos cães antes de escolher o porte ou raça ideal para sua família e rotina. Você sabia que, por exemplo, no estado de SP, existe uma lei específica para passear com cães das raças mastim napolitano, pit bull, rottweiller e american stafforshire terrier? O desrespeito à legislação pode acarretar multa aos tutores e outras penalidades. Por isso, é bom se prevenir logo no momento da adoção de cachorro, já se preparando para adquirir acessórios específicos, caso seja necessário.',
      false),
  Dica(
      'Socializar seu cachorro',
      'Levar o cão a parques e praças públicas onde outros tutores frequentam com seus cães é uma responsabilidade essencial a se pensar para quem está cogitando uma adoção de cachorro. De início, enquanto filhote, uma ideia bacana é levá-lo também para visitar amigos e familiares que possuem cachorros, especialmente que também sejam filhotes. Caso adote um cão já adulto ou idoso, a atenção ao fator socialização deve ser redobrada, para que o pet saiba se comportar na presença tanto de outros cães como na de humanos desconhecidos. Se for um cãozinho “filho único”, a interação com outros cachorros em passeios e eventos deve ser ainda mais reforçada. Lembre-se que um cão solitário tem maiores tendências à fuga e a estar despreparado para interações.',
      false),
  Dica(
      'Exercitar seu pet',
      'A maioria dos animais de estimação precisa de exercícios diários básicos. Isso garante uma vida feliz, saudável e longa ao bichinho, bem como menos problemas e estresse para os tutores. Com passeios diários ou algumas vezes por semana, a depender da raça e porte do cão, problemas como a mania de cavucar o chão, morder móveis e comer objetos devem ser reduzidos, pois são fruto da ansiedade. Uma alternativa ao passeio em alguns dias pode ser uma brincadeira de pega-pega, esconde-esconde ou cabo de guerra: tudo aquilo que envolver você será muito divertido para seu pet!',
      false)
];

List<Video> videosGatos = [
  Video('', '', 'awIeTS_DzKg', true),
  Video('', '', 'yLCM5W-BPj8', true),
  Video('', '', '0dwAKew45rM', true),
  Video('', '', 'f2YHpvt_Rsw', true),
  Video('', '', 'O5zlRruXH4I', true),
];

List<Video> videosCaoPequeno = [
  Video('', '', 'GFgr2rvBJTM', true),
  Video('', '', 'C5bI36Kna0c', true),
  Video('', '', 'D-13sjRoLCU', true),
  Video('', '', 'dFv-YuRinOg', true),
  Video('', '', 'c1ZbCkcBKQI', true),
];

List<Video> videosCaoMedio = [
  Video('', '', 'NndC1KjSpx8', true),
  Video('', '', 'D-13sjRoLCU', true),
  Video('', '', 'dFv-YuRinOg', true),
  Video('', '', 'c1ZbCkcBKQI', true),
];

List<Video> videosCaoGrande = [
  Video('', '', '1f0oXrD9fR4', true),
  Video('', '', 'D-13sjRoLCU', true),
  Video('', '', 'dFv-YuRinOg', true),
  Video('', '', 'c1ZbCkcBKQI', true),
];

List<Marcadores> marcadores = [
  Marcadores(LatLng(-30.04916632439482, -51.215777460058796),
      'Associação Riograndense de Proteção aos Animais'),
  Marcadores(LatLng(-30.075549766234268, -51.095508503355845),
      'Associação 101 Viralatas'),
  Marcadores(LatLng(-29.2260533514909, -51.34429640579082),
      'Brechó da ONG dos peludos'),
  Marcadores(LatLng(-28.97081679879693, -51.24788115788986),
      'União Pela Vida Animal - Upeva'),
  Marcadores(
      LatLng(-29.16195393782421, -51.181664253377036), 'Associação VIDA'),
  Marcadores(LatLng(-29.192512289499927, -51.13446931775026),
      'Canil Municipal de Caxias do Sul'),
  Marcadores(LatLng(-29.94954530767232, -50.974957807867995),
      'Ong Collinnas- Adote um Amigo'),
  Marcadores(LatLng(-29.426895087554705, -52.05707852919052), 'APAMA'),
  Marcadores(LatLng(-29.988865599999983, -51.08801293902056), 'Arca do José'),
  Marcadores(
      LatLng(-30.219039167032435, -51.0751569155777), 'Majuna Proteção Animal'),
];
