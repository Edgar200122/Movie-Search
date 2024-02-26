class MovieByIdModel {
  MovieByIdModel({
    required this.status,
    required this.externalId,
    required this.rating,
    required this.votes,
    required this.backdrop,
    required this.movieLength,
    required this.images,
    required this.productionCompanies,
    required this.spokenLanguages,
    required this.id,
    required this.type,
    required this.name,
    required this.description,
    required this.distributors,
    required this.premiere,
    required this.slogan,
    required this.year,
    required this.poster,
    required this.facts,
    required this.genres,
    required this.countries,
    required this.seasonsInfo,
    required this.persons,
    required this.lists,
    required this.typeNumber,
    required this.alternativeName,
    required this.enName,
    required this.names,
    required this.ageRating,
    required this.budget,
    required this.ratingMpaa,
    required this.shortDescription,
    required this.technology,
    required this.ticketsOnSale,
    required this.updatedAt,
    required this.similarMovies,
    required this.fees,
    required this.sequelsAndPrequels,
    required this.logo,
    required this.watchability,
    required this.top10,
    required this.top250,
    required this.isSeries,
    required this.seriesLength,
    required this.totalSeriesLength,
    required this.deletedAt,
    required this.networks,
    required this.videos,
  });

  final dynamic status;
  final ExternalId? externalId;
  final Rating? rating;
  final Rating? votes;
  final Backdrop? backdrop;
  final num? movieLength;
  final Images? images;
  final List<ProductionCompany> productionCompanies;
  final List<SpokenLanguage> spokenLanguages;
  final int? id;
  final String? type;
  final String? name;
  final String? description;
  final Distributors? distributors;
  final Premiere? premiere;
  final String? slogan;
  final num? year;
  final Backdrop? poster;
  final List<Fact> facts;
  final List<CountryById> genres;
  final List<CountryById> countries;
  final List<dynamic> seasonsInfo;
  final List<Person> persons;
  final List<dynamic> lists;
  final num? typeNumber;
  final String? alternativeName;
  final dynamic enName;
  final List<Name> names;
  final dynamic ageRating;
  final Budget? budget;
  final dynamic ratingMpaa;
  final dynamic shortDescription;
  final Technology? technology;
  final bool? ticketsOnSale;
  final String? updatedAt;
  final List<dynamic> similarMovies;
  final Fees? fees;
  final List<dynamic> sequelsAndPrequels;
  final Logo? logo;
  final Watchability? watchability;
  final dynamic top10;
  final dynamic top250;
  final bool? isSeries;
  final dynamic seriesLength;
  final dynamic totalSeriesLength;
  final dynamic deletedAt;
  final dynamic networks;
  final Videos? videos;

  MovieByIdModel copyWith({
    dynamic status,
    ExternalId? externalId,
    Rating? rating,
    Rating? votes,
    Backdrop? backdrop,
    num? movieLength,
    Images? images,
    List<ProductionCompany>? productionCompanies,
    List<SpokenLanguage>? spokenLanguages,
    int? id,
    String? type,
    String? name,
    String? description,
    Distributors? distributors,
    Premiere? premiere,
    String? slogan,
    num? year,
    Backdrop? poster,
    List<Fact>? facts,
    List<CountryById>? genres,
    List<CountryById>? countries,
    List<dynamic>? seasonsInfo,
    List<Person>? persons,
    List<dynamic>? lists,
    num? typeNumber,
    String? alternativeName,
    dynamic enName,
    List<Name>? names,
    dynamic ageRating,
    Budget? budget,
    dynamic ratingMpaa,
    dynamic shortDescription,
    Technology? technology,
    bool? ticketsOnSale,
    String? updatedAt,
    List<dynamic>? similarMovies,
    Fees? fees,
    List<dynamic>? sequelsAndPrequels,
    Logo? logo,
    Watchability? watchability,
    dynamic top10,
    dynamic top250,
    bool? isSeries,
    dynamic seriesLength,
    dynamic totalSeriesLength,
    dynamic deletedAt,
    dynamic networks,
    Videos? videos,
  }) {
    return MovieByIdModel(
      status: status ?? this.status,
      externalId: externalId ?? this.externalId,
      rating: rating ?? this.rating,
      votes: votes ?? this.votes,
      backdrop: backdrop ?? this.backdrop,
      movieLength: movieLength ?? this.movieLength,
      images: images ?? this.images,
      productionCompanies: productionCompanies ?? this.productionCompanies,
      spokenLanguages: spokenLanguages ?? this.spokenLanguages,
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      description: description ?? this.description,
      distributors: distributors ?? this.distributors,
      premiere: premiere ?? this.premiere,
      slogan: slogan ?? this.slogan,
      year: year ?? this.year,
      poster: poster ?? this.poster,
      facts: facts ?? this.facts,
      genres: genres ?? this.genres,
      countries: countries ?? this.countries,
      seasonsInfo: seasonsInfo ?? this.seasonsInfo,
      persons: persons ?? this.persons,
      lists: lists ?? this.lists,
      typeNumber: typeNumber ?? this.typeNumber,
      alternativeName: alternativeName ?? this.alternativeName,
      enName: enName ?? this.enName,
      names: names ?? this.names,
      ageRating: ageRating ?? this.ageRating,
      budget: budget ?? this.budget,
      ratingMpaa: ratingMpaa ?? this.ratingMpaa,
      shortDescription: shortDescription ?? this.shortDescription,
      technology: technology ?? this.technology,
      ticketsOnSale: ticketsOnSale ?? this.ticketsOnSale,
      updatedAt: updatedAt ?? this.updatedAt,
      similarMovies: similarMovies ?? this.similarMovies,
      fees: fees ?? this.fees,
      sequelsAndPrequels: sequelsAndPrequels ?? this.sequelsAndPrequels,
      logo: logo ?? this.logo,
      watchability: watchability ?? this.watchability,
      top10: top10 ?? this.top10,
      top250: top250 ?? this.top250,
      isSeries: isSeries ?? this.isSeries,
      seriesLength: seriesLength ?? this.seriesLength,
      totalSeriesLength: totalSeriesLength ?? this.totalSeriesLength,
      deletedAt: deletedAt ?? this.deletedAt,
      networks: networks ?? this.networks,
      videos: videos ?? this.videos,
    );
  }

  factory MovieByIdModel.fromJson(Map<String, dynamic> json) {
    return MovieByIdModel(
      status: json["status"],
      externalId: json["externalId"] == null
          ? null
          : ExternalId.fromJson(json["externalId"]),
      rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
      votes: json["votes"] == null ? null : Rating.fromJson(json["votes"]),
      backdrop:
          json["backdrop"] == null ? null : Backdrop.fromJson(json["backdrop"]),
      movieLength: json["movieLength"],
      images: json["images"] == null ? null : Images.fromJson(json["images"]),
      productionCompanies: json["productionCompanies"] == null
          ? []
          : List<ProductionCompany>.from(json["productionCompanies"]!
              .map((x) => ProductionCompany.fromJson(x))),
      spokenLanguages: json["spokenLanguages"] == null
          ? []
          : List<SpokenLanguage>.from(
              json["spokenLanguages"]!.map((x) => SpokenLanguage.fromJson(x))),
      id: json["id"],
      type: json["type"],
      name: json["name"],
      description: json["description"],
      distributors: json["distributors"] == null
          ? null
          : Distributors.fromJson(json["distributors"]),
      premiere:
          json["premiere"] == null ? null : Premiere.fromJson(json["premiere"]),
      slogan: json["slogan"],
      year: json["year"],
      poster: json["poster"] == null ? null : Backdrop.fromJson(json["poster"]),
      facts: json["facts"] == null
          ? []
          : List<Fact>.from(json["facts"]!.map((x) => Fact.fromJson(x))),
      genres: json["genres"] == null
          ? []
          : List<CountryById>.from(
              json["genres"]!.map((x) => CountryById.fromJson(x))),
      countries: json["countries"] == null
          ? []
          : List<CountryById>.from(
              json["countries"]!.map((x) => CountryById.fromJson(x))),
      seasonsInfo: json["seasonsInfo"] == null
          ? []
          : List<dynamic>.from(json["seasonsInfo"]!.map((x) => x)),
      persons: json["persons"] == null
          ? []
          : List<Person>.from(json["persons"]!.map((x) => Person.fromJson(x))),
      lists: json["lists"] == null
          ? []
          : List<dynamic>.from(json["lists"]!.map((x) => x)),
      typeNumber: json["typeNumber"],
      alternativeName: json["alternativeName"],
      enName: json["enName"],
      names: json["names"] == null
          ? []
          : List<Name>.from(json["names"]!.map((x) => Name.fromJson(x))),
      ageRating: json["ageRating"],
      budget: json["budget"] == null ? null : Budget.fromJson(json["budget"]),
      ratingMpaa: json["ratingMpaa"],
      shortDescription: json["shortDescription"],
      technology: json["technology"] == null
          ? null
          : Technology.fromJson(json["technology"]),
      ticketsOnSale: json["ticketsOnSale"],
      updatedAt: json["updatedAt"],
      similarMovies: json["similarMovies"] == null
          ? []
          : List<dynamic>.from(json["similarMovies"]!.map((x) => x)),
      fees: json["fees"] == null ? null : Fees.fromJson(json["fees"]),
      sequelsAndPrequels: json["sequelsAndPrequels"] == null
          ? []
          : List<dynamic>.from(json["sequelsAndPrequels"]!.map((x) => x)),
      logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
      watchability: json["watchability"] == null
          ? null
          : Watchability.fromJson(json["watchability"]),
      top10: json["top10"],
      top250: json["top250"],
      isSeries: json["isSeries"],
      seriesLength: json["seriesLength"],
      totalSeriesLength: json["totalSeriesLength"],
      deletedAt: json["deletedAt"],
      networks: json["networks"],
      videos: json["videos"] == null ? null : Videos.fromJson(json["videos"]),
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

class Budget {
  Budget({required this.json});
  final Map<String, dynamic> json;

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(json: json);
  }
}

class CountryById {
  CountryById({
    required this.name,
  });

  final String? name;

  CountryById copyWith({
    String? name,
  }) {
    return CountryById(
      name: name ?? this.name,
    );
  }

  factory CountryById.fromJson(Map<String, dynamic> json) {
    return CountryById(
      name: json["name"],
    );
  }
}

class Distributors {
  Distributors({
    required this.distributor,
    required this.distributorRelease,
  });

  final dynamic distributor;
  final dynamic distributorRelease;

  Distributors copyWith({
    dynamic distributor,
    dynamic distributorRelease,
  }) {
    return Distributors(
      distributor: distributor ?? this.distributor,
      distributorRelease: distributorRelease ?? this.distributorRelease,
    );
  }

  factory Distributors.fromJson(Map<String, dynamic> json) {
    return Distributors(
      distributor: json["distributor"],
      distributorRelease: json["distributorRelease"],
    );
  }
}

class ExternalId {
  ExternalId({
    required this.imdb,
    required this.tmdb,
  });

  final String? imdb;
  final num? tmdb;

  ExternalId copyWith({
    String? imdb,
    num? tmdb,
  }) {
    return ExternalId(
      imdb: imdb ?? this.imdb,
      tmdb: tmdb ?? this.tmdb,
    );
  }

  factory ExternalId.fromJson(Map<String, dynamic> json) {
    return ExternalId(
      imdb: json["imdb"],
      tmdb: json["tmdb"],
    );
  }
}

class Fact {
  Fact({
    required this.value,
    required this.type,
    required this.spoiler,
  });

  final String? value;
  final String? type;
  final bool? spoiler;

  Fact copyWith({
    String? value,
    String? type,
    bool? spoiler,
  }) {
    return Fact(
      value: value ?? this.value,
      type: type ?? this.type,
      spoiler: spoiler ?? this.spoiler,
    );
  }

  factory Fact.fromJson(Map<String, dynamic> json) {
    return Fact(
      value: json["value"],
      type: json["type"],
      spoiler: json["spoiler"],
    );
  }
}

class Fees {
  Fees({
    required this.world,
    required this.russia,
    required this.usa,
  });

  final Budget? world;
  final Budget? russia;
  final Budget? usa;

  Fees copyWith({
    Budget? world,
    Budget? russia,
    Budget? usa,
  }) {
    return Fees(
      world: world ?? this.world,
      russia: russia ?? this.russia,
      usa: usa ?? this.usa,
    );
  }

  factory Fees.fromJson(Map<String, dynamic> json) {
    return Fees(
      world: json["world"] == null ? null : Budget.fromJson(json["world"]),
      russia: json["russia"] == null ? null : Budget.fromJson(json["russia"]),
      usa: json["usa"] == null ? null : Budget.fromJson(json["usa"]),
    );
  }
}

class Images {
  Images({
    required this.framesCount,
  });

  final num? framesCount;

  Images copyWith({
    num? framesCount,
  }) {
    return Images(
      framesCount: framesCount ?? this.framesCount,
    );
  }

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      framesCount: json["framesCount"],
    );
  }
}

class Logo {
  Logo({
    required this.url,
  });

  final dynamic url;

  Logo copyWith({
    dynamic url,
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
  final dynamic type;

  Name copyWith({
    String? name,
    String? language,
    dynamic type,
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

class Person {
  Person({
    required this.id,
    required this.photo,
    required this.name,
    required this.enName,
    required this.description,
    required this.profession,
    required this.enProfession,
  });

  final int? id;
  final String? photo;
  final String? name;
  final String? enName;
  final String? description;
  final String? profession;
  final String? enProfession;

  Person copyWith({
    int? id,
    String? photo,
    String? name,
    String? enName,
    String? description,
    String? profession,
    String? enProfession,
  }) {
    return Person(
      id: id ?? this.id,
      photo: photo ?? this.photo,
      name: name ?? this.name,
      enName: enName ?? this.enName,
      description: description ?? this.description,
      profession: profession ?? this.profession,
      enProfession: enProfession ?? this.enProfession,
    );
  }

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json["id"],
      photo: json["photo"],
      name: json["name"],
      enName: json["enName"],
      description: json["description"],
      profession: json["profession"],
      enProfession: json["enProfession"],
    );
  }
}

class Premiere {
  Premiere({
    required this.world,
  });

  final DateTime? world;

  Premiere copyWith({
    DateTime? world,
  }) {
    return Premiere(
      world: world ?? this.world,
    );
  }

  factory Premiere.fromJson(Map<String, dynamic> json) {
    return Premiere(
      world: DateTime.tryParse(json["world"] ?? ""),
    );
  }
}

class ProductionCompany {
  ProductionCompany({
    required this.name,
    required this.url,
    required this.previewUrl,
  });

  final String? name;
  final String? url;
  final String? previewUrl;

  ProductionCompany copyWith({
    String? name,
    String? url,
    String? previewUrl,
  }) {
    return ProductionCompany(
      name: name ?? this.name,
      url: url ?? this.url,
      previewUrl: previewUrl ?? this.previewUrl,
    );
  }

  factory ProductionCompany.fromJson(Map<String, dynamic> json) {
    return ProductionCompany(
      name: json["name"],
      url: json["url"],
      previewUrl: json["previewUrl"],
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

class SpokenLanguage {
  SpokenLanguage({
    required this.name,
    required this.nameEn,
  });

  final String? name;
  final String? nameEn;

  SpokenLanguage copyWith({
    String? name,
    String? nameEn,
  }) {
    return SpokenLanguage(
      name: name ?? this.name,
      nameEn: nameEn ?? this.nameEn,
    );
  }

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) {
    return SpokenLanguage(
      name: json["name"],
      nameEn: json["nameEn"],
    );
  }
}

class Technology {
  Technology({
    required this.hasImax,
    required this.has3D,
  });

  final bool? hasImax;
  final bool? has3D;

  Technology copyWith({
    bool? hasImax,
    bool? has3D,
  }) {
    return Technology(
      hasImax: hasImax ?? this.hasImax,
      has3D: has3D ?? this.has3D,
    );
  }

  factory Technology.fromJson(Map<String, dynamic> json) {
    return Technology(
      hasImax: json["hasImax"],
      has3D: json["has3D"],
    );
  }
}

class Videos {
  Videos({
    required this.trailers,
  });

  final List<Trailer> trailers;

  Videos copyWith({
    List<Trailer>? trailers,
  }) {
    return Videos(
      trailers: trailers ?? this.trailers,
    );
  }

  factory Videos.fromJson(Map<String, dynamic> json) {
    return Videos(
      trailers: json["trailers"] == null
          ? []
          : List<Trailer>.from(
              json["trailers"]!.map((x) => Trailer.fromJson(x))),
    );
  }
}

class Trailer {
  Trailer({
    required this.url,
    required this.name,
    required this.site,
    required this.type,
  });

  final String? url;
  final String? name;
  final String? site;
  final String? type;

  Trailer copyWith({
    String? url,
    String? name,
    String? site,
    String? type,
  }) {
    return Trailer(
      url: url ?? this.url,
      name: name ?? this.name,
      site: site ?? this.site,
      type: type ?? this.type,
    );
  }

  factory Trailer.fromJson(Map<String, dynamic> json) {
    return Trailer(
      url: json["url"],
      name: json["name"],
      site: json["site"],
      type: json["type"],
    );
  }
}

class Watchability {
  Watchability({
    required this.items,
  });

  final List<dynamic> items;

  Watchability copyWith({
    List<dynamic>? items,
  }) {
    return Watchability(
      items: items ?? this.items,
    );
  }

  factory Watchability.fromJson(Map<String, dynamic> json) {
    return Watchability(
      items: json["items"] == null
          ? []
          : List<dynamic>.from(json["items"]!.map((x) => x)),
    );
  }
}
