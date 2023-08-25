import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/generated/locale_keys.g.dart';

class DogSportView extends StatelessWidget {
  const DogSportView({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(LocaleKeys.hobbies_dog_sport_title).tr(),
        ),
        body: SingleChildScrollView(
          padding: pagePadding,
          child: Column(
            children: <Widget>[
              Text(
                LocaleKeys.hobbies_dog_sport_description,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ).tr(),
              const SizedBox(height: 16),
              _buildImageGrid(),
            ],
          ),
        ),
      );

  Widget _buildImageGrid() => GridView.extent(
        shrinkWrap: true,
        maxCrossAxisExtent: gridViewMaxExtent,
        childAspectRatio: 4 / 3,
        mainAxisSpacing: gridViewVerticalSpacing,
        crossAxisSpacing: gridViewHorizontalSpacing,
        physics: const NeverScrollableScrollPhysics(),
        children: <AssetGenImage>[
          Assets.images.hobbies.dogSport.image1,
          Assets.images.hobbies.dogSport.image2,
          Assets.images.hobbies.dogSport.image3,
          Assets.images.hobbies.dogSport.image4,
          Assets.images.hobbies.dogSport.image5,
          Assets.images.hobbies.dogSport.image6,
        ]
            .map(
              (final AssetGenImage assetGenImage) => ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: assetGenImage.image(
                        alignment:
                            assetGenImage == Assets.images.hobbies.igp.image4
                                ? Alignment.topCenter
                                : Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Material(
                        type: MaterialType.transparency,
                        child: Builder(
                          builder: (final BuildContext context) {
                            return InkWell(
                              onTap: () => showImageViewer(
                                context,
                                assetGenImage.provider(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      );
}
