import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

// cached network image
class NewsTile extends StatelessWidget {


  NewsTile({super.key, required this.newsmodel});

  final NewsModel newsmodel;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 30,),
            Image.network(newsmodel.image ??=
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
              fit: BoxFit.cover,),
            const SizedBox(height: 5,),
            Text(newsmodel.text1 ?? '', maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Text(newsmodel.text2 ?? '', maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20, color: Colors.grey),),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse(newsmodel.url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  }
