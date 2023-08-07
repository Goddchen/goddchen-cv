import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

const Color githubColor = Color.fromARGB(255, 0, 0, 0);
const double gridViewChildAspectRatio = 4 / 3;
const double gridViewHorizontalSpacing = 8;
const double gridViewMaxExtent = 600;
const double gridViewVerticalSpacing = 8;
const Color portfolioColor = Color.fromARGB(255, 0, 123, 255);
final GlobalKey portfolioKey = GlobalKey(debugLabel: 'portfolio');
final GlobalKey prsKey = GlobalKey(debugLabel: 'prs');
final GlobalKey scaffoldKey = GlobalKey(debugLabel: 'scaffold');
const Color youtubeColor = Color.fromARGB(255, 255, 0, 0);
final GlobalKey youtubeVideosKey = GlobalKey(debugLabel: 'youtube-videos');
