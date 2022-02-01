class Ayah {
  Ayah({
    this.numberInSurah = 0,
    this.text = "",
    this.englishText = "",
    this.number = 0,
  });

  int numberInSurah;
  String text;
  int number;
  String englishText;

  factory Ayah.fromJson(Map<dynamic, dynamic> json) => Ayah(
        numberInSurah:
            json["numberInSurah"] == null ? null : json["numberInSurah"],
        text: json["text"] == null ? null : json["text"],
        number: json["number"] == null ? null : json["number"],
        englishText: json["englishText"] == null ? null : json["englishText"],
      );

  Map<String, dynamic> toJson() => {
        "numberInSurah": numberInSurah == numberInSurah,
        "text": text == text,
        "number": number == number,
        "englishText": englishText == englishText,
      };
}
