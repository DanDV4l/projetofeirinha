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
                              "QUEM SOMOS N??S",
                              style: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              "     O Projeto Feirinha faz parte do Time Enactus da Universidade Federal de Juiz de Fora. A Feirinha consiste em um evento gastron??mico e sociocultural de baixo custo que ?? organizado mensalmente nos bairros de Juiz de Fora. O evento traz diversas op????es de consumo, que abrangem desde alimentos at?? roupas e pinturas. Al??m disso, o evento possui op????es de m??sica ao vivo e lazer para crian??as. A realiza????o da feirinha corrobora com uma perspectiva de melhoria financeira na vida de toda a comunidade. Mais do que isso, o projeto traz uma op????o cultural sem precedentes para a comunidade, melhorando a visibilidade dos microempreendedores locais e est?? revitalizando o espa??o p??blico. \n      Durante a Pandemia do Corona V??rus, os eventos presenciais foram suspensos e at?? que retornem, o Projeto Feirinha tem focado no desenvolvimento profissional de seus microempreendedores atrav??s de Treinamentos e capacita????es ( no modelo remoto), com profissionais capacitados nas ??reas de Marketing, Gest??o Financeira, Gest??o Administrativa, Gest??o de M??dias Sociais, entre outras. Nosso objetivo ?? fazer com que as vendas dos empreendedores locais voltem  a crescer e que eles possuam todas as habilidades necess??rias para gerir o pr??prio neg??cio, de maneira eficiente e Lucrativa.",
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
