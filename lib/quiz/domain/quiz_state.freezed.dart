// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuizState {
  List<Question> get questions => throw _privateConstructorUsedError;
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  List<bool> get userAnswers => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get bestScore => throw _privateConstructorUsedError;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({
    List<Question> questions,
    int currentQuestionIndex,
    List<bool> userAnswers,
    bool isCompleted,
    int bestScore,
  });
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? currentQuestionIndex = null,
    Object? userAnswers = null,
    Object? isCompleted = null,
    Object? bestScore = null,
  }) {
    return _then(
      _value.copyWith(
            questions:
                null == questions
                    ? _value.questions
                    : questions // ignore: cast_nullable_to_non_nullable
                        as List<Question>,
            currentQuestionIndex:
                null == currentQuestionIndex
                    ? _value.currentQuestionIndex
                    : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            userAnswers:
                null == userAnswers
                    ? _value.userAnswers
                    : userAnswers // ignore: cast_nullable_to_non_nullable
                        as List<bool>,
            isCompleted:
                null == isCompleted
                    ? _value.isCompleted
                    : isCompleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            bestScore:
                null == bestScore
                    ? _value.bestScore
                    : bestScore // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
    _$QuizStateImpl value,
    $Res Function(_$QuizStateImpl) then,
  ) = __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Question> questions,
    int currentQuestionIndex,
    List<bool> userAnswers,
    bool isCompleted,
    int bestScore,
  });
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
    _$QuizStateImpl _value,
    $Res Function(_$QuizStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? currentQuestionIndex = null,
    Object? userAnswers = null,
    Object? isCompleted = null,
    Object? bestScore = null,
  }) {
    return _then(
      _$QuizStateImpl(
        questions:
            null == questions
                ? _value._questions
                : questions // ignore: cast_nullable_to_non_nullable
                    as List<Question>,
        currentQuestionIndex:
            null == currentQuestionIndex
                ? _value.currentQuestionIndex
                : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        userAnswers:
            null == userAnswers
                ? _value._userAnswers
                : userAnswers // ignore: cast_nullable_to_non_nullable
                    as List<bool>,
        isCompleted:
            null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        bestScore:
            null == bestScore
                ? _value.bestScore
                : bestScore // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$QuizStateImpl extends _QuizState {
  const _$QuizStateImpl({
    required final List<Question> questions,
    required this.currentQuestionIndex,
    required final List<bool> userAnswers,
    required this.isCompleted,
    required this.bestScore,
  }) : _questions = questions,
       _userAnswers = userAnswers,
       super._();

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final int currentQuestionIndex;
  final List<bool> _userAnswers;
  @override
  List<bool> get userAnswers {
    if (_userAnswers is EqualUnmodifiableListView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAnswers);
  }

  @override
  final bool isCompleted;
  @override
  final int bestScore;

  @override
  String toString() {
    return 'QuizState(questions: $questions, currentQuestionIndex: $currentQuestionIndex, userAnswers: $userAnswers, isCompleted: $isCompleted, bestScore: $bestScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            const DeepCollectionEquality().equals(
              other._questions,
              _questions,
            ) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            const DeepCollectionEquality().equals(
              other._userAnswers,
              _userAnswers,
            ) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.bestScore, bestScore) ||
                other.bestScore == bestScore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_questions),
    currentQuestionIndex,
    const DeepCollectionEquality().hash(_userAnswers),
    isCompleted,
    bestScore,
  );

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState extends QuizState {
  const factory _QuizState({
    required final List<Question> questions,
    required final int currentQuestionIndex,
    required final List<bool> userAnswers,
    required final bool isCompleted,
    required final int bestScore,
  }) = _$QuizStateImpl;
  const _QuizState._() : super._();

  @override
  List<Question> get questions;
  @override
  int get currentQuestionIndex;
  @override
  List<bool> get userAnswers;
  @override
  bool get isCompleted;
  @override
  int get bestScore;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
