import 'package:news/sources/data/models/source.dart';

abstract class SourcesStates {}

class SourcesInitial extends SourcesStates {}

class GetSourcesLoading extends SourcesStates {}

class GetSourcesSuccess extends SourcesStates {
  final List<Source> sources;

  GetSourcesSuccess(this.sources);
}

class GetSourcesError extends SourcesStates {
  final String message;

  GetSourcesError(this.message);
}
