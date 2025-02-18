; ModuleID = 'source/base/geometry_info.cc'
source_filename = "source/base/geometry_info.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::RefinementCase" = type { i8 }
%"class.dealii::RefinementCase.2" = type { i8 }
%"class.dealii::RefinementCase.6" = type { i8 }
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
%"class.dealii::Point.12" = type { %"class.dealii::Tensor.13" }
%"class.dealii::Tensor.13" = type { [4 x double] }
%"class.dealii::StandardExceptions::ExcNotImplemented" = type { %"class.dealii::ExceptionBase.base", [4 x i8] }
%"class.dealii::GeometryInfo<4>::ExcInvalidCoordinate" = type { %"class.dealii::ExceptionBase.base", double }
%"class.dealii::GeometryInfo<4>::ExcInvalidSubface" = type { %"class.dealii::ExceptionBase.base", i32, i32, i32 }

$_ZN6dealii8internal16define_variablesILi2EEEvv = comdat any

$_ZN6dealii8internal16define_variablesILi3EEEvv = comdat any

$_ZN6dealii8internal16define_variablesILi4EEEvv = comdat any

$_ZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEE = comdat any

$_ZN6dealii12GeometryInfoILi1EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE28standard_to_real_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE28real_to_standard_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE26standard_to_real_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE26real_to_standard_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi1EE20project_to_unit_cellERKNS_5PointILi1EEE = comdat any

$_ZN6dealii12GeometryInfoILi1EE21distance_to_unit_cellERKNS_5PointILi1EEE = comdat any

$_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi1EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi1EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEE = comdat any

$_ZN6dealii12GeometryInfoILi2EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE28standard_to_real_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE28real_to_standard_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE26standard_to_real_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE26real_to_standard_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi2EE20project_to_unit_cellERKNS_5PointILi2EEE = comdat any

$_ZN6dealii12GeometryInfoILi2EE21distance_to_unit_cellERKNS_5PointILi2EEE = comdat any

$_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi2EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi2EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEE = comdat any

$_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii12GeometryInfoILi3EE20project_to_unit_cellERKNS_5PointILi3EEE = comdat any

$_ZN6dealii12GeometryInfoILi3EE21distance_to_unit_cellERKNS_5PointILi3EEE = comdat any

$_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi3EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi3EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE21face_to_cell_verticesEjjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE18face_to_cell_linesEjjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE28standard_to_real_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE28real_to_standard_face_vertexEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE26standard_to_real_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE26real_to_standard_face_lineEjbbb = comdat any

$_ZN6dealii12GeometryInfoILi4EE16unit_cell_vertexEj = comdat any

$_ZN6dealii12GeometryInfoILi4EE21child_cell_from_pointERKNS_5PointILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE25cell_to_child_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE = comdat any

$_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_ = comdat any

$_ZN6dealii12GeometryInfoILi4EE25child_to_cell_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE20project_to_unit_cellERKNS_5PointILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE21distance_to_unit_cellERKNS_5PointILi4EEE = comdat any

$_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC5Ed = comdat any

$_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi4EE20ExcInvalidCoordinate10print_infoERSo = comdat any

$_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC5Eiii = comdat any

$_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD5Ev = comdat any

$_ZNK6dealii12GeometryInfoILi4EE17ExcInvalidSubface10print_infoERSo = comdat any

$_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev = comdat any

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

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8internal16define_variablesILi2EEEvv() local_unnamed_addr #0 comdat !prof !46 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6dealii8internal3fooEPKj(ptr nocapture noundef readnone %0) local_unnamed_addr #1 !prof !46 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8internal16define_variablesILi3EEEvv() local_unnamed_addr #0 comdat !prof !46 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8internal16define_variablesILi4EEEvv() local_unnamed_addr #0 comdat !prof !46 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !46 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 1
  %4 = zext nneg i8 %3 to i64
  %5 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi1EE10n_childrenERKNS_14RefinementCaseILi1EEEE10n_children, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE18child_cell_on_faceERKNS_14RefinementCaseILi1EEEjjbbbRKNS2_ILi0EEE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef returned %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %6) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20project_to_unit_cellERKNS_5PointILi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = load double, ptr %1, align 8, !tbaa !51
  store double %3, ptr %0, align 8, !tbaa !51
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = fcmp ogt double %3, 1.000000e+00
  br i1 %6, label %7, label %9

7:                                                ; preds = %5, %2
  %8 = phi double [ 0.000000e+00, %2 ], [ 1.000000e+00, %5 ]
  store double %8, ptr %0, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi1EE21distance_to_unit_cellERKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !46 {
  %2 = load double, ptr %0, align 8, !tbaa !51
  %3 = fneg double %2
  %4 = fadd double %2, -1.000000e+00
  %5 = fcmp olt double %2, 0.000000e+00
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = fcmp ogt double %4, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %1, %8, %6
  %10 = phi double [ %4, %8 ], [ 0.000000e+00, %6 ], [ %3, %1 ]
  ret double %10
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateC5Ed) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !55
  ret void
}

declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi1EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 44)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 21)
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !55
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %6)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %11, i8 noundef signext 10)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %12)
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !60
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !63
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi1EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 20)
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %5)
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3, i64 noundef 7)
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %9)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4, i64 noundef 16)
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<1>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !63
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %13)
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %18, i8 noundef signext 10)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext %19)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 3
  %4 = zext nneg i8 %3 to i64
  %5 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi2EE10n_childrenERKNS_14RefinementCaseILi2EEEE10n_children, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !46 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [3 x [4 x [2 x i32]]], ptr @_ZZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEEE8subcells, i64 0, i64 2, i64 %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !47
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEE(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %6) local_unnamed_addr #7 align 2 !prof !46 {
  %8 = load i8, ptr %0, align 1
  %9 = and i8 %8, 3
  %10 = zext nneg i8 %9 to i64
  %11 = add nsw i64 %10, -1
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [3 x [4 x [2 x i32]]], ptr @_ZZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEEE8subcells, i64 0, i64 %11, i64 %12, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !47
  ret i32 %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20project_to_unit_cellERKNS_5PointILi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !46 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !51
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %2, %13
  %5 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !51
  %8 = fcmp olt double %7, 0.000000e+00
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = fcmp ogt double %7, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %9, %4
  %12 = phi double [ 0.000000e+00, %4 ], [ 1.000000e+00, %9 ]
  store double %12, ptr %6, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %11, %9
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %5, 0
  br i1 %15, label %4, label %3, !llvm.loop !65
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi2EE21distance_to_unit_cellERKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !46 {
  br label %3

2:                                                ; preds = %14
  ret double %15

3:                                                ; preds = %1, %14
  %4 = phi i64 [ 0, %1 ], [ %16, %14 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %15, %14 ]
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %4
  %7 = load double, ptr %6, align 8, !tbaa !51
  %8 = fneg double %7
  %9 = fcmp olt double %5, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = fadd double %7, -1.000000e+00
  %12 = fcmp ogt double %11, %5
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %3, %13, %10
  %15 = phi double [ %11, %13 ], [ %5, %10 ], [ %8, %3 ]
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %3, label %2, !llvm.loop !68
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateC5Ed) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi2EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 44)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 21)
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !69
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %6)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %11, i8 noundef signext 10)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %12)
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !71
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !73
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi2EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 20)
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %5)
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3, i64 noundef 7)
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !73
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %9)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4, i64 noundef 16)
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<2>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !74
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %13)
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %18, i8 noundef signext 10)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext %19)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #8 comdat align 2 !prof !75 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 7
  %4 = zext nneg i8 %3 to i64
  %5 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi3EE10n_childrenERKNS_14RefinementCaseILi3EEEE10n_children, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #6 comdat align 2 !prof !76 {
  %6 = alloca %"class.dealii::RefinementCase.6", align 1
  %7 = alloca %"class.dealii::RefinementCase.2", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  %8 = load i8, ptr %6, align 1
  %9 = or i8 %8, 7
  store i8 %9, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %10 = load i8, ptr %7, align 1
  %11 = or i8 %10, 3
  store i8 %11, ptr %7, align 1
  %12 = call noundef i32 @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %6) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %8 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip acquire, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %25, !prof !78

10:                                               ; preds = %7
  %11 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13, !prof !79

13:                                               ; preds = %10
  %14 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, align 1
  %15 = and i8 %14, -4
  store i8 %15, ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, align 1
  %16 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 1), align 1
  %17 = and i8 %16, -4
  %18 = or disjoint i8 %17, 2
  store i8 %18, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 1), align 1
  %19 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 2), align 1
  %20 = and i8 %19, -4
  %21 = or disjoint i8 %20, 1
  store i8 %21, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 2), align 1
  %22 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 3), align 1
  %23 = or i8 %22, 3
  store i8 %23, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 3), align 1
  %24 = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip) #19
  br label %25

25:                                               ; preds = %13, %10, %7
  %26 = xor i1 %3, %5
  %27 = load i8, ptr %6, align 1
  %28 = and i8 %27, 3
  %29 = zext nneg i8 %28 to i64
  %30 = getelementptr inbounds [4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE4flip, i64 0, i64 %29
  %31 = select i1 %26, ptr %6, ptr %30, !prof !80
  %32 = load i8, ptr %31, align 1
  %33 = zext i1 %3 to i64
  %34 = zext i1 %4 to i64
  %35 = zext i1 %5 to i64
  %36 = zext i32 %2 to i64
  %37 = getelementptr inbounds [4 x [2 x [2 x [2 x [4 x i32]]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE16subface_exchange, i64 0, i64 %29, i64 %33, i64 %34, i64 %35, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !47
  %39 = tail call i8 @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext true, i1 zeroext poison, i1 noundef zeroext false)
  %40 = and i8 %32, 3
  %41 = and i8 %40, %39
  %42 = tail call i8 @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext true, i1 zeroext poison, i1 noundef zeroext false)
  %43 = and i8 %42, 3
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %45, label %59, !prof !80

45:                                               ; preds = %25
  %46 = and i8 %32, 3
  %47 = zext nneg i8 %46 to i64
  %48 = zext i32 %38 to i64
  %49 = getelementptr inbounds [4 x [4 x i32]], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE22equivalent_iso_subface, i64 0, i64 %47, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !47
  %51 = load i8, ptr %0, align 1
  %52 = and i8 %51, 7
  %53 = zext nneg i8 %52 to i64
  %54 = add nsw i64 %53, -1
  %55 = zext i32 %1 to i64
  %56 = zext i32 %50 to i64
  %57 = getelementptr inbounds [7 x [6 x [4 x i32]]], ptr @_ZZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEEE12iso_children, i64 0, i64 %54, i64 %55, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !47
  br label %59

59:                                               ; preds = %25, %45
  %60 = phi i32 [ %58, %45 ], [ -1, %25 ]
  ret i32 %60
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20project_to_unit_cellERKNS_5PointILi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !46 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !51
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %2, %13
  %5 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !51
  %8 = fcmp olt double %7, 0.000000e+00
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = fcmp ogt double %7, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %9, %4
  %12 = phi double [ 0.000000e+00, %4 ], [ 1.000000e+00, %9 ]
  store double %12, ptr %6, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %11, %9
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %3, label %4, !llvm.loop !81
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi3EE21distance_to_unit_cellERKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !46 {
  br label %3

2:                                                ; preds = %14
  ret double %15

3:                                                ; preds = %1, %14
  %4 = phi i64 [ 0, %1 ], [ %16, %14 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %15, %14 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %4
  %7 = load double, ptr %6, align 8, !tbaa !51
  %8 = fneg double %7
  %9 = fcmp olt double %5, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = fadd double %7, -1.000000e+00
  %12 = fcmp ogt double %11, %5
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %3, %13, %10
  %15 = phi double [ %11, %13 ], [ %5, %10 ], [ %8, %3 ]
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %2, label %3, !llvm.loop !82
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateC5Ed) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !83
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi3EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 44)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 21)
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %6)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %11, i8 noundef signext 10)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %12)
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !85
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !88
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi3EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 20)
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %5)
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3, i64 noundef 7)
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !87
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %9)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4, i64 noundef 16)
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<3>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !88
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %13)
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %18, i8 noundef signext 10)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext %19)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEE(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !46 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 15
  %4 = zext nneg i8 %3 to i64
  %5 = getelementptr inbounds [8 x i32], ptr @_ZZN6dealii12GeometryInfoILi4EE10n_childrenERKNS_14RefinementCaseILi4EEEE10n_children, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE21face_to_cell_verticesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 !prof !46 {
  ret i32 -1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE18child_cell_on_faceERKNS_14RefinementCaseILi4EEEjjbbbRKNS2_ILi3EEE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %6) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 -1
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE18face_to_cell_linesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 -1
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE16unit_cell_vertexEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 !prof !46 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !51
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE21child_cell_from_pointERKNS_5PointILi4EEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat align 2 !prof !46 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE25cell_to_child_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i8 %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %5 = alloca %"class.dealii::StandardExceptions::ExcNotImplemented", align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !53
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.5, i32 noundef 2499, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5)
          to label %6 unwind label %7

6:                                                ; preds = %4
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !51
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #19
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = tail call ptr @__cxa_allocate_exception(i64 64) #19
  invoke void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2EOS1_(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull align 8 dereferenceable(60) %5)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN6dealii18StandardExceptions17ExcNotImplementedE, ptr nonnull @_ZN6dealii13ExceptionBaseD2Ev) #21
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #13

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE25child_to_cell_coordinatesERKNS_5PointILi4EEEjNS_14RefinementCaseILi4EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i8 %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %5 = alloca %"class.dealii::StandardExceptions::ExcNotImplemented", align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !53
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions17ExcNotImplementedEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.5, i32 noundef 2639, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5)
          to label %6 unwind label %7

6:                                                ; preds = %4
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !51
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #19
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20project_to_unit_cellERKNS_5PointILi4EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !46 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa !51
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %2, %13
  %5 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %6 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !51
  %8 = fcmp olt double %7, 0.000000e+00
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = fcmp ogt double %7, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %9, %4
  %12 = phi double [ 0.000000e+00, %4 ], [ 1.000000e+00, %9 ]
  store double %12, ptr %6, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %11, %9
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %3, label %4, !llvm.loop !89
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZN6dealii12GeometryInfoILi4EE21distance_to_unit_cellERKNS_5PointILi4EEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !46 {
  br label %3

2:                                                ; preds = %14
  ret double %15

3:                                                ; preds = %1, %14
  %4 = phi i64 [ 0, %1 ], [ %16, %14 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %15, %14 ]
  %6 = getelementptr inbounds [4 x double], ptr %0, i64 0, i64 %4
  %7 = load double, ptr %6, align 8, !tbaa !51
  %8 = fneg double %7
  %9 = fcmp olt double %5, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = fadd double %7, -1.000000e+00
  %12 = fcmp ogt double %11, %5
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %3, %13, %10
  %15 = phi double [ %11, %13 ], [ %5, %10 ], [ %8, %3 ]
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %2, label %3, !llvm.loop !90
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC2Ed(ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateC5Ed) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi4EE20ExcInvalidCoordinate10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 44)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 21)
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidCoordinate", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !91
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %6)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %11, i8 noundef signext 10)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %12)
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC2Eiii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceC5Eiii) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !93
  %6 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  store i32 %3, ptr %7, align 4, !tbaa !96
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat($_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD5Ev) align 2 !prof !46 {
  tail call void @_ZN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12GeometryInfoILi4EE17ExcInvalidSubface10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 20)
  %4 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %5)
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3, i64 noundef 7)
  %8 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !95
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %9)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4, i64 noundef 16)
  %12 = getelementptr inbounds %"class.dealii::GeometryInfo<4>::ExcInvalidSubface", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !96
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %13)
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %18, i8 noundef signext 10)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext %19)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi0EE10n_childrenERKNS_14RefinementCaseILi0EEE(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE10n_subfacesERKNS_8internal11SubfaceCaseILi1EEE(ptr nocapture noundef nonnull readnone align 1 %0) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE10n_subfacesERKNS_8internal11SubfaceCaseILi2EEE(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0) local_unnamed_addr #7 align 2 !prof !46 {
  %2 = load i8, ptr %0, align 1
  %3 = shl i8 %2, 1
  %4 = and i8 %3, 2
  %5 = zext nneg i8 %4 to i32
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE10n_subfacesERKNS_8internal11SubfaceCaseILi3EEE(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0) local_unnamed_addr #7 align 2 !prof !46 {
  %2 = load i8, ptr %0, align 1
  %3 = and i8 %2, 15
  %4 = zext nneg i8 %3 to i64
  %5 = getelementptr inbounds [10 x i32], ptr @_ZZN6dealii12GeometryInfoILi3EE10n_subfacesERKNS_8internal11SubfaceCaseILi3EEEE5nsubs, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN6dealii12GeometryInfoILi1EE13subface_ratioERKNS_8internal11SubfaceCaseILi1EEEj(ptr nocapture noundef nonnull readnone align 1 %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !46 {
  ret double 1.000000e+00
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN6dealii12GeometryInfoILi2EE13subface_ratioERKNS_8internal11SubfaceCaseILi2EEEj(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !46 {
  ret double 5.000000e-01
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN6dealii12GeometryInfoILi3EE13subface_ratioERKNS_8internal11SubfaceCaseILi3EEEj(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !46 {
  %3 = load i8, ptr %0, align 1
  %4 = and i8 %3, 15
  switch i8 %4, label %14 [
    i8 0, label %5
    i8 1, label %6
    i8 5, label %6
    i8 9, label %7
    i8 4, label %7
    i8 8, label %7
    i8 2, label %8
    i8 6, label %8
    i8 3, label %11
    i8 7, label %11
  ]

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2, %2
  br label %14

7:                                                ; preds = %2, %2, %2
  br label %14

8:                                                ; preds = %2, %2
  %9 = icmp ult i32 %1, 2
  %10 = select i1 %9, double 2.500000e-01, double 5.000000e-01
  br label %14

11:                                               ; preds = %2, %2
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, double 5.000000e-01, double 2.500000e-01
  br label %14

14:                                               ; preds = %11, %8, %2, %7, %6, %5
  %15 = phi double [ 1.000000e+00, %2 ], [ 2.500000e-01, %7 ], [ 5.000000e-01, %6 ], [ 2.500000e-01, %5 ], [ %10, %8 ], [ %13, %11 ]
  ret double %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN6dealii12GeometryInfoILi1EE20face_refinement_caseERKNS_14RefinementCaseILi1EEEjbbb(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !46 {
  ret i8 0
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbb(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1, i1 zeroext %2, i1 zeroext %3, i1 zeroext %4) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %6 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases acquire, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %29, !prof !97

8:                                                ; preds = %5
  %9 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, align 1
  %13 = and i8 %12, -2
  store i8 %13, ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, align 1
  %14 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 0, i64 1), align 1
  %15 = and i8 %14, -2
  store i8 %15, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 0, i64 1), align 1
  %16 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 1), align 1
  %17 = and i8 %16, -2
  store i8 %17, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 1), align 1
  %18 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 1, i64 1), align 1
  %19 = or i8 %18, 1
  store i8 %19, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 1, i64 1), align 1
  %20 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 2), align 1
  %21 = or i8 %20, 1
  store i8 %21, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 2), align 1
  %22 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 2, i64 1), align 1
  %23 = and i8 %22, -2
  store i8 %23, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 2, i64 1), align 1
  %24 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 3), align 1
  %25 = or i8 %24, 1
  store i8 %25, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 3), align 1
  %26 = load i8, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 3, i64 1), align 1
  %27 = or i8 %26, 1
  store i8 %27, ptr getelementptr inbounds ([4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 3, i64 1), align 1
  %28 = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases) #19
  br label %29

29:                                               ; preds = %11, %8, %5
  %30 = load i8, ptr %0, align 1
  %31 = and i8 %30, 3
  %32 = zext nneg i8 %31 to i64
  %33 = lshr i32 %1, 1
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [4 x [2 x %"class.dealii::RefinementCase"]], ptr @_ZZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbbE9ref_cases, i64 0, i64 %32, i64 %34
  %36 = load i8, ptr %35, align 1
  ret i8 %36
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %6 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases acquire, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %73, !prof !99

8:                                                ; preds = %5
  %9 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %73, label %11, !prof !79

11:                                               ; preds = %8
  %12 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, align 16
  %13 = and i8 %12, -4
  store i8 %13, ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, align 16
  %14 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 0, i64 1), align 1
  %15 = and i8 %14, -4
  store i8 %15, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 0, i64 1), align 1
  %16 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 0, i64 2), align 2
  %17 = and i8 %16, -4
  store i8 %17, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 0, i64 2), align 2
  %18 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1), align 1
  %19 = and i8 %18, -4
  store i8 %19, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1), align 1
  %20 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1, i64 1), align 4
  %21 = and i8 %20, -4
  %22 = or disjoint i8 %21, 2
  store i8 %22, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1, i64 1), align 4
  %23 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1, i64 2), align 1
  %24 = and i8 %23, -4
  %25 = or disjoint i8 %24, 1
  store i8 %25, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 1, i64 2), align 1
  %26 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2), align 2
  %27 = and i8 %26, -4
  %28 = or disjoint i8 %27, 1
  store i8 %28, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2), align 2
  %29 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2, i64 1), align 1
  %30 = and i8 %29, -4
  store i8 %30, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2, i64 1), align 1
  %31 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2, i64 2), align 8
  %32 = and i8 %31, -4
  %33 = or disjoint i8 %32, 2
  store i8 %33, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 2, i64 2), align 8
  %34 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3), align 1
  %35 = and i8 %34, -4
  %36 = or disjoint i8 %35, 1
  store i8 %36, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3), align 1
  %37 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3, i64 1), align 2
  %38 = and i8 %37, -4
  %39 = or disjoint i8 %38, 2
  store i8 %39, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3, i64 1), align 2
  %40 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3, i64 2), align 1
  %41 = or i8 %40, 3
  store i8 %41, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 3, i64 2), align 1
  %42 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4), align 4
  %43 = and i8 %42, -4
  %44 = or disjoint i8 %43, 2
  store i8 %44, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4), align 4
  %45 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4, i64 1), align 1
  %46 = and i8 %45, -4
  %47 = or disjoint i8 %46, 1
  store i8 %47, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4, i64 1), align 1
  %48 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4, i64 2), align 2
  %49 = and i8 %48, -4
  store i8 %49, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 4, i64 2), align 2
  %50 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5), align 1
  %51 = and i8 %50, -4
  %52 = or disjoint i8 %51, 2
  store i8 %52, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5), align 1
  %53 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5, i64 1), align 16
  %54 = or i8 %53, 3
  store i8 %54, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5, i64 1), align 16
  %55 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5, i64 2), align 1
  %56 = and i8 %55, -4
  %57 = or disjoint i8 %56, 1
  store i8 %57, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 5, i64 2), align 1
  %58 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6), align 2
  %59 = or i8 %58, 3
  store i8 %59, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6), align 2
  %60 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6, i64 1), align 1
  %61 = and i8 %60, -4
  %62 = or disjoint i8 %61, 1
  store i8 %62, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6, i64 1), align 1
  %63 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6, i64 2), align 4
  %64 = and i8 %63, -4
  %65 = or disjoint i8 %64, 2
  store i8 %65, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 6, i64 2), align 4
  %66 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7), align 1
  %67 = or i8 %66, 3
  store i8 %67, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7), align 1
  %68 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7, i64 1), align 2
  %69 = or i8 %68, 3
  store i8 %69, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7, i64 1), align 2
  %70 = load i8, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7, i64 2), align 1
  %71 = or i8 %70, 3
  store i8 %71, ptr getelementptr inbounds ([8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 7, i64 2), align 1
  %72 = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases) #19
  br label %73

73:                                               ; preds = %11, %8, %5
  %74 = load i8, ptr %0, align 1
  %75 = and i8 %74, 7
  %76 = zext nneg i8 %75 to i64
  %77 = lshr i32 %1, 1
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [8 x [3 x %"class.dealii::RefinementCase.2"]], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE9ref_cases, i64 0, i64 %76, i64 %78
  %80 = load i8, ptr %79, align 1
  %81 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip acquire, align 8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %98, !prof !99

83:                                               ; preds = %73
  %84 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86, !prof !79

86:                                               ; preds = %83
  %87 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, align 1
  %88 = and i8 %87, -4
  store i8 %88, ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, align 1
  %89 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 1), align 1
  %90 = and i8 %89, -4
  %91 = or disjoint i8 %90, 2
  store i8 %91, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 1), align 1
  %92 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 2), align 1
  %93 = and i8 %92, -4
  %94 = or disjoint i8 %93, 1
  store i8 %94, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 2), align 1
  %95 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 3), align 1
  %96 = or i8 %95, 3
  store i8 %96, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 3), align 1
  %97 = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip) #19
  br label %98

98:                                               ; preds = %86, %83, %73
  %99 = xor i1 %2, %4
  br i1 %99, label %105, label %100, !prof !100

100:                                              ; preds = %98
  %101 = and i8 %80, 3
  %102 = zext nneg i8 %101 to i64
  %103 = getelementptr inbounds [4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbbE4flip, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1
  br label %105

105:                                              ; preds = %98, %100
  %106 = phi i8 [ %104, %100 ], [ %80, %98 ]
  ret i8 %106
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi1EE20line_refinement_caseERKNS_14RefinementCaseILi1EEEj(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !46 {
  %3 = load i8, ptr %0, align 1
  ret i8 %3
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE20line_refinement_caseERKNS_14RefinementCaseILi2EEEj(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !46 {
  %3 = tail call i8 @_ZN6dealii12GeometryInfoILi2EE20face_refinement_caseERKNS_14RefinementCaseILi2EEEjbbb(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i1 zeroext poison, i1 zeroext poison, i1 zeroext poison)
  ret i8 %3
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %3 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one acquire, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %19, !prof !102

5:                                                ; preds = %2
  %6 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8, !prof !79

8:                                                ; preds = %5
  %9 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, align 1
  %10 = and i8 %9, -8
  %11 = or disjoint i8 %10, 1
  store i8 %11, ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, align 1
  %12 = load i8, ptr getelementptr inbounds ([3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 1), align 1
  %13 = and i8 %12, -8
  %14 = or disjoint i8 %13, 2
  store i8 %14, ptr getelementptr inbounds ([3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 1), align 1
  %15 = load i8, ptr getelementptr inbounds ([3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 2), align 1
  %16 = and i8 %15, -8
  %17 = or disjoint i8 %16, 4
  store i8 %17, ptr getelementptr inbounds ([3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 2), align 1
  %18 = tail call ptr @llvm.invariant.start.p0(i64 3, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one) #19
  br label %19

19:                                               ; preds = %8, %5, %2
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [12 x i32], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE9direction, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !47
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [3 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEjE7cut_one, i64 0, i64 %23
  %25 = load i8, ptr %0, align 1
  %26 = load i8, ptr %24, align 1
  %27 = and i8 %25, 7
  %28 = and i8 %27, %26
  %29 = icmp ne i8 %28, 0
  %30 = zext i1 %29 to i8
  ret i8 %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN6dealii12GeometryInfoILi1EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi0EEEjbbb(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !46 {
  ret i8 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi2EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi1EEEjbbb(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 !prof !46 {
  %6 = load i8, ptr %0, align 1
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = icmp ult i32 %1, 2
  %10 = select i1 %9, i8 2, i8 1
  %11 = select i1 %8, i8 0, i8 %10
  ret i8 %11
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbb(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %6 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip acquire, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23, !prof !104

8:                                                ; preds = %5
  %9 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11, !prof !79

11:                                               ; preds = %8
  %12 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, align 1
  %13 = and i8 %12, -4
  store i8 %13, ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, align 1
  %14 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 1), align 1
  %15 = and i8 %14, -4
  %16 = or disjoint i8 %15, 2
  store i8 %16, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 1), align 1
  %17 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 2), align 1
  %18 = and i8 %17, -4
  %19 = or disjoint i8 %18, 1
  store i8 %19, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 2), align 1
  %20 = load i8, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 3), align 1
  %21 = or i8 %20, 3
  store i8 %21, ptr getelementptr inbounds ([4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 3), align 1
  %22 = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip) #19
  br label %23

23:                                               ; preds = %11, %8, %5
  %24 = xor i1 %2, %4
  %25 = load i8, ptr %0, align 1
  %26 = and i8 %25, 3
  %27 = zext nneg i8 %26 to i64
  %28 = getelementptr inbounds [4 x %"class.dealii::RefinementCase.2"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE4flip, i64 0, i64 %27
  %29 = select i1 %24, ptr %0, ptr %28, !prof !105
  %30 = load i8, ptr %29, align 1
  %31 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell acquire, align 8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %71, !prof !104

33:                                               ; preds = %23
  %34 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %71, label %36, !prof !79

36:                                               ; preds = %33
  %37 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, align 1
  %38 = and i8 %37, -8
  store i8 %38, ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, align 1
  %39 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 1), align 1
  %40 = and i8 %39, -8
  %41 = or disjoint i8 %40, 2
  store i8 %41, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 1), align 1
  %42 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 2), align 1
  %43 = and i8 %42, -8
  %44 = or disjoint i8 %43, 4
  store i8 %44, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 2), align 1
  %45 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 3), align 1
  %46 = and i8 %45, -8
  %47 = or disjoint i8 %46, 6
  store i8 %47, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 0, i64 3), align 1
  %48 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1), align 1
  %49 = and i8 %48, -8
  store i8 %49, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1), align 1
  %50 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 1), align 1
  %51 = and i8 %50, -8
  %52 = or disjoint i8 %51, 4
  store i8 %52, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 1), align 1
  %53 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 2), align 1
  %54 = and i8 %53, -8
  %55 = or disjoint i8 %54, 1
  store i8 %55, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 2), align 1
  %56 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 3), align 1
  %57 = and i8 %56, -8
  %58 = or disjoint i8 %57, 5
  store i8 %58, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 1, i64 3), align 1
  %59 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2), align 1
  %60 = and i8 %59, -8
  store i8 %60, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2), align 1
  %61 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 1), align 1
  %62 = and i8 %61, -8
  %63 = or disjoint i8 %62, 1
  store i8 %63, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 1), align 1
  %64 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 2), align 1
  %65 = and i8 %64, -8
  %66 = or disjoint i8 %65, 2
  store i8 %66, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 2), align 1
  %67 = load i8, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 3), align 1
  %68 = and i8 %67, -8
  %69 = or disjoint i8 %68, 3
  store i8 %69, ptr getelementptr inbounds ([3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 2, i64 3), align 1
  %70 = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell) #19
  br label %71

71:                                               ; preds = %36, %33, %23
  %72 = lshr i32 %1, 1
  %73 = zext nneg i32 %72 to i64
  %74 = and i8 %30, 3
  %75 = zext nneg i8 %74 to i64
  %76 = getelementptr inbounds [3 x [4 x %"class.dealii::RefinementCase.6"]], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbbE12face_to_cell, i64 0, i64 %73, i64 %75
  %77 = load i8, ptr %76, align 1
  ret i8 %77
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN6dealii12GeometryInfoILi1EE44min_cell_refinement_case_for_line_refinementEj(i32 noundef %0) local_unnamed_addr #1 align 2 !prof !46 {
  ret i8 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN6dealii12GeometryInfoILi2EE44min_cell_refinement_case_for_line_refinementEj(i32 noundef %0) local_unnamed_addr #1 align 2 !prof !46 {
  %2 = icmp ult i32 %0, 2
  %3 = select i1 %2, i8 2, i8 1
  ret i8 %3
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local i8 @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEj(i32 noundef %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = load atomic i8, ptr @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases acquire, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %27, !prof !97

4:                                                ; preds = %1
  %5 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, align 1
  %9 = and i8 %8, -8
  %10 = or disjoint i8 %9, 2
  store i8 %10, ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, align 1
  %11 = load i8, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 1), align 1
  %12 = and i8 %11, -8
  %13 = or disjoint i8 %12, 1
  store i8 %13, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 1), align 1
  %14 = load i8, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 2), align 1
  %15 = and i8 %14, -8
  %16 = or disjoint i8 %15, 2
  store i8 %16, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 2), align 1
  %17 = load i8, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 3), align 1
  %18 = and i8 %17, -8
  %19 = or disjoint i8 %18, 1
  store i8 %19, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 3), align 1
  %20 = load i8, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 4), align 1
  %21 = and i8 %20, -8
  %22 = or disjoint i8 %21, 4
  store i8 %22, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 4), align 1
  %23 = load i8, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 5), align 1
  %24 = and i8 %23, -8
  %25 = or disjoint i8 %24, 4
  store i8 %25, ptr getelementptr inbounds ([6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 5), align 1
  %26 = tail call ptr @llvm.invariant.start.p0(i64 6, ptr nonnull @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases) #19
  br label %27

27:                                               ; preds = %7, %4, %1
  %28 = lshr i32 %0, 1
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [6 x %"class.dealii::RefinementCase.6"], ptr @_ZZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_line_refinementEjE9ref_cases, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1
  ret i8 %31
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE28standard_to_real_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #16 align 2 !prof !106 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE28standard_to_real_face_vertexEjbbbE18vertex_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !47
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE28real_to_standard_face_vertexEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !46 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE28real_to_standard_face_vertexEjbbbE18vertex_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !47
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE26standard_to_real_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #17 align 2 !prof !107 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE26standard_to_real_face_lineEjbbbE16line_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !47
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbb(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !46 {
  %5 = zext i32 %0 to i64
  %6 = zext i1 %1 to i64
  %7 = zext i1 %2 to i64
  %8 = zext i1 %3 to i64
  %9 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbbE16line_translation, i64 0, i64 %5, i64 %6, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !47
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef returned %1) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !46 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [3 x [4 x [2 x i32]]], ptr @_ZZN6dealii12GeometryInfoILi2EE18child_cell_on_faceERKNS_14RefinementCaseILi2EEEjjbbbRKNS2_ILi1EEEE8subcells, i64 0, i64 2, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #17 align 2 !prof !108 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [12 x [2 x i32]], ptr @_ZZN6dealii12GeometryInfoILi3EE21line_to_cell_verticesEjjE8vertices, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !47
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi4EE21line_to_cell_verticesEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 -1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi1EE18face_to_cell_linesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi2EE18face_to_cell_linesEjjbbb(i32 noundef returned %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 !prof !46 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN6dealii12GeometryInfoILi3EE18face_to_cell_linesEjjbbb(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #17 align 2 !prof !109 {
  %6 = zext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = zext i1 %2 to i64
  %9 = zext i1 %3 to i64
  %10 = zext i1 %4 to i64
  %11 = getelementptr inbounds [4 x [2 x [2 x [2 x i32]]]], ptr @_ZZN6dealii12GeometryInfoILi3EE26real_to_standard_face_lineEjbbbE16line_translation, i64 0, i64 %7, i64 %8, i64 %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [6 x [4 x i32]], ptr @_ZZN6dealii12GeometryInfoILi3EE18face_to_cell_linesEjjbbbE5lines, i64 0, i64 %6, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !47
  ret i32 %15
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #13

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #11 comdat align 2 !prof !46 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2EOS1_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) unnamed_addr #8 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN6dealii12GeometryInfoILi3EE21face_to_cell_verticesEjjbbb, ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, i64 28160}
!36 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @__cxa_guard_acquire, i64 1}
!37 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @__cxa_guard_release, i64 1}
!38 = !{ptr @_ZN6dealii12GeometryInfoILi3EE18child_cell_on_faceERKNS_14RefinementCaseILi3EEEjjbbbRKNS2_ILi2EEE, ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, i64 730384}
!39 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @__cxa_guard_acquire, i64 2}
!40 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20face_refinement_caseERKNS_14RefinementCaseILi3EEEjbbb, ptr @__cxa_guard_release, i64 2}
!41 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj, ptr @__cxa_guard_acquire, i64 1}
!42 = !{ptr @_ZN6dealii12GeometryInfoILi3EE20line_refinement_caseERKNS_14RefinementCaseILi3EEEj, ptr @__cxa_guard_release, i64 1}
!43 = !{ptr @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbb, ptr @__cxa_guard_acquire, i64 2}
!44 = !{ptr @_ZN6dealii12GeometryInfoILi3EE44min_cell_refinement_case_for_face_refinementERKNS_14RefinementCaseILi2EEEjbbb, ptr @__cxa_guard_release, i64 2}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !49, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !50, i64 0}
!55 = !{!56, !52, i64 64}
!56 = !{!"_ZTSN6dealii12GeometryInfoILi1EE20ExcInvalidCoordinateE", !57, i64 0, !52, i64 64}
!57 = !{!"_ZTSN6dealii13ExceptionBaseE", !58, i64 0, !59, i64 8, !48, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !48, i64 56}
!58 = !{!"_ZTSSt9exception"}
!59 = !{!"any pointer", !49, i64 0}
!60 = !{!61, !48, i64 60}
!61 = !{!"_ZTSN6dealii12GeometryInfoILi1EE17ExcInvalidSubfaceE", !57, i64 0, !48, i64 60, !48, i64 64, !48, i64 68}
!62 = !{!61, !48, i64 64}
!63 = !{!61, !48, i64 68}
!64 = !{!"function_entry_count", i64 730302}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !66, !67}
!69 = !{!70, !52, i64 64}
!70 = !{!"_ZTSN6dealii12GeometryInfoILi2EE20ExcInvalidCoordinateE", !57, i64 0, !52, i64 64}
!71 = !{!72, !48, i64 60}
!72 = !{!"_ZTSN6dealii12GeometryInfoILi2EE17ExcInvalidSubfaceE", !57, i64 0, !48, i64 60, !48, i64 64, !48, i64 68}
!73 = !{!72, !48, i64 64}
!74 = !{!72, !48, i64 68}
!75 = !{!"function_entry_count", i64 1524061783}
!76 = !{!"function_entry_count", i64 28160}
!77 = !{!"function_entry_count", i64 365192}
!78 = !{!"branch_weights", i32 1, i32 365191}
!79 = !{!"branch_weights", i32 0, i32 1}
!80 = !{!"branch_weights", i32 365192, i32 0}
!81 = distinct !{!81, !66, !67}
!82 = distinct !{!82, !66, !67}
!83 = !{!84, !52, i64 64}
!84 = !{!"_ZTSN6dealii12GeometryInfoILi3EE20ExcInvalidCoordinateE", !57, i64 0, !52, i64 64}
!85 = !{!86, !48, i64 60}
!86 = !{!"_ZTSN6dealii12GeometryInfoILi3EE17ExcInvalidSubfaceE", !57, i64 0, !48, i64 60, !48, i64 64, !48, i64 68}
!87 = !{!86, !48, i64 64}
!88 = !{!86, !48, i64 68}
!89 = distinct !{!89, !66, !67}
!90 = distinct !{!90, !66, !67}
!91 = !{!92, !52, i64 64}
!92 = !{!"_ZTSN6dealii12GeometryInfoILi4EE20ExcInvalidCoordinateE", !57, i64 0, !52, i64 64}
!93 = !{!94, !48, i64 60}
!94 = !{!"_ZTSN6dealii12GeometryInfoILi4EE17ExcInvalidSubfaceE", !57, i64 0, !48, i64 60, !48, i64 64, !48, i64 68}
!95 = !{!94, !48, i64 64}
!96 = !{!94, !48, i64 68}
!97 = !{!"branch_weights", i32 1, i32 1048575}
!98 = !{!"function_entry_count", i64 1068138}
!99 = !{!"branch_weights", i32 1, i32 1068137}
!100 = !{!"branch_weights", i32 1068138, i32 0}
!101 = !{!"function_entry_count", i64 188478}
!102 = !{!"branch_weights", i32 1, i32 188477}
!103 = !{!"function_entry_count", i64 1452}
!104 = !{!"branch_weights", i32 1, i32 1451}
!105 = !{!"branch_weights", i32 1452, i32 0}
!106 = !{!"function_entry_count", i64 57524683}
!107 = !{!"function_entry_count", i64 1694583}
!108 = !{!"function_entry_count", i64 3840}
!109 = !{!"function_entry_count", i64 3072}
