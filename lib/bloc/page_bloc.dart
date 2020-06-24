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
    } else if (event is GoToQuizPage) {
      yield OnQuizPage();
    } else if (event is GoToVideoPage) {
      yield OnVideoPage();
    } else if (event is GoToMateriPage) {
      yield OnMateriPage();
    }
  }

}