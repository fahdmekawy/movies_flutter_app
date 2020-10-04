class Video {
  final String id, key, name, site, type;

  Video(this.id, this.key, this.name, this.site, this.type);

  Video.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        key = json["key"],
        name = json["name"],
        site = json["site"],
        type = json["type"];
}
