class SourceModel
{
  String? id;
  String? name;
  SourceModel({this.id,this.name});
  factory SourceModel.fromJson(Map<String,dynamic>json)=>SourceModel(
    id: json["id"],
    name: json["name"],
  );
}

class ArticalModel
{
  String? author;
  String? content;
  String? description;
  String? publishedAt;
  SourceModel?source;
  String? title;
  String? url;
  String? urlToImage;

  ArticalModel({this.author, this.content, this.description, this.publishedAt,
      this.source, this.title, this.url, this.urlToImage});

  factory ArticalModel.fromJson(Map<String,dynamic>json)=>
      ArticalModel(
        title: json['title'],
        url: json['url'],
        description: json['description'],
        author: json['author'],
        content: json['content'],
        publishedAt: json['publishedAt'],
        source: SourceModel.fromJson(json['source']),
        urlToImage: json['urlToImage'],
      );
}


class ArticalDataModel
{
  String? status;
  int? totalResults;
  List<ArticalModel>?articles;

  ArticalDataModel({this.status, this.totalResults, this.articles});

  factory ArticalDataModel.fromJson(Map<String,dynamic>json)
  {
    List<ArticalModel>mArtical=[];
    for(Map<String,dynamic> eachArtical in json['articles'])
      {
        mArtical.add(ArticalModel.fromJson(eachArtical));
      }
    return ArticalDataModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: mArtical,
    );
  }
}