class AchivementModel {
  AchivementModel({
    this.totalHospital,
    this.totalUniversity,
    this.totalGroup,
    this.totalEvent,
    this.totalDonor,
  });

  AchivementModel.fromJson(dynamic json) {
    totalHospital = json['totalHospital'];
    totalUniversity = json['totalUniversity'];
    totalGroup = json['totalGroup'];
    totalEvent = json['totalEvent'];
    totalDonor = json['totalDonor'];
  }
  num? totalHospital;
  num? totalUniversity;
  num? totalGroup;
  num? totalEvent;
  num? totalDonor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalHospital'] = totalHospital;
    map['totalUniversity'] = totalUniversity;
    map['totalGroup'] = totalGroup;
    map['totalEvent'] = totalEvent;
    map['totalDonor'] = totalDonor;
    return map;
  }
}
