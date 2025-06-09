import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            ListViewWidget(),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => PostWidget(),
              ),
            ),
            BottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.home, color: Colors.white, size: 30),
        Icon(Icons.search, color: Colors.white, size: 30),
        Icon(Icons.add_box_outlined, color: Colors.white, size: 30),
        Icon(Icons.favorite, color: Colors.white, size: 30),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(
              'assets/images/img_2.png',
              width: 35,
              height: 35,
            ),
          ),
        ),
      ],
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/img_3.png',
                  width: 60,
                  height: 60,
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Scarlett Johansson',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Iran ,teh',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz, color: Colors.white, size: 30),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/img_5.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.favorite, color: Colors.white, size: 30),
              SizedBox(width: 15),
              Icon(
                Icons.insert_comment_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 15),
              Icon(Icons.send_rounded, color: Colors.white, size: 30),
              Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white, size: 30),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 5),

              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/images/img_4.png',
                  fit: BoxFit.cover,
                  width: 35,
                  height: 35,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'Liked by Monica Bellucci and 343 others',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              'Monica Anna Maria Bellucci is an Italian actress and fashion '
              'model Matrix Reloaded',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => StoryWidget(),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                colors: [
                  Color(0xffFBAA47),
                  Color(0xffD91A46),
                  Color(0xffA60F93),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/img_1.png',
                  width: 85,
                  height: 85,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Your story',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.camera_alt_outlined, color: Color(0xffC4C4C4), size: 30),
        SizedBox(width: 58),
        Spacer(),
        Image.asset('assets/images/img.png', fit: BoxFit.cover, height: 200),
        Spacer(),
        Icon(Icons.live_tv, color: Color(0xffC4C4C4), size: 30),
        SizedBox(width: 15),
        Icon(Icons.send, color: Color(0xffC4C4C4), size: 30),
        SizedBox(width: 5),
      ],
    );
  }
}
