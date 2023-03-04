import 'package:flutter/material.dart';
import 'package:hy_gamestreamapp/play_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF081131),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 78,
                      width: 200,
                      child: Center(
                        child: Text(
                          'Learn From The Real Master',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/user1.png',
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7E8BB6),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: listCategories.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 20);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF0E1839),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1.0,
                          color: Color(0xFF162044),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage(listCategories[index].imageUrl),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            listCategories[index].category,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Featured Streamers',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7E8BB6),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 242,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 20);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage(listFeatures[index].gameImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0x66FFFFFF),
                                shape: BoxShape.circle,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x33FFFFFF),
                                    blurStyle: BlurStyle.inner,
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: Icon(
                                Icons.play_arrow_sharp,
                                color: Color(0xB3FFFFFF),
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Image.asset(
                              listFeatures[index].imageUrl,
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listFeatures[index].streamer,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  listFeatures[index].gameTitle,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF7E8BB6),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Browse Game',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7E8BB6),
                  ),
                ),
              ),
              // SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SizedBox(
                  height: 200,
                  child: ListView.separated(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 20);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 120,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/game${index + 1}.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFEAFCB),
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF0E1839),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.language_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                color: Color(0xFF4B5782),
                onPressed: () {},
              ),
            ),
            Expanded(child: Text('')),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.play_arrow_outlined),
                color: Color(0xFF4B5782),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlayPage();
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person_outline_outlined),
                color: Color(0xFF4B5782),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Categories {
  final String imageUrl;
  final String category;
  Categories({
    required this.imageUrl,
    required this.category,
  });
}

List<Categories> listCategories = [
  Categories(
    imageUrl: 'assets/swords.png',
    category: 'Sword Art',
  ),
  Categories(
    imageUrl: 'assets/target.png',
    category: 'Shooter',
  ),
  Categories(
    imageUrl: 'assets/cards.png',
    category: 'Strategy',
  ),
];

class Features {
  final String streamer;
  final String imageUrl;
  final String gameImage;
  final String gameTitle;
  Features({
    required this.streamer,
    required this.imageUrl,
    required this.gameImage,
    required this.gameTitle,
  });
}

List<Features> listFeatures = [
  Features(
    streamer: 'Masayoshi',
    imageUrl: 'assets/user2.png',
    gameImage: 'assets/feat1.png',
    gameTitle: 'Spiderman',
  ),
  Features(
    streamer: 'Masayoshi',
    imageUrl: 'assets/user3.png',
    gameImage: 'assets/feat2.png',
    gameTitle: 'Fortnite Pro',
  ),
];
