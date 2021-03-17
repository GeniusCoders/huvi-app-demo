class CategoryModel {
  int success;
  List<CategoryData> data;

  CategoryModel({this.success, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <CategoryData>[];
      json['data'].forEach((v) {
        data.add(CategoryData.fromJson(v));
      });
    }
  }
}

class CategoryData {
  String categoryId;
  String categoryName;
  Null description;
  String banner;
  String cutoffFrom;
  String cutoffTo;
  String createdDate;
  String updatedDate;
  String displayOrder;
  String status;
  String expectedTime;
  String expDelText;
  List<SubCategories> subCategories;

  CategoryData(
      {this.categoryId,
      this.categoryName,
      this.description,
      this.banner,
      this.cutoffFrom,
      this.cutoffTo,
      this.createdDate,
      this.updatedDate,
      this.displayOrder,
      this.status,
      this.expectedTime,
      this.expDelText,
      this.subCategories});

  CategoryData.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    description = json['description'];
    banner = json['banner'];
    cutoffFrom = json['cutoff_from'];
    cutoffTo = json['cutoff_to'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    displayOrder = json['display_order'];
    status = json['status'];
    expectedTime = json['expected_time'];
    expDelText = json['exp_del_text'];
    if (json['sub_categories'] != null) {
      subCategories = <SubCategories>[];
      json['sub_categories'].forEach((v) {
        subCategories.add(SubCategories.fromJson(v));
      });
    }
  }
}

class SubCategories {
  String subCategoryId;
  String subCategoryName;
  String category;
  String banner;
  String cutoffFrom;
  String cutoffTo;
  String displayOrder;
  String status;
  String createdDate;
  String updatedDate;
  String expectedTime;

  SubCategories(
      {this.subCategoryId,
      this.subCategoryName,
      this.category,
      this.banner,
      this.cutoffFrom,
      this.cutoffTo,
      this.displayOrder,
      this.status,
      this.createdDate,
      this.updatedDate,
      this.expectedTime});

  SubCategories.fromJson(Map<String, dynamic> json) {
    subCategoryId = json['sub_category_id'];
    subCategoryName = json['sub_category_name'];
    category = json['category'];
    banner = json['banner'];
    cutoffFrom = json['cutoff_from'];
    cutoffTo = json['cutoff_to'];
    displayOrder = json['display_order'];
    status = json['status'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    expectedTime = json['expected_time'];
  }
}
