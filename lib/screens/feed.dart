import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/player.dart';
// import 'package:flutter_youtube/player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final videoUrls = [
  'https://www.youtube.com/watch?v=8DYcyAWTtGk',
  // 'https://www.youtube.com/watch?v=5AxWC49ZMzs',
  // 'https://www.youtube.com/watch?v=JSqUZFkRLr8',
  // 'https://www.youtube.com/watch?v=qEZf2q4W20g',
  // 'https://www.youtube.com/watch?v=jCbclWBV32o'
];

class Feed extends StatelessWidget {
   
  const Feed({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Youtube"),
      ),
      body: ListView.builder(
        itemCount: videoUrls.length,
        itemBuilder: (context, index) {
          final videoID = YoutubePlayer.convertUrlToId(videoUrls[index]);

          return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PLayerScreen(videoId: videoID)));
              },
              child:
                  Image.network(YoutubePlayer.getThumbnail(videoId: videoID!)));
        },
      ),
    );
  }

  Widget thubmNail() {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      color: Colors.blue,
      child: const Center(
        child: Text("THUMBNAIL"),
      ),
    );
  }
}