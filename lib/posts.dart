
import 'package:flutter/material.dart';
import 'package:vamp_diaries/http_service.dart';
import 'package:vamp_diaries/post_models.dart';


class PostsPage extends StatefulWidget {
  //final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Characters"),
      ),
          body:FutureBuilder(
            future: HttpService.getPosts(),
            builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot)
            { if (snapshot.hasData){
              List<Post>? posts =snapshot.data;

              /*return ListView(
                children:
                posts!.map((Post post) => ListTile(
                  title: Text(post.character),
                leading: Text(post.id.toString()),
                subtitle: Text(post.actor),
                trailing:Text(post.episodeCount.toString()),))
                .toList(),

              );*/

              return Center(
                //child: Container(
                //height:100,
                //width:350,
                  child: posts!.map((Post post) =>Card(
                    child: ListView(
                      children:
                       ListTile(
                        title: Text(post.character),
                        leading: Text(post.id.toString()),
                        subtitle: Text(post.actor),
                        trailing:Text(post.episodeCount.toString()),))
                          .toList(),

                    ),
                    elevation:10,
                    //color: Colors.pink,
                    //shadowColor: Colors.black

                  )

              );

              /*return Center(
                //child: Container(
                //height:100,
                //width:350,
                  child: Card(
                    child: ListView(
                      children:
                      posts!.map((Post post) => ListTile(
                        title: Text(post.character),
                        leading: Text(post.id.toString()),
                        subtitle: Text(post.actor),
                        trailing:Text(post.episodeCount.toString()),))
                          .toList(),

                    ),
                    elevation:10,
                    //color: Colors.pink,
                    //shadowColor: Colors.black

                  )

              );*/

            }
              return Center(child:CircularProgressIndicator());},),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}



