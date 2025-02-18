; ModuleID = 'SGFTree.cpp'
source_filename = "SGFTree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.boost::array.4" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%class.KoState = type { %class.FastState.base, %"class.std::vector.7", %"class.std::vector.7" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.SGFTree = type { %class.KoState, %"class.std::vector.12", %"class.std::multimap" }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.GameState = type <{ %class.KoState, %"class.std::vector.20", %class.TimeControl, [4 x i8] }>
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.25", %"class.boost::array.26" }
%"class.boost::array.25" = type { [2 x i8] }
%"class.boost::array.26" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::pair.34" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::pair.30" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

$_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

$_ZNSt6vectorIySaIyEEaSERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_ = comdat any

$_ZNSt15_Rb_tree_headerC2EOS_ = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZSt8_DestroyI7SGFTreeEvPT_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZN7SGFTreeC2ERKS_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTISt9exception = external constant ptr
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SGFTree.cpp, ptr null }]

@_ZN7SGFTreeC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7SGFTreeC2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7SGFTreeC2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %3, i8 0, i64 192, i1 false), !tbaa !117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !127
  %7 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  store ptr %5, ptr %7, align 8, !tbaa !128
  %8 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %5, ptr %8, align 8, !tbaa !129
  %9 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %9, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN7SGFTree9get_stateEv(ptr noundef nonnull readnone returned align 8 dereferenceable(8512) %0) local_unnamed_addr #4 align 2 !prof !131 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7SGFTree9get_childEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !131 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = load ptr, ptr %4, align 8, !tbaa !134
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8512
  %12 = icmp ugt i64 %11, %3
  %13 = getelementptr inbounds %class.SGFTree, ptr %7, i64 %3
  %14 = select i1 %12, ptr %13, ptr null
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind noalias writable sret(%class.GameState) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8512) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %5, i8 0, i64 192, i1 false), !tbaa !117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  invoke void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %9, i32 noundef 9, i32 noundef 30000, i32 noundef 0, i32 noundef 25)
          to label %27 unwind label %10, !prof !136

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  %12 = load ptr, ptr %7, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %12) #26
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr %6, align 8, !tbaa !137
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %16) #26
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr %4, align 8, !tbaa !139
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %98
  %23 = phi ptr [ %99, %98 ], [ %20, %19 ]
  %24 = phi { ptr, i32 } [ %90, %98 ], [ %11, %19 ]
  tail call void @_ZdlPv(ptr noundef %23) #26
  br label %25

25:                                               ; preds = %22, %98, %19
  %26 = phi { ptr, i32 } [ %11, %19 ], [ %90, %98 ], [ %24, %22 ]
  resume { ptr, i32 } %26

27:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %28 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %29 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %30 unwind label %58, !prof !136

30:                                               ; preds = %27
  %31 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %32 = load i32, ptr %31, align 8, !tbaa !141
  %33 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %32, ptr %33, align 8, !tbaa !141
  %34 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %36 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull align 8 dereferenceable(124) %37, i64 124, i1 false)
  %38 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 9
  br label %39

39:                                               ; preds = %30, %39
  %40 = phi i64 [ 0, %30 ], [ %47, %39 ]
  %41 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %5, i64 0, i64 %40
  %42 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %38, i64 0, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa !152
  store i32 %43, ptr %41, align 4, !tbaa !152
  %44 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %38, i64 0, i64 %40, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !154
  %46 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %5, i64 0, i64 %40, i32 1
  store i32 %45, ptr %46, align 8, !tbaa !154
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, 24
  br i1 %48, label %49, label %39, !prof !155, !llvm.loop !156

49:                                               ; preds = %39
  %50 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %51 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %52 unwind label %58, !prof !136

52:                                               ; preds = %49
  %53 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %54 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %53)
          to label %55 unwind label %58, !prof !136

55:                                               ; preds = %52
  invoke void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %56 unwind label %58, !prof !136

56:                                               ; preds = %55
  %57 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %62 unwind label %60, !prof !136

58:                                               ; preds = %52, %49, %27, %55
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %89

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %89

62:                                               ; preds = %56, %77
  %63 = phi i32 [ %85, %77 ], [ 0, %56 ]
  %64 = phi i32 [ %78, %77 ], [ %57, %56 ]
  %65 = phi ptr [ %84, %77 ], [ %1, %56 ]
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %77, label %67, !prof !159

67:                                               ; preds = %62
  %68 = invoke noundef i32 @_ZN7SGFTree8get_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %65, i32 noundef %64)
          to label %69 unwind label %75, !prof !160

69:                                               ; preds = %67
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %77, label %71, !prof !161

71:                                               ; preds = %69
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %68)
          to label %72 unwind label %75, !prof !160

72:                                               ; preds = %71
  %73 = icmp eq i32 %64, 0
  %74 = zext i1 %73 to i32
  br label %77

75:                                               ; preds = %71, %67
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %89

77:                                               ; preds = %69, %72, %62
  %78 = phi i32 [ %64, %62 ], [ %74, %72 ], [ %64, %69 ]
  %79 = getelementptr inbounds %class.SGFTree, ptr %65, i64 0, i32 1
  %80 = getelementptr inbounds %class.SGFTree, ptr %65, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !132
  %82 = load ptr, ptr %79, align 8, !tbaa !134
  %83 = icmp eq ptr %81, %82
  %84 = select i1 %83, ptr null, ptr %82, !prof !159
  %85 = add i32 %63, 1
  %86 = icmp ule i32 %85, %2
  %87 = icmp ne ptr %84, null
  %88 = and i1 %87, %86
  br i1 %88, label %62, label %101, !prof !162, !llvm.loop !163

89:                                               ; preds = %60, %75, %58
  %90 = phi { ptr, i32 } [ %59, %58 ], [ %76, %75 ], [ %61, %60 ]
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  %91 = load ptr, ptr %7, align 8, !tbaa !137
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @_ZdlPv(ptr noundef %91) #26
  br label %94

94:                                               ; preds = %93, %89
  %95 = load ptr, ptr %6, align 8, !tbaa !137
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  tail call void @_ZdlPv(ptr noundef %95) #26
  br label %98

98:                                               ; preds = %97, %94
  %99 = load ptr, ptr %4, align 8, !tbaa !139
  %100 = icmp eq ptr %99, null
  br i1 %100, label %25, label %22

101:                                              ; preds = %77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare i32 @__gxx_personality_v0(...)

declare void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN7SGFTree8get_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !164 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %6, ptr %3, align 8, !tbaa !165
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 0, ptr %7, align 8, !tbaa !167
  store i8 0, ptr %6, align 8, !tbaa !169
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, ptr @.str.8, ptr @.str.7, !prof !170
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %9, i64 noundef 1)
          to label %13 unwind label %11, !prof !171

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %84

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %15 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %16 unwind label %50, !prof !172

16:                                               ; preds = %13
  %17 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %75, label %19, !prof !173

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %15, i64 0, i32 1, i32 0, i64 32
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %21, ptr %4, align 8, !tbaa !165
  %22 = load ptr, ptr %20, align 8, !tbaa !174
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %15, i64 0, i32 1, i32 0, i64 40
  %24 = load i64, ptr %23, align 8, !tbaa !167
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %22, ptr noundef %25)
          to label %26 unwind label %52, !prof !172

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %27, ptr %5, align 8, !tbaa !165
  %28 = load ptr, ptr %4, align 8, !tbaa !174
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !167
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %28, ptr noundef %31)
          to label %32 unwind label %54, !prof !172

32:                                               ; preds = %26
  %33 = invoke noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %5)
          to label %34 unwind label %56, !prof !172

34:                                               ; preds = %32
  %35 = load ptr, ptr %5, align 8, !tbaa !174
  %36 = icmp eq ptr %35, %27
  br i1 %36, label %37, label %41, !prof !172

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !167
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %35) #26
  br label %42

42:                                               ; preds = %37, %41
  %43 = load ptr, ptr %4, align 8, !tbaa !174
  %44 = icmp eq ptr %43, %21
  br i1 %44, label %45, label %48, !prof !172

45:                                               ; preds = %42
  %46 = load i64, ptr %29, align 8, !tbaa !167
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %43) #26
  br label %49

49:                                               ; preds = %45, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %75

50:                                               ; preds = %13
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %84

52:                                               ; preds = %19
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %73

54:                                               ; preds = %26
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %65

56:                                               ; preds = %32
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = load ptr, ptr %5, align 8, !tbaa !174
  %59 = icmp eq ptr %58, %27
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !167
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %58) #26
  br label %65

65:                                               ; preds = %64, %60, %54
  %66 = phi { ptr, i32 } [ %55, %54 ], [ %57, %60 ], [ %57, %64 ]
  %67 = load ptr, ptr %4, align 8, !tbaa !174
  %68 = icmp eq ptr %67, %21
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, ptr %29, align 8, !tbaa !167
  %71 = icmp ult i64 %70, 16
  call void @llvm.assume(i1 %71)
  br label %73

72:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #26
  br label %73

73:                                               ; preds = %72, %69, %52
  %74 = phi { ptr, i32 } [ %53, %52 ], [ %66, %69 ], [ %66, %72 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %84

75:                                               ; preds = %16, %49
  %76 = phi i32 [ %33, %49 ], [ 0, %16 ]
  %77 = load ptr, ptr %3, align 8, !tbaa !174
  %78 = icmp eq ptr %77, %6
  br i1 %78, label %79, label %82, !prof !172

79:                                               ; preds = %75
  %80 = load i64, ptr %7, align 8, !tbaa !167
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %83

82:                                               ; preds = %75
  call void @_ZdlPv(ptr noundef %77) #26
  br label %83

83:                                               ; preds = %79, %82
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret i32 %76

84:                                               ; preds = %50, %73, %11
  %85 = phi { ptr, i32 } [ %12, %11 ], [ %74, %73 ], [ %51, %50 ]
  %86 = load ptr, ptr %3, align 8, !tbaa !174
  %87 = icmp eq ptr %86, %6
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i64, ptr %7, align 8, !tbaa !167
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  br label %92

91:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %86) #26
  br label %92

92:                                               ; preds = %88, %91
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  resume { ptr, i32 } %85
}

declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7SGFTree23get_state_from_mainlineEj(ptr noundef nonnull readonly align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !131 {
  br label %6

3:                                                ; preds = %6
  %4 = add i32 %7, 1
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %16, label %6, !llvm.loop !175

6:                                                ; preds = %2, %3
  %7 = phi i32 [ 0, %2 ], [ %4, %3 ]
  %8 = phi ptr [ %0, %2 ], [ %12, %3 ]
  %9 = getelementptr inbounds %class.SGFTree, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %class.SGFTree, ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = load ptr, ptr %9, align 8, !tbaa !134
  %13 = icmp eq ptr %11, %12
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %3

16:                                               ; preds = %6, %3
  %17 = phi ptr [ %8, %6 ], [ %12, %3 ]
  ret ptr %17
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN7SGFTree20count_mainline_movesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8512) %0) local_unnamed_addr #8 align 2 !prof !131 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ -1, %1 ], [ %11, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %10, %2 ]
  %5 = getelementptr inbounds %class.SGFTree, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %class.SGFTree, ptr %4, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = load ptr, ptr %5, align 8, !tbaa !134
  %9 = icmp eq ptr %7, %8
  %10 = select i1 %9, ptr null, ptr %8
  %11 = add nsw i32 %3, 1
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %2, !llvm.loop !176

13:                                               ; preds = %2
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %3 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 8)
  invoke void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef 19, float noundef 7.500000e+00)
          to label %4 unwind label %8, !prof !136

4:                                                ; preds = %2
  invoke void @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull %0)
          to label %5 unwind label %8, !prof !136

5:                                                ; preds = %4
  invoke void @_ZN7SGFTree15populate_statesEv(ptr noundef nonnull align 8 dereferenceable(8512) %0)
          to label %6 unwind label %8, !prof !136

6:                                                ; preds = %5
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #25
  %7 = getelementptr inbounds i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %7) #25
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #25
  ret void

8:                                                ; preds = %5, %4, %2
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #25
  %10 = getelementptr inbounds i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %10) #25
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #25
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #6 align 2

declare void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, float noundef) local_unnamed_addr #0

declare void @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree15populate_statesEv(ptr noundef nonnull align 8 dereferenceable(8512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %10 = alloca float, align 4
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %20, ptr %2, align 8, !tbaa !165
  store i16 19783, ptr %20, align 8
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 2, ptr %21, align 8, !tbaa !167
  %22 = getelementptr inbounds i8, ptr %2, i64 18
  store i8 0, ptr %22, align 2, !tbaa !169
  %23 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %24 unwind label %40, !prof !178

24:                                               ; preds = %1
  %25 = load ptr, ptr %2, align 8, !tbaa !174
  %26 = icmp eq ptr %25, %20
  br i1 %26, label %27, label %30, !prof !178

27:                                               ; preds = %24
  %28 = load i64, ptr %21, align 8, !tbaa !167
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %24
  call void @_ZdlPv(ptr noundef %25) #26
  br label %31

31:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  %32 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  %33 = icmp eq ptr %23, %32
  br i1 %33, label %49, label %34, !prof !179

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %23, i64 0, i32 1, i32 0, i64 32
  %36 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.1) #25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38, !prof !180

38:                                               ; preds = %34
  %39 = call ptr @__cxa_allocate_exception(i64 8) #25
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %39, align 8, !tbaa !181
  call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #27
  unreachable

40:                                               ; preds = %1
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load ptr, ptr %2, align 8, !tbaa !174
  %43 = icmp eq ptr %42, %20
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, ptr %21, align 8, !tbaa !167
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %40
  call void @_ZdlPv(ptr noundef %42) #26
  br label %48

48:                                               ; preds = %47, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  br label %407

49:                                               ; preds = %34, %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %50, ptr %3, align 8, !tbaa !165
  store i16 23123, ptr %50, align 8
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 2, ptr %51, align 8, !tbaa !167
  %52 = getelementptr inbounds i8, ptr %3, i64 18
  store i8 0, ptr %52, align 2, !tbaa !169
  %53 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %54 unwind label %76, !prof !178

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 8, !tbaa !174
  %56 = icmp eq ptr %55, %50
  br i1 %56, label %57, label %60, !prof !178

57:                                               ; preds = %54
  %58 = load i64, ptr %51, align 8, !tbaa !167
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  br label %61

60:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %55) #26
  br label %61

61:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  %62 = icmp eq ptr %53, %32
  br i1 %62, label %112, label %63, !prof !183

63:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %53, i64 0, i32 1, i32 0, i64 32
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %65, ptr %4, align 8, !tbaa !165
  %66 = load ptr, ptr %64, align 8, !tbaa !174
  %67 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %53, i64 0, i32 1, i32 0, i64 40
  %68 = load i64, ptr %67, align 8, !tbaa !167
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %66, ptr noundef %69)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %70 unwind label %85, !prof !184

70:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %71 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %72 unwind label %87, !prof !184

72:                                               ; preds = %70
  %73 = load i32, ptr %6, align 4, !tbaa !117
  %74 = icmp slt i32 %73, 20
  br i1 %74, label %75, label %90, !prof !184

75:                                               ; preds = %72
  invoke void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %73, float noundef 7.500000e+00)
          to label %92 unwind label %87, !prof !184

76:                                               ; preds = %49
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load ptr, ptr %3, align 8, !tbaa !174
  %79 = icmp eq ptr %78, %50
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, ptr %51, align 8, !tbaa !167
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %78) #26
  br label %84

84:                                               ; preds = %83, %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %407

85:                                               ; preds = %63
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %102

87:                                               ; preds = %90, %75, %70
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #25
  %89 = getelementptr inbounds i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %89) #25
  br label %102

90:                                               ; preds = %72
  %91 = call ptr @__cxa_allocate_exception(i64 8) #25
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %91, align 8, !tbaa !181
  invoke void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #27
          to label %409 unwind label %87

92:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #25
  %93 = getelementptr inbounds i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %93) #25
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #25
  %94 = load ptr, ptr %4, align 8, !tbaa !174
  %95 = icmp eq ptr %94, %65
  br i1 %95, label %96, label %100, !prof !184

96:                                               ; preds = %92
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !167
  %99 = icmp ult i64 %98, 16
  call void @llvm.assume(i1 %99)
  br label %101

100:                                              ; preds = %92
  call void @_ZdlPv(ptr noundef %94) #26
  br label %101

101:                                              ; preds = %96, %100
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %112

102:                                              ; preds = %87, %85
  %103 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #25
  %104 = load ptr, ptr %4, align 8, !tbaa !174
  %105 = icmp eq ptr %104, %65
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !167
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %111

110:                                              ; preds = %102
  call void @_ZdlPv(ptr noundef %104) #26
  br label %111

111:                                              ; preds = %106, %110
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %407

112:                                              ; preds = %101, %61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %113, ptr %7, align 8, !tbaa !165
  store i16 19787, ptr %113, align 8
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 2, ptr %114, align 8, !tbaa !167
  %115 = getelementptr inbounds i8, ptr %7, i64 18
  store i8 0, ptr %115, align 2, !tbaa !169
  %116 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %117 unwind label %149, !prof !178

117:                                              ; preds = %112
  %118 = load ptr, ptr %7, align 8, !tbaa !174
  %119 = icmp eq ptr %118, %113
  br i1 %119, label %120, label %123, !prof !178

120:                                              ; preds = %117
  %121 = load i64, ptr %114, align 8, !tbaa !167
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %124

123:                                              ; preds = %117
  call void @_ZdlPv(ptr noundef %118) #26
  br label %124

124:                                              ; preds = %120, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  %125 = icmp eq ptr %116, %32
  br i1 %125, label %173, label %126, !prof !162

126:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #25
  %127 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %116, i64 0, i32 1, i32 0, i64 32
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %128, ptr %8, align 8, !tbaa !165
  %129 = load ptr, ptr %127, align 8, !tbaa !174
  %130 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %116, i64 0, i32 1, i32 0, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !167
  %132 = getelementptr inbounds i8, ptr %129, i64 %131
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %129, ptr noundef %132)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 8)
          to label %133 unwind label %158, !prof !136

133:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #25
  %134 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %135 unwind label %160, !prof !136

135:                                              ; preds = %133
  %136 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
          to label %137 unwind label %160, !prof !136

137:                                              ; preds = %135
  %138 = load float, ptr %10, align 4, !tbaa !185
  invoke void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %136, float noundef %138)
          to label %139 unwind label %160, !prof !136

139:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #25
  %140 = getelementptr inbounds i8, ptr %9, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %140) #25
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #25
  %141 = load ptr, ptr %8, align 8, !tbaa !174
  %142 = icmp eq ptr %141, %128
  br i1 %142, label %143, label %147, !prof !136

143:                                              ; preds = %139
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !167
  %146 = icmp ult i64 %145, 16
  call void @llvm.assume(i1 %146)
  br label %148

147:                                              ; preds = %139
  call void @_ZdlPv(ptr noundef %141) #26
  br label %148

148:                                              ; preds = %143, %147
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  br label %173

149:                                              ; preds = %112
  %150 = landingpad { ptr, i32 }
          cleanup
  %151 = load ptr, ptr %7, align 8, !tbaa !174
  %152 = icmp eq ptr %151, %113
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i64, ptr %114, align 8, !tbaa !167
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  br label %157

156:                                              ; preds = %149
  call void @_ZdlPv(ptr noundef %151) #26
  br label %157

157:                                              ; preds = %156, %153
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  br label %407

158:                                              ; preds = %126
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %163

160:                                              ; preds = %133, %137, %135
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #25
  %162 = getelementptr inbounds i8, ptr %9, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %162) #25
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #25
  %165 = load ptr, ptr %8, align 8, !tbaa !174
  %166 = icmp eq ptr %165, %128
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !167
  %170 = icmp ult i64 %169, 16
  call void @llvm.assume(i1 %170)
  br label %172

171:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %165) #26
  br label %172

172:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  br label %407

173:                                              ; preds = %148, %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #25
  %174 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %174, ptr %11, align 8, !tbaa !165
  store i16 16961, ptr %174, align 8
  %175 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  store i64 2, ptr %175, align 8, !tbaa !167
  %176 = getelementptr inbounds i8, ptr %11, i64 18
  store i8 0, ptr %176, align 2, !tbaa !169
  %177 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %178 unwind label %224, !prof !178

178:                                              ; preds = %173
  %179 = extractvalue { ptr, ptr } %177, 0
  %180 = extractvalue { ptr, ptr } %177, 1
  %181 = load ptr, ptr %11, align 8, !tbaa !174
  %182 = icmp eq ptr %181, %174
  br i1 %182, label %183, label %186, !prof !178

183:                                              ; preds = %178
  %184 = load i64, ptr %175, align 8, !tbaa !167
  %185 = icmp ult i64 %184, 16
  call void @llvm.assume(i1 %185)
  br label %187

186:                                              ; preds = %178
  call void @_ZdlPv(ptr noundef %181) #26
  br label %187

187:                                              ; preds = %183, %186
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #25
  %188 = icmp eq ptr %179, %180
  br i1 %188, label %253, label %189, !prof !180

189:                                              ; preds = %187
  %190 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  br label %193

193:                                              ; preds = %189, %221
  %194 = phi ptr [ %179, %189 ], [ %222, %221 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #25
  %195 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %194, i64 0, i32 1, i32 0, i64 32
  store ptr %190, ptr %12, align 8, !tbaa !165
  %196 = load ptr, ptr %195, align 8, !tbaa !174
  %197 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %194, i64 0, i32 1, i32 0, i64 40
  %198 = load i64, ptr %197, align 8, !tbaa !167
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %196, ptr noundef %199)
  store ptr %191, ptr %13, align 8, !tbaa !165
  %200 = load ptr, ptr %12, align 8, !tbaa !174
  %201 = load i64, ptr %192, align 8, !tbaa !167
  %202 = getelementptr inbounds i8, ptr %200, i64 %201
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %200, ptr noundef %202)
          to label %203 unwind label %233

203:                                              ; preds = %193
  %204 = invoke noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %13)
          to label %205 unwind label %235

205:                                              ; preds = %203
  %206 = load ptr, ptr %13, align 8, !tbaa !174
  %207 = icmp eq ptr %206, %191
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !167
  %211 = icmp ult i64 %210, 16
  call void @llvm.assume(i1 %211)
  br label %213

212:                                              ; preds = %205
  call void @_ZdlPv(ptr noundef %206) #26
  br label %213

213:                                              ; preds = %208, %212
  invoke void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef 0, i32 noundef %204)
          to label %214 unwind label %233

214:                                              ; preds = %213
  %215 = load ptr, ptr %12, align 8, !tbaa !174
  %216 = icmp eq ptr %215, %190
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i64, ptr %192, align 8, !tbaa !167
  %219 = icmp ult i64 %218, 16
  call void @llvm.assume(i1 %219)
  br label %221

220:                                              ; preds = %214
  call void @_ZdlPv(ptr noundef %215) #26
  br label %221

221:                                              ; preds = %217, %220
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #25
  %222 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %194) #28
  %223 = icmp eq ptr %222, %180
  br i1 %223, label %253, label %193, !prof !180, !llvm.loop !187

224:                                              ; preds = %173
  %225 = landingpad { ptr, i32 }
          cleanup
  %226 = load ptr, ptr %11, align 8, !tbaa !174
  %227 = icmp eq ptr %226, %174
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load i64, ptr %175, align 8, !tbaa !167
  %230 = icmp ult i64 %229, 16
  call void @llvm.assume(i1 %230)
  br label %232

231:                                              ; preds = %224
  call void @_ZdlPv(ptr noundef %226) #26
  br label %232

232:                                              ; preds = %231, %228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #25
  br label %407

233:                                              ; preds = %193, %213
  %234 = landingpad { ptr, i32 }
          cleanup
  br label %244

235:                                              ; preds = %203
  %236 = landingpad { ptr, i32 }
          cleanup
  %237 = load ptr, ptr %13, align 8, !tbaa !174
  %238 = icmp eq ptr %237, %191
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %241 = load i64, ptr %240, align 8, !tbaa !167
  %242 = icmp ult i64 %241, 16
  call void @llvm.assume(i1 %242)
  br label %244

243:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %237) #26
  br label %244

244:                                              ; preds = %243, %239, %233
  %245 = phi { ptr, i32 } [ %234, %233 ], [ %236, %239 ], [ %236, %243 ]
  %246 = load ptr, ptr %12, align 8, !tbaa !174
  %247 = icmp eq ptr %246, %190
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i64, ptr %192, align 8, !tbaa !167
  %250 = icmp ult i64 %249, 16
  call void @llvm.assume(i1 %250)
  br label %252

251:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %246) #26
  br label %252

252:                                              ; preds = %248, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #25
  br label %407

253:                                              ; preds = %221, %187
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #25
  %254 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %254, ptr %14, align 8, !tbaa !165
  store i16 22337, ptr %254, align 8
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 2, ptr %255, align 8, !tbaa !167
  %256 = getelementptr inbounds i8, ptr %14, i64 18
  store i8 0, ptr %256, align 2, !tbaa !169
  %257 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %258 unwind label %304, !prof !178

258:                                              ; preds = %253
  %259 = extractvalue { ptr, ptr } %257, 0
  %260 = extractvalue { ptr, ptr } %257, 1
  %261 = load ptr, ptr %14, align 8, !tbaa !174
  %262 = icmp eq ptr %261, %254
  br i1 %262, label %263, label %266, !prof !178

263:                                              ; preds = %258
  %264 = load i64, ptr %255, align 8, !tbaa !167
  %265 = icmp ult i64 %264, 16
  call void @llvm.assume(i1 %265)
  br label %267

266:                                              ; preds = %258
  call void @_ZdlPv(ptr noundef %261) #26
  br label %267

267:                                              ; preds = %263, %266
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #25
  %268 = icmp eq ptr %259, %260
  br i1 %268, label %333, label %269, !prof !180

269:                                              ; preds = %267
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  %272 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  br label %273

273:                                              ; preds = %269, %301
  %274 = phi ptr [ %259, %269 ], [ %302, %301 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #25
  %275 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %274, i64 0, i32 1, i32 0, i64 32
  store ptr %270, ptr %15, align 8, !tbaa !165
  %276 = load ptr, ptr %275, align 8, !tbaa !174
  %277 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %274, i64 0, i32 1, i32 0, i64 40
  %278 = load i64, ptr %277, align 8, !tbaa !167
  %279 = getelementptr inbounds i8, ptr %276, i64 %278
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %276, ptr noundef %279)
  store ptr %271, ptr %16, align 8, !tbaa !165
  %280 = load ptr, ptr %15, align 8, !tbaa !174
  %281 = load i64, ptr %272, align 8, !tbaa !167
  %282 = getelementptr inbounds i8, ptr %280, i64 %281
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %280, ptr noundef %282)
          to label %283 unwind label %313

283:                                              ; preds = %273
  %284 = invoke noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %16)
          to label %285 unwind label %315

285:                                              ; preds = %283
  %286 = load ptr, ptr %16, align 8, !tbaa !174
  %287 = icmp eq ptr %286, %271
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %290 = load i64, ptr %289, align 8, !tbaa !167
  %291 = icmp ult i64 %290, 16
  call void @llvm.assume(i1 %291)
  br label %293

292:                                              ; preds = %285
  call void @_ZdlPv(ptr noundef %286) #26
  br label %293

293:                                              ; preds = %288, %292
  invoke void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef 1, i32 noundef %284)
          to label %294 unwind label %313

294:                                              ; preds = %293
  %295 = load ptr, ptr %15, align 8, !tbaa !174
  %296 = icmp eq ptr %295, %270
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load i64, ptr %272, align 8, !tbaa !167
  %299 = icmp ult i64 %298, 16
  call void @llvm.assume(i1 %299)
  br label %301

300:                                              ; preds = %294
  call void @_ZdlPv(ptr noundef %295) #26
  br label %301

301:                                              ; preds = %297, %300
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  %302 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %274) #28
  %303 = icmp eq ptr %302, %260
  br i1 %303, label %333, label %273, !prof !180, !llvm.loop !188

304:                                              ; preds = %253
  %305 = landingpad { ptr, i32 }
          cleanup
  %306 = load ptr, ptr %14, align 8, !tbaa !174
  %307 = icmp eq ptr %306, %254
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i64, ptr %255, align 8, !tbaa !167
  %310 = icmp ult i64 %309, 16
  call void @llvm.assume(i1 %310)
  br label %312

311:                                              ; preds = %304
  call void @_ZdlPv(ptr noundef %306) #26
  br label %312

312:                                              ; preds = %311, %308
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #25
  br label %407

313:                                              ; preds = %273, %293
  %314 = landingpad { ptr, i32 }
          cleanup
  br label %324

315:                                              ; preds = %283
  %316 = landingpad { ptr, i32 }
          cleanup
  %317 = load ptr, ptr %16, align 8, !tbaa !174
  %318 = icmp eq ptr %317, %271
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %321 = load i64, ptr %320, align 8, !tbaa !167
  %322 = icmp ult i64 %321, 16
  call void @llvm.assume(i1 %322)
  br label %324

323:                                              ; preds = %315
  call void @_ZdlPv(ptr noundef %317) #26
  br label %324

324:                                              ; preds = %323, %319, %313
  %325 = phi { ptr, i32 } [ %314, %313 ], [ %316, %319 ], [ %316, %323 ]
  %326 = load ptr, ptr %15, align 8, !tbaa !174
  %327 = icmp eq ptr %326, %270
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = load i64, ptr %272, align 8, !tbaa !167
  %330 = icmp ult i64 %329, 16
  call void @llvm.assume(i1 %330)
  br label %332

331:                                              ; preds = %324
  call void @_ZdlPv(ptr noundef %326) #26
  br label %332

332:                                              ; preds = %328, %331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #25
  br label %407

333:                                              ; preds = %301, %267
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #25
  %334 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %334, ptr %17, align 8, !tbaa !165
  store i16 19536, ptr %334, align 8
  %335 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 2, ptr %335, align 8, !tbaa !167
  %336 = getelementptr inbounds i8, ptr %17, i64 18
  store i8 0, ptr %336, align 2, !tbaa !169
  %337 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %338 unwind label %356, !prof !178

338:                                              ; preds = %333
  %339 = load ptr, ptr %17, align 8, !tbaa !174
  %340 = icmp eq ptr %339, %334
  br i1 %340, label %341, label %344, !prof !178

341:                                              ; preds = %338
  %342 = load i64, ptr %335, align 8, !tbaa !167
  %343 = icmp ult i64 %342, 16
  call void @llvm.assume(i1 %343)
  br label %345

344:                                              ; preds = %338
  call void @_ZdlPv(ptr noundef %339) #26
  br label %345

345:                                              ; preds = %341, %344
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #25
  %346 = icmp eq ptr %337, %32
  br i1 %346, label %389, label %347, !prof !178

347:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #25
  %348 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %337, i64 0, i32 1, i32 0, i64 32
  %349 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %349, ptr %18, align 8, !tbaa !165
  %350 = load ptr, ptr %348, align 8, !tbaa !174
  %351 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %337, i64 0, i32 1, i32 0, i64 40
  %352 = load i64, ptr %351, align 8, !tbaa !167
  %353 = getelementptr inbounds i8, ptr %350, i64 %352
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %350, ptr noundef %353)
  %354 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.7) #25
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %378, label %375

356:                                              ; preds = %333
  %357 = landingpad { ptr, i32 }
          cleanup
  %358 = load ptr, ptr %17, align 8, !tbaa !174
  %359 = icmp eq ptr %358, %334
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = load i64, ptr %335, align 8, !tbaa !167
  %362 = icmp ult i64 %361, 16
  call void @llvm.assume(i1 %362)
  br label %364

363:                                              ; preds = %356
  call void @_ZdlPv(ptr noundef %358) #26
  br label %364

364:                                              ; preds = %363, %360
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #25
  br label %407

365:                                              ; preds = %378
  %366 = landingpad { ptr, i32 }
          cleanup
  %367 = load ptr, ptr %18, align 8, !tbaa !174
  %368 = icmp eq ptr %367, %349
  br i1 %368, label %369, label %373

369:                                              ; preds = %365
  %370 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  %371 = load i64, ptr %370, align 8, !tbaa !167
  %372 = icmp ult i64 %371, 16
  call void @llvm.assume(i1 %372)
  br label %374

373:                                              ; preds = %365
  call void @_ZdlPv(ptr noundef %367) #26
  br label %374

374:                                              ; preds = %369, %373
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #25
  br label %407

375:                                              ; preds = %347
  %376 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.8) #25
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %347, %375
  %379 = phi i32 [ 0, %375 ], [ 1, %347 ]
  invoke void @_ZN9FastState11set_to_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %379)
          to label %380 unwind label %365

380:                                              ; preds = %378, %375
  %381 = load ptr, ptr %18, align 8, !tbaa !174
  %382 = icmp eq ptr %381, %349
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  %385 = load i64, ptr %384, align 8, !tbaa !167
  %386 = icmp ult i64 %385, 16
  call void @llvm.assume(i1 %386)
  br label %388

387:                                              ; preds = %380
  call void @_ZdlPv(ptr noundef %381) #26
  br label %388

388:                                              ; preds = %383, %387
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #25
  br label %389

389:                                              ; preds = %388, %345
  %390 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !189
  %392 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !189
  %394 = icmp eq ptr %391, %393
  br i1 %394, label %406, label %395, !prof !159

395:                                              ; preds = %389, %402
  %396 = phi ptr [ %403, %402 ], [ %391, %389 ]
  call void @_ZN7SGFTree9set_stateER7KoState(ptr noundef nonnull align 8 dereferenceable(8512) %396, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  %397 = call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %398 = call noundef i32 @_ZN7SGFTree8get_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %396, i32 noundef %397)
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %402, label %400, !prof !161

400:                                              ; preds = %395
  %401 = call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %396)
  call void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %396, i32 noundef %401, i32 noundef %398)
  br label %402

402:                                              ; preds = %400, %395
  call void @_ZN7SGFTree15populate_statesEv(ptr noundef nonnull align 8 dereferenceable(8512) %396)
  %403 = getelementptr inbounds %class.SGFTree, ptr %396, i64 1
  %404 = load ptr, ptr %392, align 8, !tbaa !189
  %405 = icmp eq ptr %403, %404
  br i1 %405, label %406, label %395, !prof !160, !llvm.loop !190

406:                                              ; preds = %402, %389
  ret void

407:                                              ; preds = %232, %252, %374, %364, %332, %312, %172, %157, %111, %84, %48
  %408 = phi { ptr, i32 } [ %164, %172 ], [ %150, %157 ], [ %103, %111 ], [ %77, %84 ], [ %41, %48 ], [ %245, %252 ], [ %225, %232 ], [ %325, %332 ], [ %366, %374 ], [ %357, %364 ], [ %305, %312 ]
  resume { ptr, i32 } %408

409:                                              ; preds = %90
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %7, ptr %5, align 8, !tbaa !165
  %8 = load ptr, ptr %1, align 8, !tbaa !174
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !167
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %8, ptr noundef %11)
  invoke void @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5, i32 noundef %2)
          to label %12 unwind label %26, !prof !192

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !tbaa !174
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %19, !prof !192

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !167
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #26
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !167
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37, !prof !193

24:                                               ; preds = %20
  %25 = call ptr @__cxa_allocate_exception(i64 8) #25
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !181
  invoke void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #27
          to label %79 unwind label %35, !prof !194

26:                                               ; preds = %3
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %5, align 8, !tbaa !174
  %29 = icmp eq ptr %28, %7
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !167
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %77

34:                                               ; preds = %26
  call void @_ZdlPv(ptr noundef %28) #26
  br label %77

35:                                               ; preds = %37, %24
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %68

37:                                               ; preds = %20
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %38, ptr %6, align 8, !tbaa !165
  %39 = load ptr, ptr %4, align 8, !tbaa !174
  %40 = getelementptr inbounds i8, ptr %39, i64 %22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %39, ptr noundef nonnull %40)
          to label %41 unwind label %35, !prof !136

41:                                               ; preds = %37
  invoke void @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %6)
          to label %42 unwind label %59, !prof !136

42:                                               ; preds = %41
  %43 = load ptr, ptr %6, align 8, !tbaa !174
  %44 = icmp eq ptr %43, %38
  br i1 %44, label %45, label %49, !prof !195

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !167
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %43) #26
  br label %50

50:                                               ; preds = %45, %49
  %51 = load ptr, ptr %4, align 8, !tbaa !174
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %57, !prof !195

54:                                               ; preds = %50
  %55 = load i64, ptr %21, align 8, !tbaa !167
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %50
  call void @_ZdlPv(ptr noundef %51) #26
  br label %58

58:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret void

59:                                               ; preds = %41
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %6, align 8, !tbaa !174
  %62 = icmp eq ptr %61, %38
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !167
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  br label %68

67:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %61) #26
  br label %68

68:                                               ; preds = %67, %63, %35
  %69 = phi { ptr, i32 } [ %36, %35 ], [ %60, %63 ], [ %60, %67 ]
  %70 = load ptr, ptr %4, align 8, !tbaa !174
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %76, !prof !180

73:                                               ; preds = %68
  %74 = load i64, ptr %21, align 8, !tbaa !167
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %77

76:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %70) #26
  br label %77

77:                                               ; preds = %76, %73, %34, %30
  %78 = phi { ptr, i32 } [ %27, %30 ], [ %27, %34 ], [ %69, %73 ], [ %69, %76 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  resume { ptr, i32 } %78

79:                                               ; preds = %24
  unreachable
}

declare void @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !164 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !167
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %34, label %6, !prof !173

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %8 = icmp slt i32 %7, 20
  br i1 %8, label %9, label %12, !prof !172

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12, !prof !173

12:                                               ; preds = %9, %6
  %13 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %14 = load ptr, ptr %1, align 8, !tbaa !174
  %15 = load i8, ptr %14, align 1, !tbaa !169
  %16 = getelementptr inbounds i8, ptr %14, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !169
  %18 = sext i8 %15 to i32
  %19 = add nsw i32 %18, -97
  %20 = sext i8 %17 to i32
  %21 = sub i32 %13, %20
  %22 = add i32 %21, 96
  %23 = icmp slt i8 %15, 97
  br i1 %23, label %30, label %24, !prof !173

24:                                               ; preds = %12
  %25 = icmp slt i32 %19, %13
  %26 = icmp sgt i32 %22, -1
  %27 = select i1 %25, i1 %26, i1 false, !prof !172
  %28 = icmp slt i32 %22, %13
  %29 = select i1 %27, i1 %28, i1 false, !prof !172
  br i1 %29, label %32, label %30, !prof !172

30:                                               ; preds = %24, %12
  %31 = tail call ptr @__cxa_allocate_exception(i64 8) #25
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %31, align 8, !tbaa !181
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #27
  unreachable

32:                                               ; preds = %24
  %33 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %19, i32 noundef %22)
  br label %34

34:                                               ; preds = %9, %2, %32
  %35 = phi i32 [ %33, %32 ], [ -1, %2 ], [ -1, %9 ]
  ret i32 %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !196 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %10, label %5, !prof !161

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2)
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8, !prof !160

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 8) #25
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !181
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #27
  unreachable

10:                                               ; preds = %5, %3
  tail call void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, i32 noundef %2)
  ret void
}

declare void @_ZN9FastState11set_to_moveEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7SGFTree9set_stateER7KoState(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #10 align 2 !prof !196 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %7, ptr %8, align 8, !tbaa !141
  %9 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  %11 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull align 8 dereferenceable(124) %12, i64 124, i1 false)
  %13 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %14 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 9
  br label %15

15:                                               ; preds = %2, %15
  %16 = phi i64 [ 0, %2 ], [ %23, %15 ]
  %17 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %13, i64 0, i64 %16
  %18 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %14, i64 0, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !152
  store i32 %19, ptr %17, align 4, !tbaa !152
  %20 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %14, i64 0, i64 %16, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !154
  %22 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %13, i64 0, i64 %16, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !154
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, 24
  br i1 %24, label %25, label %15, !prof !197, !llvm.loop !156

25:                                               ; preds = %15
  %26 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
  %29 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %30 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree10apply_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !131 {
  %3 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  tail call void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %3, i32 noundef %1)
  ret void
}

declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #0

declare void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %4 = alloca %"struct.std::pair.34", align 8
  %5 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #25
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %6 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %7 unwind label %27, !prof !199

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.std::pair.34", ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !174
  %10 = getelementptr inbounds %"struct.std::pair.34", ptr %4, i64 0, i32 1, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16, !prof !199

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"struct.std::pair.34", ptr %4, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !167
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %7
  call void @_ZdlPv(ptr noundef %9) #26
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %4, align 8, !tbaa !174
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25, !prof !199

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !167
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  br label %26

25:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #26
  br label %26

26:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #25
  ret void

27:                                               ; preds = %3
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = getelementptr inbounds %"struct.std::pair.34", ptr %4, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !174
  %31 = getelementptr inbounds %"struct.std::pair.34", ptr %4, i64 0, i32 1, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"struct.std::pair.34", ptr %4, i64 0, i32 1, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !167
  %36 = icmp ult i64 %35, 16
  call void @llvm.assume(i1 %36)
  br label %38

37:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %30) #26
  br label %38

38:                                               ; preds = %37, %33
  %39 = load ptr, ptr %4, align 8, !tbaa !174
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !167
  %45 = icmp ult i64 %44, 16
  call void @llvm.assume(i1 %45)
  br label %47

46:                                               ; preds = %38
  call void @_ZdlPv(ptr noundef %39) #26
  br label %47

47:                                               ; preds = %42, %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #25
  resume { ptr, i32 } %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7SGFTree9add_childES_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !196 {
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = load ptr, ptr %3, align 8, !tbaa !134
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9, !prof !160

8:                                                ; preds = %2
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
  br label %9

9:                                                ; preds = %8, %2
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8512) %1)
  %10 = load ptr, ptr %4, align 8, !tbaa !189
  %11 = getelementptr inbounds %class.SGFTree, ptr %10, i64 -1
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !196 {
  %3 = icmp ugt i64 %1, 1083572842675608
  br i1 %3, label %4, label %5, !prof !161

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  %8 = load ptr, ptr %0, align 8, !tbaa !134
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8512
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %36, !prof !160

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = tail call noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  %20 = load ptr, ptr %0, align 8, !tbaa !134
  %21 = load ptr, ptr %15, align 8, !tbaa !132
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %29, label %23, !prof !180

23:                                               ; preds = %14, %23
  %24 = phi ptr [ %27, %23 ], [ %19, %14 ]
  %25 = phi ptr [ %26, %23 ], [ %20, %14 ]
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %24, ptr noundef nonnull align 8 dereferenceable(8512) %25) #25
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %25) #25
  %26 = getelementptr inbounds %class.SGFTree, ptr %25, i64 1
  %27 = getelementptr inbounds %class.SGFTree, ptr %24, i64 1
  %28 = icmp eq ptr %26, %21
  br i1 %28, label %29, label %23, !prof !180, !llvm.loop !201

29:                                               ; preds = %23, %14
  %30 = load ptr, ptr %0, align 8, !tbaa !134
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !160

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #26
  br label %33

33:                                               ; preds = %29, %32
  store ptr %19, ptr %0, align 8, !tbaa !134
  %34 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %34, ptr %15, align 8, !tbaa !132
  %35 = getelementptr inbounds %class.SGFTree, ptr %19, i64 %1
  store ptr %35, ptr %6, align 8, !tbaa !200
  br label %36

36:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) local_unnamed_addr #6 comdat align 2 !prof !196 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !161

8:                                                ; preds = %2
  tail call void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %4, ptr noundef nonnull align 8 dereferenceable(8512) %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !132
  %10 = getelementptr inbounds %class.SGFTree, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !132
  br label %12

11:                                               ; preds = %2
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(8512) %1)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !131 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !205
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %25, label %6, !prof !206

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %2, %1 ]
  %8 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !207

11:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !207

16:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %14) #26
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !208

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #26
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %class.KoState, ptr %7, i64 1
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %6, !prof !209, !llvm.loop !210

25:                                               ; preds = %22, %1
  %26 = load ptr, ptr %0, align 8, !tbaa !203
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !211

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #26
  br label %29

29:                                               ; preds = %25, %28
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !213

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = load ptr, ptr %1, align 8, !tbaa !189
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !214
  %13 = load ptr, ptr %0, align 8, !tbaa !189
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !215

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22, !prof !213

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %10, i1 false), !prof !216
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !137
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !215

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !137
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !214
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !217
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %10, i1 false)
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !137
  %43 = load ptr, ptr %30, align 8, !tbaa !217
  %44 = load ptr, ptr %0, align 8, !tbaa !137
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !217
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !137
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !217
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !218

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = load ptr, ptr %1, align 8, !tbaa !189
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !219
  %13 = load ptr, ptr %0, align 8, !tbaa !189
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !218

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 2
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %20, ptr align 4 %7, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !139
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !139
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !219
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !220
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35, !prof !218

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37, !prof !178

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %10, i1 false)
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !139
  %43 = load ptr, ptr %30, align 8, !tbaa !220
  %44 = load ptr, ptr %0, align 8, !tbaa !139
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !220
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %43, ptr align 4 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !139
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !220
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 !prof !221 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !222

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #30
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 !prof !223 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !224

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #30
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !165
  %5 = load ptr, ptr %1, align 8, !tbaa !174
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !167
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef %8)
  %9 = getelementptr inbounds %"struct.std::pair.34", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::pair.34", ptr %0, i64 0, i32 1, i32 2
  store ptr %10, ptr %9, align 8, !tbaa !165
  %11 = load ptr, ptr %2, align 8, !tbaa !174
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !167
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %11, ptr noundef %14)
          to label %15 unwind label %16, !prof !199

15:                                               ; preds = %3
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %0, align 8, !tbaa !174
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !167
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
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !225 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !226
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !227

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !174
  %11 = load i64, ptr %4, align 8, !tbaa !226
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !169
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !174
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !228

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !169
  store i8 %16, ptr %14, align 1, !tbaa !169
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !229
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !226
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !167
  %21 = load ptr, ptr %0, align 8, !tbaa !174
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #16 align 2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !230 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8, !prof !231

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !167
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !167
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !232

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !174
  %18 = load ptr, ptr %1, align 8, !tbaa !174
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #25, !prof !233
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28, !prof !234

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6, !prof !235
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !230 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6, !prof !236

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !167
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !167
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17, !prof !237

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #25, !prof !238
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !239

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
  %34 = select i1 %31, ptr %12, ptr %11, !prof !240
  %35 = select i1 %31, ptr %32, ptr %33, !prof !240
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !prof !241, !llvm.loop !242

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  br i1 %6, label %62, label %7, !prof !243

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !167
  %10 = load ptr, ptr %1, align 8
  br label %11

11:                                               ; preds = %7, %57
  %12 = phi ptr [ %5, %7 ], [ %60, %57 ]
  %13 = phi ptr [ %4, %7 ], [ %58, %57 ]
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !167
  %17 = tail call i64 @llvm.umin.i64(i64 %9, i64 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19, !prof !244

19:                                               ; preds = %11
  %20 = load ptr, ptr %14, align 8, !tbaa !174
  %21 = tail call i32 @memcmp(ptr noundef %20, ptr noundef %10, i64 noundef %17) #25, !prof !245
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %21, %19 ], [ 0, %11 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30, !prof !244

25:                                               ; preds = %22
  %26 = sub i64 %16, %9
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 -2147483648)
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 2147483647)
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi i32 [ %23, %22 ], [ %29, %25 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35, !prof !244

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  br label %57

35:                                               ; preds = %30
  br i1 %18, label %39, label %36, !prof !244

36:                                               ; preds = %35
  %37 = load ptr, ptr %14, align 8, !tbaa !174
  %38 = tail call i32 @memcmp(ptr noundef %10, ptr noundef %37, i64 noundef %17) #25, !prof !245
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ %38, %36 ], [ 0, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47, !prof !244

42:                                               ; preds = %39
  %43 = sub i64 %9, %16
  %44 = tail call i64 @llvm.smax.i64(i64 %43, i64 -2147483648)
  %45 = tail call i64 @llvm.smin.i64(i64 %44, i64 2147483647)
  %46 = trunc i64 %45 to i32
  br label %47

47:                                               ; preds = %39, %42
  %48 = phi i32 [ %40, %39 ], [ %46, %42 ]
  %49 = icmp slt i32 %48, 0
  %50 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  br i1 %49, label %57, label %51, !prof !246

51:                                               ; preds = %47
  %52 = load ptr, ptr %50, align 8, !tbaa !247
  %53 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !248
  %55 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %52, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %56 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %54, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %62

57:                                               ; preds = %47, %33
  %58 = phi ptr [ %13, %33 ], [ %12, %47 ]
  %59 = phi ptr [ %34, %33 ], [ %50, %47 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !189
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %11, !prof !249, !llvm.loop !250

62:                                               ; preds = %57, %2, %51
  %63 = phi ptr [ %55, %51 ], [ %4, %2 ], [ %58, %57 ]
  %64 = phi ptr [ %56, %51 ], [ %4, %2 ], [ %58, %57 ]
  %65 = insertvalue { ptr, ptr } poison, ptr %63, 0
  %66 = insertvalue { ptr, ptr } %65, ptr %64, 1
  ret { ptr, ptr } %66
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !167
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !167
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %8)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = tail call i32 @memcmp(ptr noundef %9, ptr noundef %19, i64 noundef %15) #25
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %8, %14
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %34 = select i1 %31, ptr %11, ptr %12
  %35 = select i1 %31, ptr %32, ptr %33
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !llvm.loop !251

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %5 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %6 unwind label %11, !prof !199

6:                                                ; preds = %2
  %7 = extractvalue { ptr, ptr } %5, 0
  %8 = extractvalue { ptr, ptr } %5, 1
  %9 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %3)
          to label %10 unwind label %11, !prof !199

10:                                               ; preds = %6
  ret ptr %9

11:                                               ; preds = %6, %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %3) #25
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7, !prof !252

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !167
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi ptr [ %5, %7 ], [ %35, %29 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !167
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %9)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16, !prof !253

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %19, i64 noundef %14) #25, !prof !254
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ %20, %16 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !255

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
  %34 = select i1 %31, ptr %32, ptr %33, !prof !256
  %35 = load ptr, ptr %34, align 8, !tbaa !189
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %10, !prof !257, !llvm.loop !258

37:                                               ; preds = %29, %2
  %38 = phi ptr [ %4, %2 ], [ %11, %29 ]
  %39 = phi ptr [ %5, %2 ], [ %35, %29 ]
  %40 = insertvalue { ptr, ptr } poison, ptr %39, 0
  %41 = insertvalue { ptr, ptr } %40, ptr %38, 1
  ret { ptr, ptr } %41
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !165
  %4 = load ptr, ptr %1, align 8, !tbaa !174
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %12, !prof !199

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !167
  %10 = icmp ult i64 %9, 16
  tail call void @llvm.assume(i1 %10)
  %11 = add nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %11, i1 false), !prof !259
  br label %14

12:                                               ; preds = %2
  store ptr %4, ptr %0, align 8, !tbaa !174
  %13 = load i64, ptr %5, align 8, !tbaa !169
  store i64 %13, ptr %3, align 8, !tbaa !169
  br label %14

14:                                               ; preds = %7, %12
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !167
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !167
  store ptr %5, ptr %1, align 8, !tbaa !174
  store i64 0, ptr %15, align 8, !tbaa !167
  store i8 0, ptr %5, align 8, !tbaa !169
  %18 = getelementptr inbounds %"struct.std::pair.30", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"struct.std::pair.34", ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %"struct.std::pair.30", ptr %0, i64 0, i32 1, i32 2
  store ptr %20, ptr %18, align 8, !tbaa !165
  %21 = load ptr, ptr %19, align 8, !tbaa !174
  %22 = getelementptr inbounds %"struct.std::pair.34", ptr %1, i64 0, i32 1, i32 2
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29, !prof !260

24:                                               ; preds = %14
  %25 = getelementptr inbounds %"struct.std::pair.34", ptr %1, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !167
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false), !prof !261
  br label %31

29:                                               ; preds = %14
  store ptr %21, ptr %18, align 8, !tbaa !174
  %30 = load i64, ptr %22, align 8, !tbaa !169
  store i64 %30, ptr %20, align 8, !tbaa !169
  br label %31

31:                                               ; preds = %24, %29
  %32 = getelementptr inbounds %"struct.std::pair.34", ptr %1, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !167
  %34 = getelementptr inbounds %"struct.std::pair.30", ptr %0, i64 0, i32 1, i32 1
  store i64 %33, ptr %34, align 8, !tbaa !167
  store ptr %22, ptr %19, align 8, !tbaa !174
  store i64 0, ptr %32, align 8, !tbaa !167
  store i8 0, ptr %22, align 8, !tbaa !169
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %5 = icmp ne ptr %1, null
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = icmp eq ptr %6, %2
  %8 = select i1 %5, i1 true, i1 %7, !prof !262
  br i1 %8, label %33, label %9, !prof !263

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1, i32 0, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !167
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !167
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %11)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16, !prof !264

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %17, align 8, !tbaa !174
  %20 = load ptr, ptr %18, align 8, !tbaa !174
  %21 = tail call i32 @memcmp(ptr noundef %20, ptr noundef %19, i64 noundef %14) #25, !prof !265
  br label %22

22:                                               ; preds = %16, %9
  %23 = phi i32 [ %21, %16 ], [ 0, %9 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30, !prof !266

25:                                               ; preds = %22
  %26 = sub i64 %11, %13
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 -2147483648)
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 2147483647)
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi i32 [ %23, %22 ], [ %29, %25 ]
  %32 = icmp slt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i1 [ true, %4 ], [ %32, %30 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %34, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  %35 = getelementptr inbounds i8, ptr %0, i64 40
  %36 = load i64, ptr %35, align 8, !tbaa !130
  %37 = add i64 %36, 1
  store i64 %37, ptr %35, align 8, !tbaa !130
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12, !prof !260

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %10 = load i64, ptr %9, align 8, !tbaa !167
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #26
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !174
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21, !prof !199

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !167
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %14) #26
  br label %22

22:                                               ; preds = %17, %21
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !196 {
  %4 = icmp ugt i64 %1, 1083572842675608
  br i1 %4, label %5, label %9, !prof !161

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2167145685351216
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 8512
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #30
  ret ptr %11
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #16 comdat align 2 !prof !131 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %1, ptr noundef nonnull align 8 dereferenceable(8024) %2, i64 8024, i1 false)
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  store ptr %6, ptr %4, align 8, !tbaa !139
  %7 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !220
  store ptr %9, ptr %7, align 8, !tbaa !220
  %10 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %11 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !219
  store ptr %12, ptr %10, align 8, !tbaa !219
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %14 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %15 = load i32, ptr %14, align 8, !tbaa !141
  store i32 %15, ptr %13, align 8, !tbaa !141
  %16 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %class.FullBoard, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %18 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %class.FastState, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %18, ptr noundef nonnull align 8 dereferenceable(316) %19, i64 316, i1 false)
  %20 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  store ptr %22, ptr %20, align 8, !tbaa !137
  %23 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %24 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !217
  store ptr %25, ptr %23, align 8, !tbaa !217
  %26 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %27 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !214
  store ptr %28, ptr %26, align 8, !tbaa !214
  %29 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %30 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %31 = load ptr, ptr %30, align 8, !tbaa !137
  store ptr %31, ptr %29, align 8, !tbaa !137
  %32 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %33 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !217
  store ptr %34, ptr %32, align 8, !tbaa !217
  %35 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %36 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !214
  store ptr %37, ptr %35, align 8, !tbaa !214
  %38 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %40 = load ptr, ptr %39, align 8, !tbaa !134
  store ptr %40, ptr %38, align 8, !tbaa !134
  %41 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %42 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !132
  store ptr %43, ptr %41, align 8, !tbaa !132
  %44 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %45 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !200
  store ptr %46, ptr %44, align 8, !tbaa !200
  %47 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 1
  %48 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  tail call void @_ZNSt15_Rb_tree_headerC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(40) %48) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !121
  store i32 %7, ptr %0, align 8, !tbaa !121
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !128
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !129
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %4, i64 0, i32 1
  store ptr %0, ptr %15, align 8, !tbaa !267
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !130
  store ptr null, ptr %3, align 8, !tbaa !127
  store ptr %1, ptr %9, align 8, !tbaa !128
  store ptr %1, ptr %12, align 8, !tbaa !129
  br label %24

19:                                               ; preds = %2
  store i32 0, ptr %0, align 8, !tbaa !121
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !127
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %22, align 8, !tbaa !129
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  br label %24

24:                                               ; preds = %19, %6
  %25 = phi ptr [ %23, %19 ], [ %16, %6 ]
  store i64 0, ptr %25, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %5)
          to label %9 unwind label %6

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #29
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %17, %15 ], [ %11, %9 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %16)
  %17 = getelementptr inbounds %class.SGFTree, ptr %16, i64 1
  %18 = icmp eq ptr %17, %13
  br i1 %18, label %19, label %15, !llvm.loop !268

19:                                               ; preds = %15, %9
  %20 = load ptr, ptr %10, align 8, !tbaa !134
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #26
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %25) #26
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !137
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @_ZdlPv(ptr noundef %30) #26
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZdlPv(ptr noundef %35) #26
  br label %38

38:                                               ; preds = %33, %37
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !269 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !270

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !199, !llvm.loop !271

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %0) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 !prof !196 {
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4)
          to label %8 unwind label %5, !prof !160

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #29
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %18, label %14, !prof !272

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %10, %8 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %15)
  %16 = getelementptr inbounds %class.SGFTree, ptr %15, i64 1
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %14, !prof !273, !llvm.loop !268

18:                                               ; preds = %14, %8
  %19 = load ptr, ptr %9, align 8, !tbaa !134
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !272

21:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %19) #26
  br label %22

22:                                               ; preds = %18, %21
  %23 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !137
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !161

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !137
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !161

31:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %29) #26
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !160

36:                                               ; preds = %32
  tail call void @_ZdlPv(ptr noundef %34) #26
  br label %37

37:                                               ; preds = %32, %36
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = load ptr, ptr %0, align 8, !tbaa !189
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775296
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 8512
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1083572842675608)
  %18 = select i1 %16, i64 1083572842675608, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 8512
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %class.SGFTree, ptr %26, i64 %21
  invoke void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %27, ptr noundef nonnull align 8 dereferenceable(8512) %2)
          to label %28 unwind label %53

28:                                               ; preds = %25
  %29 = icmp eq ptr %6, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %34, %28
  %31 = phi ptr [ %26, %28 ], [ %38, %34 ]
  %32 = getelementptr inbounds %class.SGFTree, ptr %31, i64 1
  %33 = icmp eq ptr %5, %1
  br i1 %33, label %46, label %40

34:                                               ; preds = %28, %34
  %35 = phi ptr [ %38, %34 ], [ %26, %28 ]
  %36 = phi ptr [ %37, %34 ], [ %6, %28 ]
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8512) %36) #25
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %36) #25
  %37 = getelementptr inbounds %class.SGFTree, ptr %36, i64 1
  %38 = getelementptr inbounds %class.SGFTree, ptr %35, i64 1
  %39 = icmp eq ptr %37, %1
  br i1 %39, label %30, label %34, !llvm.loop !201

40:                                               ; preds = %30, %40
  %41 = phi ptr [ %44, %40 ], [ %32, %30 ]
  %42 = phi ptr [ %43, %40 ], [ %1, %30 ]
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %41, ptr noundef nonnull align 8 dereferenceable(8512) %42) #25
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %42) #25
  %43 = getelementptr inbounds %class.SGFTree, ptr %42, i64 1
  %44 = getelementptr inbounds %class.SGFTree, ptr %41, i64 1
  %45 = icmp eq ptr %43, %5
  br i1 %45, label %46, label %40, !llvm.loop !201

46:                                               ; preds = %40, %30
  %47 = phi ptr [ %32, %30 ], [ %44, %40 ]
  %48 = icmp eq ptr %6, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %6) #26
  br label %50

50:                                               ; preds = %46, %49
  %51 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !134
  store ptr %47, ptr %4, align 8, !tbaa !132
  %52 = getelementptr inbounds %class.SGFTree, ptr %26, i64 %18
  store ptr %52, ptr %51, align 8, !tbaa !200
  ret void

53:                                               ; preds = %25
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  %56 = tail call ptr @__cxa_begin_catch(ptr %55) #25
  %57 = icmp eq ptr %26, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %27) #25
  br label %62

59:                                               ; preds = %62
  %60 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %63 unwind label %64

61:                                               ; preds = %53
  tail call void @_ZdlPv(ptr noundef %26) #26
  br label %62

62:                                               ; preds = %58, %61
  invoke void @__cxa_rethrow() #27
          to label %67 unwind label %59

63:                                               ; preds = %59
  resume { ptr, i32 } %60

64:                                               ; preds = %59
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #29
  unreachable

67:                                               ; preds = %62
  unreachable
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !141
  store i32 %7, ptr %5, align 8, !tbaa !141
  %8 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %10 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %10, ptr noundef nonnull align 8 dereferenceable(316) %11, i64 316, i1 false)
  %12 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %14 unwind label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %33 unwind label %19

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %24

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %12, align 8, !tbaa !137
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %21) #26
  br label %24

24:                                               ; preds = %23, %19, %17
  %25 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ], [ %20, %23 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !139
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %76
  %29 = phi ptr [ %77, %76 ], [ %26, %24 ]
  %30 = phi { ptr, i32 } [ %68, %76 ], [ %25, %24 ]
  tail call void @_ZdlPv(ptr noundef %29) #26
  br label %31

31:                                               ; preds = %28, %76, %24
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %68, %76 ], [ %30, %28 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  %34 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %36 unwind label %51

36:                                               ; preds = %33
  %37 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  store i32 0, ptr %37, align 8, !tbaa !121
  %38 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %38, align 8, !tbaa !127
  %39 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !128
  %40 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %37, ptr %40, align 8, !tbaa !129
  %41 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %41, align 8, !tbaa !130
  %42 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !127
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2
  %47 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %48 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(48) %46)
          to label %49 unwind label %53

49:                                               ; preds = %45
  store ptr %48, ptr %38, align 8, !tbaa !189
  br label %50

50:                                               ; preds = %49, %36
  ret void

51:                                               ; preds = %33
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %67

53:                                               ; preds = %45
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = load ptr, ptr %34, align 8, !tbaa !134
  %56 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !132
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %53, %59
  %60 = phi ptr [ %61, %59 ], [ %55, %53 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %60)
  %61 = getelementptr inbounds %class.SGFTree, ptr %60, i64 1
  %62 = icmp eq ptr %61, %57
  br i1 %62, label %63, label %59, !llvm.loop !268

63:                                               ; preds = %59, %53
  %64 = load ptr, ptr %34, align 8, !tbaa !134
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @_ZdlPv(ptr noundef %64) #26
  br label %67

67:                                               ; preds = %66, %63, %51
  %68 = phi { ptr, i32 } [ %52, %51 ], [ %54, %63 ], [ %54, %66 ]
  %69 = load ptr, ptr %15, align 8, !tbaa !137
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void @_ZdlPv(ptr noundef %69) #26
  br label %72

72:                                               ; preds = %71, %67
  %73 = load ptr, ptr %12, align 8, !tbaa !137
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @_ZdlPv(ptr noundef %73) #26
  br label %76

76:                                               ; preds = %75, %72
  %77 = load ptr, ptr %3, align 8, !tbaa !139
  %78 = icmp eq ptr %77, null
  br i1 %78, label %31, label %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !164 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = load ptr, ptr %1, align 8, !tbaa !134
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8512
  %10 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !172

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !134
  store ptr %16, ptr %10, align 8, !tbaa !132
  %17 = getelementptr inbounds %class.SGFTree, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !200
  %18 = load ptr, ptr %1, align 8, !tbaa !189
  %19 = load ptr, ptr %3, align 8, !tbaa !189
  %20 = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %18, ptr %19, ptr noundef %16)
          to label %21 unwind label %22, !prof !172

21:                                               ; preds = %15
  store ptr %20, ptr %10, align 8, !tbaa !132
  ret void

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %0, align 8, !tbaa !134
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %26, %22
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = load ptr, ptr %1, align 8, !tbaa !137
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %21, label %13, !prof !275

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, 1152921504606846975
  br i1 %14, label %15, label %19, !prof !224

15:                                               ; preds = %13
  %16 = icmp ugt i64 %9, 2305843009213693951
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

18:                                               ; preds = %15
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

19:                                               ; preds = %13
  %20 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #30
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ]
  store ptr %22, ptr %0, align 8, !tbaa !137
  store ptr %22, ptr %10, align 8, !tbaa !217
  %23 = getelementptr inbounds i64, ptr %22, i64 %9
  store ptr %23, ptr %11, align 8, !tbaa !214
  %24 = load ptr, ptr %1, align 8, !tbaa !189
  %25 = load ptr, ptr %3, align 8, !tbaa !189
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %24 to i64
  %28 = sub i64 %26, %27
  %29 = icmp eq ptr %25, %24
  br i1 %29, label %31, label %30, !prof !275

30:                                               ; preds = %21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %28, i1 false), !prof !276
  br label %31

31:                                               ; preds = %21, %30
  %32 = getelementptr inbounds i8, ptr %22, i64 %28
  store ptr %32, ptr %10, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !277 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = load ptr, ptr %1, align 8, !tbaa !139
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !278

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !139
  store ptr %16, ptr %10, align 8, !tbaa !220
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !219
  %18 = load ptr, ptr %1, align 8, !tbaa !189
  %19 = load ptr, ptr %3, align 8, !tbaa !189
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24, !prof !278

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !220
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %22, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %6, ptr noundef nonnull align 8 dereferenceable(8512) %7)
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.SGFTree, ptr %7, i64 1
  %10 = getelementptr inbounds %class.SGFTree, ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %22, label %5, !llvm.loop !279

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #25
  %16 = icmp eq ptr %6, %2
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %19, %17 ], [ %2, %12 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %18)
  %19 = getelementptr inbounds %class.SGFTree, ptr %18, i64 1
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %17, !llvm.loop !268

21:                                               ; preds = %17, %12
  invoke void @__cxa_rethrow() #27
          to label %30 unwind label %24

22:                                               ; preds = %8, %3
  %23 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %23

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %27

26:                                               ; preds = %24
  resume { ptr, i32 } %25

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #29
  unreachable

30:                                               ; preds = %21
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat align 2 !prof !131 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !189
  %4 = getelementptr inbounds i8, ptr %1, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %7, %2 ], [ %11, %8 ]
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !280

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %9, ptr %14, align 8, !tbaa !189
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %7, %13 ], [ %18, %15 ]
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !248
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !281

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %16, ptr %21, align 8, !tbaa !189
  %22 = getelementptr inbounds i8, ptr %1, i64 40
  %23 = load i64, ptr %22, align 8, !tbaa !130
  %24 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 %23, ptr %24, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %3, align 8, !tbaa !282
  %7 = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(64) %5)
  %8 = load i32, ptr %1, align 8, !tbaa !284
  store i32 %8, ptr %7, align 8, !tbaa !284
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %2, ptr %11, align 8, !tbaa !267
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !248
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %18

17:                                               ; preds = %15
  store ptr %16, ptr %10, align 8, !tbaa !248
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

20:                                               ; preds = %17, %4
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !247
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %20, %50
  %25 = phi ptr [ %52, %50 ], [ %22, %20 ]
  %26 = phi ptr [ %28, %50 ], [ %7, %20 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !282
  %28 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30
          to label %29 unwind label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %25, i64 0, i32 1
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(64) %30)
          to label %31 unwind label %43

31:                                               ; preds = %29
  %32 = load i32, ptr %25, align 8, !tbaa !284
  store i32 %32, ptr %28, align 8, !tbaa !284
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %28, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %28, i64 0, i32 3
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %26, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  store ptr %28, ptr %35, align 8, !tbaa !247
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %28, i64 0, i32 1
  store ptr %26, ptr %36, align 8, !tbaa !267
  %37 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %25, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !248
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %38, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %42 unwind label %43

42:                                               ; preds = %40
  store ptr %41, ptr %34, align 8, !tbaa !248
  br label %50

43:                                               ; preds = %29, %24, %40
  %44 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

45:                                               ; preds = %43, %18
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %19, %18 ]
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = tail call ptr @__cxa_begin_catch(ptr %47) #25
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %7)
          to label %49 unwind label %54

49:                                               ; preds = %45
  invoke void @__cxa_rethrow() #27
          to label %61 unwind label %54

50:                                               ; preds = %42, %31
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %25, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !247
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %24, !llvm.loop !285

54:                                               ; preds = %49, %45
  %55 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %56 unwind label %58

56:                                               ; preds = %54
  resume { ptr, i32 } %55

57:                                               ; preds = %50, %20
  ret ptr %7

58:                                               ; preds = %54
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  tail call void @__clang_call_terminate(ptr %60) #29
  unreachable

61:                                               ; preds = %49
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %11 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = tail call ptr @__cxa_begin_catch(ptr %7) #25
  tail call void @_ZdlPv(ptr noundef %1) #26
  invoke void @__cxa_rethrow() #27
          to label %16 unwind label %9

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %12 unwind label %13

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %9
  resume { ptr, i32 } %10

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #29
  unreachable

16:                                               ; preds = %5
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !165
  %4 = load ptr, ptr %1, align 8, !tbaa !174
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !167
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::pair.30", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::pair.30", ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::pair.30", ptr %0, i64 0, i32 1, i32 2
  store ptr %10, ptr %8, align 8, !tbaa !165
  %11 = load ptr, ptr %9, align 8, !tbaa !174
  %12 = getelementptr inbounds %"struct.std::pair.30", ptr %1, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !167
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %11, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %2
  ret void

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %0, align 8, !tbaa !174
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !167
  %23 = icmp ult i64 %22, 16
  tail call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %25

25:                                               ; preds = %20, %24
  resume { ptr, i32 } %17
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_SGFTree.cpp() #21 section ".text.startup" !prof !286 !PGOFuncName !287 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!115}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!35 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN11TimeControlC1Eiiii, i64 10}
!36 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, i64 10}
!37 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZNSt6vectorIySaIyEEaSERKS1_, i64 20}
!38 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9GameState19anchor_game_historyEv, i64 10}
!39 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9FastState11get_to_moveEv, i64 10}
!40 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN7SGFTree8get_moveEi, i64 437}
!41 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9GameState9play_moveEi, i64 437}
!42 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 874}
!43 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, i64 874}
!44 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 1748}
!45 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 874}
!46 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode, i64 10}
!47 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7KoState9init_gameEif, i64 10}
!48 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, i64 10}
!49 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7SGFTree15populate_statesEv, i64 10}
!50 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev, i64 10}
!51 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt8ios_baseD2Ev, i64 10}
!52 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, i64 1788}
!53 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 1}
!54 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 19}
!55 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode, i64 19}
!56 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSirsERi, i64 9}
!57 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7KoState9init_gameEif, i64 19}
!58 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev, i64 19}
!59 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt8ios_baseD2Ev, i64 19}
!60 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSi10_M_extractIfEERSiRT_, i64 10}
!61 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9FastBoard13get_boardsizeEv, i64 10}
!62 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, i64 894}
!63 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree9set_stateER7KoState, i64 437}
!64 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9FastState11get_to_moveEv, i64 874}
!65 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree8get_moveEi, i64 437}
!66 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree10apply_moveEii, i64 437}
!67 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree15populate_statesEv, i64 437}
!68 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 21}
!69 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, i64 11}
!70 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @__cxa_allocate_exception, i64 1}
!71 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @__cxa_throw, i64 1}
!72 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 10}
!73 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZdlPv, i64 20}
!74 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN9FastBoard13get_boardsizeEv, i64 1748}
!75 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 874}
!76 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN9FastBoard10get_vertexEii, i64 874}
!77 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @_ZN9FastBoard10get_squareEi, i64 437}
!78 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @_ZN7KoState9play_moveEii, i64 437}
!79 = !{ptr @_ZN7SGFTree9set_stateER7KoState, ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, i64 437}
!80 = !{ptr @_ZN7SGFTree9set_stateER7KoState, ptr @_ZNSt6vectorIySaIyEEaSERKS1_, i64 874}
!81 = !{ptr @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_, i64 606}
!82 = !{ptr @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, i64 606}
!83 = !{ptr @_ZN7SGFTree9add_childES_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, i64 437}
!84 = !{ptr @_ZN7SGFTree9add_childES_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_, i64 437}
!85 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv, i64 437}
!86 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_, ptr @_ZN7SGFTreeC2ERKS_, i64 437}
!87 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZdlPv, i64 3038376}
!88 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 894}
!89 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!90 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 12425414}
!91 = !{ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 1212}
!92 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 32}
!93 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, i64 2662}
!94 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @memcmp, i64 1781}
!95 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, ptr @memcmp, i64 2871}
!96 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @memcmp, i64 1892}
!97 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_Znwm, i64 606}
!98 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E, i64 606}
!99 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, i64 606}
!100 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, i64 606}
!101 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @memcmp, i64 325}
!102 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @memcmp, i64 159}
!103 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 606}
!104 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZdlPv, i64 617}
!105 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv, ptr @_Znwm, i64 437}
!106 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 606}
!107 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!108 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 437}
!109 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 427}
!110 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZdlPv, i64 1301}
!111 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 874}
!112 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_Znwm, i64 15448222}
!113 = !{ptr @_GLOBAL__sub_I_SGFTree.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!114 = !{ptr @_GLOBAL__sub_I_SGFTree.cpp, ptr @__cxa_atexit, i64 1}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !{!"function_entry_count", i64 448}
!117 = !{!118, !118, i64 0}
!118 = !{!"int", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C++ TBAA"}
!121 = !{!122, !124, i64 0}
!122 = !{!"_ZTSSt15_Rb_tree_header", !123, i64 0, !126, i64 32}
!123 = !{!"_ZTSSt18_Rb_tree_node_base", !124, i64 0, !125, i64 8, !125, i64 16, !125, i64 24}
!124 = !{!"_ZTSSt14_Rb_tree_color", !119, i64 0}
!125 = !{!"any pointer", !119, i64 0}
!126 = !{!"long", !119, i64 0}
!127 = !{!122, !125, i64 8}
!128 = !{!122, !125, i64 16}
!129 = !{!122, !125, i64 24}
!130 = !{!122, !126, i64 32}
!131 = !{!"function_entry_count", i64 0}
!132 = !{!133, !125, i64 8}
!133 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!134 = !{!133, !125, i64 0}
!135 = !{!"function_entry_count", i64 10}
!136 = !{!"branch_weights", i32 10, i32 0}
!137 = !{!138, !125, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!139 = !{!140, !125, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!141 = !{!142, !118, i64 8048}
!142 = !{!"_ZTS9FastBoard", !143, i64 0, !143, i64 882, !118, i64 1764, !118, i64 1768, !118, i64 1772, !144, i64 1776, !145, i64 3540, !145, i64 4424, !145, i64 5308, !145, i64 6192, !143, i64 7076, !146, i64 7960, !147, i64 7976, !148, i64 8008, !148, i64 8016, !149, i64 8024, !118, i64 8048}
!143 = !{!"_ZTSN5boost5arrayItLm441EEE", !119, i64 0}
!144 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !119, i64 0}
!145 = !{!"_ZTSN5boost5arrayItLm442EEE", !119, i64 0}
!146 = !{!"_ZTSN5boost5arrayIiLm4EEE", !119, i64 0}
!147 = !{!"_ZTSN5boost5arrayIiLm8EEE", !119, i64 0}
!148 = !{!"_ZTSN5boost5arrayIiLm2EEE", !119, i64 0}
!149 = !{!"_ZTSSt6vectorIiSaIiEE", !150, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !151, i64 0}
!151 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !140, i64 0}
!152 = !{!153, !118, i64 0}
!153 = !{!"_ZTSSt4pairIiiE", !118, i64 0, !118, i64 4}
!154 = !{!153, !118, i64 4}
!155 = !{!"branch_weights", i32 10, i32 230}
!156 = distinct !{!156, !157, !158}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = !{!"branch_weights", i32 10, i32 437}
!160 = !{!"branch_weights", i32 437, i32 0}
!161 = !{!"branch_weights", i32 0, i32 437}
!162 = !{!"branch_weights", i32 437, i32 10}
!163 = distinct !{!163, !157, !158}
!164 = !{!"function_entry_count", i64 874}
!165 = !{!166, !125, i64 0}
!166 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !125, i64 0}
!167 = !{!168, !126, i64 8}
!168 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !166, i64 0, !126, i64 8, !119, i64 16}
!169 = !{!119, !119, i64 0}
!170 = !{!"branch_weights", i32 440, i32 434}
!171 = !{!"branch_weights", i32 434, i32 0}
!172 = !{!"branch_weights", i32 874, i32 0}
!173 = !{!"branch_weights", i32 0, i32 874}
!174 = !{!168, !125, i64 0}
!175 = distinct !{!175, !157, !158}
!176 = distinct !{!176, !157, !158}
!177 = !{!"function_entry_count", i64 447}
!178 = !{!"branch_weights", i32 447, i32 0}
!179 = !{!"branch_weights", i32 446, i32 1}
!180 = !{!"branch_weights", i32 1, i32 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"vtable pointer", !120, i64 0}
!183 = !{!"branch_weights", i32 438, i32 9}
!184 = !{!"branch_weights", i32 9, i32 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"float", !119, i64 0}
!187 = distinct !{!187, !157, !158}
!188 = distinct !{!188, !157, !158}
!189 = !{!125, !125, i64 0}
!190 = distinct !{!190, !157, !158}
!191 = !{!"function_entry_count", i64 11}
!192 = !{!"branch_weights", i32 11, i32 0}
!193 = !{!"branch_weights", i32 1, i32 10}
!194 = !{!"branch_weights", i32 0, i32 1}
!195 = !{!"branch_weights", i32 0, i32 10}
!196 = !{!"function_entry_count", i64 437}
!197 = !{!"branch_weights", i32 437, i32 10051}
!198 = !{!"function_entry_count", i64 606}
!199 = !{!"branch_weights", i32 606, i32 0}
!200 = !{!133, !125, i64 16}
!201 = distinct !{!201, !157, !158}
!202 = !{!"function_entry_count", i64 12023}
!203 = !{!204, !125, i64 0}
!204 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!205 = !{!204, !125, i64 8}
!206 = !{!"branch_weights", i32 1, i32 12022}
!207 = !{!"branch_weights", i32 0, i32 1513182}
!208 = !{!"branch_weights", i32 1513182, i32 0}
!209 = !{!"branch_weights", i32 12022, i32 1501160}
!210 = distinct !{!210, !157, !158}
!211 = !{!"branch_weights", i32 11, i32 12012}
!212 = !{!"function_entry_count", i64 894}
!213 = !{!"branch_weights", i32 0, i32 894}
!214 = !{!138, !125, i64 16}
!215 = !{!"branch_weights", i32 894, i32 0}
!216 = !{!"VP", i32 1, i64 894, i64 513, i64 266, i64 257, i64 232, i64 129, i64 120, i64 65, i64 76}
!217 = !{!138, !125, i64 8}
!218 = !{!"branch_weights", i32 0, i32 447}
!219 = !{!140, !125, i64 16}
!220 = !{!140, !125, i64 8}
!221 = !{!"function_entry_count", i64 10252442}
!222 = !{!"branch_weights", i32 0, i32 10252442}
!223 = !{!"function_entry_count", i64 12425414}
!224 = !{!"branch_weights", i32 0, i32 27873636}
!225 = !{!"function_entry_count", i64 37847}
!226 = !{!126, !126, i64 0}
!227 = !{!"branch_weights", i32 32, i32 37815}
!228 = !{!"branch_weights", i32 36919, i32 928, i32 0}
!229 = !{!"VP", i32 1, i64 36919, i64 2, i64 29486, i64 3, i64 5287, i64 4, i64 1900, i64 8, i64 106}
!230 = !{!"function_entry_count", i64 2662}
!231 = !{!"branch_weights", i32 881, i32 1781}
!232 = !{!"branch_weights", i32 0, i32 1781}
!233 = !{!"VP", i32 1, i64 1781, i64 1, i64 1742, i64 2, i64 39}
!234 = !{!"branch_weights", i32 894, i32 887}
!235 = !{!"branch_weights", i32 887, i32 894}
!236 = !{!"branch_weights", i32 1, i32 2661}
!237 = !{!"branch_weights", i32 0, i32 2871}
!238 = !{!"VP", i32 1, i64 2871, i64 1, i64 2624, i64 2, i64 247}
!239 = !{!"branch_weights", i32 894, i32 1977}
!240 = !{!"branch_weights", i32 1053, i32 1818}
!241 = !{!"branch_weights", i32 2661, i32 210}
!242 = distinct !{!242, !157, !158}
!243 = !{!"branch_weights", i32 1, i32 893}
!244 = !{!"branch_weights", i32 0, i32 946}
!245 = !{!"VP", i32 1, i64 946, i64 1, i64 876, i64 2, i64 70}
!246 = !{!"branch_weights", i32 946, i32 0}
!247 = !{!123, !125, i64 16}
!248 = !{!123, !125, i64 24}
!249 = !{!"branch_weights", i32 893, i32 53}
!250 = distinct !{!250, !157, !158}
!251 = distinct !{!251, !157, !158}
!252 = !{!"branch_weights", i32 281, i32 325}
!253 = !{!"branch_weights", i32 0, i32 325}
!254 = !{!"VP", i32 1, i64 325, i64 2, i64 260, i64 1, i64 65}
!255 = !{!"branch_weights", i32 57, i32 268}
!256 = !{!"branch_weights", i32 117, i32 208}
!257 = !{!"branch_weights", i32 325, i32 0}
!258 = distinct !{!258, !157, !158}
!259 = !{!"VP", i32 1, i64 606, i64 2, i64 439, i64 3, i64 167}
!260 = !{!"branch_weights", i32 595, i32 11}
!261 = !{!"VP", i32 1, i64 595, i64 3, i64 450, i64 9, i64 66, i64 2, i64 22, i64 5, i64 14}
!262 = !{!"branch_weights", i32 0, i32 606}
!263 = !{!"branch_weights", i32 447, i32 159}
!264 = !{!"branch_weights", i32 0, i32 159}
!265 = !{!"VP", i32 1, i64 159, i64 2, i64 100, i64 1, i64 59}
!266 = !{!"branch_weights", i32 57, i32 102}
!267 = !{!123, !125, i64 8}
!268 = distinct !{!268, !157, !158}
!269 = !{!"function_entry_count", i64 1928}
!270 = !{!"branch_weights", i32 1322, i32 606}
!271 = distinct !{!271, !157, !158}
!272 = !{!"branch_weights", i32 10, i32 427}
!273 = !{!"branch_weights", i32 427, i32 0}
!274 = !{!"function_entry_count", i64 15449970}
!275 = !{!"branch_weights", i32 1748, i32 15448222}
!276 = !{!"VP", i32 1, i64 15448222, i64 513, i64 7965526, i64 257, i64 3934196, i64 129, i64 2151218, i64 65, i64 812660}
!277 = !{!"function_entry_count", i64 7788864}
!278 = !{!"branch_weights", i32 7788864, i32 0}
!279 = distinct !{!279, !157, !158}
!280 = distinct !{!280, !157, !158}
!281 = distinct !{!281, !157, !158}
!282 = !{!283, !125, i64 0}
!283 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeE", !125, i64 0}
!284 = !{!123, !124, i64 0}
!285 = distinct !{!285, !157, !158}
!286 = !{!"function_entry_count", i64 1}
!287 = !{!"SGFTree.cpp;_GLOBAL__sub_I_SGFTree.cpp"}
