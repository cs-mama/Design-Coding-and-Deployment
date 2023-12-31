import 'package:json_annotation/json_annotation.dart';

part 'pb_prototype_node.g.dart';

@JsonSerializable(nullable: true)
class PrototypeNode {
  String destinationUUID;
  String destinationName;
  PrototypeNode({this.destinationUUID, this.destinationName});
  factory PrototypeNode.fromJson(Map<String, dynamic> json) =>
      _$PrototypeNodeFromJson(json);
  Map<String, dynamic> toJson() => _$PrototypeNodeToJson(this);

  static PrototypeNode prototypeNodeFromJson(String prototypeNodeUUID) =>
      PrototypeNode(destinationUUID: prototypeNodeUUID);
}
