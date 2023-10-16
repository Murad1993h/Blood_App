class AuthUserModel {
  AuthUserModel({
    Token? token,
    User? user,
  }) {
    _token = token;
    _user = user;
  }

  AuthUserModel.fromJson(dynamic json) {
    _token = json['token'] != null ? Token.fromJson(json['token']) : null;
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  Token? _token;
  User? _user;
  AuthUserModel copyWith({
    Token? token,
    User? user,
  }) =>
      AuthUserModel(
        token: token ?? _token,
        user: user ?? _user,
      );
  Token? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_token != null) {
      map['token'] = _token?.toJson();
    }
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

class User {
  User({
    num? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? donorId,
    dynamic twoFactorConfirmedAt,
    dynamic currentTeamId,
    dynamic profilePhotoPath,
    String? createdAt,
    String? updatedAt,
    String? profilePhotoUrl,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _donorId = donorId;
    _twoFactorConfirmedAt = twoFactorConfirmedAt;
    _currentTeamId = currentTeamId;
    _profilePhotoPath = profilePhotoPath;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _profilePhotoUrl = profilePhotoUrl;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _donorId = json['donor_id'];
    _twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    _currentTeamId = json['current_team_id'];
    _profilePhotoPath = json['profile_photo_path'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _profilePhotoUrl = json['profile_photo_url'];
  }
  num? _id;
  String? _name;
  String? _email;
  dynamic _emailVerifiedAt;
  String? _donorId;
  dynamic _twoFactorConfirmedAt;
  dynamic _currentTeamId;
  dynamic _profilePhotoPath;
  String? _createdAt;
  String? _updatedAt;
  String? _profilePhotoUrl;
  User copyWith({
    num? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? donorId,
    dynamic twoFactorConfirmedAt,
    dynamic currentTeamId,
    dynamic profilePhotoPath,
    String? createdAt,
    String? updatedAt,
    String? profilePhotoUrl,
  }) =>
      User(
        id: id ?? _id,
        name: name ?? _name,
        email: email ?? _email,
        emailVerifiedAt: emailVerifiedAt ?? _emailVerifiedAt,
        donorId: donorId ?? _donorId,
        twoFactorConfirmedAt: twoFactorConfirmedAt ?? _twoFactorConfirmedAt,
        currentTeamId: currentTeamId ?? _currentTeamId,
        profilePhotoPath: profilePhotoPath ?? _profilePhotoPath,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        profilePhotoUrl: profilePhotoUrl ?? _profilePhotoUrl,
      );
  num? get id => _id;
  String? get name => _name;
  String? get email => _email;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get donorId => _donorId;
  dynamic get twoFactorConfirmedAt => _twoFactorConfirmedAt;
  dynamic get currentTeamId => _currentTeamId;
  dynamic get profilePhotoPath => _profilePhotoPath;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get profilePhotoUrl => _profilePhotoUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['email_verified_at'] = _emailVerifiedAt;
    map['donor_id'] = _donorId;
    map['two_factor_confirmed_at'] = _twoFactorConfirmedAt;
    map['current_team_id'] = _currentTeamId;
    map['profile_photo_path'] = _profilePhotoPath;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['profile_photo_url'] = _profilePhotoUrl;
    return map;
  }
}

class Token {
  Token({
    String? name,
    List<String>? abilities,
    num? tokenableId,
    String? tokenableType,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) {
    _name = name;
    _abilities = abilities;
    _tokenableId = tokenableId;
    _tokenableType = tokenableType;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
  }

  Token.fromJson(dynamic json) {
    _name = json['name'];
    _abilities = json['abilities'] != null ? json['abilities'].cast<String>() : [];
    _tokenableId = json['tokenable_id'];
    _tokenableType = json['tokenable_type'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _name;
  List<String>? _abilities;
  num? _tokenableId;
  String? _tokenableType;
  String? _updatedAt;
  String? _createdAt;
  num? _id;
  Token copyWith({
    String? name,
    List<String>? abilities,
    num? tokenableId,
    String? tokenableType,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) =>
      Token(
        name: name ?? _name,
        abilities: abilities ?? _abilities,
        tokenableId: tokenableId ?? _tokenableId,
        tokenableType: tokenableType ?? _tokenableType,
        updatedAt: updatedAt ?? _updatedAt,
        createdAt: createdAt ?? _createdAt,
        id: id ?? _id,
      );
  String? get name => _name;
  List<String>? get abilities => _abilities;
  num? get tokenableId => _tokenableId;
  String? get tokenableType => _tokenableType;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['abilities'] = _abilities;
    map['tokenable_id'] = _tokenableId;
    map['tokenable_type'] = _tokenableType;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }
}
