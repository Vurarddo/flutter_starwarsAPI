import 'package:flutter/material.dart';
import 'package:swapi/models/person_list_bloc_provider.dart';
import 'package:swapi/models/swapi_bloc.dart';
import 'package:swapi/models/person_response.dart';
import 'package:swapi/models/swapi_response.dart';
import 'package:swapi/models/films_response.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PersonListBlocProvider(
      personBloc: PersonBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController c;
  Animation<double> anim;

  @override
  void initState() {
    c = AnimationController(duration: Duration(minutes: 20), vsync: this);
    anim = Tween<double>(begin: 0, end: 100)
        .animate(CurvedAnimation(parent: c, curve: Curves.bounceOut));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final personListBlocProvider = PersonListBlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: AnimatedBuilder(
          animation: c,
          builder: (context, _) {
            return Column(
              children: <Widget>[
                // Transform.rotate(
                //   // offset: Offset(anim.value, anim.value * 1.5),
                //   angle: anim.value * anim.value,
                //   child: Container(
                //     width: 100,
                //     height: 100,
                //     color: Colors.amberAccent,
                //   ),
                // ),
                // Transform.scale(
                //   // offset: Offset(anim.value, anim.value * 1.5),
                //   // angle: anim.value,
                //   scale: anim.value / 50,
                //   child: Container(
                //     width: 100,
                //     height: 100,
                //     color: Colors.indigo,
                //   ),
                // ),
                StreamBuilder<List<Person>>(
                  stream: personListBlocProvider.personBloc.personListStream,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Container();
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Text(
                            '${snapshot.data[i].name}',
                            // style: Theme.of(context).textTheme.display1,
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!c.isAnimating) {
            c.reset();
            c.forward();
          }

          final personListBlocProvider = PersonListBlocProvider.of(context);

          personListBlocProvider.personBloc.person.add(null);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
