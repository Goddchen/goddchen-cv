import 'package:flutter/material.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';

class IgpView extends StatelessWidget {
  const IgpView({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Dog Sport: IGP'),
        ),
        body: SingleChildScrollView(
          padding: pagePadding,
          child: Column(
            children: <Widget>[
              GridView.extent(
                shrinkWrap: true,
                maxCrossAxisExtent: gridViewMaxExtent,
                childAspectRatio: 4 / 3,
                mainAxisSpacing: gridViewVerticalSpacing,
                crossAxisSpacing: gridViewHorizontalSpacing,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Assets.images.hobbies.igp.image1.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image2.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image3.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image4.image(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image5.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image6.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image7.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image8.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image9.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image10.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image11.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image12.image(
                    fit: BoxFit.cover,
                  ),
                  Assets.images.hobbies.igp.image13.image(
                    fit: BoxFit.cover,
                  ),
                ]
                    .map(
                      (final Widget widget) => ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(child: widget),
                            Positioned.fill(
                              child: Material(
                                type: MaterialType.transparency,
                                child: InkWell(
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      );
}
