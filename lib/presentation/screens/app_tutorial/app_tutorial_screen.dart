import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title,
    this.caption,
    this.imageUrl,
  );
}

final slides = <SlideInfo>[
  SlideInfo('get the food', 'lorem ipsum dolor sit amet consectetur adipiscing elit', 'assets/images/1.png'),
  SlideInfo('fast delivery', 'lorem ipsum dolor consectetur adipiscing elit lorem ipsum dolor  sit amet consectetur adipiscing elit', 'assets/images/2.png'),
  SlideInfo('enjoy the food', 'lorem ipsum dolor sit amet consectetur adipiscing elit lorem ipsum dolor sit amet consectetur adipiscing elit', 'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  static const name = 'app_tutorial_screen';

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  late final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {    
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if(!endReached && page >= slides.length - 1.5) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slide) => _Slide(title: slide.title, caption: slide.caption, imageUrl: slide.imageUrl)).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Skip'),
              onPressed: () => context.pop(), 
            ),
          ),

         endReached ? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(milliseconds: 300),
              child: FilledButton(
                child: const Text('Start'),
                onPressed: () => context.pop(), 
                ),
            ),
          ): const SizedBox(),

        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;


  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10),
            Text(caption, style: captionStyle,),
          ],
        )
      ),
    );
  }
}
