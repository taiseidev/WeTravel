import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:status_view/status_view.dart';
import 'package:we_travel/features/profile/presentation/pages/profile_app_bar_page.dart';

class Trip {
  Trip({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.prefecture,
  });

  final String imageUrl;
  final String title;
  final String subTitle;
  final String prefecture;
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isShow = false;

  final list = <Trip>[
    Trip(
      imageUrl:
          'https://images.unsplash.com/photo-1610957386668-dd266c45734d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      title: '冬を楽しむ',
      subTitle: '寒さに負けない熱い旅を送ろう',
      prefecture: '北海道',
    ),
    Trip(
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/04/12/03/18/yokohama-2223502_1280.jpg',
      title: '中華街',
      subTitle: '異文化を楽しむ',
      prefecture: '神奈川',
    ),
    Trip(
      imageUrl:
          'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1794&q=80',
      title: '近代的',
      subTitle: '未来の東京を一足先に',
      prefecture: '東京',
    ),
    Trip(
      imageUrl:
          'https://cdn.pixabay.com/photo/2021/01/19/14/45/alley-5931413_1280.jpg',
      title: '歴史を感じる',
      subTitle: '京都で日本のひと時を',
      prefecture: '京都',
    ),
    Trip(
      imageUrl:
          'https://images.unsplash.com/photo-1624517608711-a16440e873c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      title: '西の都',
      subTitle: '福岡で日本の都市を味わおう',
      prefecture: '福岡',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ProfileAppBarPage(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Hero(
                      tag: 'profile',
                      child: GestureDetector(
                        onTap: () {},
                        child: StatusView(
                          radius: 40,
                          spacing: 15,
                          strokeWidth: 3,
                          indexOfSeenStatus: 2,
                          numberOfStatus: 5,
                          padding: 10,
                          centerImageUrl:
                              'https://images.unsplash.com/photo-1473625247510-8ceb1760943f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1411&q=80',
                          unSeenColor: Colors.red,
                        ),
                      ),
                    ),
                    const Gap(30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Gap(10),
                        SizedBox(height: 24),
                        Text(
                          'Taisei',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Gap(10),
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(10),
                        Text(
                          "Hi! I'm Flutter engineer.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(20),
              const NumbersWidget(),
              const Gap(20),
              const Text(
                '旅一覧',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Opacity(
                          opacity: 0.7,
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(list[index].imageUrl),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index].prefecture,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        list[index].title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        list[index].subTitle,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (index == 4)
                        Column(
                          children: const [
                            Text(
                              '読み込み',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUpgradeButton() => Column(
        children: [
          const Text(
            'FREE',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('become a paying member?'),
          )
        ],
      );
}

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '102', 'TRIP'),
          buildDivider(),
          buildButton(context, '35', 'Following'),
          buildDivider(),
          buildButton(context, '50', 'Followers'),
        ],
      );
  Widget buildDivider() => const SizedBox(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
