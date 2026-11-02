/// Response models for the Gravatar Lookup API.

/// API Response wrapper.
class GravatarlookupResponse {
  final String status;
  final dynamic error;
  final GravatarlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GravatarlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GravatarlookupResponse.fromJson(Map<String, dynamic> json) => GravatarlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GravatarlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
  String? jobTitle;
  String? pronouns;
  String? pronunciation;
  String? avatarAltText;
  String? emailHash;
  String? username;
  List<dynamic>? contactInfo;
  List<GravatarlookupDataAccountsItem>? accounts;
  num? accountCount;
  num? verifiedAccountCount;
  bool? hasCustomAvatar;

  GravatarlookupData({
    this.profileUrl,
    this.thumbnailUrl,
    this.photos,
    this.displayName,
    this.aboutMe,
    this.currentLocation,
    this.company,
    this.jobTitle,
    this.pronouns,
    this.pronunciation,
    this.avatarAltText,
    this.emailHash,
    this.username,
    this.contactInfo,
    this.accounts,
    this.accountCount,
    this.verifiedAccountCount,
    this.hasCustomAvatar,
  });

  factory GravatarlookupData.fromJson(Map<String, dynamic> json) => GravatarlookupData(
      profileUrl: json['profileUrl'],
      thumbnailUrl: json['thumbnailUrl'],
      photos: (json['photos'] as List?)?.map((e) => GravatarlookupDataPhotosItem.fromJson(e)).toList(),
      displayName: json['displayName'],
      aboutMe: json['aboutMe'],
      currentLocation: json['currentLocation'],
      company: json['company'],
      jobTitle: json['jobTitle'],
      pronouns: json['pronouns'],
      pronunciation: json['pronunciation'],
      avatarAltText: json['avatarAltText'],
      emailHash: json['emailHash'],
      username: json['username'],
      contactInfo: (json['contactInfo'] as List?)?.cast<dynamic>(),
      accounts: (json['accounts'] as List?)?.map((e) => GravatarlookupDataAccountsItem.fromJson(e)).toList(),
      accountCount: json['accountCount'],
      verifiedAccountCount: json['verifiedAccountCount'],
      hasCustomAvatar: json['hasCustomAvatar'],
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

class GravatarlookupDataAccountsItem {
  String? domain;
  String? display;
  String? url;
  bool? verified;
  String? name;
  String? icon;
  bool? hidden;

  GravatarlookupDataAccountsItem({
    this.domain,
    this.display,
    this.url,
    this.verified,
    this.name,
    this.icon,
    this.hidden,
  });

  factory GravatarlookupDataAccountsItem.fromJson(Map<String, dynamic> json) => GravatarlookupDataAccountsItem(
      domain: json['domain'],
      display: json['display'],
      url: json['url'],
      verified: json['verified'],
      name: json['name'],
      icon: json['icon'],
      hidden: json['hidden'],
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
