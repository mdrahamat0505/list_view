import 'package:json_annotation/json_annotation.dart';
part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  List<ListElement>? lists;
  Meta? meta;

  UserData({
    this.lists,
    this.meta,
  });

  UserData copyWith({
    List<ListElement>? lists,
    Meta? meta,
  }) =>
      UserData(
        lists: lists ?? this.lists,
        meta: meta ?? this.meta,
      );

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

@JsonSerializable()
class ListElement {
  ListUserData? userData;
  String? id;
  String? title;
  String? description;
  String? source;
  ListStats? stats;
  Share? share;
  Configuration? configuration;
  String? headline;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<List<dynamic>>? itemTags;
  List<String>? itemTagsByAlpha;
  Owner? owner;
  List<dynamic>? curators;

  ListElement({
    this.userData,
    this.id,
    this.title,
    this.description,
    this.source,
    this.stats,
    this.share,
    this.configuration,
    this.headline,
    this.createdAt,
    this.updatedAt,
    this.itemTags,
    this.itemTagsByAlpha,
    this.owner,
    this.curators,
  });

  ListElement copyWith({
    ListUserData? userData,
    String? id,
    String? title,
    String? description,
    String? source,
    ListStats? stats,
    Share? share,
    Configuration? configuration,
    String? headline,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<List<dynamic>>? itemTags,
    List<String>? itemTagsByAlpha,
    Owner? owner,
    List<dynamic>? curators,
  }) =>
      ListElement(
        userData: userData ?? this.userData,
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        source: source ?? this.source,
        stats: stats ?? this.stats,
        share: share ?? this.share,
        configuration: configuration ?? this.configuration,
        headline: headline ?? this.headline,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        itemTags: itemTags ?? this.itemTags,
        itemTagsByAlpha: itemTagsByAlpha ?? this.itemTagsByAlpha,
        owner: owner ?? this.owner,
        curators: curators ?? this.curators,
      );

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);

  Map<String, dynamic> toJson() => _$ListElementToJson(this);
}

@JsonSerializable()
class Configuration {
  bool? isModerated;
  bool? isPrivate;
  bool? userCanAdd;
  bool? userCanComment;
  bool? userCanSeeQueue;
  bool? userCanVote;
  bool? anonymousCanVote;
  bool? votingClosed;
  bool? itemTimestamp;
  bool? emojiVoting;
  dynamic defaultSort;
  dynamic defaultLayout;

  Configuration({
    this.isModerated,
    this.isPrivate,
    this.userCanAdd,
    this.userCanComment,
    this.userCanSeeQueue,
    this.userCanVote,
    this.anonymousCanVote,
    this.votingClosed,
    this.itemTimestamp,
    this.emojiVoting,
    this.defaultSort,
    this.defaultLayout,
  });

  Configuration copyWith({
    bool? isModerated,
    bool? isPrivate,
    bool? userCanAdd,
    bool? userCanComment,
    bool? userCanSeeQueue,
    bool? userCanVote,
    bool? anonymousCanVote,
    bool? votingClosed,
    bool? itemTimestamp,
    bool? emojiVoting,
    dynamic defaultSort,
    dynamic defaultLayout,
  }) =>
      Configuration(
        isModerated: isModerated ?? this.isModerated,
        isPrivate: isPrivate ?? this.isPrivate,
        userCanAdd: userCanAdd ?? this.userCanAdd,
        userCanComment: userCanComment ?? this.userCanComment,
        userCanSeeQueue: userCanSeeQueue ?? this.userCanSeeQueue,
        userCanVote: userCanVote ?? this.userCanVote,
        anonymousCanVote: anonymousCanVote ?? this.anonymousCanVote,
        votingClosed: votingClosed ?? this.votingClosed,
        itemTimestamp: itemTimestamp ?? this.itemTimestamp,
        emojiVoting: emojiVoting ?? this.emojiVoting,
        defaultSort: defaultSort ?? this.defaultSort,
        defaultLayout: defaultLayout ?? this.defaultLayout,
      );

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}

enum DefaultLayout { FULL, MAGAZINE }

enum DefaultSort { CROWDRANK }

@JsonSerializable()
class Owner {
  OwnerUserData? userData;
  dynamic? id;
  String? name;
  String? screenName;
  String? profileImage;
  OwnerStats? stats;
  String? bio;
  Status? status;
  String? headline;

  Owner({
    this.userData,
    this.id,
    this.name,
    this.screenName,
    this.profileImage,
    this.stats,
    this.bio,
    this.status,
    this.headline,
  });

  Owner copyWith({
    OwnerUserData? userData,
    dynamic? id,
    String? name,
    String? screenName,
    String? profileImage,
    OwnerStats? stats,
    String? bio,
    Status? status,
    String? headline,
  }) =>
      Owner(
        userData: userData ?? this.userData,
        id: id ?? this.id,
        name: name ?? this.name,
        screenName: screenName ?? this.screenName,
        profileImage: profileImage ?? this.profileImage,
        stats: stats ?? this.stats,
        bio: bio ?? this.bio,
        status: status ?? this.status,
        headline: headline ?? this.headline,
      );

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class OwnerStats {
  dynamic listCount;
  dynamic followerCount;
  dynamic followingCount;
  dynamic helperCount;
  dynamic embedCount;
  dynamic viewCount;
  dynamic listSeenCount;

  OwnerStats({
    this.listCount,
    this.followerCount,
    this.followingCount,
    this.helperCount,
    this.embedCount,
    this.viewCount,
    this.listSeenCount,
  });

  OwnerStats copyWith({
    dynamic? listCount,
    dynamic? followerCount,
    dynamic? followingCount,
    dynamic? helperCount,
    dynamic? embedCount,
    dynamic? viewCount,
    dynamic? listSeenCount,
  }) =>
      OwnerStats(
        listCount: listCount ?? this.listCount,
        followerCount: followerCount ?? this.followerCount,
        followingCount: followingCount ?? this.followingCount,
        helperCount: helperCount ?? this.helperCount,
        embedCount: embedCount ?? this.embedCount,
        viewCount: viewCount ?? this.viewCount,
        listSeenCount: listSeenCount ?? this.listSeenCount,
      );

  factory OwnerStats.fromJson(Map<String, dynamic> json) =>
      _$OwnerStatsFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerStatsToJson(this);
}

@JsonSerializable()
class Status {
  bool? isCurator;
  bool? hasPro;

  Status({
    this.isCurator,
    this.hasPro,
  });

  Status copyWith({
    bool? isCurator,
    bool? hasPro,
  }) =>
      Status(
        isCurator: isCurator ?? this.isCurator,
        hasPro: hasPro ?? this.hasPro,
      );

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable()
class OwnerUserData {
  bool? userIsMe;
  bool? followedByMe;

  OwnerUserData({
    this.userIsMe,
    this.followedByMe,
  });

  OwnerUserData copyWith({
    bool? userIsMe,
    bool? followedByMe,
  }) =>
      OwnerUserData(
        userIsMe: userIsMe ?? this.userIsMe,
        followedByMe: followedByMe ?? this.followedByMe,
      );

  factory OwnerUserData.fromJson(Map<String, dynamic> json) =>
      _$OwnerUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerUserDataToJson(this);
}

@JsonSerializable()
class Share {
  String? shareTitle;
  String? shareSource;
  String? shareDescription;
  String? image;
  String? shareUrl;

  Share({
    this.shareTitle,
    this.shareSource,
    this.shareDescription,
    this.image,
    this.shareUrl,
  });

  Share copyWith({
    String? shareTitle,
    String? shareSource,
    String? shareDescription,
    String? image,
    String? shareUrl,
  }) =>
      Share(
        shareTitle: shareTitle ?? this.shareTitle,
        shareSource: shareSource ?? this.shareSource,
        shareDescription: shareDescription ?? this.shareDescription,
        image: image ?? this.image,
        shareUrl: shareUrl ?? this.shareUrl,
      );

  factory Share.fromJson(Map<String, dynamic> json) => _$ShareFromJson(json);

  Map<String, dynamic> toJson() => _$ShareToJson(this);
}

@JsonSerializable()
class ListStats {
  dynamic? views;
  dynamic? helperCount;
  dynamic? publishedItemCount;
  dynamic? queuedItemCount;
  dynamic? followerCount;
  dynamic? favoritesCount;
  dynamic? totalVotes;

  ListStats({
    this.views,
    this.helperCount,
    this.publishedItemCount,
    this.queuedItemCount,
    this.followerCount,
    this.favoritesCount,
    this.totalVotes,
  });

  ListStats copyWith({
    dynamic? views,
    dynamic? helperCount,
    dynamic? publishedItemCount,
    dynamic? queuedItemCount,
    dynamic? followerCount,
    dynamic? favoritesCount,
    dynamic? totalVotes,
  }) =>
      ListStats(
        views: views ?? this.views,
        helperCount: helperCount ?? this.helperCount,
        publishedItemCount: publishedItemCount ?? this.publishedItemCount,
        queuedItemCount: queuedItemCount ?? this.queuedItemCount,
        followerCount: followerCount ?? this.followerCount,
        favoritesCount: favoritesCount ?? this.favoritesCount,
        totalVotes: totalVotes ?? this.totalVotes,
      );
  factory ListStats.fromJson(Map<String, dynamic> json) =>
      _$ListStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ListStatsToJson(this);
}

@JsonSerializable()
class ListUserData {
  bool? ownedByMe;
  bool? editablebyMe;
  bool? editableByMe;
  bool? favoritedByMe;

  ListUserData({
    this.ownedByMe,
    this.editablebyMe,
    this.editableByMe,
    this.favoritedByMe,
  });

  ListUserData copyWith({
    bool? ownedByMe,
    bool? editablebyMe,
    bool? editableByMe,
    bool? favoritedByMe,
  }) =>
      ListUserData(
        ownedByMe: ownedByMe ?? this.ownedByMe,
        editablebyMe: editablebyMe ?? this.editablebyMe,
        editableByMe: editableByMe ?? this.editableByMe,
        favoritedByMe: favoritedByMe ?? this.favoritedByMe,
      );
  factory ListUserData.fromJson(Map<String, dynamic> json) =>
      _$ListUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$ListUserDataToJson(this);
}

@JsonSerializable()
class Meta {
  String? pageType;
  dynamic? currentPage;
  dynamic? perPage;
  dynamic? nextPage;
  dynamic previousPage;

  Meta({
    this.pageType,
    this.currentPage,
    this.perPage,
    this.nextPage,
    this.previousPage,
  });

  Meta copyWith({
    String? pageType,
    dynamic? currentPage,
    dynamic? perPage,
    dynamic? nextPage,
    dynamic previousPage,
  }) =>
      Meta(
        pageType: pageType ?? this.pageType,
        currentPage: currentPage ?? this.currentPage,
        perPage: perPage ?? this.perPage,
        nextPage: nextPage ?? this.nextPage,
        previousPage: previousPage ?? this.previousPage,
      );

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
