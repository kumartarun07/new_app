class Urls
{
 // static String mQuery=AppCont.News;
 // static final getSearchUrls= "https://newsapi.org/v2/everything?q=$mQuery&apiKey=781db1818b714f568b3bdd5eb4c3617a";
  static getSearchUrl(String query) => "https://newsapi.org/v2/everything?q=$query&apiKey=781db1818b714f568b3bdd5eb4c3617a";
  static final getIndiaNewsUrls= "https://newsapi.org/v2/everything?q=india&apiKey=781db1818b714f568b3bdd5eb4c3617a";
  static final getHeadLineNewsUrls= "https://newsapi.org/v2/top-headlines?country=us&apiKey=781db1818b714f568b3bdd5eb4c3617a";
}