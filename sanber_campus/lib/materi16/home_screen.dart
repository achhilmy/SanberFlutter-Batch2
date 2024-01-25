// home_screen.dart
part of 'drawers.dart';

class HomeScreenBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Navigation with Bloc'),
      ),
      drawer: AppDrawer(),
      body: Center(child: Text("Halaman Drawer")),
    );
  }
}
