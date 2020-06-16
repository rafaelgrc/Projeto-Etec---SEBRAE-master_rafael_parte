import 'package:flutter/material.dart';

class MeusDocumentosPage extends StatefulWidget {
  @override
  _MeusDocumentosPageState createState() => _MeusDocumentosPageState();
}

class _MeusDocumentosPageState extends State<MeusDocumentosPage> {
  Color corPrimaria = const Color(0xff223249);
  Color corSecundaria = const Color(0xff5263BB);
  Color corContainer = const Color(0xff394BB1);
  Color corContainerDescricaoInicio = const Color(0xff5264CB);
  Color corContainerDescricaoFim = const Color(0xff3A4BB5);
  Color corSegundoIcon = const Color(0xff394BB3);
  Color corTerceiroIcone = const Color(0xff5165C6);
  Color corQuartoIcone = const Color(0xff627BF2);
  Color corQuintoIcone = const Color(0xff6BB5FE);

 
//Lista iniciada vazia para receber os mapas de documentos
  List listDocumentosExibidos = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _addToDo();
    });
  }

//Dados Inputados para a lista de documentos
  void _addToDo() {
    Map<String, dynamic> mapDocumento = Map();
    mapDocumento["title"] = "Cert. de Conclusão";
    mapDocumento["data"] = "23/05/2020";
    mapDocumento["ok"] = false;

    Map<String, dynamic> mapDocumento2 = Map();
    mapDocumento2["title"] = "Diploma";
    mapDocumento2["data"] = "23/05/2020";
    mapDocumento2["ok"] = false;

    Map<String, dynamic> mapDocumento3 = Map();
    mapDocumento3["title"] = "Atestado";
    mapDocumento3["data"] = "23/05/2020";
    mapDocumento3["ok"] = false;

    Map<String, dynamic> mapDocumento4 = Map();
    mapDocumento4["title"] = "Aprov. de Estudos";
    mapDocumento4["data"] = "23/05/2020";
    mapDocumento4["ok"] = false;

    Map<String, dynamic> mapDocumento5 = Map();
    mapDocumento5["title"] = "Form. Passe Livre";
    mapDocumento5["data"] = "23/05/2020";
    mapDocumento5["ok"] = false;

    Map<String, dynamic> mapDocumento6 = Map();
    mapDocumento6["title"] = "Comp. de Estudos";
    mapDocumento6["data"] = "23/05/2020";
    mapDocumento6["ok"] = false;

    Map<String, dynamic> mapDocumento7 = Map();
    mapDocumento7["title"] = "Cert. Palestra";
    mapDocumento7["data"] = "23/05/2020";
    mapDocumento7["ok"] = false;

    Map<String, dynamic> mapDocumento8 = Map();
    mapDocumento8["title"] = "Cert. Palestra";
    mapDocumento8["data"] = "23/05/2020";
    mapDocumento8["ok"] = false;

    listDocumentosExibidos.add(mapDocumento);
    listDocumentosExibidos.add(mapDocumento2);
    listDocumentosExibidos.add(mapDocumento3);
    listDocumentosExibidos.add(mapDocumento4);
    listDocumentosExibidos.add(mapDocumento5);
    listDocumentosExibidos.add(mapDocumento6);
    listDocumentosExibidos.add(mapDocumento7);
    listDocumentosExibidos.add(mapDocumento8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: corQuartoIcone,
        elevation: 0.0,
      ),
      backgroundColor: corQuartoIcone,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Meus Documentos",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListView.builder(
                  itemCount: listDocumentosExibidos.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: CheckboxListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              listDocumentosExibidos[index]["title"],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              listDocumentosExibidos[index]["data"],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        value: listDocumentosExibidos[index]["ok"],
                        secondary: CircleAvatar(
                          child: Icon(listDocumentosExibidos[index]["ok"]
                              ? Icons.check
                              : Icons.file_download),
                        ),
                        onChanged: (value) {
                          setState(() {
                            listDocumentosExibidos[index]["ok"] = value;
                          });
                        },
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  
               
}