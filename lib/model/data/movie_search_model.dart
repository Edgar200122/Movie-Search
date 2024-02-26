class MovieSearchModel {
  MovieSearchModel({
    required this.docs,
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
  });

  final List<Doc> docs;
  final num? total;
  final num? limit;
  final num? page;
  final num? pages;

  MovieSearchModel copyWith({
    List<Doc>? docs,
    num? total,
    num? limit,
    num? page,
    num? pages,
  }) {
    return MovieSearchModel(
      docs: docs ?? this.docs,
      total: total ?? this.total,
      limit: limit ?? this.limit,
      page: page ?? this.page,
      pages: pages ?? this.pages,
    );
  }

  factory MovieSearchModel.fromJson(Map<String, dynamic> json) {
    return MovieSearchModel(
      docs: json["docs"] == null
          ? []
          : List<Doc>.from(json["docs"]!.map((x) => Doc.fromJson(x))),
      total: json["total"],
      limit: json["limit"],
      page: json["page"],
      pages: json["pages"],
    );
  }
}

class Doc {
  Doc({
    required this.internalNames,
    required this.name,
    required this.alternativeName,
    required this.enName,
    required this.year,
    required this.genres,
    required this.countries,
    required this.releaseYears,
    required this.id,
    required this.names,
    required this.type,
    required this.description,
    required this.shortDescription,
    required this.logo,
    required this.poster,
    required this.backdrop,
    required this.rating,
    required this.votes,
    required this.movieLength,
    required this.isSeries,
    required this.ticketsOnSale,
    required this.totalSeriesLength,
    required this.seriesLength,
    required this.ratingMpaa,
    required this.ageRating,
    required this.top10,
    required this.top250,
    required this.typeNumber,
    required this.status,
    required this.internalRating,
    required this.internalVotes,
    required this.externalId,
  });

  final List<String> internalNames;
  final String? name;
  final String? alternativeName;
  final String? enName;
  final num? year;
  final List<Country> genres;
  final List<Country> countries;
  final List<ReleaseYear> releaseYears;
  final int? id;
  final List<Name> names;
  final String? type;
  final String? description;
  final String? shortDescription;
  final Logo? logo;
  final Backdrop? poster;
  final Backdrop? backdrop;
  final Rating? rating;
  final Rating? votes;
  final num? movieLength;
  final bool? isSeries;
  final bool? ticketsOnSale;
  final num? totalSeriesLength;
  final num? seriesLength;
  final String? ratingMpaa;
  final num? ageRating;
  final dynamic top10;
  final dynamic top250;
  final num? typeNumber;
  final String? status;
  final num? internalRating;
  final num? internalVotes;
  final ExternalId? externalId;

  Doc copyWith({
    List<String>? internalNames,
    String? name,
    String? alternativeName,
    String? enName,
    num? year,
    List<Country>? genres,
    List<Country>? countries,
    List<ReleaseYear>? releaseYears,
    int? id,
    List<Name>? names,
    String? type,
    String? description,
    String? shortDescription,
    Logo? logo,
    Backdrop? poster,
    Backdrop? backdrop,
    Rating? rating,
    Rating? votes,
    num? movieLength,
    bool? isSeries,
    bool? ticketsOnSale,
    num? totalSeriesLength,
    num? seriesLength,
    String? ratingMpaa,
    num? ageRating,
    dynamic top10,
    dynamic top250,
    num? typeNumber,
    String? status,
    num? internalRating,
    num? internalVotes,
    ExternalId? externalId,
  }) {
    return Doc(
      internalNames: internalNames ?? this.internalNames,
      name: name ?? this.name,
      alternativeName: alternativeName ?? this.alternativeName,
      enName: enName ?? this.enName,
      year: year ?? this.year,
      genres: genres ?? this.genres,
      countries: countries ?? this.countries,
      releaseYears: releaseYears ?? this.releaseYears,
      id: id ?? this.id,
      names: names ?? this.names,
      type: type ?? this.type,
      description: description ?? this.description,
      shortDescription: shortDescription ?? this.shortDescription,
      logo: logo ?? this.logo,
      poster: poster ?? this.poster,
      backdrop: backdrop ?? this.backdrop,
      rating: rating ?? this.rating,
      votes: votes ?? this.votes,
      movieLength: movieLength ?? this.movieLength,
      isSeries: isSeries ?? this.isSeries,
      ticketsOnSale: ticketsOnSale ?? this.ticketsOnSale,
      totalSeriesLength: totalSeriesLength ?? this.totalSeriesLength,
      seriesLength: seriesLength ?? this.seriesLength,
      ratingMpaa: ratingMpaa ?? this.ratingMpaa,
      ageRating: ageRating ?? this.ageRating,
      top10: top10 ?? this.top10,
      top250: top250 ?? this.top250,
      typeNumber: typeNumber ?? this.typeNumber,
      status: status ?? this.status,
      internalRating: internalRating ?? this.internalRating,
      internalVotes: internalVotes ?? this.internalVotes,
      externalId: externalId ?? this.externalId,
    );
  }

  factory Doc.fromJson(Map<String, dynamic> json) {
    return Doc(
      internalNames: json["internalNames"] == null
          ? []
          : List<String>.from(json["internalNames"]!.map((x) => x)),
      name: json["name"],
      alternativeName: json["alternativeName"],
      enName: json["enName"],
      year: json["year"],
      genres: json["genres"] == null
          ? []
          : List<Country>.from(json["genres"]!.map((x) => Country.fromJson(x))),
      countries: json["countries"] == null
          ? []
          : List<Country>.from(
              json["countries"]!.map((x) => Country.fromJson(x))),
      releaseYears: json["releaseYears"] == null
          ? []
          : List<ReleaseYear>.from(
              json["releaseYears"]!.map((x) => ReleaseYear.fromJson(x))),
      id: json["id"],
      names: json["names"] == null
          ? []
          : List<Name>.from(json["names"]!.map((x) => Name.fromJson(x))),
      type: json["type"],
      description: json["description"],
      shortDescription: json["shortDescription"],
      logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
      poster: json["poster"] == null ? null : Backdrop.fromJson(json["poster"]),
      backdrop:
          json["backdrop"] == null ? null : Backdrop.fromJson(json["backdrop"]),
      rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
      votes: json["votes"] == null ? null : Rating.fromJson(json["votes"]),
      movieLength: json["movieLength"],
      isSeries: json["isSeries"],
      ticketsOnSale: json["ticketsOnSale"],
      totalSeriesLength: json["totalSeriesLength"],
      seriesLength: json["seriesLength"],
      ratingMpaa: json["ratingMpaa"],
      ageRating: json["ageRating"],
      top10: json["top10"],
      top250: json["top250"],
      typeNumber: json["typeNumber"],
      status: json["status"],
      internalRating: json["internalRating"],
      internalVotes: json["internalVotes"],
      externalId: json["externalId"] == null
          ? null
          : ExternalId.fromJson(json["externalId"]),
    );
  }
}

class Backdrop {
  Backdrop({
    required this.url,
    required this.previewUrl,
  });

  final String? url;
  final String? previewUrl;

  Backdrop copyWith({
    String? url,
    String? previewUrl,
  }) {
    return Backdrop(
      url: url ?? this.url,
      previewUrl: previewUrl ?? this.previewUrl,
    );
  }

  factory Backdrop.fromJson(Map<String, dynamic> json) {
    return Backdrop(
      url: json["url"],
      previewUrl: json["previewUrl"],
    );
  }
}

class Country {
  Country({
    required this.name,
  });

  final String? name;

  Country copyWith({
    String? name,
  }) {
    return Country(
      name: name ?? this.name,
    );
  }

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json["name"],
    );
  }
}

class ExternalId {
  ExternalId({
    required this.imdb,
    required this.tmdb,
    required this.kpHd,
  });

  final String? imdb;
  final num? tmdb;
  final String? kpHd;

  ExternalId copyWith({
    String? imdb,
    num? tmdb,
    String? kpHd,
  }) {
    return ExternalId(
      imdb: imdb ?? this.imdb,
      tmdb: tmdb ?? this.tmdb,
      kpHd: kpHd ?? this.kpHd,
    );
  }

  factory ExternalId.fromJson(Map<String, dynamic> json) {
    return ExternalId(
      imdb: json["imdb"],
      tmdb: json["tmdb"],
      kpHd: json["kpHD"],
    );
  }
}

class Logo {
  Logo({
    required this.url,
  });

  final String? url;

  Logo copyWith({
    String? url,
  }) {
    return Logo(
      url: url ?? this.url,
    );
  }

  factory Logo.fromJson(Map<String, dynamic> json) {
    return Logo(
      url: json["url"],
    );
  }
}

class Name {
  Name({
    required this.name,
    required this.language,
    required this.type,
  });

  final String? name;
  final String? language;
  final String? type;

  Name copyWith({
    String? name,
    String? language,
    String? type,
  }) {
    return Name(
      name: name ?? this.name,
      language: language ?? this.language,
      type: type ?? this.type,
    );
  }

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      name: json["name"],
      language: json["language"],
      type: json["type"],
    );
  }
}

class Rating {
  Rating({
    required this.kp,
    required this.imdb,
    required this.filmCritics,
    required this.russianFilmCritics,
    required this.ratingAwait,
  });

  final num? kp;
  final num? imdb;
  final num? filmCritics;
  final num? russianFilmCritics;
  final num? ratingAwait;

  Rating copyWith({
    num? kp,
    num? imdb,
    num? filmCritics,
    num? russianFilmCritics,
    num? ratingAwait,
  }) {
    return Rating(
      kp: kp ?? this.kp,
      imdb: imdb ?? this.imdb,
      filmCritics: filmCritics ?? this.filmCritics,
      russianFilmCritics: russianFilmCritics ?? this.russianFilmCritics,
      ratingAwait: ratingAwait ?? this.ratingAwait,
    );
  }

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      kp: json["kp"],
      imdb: json["imdb"],
      filmCritics: json["filmCritics"],
      russianFilmCritics: json["russianFilmCritics"],
      ratingAwait: json["await"],
    );
  }
}

class ReleaseYear {
  ReleaseYear({
    required this.start,
    required this.end,
  });

  final num? start;
  final num? end;

  ReleaseYear copyWith({
    num? start,
    num? end,
  }) {
    return ReleaseYear(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  factory ReleaseYear.fromJson(Map<String, dynamic> json) {
    return ReleaseYear(
      start: json["start"],
      end: json["end"],
    );
  }
}
