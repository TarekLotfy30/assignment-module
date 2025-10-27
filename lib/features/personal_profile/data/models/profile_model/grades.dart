import '../../../../../core/models/base_model.dart';
import 'category.dart';

class Grades extends BaseModel {
  final int? id;
  final String? title;
  final dynamic admission;
  final int? branchId;
  final int? price;
  final int? categoryId;
  final String? showedTitle;
  final int? active;
  final dynamic oldGrades;
  final int? nextStep;
  final String? path;
  final int? zakerSeen;
  final int? modrsenaSeen;
  final int? questionsBankSeen;
  final int? resourcesSeen;
  final int? askTeacherSeen;
  final int? resourcesSeenInHome;
  final int? reportsSeen;
  final Category? category;

  const Grades({
    this.id,
    this.title,
    this.admission,
    this.branchId,
    this.price,
    this.categoryId,
    this.showedTitle,
    this.active,
    this.oldGrades,
    this.nextStep,
    this.path,
    this.zakerSeen,
    this.modrsenaSeen,
    this.questionsBankSeen,
    this.resourcesSeen,
    this.askTeacherSeen,
    this.resourcesSeenInHome,
    this.reportsSeen,
    this.category,
  });

  factory Grades.fromJson(Map<String, dynamic> data) => Grades(
    id: data['id'] as int?,
    title: data['title'] as String?,
    admission: data['admission'] as dynamic,
    branchId: data['branch_id'] as int?,
    price: data['price'] as int?,
    categoryId: data['category_id'] as int?,
    showedTitle: data['showed_title'] as String?,
    active: data['active'] as int?,
    oldGrades: data['old_grades'] as dynamic,
    nextStep: data['next_step'] as int?,
    path: data['path'] as String?,
    zakerSeen: data['zaker_seen'] as int?,
    modrsenaSeen: data['modrsena_seen'] as int?,
    questionsBankSeen: data['questions_bank_seen'] as int?,
    resourcesSeen: data['resources_seen'] as int?,
    askTeacherSeen: data['ask_teacher_seen'] as int?,
    resourcesSeenInHome: data['resources_seen_in_home'] as int?,
    reportsSeen: data['reports_seen'] as int?,
    category: data['category'] == null
        ? null
        : Category.fromMap(data['category'] as Map<String, dynamic>),
  );

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'admission': admission,
    'branch_id': branchId,
    'price': price,
    'category_id': categoryId,
    'showed_title': showedTitle,
    'active': active,
    'old_grades': oldGrades,
    'next_step': nextStep,
    'path': path,
    'zaker_seen': zakerSeen,
    'modrsena_seen': modrsenaSeen,
    'questions_bank_seen': questionsBankSeen,
    'resources_seen': resourcesSeen,
    'ask_teacher_seen': askTeacherSeen,
    'resources_seen_in_home': resourcesSeenInHome,
    'reports_seen': reportsSeen,
    'category': category?.toJson(),
  };

  @override
  List<Object?> get props => [
    id,
    title,
    admission,
    branchId,
    price,
    categoryId,
    showedTitle,
    active,
    oldGrades,
    nextStep,
    path,
    zakerSeen,
    modrsenaSeen,
    questionsBankSeen,
    resourcesSeen,
    askTeacherSeen,
    resourcesSeenInHome,
    reportsSeen,
    category,
  ];
}
