class Regions {
  String? id;
  String? name;
  String? uri;
  String? region;
  String? capital;
  String? deputy;
  String? governor;
  List<String>? lgas;
  List<String>? neighbours;
  String? slogan;
  List<String>? towns;

  Regions(
      {this.id,
      this.name,
      this.uri,
      this.region,
      this.capital,
      this.deputy,
      this.governor,
      this.lgas,
      this.neighbours,
      this.slogan,
      this.towns});

  Regions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    uri = json['uri'];
    region = json['region'];
    capital = json['capital'];
    deputy = json['deputy'];
    governor = json['governor'];
    lgas = json['lgas'].cast<String>();
    neighbours = json['neighbours'].cast<String>();
    slogan = json['slogan'];
    towns = json['towns'].cast<String>();
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
    data['lgas'] = this.lgas;
    data['neighbours'] = this.neighbours;
    data['slogan'] = this.slogan;
    data['towns'] = this.towns;
    return data;
  }
}