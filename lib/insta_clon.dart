import 'package:flutter/material.dart';

class insta_clon extends StatefulWidget {
  const insta_clon({super.key});

  @override
  State<insta_clon> createState() => _insta_clonState();
}

class _insta_clonState extends State<insta_clon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vicky',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        leading:
            const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                height: 200,
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                'https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg')),
                        SizedBox(height: 5),
                        Text(
                          'Vick',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Cricketer',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profiledetails('150', 'Posts'),
                              profiledetails('5k', 'Followers'),
                              profiledetails('100', 'Following'),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Follow'),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.arrow_downward,
                                  color: Colors.blue,
                                ),
                              ),
                              const SizedBox(width: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ])),
            Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, int index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://static.generated.photos/vue-static/face-generator/landing/wall/14.jpg')),
                            shape: BoxShape.circle,
                            color: Colors.orange),
                      ),
                      const Text('Text')
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 110,
              child: Column(
                children: [
                  const Divider(
                    color: Colors.grey,
                    thickness: .5,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Email', style: TextStyle(color: Colors.blue)),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        Text('Site', style: TextStyle(color: Colors.blue)),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: .5,
                          width: 4,
                        ),
                        Text('Phone', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: .5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.account_circle,
                              size: 33, color: Colors.blue)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite,
                              size: 33, color: Colors.blue)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.photo_album,
                              size: 33, color: Colors.blue)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.account_balance,
                              size: 33, color: Colors.blue)),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: ((context, index) {
                        return Container(
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://w0.peakpx.com/wallpaper/614/392/HD-wallpaper-lods-franck-portrait-women-500px-lidia-savoderova-brown-eyes.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.all(1));
                      }))),
            ),
          ],
        ),
      ),
    );
  }
}

Widget profiledetails(String text1, String text2) {
  return Column(children: [
    Text(
      text1,
      style: const TextStyle(fontSize: 24),
    ),
    Text(
      text2,
      style: const TextStyle(fontSize: 14),
    ),
  ]);
}
