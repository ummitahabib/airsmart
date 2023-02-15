class Organize {
  String? id;
  String orgName;
  String orgType;
  String orgDes;
  String sites;
  String sector;
  void Function()? views;

  Organize(
      {required this.id,
      required this.orgName,
      required this.orgType,
      required this.orgDes,
      required this.sites,
      required this.sector,
      this.views});

  static List<Organize> organizeList() {
    return [
      Organize(
          id: '01',
          orgName: 'Ade Org',
          orgType: 'Agriculture',
          orgDes: 'Ricco Crop & Animal Fram',
          sites: '2',
          sector: '2',
          views: () {}),
      Organize(
          id: '02',
          orgName: 'Ade Org',
          orgType: 'Agriculture',
          orgDes: 'Ricco Crop & Animal Fram',
          sites: '2',
          sector: '2',
          views: () {}),
      Organize(
          id: '03',
          orgName: 'Ade Org',
          orgType: 'Agriculture',
          orgDes: 'Ricco Crop & Animal Fram',
          sites: '2',
          sector: '2',
          views: () {}),
      Organize(
          id: '04',
          orgName: 'Ade Org',
          orgType: 'Agriculture',
          orgDes: 'Ricco Crop & Animal Fram',
          sites: '2',
          sector: '2',
          views: () {}),
      Organize(
          id: '05',
          orgName: 'Ade Org',
          orgType: 'Agriculture',
          orgDes: 'Ricco Crop & Animal Fram',
          sites: '2',
          sector: '2',
          views: () {}),
      Organize(
          id: '06',
          orgName: 'Ade Org',
          orgType: 'Agriculture',
          orgDes: 'Ricco Crop & Animal Fram',
          sites: '2',
          sector: '2',
          views: () {}),
    ];
  }
}
