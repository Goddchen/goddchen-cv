import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/generated/locale_keys.g.dart';

class IgpView extends StatelessWidget {
  const IgpView({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(LocaleKeys.hobbies_igp_title).tr(),
        ),
        body: SingleChildScrollView(
          padding: pagePadding,
          child: Column(
            children: <Widget>[
              Text(
                LocaleKeys.hobbies_igp_description,
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
          Assets.images.hobbies.igp.image1,
          Assets.images.hobbies.igp.image2,
          Assets.images.hobbies.igp.image3,
          Assets.images.hobbies.igp.image4,
          Assets.images.hobbies.igp.image5,
          Assets.images.hobbies.igp.image6,
          Assets.images.hobbies.igp.image7,
          Assets.images.hobbies.igp.image8,
          Assets.images.hobbies.igp.image9,
          Assets.images.hobbies.igp.image10,
          Assets.images.hobbies.igp.image11,
          Assets.images.hobbies.igp.image12,
          Assets.images.hobbies.igp.image13,
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
