const String template = """import 'package:mvc_rocket/mvc_rocket.dart';

-fieldsKey-

class -name- extends RocketModel<-name-> {
  -fields-

  -name-({
    -fieldsConstructor-
  })-initFields-

  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    -fromJsonFields-
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
   -updateFieldsParams-
  }) {
   -updateFieldsBody-
    rebuildWidget();
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    -toJsonFields-

    return data;
  }

  -instance-
}""";
