; ModuleID = 'source/base/geometry_info.cc'
source_filename = "source/base/geometry_info.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::RefinementCase" = type { i8 }
%"class.dealii::RefinementCase.2" = type { i8 }
%"class.dealii::RefinementCase.6" = type { i8 }
%"class.dealii::RefinementCase.0" = type { i8 }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::GeometryInfo<1>::ExcInvalidCoordinate" = type { %"class.dealii::ExceptionBase.base", double }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"class.dealii::GeometryInfo<1>::ExcInvalidSubface" = type { %"class.dealii::ExceptionBase.base", i32, i32, i32 }
%"class.dealii::Point.4" = type { %"class.dealii::Tensor.5" }
%"class.dealii::Tensor.5" = type { [2 x double] }
%"class.dealii::GeometryInfo<2>::ExcInvalidCoordinate" = type { %"class.dealii::ExceptionBase.base", double }
%"class.dealii::GeometryInfo<2>::ExcInvalidSubface" = type { %"class.dealii::ExceptionBase.base", i32, i32, i32 }
%"class.dealii::Point.8" = type { %"class.dealii::Tensor.9" }
%"class.dealii::Tensor.9" = type { [3 x double] }
%"class.dealii::GeometryInfo<3>::ExcInvalidCoordinate" = type { %"class.dealii::ExceptionBase.base", double }
%"class.dealii::GeometryInfo<3>::ExcInvalidSubface" = type { %"class.dealii::ExceptionBase.base", i32, i32, i32 }
%"class.dealii::RefinementCase.10" = type { i8 }
%"class.dealii::Point.12" = type { %"class.dealii::Tensor.13" }
%"class.dealii::Tensor.13" = type { [4 x double] }
%"class.dealii::StandardExceptions::ExcNotImplemented" = type { %"class.dealii::ExceptionBase.base", [4 x i8] }
%"class.dealii::GeometryInfo<4>::ExcInvalidCoordinate" = type { %"class.dealii::ExceptionBase.base", double }
%"class.dealii::GeometryInfo<4>::ExcInvalidSubface" = type { %"class.dealii::ExceptionBase.base", i32, i32, i32 }

$_ZN6dealii8internal16define_variablesILi2EEEvv = comdat any

$_ZN6dealii8internal16define_variablesILi3EEEvv = comdat any

$_ZN6dealii8internal16define_variablesILi4EEEvv = comdat any

$_ZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEE = comdat any

$_ZNK6dealii14RefinementCaseILi1EEcvhEv = comdat any

$_ZN6dealii12GeometryInfoILi1EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE = comdat any

$_ZN6dealii14RefinementCaseILi0EEC2ENS_23RefinementPossibilitiesILi0EE13PossibilitiesE = comdat any

$_ZN6dealii12GeometryInfoILi1EE28standard_to_real_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE28real_to_standard_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE26standard_to_real_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE26real_to_standard_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE20project_to_unit_cellERKNS_5PointILi1EEE = comdat any

$_ZN6dealii5PointILi1EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi1EE21distance_to_unit_cellERKNS_5PointILi1EEE = comdat any

$_ZNK6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi1EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi1EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEE = comdat any

$_ZNK6dealii14RefinementCaseILi2EEcvhEv = comdat any

$_ZN6dealii12GeometryInfoILi2EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE = comdat any

$_ZN6dealii12GeometryInfoILi2EE28standard_to_real_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE28real_to_standard_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE26standard_to_real_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE26real_to_standard_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE20project_to_unit_cellERKNS_5PointILi2EEE = comdat any

$_ZN6dealii5PointILi2EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi2EE21distance_to_unit_cellERKNS_5PointILi2EEE = comdat any

$_ZNK6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi2EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi2EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEE = comdat any

$_ZNK6dealii14RefinementCaseILi3EEcvhEv = comdat any

$_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE = comdat any

$_ZN6dealii12GeometryInfoILi3EE20project_to_unit_cellERKNS_5PointILi3EEE = comdat any

$_ZN6dealii5PointILi3EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi3EE21distance_to_unit_cellERKNS_5PointILi3EEE = comdat any

$_ZNK6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi3EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi3EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEE = comdat any

$_ZNK6dealii14RefinementCaseILi4EEcvhEv = comdat any

$_ZN6dealii12GeometryInfoILi4EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii14RefinementCaseILi4EEC2ENS_23RefinementPossibilitiesILi4EE13PossibilitiesE = comdat any

$_ZN6dealii12GeometryInfoILi4EE18face_to_cell_linesEjjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE28standard_to_real_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE28real_to_standard_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE26standard_to_real_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE26real_to_standard_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE16unit_cell_vertexEj = comdat any

$_ZN6dealii5PointILi4EEC2Ev = comdat any

$_ZN6dealii12GeometryInfoILi4EE21child_cell_from_pointERKNS_5PointILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE25cell_to_child_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE = comdat any

$_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_ = comdat any

$_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev = comdat any

$_ZN6dealii12GeometryInfoILi4EE25child_to_cell_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE20project_to_unit_cellERKNS_5PointILi4EEE = comdat any

$_ZN6dealii5PointILi4EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi4EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi4EE21distance_to_unit_cellERKNS_5PointILi4EEE = comdat any

$_ZNK6dealii6TensorILi1ELi4EEixEj = comdat any

$_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi4EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi4EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZNK6dealii8internal11SubfaceCaseILi2EEcvhEv = comdat any

$_ZNK6dealii8internal11SubfaceCaseILi3EEcvhEv = comdat any

$_ZNK6dealii14RefinementCaseILi3EEanERKS1_ = comdat any

$_ZNK6dealii14RefinementCaseILi2EEanERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev = comdat any

$_ZN6dealii6TensorILi1ELi4EEC2ERKS1_ = comdat any

$_ZN6dealii14RefinementCaseILi3EEC2Eh = comdat any

$_ZN6dealii14RefinementCaseILi2EEC2Eh = comdat any

$_ZN6dealii6TensorILi1ELi4EEC2Eb = comdat any

$_ZN6dealii18StandardExceptions17ExcNotImplementedC2EOS1_ = comdat any

$_ZN6dealii12GeometryInfoILi2EE17vertices_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi3EE17vertices_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi4EE17vertices_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi1EE21max_children_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi1EE14faces_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi1EE21max_children_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi1EE17vertices_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi1EE17vertices_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi1EE14lines_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi1EE14quads_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi1EE14lines_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi1EE14quads_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi1EE14hexes_per_cellE = comdat any

$_ZZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEEE10n_children = comdat any

$_ZTVN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE = comdat any

$_ZTVN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE = comdat any

$_ZN6dealii12GeometryInfoILi2EE21max_children_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi2EE14faces_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi2EE21max_children_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi2EE17vertices_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi2EE14lines_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi2EE14quads_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi2EE14lines_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi2EE14quads_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi2EE14hexes_per_cellE = comdat any

$_ZZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEEE10n_children = comdat any

$_ZTVN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE = comdat any

$_ZTVN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE = comdat any

$_ZN6dealii12GeometryInfoILi3EE21max_children_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi3EE14faces_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi3EE21max_children_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi3EE17vertices_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi3EE14lines_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi3EE14quads_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi3EE14lines_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi3EE14quads_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi3EE14hexes_per_cellE = comdat any

$_ZZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEEE10n_children = comdat any

$_ZTVN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE = comdat any

$_ZTVN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE = comdat any

$_ZN6dealii12GeometryInfoILi4EE21max_children_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi4EE14faces_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi4EE21max_children_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi4EE17vertices_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi4EE14lines_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi4EE14quads_per_faceE = comdat any

$_ZN6dealii12GeometryInfoILi4EE14lines_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi4EE14quads_per_cellE = comdat any

$_ZN6dealii12GeometryInfoILi4EE14hexes_per_cellE = comdat any

$_ZZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEEE10n_children = comdat any

$_ZTVN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE = comdat any

$_ZTVN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE = comdat any

$_ZTSN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE = comdat any

$_ZTIN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE = comdat any

$_ZTSN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE = comdat any

$_ZTIN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE = comdat any

$_ZTSN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE = comdat any

$_ZTIN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE = comdat any

$_ZTSN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE = comdat any

$_ZTIN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE = comdat any

$_ZTSN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE = comdat any

$_ZTIN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE = comdat any

$_ZTSN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE = comdat any

$_ZTIN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE = comdat any

$_ZTSN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE = comdat any

$_ZTIN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE = comdat any

$_ZTSN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE = comdat any

$_ZTIN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE = comdat any

$_ZTVN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZTSN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZTIN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

@_ZN6dealii12GeometryInfoILi2EE17vertices_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE17vertices_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 8, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE17vertices_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 16, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE21max_children_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 2, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE14faces_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 2, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE21max_children_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE17vertices_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 2, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE17vertices_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE14lines_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 0, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE14quads_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 0, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE14lines_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE14quads_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 0, comdat, align 4
@_ZN6dealii12GeometryInfoILi1EE14hexes_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 0, comdat, align 4
@_ZZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEEE10n_children = linkonce_odr dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 2, i32 2, i32 4, i32 2, i32 4, i32 4, i32 8], comdat, align 16
@_ZTVN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE, ptr @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD1Ev, ptr @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi1EE20ExcInvalidCoordinate10print_infoERSo] }, comdat, align 8
@.str = private unnamed_addr constant [45 x i8] c"The coordinates must satisfy 0 <= x_i <= 1, \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"but here we have x_i=\00", align 1
@_ZTVN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE, ptr @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD1Ev, ptr @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi1EE17ExcInvalidSubface10print_infoERSo] }, comdat, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"RefinementCase<dim> \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c": face \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" has no subface \00", align 1
@_ZN6dealii12GeometryInfoILi2EE21max_children_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE14faces_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE21max_children_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 2, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE17vertices_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 2, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE14lines_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE14quads_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 0, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE14lines_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE14quads_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZN6dealii12GeometryInfoILi2EE14hexes_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 0, comdat, align 4
@_ZZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEEE10n_children = linkonce_odr dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 2, i32 2, i32 4, i32 2, i32 4, i32 4, i32 8], comdat, align 16
@_ZTVN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE, ptr @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD1Ev, ptr @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi2EE20ExcInvalidCoordinate10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE, ptr @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD1Ev, ptr @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi2EE17ExcInvalidSubface10print_infoERSo] }, comdat, align 8
@_ZN6dealii12GeometryInfoILi3EE21max_children_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 8, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE14faces_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 6, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE21max_children_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE17vertices_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE14lines_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 4, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE14quads_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE14lines_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 12, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE14quads_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 6, comdat, align 4
@_ZN6dealii12GeometryInfoILi3EE14hexes_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEEE10n_children = linkonce_odr dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 2, i32 2, i32 4, i32 2, i32 4, i32 4, i32 8], comdat, align 16
@_ZTVN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE, ptr @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD1Ev, ptr @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi3EE20ExcInvalidCoordinate10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE, ptr @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD1Ev, ptr @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi3EE17ExcInvalidSubface10print_infoERSo] }, comdat, align 8
@_ZN6dealii12GeometryInfoILi4EE21max_children_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 16, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE14faces_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 8, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE21max_children_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 8, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE17vertices_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 8, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE14lines_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 12, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE14quads_per_faceE = weak_odr dso_local local_unnamed_addr constant i32 6, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE14lines_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 32, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE14quads_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 24, comdat, align 4
@_ZN6dealii12GeometryInfoILi4EE14hexes_per_cellE = weak_odr dso_local local_unnamed_addr constant i32 8, comdat, align 4
@_ZZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEEE10n_children = linkonce_odr dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 2, i32 2, i32 4, i32 2, i32 4, i32 4, i32 8], comdat, align 16
@.str.5 = private unnamed_addr constant [29 x i8] c"include/base/geometry_info.h\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ExcNotImplemented()\00", align 1
@_ZTVN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE, ptr @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD1Ev, ptr @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi4EE20ExcInvalidCoordinate10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE, ptr @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD1Ev, ptr @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii12GeometryInfoILi4EE17ExcInvalidSubface10print_infoERSo] }, comdat, align 8
@_ZN6dealii12GeometryInfoILi1EE21unit_normal_directionE = dso_local local_unnamed_addr constant [2 x i32] zeroinitializer, align 4
@_ZN6dealii12GeometryInfoILi2EE21unit_normal_directionE = dso_local local_unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1, i32 1], align 16
@_ZN6dealii12GeometryInfoILi3EE21unit_normal_directionE = dso_local local_unnamed_addr constant [6 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], align 16
@_ZN6dealii12GeometryInfoILi4EE21unit_normal_directionE = dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3], align 16
@_ZN6dealii12GeometryInfoILi1EE23unit_normal_orientationE = dso_local local_unnamed_addr constant [2 x i32] [i32 -1, i32 1], align 4
@_ZN6dealii12GeometryInfoILi2EE23unit_normal_orientationE = dso_local local_unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 -1, i32 1], align 16
@_ZN6dealii12GeometryInfoILi3EE23unit_normal_orientationE = dso_local local_unnamed_addr constant [6 x i32] [i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 1], align 16
@_ZN6dealii12GeometryInfoILi4EE23unit_normal_orientationE = dso_local local_unnamed_addr constant [8 x i32] [i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 1], align 16
@_ZN6dealii12GeometryInfoILi1EE13opposite_faceE = dso_local local_unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@_ZN6dealii12GeometryInfoILi2EE13opposite_faceE = dso_local local_unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 3, i32 2], align 16
@_ZN6dealii12GeometryInfoILi3EE13opposite_faceE = dso_local local_unnamed_addr constant [6 x i32] [i32 1, i32 0, i32 3, i32 2, i32 5, i32 4], align 16
@_ZN6dealii12GeometryInfoILi4EE13opposite_faceE = dso_local local_unnamed_addr constant [8 x i32] [i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6], align 16
@_ZN6dealii12GeometryInfoILi1EE11ucd_to_dealE = dso_local local_unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@_ZN6dealii12GeometryInfoILi2EE11ucd_to_dealE = dso_local local_unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 2], align 16
@_ZN6dealii12GeometryInfoILi3EE11ucd_to_dealE = dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 5, i32 4, i32 2, i32 3, i32 7, i32 6], align 16
@_ZN6dealii12GeometryInfoILi4EE11ucd_to_dealE = dso_local local_unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@_ZN6dealii12GeometryInfoILi1EE10dx_to_dealE = dso_local local_unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@_ZN6dealii12GeometryInfoILi2EE10dx_to_dealE = dso_local local_unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 1, i32 3], align 16
@_ZN6dealii12GeometryInfoILi3EE10dx_to_dealE = dso_local local_unnamed_addr constant [8 x i32] [i32 0, i32 4, i32 2, i32 6, i32 1, i32 5, i32 3, i32 7], align 16
@_ZN6dealii12GeometryInfoILi4EE10dx_to_dealE = dso_local local_unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@_ZN6dealii12GeometryInfoILi1EE14vertex_to_faceE = dso_local local_unnamed_addr constant [2 x [1 x i32]] [[1 x i32] zeroinitializer, [1 x i32] [i32 1]], align 4
@_ZN6dealii12GeometryInfoILi2EE14vertex_to_faceE = dso_local local_unnamed_addr constant [4 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 1, i32 3]], align 16
@_ZN6dealii12GeometryInfoILi3EE14vertex_to_faceE = dso_local local_unnamed_addr constant [8 x [3 x i32]] [[3 x i32] [i32 0, i32 2, i32 4], [3 x i32] [i32 1, i32 2, i32 4], [3 x i32] [i32 0, i32 3, i32 4], [3 x i32] [i32 1, i32 3, i32 4], [3 x i32] [i32 0, i32 2, i32 5], [3 x i32] [i32 1, i32 2, i32 5], [3 x i32] [i32 0, i32 3, i32 5], [3 x i32] [i32 1, i32 3, i32 5]], align 16
@_ZN6dealii12GeometryInfoILi4EE14vertex_to_faceE = dso_local local_unnamed_addr constant [16 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1]], align 16
@_ZZN6dealii12GeometryInfoILi3EE10n_subfacesERKNS_8internal11SubfaceCaseILi3EEEE5nsubs = internal unnamed_addr constant [10 x i32] [i32 0, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 4], align 16
@_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases = internal global [4 x [2 x %"class.dealii::RefinementCase"]] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases = internal global [8 x [3 x %"class.dealii::RefinementCase.2"]] zeroinitializer, align 16
@_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip = internal global [4 x %"class.dealii::RefinementCase.2"] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one = internal global [3 x %"class.dealii::RefinementCase.6"] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE9direction = internal unnamed_addr constant [12 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2], align 16
@_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip = internal global [4 x %"class.dealii::RefinementCase.2"] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell = internal global [3 x [4 x %"class.dealii::RefinementCase.6"]] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases = internal global [6 x %"class.dealii::RefinementCase.6"] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE28standard_to_real_face_vertexEjbbbE18vertex_translation = internal unnamed_addr constant [4 x [2 x [2 x [2 x i32]]]] [[2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 3, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 3, i32 1]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 3]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 3]], [2 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 0]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 3, i32 1], [2 x i32] [i32 0, i32 2]], [2 x [2 x i32]] [[2 x i32] [i32 3, i32 1], [2 x i32] [i32 0, i32 2]]]], align 16
@_ZZN6dealii12GeometryInfoILi3EE28real_to_standard_face_vertexEjbbbE18vertex_translation = internal unnamed_addr constant [4 x [2 x [2 x [2 x i32]]]] [[2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 3, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 3, i32 2]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 0]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 3]], [2 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 3]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 3, i32 1], [2 x i32] [i32 0, i32 2]], [2 x [2 x i32]] [[2 x i32] [i32 3, i32 2], [2 x i32] [i32 0, i32 1]]]], align 16
@_ZZN6dealii12GeometryInfoILi3EE26standard_to_real_face_lineEjbbbE16line_translation = internal unnamed_addr constant [4 x [2 x [2 x [2 x i32]]]] [[2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 3, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 3], [2 x i32] [i32 1, i32 2]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 3, i32 1], [2 x i32] [i32 2, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 3]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 0, i32 3], [2 x i32] [i32 1, i32 2]], [2 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 3, i32 1]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 3]], [2 x [2 x i32]] [[2 x i32] [i32 3, i32 1], [2 x i32] [i32 2, i32 0]]]], align 16
@_ZZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbbE16line_translation = internal unnamed_addr constant [4 x [2 x [2 x [2 x i32]]]] [[2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 2, i32 0], [2 x i32] [i32 3, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 1, i32 3]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 3, i32 1], [2 x i32] [i32 2, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 3], [2 x i32] [i32 0, i32 2]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 0, i32 3], [2 x i32] [i32 1, i32 2]], [2 x [2 x i32]] [[2 x i32] [i32 2, i32 1], [2 x i32] [i32 3, i32 0]]], [2 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 3]], [2 x [2 x i32]] [[2 x i32] [i32 3, i32 0], [2 x i32] [i32 2, i32 1]]]], align 16
@_ZZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEEE8subcells = internal unnamed_addr constant [3 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 1]], [4 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 3]]], align 16
@_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip = internal global [4 x %"class.dealii::RefinementCase.2"] zeroinitializer, align 1
@_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip = internal global i64 0, align 8
@_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE16subface_exchange = internal unnamed_addr constant [4 x [2 x [2 x [2 x [4 x i32]]]]] [[2 x [2 x [2 x [4 x i32]]]] [[2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1]], [2 x [4 x i32]] [[4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1]]], [2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1]], [2 x [4 x i32]] [[4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1]]]], [2 x [2 x [2 x [4 x i32]]]] [[2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 -1, i32 -1]], [2 x [4 x i32]] [[4 x i32] [i32 1, i32 0, i32 -1, i32 -1], [4 x i32] [i32 1, i32 0, i32 -1, i32 -1]]], [2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 -1, i32 -1]], [2 x [4 x i32]] [[4 x i32] [i32 1, i32 0, i32 -1, i32 -1], [4 x i32] [i32 1, i32 0, i32 -1, i32 -1]]]], [2 x [2 x [2 x [4 x i32]]]] [[2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 -1, i32 -1], [4 x i32] [i32 1, i32 0, i32 -1, i32 -1]], [2 x [4 x i32]] [[4 x i32] [i32 1, i32 0, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 -1, i32 -1]]], [2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 -1, i32 -1], [4 x i32] [i32 1, i32 0, i32 -1, i32 -1]], [2 x [4 x i32]] [[4 x i32] [i32 1, i32 0, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 -1, i32 -1]]]], [2 x [2 x [2 x [4 x i32]]]] [[2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 1, i32 3], [4 x i32] [i32 2, i32 3, i32 0, i32 1]], [2 x [4 x i32]] [[4 x i32] [i32 3, i32 1, i32 2, i32 0], [4 x i32] [i32 1, i32 0, i32 3, i32 2]]], [2 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 3, i32 0, i32 2]], [2 x [4 x i32]] [[4 x i32] [i32 3, i32 2, i32 1, i32 0], [4 x i32] [i32 2, i32 0, i32 3, i32 1]]]]], align 16
@_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE12iso_children = internal unnamed_addr constant [7 x [6 x [4 x i32]]] [[6 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 1, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 1]], [6 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 1, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1]], [6 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 0, i32 2], [4 x i32] [i32 1, i32 3, i32 1, i32 3], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 2, i32 2, i32 3, i32 3], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 1, i32 2, i32 3]], [6 x [4 x i32]] [[4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 1, i32 1, i32 1]], [6 x [4 x i32]] [[4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 2, i32 2, i32 3, i32 3], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 2, i32 0, i32 2], [4 x i32] [i32 1, i32 3, i32 1, i32 3]], [6 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 2, i32 0, i32 2], [4 x i32] [i32 1, i32 3, i32 1, i32 3], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 2, i32 2, i32 3, i32 3]], [6 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 4, i32 6], [4 x i32] [i32 1, i32 3, i32 5, i32 7], [4 x i32] [i32 0, i32 4, i32 1, i32 5], [4 x i32] [i32 2, i32 6, i32 3, i32 7], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 4, i32 5, i32 6, i32 7]]], align 16
@_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE22equivalent_iso_subface = internal unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 3, i32 -1, i32 -1], [4 x i32] [i32 0, i32 3, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 2, i32 3]], align 16
@_ZZN6dealii12GeometryInfoILi3EE21line_to_cell_verticesEjjE8vertices = internal unnamed_addr constant [12 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 4, i32 6], [2 x i32] [i32 5, i32 7], [2 x i32] [i32 4, i32 5], [2 x i32] [i32 6, i32 7], [2 x i32] [i32 0, i32 4], [2 x i32] [i32 1, i32 5], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 3, i32 7]], align 16
@_ZZN6dealii12GeometryInfoILi3EE18face_to_cell_linesEjjbbbE5lines = internal unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 8, i32 10, i32 0, i32 4], [4 x i32] [i32 9, i32 11, i32 1, i32 5], [4 x i32] [i32 2, i32 6, i32 8, i32 9], [4 x i32] [i32 3, i32 7, i32 10, i32 11], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 4, i32 5, i32 6, i32 7]], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE = weak_odr dso_local constant [52 x i8] c"N6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE = weak_odr dso_local constant [49 x i8] c"N6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE = weak_odr dso_local constant [52 x i8] c"N6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE = weak_odr dso_local constant [49 x i8] c"N6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE = weak_odr dso_local constant [52 x i8] c"N6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE = weak_odr dso_local constant [49 x i8] c"N6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE = weak_odr dso_local constant [52 x i8] c"N6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE = weak_odr dso_local constant [49 x i8] c"N6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE\00", comdat, align 1
@_ZTIN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTVN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18StandardExceptions17ExcNotImplementedE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local constant [49 x i8] c"N6dealii18StandardExceptions17ExcNotImplementedE\00", comdat, align 1
@_ZTIN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18StandardExceptions17ExcNotImplementedE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8

@_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC2Ed
@_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD2Ev
@_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC1Eiii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC2Eiii
@_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD2Ev
@_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC2Ed
@_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD2Ev
@_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC1Eiii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC2Eiii
@_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD2Ev
@_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC2Ed
@_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD2Ev
@_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC1Eiii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC2Eiii
@_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD2Ev
@_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC2Ed
@_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD2Ev
@_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC1Eiii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC2Eiii
@_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8internal16define_variablesILi2EEEvv() local_unnamed_addr #0 comdat !prof !57 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN6dealii8internal3fooEPKj(ptr nocapture noundef readnone %0) local_unnamed_addr #1 !prof !57 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8internal16define_variablesILi3EEEvv() local_unnamed_addr #0 comdat !prof !57 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8internal16define_variablesILi4EEEvv() local_unnamed_addr #0 comdat !prof !57 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %2 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi1EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEEE10n_children, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi1EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %6 = alloca %"class.dealii::RefinementCase", align 1
  %7 = alloca %"class.dealii::RefinementCase.0", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  call void @_ZN6dealii14RefinementCaseILi0EEC2ENS_23RefinementPossibilitiesILi0EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE18child_cell_on_faceERKNS_14RefinementCaseILi1EEEjjbbbRKNS2_ILi0EEE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef returned %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %6) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = trunc i32 %1 to i8
  %4 = load i8, ptr %0, align 1
  %5 = and i8 %3, 1
  %6 = and i8 %4, -2
  %7 = or disjoint i8 %6, %5
  store i8 %7, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi0EEC2ENS_23RefinementPossibilitiesILi0EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = trunc i32 %1 to i8
  %4 = load i8, ptr %0, align 1
  %5 = and i8 %3, 1
  %6 = and i8 %4, -2
  %7 = or disjoint i8 %6, %5
  store i8 %7, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20project_to_unit_cellERKNS_5PointILi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !57 {
  tail call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  %4 = load double, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt double %4, 0.000000e+00
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  br i1 %5, label %7, label %8

7:                                                ; preds = %2
  store double 0.000000e+00, ptr %6, align 8, !tbaa !63
  br label %13

8:                                                ; preds = %2
  %9 = load double, ptr %6, align 8, !tbaa !63
  %10 = fcmp ogt double %9, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  store double 1.000000e+00, ptr %12, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %7, %11, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi1EE21distance_to_unit_cellERKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %2 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  %3 = fcmp olt double %2, 0.000000e+00
  %4 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = fneg double %4
  br label %13

7:                                                ; preds = %1
  %8 = fadd double %4, -1.000000e+00
  %9 = fcmp ogt double %8, 0.000000e+00
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #10
  %12 = fadd double %11, -1.000000e+00
  br label %13

13:                                               ; preds = %5, %10, %7
  %14 = phi double [ %6, %5 ], [ %12, %10 ], [ 0.000000e+00, %7 ]
  ret double %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !63
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC5Ed) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi1EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #10
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !67
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %6) #10
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #0

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !72
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi1EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #10
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #10
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3) #10
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4) #10
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !75
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %13) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !76 {
  %2 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEEE10n_children, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !77 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 3
  ret i8 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %6 = alloca %"class.dealii::RefinementCase.2", align 1
  %7 = alloca %"class.dealii::RefinementCase", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 3) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 1) #10
  %8 = call noundef i32 @_ZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %0, i32 noundef %1, i1 zeroext poison, i1 zeroext poison, i1 zeroext poison, ptr nonnull align 1 poison) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i1 zeroext %3, i1 zeroext %4, i1 zeroext %5, ptr nocapture nonnull readnone align 1 %6) local_unnamed_addr #2 align 2 !prof !57 {
  %8 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %9 = zext i8 %8 to i64
  %10 = add nsw i64 %9, -1
  %11 = zext i32 %1 to i64
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds [3 x [4 x [2 x i32]]], ptr @_ZZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEEE8subcells, i64 0, i64 %10, i64 %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !58
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !78 {
  %3 = trunc i32 %1 to i8
  %4 = load i8, ptr %0, align 1
  %5 = and i8 %3, 3
  %6 = and i8 %4, -4
  %7 = or disjoint i8 %6, %5
  store i8 %7, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20project_to_unit_cellERKNS_5PointILi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !57 {
  tail call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  br label %4

3:                                                ; preds = %17
  ret void

4:                                                ; preds = %2, %17
  %5 = phi i1 [ true, %2 ], [ false, %17 ]
  %6 = phi i32 [ 0, %2 ], [ 1, %17 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %6) #10
  %8 = load double, ptr %7, align 8, !tbaa !63
  %9 = fcmp olt double %8, 0.000000e+00
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %6) #10
  br i1 %9, label %11, label %12

11:                                               ; preds = %4
  store double 0.000000e+00, ptr %10, align 8, !tbaa !63
  br label %17

12:                                               ; preds = %4
  %13 = load double, ptr %10, align 8, !tbaa !63
  %14 = fcmp ogt double %13, 1.000000e+00
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %6) #10
  store double 1.000000e+00, ptr %16, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %11, %15, %12
  br i1 %5, label %4, label %3, !llvm.loop !79
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !81 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi2EE21distance_to_unit_cellERKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  br label %3

2:                                                ; preds = %19
  ret double %20

3:                                                ; preds = %1, %19
  %4 = phi i1 [ true, %1 ], [ false, %19 ]
  %5 = phi i32 [ 0, %1 ], [ 1, %19 ]
  %6 = phi double [ 0.000000e+00, %1 ], [ %20, %19 ]
  %7 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %5) #10
  %8 = fneg double %7
  %9 = fcmp olt double %6, %8
  %10 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %5) #10
  br i1 %9, label %11, label %13

11:                                               ; preds = %3
  %12 = fneg double %10
  br label %19

13:                                               ; preds = %3
  %14 = fadd double %10, -1.000000e+00
  %15 = fcmp ogt double %14, %6
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %5) #10
  %18 = fadd double %17, -1.000000e+00
  br label %19

19:                                               ; preds = %11, %16, %13
  %20 = phi double [ %12, %11 ], [ %18, %16 ], [ %6, %13 ]
  br i1 %4, label %3, label %2, !llvm.loop !82
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !81 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !63
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC5Ed) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi2EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #10
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %6) #10
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !85
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi2EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #10
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #10
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3) #10
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !87
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4) #10
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !88
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %13) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %2 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEEE10n_children, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !90 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 7
  ret i8 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %6 = alloca %"class.dealii::RefinementCase.6", align 1
  %7 = alloca %"class.dealii::RefinementCase.2", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 3) #10
  %8 = call noundef i32 @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %8 = alloca %"class.dealii::RefinementCase.2", align 1
  %9 = alloca %"class.dealii::RefinementCase.2", align 1
  %10 = alloca %"class.dealii::RefinementCase.2", align 1
  %11 = alloca %"class.dealii::RefinementCase.2", align 1
  %12 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip acquire, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19, !prof !93

14:                                               ; preds = %7
  %15 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 3), i32 noundef 3) #10
  %18 = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip) #11
  br label %19

19:                                               ; preds = %17, %14, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  %20 = xor i1 %3, %5
  br i1 %20, label %25, label %21, !prof !94

21:                                               ; preds = %19
  %22 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 %23
  br label %25

25:                                               ; preds = %19, %21
  %26 = phi ptr [ %24, %21 ], [ %6, %19 ]
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %8, align 1
  %28 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %29 = zext i8 %28 to i64
  %30 = zext i1 %3 to i64
  %31 = zext i1 %4 to i64
  %32 = zext i1 %5 to i64
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds [4 x [2 x [2 x [2 x [4 x i32]]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE16subface_exchange, i64 0, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  %36 = tail call i8 @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext true, i1 zeroext poison, i1 noundef zeroext false) #10
  store i8 %36, ptr %10, align 1
  %37 = call i8 @_ZNK6dealii14RefinementCaseILi2EEanERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %10) #10
  store i8 %37, ptr %9, align 1
  %38 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  %39 = call i8 @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext true, i1 zeroext poison, i1 noundef zeroext false) #10
  store i8 %39, ptr %11, align 1
  %40 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %11) #10
  %41 = icmp eq i8 %38, %40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  br i1 %41, label %42, label %55, !prof !94

42:                                               ; preds = %25
  %43 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %8) #10
  %44 = zext i8 %43 to i64
  %45 = zext i32 %35 to i64
  %46 = getelementptr inbounds [4 x [4 x i32]], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE22equivalent_iso_subface, i64 0, i64 %44, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %49 = zext i8 %48 to i64
  %50 = add nsw i64 %49, -1
  %51 = zext i32 %1 to i64
  %52 = zext i32 %47 to i64
  %53 = getelementptr inbounds [7 x [6 x [4 x i32]]], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE12iso_children, i64 0, i64 %50, i64 %51, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !58
  br label %55

55:                                               ; preds = %25, %42
  %56 = phi i32 [ %54, %42 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  ret i32 %56
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !95 {
  %3 = trunc i32 %1 to i8
  %4 = load i8, ptr %0, align 1
  %5 = and i8 %3, 7
  %6 = and i8 %4, -8
  %7 = or disjoint i8 %6, %5
  store i8 %7, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20project_to_unit_cellERKNS_5PointILi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !57 {
  tail call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  br label %4

3:                                                ; preds = %16
  ret void

4:                                                ; preds = %2, %16
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %5) #10
  %7 = load double, ptr %6, align 8, !tbaa !63
  %8 = fcmp olt double %7, 0.000000e+00
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %5) #10
  br i1 %8, label %10, label %11

10:                                               ; preds = %4
  store double 0.000000e+00, ptr %9, align 8, !tbaa !63
  br label %16

11:                                               ; preds = %4
  %12 = load double, ptr %9, align 8, !tbaa !63
  %13 = fcmp ogt double %12, 1.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %5) #10
  store double 1.000000e+00, ptr %15, align 8, !tbaa !63
  br label %16

16:                                               ; preds = %10, %14, %11
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %3, label %4, !llvm.loop !96
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !97 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi3EE21distance_to_unit_cellERKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  br label %3

2:                                                ; preds = %18
  ret double %19

3:                                                ; preds = %1, %18
  %4 = phi i32 [ 0, %1 ], [ %20, %18 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %19, %18 ]
  %6 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %4) #10
  %7 = fneg double %6
  %8 = fcmp olt double %5, %7
  %9 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %4) #10
  br i1 %8, label %10, label %12

10:                                               ; preds = %3
  %11 = fneg double %9
  br label %18

12:                                               ; preds = %3
  %13 = fadd double %9, -1.000000e+00
  %14 = fcmp ogt double %13, %5
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %4) #10
  %17 = fadd double %16, -1.000000e+00
  br label %18

18:                                               ; preds = %10, %15, %12
  %19 = phi double [ %11, %10 ], [ %17, %15 ], [ %5, %12 ]
  %20 = add nuw nsw i32 %4, 1
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %2, label %3, !llvm.loop !98
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !99 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !63
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC5Ed) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi3EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #10
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !100
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %6) #10
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !102
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !104
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi3EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #10
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !102
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #10
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3) #10
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !104
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4) #10
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !105
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %13) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %2 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi4EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEEE10n_children, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi4EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 15
  ret i8 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %6 = alloca %"class.dealii::RefinementCase.10", align 1
  %7 = alloca %"class.dealii::RefinementCase.6", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @_ZN6dealii14RefinementCaseILi4EEC2ENS_23RefinementPossibilitiesILi4EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 255) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE18child_cell_on_faceERKNS_14RefinementCaseILi4EEEjjbbbRKNS2_ILi3EEE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %6) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi4EEC2ENS_23RefinementPossibilitiesILi4EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = trunc i32 %1 to i8
  %4 = load i8, ptr %0, align 1
  %5 = and i8 %3, 15
  %6 = and i8 %4, -16
  %7 = or disjoint i8 %6, %5
  store i8 %7, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE18face_to_cell_linesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE16unit_cell_vertexEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !57 {
  tail call void @_ZN6dealii5PointILi4EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi4EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !57 {
  tail call void @_ZN6dealii6TensorILi1ELi4EEC2Eb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE21child_cell_from_pointERKNS_5PointILi4EEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !57 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE25cell_to_child_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i8 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = alloca %"class.dealii::StandardExceptions::ExcNotImplemented", align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #10
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.5, i32 noundef 2499, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #10
          to label %6 unwind label %7

6:                                                ; preds = %4
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #12
  call void @_ZN6dealii5PointILi4EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %7 = tail call ptr @__cxa_allocate_exception(i64 64) #11
  invoke void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2EOS1_(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull align 8 dereferenceable(60) %5) #10
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN6dealii18StandardExceptions17ExcNotImplementedE, ptr nonnull @_ZN6dealii13ExceptionBaseD2Ev) #14
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE25child_to_cell_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i8 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = alloca %"class.dealii::StandardExceptions::ExcNotImplemented", align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #10
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.5, i32 noundef 2639, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #10
          to label %6 unwind label %7

6:                                                ; preds = %4
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #12
  call void @_ZN6dealii5PointILi4EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20project_to_unit_cellERKNS_5PointILi4EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !57 {
  tail call void @_ZN6dealii5PointILi4EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  br label %4

3:                                                ; preds = %16
  ret void

4:                                                ; preds = %2, %16
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %5) #10
  %7 = load double, ptr %6, align 8, !tbaa !63
  %8 = fcmp olt double %7, 0.000000e+00
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %5) #10
  br i1 %8, label %10, label %11

10:                                               ; preds = %4
  store double 0.000000e+00, ptr %9, align 8, !tbaa !63
  br label %16

11:                                               ; preds = %4
  %12 = load double, ptr %9, align 8, !tbaa !63
  %13 = fcmp ogt double %12, 1.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %5) #10
  store double 1.000000e+00, ptr %15, align 8, !tbaa !63
  br label %16

16:                                               ; preds = %10, %14, %11
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %3, label %4, !llvm.loop !106
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi4EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi4EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi4EE21distance_to_unit_cellERKNS_5PointILi4EEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  br label %3

2:                                                ; preds = %18
  ret double %19

3:                                                ; preds = %1, %18
  %4 = phi i32 [ 0, %1 ], [ %20, %18 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %19, %18 ]
  %6 = tail call noundef double @_ZNK6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %4) #10
  %7 = fneg double %6
  %8 = fcmp olt double %5, %7
  %9 = tail call noundef double @_ZNK6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %4) #10
  br i1 %8, label %10, label %12

10:                                               ; preds = %3
  %11 = fneg double %9
  br label %18

12:                                               ; preds = %3
  %13 = fadd double %9, -1.000000e+00
  %14 = fcmp ogt double %13, %5
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call noundef double @_ZNK6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %4) #10
  %17 = fadd double %16, -1.000000e+00
  br label %18

18:                                               ; preds = %10, %15, %12
  %19 = phi double [ %11, %10 ], [ %17, %15 ], [ %5, %12 ]
  %20 = add nuw nsw i32 %4, 1
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %2, label %3, !llvm.loop !107
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi4EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !63
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC5Ed) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi4EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #10
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !108
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %6) #10
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !110
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !112
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD5Ev) align 2 !prof !57 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat($_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD5Ev) align 2 {
  tail call void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi4EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #10
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #10
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3) #10
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !112
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4) #10
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !113
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %13) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi0EE10n_childrenERKNS_14RefinementCaseILi0EEE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE10n_subfacesERKNS_8internal11SubfaceCaseILi1EEE(ptr nocapture noundef nonnull readnone align 1 %0) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE10n_subfacesERKNS_8internal11SubfaceCaseILi2EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 align 2 !prof !57 {
  %2 = tail call noundef zeroext i8 @_ZNK6dealii8internal11SubfaceCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %3 = icmp eq i8 %2, 1
  %4 = select i1 %3, i32 2, i32 0
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK6dealii8internal11SubfaceCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !57 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE10n_subfacesERKNS_8internal11SubfaceCaseILi3EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 align 2 !prof !57 {
  %2 = tail call noundef zeroext i8 @_ZNK6dealii8internal11SubfaceCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [10 x i32], ptr @_ZZN6dealii12GeometryInfoILi3EE10n_subfacesERKNS_8internal11SubfaceCaseILi3EEEE5nsubs, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK6dealii8internal11SubfaceCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !114 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 15
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @_ZN6dealii12GeometryInfoILi1EE13subface_ratioERKNS_8internal11SubfaceCaseILi1EEEj(ptr nocapture noundef nonnull readnone align 1 %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !57 {
  ret double 1.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN6dealii12GeometryInfoILi2EE13subface_ratioERKNS_8internal11SubfaceCaseILi2EEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !57 {
  %3 = tail call noundef zeroext i8 @_ZNK6dealii8internal11SubfaceCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %4 = icmp ult i8 %3, 2
  %5 = select i1 %4, double 5.000000e-01, double 1.000000e+00
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN6dealii12GeometryInfoILi3EE13subface_ratioERKNS_8internal11SubfaceCaseILi3EEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !57 {
  %3 = tail call noundef zeroext i8 @_ZNK6dealii8internal11SubfaceCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  switch i8 %3, label %13 [
    i8 0, label %4
    i8 1, label %5
    i8 5, label %5
    i8 9, label %6
    i8 4, label %6
    i8 8, label %6
    i8 2, label %7
    i8 6, label %7
    i8 3, label %10
    i8 7, label %10
  ]

4:                                                ; preds = %2
  br label %13

5:                                                ; preds = %2, %2
  br label %13

6:                                                ; preds = %2, %2, %2
  br label %13

7:                                                ; preds = %2, %2
  %8 = icmp ult i32 %1, 2
  %9 = select i1 %8, double 2.500000e-01, double 5.000000e-01
  br label %13

10:                                               ; preds = %2, %2
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, double 5.000000e-01, double 2.500000e-01
  br label %13

13:                                               ; preds = %10, %7, %2, %6, %5, %4
  %14 = phi double [ 1.000000e+00, %2 ], [ 2.500000e-01, %6 ], [ 5.000000e-01, %5 ], [ 2.500000e-01, %4 ], [ %9, %7 ], [ %12, %10 ]
  ret double %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi1EE20face_refinement_caseERKNS_14RefinementCaseILi1EEEjbbb(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 !prof !57 {
  %6 = alloca %"class.dealii::RefinementCase.0", align 1
  call void @_ZN6dealii14RefinementCaseILi0EEC2ENS_23RefinementPossibilitiesILi0EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 0) #10
  %7 = load i8, ptr %6, align 1
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 zeroext %2, i1 zeroext %3, i1 zeroext %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %6 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases acquire, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13, !prof !93

8:                                                ; preds = %5
  %9 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 0, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 1, i64 1), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 2, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 3), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 3, i64 1), i32 noundef 1) #10
  %12 = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases) #11
  br label %13

13:                                               ; preds = %11, %8, %5
  %14 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %15 = zext i8 %14 to i64
  %16 = lshr i32 %1, 1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 %15, i64 %17
  %19 = load i8, ptr %18, align 1
  ret i8 %19
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %6 = alloca %"class.dealii::RefinementCase.2", align 1
  %7 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases acquire, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !93

9:                                                ; preds = %5
  %10 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 0, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 0, i64 2), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2, i64 2), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3, i64 2), i32 noundef 3) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4, i64 1), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4, i64 2), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5, i64 1), i32 noundef 3) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6), i32 noundef 3) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6, i64 1), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6, i64 2), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7), i32 noundef 3) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7, i64 1), i32 noundef 3) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7, i64 2), i32 noundef 3) #10
  %13 = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases) #11
  br label %14

14:                                               ; preds = %12, %9, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  %15 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %16 = zext i8 %15 to i64
  %17 = lshr i32 %1, 1
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 %16, i64 %18
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %6, align 1
  %21 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip acquire, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28, !prof !93

23:                                               ; preds = %14
  %24 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 3), i32 noundef 3) #10
  %27 = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip) #11
  br label %28

28:                                               ; preds = %26, %23, %14
  %29 = xor i1 %2, %4
  br i1 %29, label %34, label %30, !prof !116

30:                                               ; preds = %28
  %31 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 %32
  br label %34

34:                                               ; preds = %28, %30
  %35 = phi ptr [ %33, %30 ], [ %6, %28 ]
  %36 = load i8, ptr %35, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i8 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi1EE20line_refinement_caseERKNS_14RefinementCaseILi1EEEj(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !57 {
  %3 = load i8, ptr %0, align 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE20line_refinement_caseERKNS_14RefinementCaseILi2EEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !57 {
  %3 = tail call i8 @_ZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 zeroext poison, i1 zeroext poison, i1 zeroext poison) #10
  ret i8 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = alloca %"class.dealii::RefinementCase", align 1
  %4 = alloca %"class.dealii::RefinementCase.6", align 1
  %5 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one acquire, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12, !prof !93

7:                                                ; preds = %2
  %8 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 2), i32 noundef 4) #10
  %11 = tail call ptr @llvm.invariant.start.p0(i64 3, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one) #11
  br label %12

12:                                               ; preds = %10, %7, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds [12 x i32], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE9direction, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !58
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 %16
  %18 = tail call i8 @_ZNK6dealii14RefinementCaseILi3EEanERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %17) #10
  store i8 %18, ptr %4, align 1
  %19 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi3EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %4) #10
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i32
  call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %21) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  %22 = load i8, ptr %3, align 1
  ret i8 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i8 @_ZNK6dealii14RefinementCaseILi3EEanERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %3 = alloca %"class.dealii::RefinementCase.6", align 1
  %4 = load i8, ptr %0, align 1
  %5 = load i8, ptr %1, align 1
  %6 = and i8 %4, 7
  %7 = and i8 %6, %5
  call void @_ZN6dealii14RefinementCaseILi3EEC2Eh(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 noundef zeroext %7) #10
  %8 = load i8, ptr %3, align 1
  ret i8 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi1EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi0EEEjbbb(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 !prof !57 {
  %6 = alloca %"class.dealii::RefinementCase", align 1
  call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 0) #10
  %7 = load i8, ptr %6, align 1
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi1EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 !prof !57 {
  %6 = alloca %"class.dealii::RefinementCase.2", align 1
  %7 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi1EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %8 = icmp eq i8 %7, 1
  %9 = icmp ult i32 %1, 2
  %10 = select i1 %9, i32 2, i32 1
  %11 = select i1 %8, i32 %10, i32 0
  call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %11) #10
  %12 = load i8, ptr %6, align 1
  ret i8 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %6 = alloca %"class.dealii::RefinementCase.2", align 1
  %7 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip acquire, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !93

9:                                                ; preds = %5
  %10 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 3), i32 noundef 3) #10
  %13 = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip) #11
  br label %14

14:                                               ; preds = %12, %9, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  %15 = xor i1 %2, %4
  br i1 %15, label %20, label %16, !prof !118

16:                                               ; preds = %14
  %17 = tail call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 %18
  br label %20

20:                                               ; preds = %14, %16
  %21 = phi ptr [ %19, %16 ], [ %0, %14 ]
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr %6, align 1
  %23 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell acquire, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30, !prof !93

25:                                               ; preds = %20
  %26 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 1), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 2), i32 noundef 4) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 3), i32 noundef 6) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 1), i32 noundef 4) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 2), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 3), i32 noundef 5) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2), i32 noundef 0) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 1), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 2), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 3), i32 noundef 3) #10
  %29 = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell) #11
  br label %30

30:                                               ; preds = %28, %25, %20
  %31 = lshr i32 %1, 1
  %32 = zext nneg i32 %31 to i64
  %33 = call noundef zeroext i8 @_ZNK6dealii14RefinementCaseILi2EEcvhEv(ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 %32, i64 %34
  %36 = load i8, ptr %35, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret i8 %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi1EE44min_cell_refinement_case_for_line_refinementEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !57 {
  %2 = alloca %"class.dealii::RefinementCase", align 1
  call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 1) #10
  %3 = load i8, ptr %2, align 1
  ret i8 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE44min_cell_refinement_case_for_line_refinementEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !57 {
  %2 = alloca %"class.dealii::RefinementCase.2", align 1
  %3 = icmp ult i32 %0, 2
  %4 = select i1 %3, i32 2, i32 1
  call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %4) #10
  %5 = load i8, ptr %2, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEj(i32 noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases acquire, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9, !prof !93

4:                                                ; preds = %1
  %5 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 1), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 2), i32 noundef 2) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 3), i32 noundef 1) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 4), i32 noundef 4) #10
  tail call void @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 5), i32 noundef 4) #10
  %8 = tail call ptr @llvm.invariant.start.p0(i64 6, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases) #11
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = lshr i32 %0, 1
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !119 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE28standard_to_real_face_vertexEjbbbE18vertex_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !57 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE28real_to_standard_face_vertexEjbbbE18vertex_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !120 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE26standard_to_real_face_lineEjbbbE16line_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !121 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbbE16line_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i8 @_ZNK6dealii14RefinementCaseILi2EEanERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !92 {
  %3 = alloca %"class.dealii::RefinementCase.2", align 1
  %4 = load i8, ptr %0, align 1
  %5 = load i8, ptr %1, align 1
  %6 = and i8 %4, 3
  %7 = and i8 %6, %5
  call void @_ZN6dealii14RefinementCaseILi2EEC2Eh(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 noundef zeroext %7) #10
  %8 = load i8, ptr %3, align 1
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef returned %1) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !57 {
  %3 = alloca %"class.dealii::RefinementCase.2", align 1
  %4 = alloca %"class.dealii::RefinementCase", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef 3) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  call void @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE(ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef 1) #10
  %5 = call noundef i32 @_ZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEE(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %0, i32 noundef %1, i1 zeroext poison, i1 zeroext poison, i1 zeroext poison, ptr nonnull align 1 poison) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !122 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [12 x [2 x i32]], ptr @_ZZN6dealii12GeometryInfoILi3EE21line_to_cell_verticesEjjE8vertices, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !58
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE18face_to_cell_linesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE18face_to_cell_linesEjjbbb(i32 noundef returned %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !57 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE18face_to_cell_linesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !121 {
  %6 = zext i32 %0 to i64
  %7 = tail call noundef i32 @_ZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbb(i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #10
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [6 x [4 x i32]], ptr @_ZZN6dealii12GeometryInfoILi3EE18face_to_cell_linesEjjbbbE5lines, i64 0, i64 %6, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  ret i32 %10
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !123 {
  %3 = load double, ptr %1, align 8, !tbaa !63
  store double %3, ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 !prof !124 {
  %3 = load double, ptr %1, align 8, !tbaa !63
  store double %3, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !125 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !63
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !126, !llvm.loop !127
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi4EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 !prof !57 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !63
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %3, label %4, !llvm.loop !128
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi3EEC2Eh(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !129 {
  %3 = load i8, ptr %0, align 1
  %4 = and i8 %1, 7
  %5 = and i8 %3, -8
  %6 = or disjoint i8 %5, %4
  store i8 %6, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii14RefinementCaseILi2EEC2Eh(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !130 {
  %3 = load i8, ptr %0, align 1
  %4 = and i8 %1, 3
  %5 = and i8 %3, -4
  %6 = or disjoint i8 %5, %4
  store i8 %6, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi4EEC2Eb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !57 {
  br i1 %1, label %3, label %4

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !63
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2EOS1_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!56}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 952893667334}
!4 = !{!"MaxCount", i64 138244457713}
!5 = !{!"MaxInternalCount", i64 61570300772}
!6 = !{!"MaxFunctionCount", i64 138244457713}
!7 = !{!"NumCounts", i64 74881}
!8 = !{!"NumFunctions", i64 41355}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 138244457713, i32 1}
!14 = !{i32 100000, i64 138244457713, i32 1}
!15 = !{i32 200000, i64 135283113845, i32 2}
!16 = !{i32 300000, i64 61570300772, i32 3}
!17 = !{i32 400000, i64 59335447748, i32 5}
!18 = !{i32 500000, i64 54202702756, i32 7}
!19 = !{i32 600000, i64 27583525196, i32 8}
!20 = !{i32 700000, i64 9717284942, i32 14}
!21 = !{i32 800000, i64 4099381952, i32 32}
!22 = !{i32 900000, i64 1194611288, i32 75}
!23 = !{i32 950000, i64 329112231, i32 158}
!24 = !{i32 990000, i64 26264717, i32 515}
!25 = !{i32 999000, i64 1278962, i32 1689}
!26 = !{i32 999900, i64 136932, i32 3466}
!27 = !{i32 999990, i64 17760, i32 4671}
!28 = !{i32 999999, i64 520, i32 6951}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_ZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEE, ptr @_ZNK6dealii14RefinementCaseILi2EEcvhEv, i64 730302}
!36 = !{ptr @_ZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEE, ptr @_ZNK6dealii14RefinementCaseILi3EEcvhEv, i64 1524061783}
!37 = !{ptr @_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb, ptr @_ZN6dealii14RefinementCaseILi3EEC2ENS_23RefinementPossibilitiesILi3EE13PossibilitiesE, i64 28160}
!38 = !{ptr @_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb, ptr @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE, i64 28160}
!39 = !{ptr @_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb, ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, i64 28160}
!40 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @_ZNK6dealii14RefinementCaseILi2EEcvhEv, i64 1460768}
!41 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, i64 730384}
!42 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @_ZNK6dealii14RefinementCaseILi2EEanERKS1_, i64 365192}
!43 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @_ZNK6dealii14RefinementCaseILi3EEcvhEv, i64 365191}
!44 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @__cxa_guard_acquire, i64 2}
!45 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @_ZN6dealii14RefinementCaseILi2EEC2ENS_23RefinementPossibilitiesILi2EE13PossibilitiesE, i64 28}
!46 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @__cxa_guard_release, i64 2}
!47 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @_ZNK6dealii14RefinementCaseILi3EEcvhEv, i64 1068138}
!48 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @_ZNK6dealii14RefinementCaseILi2EEcvhEv, i64 1}
!49 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj, ptr @_ZNK6dealii14RefinementCaseILi3EEanERKS1_, i64 188478}
!50 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj, ptr @_ZNK6dealii14RefinementCaseILi3EEcvhEv, i64 188478}
!51 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj, ptr @_ZN6dealii14RefinementCaseILi1EEC2ENS_23RefinementPossibilitiesILi1EE13PossibilitiesE, i64 188478}
!52 = !{ptr @_ZNK6dealii14RefinementCaseILi3EEanERKS1_, ptr @_ZN6dealii14RefinementCaseILi3EEC2Eh, i64 188478}
!53 = !{ptr @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbb, ptr @_ZNK6dealii14RefinementCaseILi2EEcvhEv, i64 1453}
!54 = !{ptr @_ZNK6dealii14RefinementCaseILi2EEanERKS1_, ptr @_ZN6dealii14RefinementCaseILi2EEC2Eh, i64 365192}
!55 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18face_to_cell_linesEjjbbb, ptr @_ZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbb, i64 3072}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!"function_entry_count", i64 188478}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !60, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !61, i64 0}
!67 = !{!68, !64, i64 64}
!68 = !{!"_ZTSN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE", !69, i64 0, !64, i64 64}
!69 = !{!"_ZTSN6dealii13ExceptionBaseE", !70, i64 0, !71, i64 8, !59, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !59, i64 56}
!70 = !{!"_ZTSSt9exception"}
!71 = !{!"any pointer", !60, i64 0}
!72 = !{!73, !59, i64 60}
!73 = !{!"_ZTSN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE", !69, i64 0, !59, i64 60, !59, i64 64, !59, i64 68}
!74 = !{!73, !59, i64 64}
!75 = !{!73, !59, i64 68}
!76 = !{!"function_entry_count", i64 730302}
!77 = !{!"function_entry_count", i64 2789676}
!78 = !{!"function_entry_count", i64 932908}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"function_entry_count", i64 287056}
!82 = distinct !{!82, !80}
!83 = !{!84, !64, i64 64}
!84 = !{!"_ZTSN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE", !69, i64 0, !64, i64 64}
!85 = !{!86, !59, i64 60}
!86 = !{!"_ZTSN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE", !69, i64 0, !59, i64 60, !59, i64 64, !59, i64 68}
!87 = !{!86, !59, i64 64}
!88 = !{!86, !59, i64 68}
!89 = !{!"function_entry_count", i64 1524061783}
!90 = !{!"function_entry_count", i64 3916911899}
!91 = !{!"function_entry_count", i64 28160}
!92 = !{!"function_entry_count", i64 365192}
!93 = !{!"branch_weights", i32 1, i32 1048575}
!94 = !{!"branch_weights", i32 365193, i32 1}
!95 = !{!"function_entry_count", i64 32086}
!96 = distinct !{!96, !80}
!97 = !{!"function_entry_count", i64 2121454836}
!98 = distinct !{!98, !80}
!99 = !{!"function_entry_count", i64 2381058532}
!100 = !{!101, !64, i64 64}
!101 = !{!"_ZTSN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE", !69, i64 0, !64, i64 64}
!102 = !{!103, !59, i64 60}
!103 = !{!"_ZTSN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE", !69, i64 0, !59, i64 60, !59, i64 64, !59, i64 68}
!104 = !{!103, !59, i64 64}
!105 = !{!103, !59, i64 68}
!106 = distinct !{!106, !80}
!107 = distinct !{!107, !80}
!108 = !{!109, !64, i64 64}
!109 = !{!"_ZTSN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE", !69, i64 0, !64, i64 64}
!110 = !{!111, !59, i64 60}
!111 = !{!"_ZTSN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE", !69, i64 0, !59, i64 60, !59, i64 64, !59, i64 68}
!112 = !{!111, !59, i64 64}
!113 = !{!111, !59, i64 68}
!114 = !{!"function_entry_count", i64 179129}
!115 = !{!"function_entry_count", i64 1068138}
!116 = !{!"branch_weights", i32 1068139, i32 1}
!117 = !{!"function_entry_count", i64 1452}
!118 = !{!"branch_weights", i32 1453, i32 1}
!119 = !{!"function_entry_count", i64 57524683}
!120 = !{!"function_entry_count", i64 1694583}
!121 = !{!"function_entry_count", i64 3072}
!122 = !{!"function_entry_count", i64 3840}
!123 = !{!"function_entry_count", i64 271481}
!124 = !{!"function_entry_count", i64 4593520}
!125 = !{!"function_entry_count", i64 4316510434}
!126 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!127 = distinct !{!127, !80}
!128 = distinct !{!128, !80}
!129 = !{!"function_entry_count", i64 3914477812}
!130 = !{!"function_entry_count", i64 547417}
