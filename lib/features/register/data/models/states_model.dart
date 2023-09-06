class States {
  List<Data>? data;

  States({this.data});

  States.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? uri;
  String? region;
  String? capital;
  String? deputy;
  String? governor;
  String? slogan;

  Data(
      {this.id,
      this.name,
      this.uri,
      this.region,
      this.capital,
      this.deputy,
      this.governor,
      this.slogan});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    uri = json['uri'];
    region = json['region'];
    capital = json['capital'];
    deputy = json['deputy'];
    governor = json['governor'];
    slogan = json['slogan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['uri'] = this.uri;
    data['region'] = this.region;
    data['capital'] = this.capital;
    data['deputy'] = this.deputy;
    data['governor'] = this.governor;
    data['slogan'] = this.slogan;
    return data;
  }
}

