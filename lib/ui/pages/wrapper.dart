part of 'pages.dart';

///Class ini digunakan untuk
///
///
///
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!(prevPageEvent is GoToSplashPage)) {
      prevPageEvent = GoToSplashPage();
      context.bloc<PageBloc>().add(prevPageEvent);
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnMainPage)
            ? MainPage()
            : (pageState is OnMuqoddimahPage)
            ? MuqoddimahPage()
            : (pageState is OnMuqoddimahKitabPage)
            ? MuqoddimahKitabPage()
            : (pageState is OnMuqoddimahImamSyafiiPage)
            ? MuqoddimahImamSyafiiPage()
            : (pageState is OnMuqoddimahImamMalikPage)
            ? MuqoddimahImamMalikPage()
            : (pageState is OnMuqoddimahImamHanafiPage)
            ? MuqoddimahImamHanafiPage()
            : (pageState is OnMuqoddimahImamAhmadPage)
            ? MuqoddimahImamAhmadPage()
            : (pageState is OnQuizPage)
            ? QuizPage()
            : (pageState is OnVideoPage)
            ? VideoPage()
            : (pageState is OnMateriPage)
            ? MateriPage()
            : (pageState is OnMateriThaharahPage)
            ? MateriThaharahPage()
            : (pageState is OnMateriThaharahWuduPage)
            ? MateriThaharahWudhuPage()
            : (pageState is OnMateriThaharahTayamumPage)
            ? MateriThaharahWudhuPage()
            : (pageState is OnMateriThaharahMandiPage)
            ? MateriThaharahWudhuPage()
            : (pageState is OnMateriThaharahMenghilangkanNajisPage)
            ? MateriThaharahWudhuPage()
            : (pageState is OnMateriSholatPage)
            ? MateriSholatPage()
            : (pageState is OnMateriZakatPage)
            ? MateriZakatPage()
            : (pageState is OnMateriJenazahPage)
            ? MateriJenazahPage()
            : (pageState is OnQuizPage)
            ? QuizPage()
            : QuizThaharahPage()
            );
  }
}

/*
if pageState is OnsplashPage
  Splash Page
else if pageState is OnMainPage
  MainPage
else if pageState is OnMuqqodimahPage
  MuqoddimahPage
else if pageState is OnQuizPage
  QuizPage
else if pageState is OnVideoPage
  VideoPage
else if pageState is OnMateriPage
  MateriPage
else if pageState is OnMateriThaharahPage
  MateriThaharah
else if
*/