class SliderModel {
  SliderModel({
    String? message,
    List<Slider>? slider,
  }) {
    _message = message;
    _slider = slider;
  }

  SliderModel.fromJson(dynamic json) {
    _message = json['message'];
    if (json['slider'] != null) {
      _slider = [];
      json['slider'].forEach((v) {
        _slider?.add(Slider.fromJson(v));
      });
    }
  }
  String? _message;
  List<Slider>? _slider;

  String? get message => _message;
  List<Slider>? get slider => _slider;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_slider != null) {
      map['slider'] = _slider?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Slider {
  Slider({
    num? id,
    String? sliderTitle,
    String? image,
    String? description,
    num? createdBy,
    num? updatedBy,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _sliderTitle = sliderTitle;
    _image = image;
    _description = description;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Slider.fromJson(dynamic json) {
    _id = json['id'];
    _sliderTitle = json['slider_title'];
    _image = json['image'];
    _description = json['description'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _sliderTitle;
  String? _image;
  String? _description;
  num? _createdBy;
  num? _updatedBy;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get sliderTitle => _sliderTitle;
  String? get image => _image;
  String? get description => _description;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['slider_title'] = _sliderTitle;
    map['image'] = _image;
    map['description'] = _description;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
