import 'package:flutter/material.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://businessline-eg.com/wp-content/uploads/2023/09/Google-Photos-750x375.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          'articleModel.titlehdhdjdjcnzbszbdbcjdzbjzbfjbdfbbfbfbfbbfbfbfbfbfbfbfbfbfbfbfbfbfbbcjvnzkjbJSBCjsbvkdbvgibfiabxk kcs viuseb',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'articleModel.subTitle ??cjanekjfcnahfbjebfaj jhbjebd uehwegbnqegqbwgedtuawysd ''',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}