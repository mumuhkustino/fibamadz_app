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
            
            : (pageState is OnVideoPage)
            ? VideoPage()
            
            : (pageState is OnMateriPage)
            ? MateriPage()
            : (pageState is OnMateriThaharahPage)
            ? MateriThaharahPage()
            : (pageState is OnMateriThaharahWuduPage)
            ? MateriThaharahWudhuPage()
            : (pageState is OnMateriThaharahTayamumPage)
            ? MateriThaharahTayamumPage()
            : (pageState is OnMateriThaharahMandiBesarPage)
            ? MateriThaharahMandiBesarPage()
            : (pageState is OnMateriThaharahMenghilangkanNajisPage)
            ? MateriThaharahMenghilangkanNajisPage()
            : (pageState is OnMateriSholatPage)
            ? MateriSholatPage()
            : (pageState is OnMateriSholatFarduPage)
            ? MateriSholatFarduPage()
            : (pageState is OnMateriSholatSunatPage)
            ? MateriSholatSunatPage()
            : (pageState is OnMateriPuasaPage)
            ? MateriPuasaPage()
            : (pageState is OnMateriZakatPage)
            ? MateriZakatPage()
            : (pageState is OnMateriZakatFitrahPage)
            ? MateriZakatFitrahPage()
            : (pageState is OnMateriZakatMalPage)
            ? MateriZakatMalPage()
            : (pageState is OnMateriJenazahMemandikanPage)
            ? MateriJenazahMemandikanPage()
            : (pageState is OnMateriJenazahMengkafaniPage)
            ? MateriJenazahMengkafaniPage()
            : (pageState is OnMateriJenazahMenyolatkanPage)
            ? MateriJenazahMenyolatkanPage()
            : (pageState is OnMateriJenazahMenguburkanPage)
            ? MateriJenazahMenguburkanPage()
            : (pageState is OnMateriJenazahUmumPage)
            ? MateriJenazahUmumPage()
            : (pageState is OnMateriJenazahPage)
            ? MateriJenazahPage()
            
            : (pageState is OnQuizPage)
            ? QuizPage()
            : (pageState is OnQuizThaharahPage)
            ? QuizThaharahPage()
            : (pageState is OnQuizThaharahScore)
            ? QuizThaharahScore()
            : (pageState is OnQuizSholatPage)
            ? QuizSholatPage()
            : (pageState is OnQuizSholatScore)
            ? QuizSholatScore()
            : (pageState is OnQuizPuasaPage)
            ? QuizPuasaPage()
            : (pageState is OnQuizPuasaScore)
            ? QuizPuasaScore()
            : (pageState is OnQuizJenazahPage)
            ? QuizJenazahPage()
            : (pageState is OnQuizJenazahScore)
            ? QuizJenazahScore()
            : (pageState is OnQuizZakatPage)
            ? QuizZakatPage()
            : QuizZakatScore()
            
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