class BackGroundImageModel {
  String type;
  String image;

  BackGroundImageModel({this.type, this.image});

  BackGroundImageModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['image'] = this.image;
    return data;
  }
}
