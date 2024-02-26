import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_search/model/data/movie_by_id_model.dart';

import 'package:movie_search/view/components/app_text.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Thrillers extends StatelessWidget {
  const Thrillers({
    Key? key,
    required this.videos,
  }) : super(key: key);
  final Videos videos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const TextWidget(
              text: 'Трейлеры',
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
            const Spacer(),
            TextWidget(
              text: videos.trailers.length.toString(),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.orange,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: videos.trailers.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen(
                      videoUrl: videos.trailers[index].url!,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(getThumbnailUrl(
                        YoutubePlayer.convertUrlToId(
                                videos.trailers[index].url!) ??
                            '')),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

String getThumbnailUrl(String videoId) {
  return 'https://img.youtube.com/vi/$videoId/0.jpg';
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerScreen({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        topActions: [
          const SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/images/arrow_back.png",
              height: 30,
              color: Colors.white,
            ),
          )
        ],
        controller: YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
          flags: const YoutubePlayerFlags(
            loop: true,
            autoPlay: true,
            mute: false,
            forceHD: true,
            enableCaption: true,
            showLiveFullscreenButton: true,
          ),
        ),
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        onReady: () {},
        onEnded: (metaData) {},
      ),
      builder: (context, player) => player,
    );
  }
}
