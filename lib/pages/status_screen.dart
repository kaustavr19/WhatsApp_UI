import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_flutter/pages/story_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.black,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://avatars0.githubusercontent.com/u/54073521?s=460&u=435d63cc8d05543a9864c2d5948901294ba522b9&v=4"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Text(
                  "Tap to add status",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.redAccent,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed Updates",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Colors.redAccent,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(3.0),
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://avatars0.githubusercontent.com/u/54073521?s=460&u=435d63cc8d05543a9864c2d5948901294ba522b9&v=4"),
                ),
                title: Text(
                  "Dr. Strange",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Text(
                  "Today, a 1000 yrs ago",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoryPageView(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
