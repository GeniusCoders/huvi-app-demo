class BannerModel {
  List<BannerData> data;
  int success;

  BannerModel({this.data, this.success});

  BannerModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = <BannerData>[];
      json['data'].forEach((v) {
        data.add(BannerData.fromJson(v));
      });
    }
    success = json['success'];
  }
}

class BannerData {
  String id;
  String bannerUrl;
  String status;
  String bannerType;
  String bannerOrder;
  String linkType;
  String linkValue;
  String displayOrder;
  String loginRequired;
  String createdDate;
  String updatedDate;

  BannerData(
      {this.id,
      this.bannerUrl,
      this.status,
      this.bannerType,
      this.bannerOrder,
      this.linkType,
      this.linkValue,
      this.displayOrder,
      this.loginRequired,
      this.createdDate,
      this.updatedDate});

  BannerData.fromJson(dynamic json) {
    id = json['id'];
    bannerUrl = json['banner_url'];
    status = json['status'];
    bannerType = json['banner_type'];
    bannerOrder = json['banner_order'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    displayOrder = json['display_order'];
    loginRequired = json['login_required'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
  }
}
