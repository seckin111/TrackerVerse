// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSeriesCollection on Isar {
  IsarCollection<Series> get series => this.collection();
}

const SeriesSchema = CollectionSchema(
  name: r'Series',
  id: 7657359594456909061,
  properties: {
    r'seriesDescription': PropertySchema(
      id: 0,
      name: r'seriesDescription',
      type: IsarType.string,
    ),
    r'seriesGenre': PropertySchema(
      id: 1,
      name: r'seriesGenre',
      type: IsarType.string,
    ),
    r'seriesImageHorizontal': PropertySchema(
      id: 2,
      name: r'seriesImageHorizontal',
      type: IsarType.string,
    ),
    r'seriesImageVertical': PropertySchema(
      id: 3,
      name: r'seriesImageVertical',
      type: IsarType.string,
    ),
    r'seriesName': PropertySchema(
      id: 4,
      name: r'seriesName',
      type: IsarType.string,
    ),
    r'seriesRating': PropertySchema(
      id: 5,
      name: r'seriesRating',
      type: IsarType.string,
    ),
    r'seriesSeasons': PropertySchema(
      id: 6,
      name: r'seriesSeasons',
      type: IsarType.stringList,
    ),
    r'serisCompletionPercentetion': PropertySchema(
      id: 7,
      name: r'serisCompletionPercentetion',
      type: IsarType.long,
    )
  },
  estimateSize: _seriesEstimateSize,
  serialize: _seriesSerialize,
  deserialize: _seriesDeserialize,
  deserializeProp: _seriesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _seriesGetId,
  getLinks: _seriesGetLinks,
  attach: _seriesAttach,
  version: '3.1.0+1',
);

int _seriesEstimateSize(
  Series object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.seriesDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seriesGenre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seriesImageHorizontal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seriesImageVertical;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seriesName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seriesRating;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.seriesSeasons;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _seriesSerialize(
  Series object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.seriesDescription);
  writer.writeString(offsets[1], object.seriesGenre);
  writer.writeString(offsets[2], object.seriesImageHorizontal);
  writer.writeString(offsets[3], object.seriesImageVertical);
  writer.writeString(offsets[4], object.seriesName);
  writer.writeString(offsets[5], object.seriesRating);
  writer.writeStringList(offsets[6], object.seriesSeasons);
  writer.writeLong(offsets[7], object.serisCompletionPercentetion);
}

Series _seriesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Series();
  object.id = id;
  object.seriesDescription = reader.readStringOrNull(offsets[0]);
  object.seriesGenre = reader.readStringOrNull(offsets[1]);
  object.seriesImageHorizontal = reader.readStringOrNull(offsets[2]);
  object.seriesImageVertical = reader.readStringOrNull(offsets[3]);
  object.seriesName = reader.readStringOrNull(offsets[4]);
  object.seriesRating = reader.readStringOrNull(offsets[5]);
  object.seriesSeasons = reader.readStringList(offsets[6]);
  object.serisCompletionPercentetion = reader.readLongOrNull(offsets[7]);
  return object;
}

P _seriesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _seriesGetId(Series object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _seriesGetLinks(Series object) {
  return [];
}

void _seriesAttach(IsarCollection<dynamic> col, Id id, Series object) {
  object.id = id;
}

extension SeriesQueryWhereSort on QueryBuilder<Series, Series, QWhere> {
  QueryBuilder<Series, Series, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SeriesQueryWhere on QueryBuilder<Series, Series, QWhereClause> {
  QueryBuilder<Series, Series, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Series, Series, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Series, Series, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Series, Series, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SeriesQueryFilter on QueryBuilder<Series, Series, QFilterCondition> {
  QueryBuilder<Series, Series, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesDescription',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesDescription',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesDescriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesDescriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesGenre',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesGenre',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesGenre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesGenre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesGenre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesGenre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesGenre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesGenre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesGenre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesGenre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesGenre',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesGenreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesGenre',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesImageHorizontal',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesImageHorizontal',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesImageHorizontal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesImageHorizontal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesImageHorizontal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesImageHorizontal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesImageHorizontal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesImageHorizontal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesImageHorizontal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesImageHorizontal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesImageHorizontal',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageHorizontalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesImageHorizontal',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesImageVertical',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesImageVertical',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesImageVertical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesImageVertical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesImageVertical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesImageVertical',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesImageVertical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesImageVertical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesImageVertical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesImageVertical',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesImageVertical',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesImageVerticalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesImageVertical',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesName',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesName',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesName',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesName',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesRating',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesRating',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesRating',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesRating',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesRating',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesRatingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesRating',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesSeasonsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seriesSeasons',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesSeasonsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seriesSeasons',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesSeasons',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seriesSeasons',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seriesSeasons',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seriesSeasons',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seriesSeasons',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seriesSeasons',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seriesSeasons',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seriesSeasons',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seriesSeasons',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seriesSeasons',
        value: '',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seriesSeasons',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition> seriesSeasonsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seriesSeasons',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seriesSeasons',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seriesSeasons',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seriesSeasons',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      seriesSeasonsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seriesSeasons',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      serisCompletionPercentetionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serisCompletionPercentetion',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      serisCompletionPercentetionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serisCompletionPercentetion',
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      serisCompletionPercentetionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serisCompletionPercentetion',
        value: value,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      serisCompletionPercentetionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serisCompletionPercentetion',
        value: value,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      serisCompletionPercentetionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serisCompletionPercentetion',
        value: value,
      ));
    });
  }

  QueryBuilder<Series, Series, QAfterFilterCondition>
      serisCompletionPercentetionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serisCompletionPercentetion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SeriesQueryObject on QueryBuilder<Series, Series, QFilterCondition> {}

extension SeriesQueryLinks on QueryBuilder<Series, Series, QFilterCondition> {}

extension SeriesQuerySortBy on QueryBuilder<Series, Series, QSortBy> {
  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesDescription', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesDescription', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesGenre', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesGenre', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesImageHorizontal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageHorizontal', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesImageHorizontalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageHorizontal', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesImageVertical() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageVertical', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesImageVerticalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageVertical', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesName', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesName', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesRating', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> sortBySeriesRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesRating', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy>
      sortBySerisCompletionPercentetion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serisCompletionPercentetion', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy>
      sortBySerisCompletionPercentetionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serisCompletionPercentetion', Sort.desc);
    });
  }
}

extension SeriesQuerySortThenBy on QueryBuilder<Series, Series, QSortThenBy> {
  QueryBuilder<Series, Series, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesDescription', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesDescription', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesGenre', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesGenre', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesImageHorizontal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageHorizontal', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesImageHorizontalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageHorizontal', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesImageVertical() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageVertical', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesImageVerticalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesImageVertical', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesName', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesName', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesRating', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy> thenBySeriesRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seriesRating', Sort.desc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy>
      thenBySerisCompletionPercentetion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serisCompletionPercentetion', Sort.asc);
    });
  }

  QueryBuilder<Series, Series, QAfterSortBy>
      thenBySerisCompletionPercentetionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serisCompletionPercentetion', Sort.desc);
    });
  }
}

extension SeriesQueryWhereDistinct on QueryBuilder<Series, Series, QDistinct> {
  QueryBuilder<Series, Series, QDistinct> distinctBySeriesDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Series, Series, QDistinct> distinctBySeriesGenre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesGenre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Series, Series, QDistinct> distinctBySeriesImageHorizontal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesImageHorizontal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Series, Series, QDistinct> distinctBySeriesImageVertical(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesImageVertical',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Series, Series, QDistinct> distinctBySeriesName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Series, Series, QDistinct> distinctBySeriesRating(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesRating', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Series, Series, QDistinct> distinctBySeriesSeasons() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seriesSeasons');
    });
  }

  QueryBuilder<Series, Series, QDistinct>
      distinctBySerisCompletionPercentetion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serisCompletionPercentetion');
    });
  }
}

extension SeriesQueryProperty on QueryBuilder<Series, Series, QQueryProperty> {
  QueryBuilder<Series, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Series, String?, QQueryOperations> seriesDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesDescription');
    });
  }

  QueryBuilder<Series, String?, QQueryOperations> seriesGenreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesGenre');
    });
  }

  QueryBuilder<Series, String?, QQueryOperations>
      seriesImageHorizontalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesImageHorizontal');
    });
  }

  QueryBuilder<Series, String?, QQueryOperations>
      seriesImageVerticalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesImageVertical');
    });
  }

  QueryBuilder<Series, String?, QQueryOperations> seriesNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesName');
    });
  }

  QueryBuilder<Series, String?, QQueryOperations> seriesRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesRating');
    });
  }

  QueryBuilder<Series, List<String>?, QQueryOperations>
      seriesSeasonsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seriesSeasons');
    });
  }

  QueryBuilder<Series, int?, QQueryOperations>
      serisCompletionPercentetionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serisCompletionPercentetion');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSeriesSeasonsCollection on Isar {
  IsarCollection<SeriesSeasons> get seriesSeasons => this.collection();
}

const SeriesSeasonsSchema = CollectionSchema(
  name: r'SeriesSeasons',
  id: 1294439502052084464,
  properties: {
    r'seasonEpisodes': PropertySchema(
      id: 0,
      name: r'seasonEpisodes',
      type: IsarType.stringList,
    ),
    r'seasonName': PropertySchema(
      id: 1,
      name: r'seasonName',
      type: IsarType.string,
    )
  },
  estimateSize: _seriesSeasonsEstimateSize,
  serialize: _seriesSeasonsSerialize,
  deserialize: _seriesSeasonsDeserialize,
  deserializeProp: _seriesSeasonsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _seriesSeasonsGetId,
  getLinks: _seriesSeasonsGetLinks,
  attach: _seriesSeasonsAttach,
  version: '3.1.0+1',
);

int _seriesSeasonsEstimateSize(
  SeriesSeasons object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.seasonEpisodes;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.seasonName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _seriesSeasonsSerialize(
  SeriesSeasons object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.seasonEpisodes);
  writer.writeString(offsets[1], object.seasonName);
}

SeriesSeasons _seriesSeasonsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SeriesSeasons();
  object.id = id;
  object.seasonEpisodes = reader.readStringList(offsets[0]);
  object.seasonName = reader.readStringOrNull(offsets[1]);
  return object;
}

P _seriesSeasonsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _seriesSeasonsGetId(SeriesSeasons object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _seriesSeasonsGetLinks(SeriesSeasons object) {
  return [];
}

void _seriesSeasonsAttach(
    IsarCollection<dynamic> col, Id id, SeriesSeasons object) {
  object.id = id;
}

extension SeriesSeasonsQueryWhereSort
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QWhere> {
  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SeriesSeasonsQueryWhere
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QWhereClause> {
  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SeriesSeasonsQueryFilter
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QFilterCondition> {
  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seasonEpisodes',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seasonEpisodes',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonEpisodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seasonEpisodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seasonEpisodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seasonEpisodes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seasonEpisodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seasonEpisodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seasonEpisodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seasonEpisodes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonEpisodes',
        value: '',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seasonEpisodes',
        value: '',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasonEpisodes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasonEpisodes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasonEpisodes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasonEpisodes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasonEpisodes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonEpisodesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'seasonEpisodes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seasonName',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seasonName',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seasonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seasonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seasonName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seasonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seasonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seasonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seasonName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seasonName',
        value: '',
      ));
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterFilterCondition>
      seasonNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seasonName',
        value: '',
      ));
    });
  }
}

extension SeriesSeasonsQueryObject
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QFilterCondition> {}

extension SeriesSeasonsQueryLinks
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QFilterCondition> {}

extension SeriesSeasonsQuerySortBy
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QSortBy> {
  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterSortBy> sortBySeasonName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonName', Sort.asc);
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterSortBy>
      sortBySeasonNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonName', Sort.desc);
    });
  }
}

extension SeriesSeasonsQuerySortThenBy
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QSortThenBy> {
  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterSortBy> thenBySeasonName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonName', Sort.asc);
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QAfterSortBy>
      thenBySeasonNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seasonName', Sort.desc);
    });
  }
}

extension SeriesSeasonsQueryWhereDistinct
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QDistinct> {
  QueryBuilder<SeriesSeasons, SeriesSeasons, QDistinct>
      distinctBySeasonEpisodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seasonEpisodes');
    });
  }

  QueryBuilder<SeriesSeasons, SeriesSeasons, QDistinct> distinctBySeasonName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seasonName', caseSensitive: caseSensitive);
    });
  }
}

extension SeriesSeasonsQueryProperty
    on QueryBuilder<SeriesSeasons, SeriesSeasons, QQueryProperty> {
  QueryBuilder<SeriesSeasons, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SeriesSeasons, List<String>?, QQueryOperations>
      seasonEpisodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seasonEpisodes');
    });
  }

  QueryBuilder<SeriesSeasons, String?, QQueryOperations> seasonNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seasonName');
    });
  }
}
