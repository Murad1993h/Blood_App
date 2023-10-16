class TextModel {
  TextModel({
      String? id, 
      String? object, 
      num? created, 
      String? model, 
      List<Choices>? choices, 
      Usage? usage,}){
    _id = id;
    _object = object;
    _created = created;
    _model = model;
    _choices = choices;
    _usage = usage;
}

  TextModel.fromJson(dynamic json) {
    _id = json['id'];
    _object = json['object'];
    _created = json['created'];
    _model = json['model'];
    if (json['choices'] != null) {
      _choices = [];
      json['choices'].forEach((v) {
        _choices?.add(Choices.fromJson(v));
      });
    }
    _usage = json['usage'] != null ? Usage.fromJson(json['usage']) : null;
  }
  String? _id;
  String? _object;
  num? _created;
  String? _model;
  List<Choices>? _choices;
  Usage? _usage;

  String? get id => _id;
  String? get object => _object;
  num? get created => _created;
  String? get model => _model;
  List<Choices>? get choices => _choices;
  Usage? get usage => _usage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['object'] = _object;
    map['created'] = _created;
    map['model'] = _model;
    if (_choices != null) {
      map['choices'] = _choices?.map((v) => v.toJson()).toList();
    }
    if (_usage != null) {
      map['usage'] = _usage?.toJson();
    }
    return map;
  }

}

class Usage {
  Usage({
      num? promptTokens, 
      num? completionTokens, 
      num? totalTokens,}){
    _promptTokens = promptTokens;
    _completionTokens = completionTokens;
    _totalTokens = totalTokens;
}

  Usage.fromJson(dynamic json) {
    _promptTokens = json['prompt_tokens'];
    _completionTokens = json['completion_tokens'];
    _totalTokens = json['total_tokens'];
  }
  num? _promptTokens;
  num? _completionTokens;
  num? _totalTokens;

  num? get promptTokens => _promptTokens;
  num? get completionTokens => _completionTokens;
  num? get totalTokens => _totalTokens;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['prompt_tokens'] = _promptTokens;
    map['completion_tokens'] = _completionTokens;
    map['total_tokens'] = _totalTokens;
    return map;
  }

}

class Choices {
  Choices({
      num? index, 
      Message? message, 
      String? finishReason,}){
    _index = index;
    _message = message;
    _finishReason = finishReason;
}

  Choices.fromJson(dynamic json) {
    _index = json['index'];
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
    _finishReason = json['finish_reason'];
  }
  num? _index;
  Message? _message;
  String? _finishReason;

  num? get index => _index;
  Message? get message => _message;
  String? get finishReason => _finishReason;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['index'] = _index;
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    map['finish_reason'] = _finishReason;
    return map;
  }

}

class Message {
  Message({
      String? role, 
      String? content,}){
    _role = role;
    _content = content;
}

  Message.fromJson(dynamic json) {
    _role = json['role'];
    _content = json['content'];
  }
  String? _role;
  String? _content;

  String? get role => _role;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;
    map['content'] = _content;
    return map;
  }

}