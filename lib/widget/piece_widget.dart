import 'package:flutter/material.dart';
import 'package:forte_v2/services/storage_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

class YoutubePlayerExample extends StatefulWidget {
  final String videourl;
  final String title;
  final String imageurl;

  const YoutubePlayerExample({Key? key, required this.videourl, required this.title, required this.imageurl}) : super(key: key);

  @override
  State<YoutubePlayerExample> createState() => _YoutubePlayerExampleState(videourl: videourl, title: title, imageurl: imageurl);
}

class _YoutubePlayerExampleState extends State<YoutubePlayerExample> {
  final String videourl;
  final Storage storage = Storage();
  final String title;
  final String imageurl;

  _YoutubePlayerExampleState({Key? key, required this.videourl, required this.title, required this.imageurl}) : super();


  late YoutubePlayerController _controller;

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videourl);

    initFirebase();

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
            autoPlay: false
        )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('Произведения', style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: const ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                  ),
                  const PlaybackSpeedButton(),
                  //FullScreenButton(color: Colors.amber,),
                ],
              ),
              FutureBuilder(
                future: storage.downloadURL(imageurl),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                    return SizedBox(
                      width: 300,
                      child: Image.network(
                        snapshot.data!,
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ]
        ),
      ),
    );
  }

}