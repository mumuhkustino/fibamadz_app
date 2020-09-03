import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => OnInitialPage();

  // mumuh kasih komen ini apa
  @override
  Stream<PageState> mapEventToState(PageEvent event) async* {
    if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToMuqoddimahPage) {
      yield OnMuqoddimahPage();
    } else if (event is GoToMuqoddimahKitabPage) {
      yield OnMuqoddimahKitabPage();
    } else if (event is GoToMuqoddimahImamSyafiiPage) {
      yield OnMuqoddimahImamSyafiiPage();
    } else if (event is GoToMuqoddimahImamMalikPage) {
      yield OnMuqoddimahImamMalikPage();
    } else if (event is GoToMuqoddimahImamHanafiPage) {
      yield OnMuqoddimahImamHanafiPage();
    } else if (event is GoToMuqoddimahImamAhmadPage) {
      yield OnMuqoddimahImamAhmadPage();
    } 
    
    else if (event is GoToQuizPage) {
      yield OnQuizPage();
    } else if (event is GoToQuizThaharahPage) {
      yield OnQuizThaharahPage();
    } else if (event is GoToQuizSholatPage) {
      yield OnQuizSholatPage();
    } else if (event is GoToQuizPuasaPage) {
      yield OnQuizPuasaPage();
    } else if (event is GoToQuizZakatPage) {
      yield OnQuizZakatPage();
    } else if (event is GoToQuizJenazahPage) {
      yield OnQuizJenazahPage();
    } else if (event is GoToQuizThaharahScore) {
      yield OnQuizThaharahScore();
    } else if (event is GoToQuizSholatScore) {
      yield OnQuizSholatScore();
    } else if (event is GoToQuizPuasaScore) {
      yield OnQuizPuasaScore();
    } else if (event is GoToQuizZakatScore) {
      yield OnQuizZakatScore();
    } else if (event is GoToQuizJenazahScore) {
      yield OnQuizJenazahScore();
    }
    
    else if (event is GoToVideoPage) {
      yield OnVideoPage();
    } 
    
    else if (event is GoToMateriPage) {
      yield OnMateriPage();
    } else if (event is GoToMateriThaharahPage) {
      yield OnMateriThaharahPage();
    } else if (event is GoToMateriThaharahWuduPage) {
      yield OnMateriThaharahWuduPage();
    } else if (event is GoToMateriThaharahTayamumPage) {
      yield OnMateriThaharahTayamumPage();
    } else if (event is GoToMateriThaharahMandiBesarPage) {
      yield OnMateriThaharahMandiBesarPage();
    } else if (event is GoToMateriThaharahMenghilangkanNajisPage) {
      yield OnMateriThaharahMenghilangkanNajisPage();
    } else if (event is GoToMateriSholatPage) {
      yield OnMateriSholatPage();
    } else if (event is GoToMateriSholatFarduPage) {
      yield OnMateriSholatFarduPage();
    } else if (event is GoToMateriSholatSunatPage) {
      yield OnMateriSholatSunatPage();
    } else if (event is GoToMateriPuasaPage) {
      yield OnMateriPuasaPage();
    } else if (event is GoToMateriZakatPage) {
      yield OnMateriZakatPage();
    } else if (event is GoToMateriZakatFitrahPage) {
      yield OnMateriZakatFitrahPage();
    } else if (event is GoToMateriZakatMalPage) {
      yield OnMateriZakatMalPage();
    } else if (event is GoToMateriJenazahPage) {
      yield OnMateriJenazahPage();
    } else if (event is GoToMateriJenazahUmumPage) {
      yield OnMateriJenazahUmumPage();
    } else if (event is GoToMateriJenazahMemandikanPage) {
      yield OnMateriJenazahMemandikanPage();
    } else if (event is GoToMateriJenazahMenyolatkanPage) {
      yield OnMateriJenazahMenyolatkanPage();
    } else if (event is GoToMateriJenazahMengkafaniPage) {
      yield OnMateriJenazahMengkafaniPage();
    } else if (event is GoToMateriJenazahMenguburkanPage) {
      yield OnMateriJenazahMenguburkanPage();
    }
  }

}