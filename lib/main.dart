import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const Dashboardspfc());
}

class Dashboardspfc extends StatelessWidget {
  const Dashboardspfc({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'SÃO PAULO FUTEBOL CLUBE',
                    style: TextStyle(color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text('Fundado em 1930',style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget botoes = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.stadium, 'MORUMBI'),
        _buildButtonColumn(color, Icons.emoji_events, '42 TITULOS\n'),
        _buildButtonColumn(color, Icons.groups_2, '21,2M Torcedores'),
      ],
    );

    Widget texto = const Padding(
      padding: EdgeInsets.all(32),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'HISTORIA\n'
          'O São Paulo Futebol Clube, fundado em 1930, é um dos maiores clubes de futebol do Brasil e está sediado na cidade de São Paulo. Conhecido como "Tricolor Paulista", \n '
          'o clube ostenta uma gloriosa história e uma base sólida de torcedores. Ao longo dos anos, o São Paulo conquistou inúmeros títulos, incluindo seis campeonatos brasileiros e  três títulos da Copa Libertadores.\n'
          'O clube é reconhecido por sua tradição de revelar talentos e adotar um estilo de jogo envolvente e ofensivo. O estádio do São Paulo é o lendário Morumbi, que é um dos maiores e mais icônicos estádios do Brasil.\n'
          'No cenário internacional, o São Paulo é reconhecido como um dos maiores clubes brasileiros, sendo o único clube do país a conquistar três vezes o Mundial de Clubes da FIFA.\n'
          '\nPRINCIPAIS TITULOS:\n6x campeão Brasileiro\n3x campeão da Libertadores\n3x campeão doMundial de Clubes',
      softWrap: true,
      textAlign: TextAlign.justify, // Justifica o texto
    ),
  ),
);

    return MaterialApp(
      title: 'São Paulo FC',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
          ),
          ),
         child: ListView(
          children: [
            Image.asset(
              'assets/head.png',
              width: 1920,
              height: 300,
              fit: BoxFit.none,
            ),
            titleSection,
            botoes,
            texto,
          ],
        ),
      ),
    ),
    );
}

  Column _buildButtonColumn(Color cor, IconData icone, String descricao) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, color: Colors.red),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            descricao,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}