class Language {
  final int id;
  final String name;
  final String langCode;

  Language(this.id, this.name, this.langCode);

  static List<Language> langList = [
    Language(1, 'English', 'en'),
    Language(2, 'Spanish', 'es')
  ];
}
