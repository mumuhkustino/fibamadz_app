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

//file ini berisikan objek2 yang menyimpan data
