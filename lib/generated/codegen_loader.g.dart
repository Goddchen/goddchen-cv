// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> de = {
    "home": {"view_on_github": "Auf GitHub ansehen"},
    "navigation": {
      "cv": "CV",
      "hobbies": "Hobbies",
      "portfolio": "Portfolio",
      "prs": "PRs",
      "youtube": "Youtube"
    },
    "sections": {
      "cv": {"title": "CV"},
      "hobbies": {"title": "Hobbies"},
      "portfolio": {"title": "Portfolio"},
      "prs": {"title": "Merged PRs"},
      "youtube": {"title": "Youtube"}
    }
  };
  static const Map<String, dynamic> en = {
    "home": {"view_on_github": "View on GitHub"},
    "navigation": {
      "cv": "CV",
      "hobbies": "Hobbies",
      "portfolio": "Portfolio",
      "prs": "PRs",
      "youtube": "Youtube"
    },
    "sections": {
      "cv": {"title": "CV"},
      "hobbies": {"title": "Hobbies"},
      "portfolio": {"title": "Portfolio"},
      "prs": {"title": "Merged PRs"},
      "youtube": {"title": "Youtube"}
    }
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "de": de,
    "en": en
  };
}
