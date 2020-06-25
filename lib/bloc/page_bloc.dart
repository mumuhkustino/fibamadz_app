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
    } else if (event is GoToQuizPage) {
      yield OnQuizPage();
    } else if (event is GoToVideoPage) {
      yield OnVideoPage();
    } else if (event is GoToMateriPage) {
      yield OnMateriPage();
    } else if (event is GoToMateriThaharahPage) {
      yield OnMateriThaharahPage();
    } else if (event is GoToMateriSholatPage) {
      yield OnMateriSholatPage();
    } else if (event is GoToMateriZakatPage) {
      yield OnMateriZakatPage();
    } else if (event is GoToMateriJenazahPage) {
      yield OnMateriJenazahPage();
    }
  }

}