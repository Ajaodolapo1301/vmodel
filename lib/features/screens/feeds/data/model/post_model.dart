class PostModel {
  String? image;
  String? name;
  List<String>? images;
  String? numOfLikes;
  String? numOfShares;
  bool? isLiked;
  PostModel(
      {this.image,
      this.name,
      this.images,
      this.numOfLikes,
      this.numOfShares,
      this.isLiked});
}
