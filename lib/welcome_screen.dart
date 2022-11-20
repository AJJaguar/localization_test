import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_test/l10n/models.dart';
import 'package:localization_test/main.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Welcome Screen'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.hellouser,
              style: Theme.of(context).textTheme.headline5,
            ),
            DropdownButton<Language>(
                value: dropdownvalue,
                items: Language.langList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  );
                }).toList(),
                onChanged: (Language? language) {
                  if (language != null) {
                    MyApp.setLocale(context, Locale(language.langCode, ''));
                  }
                  dropdownvalue = language!;
                })
          ],
        ),
      ),
    );
  }

  Language dropdownvalue = Language.langList.first;
}
