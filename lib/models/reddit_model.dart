// To parse this JSON data, do
//
//     final reddit = redditFromJson(jsonString);

import 'dart:convert';

Reddit redditFromJson(String str) => Reddit.fromJson(json.decode(str));

String redditToJson(Reddit data) => json.encode(data.toJson());

class Reddit {
  Reddit({
    this.kind,
    this.data,
  });

  String kind;
  RedditData data;

  factory Reddit.fromJson(Map<String, dynamic> json) => Reddit(
        kind: json["kind"] == null ? null : json["kind"],
        data: json["data"] == null ? null : RedditData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "data": data == null ? null : data.toJson(),
      };
}

class RedditData {
  RedditData({
    this.modhash,
    this.dist,
    this.children,
    this.after,
    this.before,
  });

  String modhash;
  int dist;
  List<Child> children;
  dynamic after;
  String before;

  factory RedditData.fromJson(Map<String, dynamic> json) => RedditData(
        modhash: json["modhash"] == null ? null : json["modhash"],
        dist: json["dist"] == null ? null : json["dist"],
        children: json["children"] == null
            ? null
            : List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
        after: json["after"],
        before: json["before"] == null ? null : json["before"],
      );

  Map<String, dynamic> toJson() => {
        "modhash": modhash == null ? null : modhash,
        "dist": dist == null ? null : dist,
        "children": children == null ? null : List<dynamic>.from(children.map((x) => x.toJson())),
        "after": after,
        "before": before == null ? null : before,
      };
}

class Child {
  Child({
    this.kind,
    this.data,
  });

  String kind;
  DataElement data;

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        kind: json["kind"] == null ? null : json["kind"],
        data: json["data"] == null ? null : DataElement.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "data": data == null ? null : data.toJson(),
      };
}

class DataElement {
  DataElement({
    this.approvedAtUtc,
    this.subreddit,
    this.selftext,
    this.authorFullname,
    this.saved,
    this.modReasonTitle,
    this.gilded,
    this.clicked,
    this.title,
    this.linkFlairRichtext,
    this.subredditNamePrefixed,
    this.hidden,
    this.pwls,
    this.linkFlairCssClass,
    this.downs,
    this.thumbnailHeight,
    this.topAwardedType,
    this.hideScore,
    this.name,
    this.quarantine,
    this.linkFlairTextColor,
    this.upvoteRatio,
    this.authorFlairBackgroundColor,
    this.subredditType,
    this.ups,
    this.totalAwardsReceived,
    this.mediaEmbed,
    this.thumbnailWidth,
    this.authorFlairTemplateId,
    this.isOriginalContent,
    this.userReports,
    this.secureMedia,
    this.isRedditMediaDomain,
    this.isMeta,
    this.category,
    this.secureMediaEmbed,
    this.linkFlairText,
    this.canModPost,
    this.score,
    this.approvedBy,
    this.authorPremium,
    this.thumbnail,
    this.edited,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.gildings,
    this.postHint,
    this.contentCategories,
    this.isSelf,
    this.modNote,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.urlOverriddenByDest,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.preview,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.treatmentTags,
    this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    this.subredditId,
    this.modReasonBy,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.media,
    this.isVideo,
    this.authorCakeday,
    this.crosspostParentList,
    this.crosspostParent,
    this.linkFlairTemplateId,
  });

  dynamic approvedAtUtc;
  String subreddit;
  String selftext;
  String authorFullname;
  bool saved;
  dynamic modReasonTitle;
  int gilded;
  bool clicked;
  String title;
  List<dynamic> linkFlairRichtext;
  String subredditNamePrefixed;
  bool hidden;
  int pwls;
  String linkFlairCssClass;
  int downs;
  int thumbnailHeight;
  dynamic topAwardedType;
  bool hideScore;
  String name;
  bool quarantine;
  LinkFlairTextColor linkFlairTextColor;
  double upvoteRatio;
  dynamic authorFlairBackgroundColor;
  SubredditType subredditType;
  int ups;
  int totalAwardsReceived;
  Gildings mediaEmbed;
  int thumbnailWidth;
  dynamic authorFlairTemplateId;
  bool isOriginalContent;
  List<dynamic> userReports;
  dynamic secureMedia;
  bool isRedditMediaDomain;
  bool isMeta;
  dynamic category;
  Gildings secureMediaEmbed;
  String linkFlairText;
  bool canModPost;
  int score;
  dynamic approvedBy;
  bool authorPremium;
  String thumbnail;
  bool edited;
  dynamic authorFlairCssClass;
  List<dynamic> authorFlairRichtext;
  Gildings gildings;
  PostHint postHint;
  dynamic contentCategories;
  bool isSelf;
  dynamic modNote;
  double created;
  FlairType linkFlairType;
  int wls;
  String removedByCategory;
  dynamic bannedBy;
  FlairType authorFlairType;
  String domain;
  bool allowLiveComments;
  dynamic selftextHtml;
  dynamic likes;
  String suggestedSort;
  dynamic bannedAtUtc;
  String urlOverriddenByDest;
  dynamic viewCount;
  bool archived;
  bool noFollow;
  bool isCrosspostable;
  bool pinned;
  bool over18;
  Preview preview;
  List<AllAwarding> allAwardings;
  List<dynamic> awarders;
  bool mediaOnly;
  bool canGild;
  bool spoiler;
  bool locked;
  dynamic authorFlairText;
  List<dynamic> treatmentTags;
  bool visited;
  dynamic removedBy;
  dynamic numReports;
  dynamic distinguished;
  String subredditId;
  dynamic modReasonBy;
  dynamic removalReason;
  LinkFlairBackgroundColor linkFlairBackgroundColor;
  String id;
  bool isRobotIndexable;
  dynamic reportReasons;
  String author;
  dynamic discussionType;
  int numComments;
  bool sendReplies;
  WhitelistStatus whitelistStatus;
  bool contestMode;
  List<dynamic> modReports;
  bool authorPatreonFlair;
  dynamic authorFlairTextColor;
  String permalink;
  WhitelistStatus parentWhitelistStatus;
  bool stickied;
  String url;
  int subredditSubscribers;
  double createdUtc;
  int numCrossposts;
  dynamic media;
  bool isVideo;
  bool authorCakeday;
  List<DataElement> crosspostParentList;
  String crosspostParent;
  String linkFlairTemplateId;

  factory DataElement.fromJson(Map<String, dynamic> json) => DataElement(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: json["subreddit"] == null ? null : json["subreddit"],
        selftext: json["selftext"] == null ? null : json["selftext"],
        authorFullname: json["author_fullname"] == null ? null : json["author_fullname"],
        saved: json["saved"] == null ? null : json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"] == null ? null : json["gilded"],
        clicked: json["clicked"] == null ? null : json["clicked"],
        title: json["title"] == null ? null : json["title"],
        linkFlairRichtext: json["link_flair_richtext"] == null
            ? null
            : List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
        subredditNamePrefixed:
            json["subreddit_name_prefixed"] == null ? null : json["subreddit_name_prefixed"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        pwls: json["pwls"] == null ? null : json["pwls"],
        linkFlairCssClass:
            json["link_flair_css_class"] == null ? null : json["link_flair_css_class"],
        downs: json["downs"] == null ? null : json["downs"],
        thumbnailHeight: json["thumbnail_height"] == null ? null : json["thumbnail_height"],
        topAwardedType: json["top_awarded_type"],
        hideScore: json["hide_score"] == null ? null : json["hide_score"],
        name: json["name"] == null ? null : json["name"],
        quarantine: json["quarantine"] == null ? null : json["quarantine"],
        linkFlairTextColor: json["link_flair_text_color"] == null
            ? null
            : linkFlairTextColorValues.map[json["link_flair_text_color"]],
        upvoteRatio: json["upvote_ratio"] == null ? null : json["upvote_ratio"].toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType:
            json["subreddit_type"] == null ? null : subredditTypeValues.map[json["subreddit_type"]],
        ups: json["ups"] == null ? null : json["ups"],
        totalAwardsReceived:
            json["total_awards_received"] == null ? null : json["total_awards_received"],
        mediaEmbed: json["media_embed"] == null ? null : Gildings.fromJson(json["media_embed"]),
        thumbnailWidth: json["thumbnail_width"] == null ? null : json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"] == null ? null : json["is_original_content"],
        userReports: json["user_reports"] == null
            ? null
            : List<dynamic>.from(json["user_reports"].map((x) => x)),
        secureMedia: json["secure_media"],
        isRedditMediaDomain:
            json["is_reddit_media_domain"] == null ? null : json["is_reddit_media_domain"],
        isMeta: json["is_meta"] == null ? null : json["is_meta"],
        category: json["category"],
        secureMediaEmbed: json["secure_media_embed"] == null
            ? null
            : Gildings.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"] == null ? null : json["link_flair_text"],
        canModPost: json["can_mod_post"] == null ? null : json["can_mod_post"],
        score: json["score"] == null ? null : json["score"],
        approvedBy: json["approved_by"],
        authorPremium: json["author_premium"] == null ? null : json["author_premium"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        edited: json["edited"] == null ? null : json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext: json["author_flair_richtext"] == null
            ? null
            : List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        gildings: json["gildings"] == null ? null : Gildings.fromJson(json["gildings"]),
        postHint: json["post_hint"] == null ? null : postHintValues.map[json["post_hint"]],
        contentCategories: json["content_categories"],
        isSelf: json["is_self"] == null ? null : json["is_self"],
        modNote: json["mod_note"],
        created: json["created"] == null ? null : json["created"],
        linkFlairType:
            json["link_flair_type"] == null ? null : flairTypeValues.map[json["link_flair_type"]],
        wls: json["wls"] == null ? null : json["wls"],
        removedByCategory: json["removed_by_category"] == null ? null : json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: json["author_flair_type"] == null
            ? null
            : flairTypeValues.map[json["author_flair_type"]],
        domain: json["domain"] == null ? null : json["domain"],
        allowLiveComments: json["allow_live_comments"] == null ? null : json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"] == null ? null : json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        urlOverriddenByDest:
            json["url_overridden_by_dest"] == null ? null : json["url_overridden_by_dest"],
        viewCount: json["view_count"],
        archived: json["archived"] == null ? null : json["archived"],
        noFollow: json["no_follow"] == null ? null : json["no_follow"],
        isCrosspostable: json["is_crosspostable"] == null ? null : json["is_crosspostable"],
        pinned: json["pinned"] == null ? null : json["pinned"],
        over18: json["over_18"] == null ? null : json["over_18"],
        preview: json["preview"] == null ? null : Preview.fromJson(json["preview"]),
        allAwardings: json["all_awardings"] == null
            ? null
            : List<AllAwarding>.from(json["all_awardings"].map((x) => AllAwarding.fromJson(x))),
        awarders:
            json["awarders"] == null ? null : List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"] == null ? null : json["media_only"],
        canGild: json["can_gild"] == null ? null : json["can_gild"],
        spoiler: json["spoiler"] == null ? null : json["spoiler"],
        locked: json["locked"] == null ? null : json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: json["treatment_tags"] == null
            ? null
            : List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        visited: json["visited"] == null ? null : json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: json["subreddit_id"] == null ? null : json["subreddit_id"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"] == null
            ? null
            : linkFlairBackgroundColorValues.map[json["link_flair_background_color"]],
        id: json["id"] == null ? null : json["id"],
        isRobotIndexable: json["is_robot_indexable"] == null ? null : json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"] == null ? null : json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"] == null ? null : json["num_comments"],
        sendReplies: json["send_replies"] == null ? null : json["send_replies"],
        whitelistStatus: json["whitelist_status"] == null
            ? null
            : whitelistStatusValues.map[json["whitelist_status"]],
        contestMode: json["contest_mode"] == null ? null : json["contest_mode"],
        modReports: json["mod_reports"] == null
            ? null
            : List<dynamic>.from(json["mod_reports"].map((x) => x)),
        authorPatreonFlair:
            json["author_patreon_flair"] == null ? null : json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"] == null ? null : json["permalink"],
        parentWhitelistStatus: json["parent_whitelist_status"] == null
            ? null
            : whitelistStatusValues.map[json["parent_whitelist_status"]],
        stickied: json["stickied"] == null ? null : json["stickied"],
        url: json["url"] == null ? null : json["url"],
        subredditSubscribers:
            json["subreddit_subscribers"] == null ? null : json["subreddit_subscribers"],
        createdUtc: json["created_utc"] == null ? null : json["created_utc"],
        numCrossposts: json["num_crossposts"] == null ? null : json["num_crossposts"],
        media: json["media"],
        isVideo: json["is_video"] == null ? null : json["is_video"],
        authorCakeday: json["author_cakeday"] == null ? null : json["author_cakeday"],
        crosspostParentList: json["crosspost_parent_list"] == null
            ? null
            : List<DataElement>.from(
                json["crosspost_parent_list"].map((x) => DataElement.fromJson(x))),
        crosspostParent: json["crosspost_parent"] == null ? null : json["crosspost_parent"],
        linkFlairTemplateId:
            json["link_flair_template_id"] == null ? null : json["link_flair_template_id"],
      );

  Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subreddit == null ? null : subreddit,
        "selftext": selftext == null ? null : selftext,
        "author_fullname": authorFullname == null ? null : authorFullname,
        "saved": saved == null ? null : saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded == null ? null : gilded,
        "clicked": clicked == null ? null : clicked,
        "title": title == null ? null : title,
        "link_flair_richtext":
            linkFlairRichtext == null ? null : List<dynamic>.from(linkFlairRichtext.map((x) => x)),
        "subreddit_name_prefixed": subredditNamePrefixed == null ? null : subredditNamePrefixed,
        "hidden": hidden == null ? null : hidden,
        "pwls": pwls == null ? null : pwls,
        "link_flair_css_class": linkFlairCssClass == null ? null : linkFlairCssClass,
        "downs": downs == null ? null : downs,
        "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
        "top_awarded_type": topAwardedType,
        "hide_score": hideScore == null ? null : hideScore,
        "name": name == null ? null : name,
        "quarantine": quarantine == null ? null : quarantine,
        "link_flair_text_color": linkFlairTextColor == null
            ? null
            : linkFlairTextColorValues.reverse[linkFlairTextColor],
        "upvote_ratio": upvoteRatio == null ? null : upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditType == null ? null : subredditTypeValues.reverse[subredditType],
        "ups": ups == null ? null : ups,
        "total_awards_received": totalAwardsReceived == null ? null : totalAwardsReceived,
        "media_embed": mediaEmbed == null ? null : mediaEmbed.toJson(),
        "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent == null ? null : isOriginalContent,
        "user_reports": userReports == null ? null : List<dynamic>.from(userReports.map((x) => x)),
        "secure_media": secureMedia,
        "is_reddit_media_domain": isRedditMediaDomain == null ? null : isRedditMediaDomain,
        "is_meta": isMeta == null ? null : isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed == null ? null : secureMediaEmbed.toJson(),
        "link_flair_text": linkFlairText == null ? null : linkFlairText,
        "can_mod_post": canModPost == null ? null : canModPost,
        "score": score == null ? null : score,
        "approved_by": approvedBy,
        "author_premium": authorPremium == null ? null : authorPremium,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "edited": edited == null ? null : edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext": authorFlairRichtext == null
            ? null
            : List<dynamic>.from(authorFlairRichtext.map((x) => x)),
        "gildings": gildings == null ? null : gildings.toJson(),
        "post_hint": postHint == null ? null : postHintValues.reverse[postHint],
        "content_categories": contentCategories,
        "is_self": isSelf == null ? null : isSelf,
        "mod_note": modNote,
        "created": created == null ? null : created,
        "link_flair_type": linkFlairType == null ? null : flairTypeValues.reverse[linkFlairType],
        "wls": wls == null ? null : wls,
        "removed_by_category": removedByCategory == null ? null : removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type":
            authorFlairType == null ? null : flairTypeValues.reverse[authorFlairType],
        "domain": domain == null ? null : domain,
        "allow_live_comments": allowLiveComments == null ? null : allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort == null ? null : suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "url_overridden_by_dest": urlOverriddenByDest == null ? null : urlOverriddenByDest,
        "view_count": viewCount,
        "archived": archived == null ? null : archived,
        "no_follow": noFollow == null ? null : noFollow,
        "is_crosspostable": isCrosspostable == null ? null : isCrosspostable,
        "pinned": pinned == null ? null : pinned,
        "over_18": over18 == null ? null : over18,
        "preview": preview == null ? null : preview.toJson(),
        "all_awardings":
            allAwardings == null ? null : List<dynamic>.from(allAwardings.map((x) => x.toJson())),
        "awarders": awarders == null ? null : List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly == null ? null : mediaOnly,
        "can_gild": canGild == null ? null : canGild,
        "spoiler": spoiler == null ? null : spoiler,
        "locked": locked == null ? null : locked,
        "author_flair_text": authorFlairText,
        "treatment_tags":
            treatmentTags == null ? null : List<dynamic>.from(treatmentTags.map((x) => x)),
        "visited": visited == null ? null : visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditId == null ? null : subredditId,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor == null
            ? null
            : linkFlairBackgroundColorValues.reverse[linkFlairBackgroundColor],
        "id": id == null ? null : id,
        "is_robot_indexable": isRobotIndexable == null ? null : isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author == null ? null : author,
        "discussion_type": discussionType,
        "num_comments": numComments == null ? null : numComments,
        "send_replies": sendReplies == null ? null : sendReplies,
        "whitelist_status":
            whitelistStatus == null ? null : whitelistStatusValues.reverse[whitelistStatus],
        "contest_mode": contestMode == null ? null : contestMode,
        "mod_reports": modReports == null ? null : List<dynamic>.from(modReports.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair == null ? null : authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink == null ? null : permalink,
        "parent_whitelist_status": parentWhitelistStatus == null
            ? null
            : whitelistStatusValues.reverse[parentWhitelistStatus],
        "stickied": stickied == null ? null : stickied,
        "url": url == null ? null : url,
        "subreddit_subscribers": subredditSubscribers == null ? null : subredditSubscribers,
        "created_utc": createdUtc == null ? null : createdUtc,
        "num_crossposts": numCrossposts == null ? null : numCrossposts,
        "media": media,
        "is_video": isVideo == null ? null : isVideo,
        "author_cakeday": authorCakeday == null ? null : authorCakeday,
        "crosspost_parent_list": crosspostParentList == null
            ? null
            : List<dynamic>.from(crosspostParentList.map((x) => x.toJson())),
        "crosspost_parent": crosspostParent == null ? null : crosspostParent,
        "link_flair_template_id": linkFlairTemplateId == null ? null : linkFlairTemplateId,
      };
}

class AllAwarding {
  AllAwarding({
    this.giverCoinReward,
    this.subredditId,
    this.isNew,
    this.daysOfDripExtension,
    this.coinPrice,
    this.id,
    this.pennyDonate,
    this.awardSubType,
    this.coinReward,
    this.iconUrl,
    this.daysOfPremium,
    this.tiersByRequiredAwardings,
    this.resizedIcons,
    this.iconWidth,
    this.staticIconWidth,
    this.startDate,
    this.isEnabled,
    this.awardingsRequiredToGrantBenefits,
    this.description,
    this.endDate,
    this.subredditCoinReward,
    this.count,
    this.staticIconHeight,
    this.name,
    this.resizedStaticIcons,
    this.iconFormat,
    this.iconHeight,
    this.pennyPrice,
    this.awardType,
    this.staticIconUrl,
  });

  int giverCoinReward;
  dynamic subredditId;
  bool isNew;
  int daysOfDripExtension;
  int coinPrice;
  String id;
  int pennyDonate;
  String awardSubType;
  int coinReward;
  String iconUrl;
  int daysOfPremium;
  dynamic tiersByRequiredAwardings;
  List<ResizedIcon> resizedIcons;
  int iconWidth;
  int staticIconWidth;
  dynamic startDate;
  bool isEnabled;
  dynamic awardingsRequiredToGrantBenefits;
  String description;
  dynamic endDate;
  int subredditCoinReward;
  int count;
  int staticIconHeight;
  String name;
  List<ResizedIcon> resizedStaticIcons;
  String iconFormat;
  int iconHeight;
  int pennyPrice;
  String awardType;
  String staticIconUrl;

  factory AllAwarding.fromJson(Map<String, dynamic> json) => AllAwarding(
        giverCoinReward: json["giver_coin_reward"] == null ? null : json["giver_coin_reward"],
        subredditId: json["subreddit_id"],
        isNew: json["is_new"] == null ? null : json["is_new"],
        daysOfDripExtension:
            json["days_of_drip_extension"] == null ? null : json["days_of_drip_extension"],
        coinPrice: json["coin_price"] == null ? null : json["coin_price"],
        id: json["id"] == null ? null : json["id"],
        pennyDonate: json["penny_donate"] == null ? null : json["penny_donate"],
        awardSubType: json["award_sub_type"] == null ? null : json["award_sub_type"],
        coinReward: json["coin_reward"] == null ? null : json["coin_reward"],
        iconUrl: json["icon_url"] == null ? null : json["icon_url"],
        daysOfPremium: json["days_of_premium"] == null ? null : json["days_of_premium"],
        tiersByRequiredAwardings: json["tiers_by_required_awardings"],
        resizedIcons: json["resized_icons"] == null
            ? null
            : List<ResizedIcon>.from(json["resized_icons"].map((x) => ResizedIcon.fromJson(x))),
        iconWidth: json["icon_width"] == null ? null : json["icon_width"],
        staticIconWidth: json["static_icon_width"] == null ? null : json["static_icon_width"],
        startDate: json["start_date"],
        isEnabled: json["is_enabled"] == null ? null : json["is_enabled"],
        awardingsRequiredToGrantBenefits: json["awardings_required_to_grant_benefits"],
        description: json["description"] == null ? null : json["description"],
        endDate: json["end_date"],
        subredditCoinReward:
            json["subreddit_coin_reward"] == null ? null : json["subreddit_coin_reward"],
        count: json["count"] == null ? null : json["count"],
        staticIconHeight: json["static_icon_height"] == null ? null : json["static_icon_height"],
        name: json["name"] == null ? null : json["name"],
        resizedStaticIcons: json["resized_static_icons"] == null
            ? null
            : List<ResizedIcon>.from(
                json["resized_static_icons"].map((x) => ResizedIcon.fromJson(x))),
        iconFormat: json["icon_format"] == null ? null : json["icon_format"],
        iconHeight: json["icon_height"] == null ? null : json["icon_height"],
        pennyPrice: json["penny_price"] == null ? null : json["penny_price"],
        awardType: json["award_type"] == null ? null : json["award_type"],
        staticIconUrl: json["static_icon_url"] == null ? null : json["static_icon_url"],
      );

  Map<String, dynamic> toJson() => {
        "giver_coin_reward": giverCoinReward == null ? null : giverCoinReward,
        "subreddit_id": subredditId,
        "is_new": isNew == null ? null : isNew,
        "days_of_drip_extension": daysOfDripExtension == null ? null : daysOfDripExtension,
        "coin_price": coinPrice == null ? null : coinPrice,
        "id": id == null ? null : id,
        "penny_donate": pennyDonate == null ? null : pennyDonate,
        "award_sub_type": awardSubType == null ? null : awardSubType,
        "coin_reward": coinReward == null ? null : coinReward,
        "icon_url": iconUrl == null ? null : iconUrl,
        "days_of_premium": daysOfPremium == null ? null : daysOfPremium,
        "tiers_by_required_awardings": tiersByRequiredAwardings,
        "resized_icons":
            resizedIcons == null ? null : List<dynamic>.from(resizedIcons.map((x) => x.toJson())),
        "icon_width": iconWidth == null ? null : iconWidth,
        "static_icon_width": staticIconWidth == null ? null : staticIconWidth,
        "start_date": startDate,
        "is_enabled": isEnabled == null ? null : isEnabled,
        "awardings_required_to_grant_benefits": awardingsRequiredToGrantBenefits,
        "description": description == null ? null : description,
        "end_date": endDate,
        "subreddit_coin_reward": subredditCoinReward == null ? null : subredditCoinReward,
        "count": count == null ? null : count,
        "static_icon_height": staticIconHeight == null ? null : staticIconHeight,
        "name": name == null ? null : name,
        "resized_static_icons": resizedStaticIcons == null
            ? null
            : List<dynamic>.from(resizedStaticIcons.map((x) => x.toJson())),
        "icon_format": iconFormat == null ? null : iconFormat,
        "icon_height": iconHeight == null ? null : iconHeight,
        "penny_price": pennyPrice == null ? null : pennyPrice,
        "award_type": awardType == null ? null : awardType,
        "static_icon_url": staticIconUrl == null ? null : staticIconUrl,
      };
}

class ResizedIcon {
  ResizedIcon({
    this.url,
    this.width,
    this.height,
  });

  String url;
  int width;
  int height;

  factory ResizedIcon.fromJson(Map<String, dynamic> json) => ResizedIcon(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

enum FlairType { TEXT }

final flairTypeValues = EnumValues({"text": FlairType.TEXT});

class Gildings {
  Gildings();

  factory Gildings.fromJson(Map<String, dynamic> json) => Gildings();

  Map<String, dynamic> toJson() => {};
}

enum LinkFlairBackgroundColor { EMPTY, THE_349_E48 }

final linkFlairBackgroundColorValues = EnumValues(
    {"": LinkFlairBackgroundColor.EMPTY, "#349e48": LinkFlairBackgroundColor.THE_349_E48});

enum LinkFlairTextColor { DARK }

final linkFlairTextColorValues = EnumValues({"dark": LinkFlairTextColor.DARK});

enum WhitelistStatus { ALL_ADS }

final whitelistStatusValues = EnumValues({"all_ads": WhitelistStatus.ALL_ADS});

enum PostHint { LINK }

final postHintValues = EnumValues({"link": PostHint.LINK});

class Preview {
  Preview({
    this.images,
    this.enabled,
  });

  List<Image> images;
  bool enabled;

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
        images: json["images"] == null
            ? null
            : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        enabled: json["enabled"] == null ? null : json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "images": images == null ? null : List<dynamic>.from(images.map((x) => x.toJson())),
        "enabled": enabled == null ? null : enabled,
      };
}

class Image {
  Image({
    this.source,
    this.resolutions,
    this.variants,
    this.id,
  });

  ResizedIcon source;
  List<ResizedIcon> resolutions;
  Gildings variants;
  String id;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        source: json["source"] == null ? null : ResizedIcon.fromJson(json["source"]),
        resolutions: json["resolutions"] == null
            ? null
            : List<ResizedIcon>.from(json["resolutions"].map((x) => ResizedIcon.fromJson(x))),
        variants: json["variants"] == null ? null : Gildings.fromJson(json["variants"]),
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "source": source == null ? null : source.toJson(),
        "resolutions":
            resolutions == null ? null : List<dynamic>.from(resolutions.map((x) => x.toJson())),
        "variants": variants == null ? null : variants.toJson(),
        "id": id == null ? null : id,
      };
}

enum SubredditType { PUBLIC }

final subredditTypeValues = EnumValues({"public": SubredditType.PUBLIC});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
