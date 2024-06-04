class activeCaseModel {
  Complaints? complaints;

  activeCaseModel({this.complaints});

  activeCaseModel.fromJson(Map<String, dynamic> json) {
    complaints = json['complaints'] != null
        ? new Complaints.fromJson(json['complaints'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.complaints != null) {
      data['complaints'] = this.complaints!.toJson();
    }
    return data;
  }
}

class Complaints {
  int? progress;
  bool? isComplaintRejected;
  String? acknowledgementNumber;
  String? date;

  Complaints(
      {this.progress,
      this.isComplaintRejected,
      this.acknowledgementNumber,
      this.date});

  Complaints.fromJson(Map<String, dynamic> json) {
    progress = json['progress'];
    isComplaintRejected = json['isComplaintRejected'];
    acknowledgementNumber = json['acknowledgementNumber'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['progress'] = this.progress;
    data['isComplaintRejected'] = this.isComplaintRejected;
    data['acknowledgementNumber'] = this.acknowledgementNumber;
    data['date'] = this.date;
    return data;
  }
}
