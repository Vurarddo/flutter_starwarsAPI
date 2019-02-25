import 'package:flutter/widgets.dart';
import 'package:swapi/models/swapi_bloc.dart';


class PersonListBlocProvider extends InheritedWidget {
  PersonListBlocProvider({Key key, this.child, this.personBloc}) : super(key: key, child: child);

  final Widget child;
  final PersonBloc personBloc;
  // final FilmBloc filmBloc;

  static PersonListBlocProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(PersonListBlocProvider)as PersonListBlocProvider);
  }

  @override
  bool updateShouldNotify( PersonListBlocProvider oldWidget) {
    return false;
  }
}
