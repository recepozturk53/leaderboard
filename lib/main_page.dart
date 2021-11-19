import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:leaderboard/scheduled_order_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color _color = Color.fromRGBO(15, 19, 33, 1.0);
  Color _color3 = Color.fromRGBO(12, 14, 23, 1.0);
  Color _color2 = Color.fromRGBO(34, 66, 108, 1.0);
  Color _color4 = Color.fromRGBO(49, 105, 170, 1.0);
  final ScrollController _scrollController = ScrollController();

  String _image =
      "https://cdn.pixabay.com/photo/2017/03/30/18/17/girl-2189247__340.jpg";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: screenHeight * 0.23,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0)),
                  gradient: LinearGradient(
                      colors: [_color, _color2],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                controller: _scrollController,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return currenciesCard(context, index);
                },
              ),
            ),
          ),

          // top bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0)),
                  gradient: LinearGradient(
                      colors: [_color3, _color4],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: SafeArea(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                color: Color.fromRGBO(1, 183, 255, 1),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * .08),
                            child: FittedBox(
                              child: SizedBox.square(
                                dimension:
                                    MediaQuery.of(context).size.width * .16,
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1331&q=80",
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    color: Color(0xFF0F172A),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      CircleAvatar(
                                    radius: 28,
                                    backgroundColor: const Color(0xFF0F172A),
                                    child: LayoutBuilder(
                                      builder: (context, constraint) => Icon(
                                        Icons.error_rounded,
                                        color: const Color(0xFF1E293B),
                                        size: constraint.biggest.height,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Profit: +4444",
                            style: TextStyle(
                                color: Color.fromRGBO(1, 183, 255, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Cenk SOYKAN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "1",
                            style: TextStyle(
                                color: Color.fromRGBO(1, 183, 255, 1),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * .08),
                            child: FittedBox(
                              child: SizedBox.square(
                                dimension:
                                    MediaQuery.of(context).size.width * .16,
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1331&q=80",
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    color: Color(0xFF0F172A),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      CircleAvatar(
                                    radius: 28,
                                    backgroundColor: const Color(0xFF0F172A),
                                    child: LayoutBuilder(
                                      builder: (context, constraint) => Icon(
                                        Icons.error_rounded,
                                        color: const Color(0xFF1E293B),
                                        size: constraint.biggest.height,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Profit: +5341",
                            style: TextStyle(
                                color: Color.fromRGBO(1, 183, 255, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Big Boss",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                                color: Color.fromRGBO(1, 183, 255, 1),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * .08),
                            child: FittedBox(
                              child: SizedBox.square(
                                dimension:
                                    MediaQuery.of(context).size.width * .16,
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1331&q=80",
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    color: Color(0xFF0F172A),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      CircleAvatar(
                                    radius: 28,
                                    backgroundColor: const Color(0xFF0F172A),
                                    child: LayoutBuilder(
                                      builder: (context, constraint) => Icon(
                                        Icons.error_rounded,
                                        color: const Color(0xFF1E293B),
                                        size: constraint.biggest.height,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Profit: +3560",
                            style: TextStyle(
                                color: Color.fromRGBO(1, 183, 255, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Recep ÖZTÜRK",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
            ),
          ),

          // bottombar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.10,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [_color2, _color],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 36.0,
                    color: Colors.white,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ScheduledOrderPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 36.0,
                      width: 150.0,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Color.fromRGBO(1, 183, 255, 1),
                      ),
                      child: Center(
                          child: Text(
                        "Go on",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 36.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget currenciesCard(BuildContext context, int index) {
    return Card(
        shape: index == 5
            ? RoundedRectangleBorder(
                side: BorderSide(color: Colors.greenAccent, width: 1),
                borderRadius: BorderRadius.circular(10),
              )
            : null,
        color: Colors.white,
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [_color, _color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${index + 4}",
                        style: TextStyle(
                          color: Color.fromRGBO(1, 183, 255, 1),
                        ),
                      ),
                    ),
                    currenciesLogo(context),
                  ],
                ),
                Text(
                  index == 5 ? "Yourself" : "John Wick",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Profit: 4500",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }

  Widget currenciesLogo(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.width * .08),
      child: FittedBox(
        child: SizedBox.square(
          dimension: MediaQuery.of(context).size.width * .16,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl:
                "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1331&q=80",
            placeholder: (context, url) => const CircularProgressIndicator(
              color: Color(0xFF0F172A),
            ),
            errorWidget: (context, url, error) => CircleAvatar(
              radius: 28,
              backgroundColor: const Color(0xFF0F172A),
              child: LayoutBuilder(
                builder: (context, constraint) => Icon(
                  Icons.error_rounded,
                  color: const Color(0xFF1E293B),
                  size: constraint.biggest.height,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
