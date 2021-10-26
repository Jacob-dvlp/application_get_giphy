// To parse this JSON data, do
//
//     final modelGip = modelGipFromJson(jsonString);

import 'dart:convert';

ModelGip modelGipFromJson(String str) => ModelGip.fromJson(json.decode(str));

String modelGipToJson(ModelGip data) => json.encode(data.toJson());

class ModelGip {
    ModelGip({
        this.data,
        this.pagination,
        this.meta,
    });

    List<Datum> data;
    Pagination pagination;
    Meta meta;

    factory ModelGip.fromJson(Map<String, dynamic> json) => ModelGip(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
        "meta": meta.toJson(),
    };
}

class Datum {
    Datum({
        this.type,
        this.id,
        this.url,
        this.slug,
        this.bitlyGifUrl,
        this.bitlyUrl,
        this.embedUrl,
        this.username,
        this.source,
        this.title,
        this.rating,
        this.contentUrl,
        this.sourceTld,
        this.sourcePostUrl,
        this.isSticker,
        this.importDatetime,
        this.trendingDatetime,
        this.images,
        this.user,
        this.analyticsResponsePayload,
        this.analytics,
    });

    Type type;
    String id;
    String url;
    String slug;
    String bitlyGifUrl;
    String bitlyUrl;
    String embedUrl;
    String username;
    String source;
    String title;
    Rating rating;
    String contentUrl;
    String sourceTld;
    String sourcePostUrl;
    int isSticker;
    DateTime importDatetime;
    String trendingDatetime;
    Images images;
    User user;
    String analyticsResponsePayload;
    Analytics analytics;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        type: typeValues.map[json["type"]],
        id: json["id"],
        url: json["url"],
        slug: json["slug"],
        bitlyGifUrl: json["bitly_gif_url"],
        bitlyUrl: json["bitly_url"],
        embedUrl: json["embed_url"],
        username: json["username"],
        source: json["source"],
        title: json["title"],
        rating: ratingValues.map[json["rating"]],
        contentUrl: json["content_url"],
        sourceTld: json["source_tld"],
        sourcePostUrl: json["source_post_url"],
        isSticker: json["is_sticker"],
        importDatetime: DateTime.parse(json["import_datetime"]),
        trendingDatetime: json["trending_datetime"],
        images: Images.fromJson(json["images"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        analyticsResponsePayload: json["analytics_response_payload"],
        analytics: Analytics.fromJson(json["analytics"]),
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "id": id,
        "url": url,
        "slug": slug,
        "bitly_gif_url": bitlyGifUrl,
        "bitly_url": bitlyUrl,
        "embed_url": embedUrl,
        "username": username,
        "source": source,
        "title": title,
        "rating": ratingValues.reverse[rating],
        "content_url": contentUrl,
        "source_tld": sourceTld,
        "source_post_url": sourcePostUrl,
        "is_sticker": isSticker,
        "import_datetime": importDatetime.toIso8601String(),
        "trending_datetime": trendingDatetime,
        "images": images.toJson(),
        "user": user == null ? null : user.toJson(),
        "analytics_response_payload": analyticsResponsePayload,
        "analytics": analytics.toJson(),
    };
}

class Analytics {
    Analytics({
        this.onload,
        this.onclick,
        this.onsent,
    });

    Onclick onload;
    Onclick onclick;
    Onclick onsent;

    factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
        onload: Onclick.fromJson(json["onload"]),
        onclick: Onclick.fromJson(json["onclick"]),
        onsent: Onclick.fromJson(json["onsent"]),
    );

    Map<String, dynamic> toJson() => {
        "onload": onload.toJson(),
        "onclick": onclick.toJson(),
        "onsent": onsent.toJson(),
    };
}

class Onclick {
    Onclick({
        this.url,
    });

    String url;

    factory Onclick.fromJson(Map<String, dynamic> json) => Onclick(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}

class Images {
    Images({
        this.original,
        this.downsized,
        this.downsizedLarge,
        this.downsizedMedium,
        this.downsizedSmall,
        this.downsizedStill,
        this.fixedHeight,
        this.fixedHeightDownsampled,
        this.fixedHeightSmall,
        this.fixedHeightSmallStill,
        this.fixedHeightStill,
        this.fixedWidth,
        this.fixedWidthDownsampled,
        this.fixedWidthSmall,
        this.fixedWidthSmallStill,
        this.fixedWidthStill,
        this.looping,
        this.originalStill,
        this.originalMp4,
        this.preview,
        this.previewGif,
        this.previewWebp,
        this.hd,
        this.the480WStill,
    });

    FixedHeight original;
    The480WStill downsized;
    The480WStill downsizedLarge;
    The480WStill downsizedMedium;
    DownsizedSmall downsizedSmall;
    The480WStill downsizedStill;
    FixedHeight fixedHeight;
    FixedHeight fixedHeightDownsampled;
    FixedHeight fixedHeightSmall;
    The480WStill fixedHeightSmallStill;
    The480WStill fixedHeightStill;
    FixedHeight fixedWidth;
    FixedHeight fixedWidthDownsampled;
    FixedHeight fixedWidthSmall;
    The480WStill fixedWidthSmallStill;
    The480WStill fixedWidthStill;
    Looping looping;
    The480WStill originalStill;
    DownsizedSmall originalMp4;
    DownsizedSmall preview;
    The480WStill previewGif;
    The480WStill previewWebp;
    DownsizedSmall hd;
    The480WStill the480WStill;

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        original: FixedHeight.fromJson(json["original"]),
        downsized: The480WStill.fromJson(json["downsized"]),
        downsizedLarge: The480WStill.fromJson(json["downsized_large"]),
        downsizedMedium: The480WStill.fromJson(json["downsized_medium"]),
        downsizedSmall: DownsizedSmall.fromJson(json["downsized_small"]),
        downsizedStill: The480WStill.fromJson(json["downsized_still"]),
        fixedHeight: FixedHeight.fromJson(json["fixed_height"]),
        fixedHeightDownsampled: FixedHeight.fromJson(json["fixed_height_downsampled"]),
        fixedHeightSmall: FixedHeight.fromJson(json["fixed_height_small"]),
        fixedHeightSmallStill: The480WStill.fromJson(json["fixed_height_small_still"]),
        fixedHeightStill: The480WStill.fromJson(json["fixed_height_still"]),
        fixedWidth: FixedHeight.fromJson(json["fixed_width"]),
        fixedWidthDownsampled: FixedHeight.fromJson(json["fixed_width_downsampled"]),
        fixedWidthSmall: FixedHeight.fromJson(json["fixed_width_small"]),
        fixedWidthSmallStill: The480WStill.fromJson(json["fixed_width_small_still"]),
        fixedWidthStill: The480WStill.fromJson(json["fixed_width_still"]),
        looping: Looping.fromJson(json["looping"]),
        originalStill: The480WStill.fromJson(json["original_still"]),
        originalMp4: DownsizedSmall.fromJson(json["original_mp4"]),
        preview: DownsizedSmall.fromJson(json["preview"]),
        previewGif: The480WStill.fromJson(json["preview_gif"]),
        previewWebp: The480WStill.fromJson(json["preview_webp"]),
        hd: json["hd"] == null ? null : DownsizedSmall.fromJson(json["hd"]),
        the480WStill: The480WStill.fromJson(json["480w_still"]),
    );

    Map<String, dynamic> toJson() => {
        "original": original.toJson(),
        "downsized": downsized.toJson(),
        "downsized_large": downsizedLarge.toJson(),
        "downsized_medium": downsizedMedium.toJson(),
        "downsized_small": downsizedSmall.toJson(),
        "downsized_still": downsizedStill.toJson(),
        "fixed_height": fixedHeight.toJson(),
        "fixed_height_downsampled": fixedHeightDownsampled.toJson(),
        "fixed_height_small": fixedHeightSmall.toJson(),
        "fixed_height_small_still": fixedHeightSmallStill.toJson(),
        "fixed_height_still": fixedHeightStill.toJson(),
        "fixed_width": fixedWidth.toJson(),
        "fixed_width_downsampled": fixedWidthDownsampled.toJson(),
        "fixed_width_small": fixedWidthSmall.toJson(),
        "fixed_width_small_still": fixedWidthSmallStill.toJson(),
        "fixed_width_still": fixedWidthStill.toJson(),
        "looping": looping.toJson(),
        "original_still": originalStill.toJson(),
        "original_mp4": originalMp4.toJson(),
        "preview": preview.toJson(),
        "preview_gif": previewGif.toJson(),
        "preview_webp": previewWebp.toJson(),
        "hd": hd == null ? null : hd.toJson(),
        "480w_still": the480WStill.toJson(),
    };
}

class The480WStill {
    The480WStill({
        this.height,
        this.width,
        this.size,
        this.url,
    });

    String height;
    String width;
    String size;
    String url;

    factory The480WStill.fromJson(Map<String, dynamic> json) => The480WStill(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
    };
}

class DownsizedSmall {
    DownsizedSmall({
        this.height,
        this.width,
        this.mp4Size,
        this.mp4,
    });

    String height;
    String width;
    String mp4Size;
    String mp4;

    factory DownsizedSmall.fromJson(Map<String, dynamic> json) => DownsizedSmall(
        height: json["height"],
        width: json["width"],
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "mp4_size": mp4Size,
        "mp4": mp4,
    };
}

class FixedHeight {
    FixedHeight({
        this.height,
        this.width,
        this.size,
        this.url,
        this.mp4Size,
        this.mp4,
        this.webpSize,
        this.webp,
        this.frames,
        this.hash,
    });

    String height;
    String width;
    String size;
    String url;
    String mp4Size;
    String mp4;
    String webpSize;
    String webp;
    String frames;
    String hash;

    factory FixedHeight.fromJson(Map<String, dynamic> json) => FixedHeight(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
        mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
        mp4: json["mp4"] == null ? null : json["mp4"],
        webpSize: json["webp_size"],
        webp: json["webp"],
        frames: json["frames"] == null ? null : json["frames"],
        hash: json["hash"] == null ? null : json["hash"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
        "mp4_size": mp4Size == null ? null : mp4Size,
        "mp4": mp4 == null ? null : mp4,
        "webp_size": webpSize,
        "webp": webp,
        "frames": frames == null ? null : frames,
        "hash": hash == null ? null : hash,
    };
}

class Looping {
    Looping({
        this.mp4Size,
        this.mp4,
    });

    String mp4Size;
    String mp4;

    factory Looping.fromJson(Map<String, dynamic> json) => Looping(
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
    );

    Map<String, dynamic> toJson() => {
        "mp4_size": mp4Size,
        "mp4": mp4,
    };
}

enum Rating { G }

final ratingValues = EnumValues({
    "g": Rating.G
});

enum Type { GIF }

final typeValues = EnumValues({
    "gif": Type.GIF
});

class User {
    User({
        this.avatarUrl,
        this.bannerImage,
        this.bannerUrl,
        this.profileUrl,
        this.username,
        this.displayName,
        this.description,
        this.instagramUrl,
        this.websiteUrl,
        this.isVerified,
    });

    String avatarUrl;
    String bannerImage;
    String bannerUrl;
    String profileUrl;
    String username;
    String displayName;
    String description;
    String instagramUrl;
    String websiteUrl;
    bool isVerified;

    factory User.fromJson(Map<String, dynamic> json) => User(
        avatarUrl: json["avatar_url"],
        bannerImage: json["banner_image"],
        bannerUrl: json["banner_url"],
        profileUrl: json["profile_url"],
        username: json["username"],
        displayName: json["display_name"],
        description: json["description"],
        instagramUrl: json["instagram_url"],
        websiteUrl: json["website_url"],
        isVerified: json["is_verified"],
    );

    Map<String, dynamic> toJson() => {
        "avatar_url": avatarUrl,
        "banner_image": bannerImage,
        "banner_url": bannerUrl,
        "profile_url": profileUrl,
        "username": username,
        "display_name": displayName,
        "description": description,
        "instagram_url": instagramUrl,
        "website_url": websiteUrl,
        "is_verified": isVerified,
    };
}

class Meta {
    Meta({
        this.status,
        this.msg,
        this.responseId,
    });

    int status;
    String msg;
    String responseId;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        status: json["status"],
        msg: json["msg"],
        responseId: json["response_id"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "response_id": responseId,
    };
}

class Pagination {
    Pagination({
        this.totalCount,
        this.count,
        this.offset,
    });

    int totalCount;
    int count;
    int offset;

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalCount: json["total_count"],
        count: json["count"],
        offset: json["offset"],
    );

    Map<String, dynamic> toJson() => {
        "total_count": totalCount,
        "count": count,
        "offset": offset,
    };
}

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
