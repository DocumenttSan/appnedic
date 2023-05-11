class DataModel {
  late final String courseHeadline;
  late final String coursetitle;
  late final String courseImage;
  DataModel(
    this.courseHeadline,
    this.courseImage,
    this.coursetitle,
  );
}

List<DataModel> datalist = [
  DataModel('Animal', 'assets/imges/animal.png', 'คำศัพท์เกี่ยวกับ\nAnimals'),
  DataModel('Body', 'assets/imges/body.png', 'คำศัพท์เกี่ยวกับ\nBody'),
  DataModel('Colors', 'assets/imges/zebra.png', 'คำศัพท์เกี่ยวกับ\Colors'),
];
