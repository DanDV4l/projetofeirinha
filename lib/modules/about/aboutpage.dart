import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetofeirinha/shared/theme/appimages.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          //principal
          margin: EdgeInsets.only(top: 3, left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //width: MediaQuery.of(context).size.width * 0.8,
                  // height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.about),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        // height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Text(
                              "QUEM SOMOS NÓS",
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              "     O Projeto Feirinha faz parte do Time Enactus da Universidade Federal de Juiz de Fora. A Feirinha consiste em um evento gastronômico e sociocultural de baixo custo que é organizado mensalmente nos bairros de Juiz de Fora. O evento traz diversas opções de consumo, que abrangem desde alimentos até roupas e pinturas. Além disso, o evento possui opções de música ao vivo e lazer para crianças. A realização da feirinha corrobora com uma perspectiva de melhoria financeira na vida de toda a comunidade. Mais do que isso, o projeto traz uma opção cultural sem precedentes para a comunidade, melhorando a visibilidade dos microempreendedores locais e está revitalizando o espaço público. \n      Durante a Pandemia do Corona Vírus, os eventos presenciais foram suspensos e até que retornem, o Projeto Feirinha tem focado no desenvolvimento profissional de seus microempreendedores através de Treinamentos e capacitações ( no modelo remoto), com profissionais capacitados nas áreas de Marketing, Gestão Financeira, Gestão Administrativa, Gestão de Mídias Sociais, entre outras. Nosso objetivo é fazer com que as vendas dos empreendedores locais voltem  a crescer e que eles possuam todas as habilidades necessárias para gerir o próprio negócio, de maneira eficiente e Lucrativa.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
