class ApiResModel {
  int? count;
  List<Entry>? entries;

  ApiResModel({
    this.count,
    this.entries,
  });

  factory ApiResModel.fromJson(Map<String, dynamic> json) => ApiResModel(
        count: json["count"],
        entries: json["entries"] == null
            ? []
            : List<Entry>.from(json["entries"]!.map((x) => Entry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "entries": entries == null
            ? []
            : List<dynamic>.from(entries!.map((x) => x.toJson())),
      };
}

class Entry {
  String? api;
  String? description;
  String? auth;
  bool? https;
  String? cors;
  String? link;
  String? category;

  Entry({
    this.api,
    this.description,
    this.auth,
    this.https,
    this.cors,
    this.link,
    this.category,
  });

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        api: json["API"],
        description: json["Description"],
        auth: json["Auth"],
        https: json["HTTPS"],
        cors: json["Cors"],
        link: json["Link"],
        category: json["Category"],
      );

  Map<String, dynamic> toJson() => {
        "API": api,
        "Description": description,
        "Auth": auth,
        "HTTPS": https,
        "Cors": cors,
        "Link": link,
        "Category": category,
      };
}
