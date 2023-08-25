import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/generated/locale_keys.g.dart';
import 'package:goddchen_cv/hobbies/ksp/hobby_ksp_navigation_service.dart';

class KspView extends StatelessWidget {
  final HobbyKspNavigationService _navigationService;

  const KspView({
    super.key,
    required final HobbyKspNavigationService navigationService,
  }) : _navigationService = navigationService;

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(LocaleKeys.hobbies_ksp_title).tr(),
        ),
        body: SingleChildScrollView(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Assets.images.hobbies.ksp.title.image(
                height: 100,
              ),
              const SizedBox(height: 16),
              Text(
                LocaleKeys.hobbies_ksp_description,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ).tr(),
              const SizedBox(height: 16),
              _buildPrometheusExporter(),
              const SizedBox(height: 16),
              _buildYoutube(),
              const SizedBox(height: 16),
              _buildTwitch(),
            ],
          ),
        ),
      );

  Widget _buildPrometheusExporter() => Column(
        children: <Widget>[
          buildLink(
            text: 'KSP2 Prometheus Exporter on GitHub',
            onTap: () => _navigationService.openLink(
              link: Uri.parse(
                'https://github.com/Goddchen/KSP2PrometheusExporter',
              ),
            ),
          ),
          const SizedBox(height: 16),
          buildLink(
            text: 'KSP2 Prometheus Exporter on SpaceDock',
            onTap: () => _navigationService.openLink(
              link: Uri.parse(
                'https://spacedock.info/mod/3370/KSP2%20Prometheus%20Exporter',
              ),
            ),
          ),
        ],
      );

  Widget _buildTwitch() => buildLink(
        text: 'My Twitch channel',
        onTap: () => _navigationService.openLink(
          link: Uri.parse('https://www.twitch.tv/Goddchen'),
        ),
      );

  Widget _buildYoutube() => buildLink(
        text: 'My KSP related playlists on Youtube',
        onTap: () => _navigationService.openLink(
          link: Uri.parse(
            'https://www.youtube.com/@Goddchen/playlists',
          ),
        ),
      );
}
