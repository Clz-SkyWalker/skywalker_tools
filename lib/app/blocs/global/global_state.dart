part of 'global_bloc.dart';

class GlobalState extends Equatable {
  const GlobalState({
    required this.fontFamily,
    required this.theme,
    required this.navIndex,
  });

  GlobalState copyWith({
    String? fontFamily,
    ITheme? theme,
    int? navIndex,
  }) =>
      GlobalState(
        fontFamily: fontFamily ?? this.fontFamily,
        theme: theme ?? this.theme,
        navIndex: navIndex ?? this.navIndex,
      );

  final String fontFamily;
  final ITheme theme;
  final int navIndex;

  @override
  List<Object> get props => [fontFamily, theme, navIndex];
}

class GlobalInitial extends GlobalState {
  const GlobalInitial({
    required super.theme,
    required super.fontFamily,
    required super.navIndex,
  });
}
