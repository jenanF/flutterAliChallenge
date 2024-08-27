import 'package:flutter/material.dart';
import 'package:flutter_insta_challenge/home.dart';
import 'package:flutter_insta_challenge/posts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List item = [];
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    search.addListener(queryListener);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    search.removeListener(queryListener);
    search.dispose();
    super.dispose();
  }

  void queryListener() {
    search_(search.text);
  }

  void search_(String query) {
    if (query.isEmpty) {
      setState(() {
        item = posts_;
      });
    } else {
      setState(() {
        item = posts_.where((e) => e.contains(query)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SearchBar(
                controller: search,
                hintText: "Search..",
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: item.isEmpty ? posts_.length : item.length,
                itemBuilder: (context, index) {
                  //var check = item.isEmpty ? posts_[index] : item[index];
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Card(
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.network(
                                item.isEmpty
                                    ? posts_[index].avatar
                                    : item[index].avatar,
                                //check[index].avatar,
                                height: 39,
                                width: 39,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              item.isEmpty
                                  ? posts_[index].username
                                  : item[index].username,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
