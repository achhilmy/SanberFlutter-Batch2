part of 'drawers.dart';

class BlocProviderPage extends StatelessWidget {
  const BlocProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => DrawerBloc(),
        child: HomeScreenBloc(),
      ),
    );
  }
}
