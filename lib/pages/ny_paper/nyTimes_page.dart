import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NyTimesPage extends StatelessWidget {
  const NyTimesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Center(
          child: Text(
            'Diario Local',
            // style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
            style: TextStyle(
              fontFamily: 'Newyorktimes',
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
            ),
            // style: GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 30),
          ),
        ),
        // backgroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            NewsCard(
                imageUrl:
                    'https://imagenes.elpais.com/resizer/v2/IGKOVHCT3NCMJEI2AHJVDAZ66Q.jpg?auth=eca519a176623bec01d66216a8927f29300980b8bad23b52f5004046551ee9ca&width=828&height=466&focal=1834%2C1261',
                title:
                    'José Luis Carrasco, psiquiatra: “La clave para proteger contra los trastornos de la personalidad son la atención amorosa y la confianza”',
                subTitle:
                    '• En su último libro, ‘La personalidad y sus trastornos’, invita a los lectores a una introducción divulgativa a la ciencia de la personalidad'),
            NewsCard(
                imageUrl:
                    'https://www.infobae.com/new-resizer/UZepVzNKaQA_tdARcMuF5cA7t3I=/1200x675/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/T5WBXQKP25ED5MK2Y4AJYXX24E.png',
                title:
                    'Caso Rolex contra Dina Boluarte a punto de ser presentado ante el Congreso como acusación constitucional por la Fiscalía',
                subTitle:
                    '• En su presentación ante la Comisión de Fiscalización del Congreso de la República, el último viernes 17, el Fiscal de la Nación interino, Juan Carlos Villena Campana, adelantó que en los próximos días se emitiría un pronunciamiento de fondo respecto a las investigaciones en contra de la presidenta Dina Boluarte. Efectivamente, las declaraciones de Villena se dan en un contexto en el que el periodo de investigación preliminar iniciado por la Fiscalía de la Nación en el marco del Caso Rolex, ha llegado a su fin, lo que implica que la institución tome una decisión sobre las pesquisas.',
                date: '21 May, 2024 01:01 p.m. CO'),
            NewsCard(),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String date;
  const NewsCard({
    super.key,
    this.imageUrl =
        'https://wayka.pe/wp-content/uploads/2017/10/FORMATO-WEB-MAESTROS.png',
    this.title = 'Reprimen nueva huelga de docentes en Lima',
    this.subTitle =
        '• Tras las demandas pendientes de la huelga magisterial, los profesores del Sindicato Unitario de Trabajadores en la Educación del Perú (Sutep).',
    this.date = '2h ago',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[200],
          width: double.infinity,
          child: Center(
              child: RichText(
            text: const TextSpan(
              text: 'Actualizado: ',
              style: TextStyle(color: Colors.black54),
              children: <TextSpan>[
                TextSpan(
                  text: 'FEBRERO 11 a las 19:23',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
        ),
        Image.network(
          imageUrl, // Reemplazar con la URL de la imagen real
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 30.0,
                  height: 1.4,
                  fontWeight: FontWeight.w900,
                ),
                //  const TextStyle(
                //   fontFamily: 'Newyorktimes',
                //   fontWeight: FontWeight.w900,
                //   fontSize: 30.0,
                // ),
              ),
              const SizedBox(height: 8.0),
              Text(
                subTitle,
                style: GoogleFonts.roboto(
                  fontSize: 16.0,
                  height: 1.4,
                ),
                // const TextStyle(
                //   fontSize: 16.0,
                //   height: 1.4,
                // ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.add_home_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.upload),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        // const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: Text(
        //     'Analysis: G.O.P. Squirms as Trump Veers Off Script With Abuse Remarks',
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20.0,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
