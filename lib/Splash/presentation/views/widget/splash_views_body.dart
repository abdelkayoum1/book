import 'package:book/constant_images.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewsBody extends StatefulWidget {
  const SplashViewsBody({super.key});

  @override
  State<SplashViewsBody> createState() => _BookViewsBodyState();
}

late AnimationController animate;
late Animation<Offset> animater;

class _BookViewsBodyState extends State<SplashViewsBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    slidingtext();
    NavigitToHome();
  }

  @override
  void dispose() {
    animate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Image.asset(Assets.logo),
        SlideTransition(
          position: animater,
          child: Text(textAlign: TextAlign.center, 'read Book'),
        ),
      ],
    );
  }

  void slidingtext() {
    animate = AnimationController(vsync: this, duration: Duration(seconds: 2));
    animater = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animate);

    animate.forward();
  }

  void NavigitToHome() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push('/home_views');
      //  Get.to(() => HomeViews(), transition: Transition.fadeIn);
    });
  }
}
