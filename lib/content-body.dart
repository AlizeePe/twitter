import 'package:flutter/material.dart';

class ContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Image.network(
              width: 125,
              fit: BoxFit.fill,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/640px-Cat03.jpg"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("LeMiaou@Croquettes"),
                      Text(
                        "50s",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      "publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                ],
              ),
            ),
          )
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Répondre"),
              Text("Retweet"),
              Text("Favoris"),
            ],
          ),
        )
      ],
    );
  }
}
