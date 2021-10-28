class BandModel {
  String id;
  String name;
  int votes;

  BandModel({this.id, this.name, this.votes});

  factory BandModel.fromMap(Map<String, dynamic> values) => BandModel(
        id: values.containsKey('id') ? values['id'] : '',
        name: values.containsKey('name') ? values['name'] : '',
        votes: values.containsKey('votes') ? values['votes'] : 0,
      );
}
