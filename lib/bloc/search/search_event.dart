abstract class SearchEvent{}
class GetSearchEvent extends SearchEvent{
  String query;
  GetSearchEvent({required this.query});
}