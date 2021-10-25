class BandModel {
  String id;
  String name;
  int votes;

  BandModel({this.id, this.name, this.votes});

  factory BandModel.fromMap(Map<String, dynamic> values) => BandModel(
        id: values['id'],
        name: values['name'],
        votes: values['votes'],
      );
}
