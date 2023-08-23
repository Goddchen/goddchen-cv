import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/hobbies/lol/hobby_lol_navigation_service.dart';

class LolView extends StatelessWidget {
  final HobbyLolNavigationService _navigationService;

  const LolView({
    super.key,
    required final HobbyLolNavigationService navigationService,
  }) : _navigationService = navigationService;

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('League of Legends'),
        ),
        body: SingleChildScrollView(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Assets.images.hobbies.lol.title.image(
                height: 100,
              ),
              const SizedBox(height: 16),
              Text(
                'League of Legends by Riot Games is a MOBA (Multiplayer Online Battle Arena) game.\n'
                'I have been playing since 2015.\n'
                'You are playing as a team of 5 and I love playing with friends.\n'
                'Over the years, even a few of my best real-life friendships have developed through playing this game.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              _buildOpGg(),
              const SizedBox(height: 16),
              _buildYoutube(),
              const SizedBox(height: 16),
              _buildTwitch(),
            ],
          ),
        ),
      );

  Widget _buildOpGg() => Builder(
        builder: (final BuildContext context) => RichText(
          text: TextSpan(
            text: 'My profile on op.gg',
            style: optionOf(Theme.of(context).textTheme.bodyMedium)
                .map(
                  (final TextStyle textStyle) => textStyle.copyWith(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                )
                .toNullable(),
            recognizer: TapGestureRecognizer()
              ..onTap = () => _navigationService.openLink(
                    link: Uri.parse('https://www.op.gg/summoners/euw/Goddchen'),
                  ),
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildTwitch() => Builder(
        builder: (final BuildContext context) => RichText(
          text: TextSpan(
            text: 'My Twitch channel',
            style: optionOf(Theme.of(context).textTheme.bodyMedium)
                .map(
                  (final TextStyle textStyle) => textStyle.copyWith(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                )
                .toNullable(),
            recognizer: TapGestureRecognizer()
              ..onTap = () => _navigationService.openLink(
                    link: Uri.parse(
                      'https://www.twitch.tv/Goddchen',
                    ),
                  ),
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildYoutube() => Builder(
        builder: (final BuildContext context) => RichText(
          text: TextSpan(
            text: 'My League of Legends playlist on Youtube',
            style: optionOf(Theme.of(context).textTheme.bodyMedium)
                .map(
                  (final TextStyle textStyle) => textStyle.copyWith(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                )
                .toNullable(),
            recognizer: TapGestureRecognizer()
              ..onTap = () => _navigationService.openLink(
                    link: Uri.parse(
                      'https://www.youtube.com/playlist?list=PLHV2Ps17P85TNE_S1CbdgxSQSrCw6_B7R',
                    ),
                  ),
          ),
          textAlign: TextAlign.center,
        ),
      );
}
