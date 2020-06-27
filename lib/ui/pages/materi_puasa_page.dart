part of 'pages.dart';

class MateriPuasaPage extends StatefulWidget {
  @override
  _MateriPuasaPageState createState() => _MateriPuasaPageState();
}

class _MateriPuasaPageState extends State<MateriPuasaPage> {
  TextEditingController searchController = TextEditingController();
  bool isClickedSearch = false;
  bool isFocusSearch = false;
  String searchText;
  final List<Entry> data = <Entry>[];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMateriPage());
        return;
      },
      child: Scaffold(
        backgroundColor: colorCream,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 22),
                height: 56,
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (!isClickedSearch) {
                            context
                                .bloc<PageBloc>()
                                .add(GoToMateriThaharahPage());
                          } else {
                            setState(() {
                              if (searchController.text.compareTo("") == 0) {
                                isClickedSearch = false;
                              } else {
                                searchController.text = "";
                                searchText = searchController.text;
                              }
                            });
                          }
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            child: Icon(
                                (!isClickedSearch)
                                    ? Icons.arrow_back_ios
                                    : Icons.clear,
                                color: Colors.black.withOpacity(0.54))),
                      ),
                    ),
                    Center(
                        child: (isClickedSearch)
                            ? Container(
                                width:
                                    MediaQuery.of(context).size.width * 6 / 8,
                                child: TextField(
                                  autofocus:
                                      (searchController.text.compareTo("") ==
                                          0),
                                  controller: searchController,
                                  decoration:
                                      InputDecoration(hintText: "Search"),
                                ),
                              )
                            : Container(
                                width:
                                    MediaQuery.of(context).size.width * 6 / 8,
                              )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (!isClickedSearch) {
                              isClickedSearch = true;
                              isFocusSearch = true;
                            } else {
                              searchText = searchController.text;
                              isFocusSearch = false;
                            }
                          });
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            child: Icon(Icons.search,
                                color: Colors.black.withOpacity(0.54))),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                            child: Text(
                          "Puasa",
                          style: blackTextFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        )),
                      ],
                    ),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return ExpansionTile(
                            title: Text(data[index].title),
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 16, right: 16),
                                child: SelectableText.rich(
                                  searchFromText(
                                      data[index].content, searchText),
                                  textAlign: TextAlign.left,
                                  textScaleFactor: 1.2,
                                  style: blackTextFont,
                                ),
                              )
                            ]);
                      },
                      itemCount: data.length,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
