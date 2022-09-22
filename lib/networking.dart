 // ignore_for_file: unnecessary_string_interpolations, avoid_print, non_constant_identifier_names

 import 'package:flutter_youtube_downloader/flutter_youtube_downloader.dart';

class Networking{

 Future<void> downloadVideo(String youTube_link, String title) async {
        final result = await FlutterYoutubeDownloader.downloadVideo(
            youTube_link, "$title", 18);
        print(result);
      }
}

