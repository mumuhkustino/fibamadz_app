import 'package:fibamadz_app/bloc/blocs.dart';
import 'package:flutter/material.dart';

PageEvent prevPageEvent;

const double defaultMargin = 24;

Color colorYellow = Color(0xFFF9C22E);
Color colorLightYellow = Color(0xFFFFFACD);
Color colorPink = Color(0xFFE01A4F);
Color colorLightBlue = Color(0xFF56CCF2);
Color colorDarkGrey = Color(0xFF4F4F4F);
Color colorCream = Color(0xFFFFFAEB);

Color colorTextWhite = Color(0xFFFFFBFB);
Color colorTextBlack = Color(0xFF000000);

TextStyle whiteTextFont = TextStyle(
    color: colorTextWhite, fontFamily: "Raleway", fontWeight: FontWeight.w500);

TextStyle blackTextFont = TextStyle(
  backgroundColor: Colors.transparent,
    color: colorTextBlack, fontFamily: "Raleway", fontWeight: FontWeight.w500);

TextSpan searchFromText(String fullText, String searchText) {
  if (searchText == null || searchText == "")
    return TextSpan(text: fullText, style: blackTextFont);
  var refinedFullText = fullText.toLowerCase();
  var refinedSearchText = searchText.toLowerCase();
  if (refinedFullText.contains(refinedSearchText)) {
    if (refinedFullText.substring(0, refinedSearchText.length) ==
        refinedSearchText) {
      return TextSpan(
        style: blackTextFont.copyWith(backgroundColor: colorYellow),
        text: fullText.substring(0, refinedSearchText.length),
        children: [
          searchFromText(
              fullText.substring(refinedSearchText.length), searchText),
        ],
      );
    } else if (refinedFullText.length == refinedSearchText.length) {
      return TextSpan(text: fullText, style: blackTextFont.copyWith(backgroundColor: colorYellow));
    } else {
      return TextSpan(
        style: blackTextFont,
        text: fullText.substring(
          0,
          refinedFullText.indexOf(refinedSearchText),
        ),
        children: [
          searchFromText(
              fullText.substring(
                refinedFullText.indexOf(refinedSearchText),
              ),
              searchText),
        ],
      );
    }
  } else if (!refinedFullText.contains(refinedSearchText)) {
    return TextSpan(text: fullText, style: blackTextFont);
  }
  return TextSpan(
      text: fullText.substring(0, refinedFullText.indexOf(refinedSearchText)),
      style: blackTextFont,
      children: [
        searchFromText(
            fullText.substring(refinedFullText.indexOf(refinedSearchText)),
            searchText)
      ]);
}

class Entry {
  Entry(this.title, {this.content, this.children = const <Entry>[]});

  final String title;
  String content;
  List<Entry> children;
}

List<Widget> getChildrenWidgets(List<Entry> entries, String searchText) {
  List<Widget> listWidget = <Widget>[];
  for (var entry in entries) {
    listWidget.add(ExpansionTile(
      title: Text(entry.title),
      children: (entry.children.isEmpty)
          ? <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: SelectableText.rich(
            searchFromText(entry.content, searchText),
            textScaleFactor: 1.2,
            style: blackTextFont,
          ),
        )
      ]
          : getChildrenWidgets(entry.children, searchText),
    ));
  }
  return listWidget;
}

List<Entry> filterSearchResults(List<Entry> entries, String searchText) {
  List<Entry> dummySearchList = List<Entry>();
  dummySearchList.addAll(entries);
  if (searchText != null && searchText.isNotEmpty) {
    List<Entry> dummyListData = List<Entry>();
    //1
    dummySearchList.forEach((element) {
      if (element.title != null && element.title.isNotEmpty) {
        if (element.title.toLowerCase().contains(searchText.toLowerCase())) {
          dummyListData.add(element);
        } else if (element.content != null && element.content.isNotEmpty) {
          if(element.content.toLowerCase().contains(searchText.toLowerCase())) {
            dummyListData.add(element);
          }
        } else if (element.children.isNotEmpty && element.children != null) {
          //2
          element.children.forEach((child) {
            if (child.title != null && child.title.isNotEmpty) {
              if (child.title.toLowerCase().contains(searchText.toLowerCase())) {
                dummyListData.add(element);
              } else if (child.content != null && child.content.isNotEmpty) {
                if(child.content.toLowerCase().contains(searchText.toLowerCase())) {
                  dummyListData.add(element);
                }
              } else if (child.children.isNotEmpty && child.children != null) {
                //3
                child.children.forEach((child) {
                  if (child.title != null && child.title.isNotEmpty) {
                    if (child.title.toLowerCase().contains(searchText.toLowerCase())) {
                      element.children.clear();
                      element.children.add(child);
                      dummyListData.add(element);
                    } else if (child.content != null && child.content.isNotEmpty) {
                      if(child.content.toLowerCase().contains(searchText.toLowerCase())) {
                        element.children.clear();
                        element.children.add(child);
                        dummyListData.add(element);
                      }
                    }
                  }
                });
              }
            }
          });
        }
      }
    });
    return dummyListData;
  } else {
    return entries;
  }
}

////2
//element.children.forEach((child) {
//if (child.title != null && child.title.isNotEmpty) {
//if (child.title.toLowerCase().contains(searchText.toLowerCase())) {
//element.children.clear();
//element.children.add(child);
//dummyListData.add(element);
//} else if (child.content != null && child.content.isNotEmpty) {
//if(child.content.toLowerCase().contains(searchText.toLowerCase())) {
//dummyListData.add(element);
//}
//} else if (child.children.isNotEmpty && child.children != null) {
////3
//child.children.forEach((child2) {
//if (child2.title != null && child2.title.isNotEmpty) {
//if (child2.title.toLowerCase().contains(searchText.toLowerCase())) {
//child.children.clear();
//child.children.add(child2);
//element.children.add(child);
//dummyListData.add(element);
//} else if (child2.content != null && child2.content.isNotEmpty) {
//if(child2.content.toLowerCase().contains(searchText.toLowerCase())) {
//child.children.clear();
//child.children.add(child2);
//element.children.add(child);
//dummyListData.add(element);
//}
//}
//}
//});
//}
//}
//}
//file ini berisikan objek2 yang menyimpan data
