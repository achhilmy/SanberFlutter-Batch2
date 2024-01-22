import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sanber_campus/materi11/model/album_model.dart';
import 'package:sanber_campus/materi11/services/materi_services.dart';

class DetailReadDataPage extends StatefulWidget {
  const DetailReadDataPage({super.key, this.id});
  final id;

  @override
  State<DetailReadDataPage> createState() => _DetailReadDataPageState();
}

class _DetailReadDataPageState extends State<DetailReadDataPage> {
  late Future<Album> futureAlbum = MateriServices.fetchAlbum(widget.id);

  @override
  void initState() {
    super.initState();
    futureAlbum = futureAlbum;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
