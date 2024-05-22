class categorieFraudTrends {
  Crime? crime;

  categorieFraudTrends({this.crime});

  categorieFraudTrends.fromJson(Map<String, dynamic> json) {
    crime = json['Crime'] != null ? new Crime.fromJson(json['Crime']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.crime != null) {
      data['Crime'] = this.crime!.toJson();
    }
    return data;
  }
}

class Crime {
  String? sId;
  String? category;
  String? description;
  String? youtubeVideoUrl;
  String? protection;

  Crime(
      {this.sId,
      this.category,
      this.description,
      this.youtubeVideoUrl,
      this.protection});

  Crime.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    category = json['category'];
    description = json['description'];
    youtubeVideoUrl = json['youtubeVideoUrl'];
    protection = json['protection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['category'] = this.category;
    data['description'] = this.description;
    data['youtubeVideoUrl'] = this.youtubeVideoUrl;
    data['protection'] = this.protection;
    return data;
  }
}
