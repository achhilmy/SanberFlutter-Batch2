part of '../routers_go.dart';

/// The details screen
class DetailsScreenPage extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen go')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Go back to the Home screen'),
        ),
      ),
    );
  }
}
