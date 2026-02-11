import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'app/app.dart';
import 'app/theme.dart';
import 'stories/all_stories.dart';
import 'components/brand/logo.dart';

void main() {
  runApp(const SharpsellStorybookApp());
}

class SharpsellStorybookApp extends StatelessWidget {
  const SharpsellStorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: allStories,
      initialStory: 'Design Tokens/Colors/Primitives',
      wrapperBuilder: (context, child) => MaterialApp(
        title: 'Sharpsell Design Storybook',
        theme: SharpsellTheme.lightTheme,
        darkTheme: SharpsellTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const SharpsellLogo(size: LogoSize.medium),
            centerTitle: false,
            elevation: 0,
            backgroundColor: SharpsellTheme.white,
            foregroundColor: SharpsellTheme.textPrimary,
          ),
          body: child,
        ),
      ),
    );
  }
}
