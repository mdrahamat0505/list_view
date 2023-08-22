// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      lists: (json['lists'] as List<dynamic>?)
          ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'lists': instance.lists,
      'meta': instance.meta,
    };

ListElement _$ListElementFromJson(Map<String, dynamic> json) => ListElement(
      userData: json['userData'] == null
          ? null
          : ListUserData.fromJson(json['userData'] as Map<String, dynamic>),
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      source: json['source'] as String?,
      stats: json['stats'] == null
          ? null
          : ListStats.fromJson(json['stats'] as Map<String, dynamic>),
      share: json['share'] == null
          ? null
          : Share.fromJson(json['share'] as Map<String, dynamic>),
      configuration: json['configuration'] == null
          ? null
          : Configuration.fromJson(
              json['configuration'] as Map<String, dynamic>),
      headline: json['headline'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      itemTags: (json['itemTags'] as List<dynamic>?)
          ?.map((e) => e as List<dynamic>)
          .toList(),
      itemTagsByAlpha: (json['itemTagsByAlpha'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      curators: json['curators'] as List<dynamic>?,
    );

Map<String, dynamic> _$ListElementToJson(ListElement instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'source': instance.source,
      'stats': instance.stats,
      'share': instance.share,
      'configuration': instance.configuration,
      'headline': instance.headline,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'itemTags': instance.itemTags,
      'itemTagsByAlpha': instance.itemTagsByAlpha,
      'owner': instance.owner,
      'curators': instance.curators,
    };

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    Configuration(
      isModerated: json['isModerated'] as bool?,
      isPrivate: json['isPrivate'] as bool?,
      userCanAdd: json['userCanAdd'] as bool?,
      userCanComment: json['userCanComment'] as bool?,
      userCanSeeQueue: json['userCanSeeQueue'] as bool?,
      userCanVote: json['userCanVote'] as bool?,
      anonymousCanVote: json['anonymousCanVote'] as bool?,
      votingClosed: json['votingClosed'] as bool?,
      itemTimestamp: json['itemTimestamp'] as bool?,
      emojiVoting: json['emojiVoting'] as bool?,
      defaultSort: json['defaultSort'],
      defaultLayout: json['defaultLayout'],
    );

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'isModerated': instance.isModerated,
      'isPrivate': instance.isPrivate,
      'userCanAdd': instance.userCanAdd,
      'userCanComment': instance.userCanComment,
      'userCanSeeQueue': instance.userCanSeeQueue,
      'userCanVote': instance.userCanVote,
      'anonymousCanVote': instance.anonymousCanVote,
      'votingClosed': instance.votingClosed,
      'itemTimestamp': instance.itemTimestamp,
      'emojiVoting': instance.emojiVoting,
      'defaultSort': instance.defaultSort,
      'defaultLayout': instance.defaultLayout,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      userData: json['userData'] == null
          ? null
          : OwnerUserData.fromJson(json['userData'] as Map<String, dynamic>),
      id: json['id'],
      name: json['name'] as String?,
      screenName: json['screenName'] as String?,
      profileImage: json['profileImage'] as String?,
      stats: json['stats'] == null
          ? null
          : OwnerStats.fromJson(json['stats'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      headline: json['headline'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'userData': instance.userData,
      'id': instance.id,
      'name': instance.name,
      'screenName': instance.screenName,
      'profileImage': instance.profileImage,
      'stats': instance.stats,
      'bio': instance.bio,
      'status': instance.status,
      'headline': instance.headline,
    };

OwnerStats _$OwnerStatsFromJson(Map<String, dynamic> json) => OwnerStats(
      listCount: json['listCount'],
      followerCount: json['followerCount'],
      followingCount: json['followingCount'],
      helperCount: json['helperCount'],
      embedCount: json['embedCount'],
      viewCount: json['viewCount'],
      listSeenCount: json['listSeenCount'],
    );

Map<String, dynamic> _$OwnerStatsToJson(OwnerStats instance) =>
    <String, dynamic>{
      'listCount': instance.listCount,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'helperCount': instance.helperCount,
      'embedCount': instance.embedCount,
      'viewCount': instance.viewCount,
      'listSeenCount': instance.listSeenCount,
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      isCurator: json['isCurator'] as bool?,
      hasPro: json['hasPro'] as bool?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'isCurator': instance.isCurator,
      'hasPro': instance.hasPro,
    };

OwnerUserData _$OwnerUserDataFromJson(Map<String, dynamic> json) =>
    OwnerUserData(
      userIsMe: json['userIsMe'] as bool?,
      followedByMe: json['followedByMe'] as bool?,
    );

Map<String, dynamic> _$OwnerUserDataToJson(OwnerUserData instance) =>
    <String, dynamic>{
      'userIsMe': instance.userIsMe,
      'followedByMe': instance.followedByMe,
    };

Share _$ShareFromJson(Map<String, dynamic> json) => Share(
      shareTitle: json['shareTitle'] as String?,
      shareSource: json['shareSource'] as String?,
      shareDescription: json['shareDescription'] as String?,
      image: json['image'] as String?,
      shareUrl: json['shareUrl'] as String?,
    );

Map<String, dynamic> _$ShareToJson(Share instance) => <String, dynamic>{
      'shareTitle': instance.shareTitle,
      'shareSource': instance.shareSource,
      'shareDescription': instance.shareDescription,
      'image': instance.image,
      'shareUrl': instance.shareUrl,
    };

ListStats _$ListStatsFromJson(Map<String, dynamic> json) => ListStats(
      views: json['views'],
      helperCount: json['helperCount'],
      publishedItemCount: json['publishedItemCount'],
      queuedItemCount: json['queuedItemCount'],
      followerCount: json['followerCount'],
      favoritesCount: json['favoritesCount'],
      totalVotes: json['totalVotes'],
    );

Map<String, dynamic> _$ListStatsToJson(ListStats instance) => <String, dynamic>{
      'views': instance.views,
      'helperCount': instance.helperCount,
      'publishedItemCount': instance.publishedItemCount,
      'queuedItemCount': instance.queuedItemCount,
      'followerCount': instance.followerCount,
      'favoritesCount': instance.favoritesCount,
      'totalVotes': instance.totalVotes,
    };

ListUserData _$ListUserDataFromJson(Map<String, dynamic> json) => ListUserData(
      ownedByMe: json['ownedByMe'] as bool?,
      editablebyMe: json['editablebyMe'] as bool?,
      editableByMe: json['editableByMe'] as bool?,
      favoritedByMe: json['favoritedByMe'] as bool?,
    );

Map<String, dynamic> _$ListUserDataToJson(ListUserData instance) =>
    <String, dynamic>{
      'ownedByMe': instance.ownedByMe,
      'editablebyMe': instance.editablebyMe,
      'editableByMe': instance.editableByMe,
      'favoritedByMe': instance.favoritedByMe,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      pageType: json['pageType'] as String?,
      currentPage: json['currentPage'],
      perPage: json['perPage'],
      nextPage: json['nextPage'],
      previousPage: json['previousPage'],
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'pageType': instance.pageType,
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'nextPage': instance.nextPage,
      'previousPage': instance.previousPage,
    };
