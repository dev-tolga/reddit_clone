import 'package:flutter/material.dart';
import 'package:reddit_clone/api/api_conts.dart';
import 'package:reddit_clone/models/reddit_model.dart';

class ReditCloneAppList extends StatefulWidget {
  @override
  _SpaceAppListState createState() => _SpaceAppListState();
}

class _SpaceAppListState extends State<ReditCloneAppList> {
  // ignore: deprecated_member_use
  var reddit = Reddit();
  _getData() {
    var data = ApiBase.get();
    return data;
  }

  initState() {
    super.initState();
    _getData();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Reddit>(
      future: _getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          reddit = snapshot.data;
          return _getListView(reddit);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  ListView _getListView(Reddit data) {
    return ListView.builder(
        itemCount: data.data.children.length,
        itemBuilder: (context, index) {
          return _tile(data.data.children[index].data.title,
              data.data.children[index].data.thumbnail, data.data.children[index].data.thumbnail);
        });
  }

  Material _tile(String title, String thumbnail, String desc) => Material(
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(thumbnail),
                  ),
                  title: Text(title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                  subtitle: Text(desc == null ? "Test" : desc),
                ),
              ],
            ),
          ),
        ),
      );
}
