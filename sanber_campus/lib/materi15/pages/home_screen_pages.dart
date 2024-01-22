part of '../routers_go.dart';

/// The home screen
class HomeScreenPage extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen go')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details'),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}
