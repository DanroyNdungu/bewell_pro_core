// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composition_edge_relay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompositionEdgeRelay _$_$_CompositionEdgeRelayFromJson(
    Map<String, dynamic> json) {
  return _$_CompositionEdgeRelay(
    cursor: json['cursor'] as String?,
    node: json['node'] == null
        ? null
        : Composition.fromJson(json['node'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CompositionEdgeRelayToJson(
        _$_CompositionEdgeRelay instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'node': instance.node?.toJson(),
    };
