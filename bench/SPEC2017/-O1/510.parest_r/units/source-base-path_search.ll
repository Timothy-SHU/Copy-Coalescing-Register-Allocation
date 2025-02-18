; ModuleID = 'source/base/path_search.cc'
source_filename = "source/base/path_search.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.dealii::LogStream" = type { %"class.std::stack", ptr, ptr, i32, i32, i8, i8, double, double, i8, ptr, %"class.std::map.9" }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::map.9" = type { %"class.std::_Rb_tree.10" }
%"class.std::_Rb_tree.10" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.14", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.14" = type { %"struct.std::less.15" }
%"struct.std::less.15" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair.6" = type { %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [56 x i8] }
%"class.dealii::PathSearch" = type <{ %"class.std::__cxx11::basic_string", ptr, ptr, i32, [4 x i8] }>
%"class.dealii::PathSearch::ExcFileNotFound" = type { %"class.dealii::ExceptionBase.base", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value" = type { ptr, %"union.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value::_Storage" }
%"union.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value::_Storage" = type { %"class.std::__cxx11::basic_string" }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

$_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_10PathSearch15ExcFileNotFoundEEEvPKciS6_S6_S6_T_ = comdat any

$_ZN6dealii10PathSearch15ExcFileNotFoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ = comdat any

$_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev = comdat any

$_ZN6dealii10PathSearch15ExcFileNotFoundC2ERKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IRS6_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_ = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZN6dealii10PathSearch15ExcFileNotFoundD0Ev = comdat any

$_ZNK6dealii10PathSearch15ExcFileNotFound10print_infoERSo = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag = comdat any

$_ZTSN6dealii10PathSearch15ExcFileNotFoundE = comdat any

$_ZTIN6dealii10PathSearch15ExcFileNotFoundE = comdat any

$_ZTVN6dealii10PathSearch15ExcFileNotFoundE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN6dealii10PathSearch10path_listsB5cxx11E = dso_local global %"class.std::map" zeroinitializer, align 8
@_ZN6dealii10PathSearch12suffix_listsB5cxx11E = dso_local global %"class.std::map" zeroinitializer, align 8
@_ZN6dealii10PathSearch5emptyB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PARAMETER\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"/home/bangerth/p/deal.II/1/projects/spec-cpu2017/src/lib/meshes/\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".dbmesh\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c".nc\00", align 1
@_ZN6dealii7deallogE = external global %"class.dealii::LogStream", align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"PathSearch[\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c" directories \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"] trying \00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"] opened \00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"source/base/path_search.cc\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"ExcFileNotFound(filename, cls)\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c" suffixes\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii10PathSearch15ExcFileNotFoundE = linkonce_odr dso_local constant [39 x i8] c"N6dealii10PathSearch15ExcFileNotFoundE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii10PathSearch15ExcFileNotFoundE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10PathSearch15ExcFileNotFoundE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTVN6dealii10PathSearch15ExcFileNotFoundE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii10PathSearch15ExcFileNotFoundE, ptr @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev, ptr @_ZN6dealii10PathSearch15ExcFileNotFoundD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii10PathSearch15ExcFileNotFound10print_infoERSo] }, comdat, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c"The file \22\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"\22 was not found in the path for files of class \00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_path_search.cc, ptr null }]

@_ZN6dealii10PathSearchC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii10PathSearchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !76 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3)
          to label %7 unwind label %4

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #24
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearch18initialize_classesEv() local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %1 = alloca %"class.std::vector", align 8
  %2 = alloca %"struct.std::pair.6", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"struct.std::pair.6", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"struct.std::pair.6", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"struct.std::pair.6", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %19 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii10PathSearch5emptyB5cxx11E)
          to label %20 unwind label %368, !prof !86

20:                                               ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %21, ptr %3, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %21, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, i64 9, i1 false), !prof !89
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 9, ptr %22, align 8, !tbaa !90
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2, i32 1, i64 1
  store i8 0, ptr %23, align 1, !tbaa !92
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %24 unwind label %370, !prof !86

24:                                               ; preds = %20
  %25 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch10path_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %26 unwind label %372, !prof !86

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %45, label %32, !prof !96

32:                                               ; preds = %26, %42
  %33 = phi ptr [ %43, %42 ], [ %28, %26 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %41, !prof !86

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !90
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %34) #26
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 1
  %44 = icmp eq ptr %43, %30
  br i1 %44, label %45, label %32, !prof !98, !llvm.loop !99

45:                                               ; preds = %42, %26
  %46 = load ptr, ptr %27, align 8, !tbaa !93
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !102

48:                                               ; preds = %45
  call void @_ZdlPv(ptr noundef %46) #26
  br label %49

49:                                               ; preds = %45, %48
  %50 = load ptr, ptr %2, align 8, !tbaa !97
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %57, !prof !86

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !90
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #26
  br label %58

58:                                               ; preds = %53, %57
  %59 = load ptr, ptr %3, align 8, !tbaa !97
  %60 = icmp eq ptr %59, %21
  br i1 %60, label %61, label %64, !prof !86

61:                                               ; preds = %58
  %62 = load i64, ptr %22, align 8, !tbaa !90
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #26
  br label %65

65:                                               ; preds = %61, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %66, ptr %4, align 8, !tbaa !87
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull getelementptr inbounds ([65 x i8], ptr @.str.5, i64 0, i64 64))
          to label %67 unwind label %414, !prof !86

67:                                               ; preds = %65
  %68 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %69 unwind label %416, !prof !86

69:                                               ; preds = %67
  %70 = load ptr, ptr %4, align 8, !tbaa !97
  %71 = icmp eq ptr %70, %66
  br i1 %71, label %72, label %76, !prof !102

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !90
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %77

76:                                               ; preds = %69
  call void @_ZdlPv(ptr noundef %70) #26
  br label %77

77:                                               ; preds = %72, %76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %78, ptr %6, align 8, !tbaa !87
  store i32 1213416781, ptr %78, align 8
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 4, ptr %79, align 8, !tbaa !90
  %80 = getelementptr inbounds i8, ptr %6, i64 20
  store i8 0, ptr %80, align 4, !tbaa !92
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %81 unwind label %427, !prof !86

81:                                               ; preds = %77
  %82 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch10path_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %83 unwind label %429, !prof !86

83:                                               ; preds = %81
  %84 = getelementptr inbounds %"struct.std::pair.6", ptr %5, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !93
  %86 = getelementptr inbounds %"struct.std::pair.6", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !95
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %102, label %89, !prof !96

89:                                               ; preds = %83, %99
  %90 = phi ptr [ %100, %99 ], [ %85, %83 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !97
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %90, i64 0, i32 2
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98, !prof !103

94:                                               ; preds = %89
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %90, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !90
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %89
  call void @_ZdlPv(ptr noundef %91) #26
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %90, i64 1
  %101 = icmp eq ptr %100, %87
  br i1 %101, label %102, label %89, !prof !104, !llvm.loop !99

102:                                              ; preds = %99, %83
  %103 = load ptr, ptr %84, align 8, !tbaa !93
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105, !prof !102

105:                                              ; preds = %102
  call void @_ZdlPv(ptr noundef %103) #26
  br label %106

106:                                              ; preds = %102, %105
  %107 = load ptr, ptr %5, align 8, !tbaa !97
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %114, !prof !86

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !90
  %113 = icmp ult i64 %112, 16
  call void @llvm.assume(i1 %113)
  br label %115

114:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %107) #26
  br label %115

115:                                              ; preds = %110, %114
  %116 = load ptr, ptr %6, align 8, !tbaa !97
  %117 = icmp eq ptr %116, %78
  br i1 %117, label %118, label %121, !prof !86

118:                                              ; preds = %115
  %119 = load i64, ptr %79, align 8, !tbaa !90
  %120 = icmp ult i64 %119, 16
  call void @llvm.assume(i1 %120)
  br label %122

121:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %116) #26
  br label %122

122:                                              ; preds = %118, %121
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #25
  %123 = load ptr, ptr %1, align 8, !tbaa !93
  %124 = load ptr, ptr %19, align 8, !tbaa !95
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %140, label %126, !prof !102

126:                                              ; preds = %122, %136
  %127 = phi ptr [ %137, %136 ], [ %123, %122 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !97
  %129 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %127, i64 0, i32 2
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %135, !prof !103

131:                                              ; preds = %126
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %127, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !90
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %136

135:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %128) #26
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %127, i64 1
  %138 = icmp eq ptr %137, %124
  br i1 %138, label %139, label %126, !prof !103, !llvm.loop !99

139:                                              ; preds = %136
  store ptr %123, ptr %19, align 8, !tbaa !95
  br label %140

140:                                              ; preds = %122, %139
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii10PathSearch5emptyB5cxx11E)
          to label %141 unwind label %368, !prof !86

141:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %142, ptr %7, align 8, !tbaa !87
  store i32 1836216366, ptr %142, align 8
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 4, ptr %143, align 8, !tbaa !90
  %144 = getelementptr inbounds i8, ptr %7, i64 20
  store i8 0, ptr %144, align 4, !tbaa !92
  %145 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %146 unwind label %471, !prof !86

146:                                              ; preds = %141
  %147 = load ptr, ptr %7, align 8, !tbaa !97
  %148 = icmp eq ptr %147, %142
  br i1 %148, label %149, label %152, !prof !86

149:                                              ; preds = %146
  %150 = load i64, ptr %143, align 8, !tbaa !90
  %151 = icmp ult i64 %150, 16
  call void @llvm.assume(i1 %151)
  br label %153

152:                                              ; preds = %146
  call void @_ZdlPv(ptr noundef %147) #26
  br label %153

153:                                              ; preds = %149, %152
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #25
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %154, ptr %9, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %154, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, i64 9, i1 false), !prof !89
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 9, ptr %155, align 8, !tbaa !90
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, i32 1, i64 1
  store i8 0, ptr %156, align 1, !tbaa !92
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %157 unwind label %480, !prof !86

157:                                              ; preds = %153
  %158 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %159 unwind label %482, !prof !86

159:                                              ; preds = %157
  %160 = getelementptr inbounds %"struct.std::pair.6", ptr %8, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !93
  %162 = getelementptr inbounds %"struct.std::pair.6", ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !95
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %178, label %165, !prof !96

165:                                              ; preds = %159, %175
  %166 = phi ptr [ %176, %175 ], [ %161, %159 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !97
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %166, i64 0, i32 2
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %170, label %174, !prof !105

170:                                              ; preds = %165
  %171 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %166, i64 0, i32 1
  %172 = load i64, ptr %171, align 8, !tbaa !90
  %173 = icmp ult i64 %172, 16
  call void @llvm.assume(i1 %173)
  br label %175

174:                                              ; preds = %165
  call void @_ZdlPv(ptr noundef %167) #26
  br label %175

175:                                              ; preds = %174, %170
  %176 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %166, i64 1
  %177 = icmp eq ptr %176, %163
  br i1 %177, label %178, label %165, !prof !104, !llvm.loop !99

178:                                              ; preds = %175, %159
  %179 = load ptr, ptr %160, align 8, !tbaa !93
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181, !prof !102

181:                                              ; preds = %178
  call void @_ZdlPv(ptr noundef %179) #26
  br label %182

182:                                              ; preds = %178, %181
  %183 = load ptr, ptr %8, align 8, !tbaa !97
  %184 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %185 = icmp eq ptr %183, %184
  br i1 %185, label %186, label %190, !prof !86

186:                                              ; preds = %182
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %188 = load i64, ptr %187, align 8, !tbaa !90
  %189 = icmp ult i64 %188, 16
  call void @llvm.assume(i1 %189)
  br label %191

190:                                              ; preds = %182
  call void @_ZdlPv(ptr noundef %183) #26
  br label %191

191:                                              ; preds = %186, %190
  %192 = load ptr, ptr %9, align 8, !tbaa !97
  %193 = icmp eq ptr %192, %154
  br i1 %193, label %194, label %197, !prof !86

194:                                              ; preds = %191
  %195 = load i64, ptr %155, align 8, !tbaa !90
  %196 = icmp ult i64 %195, 16
  call void @llvm.assume(i1 %196)
  br label %198

197:                                              ; preds = %191
  call void @_ZdlPv(ptr noundef %192) #26
  br label %198

198:                                              ; preds = %194, %197
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  %199 = load ptr, ptr %1, align 8, !tbaa !93
  %200 = load ptr, ptr %19, align 8, !tbaa !95
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %216, label %202, !prof !102

202:                                              ; preds = %198, %212
  %203 = phi ptr [ %213, %212 ], [ %199, %198 ]
  %204 = load ptr, ptr %203, align 8, !tbaa !97
  %205 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %203, i64 0, i32 2
  %206 = icmp eq ptr %204, %205
  br i1 %206, label %207, label %211, !prof !105

207:                                              ; preds = %202
  %208 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %203, i64 0, i32 1
  %209 = load i64, ptr %208, align 8, !tbaa !90
  %210 = icmp ult i64 %209, 16
  call void @llvm.assume(i1 %210)
  br label %212

211:                                              ; preds = %202
  call void @_ZdlPv(ptr noundef %204) #26
  br label %212

212:                                              ; preds = %211, %207
  %213 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %203, i64 1
  %214 = icmp eq ptr %213, %200
  br i1 %214, label %215, label %202, !prof !103, !llvm.loop !99

215:                                              ; preds = %212
  store ptr %199, ptr %19, align 8, !tbaa !95
  br label %216

216:                                              ; preds = %198, %215
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii10PathSearch5emptyB5cxx11E)
          to label %217 unwind label %368, !prof !86

217:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #25
  %218 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %218, ptr %10, align 8, !tbaa !87
  store i32 1886284078, ptr %218, align 8
  %219 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  store i64 4, ptr %219, align 8, !tbaa !90
  %220 = getelementptr inbounds i8, ptr %10, i64 20
  store i8 0, ptr %220, align 4, !tbaa !92
  %221 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %222 unwind label %524, !prof !86

222:                                              ; preds = %217
  %223 = load ptr, ptr %10, align 8, !tbaa !97
  %224 = icmp eq ptr %223, %218
  br i1 %224, label %225, label %228, !prof !86

225:                                              ; preds = %222
  %226 = load i64, ptr %219, align 8, !tbaa !90
  %227 = icmp ult i64 %226, 16
  call void @llvm.assume(i1 %227)
  br label %229

228:                                              ; preds = %222
  call void @_ZdlPv(ptr noundef %223) #26
  br label %229

229:                                              ; preds = %225, %228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #25
  %230 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %230, ptr %11, align 8, !tbaa !87
  store i32 1633974318, ptr %230, align 8
  %231 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  store i64 4, ptr %231, align 8, !tbaa !90
  %232 = getelementptr inbounds i8, ptr %11, i64 20
  store i8 0, ptr %232, align 4, !tbaa !92
  %233 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %234 unwind label %533, !prof !86

234:                                              ; preds = %229
  %235 = load ptr, ptr %11, align 8, !tbaa !97
  %236 = icmp eq ptr %235, %230
  br i1 %236, label %237, label %240, !prof !86

237:                                              ; preds = %234
  %238 = load i64, ptr %231, align 8, !tbaa !90
  %239 = icmp ult i64 %238, 16
  call void @llvm.assume(i1 %239)
  br label %241

240:                                              ; preds = %234
  call void @_ZdlPv(ptr noundef %235) #26
  br label %241

241:                                              ; preds = %237, %240
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #25
  %242 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %242, ptr %12, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %242, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, i64 7, i1 false), !prof !89
  %243 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 7, ptr %243, align 8, !tbaa !90
  %244 = getelementptr inbounds i8, ptr %12, i64 23
  store i8 0, ptr %244, align 1, !tbaa !92
  %245 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %246 unwind label %542, !prof !86

246:                                              ; preds = %241
  %247 = load ptr, ptr %12, align 8, !tbaa !97
  %248 = icmp eq ptr %247, %242
  br i1 %248, label %249, label %252, !prof !86

249:                                              ; preds = %246
  %250 = load i64, ptr %243, align 8, !tbaa !90
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %253

252:                                              ; preds = %246
  call void @_ZdlPv(ptr noundef %247) #26
  br label %253

253:                                              ; preds = %249, %252
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #25
  %254 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %254, ptr %13, align 8, !tbaa !87
  store i32 1952539694, ptr %254, align 8
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  store i64 4, ptr %255, align 8, !tbaa !90
  %256 = getelementptr inbounds i8, ptr %13, i64 20
  store i8 0, ptr %256, align 4, !tbaa !92
  %257 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %258 unwind label %551, !prof !86

258:                                              ; preds = %253
  %259 = load ptr, ptr %13, align 8, !tbaa !97
  %260 = icmp eq ptr %259, %254
  br i1 %260, label %261, label %264, !prof !86

261:                                              ; preds = %258
  %262 = load i64, ptr %255, align 8, !tbaa !90
  %263 = icmp ult i64 %262, 16
  call void @llvm.assume(i1 %263)
  br label %265

264:                                              ; preds = %258
  call void @_ZdlPv(ptr noundef %259) #26
  br label %265

265:                                              ; preds = %261, %264
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #25
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %266, ptr %14, align 8, !tbaa !87
  store i32 1953263662, ptr %266, align 8
  %267 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 4, ptr %267, align 8, !tbaa !90
  %268 = getelementptr inbounds i8, ptr %14, i64 20
  store i8 0, ptr %268, align 4, !tbaa !92
  %269 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %270 unwind label %560, !prof !86

270:                                              ; preds = %265
  %271 = load ptr, ptr %14, align 8, !tbaa !97
  %272 = icmp eq ptr %271, %266
  br i1 %272, label %273, label %276, !prof !86

273:                                              ; preds = %270
  %274 = load i64, ptr %267, align 8, !tbaa !90
  %275 = icmp ult i64 %274, 16
  call void @llvm.assume(i1 %275)
  br label %277

276:                                              ; preds = %270
  call void @_ZdlPv(ptr noundef %271) #26
  br label %277

277:                                              ; preds = %273, %276
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #25
  %278 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %278, ptr %15, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %278, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false), !prof !89
  %279 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 3, ptr %279, align 8, !tbaa !90
  %280 = getelementptr inbounds i8, ptr %15, i64 19
  store i8 0, ptr %280, align 1, !tbaa !92
  %281 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %282 unwind label %569, !prof !86

282:                                              ; preds = %277
  %283 = load ptr, ptr %15, align 8, !tbaa !97
  %284 = icmp eq ptr %283, %278
  br i1 %284, label %285, label %288, !prof !86

285:                                              ; preds = %282
  %286 = load i64, ptr %279, align 8, !tbaa !90
  %287 = icmp ult i64 %286, 16
  call void @llvm.assume(i1 %287)
  br label %289

288:                                              ; preds = %282
  call void @_ZdlPv(ptr noundef %283) #26
  br label %289

289:                                              ; preds = %285, %288
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #25
  %290 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %290, ptr %16, align 8, !tbaa !87
  store i32 1752395054, ptr %290, align 8
  %291 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 4, ptr %291, align 8, !tbaa !90
  %292 = getelementptr inbounds i8, ptr %16, i64 20
  store i8 0, ptr %292, align 4, !tbaa !92
  %293 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %294 unwind label %578, !prof !86

294:                                              ; preds = %289
  %295 = load ptr, ptr %16, align 8, !tbaa !97
  %296 = icmp eq ptr %295, %290
  br i1 %296, label %297, label %300, !prof !86

297:                                              ; preds = %294
  %298 = load i64, ptr %291, align 8, !tbaa !90
  %299 = icmp ult i64 %298, 16
  call void @llvm.assume(i1 %299)
  br label %301

300:                                              ; preds = %294
  call void @_ZdlPv(ptr noundef %295) #26
  br label %301

301:                                              ; preds = %297, %300
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #25
  %302 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %302, ptr %18, align 8, !tbaa !87
  store i32 1213416781, ptr %302, align 8
  %303 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 4, ptr %303, align 8, !tbaa !90
  %304 = getelementptr inbounds i8, ptr %18, i64 20
  store i8 0, ptr %304, align 4, !tbaa !92
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %305 unwind label %587, !prof !86

305:                                              ; preds = %301
  %306 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %307 unwind label %589, !prof !86

307:                                              ; preds = %305
  %308 = getelementptr inbounds %"struct.std::pair.6", ptr %17, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !93
  %310 = getelementptr inbounds %"struct.std::pair.6", ptr %17, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !95
  %312 = icmp eq ptr %309, %311
  br i1 %312, label %326, label %313, !prof !96

313:                                              ; preds = %307, %323
  %314 = phi ptr [ %324, %323 ], [ %309, %307 ]
  %315 = load ptr, ptr %314, align 8, !tbaa !97
  %316 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %314, i64 0, i32 2
  %317 = icmp eq ptr %315, %316
  br i1 %317, label %318, label %322, !prof !106

318:                                              ; preds = %313
  %319 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %314, i64 0, i32 1
  %320 = load i64, ptr %319, align 8, !tbaa !90
  %321 = icmp ult i64 %320, 16
  call void @llvm.assume(i1 %321)
  br label %323

322:                                              ; preds = %313
  call void @_ZdlPv(ptr noundef %315) #26
  br label %323

323:                                              ; preds = %322, %318
  %324 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %314, i64 1
  %325 = icmp eq ptr %324, %311
  br i1 %325, label %326, label %313, !prof !107, !llvm.loop !99

326:                                              ; preds = %323, %307
  %327 = load ptr, ptr %308, align 8, !tbaa !93
  %328 = icmp eq ptr %327, null
  br i1 %328, label %330, label %329, !prof !102

329:                                              ; preds = %326
  call void @_ZdlPv(ptr noundef %327) #26
  br label %330

330:                                              ; preds = %326, %329
  %331 = load ptr, ptr %17, align 8, !tbaa !97
  %332 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  %333 = icmp eq ptr %331, %332
  br i1 %333, label %334, label %338, !prof !86

334:                                              ; preds = %330
  %335 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %336 = load i64, ptr %335, align 8, !tbaa !90
  %337 = icmp ult i64 %336, 16
  call void @llvm.assume(i1 %337)
  br label %339

338:                                              ; preds = %330
  call void @_ZdlPv(ptr noundef %331) #26
  br label %339

339:                                              ; preds = %334, %338
  %340 = load ptr, ptr %18, align 8, !tbaa !97
  %341 = icmp eq ptr %340, %302
  br i1 %341, label %342, label %345, !prof !86

342:                                              ; preds = %339
  %343 = load i64, ptr %303, align 8, !tbaa !90
  %344 = icmp ult i64 %343, 16
  call void @llvm.assume(i1 %344)
  br label %346

345:                                              ; preds = %339
  call void @_ZdlPv(ptr noundef %340) #26
  br label %346

346:                                              ; preds = %342, %345
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #25
  %347 = load ptr, ptr %1, align 8, !tbaa !93
  %348 = load ptr, ptr %19, align 8, !tbaa !95
  %349 = icmp eq ptr %347, %348
  br i1 %349, label %363, label %350, !prof !96

350:                                              ; preds = %346, %360
  %351 = phi ptr [ %361, %360 ], [ %347, %346 ]
  %352 = load ptr, ptr %351, align 8, !tbaa !97
  %353 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %351, i64 0, i32 2
  %354 = icmp eq ptr %352, %353
  br i1 %354, label %355, label %359, !prof !106

355:                                              ; preds = %350
  %356 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %351, i64 0, i32 1
  %357 = load i64, ptr %356, align 8, !tbaa !90
  %358 = icmp ult i64 %357, 16
  call void @llvm.assume(i1 %358)
  br label %360

359:                                              ; preds = %350
  call void @_ZdlPv(ptr noundef %352) #26
  br label %360

360:                                              ; preds = %359, %355
  %361 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %351, i64 1
  %362 = icmp eq ptr %361, %348
  br i1 %362, label %363, label %350, !prof !107, !llvm.loop !99

363:                                              ; preds = %360, %346
  %364 = load ptr, ptr %1, align 8, !tbaa !93
  %365 = icmp eq ptr %364, null
  br i1 %365, label %367, label %366, !prof !102

366:                                              ; preds = %363
  call void @_ZdlPv(ptr noundef %364) #26
  br label %367

367:                                              ; preds = %363, %366
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret void

368:                                              ; preds = %216, %140, %0
  %369 = landingpad { ptr, i32 }
          cleanup
  br label %631

370:                                              ; preds = %20
  %371 = landingpad { ptr, i32 }
          cleanup
  br label %405

372:                                              ; preds = %24
  %373 = landingpad { ptr, i32 }
          cleanup
  %374 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !93
  %376 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !95
  %378 = icmp eq ptr %375, %377
  br i1 %378, label %392, label %379

379:                                              ; preds = %372, %389
  %380 = phi ptr [ %390, %389 ], [ %375, %372 ]
  %381 = load ptr, ptr %380, align 8, !tbaa !97
  %382 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %380, i64 0, i32 2
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %379
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %380, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !90
  %387 = icmp ult i64 %386, 16
  call void @llvm.assume(i1 %387)
  br label %389

388:                                              ; preds = %379
  call void @_ZdlPv(ptr noundef %381) #26
  br label %389

389:                                              ; preds = %388, %384
  %390 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %380, i64 1
  %391 = icmp eq ptr %390, %377
  br i1 %391, label %392, label %379, !llvm.loop !99

392:                                              ; preds = %389, %372
  %393 = load ptr, ptr %374, align 8, !tbaa !93
  %394 = icmp eq ptr %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  call void @_ZdlPv(ptr noundef %393) #26
  br label %396

396:                                              ; preds = %392, %395
  %397 = load ptr, ptr %2, align 8, !tbaa !97
  %398 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %399 = icmp eq ptr %397, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %396
  %401 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %402 = load i64, ptr %401, align 8, !tbaa !90
  %403 = icmp ult i64 %402, 16
  call void @llvm.assume(i1 %403)
  br label %405

404:                                              ; preds = %396
  call void @_ZdlPv(ptr noundef %397) #26
  br label %405

405:                                              ; preds = %404, %400, %370
  %406 = phi { ptr, i32 } [ %371, %370 ], [ %373, %400 ], [ %373, %404 ]
  %407 = load ptr, ptr %3, align 8, !tbaa !97
  %408 = icmp eq ptr %407, %21
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = load i64, ptr %22, align 8, !tbaa !90
  %411 = icmp ult i64 %410, 16
  call void @llvm.assume(i1 %411)
  br label %413

412:                                              ; preds = %405
  call void @_ZdlPv(ptr noundef %407) #26
  br label %413

413:                                              ; preds = %412, %409
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  br label %631

414:                                              ; preds = %65
  %415 = landingpad { ptr, i32 }
          cleanup
  br label %425

416:                                              ; preds = %67
  %417 = landingpad { ptr, i32 }
          cleanup
  %418 = load ptr, ptr %4, align 8, !tbaa !97
  %419 = icmp eq ptr %418, %66
  br i1 %419, label %420, label %424

420:                                              ; preds = %416
  %421 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %422 = load i64, ptr %421, align 8, !tbaa !90
  %423 = icmp ult i64 %422, 16
  call void @llvm.assume(i1 %423)
  br label %425

424:                                              ; preds = %416
  call void @_ZdlPv(ptr noundef %418) #26
  br label %425

425:                                              ; preds = %424, %420, %414
  %426 = phi { ptr, i32 } [ %415, %414 ], [ %417, %420 ], [ %417, %424 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %631

427:                                              ; preds = %77
  %428 = landingpad { ptr, i32 }
          cleanup
  br label %462

429:                                              ; preds = %81
  %430 = landingpad { ptr, i32 }
          cleanup
  %431 = getelementptr inbounds %"struct.std::pair.6", ptr %5, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !93
  %433 = getelementptr inbounds %"struct.std::pair.6", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !95
  %435 = icmp eq ptr %432, %434
  br i1 %435, label %449, label %436

436:                                              ; preds = %429, %446
  %437 = phi ptr [ %447, %446 ], [ %432, %429 ]
  %438 = load ptr, ptr %437, align 8, !tbaa !97
  %439 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %437, i64 0, i32 2
  %440 = icmp eq ptr %438, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %437, i64 0, i32 1
  %443 = load i64, ptr %442, align 8, !tbaa !90
  %444 = icmp ult i64 %443, 16
  call void @llvm.assume(i1 %444)
  br label %446

445:                                              ; preds = %436
  call void @_ZdlPv(ptr noundef %438) #26
  br label %446

446:                                              ; preds = %445, %441
  %447 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %437, i64 1
  %448 = icmp eq ptr %447, %434
  br i1 %448, label %449, label %436, !llvm.loop !99

449:                                              ; preds = %446, %429
  %450 = load ptr, ptr %431, align 8, !tbaa !93
  %451 = icmp eq ptr %450, null
  br i1 %451, label %453, label %452

452:                                              ; preds = %449
  call void @_ZdlPv(ptr noundef %450) #26
  br label %453

453:                                              ; preds = %449, %452
  %454 = load ptr, ptr %5, align 8, !tbaa !97
  %455 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %456 = icmp eq ptr %454, %455
  br i1 %456, label %457, label %461

457:                                              ; preds = %453
  %458 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %459 = load i64, ptr %458, align 8, !tbaa !90
  %460 = icmp ult i64 %459, 16
  call void @llvm.assume(i1 %460)
  br label %462

461:                                              ; preds = %453
  call void @_ZdlPv(ptr noundef %454) #26
  br label %462

462:                                              ; preds = %461, %457, %427
  %463 = phi { ptr, i32 } [ %428, %427 ], [ %430, %457 ], [ %430, %461 ]
  %464 = load ptr, ptr %6, align 8, !tbaa !97
  %465 = icmp eq ptr %464, %78
  br i1 %465, label %466, label %469

466:                                              ; preds = %462
  %467 = load i64, ptr %79, align 8, !tbaa !90
  %468 = icmp ult i64 %467, 16
  call void @llvm.assume(i1 %468)
  br label %470

469:                                              ; preds = %462
  call void @_ZdlPv(ptr noundef %464) #26
  br label %470

470:                                              ; preds = %469, %466
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #25
  br label %631

471:                                              ; preds = %141
  %472 = landingpad { ptr, i32 }
          cleanup
  %473 = load ptr, ptr %7, align 8, !tbaa !97
  %474 = icmp eq ptr %473, %142
  br i1 %474, label %475, label %478

475:                                              ; preds = %471
  %476 = load i64, ptr %143, align 8, !tbaa !90
  %477 = icmp ult i64 %476, 16
  call void @llvm.assume(i1 %477)
  br label %479

478:                                              ; preds = %471
  call void @_ZdlPv(ptr noundef %473) #26
  br label %479

479:                                              ; preds = %478, %475
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  br label %631

480:                                              ; preds = %153
  %481 = landingpad { ptr, i32 }
          cleanup
  br label %515

482:                                              ; preds = %157
  %483 = landingpad { ptr, i32 }
          cleanup
  %484 = getelementptr inbounds %"struct.std::pair.6", ptr %8, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !93
  %486 = getelementptr inbounds %"struct.std::pair.6", ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !95
  %488 = icmp eq ptr %485, %487
  br i1 %488, label %502, label %489

489:                                              ; preds = %482, %499
  %490 = phi ptr [ %500, %499 ], [ %485, %482 ]
  %491 = load ptr, ptr %490, align 8, !tbaa !97
  %492 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %490, i64 0, i32 2
  %493 = icmp eq ptr %491, %492
  br i1 %493, label %494, label %498

494:                                              ; preds = %489
  %495 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %490, i64 0, i32 1
  %496 = load i64, ptr %495, align 8, !tbaa !90
  %497 = icmp ult i64 %496, 16
  call void @llvm.assume(i1 %497)
  br label %499

498:                                              ; preds = %489
  call void @_ZdlPv(ptr noundef %491) #26
  br label %499

499:                                              ; preds = %498, %494
  %500 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %490, i64 1
  %501 = icmp eq ptr %500, %487
  br i1 %501, label %502, label %489, !llvm.loop !99

502:                                              ; preds = %499, %482
  %503 = load ptr, ptr %484, align 8, !tbaa !93
  %504 = icmp eq ptr %503, null
  br i1 %504, label %506, label %505

505:                                              ; preds = %502
  call void @_ZdlPv(ptr noundef %503) #26
  br label %506

506:                                              ; preds = %502, %505
  %507 = load ptr, ptr %8, align 8, !tbaa !97
  %508 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %509 = icmp eq ptr %507, %508
  br i1 %509, label %510, label %514

510:                                              ; preds = %506
  %511 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %512 = load i64, ptr %511, align 8, !tbaa !90
  %513 = icmp ult i64 %512, 16
  call void @llvm.assume(i1 %513)
  br label %515

514:                                              ; preds = %506
  call void @_ZdlPv(ptr noundef %507) #26
  br label %515

515:                                              ; preds = %514, %510, %480
  %516 = phi { ptr, i32 } [ %481, %480 ], [ %483, %510 ], [ %483, %514 ]
  %517 = load ptr, ptr %9, align 8, !tbaa !97
  %518 = icmp eq ptr %517, %154
  br i1 %518, label %519, label %522

519:                                              ; preds = %515
  %520 = load i64, ptr %155, align 8, !tbaa !90
  %521 = icmp ult i64 %520, 16
  call void @llvm.assume(i1 %521)
  br label %523

522:                                              ; preds = %515
  call void @_ZdlPv(ptr noundef %517) #26
  br label %523

523:                                              ; preds = %522, %519
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  br label %631

524:                                              ; preds = %217
  %525 = landingpad { ptr, i32 }
          cleanup
  %526 = load ptr, ptr %10, align 8, !tbaa !97
  %527 = icmp eq ptr %526, %218
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = load i64, ptr %219, align 8, !tbaa !90
  %530 = icmp ult i64 %529, 16
  call void @llvm.assume(i1 %530)
  br label %532

531:                                              ; preds = %524
  call void @_ZdlPv(ptr noundef %526) #26
  br label %532

532:                                              ; preds = %531, %528
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  br label %631

533:                                              ; preds = %229
  %534 = landingpad { ptr, i32 }
          cleanup
  %535 = load ptr, ptr %11, align 8, !tbaa !97
  %536 = icmp eq ptr %535, %230
  br i1 %536, label %537, label %540

537:                                              ; preds = %533
  %538 = load i64, ptr %231, align 8, !tbaa !90
  %539 = icmp ult i64 %538, 16
  call void @llvm.assume(i1 %539)
  br label %541

540:                                              ; preds = %533
  call void @_ZdlPv(ptr noundef %535) #26
  br label %541

541:                                              ; preds = %540, %537
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #25
  br label %631

542:                                              ; preds = %241
  %543 = landingpad { ptr, i32 }
          cleanup
  %544 = load ptr, ptr %12, align 8, !tbaa !97
  %545 = icmp eq ptr %544, %242
  br i1 %545, label %546, label %549

546:                                              ; preds = %542
  %547 = load i64, ptr %243, align 8, !tbaa !90
  %548 = icmp ult i64 %547, 16
  call void @llvm.assume(i1 %548)
  br label %550

549:                                              ; preds = %542
  call void @_ZdlPv(ptr noundef %544) #26
  br label %550

550:                                              ; preds = %549, %546
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #25
  br label %631

551:                                              ; preds = %253
  %552 = landingpad { ptr, i32 }
          cleanup
  %553 = load ptr, ptr %13, align 8, !tbaa !97
  %554 = icmp eq ptr %553, %254
  br i1 %554, label %555, label %558

555:                                              ; preds = %551
  %556 = load i64, ptr %255, align 8, !tbaa !90
  %557 = icmp ult i64 %556, 16
  call void @llvm.assume(i1 %557)
  br label %559

558:                                              ; preds = %551
  call void @_ZdlPv(ptr noundef %553) #26
  br label %559

559:                                              ; preds = %558, %555
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #25
  br label %631

560:                                              ; preds = %265
  %561 = landingpad { ptr, i32 }
          cleanup
  %562 = load ptr, ptr %14, align 8, !tbaa !97
  %563 = icmp eq ptr %562, %266
  br i1 %563, label %564, label %567

564:                                              ; preds = %560
  %565 = load i64, ptr %267, align 8, !tbaa !90
  %566 = icmp ult i64 %565, 16
  call void @llvm.assume(i1 %566)
  br label %568

567:                                              ; preds = %560
  call void @_ZdlPv(ptr noundef %562) #26
  br label %568

568:                                              ; preds = %567, %564
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #25
  br label %631

569:                                              ; preds = %277
  %570 = landingpad { ptr, i32 }
          cleanup
  %571 = load ptr, ptr %15, align 8, !tbaa !97
  %572 = icmp eq ptr %571, %278
  br i1 %572, label %573, label %576

573:                                              ; preds = %569
  %574 = load i64, ptr %279, align 8, !tbaa !90
  %575 = icmp ult i64 %574, 16
  call void @llvm.assume(i1 %575)
  br label %577

576:                                              ; preds = %569
  call void @_ZdlPv(ptr noundef %571) #26
  br label %577

577:                                              ; preds = %576, %573
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  br label %631

578:                                              ; preds = %289
  %579 = landingpad { ptr, i32 }
          cleanup
  %580 = load ptr, ptr %16, align 8, !tbaa !97
  %581 = icmp eq ptr %580, %290
  br i1 %581, label %582, label %585

582:                                              ; preds = %578
  %583 = load i64, ptr %291, align 8, !tbaa !90
  %584 = icmp ult i64 %583, 16
  call void @llvm.assume(i1 %584)
  br label %586

585:                                              ; preds = %578
  call void @_ZdlPv(ptr noundef %580) #26
  br label %586

586:                                              ; preds = %585, %582
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #25
  br label %631

587:                                              ; preds = %301
  %588 = landingpad { ptr, i32 }
          cleanup
  br label %622

589:                                              ; preds = %305
  %590 = landingpad { ptr, i32 }
          cleanup
  %591 = getelementptr inbounds %"struct.std::pair.6", ptr %17, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !93
  %593 = getelementptr inbounds %"struct.std::pair.6", ptr %17, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %594 = load ptr, ptr %593, align 8, !tbaa !95
  %595 = icmp eq ptr %592, %594
  br i1 %595, label %609, label %596

596:                                              ; preds = %589, %606
  %597 = phi ptr [ %607, %606 ], [ %592, %589 ]
  %598 = load ptr, ptr %597, align 8, !tbaa !97
  %599 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %597, i64 0, i32 2
  %600 = icmp eq ptr %598, %599
  br i1 %600, label %601, label %605

601:                                              ; preds = %596
  %602 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %597, i64 0, i32 1
  %603 = load i64, ptr %602, align 8, !tbaa !90
  %604 = icmp ult i64 %603, 16
  call void @llvm.assume(i1 %604)
  br label %606

605:                                              ; preds = %596
  call void @_ZdlPv(ptr noundef %598) #26
  br label %606

606:                                              ; preds = %605, %601
  %607 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %597, i64 1
  %608 = icmp eq ptr %607, %594
  br i1 %608, label %609, label %596, !llvm.loop !99

609:                                              ; preds = %606, %589
  %610 = load ptr, ptr %591, align 8, !tbaa !93
  %611 = icmp eq ptr %610, null
  br i1 %611, label %613, label %612

612:                                              ; preds = %609
  call void @_ZdlPv(ptr noundef %610) #26
  br label %613

613:                                              ; preds = %609, %612
  %614 = load ptr, ptr %17, align 8, !tbaa !97
  %615 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  %616 = icmp eq ptr %614, %615
  br i1 %616, label %617, label %621

617:                                              ; preds = %613
  %618 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %619 = load i64, ptr %618, align 8, !tbaa !90
  %620 = icmp ult i64 %619, 16
  call void @llvm.assume(i1 %620)
  br label %622

621:                                              ; preds = %613
  call void @_ZdlPv(ptr noundef %614) #26
  br label %622

622:                                              ; preds = %621, %617, %587
  %623 = phi { ptr, i32 } [ %588, %587 ], [ %590, %617 ], [ %590, %621 ]
  %624 = load ptr, ptr %18, align 8, !tbaa !97
  %625 = icmp eq ptr %624, %302
  br i1 %625, label %626, label %629

626:                                              ; preds = %622
  %627 = load i64, ptr %303, align 8, !tbaa !90
  %628 = icmp ult i64 %627, 16
  call void @llvm.assume(i1 %628)
  br label %630

629:                                              ; preds = %622
  call void @_ZdlPv(ptr noundef %624) #26
  br label %630

630:                                              ; preds = %629, %626
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #25
  br label %631

631:                                              ; preds = %630, %586, %577, %568, %559, %550, %541, %532, %523, %479, %470, %425, %413, %368
  %632 = phi { ptr, i32 } [ %623, %630 ], [ %579, %586 ], [ %570, %577 ], [ %561, %568 ], [ %552, %559 ], [ %543, %550 ], [ %534, %541 ], [ %525, %532 ], [ %369, %368 ], [ %516, %523 ], [ %472, %479 ], [ %463, %470 ], [ %426, %425 ], [ %406, %413 ]
  %633 = load ptr, ptr %1, align 8, !tbaa !93
  %634 = load ptr, ptr %19, align 8, !tbaa !95
  %635 = icmp eq ptr %633, %634
  br i1 %635, label %649, label %636

636:                                              ; preds = %631, %646
  %637 = phi ptr [ %647, %646 ], [ %633, %631 ]
  %638 = load ptr, ptr %637, align 8, !tbaa !97
  %639 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %637, i64 0, i32 2
  %640 = icmp eq ptr %638, %639
  br i1 %640, label %641, label %645

641:                                              ; preds = %636
  %642 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %637, i64 0, i32 1
  %643 = load i64, ptr %642, align 8, !tbaa !90
  %644 = icmp ult i64 %643, 16
  call void @llvm.assume(i1 %644)
  br label %646

645:                                              ; preds = %636
  call void @_ZdlPv(ptr noundef %638) #26
  br label %646

646:                                              ; preds = %645, %641
  %647 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %637, i64 1
  %648 = icmp eq ptr %647, %634
  br i1 %648, label %649, label %636, !llvm.loop !99

649:                                              ; preds = %646, %631
  %650 = load ptr, ptr %1, align 8, !tbaa !93
  %651 = icmp eq ptr %650, null
  br i1 %651, label %653, label %652

652:                                              ; preds = %649
  call void @_ZdlPv(ptr noundef %650) #26
  br label %653

653:                                              ; preds = %649, %652
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  resume { ptr, i32 } %632
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8, !prof !111

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !87
  %10 = load ptr, ptr %1, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !90
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %10, ptr noundef %13)
  %14 = load ptr, ptr %3, align 8, !tbaa !95
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 1
  store ptr %15, ptr %3, align 8, !tbaa !95
  br label %17

16:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %17

17:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = load ptr, ptr %1, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  %12 = add nuw nsw i64 %10, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %12, i1 false)
  br label %15

13:                                               ; preds = %3
  store ptr %5, ptr %0, align 8, !tbaa !97
  %14 = load i64, ptr %6, align 8, !tbaa !92
  store i64 %14, ptr %4, align 8, !tbaa !92
  br label %15

15:                                               ; preds = %8, %13
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !90
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !90
  store ptr %6, ptr %1, align 8, !tbaa !97
  store i64 0, ptr %16, align 8, !tbaa !90
  store i8 0, ptr %6, align 8, !tbaa !92
  %19 = getelementptr inbounds %"struct.std::pair.6", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %20 unwind label %21

20:                                               ; preds = %15
  ret void

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %0, align 8, !tbaa !97
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, ptr %18, align 8, !tbaa !90
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  br label %29

28:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #26
  br label %29

29:                                               ; preds = %25, %28
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 !prof !85 {
  %2 = load i64, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !112
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5, !prof !86

4:                                                ; preds = %1
  tail call void @_ZN6dealii10PathSearch18initialize_classesEv()
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch10path_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %7 = icmp eq ptr %6, getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0)
  br i1 %7, label %8, label %9, !prof !86

8:                                                ; preds = %5
  tail call void @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch10path_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1, i32 0, i64 32
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = alloca %"class.std::vector", align 8
  %3 = alloca %"struct.std::pair.6", align 8
  %4 = alloca %"struct.std::pair.6", align 8
  %5 = load i64, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !112
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !102

7:                                                ; preds = %1
  tail call void @_ZN6dealii10PathSearch18initialize_classesEv()
  br label %8

8:                                                ; preds = %7, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii10PathSearch5emptyB5cxx11E)
          to label %10 unwind label %102, !prof !86

10:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IRS6_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %11 unwind label %104, !prof !86

11:                                               ; preds = %10
  %12 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch10path_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %13 unwind label %106, !prof !86

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"struct.std::pair.6", ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %"struct.std::pair.6", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %32, label %19, !prof !96

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %30, %29 ], [ %15, %13 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %28, !prof !86

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !90
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %29

28:                                               ; preds = %19
  call void @_ZdlPv(ptr noundef %21) #26
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 1
  %31 = icmp eq ptr %30, %17
  br i1 %31, label %32, label %19, !prof !98, !llvm.loop !99

32:                                               ; preds = %29, %13
  %33 = load ptr, ptr %14, align 8, !tbaa !93
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !102

35:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %33) #26
  br label %36

36:                                               ; preds = %32, %35
  %37 = load ptr, ptr %3, align 8, !tbaa !97
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %44, !prof !86

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !90
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  br label %45

44:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %37) #26
  br label %45

45:                                               ; preds = %40, %44
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IRS6_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %46 unwind label %141, !prof !86

46:                                               ; preds = %45
  %47 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %48 unwind label %143, !prof !86

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"struct.std::pair.6", ptr %4, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = getelementptr inbounds %"struct.std::pair.6", ptr %4, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %67, label %54, !prof !96

54:                                               ; preds = %48, %64
  %55 = phi ptr [ %65, %64 ], [ %50, %48 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 0, i32 2
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %63, !prof !86

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !90
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %56) #26
  br label %64

64:                                               ; preds = %63, %59
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 1
  %66 = icmp eq ptr %65, %52
  br i1 %66, label %67, label %54, !prof !98, !llvm.loop !99

67:                                               ; preds = %64, %48
  %68 = load ptr, ptr %49, align 8, !tbaa !93
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !102

70:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %68) #26
  br label %71

71:                                               ; preds = %67, %70
  %72 = load ptr, ptr %4, align 8, !tbaa !97
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %79, !prof !86

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !90
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %80

79:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %72) #26
  br label %80

80:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  %81 = load ptr, ptr %2, align 8, !tbaa !93
  %82 = load ptr, ptr %9, align 8, !tbaa !95
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %97, label %84, !prof !96

84:                                               ; preds = %80, %94
  %85 = phi ptr [ %95, %94 ], [ %81, %80 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !97
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %85, i64 0, i32 2
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93, !prof !86

89:                                               ; preds = %84
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %85, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !90
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %94

93:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %86) #26
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %85, i64 1
  %96 = icmp eq ptr %95, %82
  br i1 %96, label %97, label %84, !prof !98, !llvm.loop !99

97:                                               ; preds = %94, %80
  %98 = load ptr, ptr %2, align 8, !tbaa !93
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !102

100:                                              ; preds = %97
  call void @_ZdlPv(ptr noundef %98) #26
  br label %101

101:                                              ; preds = %97, %100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void

102:                                              ; preds = %8
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %178

104:                                              ; preds = %10
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %139

106:                                              ; preds = %11
  %107 = landingpad { ptr, i32 }
          cleanup
  %108 = getelementptr inbounds %"struct.std::pair.6", ptr %3, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !93
  %110 = getelementptr inbounds %"struct.std::pair.6", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !95
  %112 = icmp eq ptr %109, %111
  br i1 %112, label %126, label %113

113:                                              ; preds = %106, %123
  %114 = phi ptr [ %124, %123 ], [ %109, %106 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !97
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 0, i32 2
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !90
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %115) #26
  br label %123

123:                                              ; preds = %122, %118
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 1
  %125 = icmp eq ptr %124, %111
  br i1 %125, label %126, label %113, !llvm.loop !99

126:                                              ; preds = %123, %106
  %127 = load ptr, ptr %108, align 8, !tbaa !93
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %127) #26
  br label %130

130:                                              ; preds = %126, %129
  %131 = load ptr, ptr %3, align 8, !tbaa !97
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !90
  %137 = icmp ult i64 %136, 16
  call void @llvm.assume(i1 %137)
  br label %139

138:                                              ; preds = %130
  call void @_ZdlPv(ptr noundef %131) #26
  br label %139

139:                                              ; preds = %138, %134, %104
  %140 = phi { ptr, i32 } [ %105, %104 ], [ %107, %134 ], [ %107, %138 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  br label %178

141:                                              ; preds = %45
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %176

143:                                              ; preds = %46
  %144 = landingpad { ptr, i32 }
          cleanup
  %145 = getelementptr inbounds %"struct.std::pair.6", ptr %4, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !93
  %147 = getelementptr inbounds %"struct.std::pair.6", ptr %4, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !95
  %149 = icmp eq ptr %146, %148
  br i1 %149, label %163, label %150

150:                                              ; preds = %143, %160
  %151 = phi ptr [ %161, %160 ], [ %146, %143 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !97
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %151, i64 0, i32 2
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %151, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !90
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  br label %160

159:                                              ; preds = %150
  call void @_ZdlPv(ptr noundef %152) #26
  br label %160

160:                                              ; preds = %159, %155
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %151, i64 1
  %162 = icmp eq ptr %161, %148
  br i1 %162, label %163, label %150, !llvm.loop !99

163:                                              ; preds = %160, %143
  %164 = load ptr, ptr %145, align 8, !tbaa !93
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %164) #26
  br label %167

167:                                              ; preds = %163, %166
  %168 = load ptr, ptr %4, align 8, !tbaa !97
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !90
  %174 = icmp ult i64 %173, 16
  call void @llvm.assume(i1 %174)
  br label %176

175:                                              ; preds = %167
  call void @_ZdlPv(ptr noundef %168) #26
  br label %176

176:                                              ; preds = %175, %171, %141
  %177 = phi { ptr, i32 } [ %142, %141 ], [ %144, %171 ], [ %144, %175 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  br label %178

178:                                              ; preds = %176, %139, %102
  %179 = phi { ptr, i32 } [ %177, %176 ], [ %140, %139 ], [ %103, %102 ]
  %180 = load ptr, ptr %2, align 8, !tbaa !93
  %181 = load ptr, ptr %9, align 8, !tbaa !95
  %182 = icmp eq ptr %180, %181
  br i1 %182, label %196, label %183

183:                                              ; preds = %178, %193
  %184 = phi ptr [ %194, %193 ], [ %180, %178 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !97
  %186 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %184, i64 0, i32 2
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %184, i64 0, i32 1
  %190 = load i64, ptr %189, align 8, !tbaa !90
  %191 = icmp ult i64 %190, 16
  call void @llvm.assume(i1 %191)
  br label %193

192:                                              ; preds = %183
  call void @_ZdlPv(ptr noundef %185) #26
  br label %193

193:                                              ; preds = %192, %188
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %184, i64 1
  %195 = icmp eq ptr %194, %181
  br i1 %195, label %196, label %183, !llvm.loop !99

196:                                              ; preds = %193, %178
  %197 = load ptr, ptr %2, align 8, !tbaa !93
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  call void @_ZdlPv(ptr noundef %197) #26
  br label %200

200:                                              ; preds = %196, %199
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  resume { ptr, i32 } %179
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii10PathSearch15get_suffix_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 align 2 !prof !85 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %3 = icmp eq ptr %2, getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0)
  br i1 %3, label %4, label %5, !prof !102

4:                                                ; preds = %1
  tail call void @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 32
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = load ptr, ptr %1, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef %8)
  %9 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %10 unwind label %16, !prof !86

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 1
  store ptr %9, ptr %11, align 8, !tbaa !109
  %12 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii10PathSearch15get_suffix_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %13 unwind label %16, !prof !86

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 2
  store ptr %12, ptr %14, align 8, !tbaa !109
  %15 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 3
  store i32 %2, ptr %15, align 8, !tbaa !113
  ret void

16:                                               ; preds = %10, %3
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %0, align 8, !tbaa !97
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !90
  %23 = icmp ult i64 %22, 16
  tail call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %25

25:                                               ; preds = %20, %24
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearch4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %3, ptr nocapture noundef readonly %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !annotation !76 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.dealii::PathSearch::ExcFileNotFound", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = getelementptr inbounds %"class.dealii::PathSearch", ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #25
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %18, ptr %8, align 8, !tbaa !87
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 0, ptr %19, align 8, !tbaa !90
  store i8 0, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %"class.dealii::PathSearch", ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !113
  %22 = icmp ugt i32 %21, 2
  br i1 %22, label %23, label %62

23:                                               ; preds = %5
  %24 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %25 unwind label %58

25:                                               ; preds = %23
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.15, i64 noundef 11)
          to label %27 unwind label %58

27:                                               ; preds = %25
  %28 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %29 unwind label %58

29:                                               ; preds = %27
  %30 = load ptr, ptr %1, align 8, !tbaa !97
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !90
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30, i64 noundef %32)
          to label %34 unwind label %58

34:                                               ; preds = %29
  %35 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %36 unwind label %58

36:                                               ; preds = %34
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %38 unwind label %58

38:                                               ; preds = %36
  %39 = load ptr, ptr %14, align 8, !tbaa !116
  %40 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = load ptr, ptr %39, align 8, !tbaa !93
  %43 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %44 unwind label %60

44:                                               ; preds = %38
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %42 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 5
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %48)
          to label %50 unwind label %60

50:                                               ; preds = %44
  %51 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %52 unwind label %60

52:                                               ; preds = %50
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull @.str.17, i64 noundef 13)
          to label %54 unwind label %60

54:                                               ; preds = %52
  %55 = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %62 unwind label %60

56:                                               ; preds = %172, %152, %154, %156, %158, %162, %164, %166, %168
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %326

58:                                               ; preds = %23, %25, %27, %29, %34, %36, %243
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %326

60:                                               ; preds = %52, %50, %44, %38, %54
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %326

62:                                               ; preds = %54, %5
  %63 = load ptr, ptr %14, align 8, !tbaa !116
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = icmp eq ptr %64, %17
  br i1 %65, label %237, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  br label %76

73:                                               ; preds = %191
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %77, i64 1
  %75 = icmp eq ptr %74, %17
  br i1 %75, label %237, label %76, !llvm.loop !117

76:                                               ; preds = %66, %73
  %77 = phi ptr [ %64, %66 ], [ %74, %73 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #25
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %78 unwind label %174

78:                                               ; preds = %76
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %79 = load i64, ptr %67, align 8, !tbaa !90, !noalias !118
  %80 = load i64, ptr %68, align 8, !tbaa !90, !noalias !118
  %81 = sub i64 4611686018427387903, %80
  %82 = icmp ult i64 %81, %79
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #27
          to label %84 unwind label %178

84:                                               ; preds = %83
  unreachable

85:                                               ; preds = %78
  %86 = load ptr, ptr %3, align 8, !tbaa !97, !noalias !118
  %87 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %86, i64 noundef %79)
          to label %88 unwind label %176

88:                                               ; preds = %85
  store ptr %69, ptr %9, align 8, !tbaa !87, !alias.scope !118
  %89 = load ptr, ptr %87, align 8, !tbaa !97
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 2
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !90
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  %96 = add nuw nsw i64 %94, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %69, ptr noundef nonnull align 8 dereferenceable(1) %90, i64 %96, i1 false)
  br label %99

97:                                               ; preds = %88
  store ptr %89, ptr %9, align 8, !tbaa !97, !alias.scope !118
  %98 = load i64, ptr %90, align 8, !tbaa !92
  store i64 %98, ptr %69, align 8, !tbaa !92, !alias.scope !118
  br label %99

99:                                               ; preds = %92, %97
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !90
  store i64 %101, ptr %70, align 8, !tbaa !90, !alias.scope !118
  store ptr %90, ptr %87, align 8, !tbaa !97
  store i64 0, ptr %100, align 8, !tbaa !90
  store i8 0, ptr %90, align 8, !tbaa !92
  %102 = load ptr, ptr %8, align 8, !tbaa !97
  %103 = icmp eq ptr %102, %18
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i64, ptr %19, align 8, !tbaa !90
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load ptr, ptr %9, align 8, !tbaa !97
  %109 = icmp eq ptr %108, %69
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i64, ptr %70, align 8, !tbaa !90
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  switch i64 %111, label %115 [
    i64 0, label %116
    i64 1, label %113
  ]

113:                                              ; preds = %110
  %114 = load i8, ptr %108, align 1, !tbaa !92
  store i8 %114, ptr %102, align 1, !tbaa !92
  br label %116

115:                                              ; preds = %110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr align 1 %108, i64 %111, i1 false)
  br label %116

116:                                              ; preds = %115, %113, %110
  %117 = load i64, ptr %70, align 8, !tbaa !90
  store i64 %117, ptr %19, align 8, !tbaa !90
  %118 = load ptr, ptr %8, align 8, !tbaa !97
  %119 = getelementptr inbounds i8, ptr %118, i64 %117
  store i8 0, ptr %119, align 1, !tbaa !92
  br label %134

120:                                              ; preds = %107
  br i1 %103, label %121, label %124

121:                                              ; preds = %120
  %122 = load i64, ptr %19, align 8, !tbaa !90
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %126

124:                                              ; preds = %120
  %125 = load i64, ptr %18, align 8, !tbaa !92
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi ptr [ null, %121 ], [ %102, %124 ]
  %128 = phi i64 [ undef, %121 ], [ %125, %124 ]
  store ptr %108, ptr %8, align 8, !tbaa !97
  %129 = load i64, ptr %70, align 8, !tbaa !90
  store i64 %129, ptr %19, align 8, !tbaa !90
  %130 = load i64, ptr %69, align 8, !tbaa !92
  store i64 %130, ptr %18, align 8, !tbaa !92
  %131 = icmp eq ptr %127, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  store ptr %127, ptr %9, align 8, !tbaa !97
  store i64 %128, ptr %69, align 8, !tbaa !92
  br label %134

133:                                              ; preds = %126
  store ptr %69, ptr %9, align 8, !tbaa !97
  br label %134

134:                                              ; preds = %116, %132, %133
  store i64 0, ptr %70, align 8, !tbaa !90
  %135 = load ptr, ptr %9, align 8, !tbaa !97
  store i8 0, ptr %135, align 1, !tbaa !92
  %136 = load ptr, ptr %9, align 8, !tbaa !97
  %137 = icmp eq ptr %136, %69
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i64, ptr %70, align 8, !tbaa !90
  %140 = icmp ult i64 %139, 16
  call void @llvm.assume(i1 %140)
  br label %142

141:                                              ; preds = %134
  call void @_ZdlPv(ptr noundef %136) #26
  br label %142

142:                                              ; preds = %138, %141
  %143 = load ptr, ptr %10, align 8, !tbaa !97
  %144 = icmp eq ptr %143, %71
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, ptr %68, align 8, !tbaa !90
  %147 = icmp ult i64 %146, 16
  call void @llvm.assume(i1 %147)
  br label %149

148:                                              ; preds = %142
  call void @_ZdlPv(ptr noundef %143) #26
  br label %149

149:                                              ; preds = %145, %148
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  %150 = load i32, ptr %20, align 8, !tbaa !113
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %191

152:                                              ; preds = %149
  %153 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %154 unwind label %56

154:                                              ; preds = %152
  %155 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef nonnull @.str.15, i64 noundef 11)
          to label %156 unwind label %56

156:                                              ; preds = %154
  %157 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %158 unwind label %56

158:                                              ; preds = %156
  %159 = load ptr, ptr %1, align 8, !tbaa !97
  %160 = load i64, ptr %72, align 8, !tbaa !90
  %161 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef %159, i64 noundef %160)
          to label %162 unwind label %56

162:                                              ; preds = %158
  %163 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %164 unwind label %56

164:                                              ; preds = %162
  %165 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull @.str.18, i64 noundef 9)
          to label %166 unwind label %56

166:                                              ; preds = %164
  %167 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %168 unwind label %56

168:                                              ; preds = %166
  %169 = load ptr, ptr %8, align 8, !tbaa !97
  %170 = load i64, ptr %19, align 8, !tbaa !90
  %171 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %167, ptr noundef %169, i64 noundef %170)
          to label %172 unwind label %56

172:                                              ; preds = %168
  %173 = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %191 unwind label %56

174:                                              ; preds = %76
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %189

176:                                              ; preds = %85
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %180

178:                                              ; preds = %83
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi { ptr, i32 } [ %177, %176 ], [ %179, %178 ]
  %182 = load ptr, ptr %10, align 8, !tbaa !97
  %183 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %184 = icmp eq ptr %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i64, ptr %68, align 8, !tbaa !90
  %187 = icmp ult i64 %186, 16
  call void @llvm.assume(i1 %187)
  br label %189

188:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %182) #26
  br label %189

189:                                              ; preds = %188, %185, %174
  %190 = phi { ptr, i32 } [ %175, %174 ], [ %181, %185 ], [ %181, %188 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  br label %326

191:                                              ; preds = %172, %149
  %192 = load ptr, ptr %8, align 8, !tbaa !97
  %193 = call noalias ptr @fopen(ptr noundef %192, ptr noundef %4)
  %194 = icmp eq ptr %193, null
  br i1 %194, label %73, label %195

195:                                              ; preds = %191
  %196 = load i32, ptr %20, align 8, !tbaa !113
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %195
  %199 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %200 unwind label %221

200:                                              ; preds = %198
  %201 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull @.str.15, i64 noundef 11)
          to label %202 unwind label %221

202:                                              ; preds = %200
  %203 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %204 unwind label %221

204:                                              ; preds = %202
  %205 = load ptr, ptr %1, align 8, !tbaa !97
  %206 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !90
  %208 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %203, ptr noundef %205, i64 noundef %207)
          to label %209 unwind label %221

209:                                              ; preds = %204
  %210 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %211 unwind label %221

211:                                              ; preds = %209
  %212 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %210, ptr noundef nonnull @.str.19, i64 noundef 9)
          to label %213 unwind label %221

213:                                              ; preds = %211
  %214 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
          to label %215 unwind label %221

215:                                              ; preds = %213
  %216 = load ptr, ptr %8, align 8, !tbaa !97
  %217 = load i64, ptr %19, align 8, !tbaa !90
  %218 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %214, ptr noundef %216, i64 noundef %217)
          to label %219 unwind label %221

219:                                              ; preds = %215
  %220 = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %223 unwind label %221

221:                                              ; preds = %215, %213, %211, %209, %204, %202, %200, %198, %219
  %222 = landingpad { ptr, i32 }
          cleanup
  br label %326

223:                                              ; preds = %219, %195
  %224 = call i32 @fclose(ptr noundef nonnull %193)
  %225 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %225, ptr %0, align 8, !tbaa !87
  %226 = load ptr, ptr %8, align 8, !tbaa !97
  %227 = icmp eq ptr %226, %18
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i64, ptr %19, align 8, !tbaa !90
  %230 = icmp ult i64 %229, 16
  call void @llvm.assume(i1 %230)
  %231 = add nuw nsw i64 %229, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %225, ptr noundef nonnull align 8 dereferenceable(1) %18, i64 %231, i1 false)
  br label %234

232:                                              ; preds = %223
  store ptr %226, ptr %0, align 8, !tbaa !97
  %233 = load i64, ptr %18, align 8, !tbaa !92
  store i64 %233, ptr %225, align 8, !tbaa !92
  br label %234

234:                                              ; preds = %228, %232
  %235 = load i64, ptr %19, align 8, !tbaa !90
  %236 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %235, ptr %236, align 8, !tbaa !90
  store ptr %18, ptr %8, align 8, !tbaa !97
  br label %316

237:                                              ; preds = %73, %62
  %238 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %238, ptr %12, align 8, !tbaa !87
  %239 = load ptr, ptr %2, align 8, !tbaa !97
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %241 = load i64, ptr %240, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  store i64 %241, ptr %7, align 8, !tbaa !121
  %242 = icmp ugt i64 %241, 15
  br i1 %242, label %243, label %247, !prof !122

243:                                              ; preds = %237
  %244 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %245 unwind label %58

245:                                              ; preds = %243
  store ptr %244, ptr %12, align 8, !tbaa !97
  %246 = load i64, ptr %7, align 8, !tbaa !121
  store i64 %246, ptr %238, align 8, !tbaa !92
  br label %247

247:                                              ; preds = %245, %237
  %248 = load ptr, ptr %12, align 8, !tbaa !97
  switch i64 %241, label %251 [
    i64 1, label %249
    i64 0, label %252
  ], !prof !123

249:                                              ; preds = %247
  %250 = load i8, ptr %239, align 1, !tbaa !92
  store i8 %250, ptr %248, align 1, !tbaa !92
  br label %252

251:                                              ; preds = %247
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %248, ptr align 1 %239, i64 %241, i1 false), !prof !124
  br label %252

252:                                              ; preds = %247, %249, %251
  %253 = load i64, ptr %7, align 8, !tbaa !121
  %254 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 %253, ptr %254, align 8, !tbaa !90
  %255 = load ptr, ptr %12, align 8, !tbaa !97
  %256 = getelementptr inbounds i8, ptr %255, i64 %253
  store i8 0, ptr %256, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %257, ptr %13, align 8, !tbaa !87
  %258 = load ptr, ptr %1, align 8, !tbaa !97
  %259 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %260 = load i64, ptr %259, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store i64 %260, ptr %6, align 8, !tbaa !121
  %261 = icmp ugt i64 %260, 15
  br i1 %261, label %262, label %266, !prof !122

262:                                              ; preds = %252
  %263 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %264 unwind label %294

264:                                              ; preds = %262
  store ptr %263, ptr %13, align 8, !tbaa !97
  %265 = load i64, ptr %6, align 8, !tbaa !121
  store i64 %265, ptr %257, align 8, !tbaa !92
  br label %266

266:                                              ; preds = %264, %252
  %267 = load ptr, ptr %13, align 8, !tbaa !97
  switch i64 %260, label %270 [
    i64 1, label %268
    i64 0, label %271
  ], !prof !123

268:                                              ; preds = %266
  %269 = load i8, ptr %258, align 1, !tbaa !92
  store i8 %269, ptr %267, align 1, !tbaa !92
  br label %271

270:                                              ; preds = %266
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %267, ptr align 1 %258, i64 %260, i1 false), !prof !124
  br label %271

271:                                              ; preds = %266, %268, %270
  %272 = load i64, ptr %6, align 8, !tbaa !121
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  store i64 %272, ptr %273, align 8, !tbaa !90
  %274 = load ptr, ptr %13, align 8, !tbaa !97
  %275 = getelementptr inbounds i8, ptr %274, i64 %272
  store i8 0, ptr %275, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  invoke void @_ZN6dealii10PathSearch15ExcFileNotFoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull %12, ptr noundef nonnull %13)
          to label %276 unwind label %296

276:                                              ; preds = %271
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_10PathSearch15ExcFileNotFoundEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.20, i32 noundef 135, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %11)
          to label %277 unwind label %298

277:                                              ; preds = %276
  call void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #25
  %278 = load ptr, ptr %13, align 8, !tbaa !97
  %279 = icmp eq ptr %278, %257
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i64, ptr %273, align 8, !tbaa !90
  %282 = icmp ult i64 %281, 16
  call void @llvm.assume(i1 %282)
  br label %284

283:                                              ; preds = %277
  call void @_ZdlPv(ptr noundef %278) #26
  br label %284

284:                                              ; preds = %280, %283
  %285 = load ptr, ptr %12, align 8, !tbaa !97
  %286 = icmp eq ptr %285, %238
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i64, ptr %254, align 8, !tbaa !90
  %289 = icmp ult i64 %288, 16
  call void @llvm.assume(i1 %289)
  br label %291

290:                                              ; preds = %284
  call void @_ZdlPv(ptr noundef %285) #26
  br label %291

291:                                              ; preds = %287, %290
  %292 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %292, ptr %0, align 8, !tbaa !87
  %293 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  br label %316

294:                                              ; preds = %262
  %295 = landingpad { ptr, i32 }
          cleanup
  br label %308

296:                                              ; preds = %271
  %297 = landingpad { ptr, i32 }
          cleanup
  br label %300

298:                                              ; preds = %276
  %299 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #25
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi { ptr, i32 } [ %299, %298 ], [ %297, %296 ]
  %302 = load ptr, ptr %13, align 8, !tbaa !97
  %303 = icmp eq ptr %302, %257
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load i64, ptr %273, align 8, !tbaa !90
  %306 = icmp ult i64 %305, 16
  call void @llvm.assume(i1 %306)
  br label %308

307:                                              ; preds = %300
  call void @_ZdlPv(ptr noundef %302) #26
  br label %308

308:                                              ; preds = %307, %304, %294
  %309 = phi { ptr, i32 } [ %295, %294 ], [ %301, %304 ], [ %301, %307 ]
  %310 = load ptr, ptr %12, align 8, !tbaa !97
  %311 = icmp eq ptr %310, %238
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i64, ptr %254, align 8, !tbaa !90
  %314 = icmp ult i64 %313, 16
  call void @llvm.assume(i1 %314)
  br label %326

315:                                              ; preds = %308
  call void @_ZdlPv(ptr noundef %310) #26
  br label %326

316:                                              ; preds = %291, %234
  %317 = phi ptr [ %293, %291 ], [ %19, %234 ]
  %318 = phi ptr [ %292, %291 ], [ %18, %234 ]
  store i64 0, ptr %317, align 8, !tbaa !90
  store i8 0, ptr %318, align 8, !tbaa !92
  %319 = load ptr, ptr %8, align 8, !tbaa !97
  %320 = icmp eq ptr %319, %18
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = load i64, ptr %19, align 8, !tbaa !90
  %323 = icmp ult i64 %322, 16
  call void @llvm.assume(i1 %323)
  br label %325

324:                                              ; preds = %316
  call void @_ZdlPv(ptr noundef %319) #26
  br label %325

325:                                              ; preds = %321, %324
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  ret void

326:                                              ; preds = %56, %58, %315, %312, %221, %189, %60
  %327 = phi { ptr, i32 } [ %222, %221 ], [ %190, %189 ], [ %61, %60 ], [ %309, %312 ], [ %309, %315 ], [ %57, %56 ], [ %59, %58 ]
  %328 = load ptr, ptr %8, align 8, !tbaa !97
  %329 = icmp eq ptr %328, %18
  br i1 %329, label %330, label %333

330:                                              ; preds = %326
  %331 = load i64, ptr %19, align 8, !tbaa !90
  %332 = icmp ult i64 %331, 16
  call void @llvm.assume(i1 %332)
  br label %334

333:                                              ; preds = %326
  call void @_ZdlPv(ptr noundef %328) #26
  br label %334

334:                                              ; preds = %330, %333
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  resume { ptr, i32 } %327
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !125 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = load ptr, ptr %1, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef %8)
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !90
  %13 = sub i64 4611686018427387903, %12
  %14 = icmp ult i64 %13, %10
  br i1 %14, label %15, label %17, !prof !126

15:                                               ; preds = %3
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #27
          to label %16 unwind label %20

16:                                               ; preds = %15
  unreachable

17:                                               ; preds = %3
  %18 = load ptr, ptr %2, align 8, !tbaa !97
  %19 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %18, i64 noundef %10)
          to label %29 unwind label %20, !prof !127

20:                                               ; preds = %17, %15
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = load ptr, ptr %0, align 8, !tbaa !97
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, ptr %11, align 8, !tbaa !90
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %28

27:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef %22) #26
  br label %28

28:                                               ; preds = %24, %27
  resume { ptr, i32 } %21

29:                                               ; preds = %17
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_10PathSearch15ExcFileNotFoundEEEvPKciS6_S6_S6_T_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #25
  invoke void @_ZN6dealii10PathSearch15ExcFileNotFoundC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN6dealii10PathSearch15ExcFileNotFoundE, ptr nonnull @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev) #27
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #25
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii10PathSearch15ExcFileNotFoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii10PathSearch15ExcFileNotFoundE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !129
  %4 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 2
  store ptr %5, ptr %4, align 8, !tbaa !87
  %6 = load ptr, ptr %1, align 8, !tbaa !97
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %6, ptr noundef %9)
          to label %10 unwind label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2, i32 2
  store ptr %12, ptr %11, align 8, !tbaa !87
  %13 = load ptr, ptr %2, align 8, !tbaa !97
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %13, ptr noundef %16)
          to label %17 unwind label %20

17:                                               ; preds = %10
  ret void

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %29

20:                                               ; preds = %10
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = load ptr, ptr %4, align 8, !tbaa !97
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !90
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  br label %29

28:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef %22) #26
  br label %29

29:                                               ; preds = %28, %24, %18
  %30 = phi { ptr, i32 } [ %19, %18 ], [ %21, %24 ], [ %21, %28 ]
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #25
  resume { ptr, i32 } %30
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii10PathSearch15ExcFileNotFoundE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !129
  %2 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !90
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !90
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #26
  br label %21

21:                                               ; preds = %16, %20
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearch4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %5 = alloca %"class.dealii::PathSearch::ExcFileNotFound", align 8
  %6 = alloca %"class.dealii::PathSearch::ExcFileNotFound", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %"class.dealii::PathSearch", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %"class.dealii::PathSearch", ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !113
  %15 = icmp ugt i32 %14, 2
  br i1 %15, label %16, label %52, !prof !102

16:                                               ; preds = %4
  %17 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.15, i64 noundef 11)
  %19 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %20 = load ptr, ptr %1, align 8, !tbaa !97
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !90
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %20, i64 noundef %22)
  %24 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.16, i64 noundef 2)
  %26 = getelementptr inbounds %"class.dealii::PathSearch", ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !95
  %30 = load ptr, ptr %27, align 8, !tbaa !93
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 5
  %35 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %34)
  %37 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.17, i64 noundef 13)
  %39 = load ptr, ptr %9, align 8, !tbaa !131
  %40 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = load ptr, ptr %39, align 8, !tbaa !93
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = ashr exact i64 %45, 5
  %47 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %46)
  %49 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull @.str.23, i64 noundef 9)
  %51 = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %52

52:                                               ; preds = %16, %4
  %53 = load ptr, ptr %9, align 8, !tbaa !131
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = icmp eq ptr %54, %12
  br i1 %55, label %101, label %56, !prof !102

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %5, i64 0, i32 1
  br label %58

58:                                               ; preds = %56, %97
  %59 = phi ptr [ %54, %56 ], [ %99, %97 ]
  invoke void @_ZN6dealii10PathSearch4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef %3)
          to label %157 unwind label %60, !prof !86

60:                                               ; preds = %58
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6dealii10PathSearch15ExcFileNotFoundE
  %62 = extractvalue { ptr, i32 } %61, 0
  %63 = extractvalue { ptr, i32 } %61, 1
  %64 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN6dealii10PathSearch15ExcFileNotFoundE) #25
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %158

66:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #25
  %67 = call ptr @__cxa_get_exception_ptr(ptr %62) #25
  invoke void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(60) %67)
          to label %68 unwind label %160

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %5, i64 0, i32 1, i32 2
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii10PathSearch15ExcFileNotFoundE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !129
  %70 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %67, i64 0, i32 1
  store ptr %69, ptr %57, align 8, !tbaa !87
  %71 = load ptr, ptr %70, align 8, !tbaa !97
  %72 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %67, i64 0, i32 1, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !90
  %74 = getelementptr inbounds i8, ptr %71, i64 %73
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef %71, ptr noundef %74)
          to label %75 unwind label %83

75:                                               ; preds = %68
  %76 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %5, i64 0, i32 2
  %77 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %5, i64 0, i32 2, i32 2
  %78 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %67, i64 0, i32 2
  store ptr %77, ptr %76, align 8, !tbaa !87
  %79 = load ptr, ptr %78, align 8, !tbaa !97
  %80 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %67, i64 0, i32 2, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !90
  %82 = getelementptr inbounds i8, ptr %79, i64 %81
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef %79, ptr noundef %82)
          to label %97 unwind label %85

83:                                               ; preds = %68
  %84 = landingpad { ptr, i32 }
          catch ptr null
  br label %95

85:                                               ; preds = %75
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %5, i64 0, i32 1, i32 2
  %88 = load ptr, ptr %57, align 8, !tbaa !97
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %5, i64 0, i32 1, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !90
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %88) #26
  br label %95

95:                                               ; preds = %94, %90, %83
  %96 = phi { ptr, i32 } [ %84, %83 ], [ %86, %90 ], [ %86, %94 ]
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #25
  br label %162

97:                                               ; preds = %75
  %98 = call ptr @__cxa_begin_catch(ptr %62) #25
  call void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #25
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #25
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %59, i64 1
  %100 = icmp eq ptr %99, %12
  br i1 %100, label %101, label %58, !prof !102, !llvm.loop !132

101:                                              ; preds = %97, %52
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %102, ptr %7, align 8, !tbaa !87
  %103 = load ptr, ptr %2, align 8, !tbaa !97
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !90
  %106 = getelementptr inbounds i8, ptr %103, i64 %105
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %103, ptr noundef %106)
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %107, ptr %8, align 8, !tbaa !87
  %108 = load ptr, ptr %1, align 8, !tbaa !97
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !90
  %111 = getelementptr inbounds i8, ptr %108, i64 %110
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %108, ptr noundef %111)
          to label %112 unwind label %133

112:                                              ; preds = %101
  invoke void @_ZN6dealii10PathSearch15ExcFileNotFoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %113 unwind label %135

113:                                              ; preds = %112
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_10PathSearch15ExcFileNotFoundEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.20, i32 noundef 164, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %6)
          to label %114 unwind label %137

114:                                              ; preds = %113
  call void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  %115 = load ptr, ptr %8, align 8, !tbaa !97
  %116 = icmp eq ptr %115, %107
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !90
  %120 = icmp ult i64 %119, 16
  call void @llvm.assume(i1 %120)
  br label %122

121:                                              ; preds = %114
  call void @_ZdlPv(ptr noundef %115) #26
  br label %122

122:                                              ; preds = %117, %121
  %123 = load ptr, ptr %7, align 8, !tbaa !97
  %124 = icmp eq ptr %123, %102
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !90
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %130

129:                                              ; preds = %122
  call void @_ZdlPv(ptr noundef %123) #26
  br label %130

130:                                              ; preds = %125, %129
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %131, ptr %0, align 8, !tbaa !87
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %132, align 8, !tbaa !90
  store i8 0, ptr %131, align 8, !tbaa !92
  br label %157

133:                                              ; preds = %101
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %148

135:                                              ; preds = %112
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %139

137:                                              ; preds = %113
  %138 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %136, %135 ]
  %141 = load ptr, ptr %8, align 8, !tbaa !97
  %142 = icmp eq ptr %141, %107
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !90
  %146 = icmp ult i64 %145, 16
  call void @llvm.assume(i1 %146)
  br label %148

147:                                              ; preds = %139
  call void @_ZdlPv(ptr noundef %141) #26
  br label %148

148:                                              ; preds = %147, %143, %133
  %149 = phi { ptr, i32 } [ %134, %133 ], [ %140, %143 ], [ %140, %147 ]
  %150 = load ptr, ptr %7, align 8, !tbaa !97
  %151 = icmp eq ptr %150, %102
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %154 = load i64, ptr %153, align 8, !tbaa !90
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  br label %158

156:                                              ; preds = %148
  call void @_ZdlPv(ptr noundef %150) #26
  br label %158

157:                                              ; preds = %58, %130
  ret void

158:                                              ; preds = %60, %156, %152
  %159 = phi { ptr, i32 } [ %149, %152 ], [ %149, %156 ], [ %61, %60 ]
  resume { ptr, i32 } %159

160:                                              ; preds = %66
  %161 = landingpad { ptr, i32 }
          catch ptr null
  br label %162

162:                                              ; preds = %95, %160
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %96, %95 ]
  %164 = extractvalue { ptr, i32 } %163, 0
  call void @__clang_call_terminate(ptr %164) #24
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #11

declare ptr @__cxa_get_exception_ptr(ptr) local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii10PathSearch15ExcFileNotFoundC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii10PathSearch15ExcFileNotFoundE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !129
  %3 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 2
  store ptr %5, ptr %3, align 8, !tbaa !87
  %6 = load ptr, ptr %4, align 8, !tbaa !97
  %7 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %1, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %6, ptr noundef %9)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2, i32 2
  store ptr %13, ptr %11, align 8, !tbaa !87
  %14 = load ptr, ptr %12, align 8, !tbaa !97
  %15 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %1, i64 0, i32 2, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !90
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %14, ptr noundef %17)
          to label %18 unwind label %21

18:                                               ; preds = %10
  ret void

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %30

21:                                               ; preds = %10
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %3, align 8, !tbaa !97
  %24 = icmp eq ptr %23, %5
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !90
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  br label %30

29:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #26
  br label %30

30:                                               ; preds = %29, %25, %19
  %31 = phi { ptr, i32 } [ %20, %19 ], [ %22, %25 ], [ %22, %29 ]
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #25
  resume { ptr, i32 } %31
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !128 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IRS6_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !87
  %6 = load ptr, ptr %1, align 8, !tbaa !97
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %8, ptr %4, align 8, !tbaa !121
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %13, !prof !122

10:                                               ; preds = %3
  %11 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %11, ptr %0, align 8, !tbaa !97
  %12 = load i64, ptr %4, align 8, !tbaa !121
  store i64 %12, ptr %5, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %0, align 8, !tbaa !97
  switch i64 %8, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !123

15:                                               ; preds = %13
  %16 = load i8, ptr %6, align 1, !tbaa !92
  store i8 %16, ptr %14, align 1, !tbaa !92
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %6, i64 %8, i1 false), !prof !124
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !121
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !90
  %21 = load ptr, ptr %0, align 8, !tbaa !97
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %23 = getelementptr inbounds %"struct.std::pair.6", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %24 unwind label %25

24:                                               ; preds = %18
  ret void

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = load ptr, ptr %0, align 8, !tbaa !97
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, ptr %20, align 8, !tbaa !90
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  br label %33

32:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %27) #26
  br label %33

33:                                               ; preds = %29, %32
  resume { ptr, i32 } %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearch8add_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8PositionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !128 {
  switch i32 %2, label %26 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %12
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %15, ptr %17, ptr nonnull @_ZN6dealii10PathSearch5emptyB5cxx11E)
  %19 = load ptr, ptr %13, align 8, !tbaa !116
  %20 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !109
  %22 = icmp ne ptr %18, %21
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 %23
  %25 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %24, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %26

26:                                               ; preds = %3, %7, %12, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !109
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %80, label %16

16:                                               ; preds = %3
  %17 = icmp eq ptr %12, %1
  br i1 %17, label %18, label %39

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %19, ptr %12, align 8, !tbaa !87
  %20 = load ptr, ptr %2, align 8, !tbaa !97
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store i64 %22, ptr %5, align 8, !tbaa !121
  %23 = icmp ugt i64 %22, 15
  br i1 %23, label %24, label %27, !prof !122

24:                                               ; preds = %18
  %25 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
  store ptr %25, ptr %12, align 8, !tbaa !97
  %26 = load i64, ptr %5, align 8, !tbaa !121
  store i64 %26, ptr %19, align 8, !tbaa !92
  br label %27

27:                                               ; preds = %24, %18
  %28 = load ptr, ptr %12, align 8, !tbaa !97
  switch i64 %22, label %31 [
    i64 1, label %29
    i64 0, label %32
  ], !prof !123

29:                                               ; preds = %27
  %30 = load i8, ptr %20, align 1, !tbaa !92
  store i8 %30, ptr %28, align 1, !tbaa !92
  br label %32

31:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %20, i64 %22, i1 false), !prof !124
  br label %32

32:                                               ; preds = %27, %29, %31
  %33 = load i64, ptr %5, align 8, !tbaa !121
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 %33, ptr %34, align 8, !tbaa !90
  %35 = load ptr, ptr %12, align 8, !tbaa !97
  %36 = getelementptr inbounds i8, ptr %35, i64 %33
  store i8 0, ptr %36, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %37 = load ptr, ptr %11, align 8, !tbaa !95
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 1
  store ptr %38, ptr %11, align 8, !tbaa !95
  br label %82

39:                                               ; preds = %16
  %40 = getelementptr inbounds i8, ptr %7, i64 %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #25
  store ptr %0, ptr %6, align 8, !tbaa !133
  %41 = getelementptr inbounds %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", ptr %6, i64 0, i32 1
  store i8 0, ptr %41, align 8, !tbaa !92
  %42 = getelementptr inbounds %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", ptr %6, i64 0, i32 1, i32 0, i32 2
  store ptr %42, ptr %41, align 8, !tbaa !87
  %43 = load ptr, ptr %2, align 8, !tbaa !97
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %45, ptr %4, align 8, !tbaa !121
  %46 = icmp ugt i64 %45, 15
  br i1 %46, label %47, label %51, !prof !122

47:                                               ; preds = %39
  %48 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %48, ptr %41, align 8, !tbaa !97
  %49 = load i64, ptr %4, align 8, !tbaa !121
  %50 = getelementptr inbounds %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", ptr %6, i64 0, i32 1, i32 0, i32 2
  store i64 %49, ptr %50, align 8, !tbaa !92
  br label %51

51:                                               ; preds = %47, %39
  %52 = load ptr, ptr %41, align 8, !tbaa !97
  switch i64 %45, label %55 [
    i64 1, label %53
    i64 0, label %56
  ], !prof !123

53:                                               ; preds = %51
  %54 = load i8, ptr %43, align 1, !tbaa !92
  store i8 %54, ptr %52, align 1, !tbaa !92
  br label %56

55:                                               ; preds = %51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %43, i64 %45, i1 false), !prof !124
  br label %56

56:                                               ; preds = %51, %53, %55
  %57 = load i64, ptr %4, align 8, !tbaa !121
  %58 = getelementptr inbounds %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", ptr %6, i64 0, i32 1, i32 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !90
  %59 = load ptr, ptr %41, align 8, !tbaa !97
  %60 = getelementptr inbounds i8, ptr %59, i64 %57
  store i8 0, ptr %60, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %40, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %61 unwind label %70

61:                                               ; preds = %56
  %62 = load ptr, ptr %41, align 8, !tbaa !97
  %63 = icmp eq ptr %62, %42
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", ptr %6, i64 0, i32 1, i32 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !90
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %69

68:                                               ; preds = %61
  call void @_ZdlPv(ptr noundef %62) #26
  br label %69

69:                                               ; preds = %64, %68
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #25
  br label %82

70:                                               ; preds = %56
  %71 = landingpad { ptr, i32 }
          cleanup
  %72 = load ptr, ptr %41, align 8, !tbaa !97
  %73 = icmp eq ptr %72, %42
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", ptr %6, i64 0, i32 1, i32 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !90
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %70
  call void @_ZdlPv(ptr noundef %72) #26
  br label %79

79:                                               ; preds = %74, %78
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #25
  resume { ptr, i32 } %71

80:                                               ; preds = %3
  %81 = getelementptr inbounds i8, ptr %7, i64 %10
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %81, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %82

82:                                               ; preds = %32, %69, %80
  %83 = load ptr, ptr %0, align 8, !tbaa !93
  %84 = getelementptr inbounds i8, ptr %83, i64 %10
  ret ptr %84
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii10PathSearch10add_suffixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8PositionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !128 {
  switch i32 %2, label %26 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %12
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::PathSearch", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %15, ptr %17, ptr nonnull @_ZN6dealii10PathSearch5emptyB5cxx11E)
  %19 = load ptr, ptr %13, align 8, !tbaa !131
  %20 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !109
  %22 = icmp ne ptr %18, %21
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 %23
  %25 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %24, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %26

26:                                               ; preds = %3, %7, %12, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !128 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !137

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %22, label %9, !prof !138

9:                                                ; preds = %2, %19
  %10 = phi ptr [ %20, %19 ], [ %5, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18, !prof !139

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !90
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 1
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %22, label %9, !prof !140, !llvm.loop !99

22:                                               ; preds = %19, %2
  %23 = load ptr, ptr %4, align 8, !tbaa !93
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !141

25:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %23) #26
  br label %26

26:                                               ; preds = %22, %25
  %27 = load ptr, ptr %3, align 8, !tbaa !97
  %28 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !90
  %33 = icmp ult i64 %32, 16
  tail call void @llvm.assume(i1 %33)
  br label %35

34:                                               ; preds = %26
  tail call void @_ZdlPv(ptr noundef %27) #26
  br label %35

35:                                               ; preds = %30, %34
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %1, align 8, !tbaa !93
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !143

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !93
  store ptr %16, ptr %10, align 8, !tbaa !95
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !110
  %18 = load ptr, ptr %1, align 8, !tbaa !109
  %19 = load ptr, ptr %3, align 8, !tbaa !109
  %20 = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %18, ptr %19, ptr noundef %16)
          to label %21 unwind label %22, !prof !144

21:                                               ; preds = %15
  store ptr %20, ptr %10, align 8, !tbaa !95
  ret void

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %0, align 8, !tbaa !93
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %26, %22
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !145 {
  %4 = icmp ugt i64 %1, 288230376151711743
  br i1 %4, label %5, label %9, !prof !146

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 576460752303423487
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 !prof !142 {
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %50, label %6, !prof !147

6:                                                ; preds = %3, %23
  %7 = phi ptr [ %29, %23 ], [ %2, %3 ]
  %8 = phi ptr [ %28, %23 ], [ %0, %3 ]
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %9, ptr %7, align 8, !tbaa !87
  %10 = load ptr, ptr %8, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %12, ptr %4, align 8, !tbaa !121
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %18, !prof !122

14:                                               ; preds = %6
  %15 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %16 unwind label %31

16:                                               ; preds = %14
  store ptr %15, ptr %7, align 8, !tbaa !97
  %17 = load i64, ptr %4, align 8, !tbaa !121
  store i64 %17, ptr %9, align 8, !tbaa !92
  br label %18

18:                                               ; preds = %16, %6
  %19 = load ptr, ptr %7, align 8, !tbaa !97
  switch i64 %12, label %22 [
    i64 1, label %20
    i64 0, label %23
  ], !prof !123

20:                                               ; preds = %18
  %21 = load i8, ptr %10, align 1, !tbaa !92
  store i8 %21, ptr %19, align 1, !tbaa !92
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %10, i64 %12, i1 false), !prof !148
  br label %23

23:                                               ; preds = %18, %20, %22
  %24 = load i64, ptr %4, align 8, !tbaa !121
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !90
  %26 = load ptr, ptr %7, align 8, !tbaa !97
  %27 = getelementptr inbounds i8, ptr %26, i64 %24
  store i8 0, ptr %27, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 1
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %30 = icmp eq ptr %28, %1
  br i1 %30, label %50, label %6, !prof !149, !llvm.loop !150

31:                                               ; preds = %14
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #25
  %35 = icmp eq ptr %7, %2
  br i1 %35, label %49, label %36

36:                                               ; preds = %31, %46
  %37 = phi ptr [ %47, %46 ], [ %2, %31 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !97
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 2
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !90
  %44 = icmp ult i64 %43, 16
  call void @llvm.assume(i1 %44)
  br label %46

45:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %38) #26
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 1
  %48 = icmp eq ptr %47, %7
  br i1 %48, label %49, label %36, !llvm.loop !99

49:                                               ; preds = %46, %31
  invoke void @__cxa_rethrow() #27
          to label %58 unwind label %52

50:                                               ; preds = %23, %3
  %51 = phi ptr [ %2, %3 ], [ %29, %23 ]
  ret ptr %51

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %54 unwind label %55

54:                                               ; preds = %52
  resume { ptr, i32 } %53

55:                                               ; preds = %52
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @__clang_call_terminate(ptr %57) #24
  unreachable

58:                                               ; preds = %49
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii10PathSearch15ExcFileNotFoundD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 !prof !128 {
  tail call void @_ZN6dealii10PathSearch15ExcFileNotFoundD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #25
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6dealii10PathSearch15ExcFileNotFound10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.24, i64 noundef 10)
  %4 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5, i64 noundef %7)
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.25, i64 noundef 47)
  %10 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %"class.dealii::PathSearch::ExcFileNotFound", ptr %0, i64 0, i32 2, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !90
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %11, i64 noundef %13)
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %18, i8 noundef signext 10)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext %19)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !121
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !122

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !97
  %11 = load i64, ptr %4, align 8, !tbaa !121
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !97
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !123

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !92
  store i8 %16, ptr %14, align 1, !tbaa !92
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !152
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !121
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !90
  %21 = load ptr, ptr %0, align 8, !tbaa !97
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #7 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !153 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !121
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !154

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !97
  %11 = load i64, ptr %4, align 8, !tbaa !121
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !97
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !155

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !92
  store i8 %16, ptr %14, align 1, !tbaa !92
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !156
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !121
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !90
  %21 = load ptr, ptr %0, align 8, !tbaa !97
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = load ptr, ptr %0, align 8, !tbaa !109
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp eq i64 %10, 9223372036854775776
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

13:                                               ; preds = %3
  %14 = ashr exact i64 %10, 5
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  %16 = add i64 %15, %14
  %17 = icmp ult i64 %16, %14
  %18 = tail call i64 @llvm.umin.i64(i64 %16, i64 288230376151711743)
  %19 = select i1 %17, i64 288230376151711743, i64 %18
  %20 = ptrtoint ptr %1 to i64
  %21 = sub i64 %20, %9
  %22 = ashr exact i64 %21, 5
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = shl nuw nsw i64 %19, 5
  %26 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #28
  br label %27

27:                                               ; preds = %13, %24
  %28 = phi ptr [ %26, %24 ], [ null, %13 ]
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 %22
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 %22, i32 2
  store ptr %30, ptr %29, align 8, !tbaa !87
  %31 = load ptr, ptr %2, align 8, !tbaa !97
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %33, ptr %4, align 8, !tbaa !121
  %34 = icmp ugt i64 %33, 15
  br i1 %34, label %35, label %40, !prof !122

35:                                               ; preds = %27
  %36 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %37 unwind label %105

37:                                               ; preds = %35
  store ptr %36, ptr %29, align 8, !tbaa !97
  %38 = load i64, ptr %4, align 8, !tbaa !121
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 %22, i32 2
  store i64 %38, ptr %39, align 8, !tbaa !92
  br label %40

40:                                               ; preds = %37, %27
  %41 = load ptr, ptr %29, align 8, !tbaa !97
  switch i64 %33, label %44 [
    i64 1, label %42
    i64 0, label %45
  ], !prof !123

42:                                               ; preds = %40
  %43 = load i8, ptr %31, align 1, !tbaa !92
  store i8 %43, ptr %41, align 1, !tbaa !92
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %31, i64 %33, i1 false), !prof !124
  br label %45

45:                                               ; preds = %40, %42, %44
  %46 = load i64, ptr %4, align 8, !tbaa !121
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 %22, i32 1
  store i64 %46, ptr %47, align 8, !tbaa !90
  %48 = load ptr, ptr %29, align 8, !tbaa !97
  %49 = getelementptr inbounds i8, ptr %48, i64 %46
  store i8 0, ptr %49, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %50 = icmp eq ptr %7, %1
  br i1 %50, label %51, label %55

51:                                               ; preds = %69, %45
  %52 = phi ptr [ %28, %45 ], [ %74, %69 ]
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 1
  %54 = icmp eq ptr %6, %1
  br i1 %54, label %98, label %76

55:                                               ; preds = %45, %69
  %56 = phi ptr [ %74, %69 ], [ %28, %45 ]
  %57 = phi ptr [ %73, %69 ], [ %7, %45 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %58, ptr %56, align 8, !tbaa !87, !alias.scope !157, !noalias !160
  %59 = load ptr, ptr %57, align 8, !tbaa !97, !alias.scope !160, !noalias !157
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 2
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !90, !alias.scope !160, !noalias !157
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  %66 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %58, ptr noundef nonnull align 8 dereferenceable(1) %60, i64 %66, i1 false), !alias.scope !162
  br label %69

67:                                               ; preds = %55
  store ptr %59, ptr %56, align 8, !tbaa !97, !alias.scope !157, !noalias !160
  %68 = load i64, ptr %60, align 8, !tbaa !92, !alias.scope !160, !noalias !157
  store i64 %68, ptr %58, align 8, !tbaa !92, !alias.scope !157, !noalias !160
  br label %69

69:                                               ; preds = %67, %62
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !90, !alias.scope !160, !noalias !157
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %71, ptr %72, align 8, !tbaa !90, !alias.scope !157, !noalias !160
  store ptr %60, ptr %57, align 8, !tbaa !97, !alias.scope !160, !noalias !157
  store i64 0, ptr %70, align 8, !tbaa !90, !alias.scope !160, !noalias !157
  store i8 0, ptr %60, align 1, !tbaa !92, !alias.scope !160, !noalias !157
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 1
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 1
  %75 = icmp eq ptr %73, %1
  br i1 %75, label %51, label %55, !llvm.loop !163

76:                                               ; preds = %51, %91
  %77 = phi ptr [ %96, %91 ], [ %53, %51 ]
  %78 = phi ptr [ %77, %91 ], [ %52, %51 ]
  %79 = phi ptr [ %95, %91 ], [ %1, %51 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %78, i64 1, i32 2
  store ptr %80, ptr %77, align 8, !tbaa !87, !alias.scope !164, !noalias !167
  %81 = load ptr, ptr %79, align 8, !tbaa !97, !alias.scope !167, !noalias !164
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 2
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !90, !alias.scope !167, !noalias !164
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  %88 = add nuw nsw i64 %86, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %80, ptr noundef nonnull align 8 dereferenceable(1) %82, i64 %88, i1 false), !alias.scope !169
  br label %91

89:                                               ; preds = %76
  store ptr %81, ptr %77, align 8, !tbaa !97, !alias.scope !164, !noalias !167
  %90 = load i64, ptr %82, align 8, !tbaa !92, !alias.scope !167, !noalias !164
  store i64 %90, ptr %80, align 8, !tbaa !92, !alias.scope !164, !noalias !167
  br label %91

91:                                               ; preds = %89, %84
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !90, !alias.scope !167, !noalias !164
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %78, i64 1, i32 1
  store i64 %93, ptr %94, align 8, !tbaa !90, !alias.scope !164, !noalias !167
  store ptr %82, ptr %79, align 8, !tbaa !97, !alias.scope !167, !noalias !164
  store i64 0, ptr %92, align 8, !tbaa !90, !alias.scope !167, !noalias !164
  store i8 0, ptr %82, align 1, !tbaa !92, !alias.scope !167, !noalias !164
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 1
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %77, i64 1
  %97 = icmp eq ptr %95, %6
  br i1 %97, label %98, label %76, !llvm.loop !163

98:                                               ; preds = %91, %51
  %99 = phi ptr [ %53, %51 ], [ %96, %91 ]
  %100 = icmp eq ptr %7, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @_ZdlPv(ptr noundef %7) #26
  br label %102

102:                                              ; preds = %98, %101
  %103 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %28, ptr %0, align 8, !tbaa !93
  store ptr %99, ptr %5, align 8, !tbaa !95
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 %19
  store ptr %104, ptr %103, align 8, !tbaa !110
  ret void

105:                                              ; preds = %35
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  %108 = call ptr @__cxa_begin_catch(ptr %107) #25
  %109 = icmp eq ptr %28, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load ptr, ptr %29, align 8, !tbaa !97
  %112 = icmp eq ptr %111, %30
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 %22, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !90
  %116 = icmp ult i64 %115, 16
  call void @llvm.assume(i1 %116)
  br label %120

117:                                              ; preds = %110
  call void @_ZdlPv(ptr noundef %111) #26
  br label %120

118:                                              ; preds = %122
  %119 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %123 unwind label %124

120:                                              ; preds = %117, %113
  br i1 %109, label %122, label %121

121:                                              ; preds = %105, %120
  call void @_ZdlPv(ptr noundef %28) #26
  br label %122

122:                                              ; preds = %121, %120
  invoke void @__cxa_rethrow() #27
          to label %127 unwind label %118

123:                                              ; preds = %118
  resume { ptr, i32 } %119

124:                                              ; preds = %118
  %125 = landingpad { ptr, i32 }
          catch ptr null
  %126 = extractvalue { ptr, i32 } %125, 0
  call void @__clang_call_terminate(ptr %126) #24
  unreachable

127:                                              ; preds = %122
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = icmp ne ptr %4, null
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = icmp eq ptr %9, %5
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1, i32 0, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !90
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %14)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = load ptr, ptr %1, align 8, !tbaa !97
  %23 = tail call i32 @memcmp(ptr noundef %22, ptr noundef %21, i64 noundef %17) #25
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i32 [ %23, %19 ], [ 0, %12 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = sub i64 %14, %16
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 -2147483648)
  %30 = tail call i64 @llvm.smin.i64(i64 %29, i64 2147483647)
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ %25, %24 ], [ %31, %27 ]
  %34 = icmp slt i32 %33, 0
  br label %35

35:                                               ; preds = %7, %32
  %36 = phi i1 [ true, %7 ], [ %34, %32 ]
  %37 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %37, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %36, ptr noundef nonnull %37, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  %38 = getelementptr inbounds i8, ptr %0, i64 40
  %39 = load i64, ptr %38, align 8, !tbaa !112
  %40 = add i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !112
  br label %41

41:                                               ; preds = %2, %35
  %42 = phi ptr [ %37, %35 ], [ %4, %2 ]
  %43 = phi i8 [ 1, %35 ], [ 0, %2 ]
  %44 = insertvalue { ptr, i8 } poison, ptr %42, 0
  %45 = insertvalue { ptr, i8 } %44, i8 %43, 1
  ret { ptr, i8 } %45
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !109
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7, !prof !171

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !90
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi ptr [ %5, %7 ], [ %35, %29 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !90
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %9)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16, !prof !172

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  %20 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %19, i64 noundef %14) #25, !prof !173
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ %20, %16 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !174

24:                                               ; preds = %21
  %25 = sub i64 %9, %13
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %34 = select i1 %31, ptr %32, ptr %33, !prof !174
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %10, !prof !175, !llvm.loop !176

37:                                               ; preds = %29, %2
  %38 = phi ptr [ %4, %2 ], [ %11, %29 ]
  %39 = phi i1 [ true, %2 ], [ %31, %29 ]
  %40 = phi ptr [ %5, %2 ], [ %35, %29 ]
  br i1 %39, label %41, label %47, !prof !177

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %0, i64 24
  %43 = load ptr, ptr %42, align 8, !tbaa !178
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %73, label %45, !prof !175

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %38) #29
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi ptr [ %46, %45 ], [ %38, %37 ]
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1, i32 0, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !90
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !90
  %53 = tail call i64 @llvm.umin.i64(i64 %52, i64 %50)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55, !prof !179

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1
  %57 = load ptr, ptr %1, align 8, !tbaa !97
  %58 = load ptr, ptr %56, align 8, !tbaa !97
  %59 = tail call i32 @memcmp(ptr noundef %58, ptr noundef %57, i64 noundef %53) #25, !prof !180
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %59, %55 ], [ 0, %47 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68, !prof !105

63:                                               ; preds = %60
  %64 = sub i64 %50, %52
  %65 = tail call i64 @llvm.smax.i64(i64 %64, i64 -2147483648)
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 2147483647)
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i32 [ %61, %60 ], [ %67, %63 ]
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, ptr %40, ptr %48, !prof !105
  %72 = select i1 %70, ptr %38, ptr null, !prof !105
  br label %73

73:                                               ; preds = %68, %41
  %74 = phi ptr [ %40, %41 ], [ %71, %68 ]
  %75 = phi ptr [ %38, %41 ], [ %72, %68 ]
  %76 = insertvalue { ptr, ptr } poison, ptr %74, 0
  %77 = insertvalue { ptr, ptr } %76, ptr %75, 1
  ret { ptr, ptr } %77
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  store ptr %6, ptr %5, align 8, !tbaa !87
  %7 = load ptr, ptr %2, align 8, !tbaa !97
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %9, ptr %4, align 8, !tbaa !121
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %16, !prof !122

11:                                               ; preds = %3
  %12 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %13 unwind label %35

13:                                               ; preds = %11
  store ptr %12, ptr %5, align 8, !tbaa !97
  %14 = load i64, ptr %4, align 8, !tbaa !121
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  store i64 %14, ptr %15, align 8, !tbaa !92
  br label %16

16:                                               ; preds = %13, %3
  %17 = load ptr, ptr %5, align 8, !tbaa !97
  switch i64 %9, label %20 [
    i64 1, label %18
    i64 0, label %21
  ], !prof !123

18:                                               ; preds = %16
  %19 = load i8, ptr %7, align 1, !tbaa !92
  store i8 %19, ptr %17, align 1, !tbaa !92
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %7, i64 %9, i1 false), !prof !124
  br label %21

21:                                               ; preds = %16, %18, %20
  %22 = load i64, ptr %4, align 8, !tbaa !121
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  store i64 %22, ptr %23, align 8, !tbaa !90
  %24 = load ptr, ptr %5, align 8, !tbaa !97
  %25 = getelementptr inbounds i8, ptr %24, i64 %22
  store i8 0, ptr %25, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %27 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  store ptr %28, ptr %26, align 8, !tbaa !93
  %29 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %30 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  store ptr %31, ptr %29, align 8, !tbaa !95
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %33 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  store ptr %34, ptr %32, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  ret void

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  %38 = call ptr @__cxa_begin_catch(ptr %37) #25
  call void @_ZdlPv(ptr noundef %1) #26
  invoke void @__cxa_rethrow() #27
          to label %45 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %41 unwind label %42

41:                                               ; preds = %39
  resume { ptr, i32 } %40

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #24
  unreachable

45:                                               ; preds = %35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !87
  %10 = load ptr, ptr %1, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !90
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !97
  %19 = load i64, ptr %11, align 8, !tbaa !92
  store i64 %19, ptr %9, align 8, !tbaa !92
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !90
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !90
  store ptr %11, ptr %1, align 8, !tbaa !97
  store i64 0, ptr %21, align 8, !tbaa !90
  store i8 0, ptr %11, align 8, !tbaa !92
  %24 = load ptr, ptr %3, align 8, !tbaa !95
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !95
  br label %27

26:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %3, align 8, !tbaa !109
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 -1
  ret ptr %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = load ptr, ptr %0, align 8, !tbaa !109
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 5
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #28
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 2
  store ptr %29, ptr %28, align 8, !tbaa !87
  %30 = load ptr, ptr %2, align 8, !tbaa !97
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !90
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false)
  br label %40

38:                                               ; preds = %26
  store ptr %30, ptr %28, align 8, !tbaa !97
  %39 = load i64, ptr %31, align 8, !tbaa !92
  store i64 %39, ptr %29, align 8, !tbaa !92
  br label %40

40:                                               ; preds = %33, %38
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !90
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 1
  store i64 %42, ptr %43, align 8, !tbaa !90
  store ptr %31, ptr %2, align 8, !tbaa !97
  store i64 0, ptr %41, align 8, !tbaa !90
  store i8 0, ptr %31, align 8, !tbaa !92
  %44 = icmp eq ptr %6, %1
  br i1 %44, label %45, label %49

45:                                               ; preds = %63, %40
  %46 = phi ptr [ %27, %40 ], [ %68, %63 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 1
  %48 = icmp eq ptr %5, %1
  br i1 %48, label %92, label %70

49:                                               ; preds = %40, %63
  %50 = phi ptr [ %68, %63 ], [ %27, %40 ]
  %51 = phi ptr [ %67, %63 ], [ %6, %40 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %52, ptr %50, align 8, !tbaa !87, !alias.scope !181, !noalias !184
  %53 = load ptr, ptr %51, align 8, !tbaa !97, !alias.scope !184, !noalias !181
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !90, !alias.scope !184, !noalias !181
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !alias.scope !186
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %50, align 8, !tbaa !97, !alias.scope !181, !noalias !184
  %62 = load i64, ptr %54, align 8, !tbaa !92, !alias.scope !184, !noalias !181
  store i64 %62, ptr %52, align 8, !tbaa !92, !alias.scope !181, !noalias !184
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !90, !alias.scope !184, !noalias !181
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !90, !alias.scope !181, !noalias !184
  store ptr %54, ptr %51, align 8, !tbaa !97, !alias.scope !184, !noalias !181
  store i64 0, ptr %64, align 8, !tbaa !90, !alias.scope !184, !noalias !181
  store i8 0, ptr %54, align 1, !tbaa !92, !alias.scope !184, !noalias !181
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 1
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 1
  %69 = icmp eq ptr %67, %1
  br i1 %69, label %45, label %49, !llvm.loop !163

70:                                               ; preds = %45, %85
  %71 = phi ptr [ %90, %85 ], [ %47, %45 ]
  %72 = phi ptr [ %71, %85 ], [ %46, %45 ]
  %73 = phi ptr [ %89, %85 ], [ %1, %45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 2
  store ptr %74, ptr %71, align 8, !tbaa !87, !alias.scope !187, !noalias !190
  %75 = load ptr, ptr %73, align 8, !tbaa !97, !alias.scope !190, !noalias !187
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 2
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !90, !alias.scope !190, !noalias !187
  %81 = icmp ult i64 %80, 16
  tail call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %74, ptr noundef nonnull align 8 dereferenceable(1) %76, i64 %82, i1 false), !alias.scope !192
  br label %85

83:                                               ; preds = %70
  store ptr %75, ptr %71, align 8, !tbaa !97, !alias.scope !187, !noalias !190
  %84 = load i64, ptr %76, align 8, !tbaa !92, !alias.scope !190, !noalias !187
  store i64 %84, ptr %74, align 8, !tbaa !92, !alias.scope !187, !noalias !190
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !90, !alias.scope !190, !noalias !187
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !90, !alias.scope !187, !noalias !190
  store ptr %76, ptr %73, align 8, !tbaa !97, !alias.scope !190, !noalias !187
  store i64 0, ptr %86, align 8, !tbaa !90, !alias.scope !190, !noalias !187
  store i8 0, ptr %76, align 1, !tbaa !92, !alias.scope !190, !noalias !187
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 1
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1
  %91 = icmp eq ptr %89, %5
  br i1 %91, label %92, label %70, !llvm.loop !163

92:                                               ; preds = %85, %45
  %93 = phi ptr [ %47, %45 ], [ %90, %85 ]
  %94 = icmp eq ptr %6, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef %6) #26
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !93
  store ptr %93, ptr %4, align 8, !tbaa !95
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %18
  store ptr %98, ptr %97, align 8, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8, !prof !103

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !90
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !102

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = load ptr, ptr %1, align 8, !tbaa !97
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #25, !prof !194
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28, !prof !86

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6, !prof !102
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6, !prof !96

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !90
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !90
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17, !prof !195

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #25, !prof !196
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !197

24:                                               ; preds = %21
  %25 = sub i64 %14, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %34 = select i1 %31, ptr %12, ptr %11, !prof !198
  %35 = select i1 %31, ptr %32, ptr %33, !prof !198
  %36 = load ptr, ptr %35, align 8, !tbaa !109
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !prof !199, !llvm.loop !200

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8, !prof !179

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !90
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !179

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = load ptr, ptr %1, align 8, !tbaa !97
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #25, !prof !180
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28, !prof !105

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6, !prof !179
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6, !prof !96

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !90
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !90
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17, !prof !172

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #25, !prof !201
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !175

24:                                               ; preds = %21
  %25 = sub i64 %14, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %34 = select i1 %31, ptr %12, ptr %11, !prof !174
  %35 = select i1 %31, ptr %32, ptr %33, !prof !174
  %36 = load ptr, ptr %35, align 8, !tbaa !109
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !prof !104, !llvm.loop !202

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 -1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %7, ptr %5, align 8, !tbaa !87
  %8 = load ptr, ptr %6, align 8, !tbaa !97
  %9 = getelementptr %"class.std::__cxx11::basic_string", ptr %5, i64 -1, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr %"class.std::__cxx11::basic_string", ptr %5, i64 -1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !90
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false)
  br label %18

16:                                               ; preds = %3
  store ptr %8, ptr %5, align 8, !tbaa !97
  %17 = load i64, ptr %9, align 8, !tbaa !92
  store i64 %17, ptr %7, align 8, !tbaa !92
  br label %18

18:                                               ; preds = %11, %16
  %19 = getelementptr %"class.std::__cxx11::basic_string", ptr %5, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !90
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !90
  store ptr %9, ptr %6, align 8, !tbaa !97
  store i64 0, ptr %19, align 8, !tbaa !90
  store i8 0, ptr %9, align 1, !tbaa !92
  %22 = load ptr, ptr %4, align 8, !tbaa !95
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 1
  store ptr %23, ptr %4, align 8, !tbaa !95
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 -1
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 5
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %18, %76
  %31 = phi i64 [ %79, %76 ], [ %28, %18 ]
  %32 = phi ptr [ %35, %76 ], [ %22, %18 ]
  %33 = phi ptr [ %34, %76 ], [ %24, %18 ]
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 -1
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 -1
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = getelementptr %"class.std::__cxx11::basic_string", ptr %32, i64 -1, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = getelementptr %"class.std::__cxx11::basic_string", ptr %32, i64 -1, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !90
  %42 = icmp ult i64 %41, 16
  tail call void @llvm.assume(i1 %42)
  br label %43

43:                                               ; preds = %39, %30
  %44 = load ptr, ptr %34, align 8, !tbaa !97
  %45 = getelementptr %"class.std::__cxx11::basic_string", ptr %33, i64 -1, i32 2
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = getelementptr %"class.std::__cxx11::basic_string", ptr %33, i64 -1, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !90
  %50 = icmp ult i64 %49, 16
  tail call void @llvm.assume(i1 %50)
  switch i64 %49, label %53 [
    i64 0, label %54
    i64 1, label %51
  ]

51:                                               ; preds = %47
  %52 = load i8, ptr %44, align 1, !tbaa !92
  store i8 %52, ptr %36, align 1, !tbaa !92
  br label %54

53:                                               ; preds = %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %44, i64 %49, i1 false)
  br label %54

54:                                               ; preds = %53, %51, %47
  %55 = load i64, ptr %48, align 8, !tbaa !90
  %56 = getelementptr %"class.std::__cxx11::basic_string", ptr %32, i64 -1, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !90
  %57 = load ptr, ptr %35, align 8, !tbaa !97
  %58 = getelementptr inbounds i8, ptr %57, i64 %55
  store i8 0, ptr %58, align 1, !tbaa !92
  br label %76

59:                                               ; preds = %43
  br i1 %38, label %60, label %64

60:                                               ; preds = %59
  %61 = getelementptr %"class.std::__cxx11::basic_string", ptr %32, i64 -1, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !90
  %63 = icmp ult i64 %62, 16
  tail call void @llvm.assume(i1 %63)
  br label %66

64:                                               ; preds = %59
  %65 = load i64, ptr %37, align 8, !tbaa !92
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ null, %60 ], [ %36, %64 ]
  %68 = phi i64 [ undef, %60 ], [ %65, %64 ]
  store ptr %44, ptr %35, align 8, !tbaa !97
  %69 = getelementptr %"class.std::__cxx11::basic_string", ptr %33, i64 -1, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !90
  %71 = getelementptr %"class.std::__cxx11::basic_string", ptr %32, i64 -1, i32 1
  store i64 %70, ptr %71, align 8, !tbaa !90
  %72 = load i64, ptr %45, align 8, !tbaa !92
  store i64 %72, ptr %37, align 8, !tbaa !92
  %73 = icmp eq ptr %67, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store ptr %67, ptr %34, align 8, !tbaa !97
  store i64 %68, ptr %45, align 8, !tbaa !92
  br label %76

75:                                               ; preds = %66
  store ptr %45, ptr %34, align 8, !tbaa !97
  br label %76

76:                                               ; preds = %54, %74, %75
  %77 = getelementptr %"class.std::__cxx11::basic_string", ptr %33, i64 -1, i32 1
  store i64 0, ptr %77, align 8, !tbaa !90
  %78 = load ptr, ptr %34, align 8, !tbaa !97
  store i8 0, ptr %78, align 1, !tbaa !92
  %79 = add nsw i64 %31, -1
  %80 = icmp sgt i64 %31, 1
  br i1 %80, label %30, label %81, !llvm.loop !203

81:                                               ; preds = %76, %18
  %82 = load ptr, ptr %1, align 8, !tbaa !97
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !90
  %88 = icmp ult i64 %87, 16
  tail call void @llvm.assume(i1 %88)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load ptr, ptr %2, align 8, !tbaa !97
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !90
  %96 = icmp ult i64 %95, 16
  tail call void @llvm.assume(i1 %96)
  %97 = icmp eq ptr %2, %1
  br i1 %97, label %124, label %98, !prof !204

98:                                               ; preds = %93
  switch i64 %95, label %101 [
    i64 0, label %102
    i64 1, label %99
  ]

99:                                               ; preds = %98
  %100 = load i8, ptr %90, align 1, !tbaa !92
  store i8 %100, ptr %82, align 1, !tbaa !92
  br label %102

101:                                              ; preds = %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr align 1 %90, i64 %95, i1 false)
  br label %102

102:                                              ; preds = %101, %99, %98
  %103 = load i64, ptr %94, align 8, !tbaa !90
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  store i64 %103, ptr %104, align 8, !tbaa !90
  %105 = load ptr, ptr %1, align 8, !tbaa !97
  %106 = getelementptr inbounds i8, ptr %105, i64 %103
  store i8 0, ptr %106, align 1, !tbaa !92
  br label %124

107:                                              ; preds = %89
  br i1 %84, label %108, label %112

108:                                              ; preds = %107
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !90
  %111 = icmp ult i64 %110, 16
  tail call void @llvm.assume(i1 %111)
  br label %114

112:                                              ; preds = %107
  %113 = load i64, ptr %83, align 8, !tbaa !92
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi ptr [ null, %108 ], [ %82, %112 ]
  %116 = phi i64 [ undef, %108 ], [ %113, %112 ]
  store ptr %90, ptr %1, align 8, !tbaa !97
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !90
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  store i64 %118, ptr %119, align 8, !tbaa !90
  %120 = load i64, ptr %91, align 8, !tbaa !92
  store i64 %120, ptr %83, align 8, !tbaa !92
  %121 = icmp eq ptr %115, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  store ptr %115, ptr %2, align 8, !tbaa !97
  store i64 %116, ptr %91, align 8, !tbaa !92
  br label %124

123:                                              ; preds = %114
  store ptr %91, ptr %2, align 8, !tbaa !97
  br label %124

124:                                              ; preds = %93, %102, %122, %123
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 0, ptr %125, align 8, !tbaa !90
  %126 = load ptr, ptr %2, align 8, !tbaa !97
  store i8 0, ptr %126, align 1, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !128 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 7
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !90
  %12 = and i64 %6, -128
  %13 = getelementptr i8, ptr %0, i64 %12
  br label %14

14:                                               ; preds = %9, %63
  %15 = phi i64 [ %7, %9 ], [ %65, %63 ]
  %16 = phi ptr [ %0, %9 ], [ %64, %63 ]
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !90
  %19 = icmp eq i64 %18, %11
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %118, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %2, align 8, !tbaa !97
  %24 = load ptr, ptr %16, align 8, !tbaa !97
  %25 = tail call i32 @bcmp(ptr %24, ptr %23, i64 %18)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %118, label %27

27:                                               ; preds = %14, %22
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 1
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !90
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = icmp eq i64 %30, 0
  br i1 %33, label %118, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %2, align 8, !tbaa !97
  %36 = load ptr, ptr %28, align 8, !tbaa !97
  %37 = tail call i32 @bcmp(ptr %36, ptr %35, i64 %30)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %118, label %39

39:                                               ; preds = %27, %34
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 2
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 2, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !90
  %43 = icmp eq i64 %42, %11
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = icmp eq i64 %42, 0
  br i1 %45, label %118, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %2, align 8, !tbaa !97
  %48 = load ptr, ptr %40, align 8, !tbaa !97
  %49 = tail call i32 @bcmp(ptr %48, ptr %47, i64 %42)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %118, label %51

51:                                               ; preds = %39, %46
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 3
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 3, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !90
  %55 = icmp eq i64 %54, %11
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = icmp eq i64 %54, 0
  br i1 %57, label %118, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %2, align 8, !tbaa !97
  %60 = load ptr, ptr %52, align 8, !tbaa !97
  %61 = tail call i32 @bcmp(ptr %60, ptr %59, i64 %54)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %118, label %63

63:                                               ; preds = %51, %58
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 4
  %65 = add nsw i64 %15, -1
  %66 = icmp sgt i64 %15, 1
  br i1 %66, label %14, label %67, !llvm.loop !205

67:                                               ; preds = %63, %3
  %68 = phi ptr [ %0, %3 ], [ %13, %63 ]
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %4, %69
  %71 = ashr exact i64 %70, 5
  switch i64 %71, label %118 [
    i64 3, label %72
    i64 2, label %87
    i64 1, label %103
  ]

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !90
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !90
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = icmp eq i64 %74, 0
  br i1 %79, label %118, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %2, align 8, !tbaa !97
  %82 = load ptr, ptr %68, align 8, !tbaa !97
  %83 = tail call i32 @bcmp(ptr %82, ptr %81, i64 %74)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %118, label %85

85:                                               ; preds = %72, %80
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 1
  br label %87

87:                                               ; preds = %67, %85
  %88 = phi ptr [ %68, %67 ], [ %86, %85 ]
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %88, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !90
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !90
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = icmp eq i64 %90, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr %2, align 8, !tbaa !97
  %98 = load ptr, ptr %88, align 8, !tbaa !97
  %99 = tail call i32 @bcmp(ptr %98, ptr %97, i64 %90)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %87, %96
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %88, i64 1
  br label %103

103:                                              ; preds = %67, %101
  %104 = phi ptr [ %68, %67 ], [ %102, %101 ]
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %104, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !90
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !90
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = icmp eq i64 %106, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %2, align 8, !tbaa !97
  %114 = load ptr, ptr %104, align 8, !tbaa !97
  %115 = tail call i32 @bcmp(ptr %114, ptr %113, i64 %106)
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, ptr %104, ptr %1
  br label %118

118:                                              ; preds = %58, %46, %34, %56, %44, %32, %20, %22, %112, %110, %103, %96, %94, %78, %67, %80
  %119 = phi ptr [ %68, %80 ], [ %1, %67 ], [ %68, %78 ], [ %88, %94 ], [ %88, %96 ], [ %1, %103 ], [ %117, %112 ], [ %104, %110 ], [ %16, %22 ], [ %16, %20 ], [ %28, %32 ], [ %40, %44 ], [ %52, %56 ], [ %28, %34 ], [ %40, %46 ], [ %52, %58 ]
  ret ptr %119
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_path_search.cc() #18 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !85 !PGOFuncName !206 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #25
  store i32 0, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), align 8, !tbaa !207
  store ptr null, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !77
  store ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 2), align 8, !tbaa !178
  store ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 3), align 8, !tbaa !208
  store i64 0, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch10path_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !112
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev, ptr nonnull @_ZN6dealii10PathSearch10path_listsB5cxx11E, ptr nonnull @__dso_handle) #25
  store i32 0, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), align 8, !tbaa !207
  store ptr null, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !77
  store ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 2), align 8, !tbaa !178
  store ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 0, i32 3), align 8, !tbaa !208
  store i64 0, ptr getelementptr inbounds (%"class.std::map", ptr @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, i64 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !112
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev, ptr nonnull @_ZN6dealii10PathSearch12suffix_listsB5cxx11E, ptr nonnull @__dso_handle) #25
  store ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii10PathSearch5emptyB5cxx11E, i64 0, i32 2), ptr @_ZN6dealii10PathSearch5emptyB5cxx11E, align 8, !tbaa !87
  store i64 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii10PathSearch5emptyB5cxx11E, i64 0, i32 1), align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN6dealii10PathSearch5emptyB5cxx11E, i64 0, i32 2), align 8, !tbaa !92
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN6dealii10PathSearch5emptyB5cxx11E, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(none) }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!75}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!35 = !{ptr @_ZN6dealii10PathSearch18initialize_classesEv, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, i64 3}
!36 = !{ptr @_ZN6dealii10PathSearch18initialize_classesEv, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IS5_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, i64 4}
!37 = !{ptr @_ZN6dealii10PathSearch18initialize_classesEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_, i64 4}
!38 = !{ptr @_ZN6dealii10PathSearch18initialize_classesEv, ptr @_ZdlPv, i64 8}
!39 = !{ptr @_ZN6dealii10PathSearch18initialize_classesEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 1}
!40 = !{ptr @_ZN6dealii10PathSearch18initialize_classesEv, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_, i64 9}
!41 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 383}
!42 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, i64 1128}
!43 = !{ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN6dealii10PathSearch18initialize_classesEv, i64 1}
!44 = !{ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, i64 1}
!45 = !{ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 1}
!46 = !{ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, i64 1}
!47 = !{ptr @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, i64 1}
!48 = !{ptr @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEC2IRS6_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_, i64 2}
!49 = !{ptr @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE16_M_insert_uniqueISB_EES6_ISt17_Rb_tree_iteratorISB_EbEOT_, i64 2}
!50 = !{ptr @_ZN6dealii10PathSearch9add_classERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZdlPv, i64 3}
!51 = !{ptr @_ZN6dealii10PathSearch15get_suffix_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, i64 1}
!52 = !{ptr @_ZN6dealii10PathSearch15get_suffix_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, i64 1}
!53 = !{ptr @_ZN6dealii10PathSearchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 1}
!54 = !{ptr @_ZN6dealii10PathSearchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj, ptr @_ZN6dealii10PathSearch13get_path_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 1}
!55 = !{ptr @_ZN6dealii10PathSearchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj, ptr @_ZN6dealii10PathSearch15get_suffix_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 1}
!56 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 344}
!57 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 344}
!58 = !{ptr @_ZN6dealii10PathSearch4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc, ptr @_ZN6dealii10PathSearch4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKc, i64 1}
!59 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, i64 103}
!60 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_, i64 103}
!61 = !{ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, ptr @_Znwm, i64 1246}
!62 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 14}
!63 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_, ptr @_ZdlPv, i64 4}
!64 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 814}
!65 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 316}
!66 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_, ptr @memcmp, i64 6}
!67 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, i64 2}
!68 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @memcmp, i64 1}
!69 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @memcmp, i64 3}
!70 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_, i64 2}
!71 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @memcmp, i64 2}
!72 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_, ptr @memcmp, i64 4}
!73 = !{ptr @_GLOBAL__sub_I_path_search.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!74 = !{ptr @_GLOBAL__sub_I_path_search.cc, ptr @__cxa_atexit, i64 4}
!75 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!76 = !{!"instr_prof_hash_mismatch"}
!77 = !{!78, !83, i64 8}
!78 = !{!"_ZTSSt15_Rb_tree_header", !79, i64 0, !84, i64 32}
!79 = !{!"_ZTSSt18_Rb_tree_node_base", !80, i64 0, !83, i64 8, !83, i64 16, !83, i64 24}
!80 = !{!"_ZTSSt14_Rb_tree_color", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C++ TBAA"}
!83 = !{!"any pointer", !81, i64 0}
!84 = !{!"long", !81, i64 0}
!85 = !{!"function_entry_count", i64 1}
!86 = !{!"branch_weights", i32 1, i32 0}
!87 = !{!88, !83, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !83, i64 0}
!89 = !{!"VP", i32 1, i64 0, i64 5, i64 0, i64 9, i64 0, i64 2, i64 0, i64 4, i64 0}
!90 = !{!91, !84, i64 8}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !88, i64 0, !84, i64 8, !81, i64 16}
!92 = !{!81, !81, i64 0}
!93 = !{!94, !83, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!95 = !{!94, !83, i64 8}
!96 = !{!"branch_weights", i32 1, i32 127}
!97 = !{!91, !83, i64 0}
!98 = !{!"branch_weights", i32 127, i32 1}
!99 = distinct !{!99, !100, !101}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!"branch_weights", i32 0, i32 1}
!103 = !{!"branch_weights", i32 1, i32 1}
!104 = !{!"branch_weights", i32 127, i32 129}
!105 = !{!"branch_weights", i32 2, i32 0}
!106 = !{!"branch_weights", i32 8, i32 0}
!107 = !{!"branch_weights", i32 127, i32 897}
!108 = !{!"function_entry_count", i64 1511}
!109 = !{!83, !83, i64 0}
!110 = !{!94, !83, i64 16}
!111 = !{!"branch_weights", i32 1128, i32 383}
!112 = !{!78, !84, i64 32}
!113 = !{!114, !115, i64 48}
!114 = !{!"_ZTSN6dealii10PathSearchE", !91, i64 0, !83, i64 32, !83, i64 40, !115, i64 48}
!115 = !{!"int", !81, i64 0}
!116 = !{!114, !83, i64 32}
!117 = distinct !{!117, !100, !101}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!120 = distinct !{!120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!121 = !{!84, !84, i64 0}
!122 = !{!"branch_weights", i32 828, i32 42994}
!123 = !{!"branch_weights", i32 42637, i32 675, i32 510}
!124 = !{!"VP", i32 1, i64 0, i64 9, i64 0, i64 8, i64 0, i64 5, i64 0, i64 4, i64 0}
!125 = !{!"function_entry_count", i64 344}
!126 = !{!"branch_weights", i32 0, i32 344}
!127 = !{!"branch_weights", i32 344, i32 0}
!128 = !{!"function_entry_count", i64 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"vtable pointer", !82, i64 0}
!131 = !{!114, !83, i64 40}
!132 = distinct !{!132, !100, !101}
!133 = !{!134, !83, i64 0}
!134 = !{!"_ZTSNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueE", !83, i64 0, !81, i64 8}
!135 = !{!79, !83, i64 24}
!136 = !{!79, !83, i64 16}
!137 = distinct !{!137, !100, !101}
!138 = !{!"branch_weights", i32 1, i32 399}
!139 = !{!"branch_weights", i32 1316, i32 7}
!140 = !{!"branch_weights", i32 399, i32 924}
!141 = !{!"branch_weights", i32 0, i32 400}
!142 = !{!"function_entry_count", i64 103}
!143 = !{!"branch_weights", i32 0, i32 103}
!144 = !{!"branch_weights", i32 103, i32 0}
!145 = !{!"function_entry_count", i64 1246}
!146 = !{!"branch_weights", i32 0, i32 1246}
!147 = !{!"branch_weights", i32 1, i32 205}
!148 = !{!"VP", i32 1, i64 717, i64 9, i64 383, i64 8, i64 233, i64 5, i64 30, i64 4, i64 25}
!149 = !{!"branch_weights", i32 205, i32 1269}
!150 = distinct !{!150, !100, !101}
!151 = !{!"function_entry_count", i64 43085}
!152 = !{!"VP", i32 1, i64 41919, i64 9, i64 22396, i64 8, i64 13668, i64 5, i64 1763, i64 4, i64 1478}
!153 = !{!"function_entry_count", i64 67749}
!154 = !{!"branch_weights", i32 316, i32 67445}
!155 = !{!"branch_weights", i32 24258, i32 14677, i32 28826}
!156 = !{!"VP", i32 1, i64 24246, i64 5, i64 13738, i64 9, i64 8193, i64 2, i64 675, i64 4, i64 418}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!159 = distinct !{!159, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!162 = !{!158, !161}
!163 = distinct !{!163, !100, !101}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!166 = distinct !{!166, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!169 = !{!165, !168}
!170 = !{!"function_entry_count", i64 6}
!171 = !{!"branch_weights", i32 2, i32 4}
!172 = !{!"branch_weights", i32 0, i32 4}
!173 = !{!"VP", i32 1, i64 4, i64 4, i64 2, i64 9, i64 2}
!174 = !{!"branch_weights", i32 2, i32 2}
!175 = !{!"branch_weights", i32 4, i32 0}
!176 = distinct !{!176, !100, !101}
!177 = !{!"branch_weights", i32 4, i32 2}
!178 = !{!78, !83, i64 16}
!179 = !{!"branch_weights", i32 0, i32 2}
!180 = !{!"VP", i32 1, i64 2, i64 9, i64 2}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!183 = distinct !{!183, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!186 = !{!182, !185}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!189 = distinct !{!189, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!190 = !{!191}
!191 = distinct !{!191, !189, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!192 = !{!188, !191}
!193 = !{!"function_entry_count", i64 2}
!194 = !{!"VP", i32 1, i64 1, i64 9, i64 1}
!195 = !{!"branch_weights", i32 0, i32 3}
!196 = !{!"VP", i32 1, i64 3, i64 9, i64 3}
!197 = !{!"branch_weights", i32 3, i32 0}
!198 = !{!"branch_weights", i32 2, i32 1}
!199 = !{!"branch_weights", i32 127, i32 65}
!200 = distinct !{!200, !100, !101}
!201 = !{!"VP", i32 1, i64 4, i64 9, i64 4}
!202 = distinct !{!202, !100, !101}
!203 = distinct !{!203, !100, !101}
!204 = !{!"branch_weights", i32 1, i32 2000}
!205 = distinct !{!205, !100, !101}
!206 = !{!"source/base/path_search.cc;_GLOBAL__sub_I_path_search.cc"}
!207 = !{!78, !80, i64 0}
!208 = !{!78, !83, i64 24}
