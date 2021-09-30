import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetofeirinha/modules/about/aboutpage.dart';
import 'package:projetofeirinha/modules/home/homecontroller.dart';
import 'package:projetofeirinha/shared/buttons.dart';
import 'package:projetofeirinha/shared/theme/appimages.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

int selected = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

HomeController homeController = HomeController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List pages = [
      BuildHome(),
      Center(
        child: CircularProgressIndicator(
          color: Colors.orange.shade600,
        ),
      ),
      Center(
        child: CircularProgressIndicator(
          color: Colors.blue.shade600,
        ),
      ),
      Center(
        child: CircularProgressIndicator(
          color: Colors.green.shade600,
        ),
      ),
      Center(
        child: CircularProgressIndicator(
          color: Colors.purple.shade600,
        ),
      ),
      AboutPage(),
    ];

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              height: 130,
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildLogo(),
                  Divider(
                    color: Colors.grey.shade700.withOpacity(0),
                  ),
                  buildButtonBar(home: () {
                    homeController.setPage(0);
                    selected = homeController.currentPage;
                    setState(() {});
                  }, vitrine: () {
                    homeController.setPage(1);

                    setState(() {});
                  }, loja: () {
                    homeController.setPage(2);

                    setState(() {});
                  }, blog: () {
                    homeController.setPage(3);
                    setState(() {});
                  }, contato: () {
                    homeController.setPage(4);
                    setState(() {});
                  }, sobre: () {
                    homeController.setPage(5);
                    selected = homeController.currentPage;
                    setState(() {});
                  }),
                  Divider(
                      //color: Colors.grey.shade700.withOpacity(0.4),
                      ),
                ],
              )),
        ),
        body: pages[homeController.currentPage],
        floatingActionButton: InkWell(
          hoverColor: Colors.white.withOpacity(0),
          splashColor: Colors.white.withOpacity(0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                image: DecorationImage(
                    image: AssetImage(AppImages.logo), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(150))),
            height: 60,
            width: 60,
          ),
          onTap: () {
            html.window.open('https://linktr.ee/projetofeirinha', '');
          },
        ));
  }
}

class BuildHome extends StatefulWidget {
  const BuildHome({Key? key}) : super(key: key);

  @override
  _BuildHomeState createState() => _BuildHomeState();
}

class _BuildHomeState extends State<BuildHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //principal
        margin: EdgeInsets.only(top: 3, left: 15, right: 15),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                      color: Colors.black.withOpacity(0.4), width: 1.5),
                  image: DecorationImage(
                      image: AssetImage(AppImages.feirinha), fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    Text(
                      "VERSÃO DE DEMONSTRAÇÃO ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red.withOpacity(0.3),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Otimizada para PC",
                      style: TextStyle(
                        color: Colors.red.withOpacity(0.3),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              buildText(context),
            ],
          ),
        ));
  }
}

Widget buildText(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30, bottom: 100),
    padding: EdgeInsets.only(top: 5),
    decoration: BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 100),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Texto de demonstração",
                textAlign: TextAlign.start,
                style: GoogleFonts.lexendDeca(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border:
                  Border.all(color: Colors.black.withOpacity(0.4), width: 1.5),
              image: DecorationImage(
                  image: AssetImage(AppImages.feirinha2), fit: BoxFit.fill)),
        )
      ],
    ),
  );
}

Widget buildLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: [
          Text.rich(TextSpan(
              text: "Projeto",
              style: TextStyle(fontSize: 20),
              children: [
                TextSpan(
                    text: " Feirinha",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.bold, fontSize: 35))
              ])),
          Image.asset(
            AppImages.logo,
            width: 63,
            height: 63,
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 8),
        color: Colors.black.withOpacity(0),
        width: 15,
        height: 60,
      ),
      Container(
        width: 80,
        height: 64,
        child: Column(
          children: [
            Text(
              "Siga-nos nas redes sociais:",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      html.window
                          .open('https://www.facebook.com/projetofeirinha', '');
                    },
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {
                      html.window.open(
                          'https://www.instagram.com/projetofeirinha/', '');
                    },
                    icon: Icon(IconData(61805, fontFamily: 'Instagram'),
                        color: Colors.pink, size: 22))
              ],
            )
          ],
        ),
      )
    ],
  );
}

Widget buildButtonBar({
  home,
  vitrine,
  loja,
  blog,
  contato,
  sobre,
}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildBarButton(
            title: "Página inicial",
            onTap: home,
            selected: homeController.currentPage == 0
                ? GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline)
                : GoogleFonts.comfortaa()),
        buildBarButton(
            title: "Vitrine",
            onTap: vitrine,
            selected: homeController.currentPage == 1
                ? GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline)
                : GoogleFonts.comfortaa()),
        buildBarButton(
            title: "Loja",
            onTap: loja,
            selected: homeController.currentPage == 2
                ? GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline)
                : GoogleFonts.comfortaa()),
        buildBarButton(
            title: "Blog",
            onTap: blog,
            selected: homeController.currentPage == 3
                ? GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline)
                : GoogleFonts.comfortaa()),
        buildBarButton(
            title: "Contato",
            onTap: contato,
            selected: homeController.currentPage == 4
                ? GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline)
                : GoogleFonts.comfortaa()),
        buildBarButton(
            title: "Sobre",
            onTap: sobre,
            selected: homeController.currentPage == 5
                ? GoogleFonts.comfortaa(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline)
                : GoogleFonts.comfortaa())
      ],
    ),
  );
}
