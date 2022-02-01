class Surah {
  Surah({
    this.number = 1,
    this.name = "",
    this.englishName = "",
    this.numberOfAyahs = 0,
  });

  int number;
  String name;
  String englishName;
  int numberOfAyahs;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json["number"] == null ? null : json["number"],
        name: json["name"] == null ? null : json["name"],
        englishName: json["englishName"] == null ? null : json["englishName"],
        numberOfAyahs:
            json["numberOfAyahs"] == null ? null : json["numberOfAyahs"],
      );

  Map<String, dynamic> toJson() => {
        "number": number == number,
        "name": name == name,
        "englishName": englishName == englishName,
        "numberOfAyahs": numberOfAyahs == numberOfAyahs,
      };
}
