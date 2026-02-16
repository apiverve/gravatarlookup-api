/// Response models for the Gravatar Lookup API.

/// API Response wrapper.
class GravatarlookupResponse {
  final String status;
  final dynamic error;
  final GravatarlookupData? data;

  GravatarlookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GravatarlookupResponse.fromJson(Map<String, dynamic> json) => GravatarlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GravatarlookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Gravatar Lookup API.

class GravatarlookupData {
  String? profileUrl;
  String? thumbnailUrl;
  List<GravatarlookupDataPhotosItem>? photos;
  String? displayName;
  String? aboutMe;
  String? currentLocation;
  String? company;
  List<GravatarlookupDataContactinfoItem>? contactInfo;
  List<GravatarlookupDataAccountsItem>? accounts;
  String? username;

  GravatarlookupData({
    this.profileUrl,
    this.thumbnailUrl,
    this.photos,
    this.displayName,
    this.aboutMe,
    this.currentLocation,
    this.company,
    this.contactInfo,
    this.accounts,
    this.username,
  });

  factory GravatarlookupData.fromJson(Map<String, dynamic> json) => GravatarlookupData(
      profileUrl: json['profileUrl'],
      thumbnailUrl: json['thumbnailUrl'],
      photos: (json['photos'] as List?)?.map((e) => GravatarlookupDataPhotosItem.fromJson(e)).toList(),
      displayName: json['displayName'],
      aboutMe: json['aboutMe'],
      currentLocation: json['currentLocation'],
      company: json['company'],
      contactInfo: (json['contactInfo'] as List?)?.map((e) => GravatarlookupDataContactinfoItem.fromJson(e)).toList(),
      accounts: (json['accounts'] as List?)?.map((e) => GravatarlookupDataAccountsItem.fromJson(e)).toList(),
      username: json['username'],
    );
}

class GravatarlookupDataPhotosItem {
  String? value;
  String? type;

  GravatarlookupDataPhotosItem({
    this.value,
    this.type,
  });

  factory GravatarlookupDataPhotosItem.fromJson(Map<String, dynamic> json) => GravatarlookupDataPhotosItem(
      value: json['value'],
      type: json['type'],
    );
}

class GravatarlookupDataContactinfoItem {
  String? type;
  String? value;

  GravatarlookupDataContactinfoItem({
    this.type,
    this.value,
  });

  factory GravatarlookupDataContactinfoItem.fromJson(Map<String, dynamic> json) => GravatarlookupDataContactinfoItem(
      type: json['type'],
      value: json['value'],
    );
}

class GravatarlookupDataAccountsItem {
  String? domain;
  String? display;
  String? url;
  String? iconUrl;
  bool? isHidden;
  String? username;
  bool? verified;
  String? name;
  String? shortname;

  GravatarlookupDataAccountsItem({
    this.domain,
    this.display,
    this.url,
    this.iconUrl,
    this.isHidden,
    this.username,
    this.verified,
    this.name,
    this.shortname,
  });

  factory GravatarlookupDataAccountsItem.fromJson(Map<String, dynamic> json) => GravatarlookupDataAccountsItem(
      domain: json['domain'],
      display: json['display'],
      url: json['url'],
      iconUrl: json['iconUrl'],
      isHidden: json['is_hidden'],
      username: json['username'],
      verified: json['verified'],
      name: json['name'],
      shortname: json['shortname'],
    );
}

class GravatarlookupRequest {
  String email;

  GravatarlookupRequest({
    required this.email,
  });

  Map<String, dynamic> toJson() => {
      'email': email,
    };
}
