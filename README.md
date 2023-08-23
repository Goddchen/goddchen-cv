# goddchen-cv

Production: https://goddchen-cv.web.app

Develop: https://goddchen-cv-dev.web.app

## Generate localization files

```bash
fvm dart run easy_localization:generate -S assets/translations/
fvm dart run easy_localization:generate -S assets/translations/ -f keys -o locale_keys.g.dart
```

### Powershell

```powershell
fvm dart run easy_localization:generate -S assets/translations/ ; fvm dart run easy_localization:generate -S assets/translations/ -f keys -o locale_keys.g.dart
```