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
    "cv": {
      "bachelor": "BSc Software Engineering",
      "bachelor_description": "HTWG Konstanz",
      "formigas": "formigas GmbH",
      "formigas_description": "Senior Software Architect",
      "freelancer": "Freelander",
      "freelancer_description": "Android Development",
      "gymnasium": "Wirtschaftsgymnasium",
      "gymnasium_description": "Donaueschingen",
      "master": "MSc Informatik",
      "master_description": "HTWG Konstanz",
      "papierprintit": "papierprintit GmbH",
      "papierprintit_description": "Mobile Developer - Android",
      "realschule": "Realschule",
      "realschule_description": "Blumberg",
      "wissenschaftlicher_mitarbeiter": "Wissenschaftlicher Mitarbeiter",
      "wissenschaftlicher_mitarbeiter_description": "Konstanz",
      "zivildienst": "Zivildienst",
      "zivildienst_description": "Schwarzwald-Baar Villingen-Schwenningen - IT"
    },
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
    "cv": {
      "bachelor": "BSc Software Engineering",
      "bachelor_description": "University of Applied Sciences Konstanz",
      "formigas": "formigas GmbH",
      "formigas_description": "Senior Software Architect",
      "freelancer": "Freelander",
      "freelancer_description": "Android Development",
      "gymnasium": "Business Highschool",
      "gymnasium_description": "Donaueschingen",
      "master": "MSc Informatics",
      "master_description": "University of Applied Sciences Konstanz",
      "papierprintit": "papierprintit GmbH",
      "papierprintit_description": "Mobile Developer - Android",
      "realschule": "Secondary school",
      "realschule_description": "Blumberg",
      "wissenschaftlicher_mitarbeiter": "Scientific assistant",
      "wissenschaftlicher_mitarbeiter_description":
          "University of Applied Sciences Konstanz",
      "zivildienst": "Community service",
      "zivildienst_description":
          "Schwarzwald-Baar Hospital Villingen-Schwenningen - IT"
    },
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
