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
//    else if (!(prevPageEvent is GoToMainPage)) {
//      prevPageEvent = GoToMainPage();
//      context.bloc<PageBloc>().add(prevPageEvent);
//    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnMainPage) 
            ? MainPage() 
            : (pageState is OnMuqoddimahPage)
            ? MuqoddimahPage()
            : VideoPage());
  }
}

/*
if pageState is OnsplashPage
  Splash Page
else if pageState is OnMainPage
  MainPage
else if pageState is OnMuqqodimahPage
  MuqoddimahPage
else VideoPage
*/