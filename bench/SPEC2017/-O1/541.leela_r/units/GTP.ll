; ModuleID = 'GTP.cpp'
source_filename = "GTP.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.27" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::auto_ptr.32" = type { ptr }
%class.GameState = type <{ %class.KoState, %"class.std::vector.20", %class.TimeControl, [4 x i8] }>
%class.KoState = type { %class.FastState.base, %"class.std::vector.15", %"class.std::vector.15" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.13", %"class.boost::array.14" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array", [2 x i8], %"class.boost::array.5", %"class.boost::array.6", %"class.boost::array.7", %"class.boost::array.7", %"class.std::vector.8", i32 }>
%"class.boost::array.3" = type { [441 x i32] }
%"class.boost::array.4" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.5" = type { [4 x i32] }
%"class.boost::array.6" = type { [8 x i32] }
%"class.boost::array.7" = type { [2 x i32] }
%"class.boost::array.13" = type { [24 x i32] }
%"class.boost::array.14" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.7", %"class.boost::array.7", %"class.boost::array.25", %"class.boost::array.26" }
%"class.boost::array.25" = type { [2 x i8] }
%"class.boost::array.26" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array", [2 x i8], %"class.boost::array.5", %"class.boost::array.6", %"class.boost::array.7", %"class.boost::array.7", %"class.std::vector.8", i32, [4 x i8] }>
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.13", %"class.boost::array.14", [4 x i8] }>
%class.SGFTree = type { %class.KoState, %"class.std::vector.33", %"class.std::multimap" }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZNSt8auto_ptrI7SGFTreeED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_SF_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_ = comdat any

$_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZSt8_DestroyI7SGFTreeEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN3GTP10s_commandsB5cxx11E = dso_local global [26 x %"class.std::__cxx11::basic_string"] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"protocol_version\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"known_command\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"list_commands\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"clear_board\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"genmove\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"showboard\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"final_score\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"final_status_list\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"time_settings\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"time_left\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"mc_score\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"kgs-genmove_cleanup\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"fixed_handicap\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"place_free_handicap\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"set_free_handicap\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"loadsgf\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Leela\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"0.3.16\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"unacceptable size\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"syntax not understood\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"illegal move\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"cannot undo\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"W+%3.1f\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"B+%3.1f\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"Color in time adjust not understood.\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"bench\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"Not a valid number of handicap stones\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_GTP.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nocapture readnone %0) #4 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !51 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 1, i64 0), %1 ], [ %4, %13 ]
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr %"class.std::__cxx11::basic_string", ptr %3, i64 -1, i32 2
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr %"class.std::__cxx11::basic_string", ptr %3, i64 -1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !59
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #26
  br label %13

13:                                               ; preds = %8, %12
  %14 = icmp eq ptr %4, @_ZN3GTP10s_commandsB5cxx11E
  br i1 %14, label %15, label %2

15:                                               ; preds = %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN3GTP13get_life_listB5cxx11ER9GameStateb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8508) %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector.27", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %9, ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !59
  store i8 0, ptr %9, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #27
  invoke void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8388) %1)
          to label %11 unwind label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  br label %14

14:                                               ; preds = %11, %41
  %15 = phi i32 [ %42, %41 ], [ 0, %11 ]
  %16 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
          to label %17 unwind label %34

17:                                               ; preds = %14
  %18 = icmp slt i32 %15, %16
  br i1 %18, label %36, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %4, align 8, !tbaa !62
  %21 = load ptr, ptr %8, align 8, !tbaa !62
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %94, label %23

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i64
  %25 = ptrtoint ptr %20 to i64
  %26 = sub i64 %24, %25
  %27 = ashr exact i64 %26, 5
  %28 = call i64 @llvm.ctlz.i64(i64 %27, i1 true), !range !63
  %29 = shl nuw nsw i64 %28, 1
  %30 = xor i64 %29, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %20, ptr %21, i64 noundef %30)
          to label %31 unwind label %153

31:                                               ; preds = %23
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %20, ptr %21)
          to label %94 unwind label %153

32:                                               ; preds = %3
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %226

34:                                               ; preds = %14
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %210

36:                                               ; preds = %17, %92
  %37 = phi i32 [ %93, %92 ], [ 0, %17 ]
  %38 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
          to label %39 unwind label %43

39:                                               ; preds = %36
  %40 = icmp slt i32 %37, %38
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !64

43:                                               ; preds = %36
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %210

45:                                               ; preds = %39
  %46 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %15, i32 noundef %37)
          to label %47 unwind label %76

47:                                               ; preds = %45
  %48 = invoke noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %46)
          to label %49 unwind label %76

49:                                               ; preds = %47
  %50 = icmp eq i32 %48, 2
  br i1 %50, label %92, label %51

51:                                               ; preds = %49
  %52 = sext i32 %46 to i64
  %53 = load ptr, ptr %5, align 8, !tbaa !67
  %54 = sdiv i64 %52, 64
  %55 = getelementptr inbounds i64, ptr %53, i64 %54
  %56 = srem i64 %52, 64
  %57 = ashr i64 %56, 63
  %58 = getelementptr inbounds i64, ptr %55, i64 %57
  %59 = and i64 %56, 63
  %60 = shl nuw i64 1, %59
  %61 = load i64, ptr %58, align 8, !tbaa !70
  %62 = and i64 %61, %60
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, %2
  br i1 %64, label %65, label %92

65:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  invoke void @_ZN9FastBoard10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %46)
          to label %66 unwind label %78

66:                                               ; preds = %65
  %67 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %68 unwind label %80

68:                                               ; preds = %66
  %69 = load ptr, ptr %6, align 8, !tbaa !52
  %70 = icmp eq ptr %69, %12
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, ptr %13, align 8, !tbaa !59
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %69) #26
  br label %75

75:                                               ; preds = %71, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %92

76:                                               ; preds = %47, %45
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %210

78:                                               ; preds = %65
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %90

80:                                               ; preds = %66
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load ptr, ptr %6, align 8, !tbaa !52
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !59
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %90

89:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %82) #26
  br label %90

90:                                               ; preds = %89, %85, %78
  %91 = phi { ptr, i32 } [ %79, %78 ], [ %81, %85 ], [ %81, %89 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %210

92:                                               ; preds = %51, %75, %49
  %93 = add nuw nsw i32 %37, 1
  br label %36, !llvm.loop !71

94:                                               ; preds = %19, %31
  %95 = load ptr, ptr %4, align 8, !tbaa !62
  %96 = load ptr, ptr %8, align 8, !tbaa !62
  %97 = invoke ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %95, ptr %96)
          to label %98 unwind label %155

98:                                               ; preds = %94
  %99 = load ptr, ptr %8, align 8, !tbaa !62
  %100 = load ptr, ptr %4, align 8, !tbaa !62
  %101 = ptrtoint ptr %97 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i8, ptr %100, i64 %103
  %105 = ptrtoint ptr %99 to i64
  %106 = sub i64 %105, %102
  %107 = getelementptr inbounds i8, ptr %100, i64 %106
  %108 = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %104, ptr %107)
          to label %109 unwind label %157

109:                                              ; preds = %98
  %110 = load ptr, ptr %8, align 8, !tbaa !72
  %111 = load ptr, ptr %4, align 8, !tbaa !74
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  br label %159

116:                                              ; preds = %183, %109
  %117 = load ptr, ptr %5, align 8, !tbaa !67
  %118 = icmp eq ptr %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %5, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !75
  %122 = ptrtoint ptr %121 to i64
  %123 = ptrtoint ptr %117 to i64
  %124 = sub i64 %122, %123
  %125 = ashr exact i64 %124, 3
  %126 = sub nsw i64 0, %125
  %127 = getelementptr inbounds i64, ptr %121, i64 %126
  call void @_ZdlPv(ptr noundef %127) #26
  store ptr null, ptr %5, align 8
  %128 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %128, align 8
  %129 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %129, align 8
  %130 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %130, align 8
  store ptr null, ptr %120, align 8
  br label %131

131:                                              ; preds = %116, %119
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #27
  %132 = load ptr, ptr %4, align 8, !tbaa !74
  %133 = load ptr, ptr %8, align 8, !tbaa !72
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %148, label %135

135:                                              ; preds = %131, %145
  %136 = phi ptr [ %146, %145 ], [ %132, %131 ]
  %137 = load ptr, ptr %136, align 8, !tbaa !52
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %136, i64 0, i32 2
  %139 = icmp eq ptr %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %136, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !59
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %145

144:                                              ; preds = %135
  call void @_ZdlPv(ptr noundef %137) #26
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %136, i64 1
  %147 = icmp eq ptr %146, %133
  br i1 %147, label %148, label %135, !llvm.loop !78

148:                                              ; preds = %145, %131
  %149 = load ptr, ptr %4, align 8, !tbaa !74
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void @_ZdlPv(ptr noundef %149) #26
  br label %152

152:                                              ; preds = %148, %151
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void

153:                                              ; preds = %31, %23
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %210

155:                                              ; preds = %94
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %210

157:                                              ; preds = %98
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %210

159:                                              ; preds = %113, %183
  %160 = phi ptr [ %111, %113 ], [ %187, %183 ]
  %161 = phi i64 [ 0, %113 ], [ %185, %183 ]
  %162 = phi i32 [ 0, %113 ], [ %184, %183 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, ptr @.str.25, ptr @.str.26
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %160, i64 %161
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %164, ptr noundef nonnull align 8 dereferenceable(32) %165)
          to label %166 unwind label %193

166:                                              ; preds = %159
  %167 = load i64, ptr %114, align 8, !tbaa !59
  %168 = load i64, ptr %10, align 8, !tbaa !59
  %169 = sub i64 4611686018427387903, %168
  %170 = icmp ult i64 %169, %167
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #28
          to label %172 unwind label %197

172:                                              ; preds = %171
  unreachable

173:                                              ; preds = %166
  %174 = load ptr, ptr %7, align 8, !tbaa !52
  %175 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %174, i64 noundef %167)
          to label %176 unwind label %195

176:                                              ; preds = %173
  %177 = load ptr, ptr %7, align 8, !tbaa !52
  %178 = icmp eq ptr %177, %115
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i64, ptr %114, align 8, !tbaa !59
  %181 = icmp ult i64 %180, 16
  call void @llvm.assume(i1 %181)
  br label %183

182:                                              ; preds = %176
  call void @_ZdlPv(ptr noundef %177) #26
  br label %183

183:                                              ; preds = %179, %182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  %184 = add i32 %162, 1
  %185 = zext i32 %184 to i64
  %186 = load ptr, ptr %8, align 8, !tbaa !72
  %187 = load ptr, ptr %4, align 8, !tbaa !74
  %188 = ptrtoint ptr %186 to i64
  %189 = ptrtoint ptr %187 to i64
  %190 = sub i64 %188, %189
  %191 = ashr exact i64 %190, 5
  %192 = icmp ugt i64 %191, %185
  br i1 %192, label %159, label %116, !llvm.loop !79

193:                                              ; preds = %159
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %208

195:                                              ; preds = %173
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %199

197:                                              ; preds = %171
  %198 = landingpad { ptr, i32 }
          cleanup
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi { ptr, i32 } [ %196, %195 ], [ %198, %197 ]
  %201 = load ptr, ptr %7, align 8, !tbaa !52
  %202 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %203 = icmp eq ptr %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i64, ptr %114, align 8, !tbaa !59
  %206 = icmp ult i64 %205, 16
  call void @llvm.assume(i1 %206)
  br label %208

207:                                              ; preds = %199
  call void @_ZdlPv(ptr noundef %201) #26
  br label %208

208:                                              ; preds = %207, %204, %193
  %209 = phi { ptr, i32 } [ %194, %193 ], [ %200, %204 ], [ %200, %207 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  br label %210

210:                                              ; preds = %155, %157, %34, %76, %90, %43, %208, %153
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %154, %153 ], [ %35, %34 ], [ %44, %43 ], [ %91, %90 ], [ %77, %76 ], [ %158, %157 ], [ %156, %155 ]
  %212 = load ptr, ptr %5, align 8, !tbaa !67
  %213 = icmp eq ptr %212, null
  br i1 %213, label %226, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %5, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !75
  %217 = ptrtoint ptr %216 to i64
  %218 = ptrtoint ptr %212 to i64
  %219 = sub i64 %217, %218
  %220 = ashr exact i64 %219, 3
  %221 = sub nsw i64 0, %220
  %222 = getelementptr inbounds i64, ptr %216, i64 %221
  call void @_ZdlPv(ptr noundef %222) #26
  store ptr null, ptr %5, align 8
  %223 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %223, align 8
  %224 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %224, align 8
  %225 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %225, align 8
  store ptr null, ptr %215, align 8
  br label %226

226:                                              ; preds = %214, %210, %32
  %227 = phi { ptr, i32 } [ %33, %32 ], [ %211, %210 ], [ %211, %214 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #27
  %228 = load ptr, ptr %0, align 8, !tbaa !52
  %229 = icmp eq ptr %228, %9
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i64, ptr %10, align 8, !tbaa !59
  %232 = icmp ult i64 %231, 16
  call void @llvm.assume(i1 %232)
  br label %234

233:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %228) #26
  br label %234

234:                                              ; preds = %230, %233
  %235 = load ptr, ptr %4, align 8, !tbaa !74
  %236 = load ptr, ptr %8, align 8, !tbaa !72
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %251, label %238

238:                                              ; preds = %234, %248
  %239 = phi ptr [ %249, %248 ], [ %235, %234 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !52
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %239, i64 0, i32 2
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %239, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !59
  %246 = icmp ult i64 %245, 16
  call void @llvm.assume(i1 %246)
  br label %248

247:                                              ; preds = %238
  call void @_ZdlPv(ptr noundef %240) #26
  br label %248

248:                                              ; preds = %247, %243
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %239, i64 1
  %250 = icmp eq ptr %249, %236
  br i1 %250, label %251, label %238, !llvm.loop !78

251:                                              ; preds = %248, %234
  %252 = load ptr, ptr %4, align 8, !tbaa !74
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  call void @_ZdlPv(ptr noundef %252) #26
  br label %255

255:                                              ; preds = %251, %254
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  resume { ptr, i32 } %227
}

declare void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind writable sret(%"class.std::vector.27") align 8, ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #0

declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #0

declare void @_ZN9FastBoard10get_stringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !59
  store i8 0, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = add i64 %8, %4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9)
          to label %10 unwind label %26

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8, !tbaa !59
  %12 = sub i64 4611686018427387903, %11
  %13 = icmp ult i64 %12, %4
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4)
          to label %16 unwind label %26

16:                                               ; preds = %14
  %17 = load i64, ptr %7, align 8, !tbaa !59
  %18 = load i64, ptr %6, align 8, !tbaa !59
  %19 = sub i64 4611686018427387903, %18
  %20 = icmp ult i64 %19, %17
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %10
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #28
          to label %22 unwind label %26

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !52
  %25 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %24, i64 noundef %17)
          to label %34 unwind label %26

26:                                               ; preds = %21, %23, %14, %3
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %0, align 8, !tbaa !52
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, ptr %6, align 8, !tbaa !59
  %32 = icmp ult i64 %31, 16
  tail call void @llvm.assume(i1 %32)
  br label %35

33:                                               ; preds = %26
  tail call void @_ZdlPv(ptr noundef %28) #26
  br label %35

34:                                               ; preds = %23
  ret void

35:                                               ; preds = %33, %30
  resume { ptr, i32 } %27
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3GTP7executeER9GameStateNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca i32, align 4
  %16 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca float, align 4
  %19 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %34 = alloca %"class.std::__cxx11::basic_string", align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %39 = alloca %"class.std::__cxx11::basic_string", align 8
  %40 = alloca %"class.std::__cxx11::basic_string", align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %"class.std::__cxx11::basic_string", align 8
  %44 = alloca %"class.std::vector.8", align 8
  %45 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %46 = alloca %"class.std::__cxx11::basic_string", align 8
  %47 = alloca i32, align 4
  %48 = alloca %"class.std::__cxx11::basic_string", align 8
  %49 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %50 = alloca %"class.std::__cxx11::basic_string", align 8
  %51 = alloca i32, align 4
  %52 = alloca %"class.std::__cxx11::basic_string", align 8
  %53 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %54 = alloca %"class.std::__cxx11::basic_string", align 8
  %55 = alloca %"class.std::__cxx11::basic_string", align 8
  %56 = alloca %"class.std::__cxx11::basic_string", align 8
  %57 = alloca %"class.std::__cxx11::basic_string", align 8
  %58 = alloca %"class.std::__cxx11::basic_string", align 8
  %59 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %60 = alloca %"class.std::__cxx11::basic_string", align 8
  %61 = alloca %"class.std::__cxx11::basic_string", align 8
  %62 = alloca i32, align 4
  %63 = alloca %"class.std::auto_ptr.32", align 8
  %64 = alloca %"class.std::__cxx11::basic_string", align 8
  %65 = alloca %class.GameState, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %66, ptr %3, align 8, !tbaa !60
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 0, ptr %67, align 8, !tbaa !59
  store i8 0, ptr %66, align 8, !tbaa !61
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !59
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %118, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %72, ptr %4, align 8, !tbaa !60
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 0, ptr %73, align 8, !tbaa !59
  store i8 0, ptr %72, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 -1, ptr %5, align 4, !tbaa !80
  %74 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25) #27
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %1684, label %127

76:                                               ; preds = %2, %118
  %77 = phi i64 [ %120, %118 ], [ 0, %2 ]
  %78 = phi i32 [ %119, %118 ], [ 0, %2 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !52
  %80 = getelementptr inbounds i8, ptr %79, i64 %77
  %81 = load i8, ptr %80, align 1, !tbaa !61
  %82 = icmp eq i8 %81, 9
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27)
          to label %99 unwind label %85

85:                                               ; preds = %117, %95, %83
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %1708

87:                                               ; preds = %76
  %88 = add i8 %81, -1
  %89 = icmp ult i8 %88, 9
  %90 = add i8 %81, -11
  %91 = icmp ult i8 %90, 21
  %92 = or i1 %89, %91
  %93 = icmp eq i8 %81, 127
  %94 = or i1 %93, %92
  br i1 %94, label %118, label %95

95:                                               ; preds = %87
  %96 = sext i8 %81 to i32
  %97 = call i32 @tolower(i32 noundef %96) #29
  %98 = trunc i32 %97 to i8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %98)
          to label %99 unwind label %85

99:                                               ; preds = %95, %83
  %100 = load i64, ptr %67, align 8, !tbaa !59
  %101 = icmp ugt i64 %100, 1
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load ptr, ptr %3, align 8, !tbaa !52
  %104 = getelementptr i8, ptr %103, i64 %100
  %105 = getelementptr i8, ptr %104, i64 -2
  %106 = load i8, ptr %105, align 1, !tbaa !61
  %107 = sext i8 %106 to i32
  %108 = call i32 @isspace(i32 noundef %107) #29
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %102
  %111 = add i64 %100, -1
  %112 = getelementptr inbounds i8, ptr %103, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !61
  %114 = sext i8 %113 to i32
  %115 = call i32 @isspace(i32 noundef %114) #29
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %111, i8 noundef signext 0)
          to label %118 unwind label %85

118:                                              ; preds = %117, %87, %99, %110, %102
  %119 = add i32 %78, 1
  %120 = zext i32 %119 to i64
  %121 = load i64, ptr %68, align 8, !tbaa !59
  %122 = icmp ugt i64 %121, %120
  br i1 %122, label %76, label %71, !llvm.loop !81

123:                                              ; preds = %1130
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %1699

125:                                              ; preds = %851, %180, %173, %191, %435, %495, %847, %857, %859, %1145, %1197, %1199, %169
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %1699

127:                                              ; preds = %71
  %128 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28) #27
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void @exit(i32 noundef 0) #30
  unreachable

131:                                              ; preds = %127
  %132 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.29) #27
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %1684, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %3, align 8, !tbaa !52
  %136 = load i8, ptr %135, align 1, !tbaa !61
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 %137, -48
  %139 = icmp ult i32 %138, 10
  br i1 %139, label %140, label %169

140:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8)
          to label %141 unwind label %162

141:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %142 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %143 unwind label %164

143:                                              ; preds = %141
  %144 = load ptr, ptr %6, align 8, !tbaa !82
  %145 = getelementptr i8, ptr %144, i64 -24
  %146 = load i64, ptr %145, align 8
  %147 = getelementptr inbounds i8, ptr %6, i64 %146
  %148 = getelementptr inbounds %"class.std::ios_base", ptr %147, i64 0, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !84
  %150 = and i32 %149, -4097
  store i32 %150, ptr %148, align 4, !tbaa !84
  %151 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %152 unwind label %164

152:                                              ; preds = %143
  %153 = load ptr, ptr %6, align 8, !tbaa !82
  %154 = getelementptr i8, ptr %153, i64 -24
  %155 = load i64, ptr %154, align 8
  %156 = getelementptr inbounds i8, ptr %6, i64 %155
  %157 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %156, i8 noundef signext 10)
          to label %158 unwind label %164

158:                                              ; preds = %152
  %159 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext %157)
          to label %160 unwind label %164

160:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %161 = getelementptr inbounds i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %161) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #27
  br label %170

162:                                              ; preds = %140
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %167

164:                                              ; preds = %158, %152, %143, %141
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %166 = getelementptr inbounds i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %166) #27
  br label %167

167:                                              ; preds = %164, %162
  %168 = phi { ptr, i32 } [ %165, %164 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #27
  br label %1699

169:                                              ; preds = %134
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %170 unwind label %125

170:                                              ; preds = %169, %160
  %171 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str) #27
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %174, ptr noundef nonnull @.str.30, i32 noundef 2)
          to label %1684 unwind label %125

175:                                              ; preds = %170
  %176 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2) #27
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, ptr %5, align 4, !tbaa !80
  br label %180

180:                                              ; preds = %849, %971, %496, %436, %186, %178
  %181 = phi i32 [ %179, %178 ], [ %187, %186 ], [ %437, %436 ], [ %497, %496 ], [ %972, %971 ], [ %850, %849 ]
  %182 = phi ptr [ @.str.31, %178 ], [ @.str.32, %186 ], [ @.str.25, %436 ], [ @.str.25, %496 ], [ @.str.25, %971 ], [ @.str.25, %849 ]
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %181, ptr noundef nonnull %182)
          to label %1684 unwind label %125

183:                                              ; preds = %175
  %184 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3) #27
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, ptr %5, align 4, !tbaa !80
  br label %180

188:                                              ; preds = %183
  %189 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4) #27
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %192, ptr noundef nonnull @.str.25)
          to label %193 unwind label %125

193:                                              ; preds = %191
  call void @exit(i32 noundef 0) #30
  unreachable

194:                                              ; preds = %188
  %195 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 13) #27
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %258

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %198 unwind label %211

198:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  %199 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %199, ptr %9, align 8, !tbaa !60
  %200 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 0, ptr %200, align 8, !tbaa !59
  store i8 0, ptr %199, align 8, !tbaa !61
  %201 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %202 unwind label %213

202:                                              ; preds = %198
  %203 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %204 unwind label %213

204:                                              ; preds = %202
  %205 = load i64, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 0, i32 1), align 8, !tbaa !59
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %235, label %207

207:                                              ; preds = %204
  %208 = load i64, ptr %200, align 8, !tbaa !59
  %209 = icmp eq i64 %208, 0
  %210 = load ptr, ptr %9, align 8
  br label %215

211:                                              ; preds = %197
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %256

213:                                              ; preds = %235, %202, %198
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %246

215:                                              ; preds = %207, %229
  %216 = phi i64 [ 0, %207 ], [ %230, %229 ]
  %217 = phi i64 [ %205, %207 ], [ %233, %229 ]
  %218 = phi ptr [ @_ZN3GTP10s_commandsB5cxx11E, %207 ], [ %231, %229 ]
  %219 = icmp eq i64 %208, %217
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  br i1 %209, label %225, label %221

221:                                              ; preds = %220
  %222 = load ptr, ptr %218, align 8, !tbaa !52
  %223 = call i32 @bcmp(ptr %210, ptr %222, i64 %208)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220, %221
  %226 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %226, ptr noundef nonnull @.str.33)
          to label %237 unwind label %227

227:                                              ; preds = %225
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %246

229:                                              ; preds = %215, %221
  %230 = add nuw i64 %216, 1
  %231 = getelementptr inbounds [26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 %230
  %232 = getelementptr inbounds [26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 %230, i32 1
  %233 = load i64, ptr %232, align 8, !tbaa !59
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %215, !llvm.loop !86

235:                                              ; preds = %229, %204
  %236 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %236, ptr noundef nonnull @.str.34)
          to label %237 unwind label %213

237:                                              ; preds = %225, %235
  %238 = load ptr, ptr %9, align 8, !tbaa !52
  %239 = icmp eq ptr %238, %199
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i64, ptr %200, align 8, !tbaa !59
  %242 = icmp ult i64 %241, 16
  call void @llvm.assume(i1 %242)
  br label %244

243:                                              ; preds = %237
  call void @_ZdlPv(ptr noundef %238) #26
  br label %244

244:                                              ; preds = %240, %243
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %245 = getelementptr inbounds i8, ptr %8, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %245) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #27
  br label %1684

246:                                              ; preds = %227, %213
  %247 = phi { ptr, i32 } [ %214, %213 ], [ %228, %227 ]
  %248 = load ptr, ptr %9, align 8, !tbaa !52
  %249 = icmp eq ptr %248, %199
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i64, ptr %200, align 8, !tbaa !59
  %252 = icmp ult i64 %251, 16
  call void @llvm.assume(i1 %252)
  br label %254

253:                                              ; preds = %246
  call void @_ZdlPv(ptr noundef %248) #26
  br label %254

254:                                              ; preds = %250, %253
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %255 = getelementptr inbounds i8, ptr %8, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %255) #27
  br label %256

256:                                              ; preds = %254, %211
  %257 = phi { ptr, i32 } [ %247, %254 ], [ %212, %211 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #27
  br label %1699

258:                                              ; preds = %194
  %259 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 13) #27
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %380

261:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #27
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %262, ptr %10, align 8, !tbaa !60
  %263 = load ptr, ptr @_ZN3GTP10s_commandsB5cxx11E, align 16, !tbaa !52
  %264 = load i64, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 0, i32 1), align 8, !tbaa !59
  %265 = getelementptr inbounds i8, ptr %263, i64 %264
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %263, ptr noundef %265)
          to label %266 unwind label %278

266:                                              ; preds = %261
  %267 = load i64, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1, i32 1), align 8, !tbaa !59
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %272 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %274 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  br label %280

275:                                              ; preds = %336, %266
  %276 = load i32, ptr %5, align 4, !tbaa !80
  %277 = load ptr, ptr %10, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %276, ptr noundef %277)
          to label %358 unwind label %367

278:                                              ; preds = %261
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %378

280:                                              ; preds = %269, %336
  %281 = phi i64 [ 1, %269 ], [ %337, %336 ]
  %282 = phi ptr [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1, i32 1), %269 ], [ %339, %336 ]
  %283 = phi ptr [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1), %269 ], [ %338, %336 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %270, ptr %12, align 8, !tbaa !60, !alias.scope !87
  %284 = load ptr, ptr %10, align 8, !tbaa !52, !noalias !87
  %285 = load i64, ptr %271, align 8, !tbaa !59, !noalias !87
  %286 = getelementptr inbounds i8, ptr %284, i64 %285
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %284, ptr noundef %286)
          to label %287 unwind label %342

287:                                              ; preds = %280
  %288 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.26)
          to label %298 unwind label %289

289:                                              ; preds = %287
  %290 = landingpad { ptr, i32 }
          cleanup
  %291 = load ptr, ptr %12, align 8, !tbaa !52, !alias.scope !87
  %292 = icmp eq ptr %291, %270
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %295 = load i64, ptr %294, align 8, !tbaa !59, !alias.scope !87
  %296 = icmp ult i64 %295, 16
  call void @llvm.assume(i1 %296)
  br label %356

297:                                              ; preds = %289
  call void @_ZdlPv(ptr noundef %291) #26
  br label %356

298:                                              ; preds = %287
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %299 = load i64, ptr %282, align 8, !tbaa !59, !noalias !90
  %300 = load i64, ptr %272, align 8, !tbaa !59, !noalias !90
  %301 = sub i64 4611686018427387903, %300
  %302 = icmp ult i64 %301, %299
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #28
          to label %304 unwind label %346

304:                                              ; preds = %303
  unreachable

305:                                              ; preds = %298
  %306 = load ptr, ptr %283, align 8, !tbaa !52, !noalias !90
  %307 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %306, i64 noundef %299)
          to label %308 unwind label %344

308:                                              ; preds = %305
  store ptr %273, ptr %11, align 8, !tbaa !60, !alias.scope !90
  %309 = load ptr, ptr %307, align 8, !tbaa !52
  %310 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %307, i64 0, i32 2
  %311 = icmp eq ptr %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %307, i64 0, i32 1
  %314 = load i64, ptr %313, align 8, !tbaa !59
  %315 = icmp ult i64 %314, 16
  call void @llvm.assume(i1 %315)
  %316 = add nuw nsw i64 %314, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %273, ptr noundef nonnull align 8 dereferenceable(1) %310, i64 %316, i1 false)
  br label %319

317:                                              ; preds = %308
  store ptr %309, ptr %11, align 8, !tbaa !52, !alias.scope !90
  %318 = load i64, ptr %310, align 8, !tbaa !61
  store i64 %318, ptr %273, align 8, !tbaa !61, !alias.scope !90
  br label %319

319:                                              ; preds = %312, %317
  %320 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %307, i64 0, i32 1
  %321 = load i64, ptr %320, align 8, !tbaa !59
  store i64 %321, ptr %274, align 8, !tbaa !59, !alias.scope !90
  store ptr %310, ptr %307, align 8, !tbaa !52
  store i64 0, ptr %320, align 8, !tbaa !59
  store i8 0, ptr %310, align 8, !tbaa !61
  %322 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11) #27
  %323 = load ptr, ptr %11, align 8, !tbaa !52
  %324 = icmp eq ptr %323, %273
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = load i64, ptr %274, align 8, !tbaa !59
  %327 = icmp ult i64 %326, 16
  call void @llvm.assume(i1 %327)
  br label %329

328:                                              ; preds = %319
  call void @_ZdlPv(ptr noundef %323) #26
  br label %329

329:                                              ; preds = %325, %328
  %330 = load ptr, ptr %12, align 8, !tbaa !52
  %331 = icmp eq ptr %330, %270
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load i64, ptr %272, align 8, !tbaa !59
  %334 = icmp ult i64 %333, 16
  call void @llvm.assume(i1 %334)
  br label %336

335:                                              ; preds = %329
  call void @_ZdlPv(ptr noundef %330) #26
  br label %336

336:                                              ; preds = %332, %335
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  %337 = add nuw i64 %281, 1
  %338 = getelementptr inbounds [26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 %337
  %339 = getelementptr inbounds [26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 %337, i32 1
  %340 = load i64, ptr %339, align 8, !tbaa !59
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %275, label %280, !llvm.loop !93

342:                                              ; preds = %280
  %343 = landingpad { ptr, i32 }
          cleanup
  br label %356

344:                                              ; preds = %305
  %345 = landingpad { ptr, i32 }
          cleanup
  br label %348

346:                                              ; preds = %303
  %347 = landingpad { ptr, i32 }
          cleanup
  br label %348

348:                                              ; preds = %346, %344
  %349 = phi { ptr, i32 } [ %345, %344 ], [ %347, %346 ]
  %350 = load ptr, ptr %12, align 8, !tbaa !52
  %351 = icmp eq ptr %350, %270
  br i1 %351, label %352, label %355

352:                                              ; preds = %348
  %353 = load i64, ptr %272, align 8, !tbaa !59
  %354 = icmp ult i64 %353, 16
  call void @llvm.assume(i1 %354)
  br label %356

355:                                              ; preds = %348
  call void @_ZdlPv(ptr noundef %350) #26
  br label %356

356:                                              ; preds = %355, %352, %342, %297, %293
  %357 = phi { ptr, i32 } [ %343, %342 ], [ %290, %297 ], [ %290, %293 ], [ %349, %352 ], [ %349, %355 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  br label %369

358:                                              ; preds = %275
  %359 = load ptr, ptr %10, align 8, !tbaa !52
  %360 = icmp eq ptr %359, %262
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !59
  %364 = icmp ult i64 %363, 16
  call void @llvm.assume(i1 %364)
  br label %366

365:                                              ; preds = %358
  call void @_ZdlPv(ptr noundef %359) #26
  br label %366

366:                                              ; preds = %361, %365
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  br label %1684

367:                                              ; preds = %275
  %368 = landingpad { ptr, i32 }
          cleanup
  br label %369

369:                                              ; preds = %367, %356
  %370 = phi { ptr, i32 } [ %357, %356 ], [ %368, %367 ]
  %371 = load ptr, ptr %10, align 8, !tbaa !52
  %372 = icmp eq ptr %371, %262
  br i1 %372, label %373, label %377

373:                                              ; preds = %369
  %374 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %375 = load i64, ptr %374, align 8, !tbaa !59
  %376 = icmp ult i64 %375, 16
  call void @llvm.assume(i1 %376)
  br label %378

377:                                              ; preds = %369
  call void @_ZdlPv(ptr noundef %371) #26
  br label %378

378:                                              ; preds = %377, %373, %278
  %379 = phi { ptr, i32 } [ %279, %278 ], [ %370, %373 ], [ %370, %377 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  br label %1699

380:                                              ; preds = %258
  %381 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, i64 noundef 0, i64 noundef 9) #27
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %432

383:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %384 unwind label %403

384:                                              ; preds = %383
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #27
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %385, ptr %14, align 8, !tbaa !60
  %386 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 0, ptr %386, align 8, !tbaa !59
  store i8 0, ptr %385, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #27
  %387 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %388 unwind label %405

388:                                              ; preds = %384
  %389 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %390 unwind label %405

390:                                              ; preds = %388
  %391 = load ptr, ptr %13, align 8, !tbaa !82
  %392 = getelementptr i8, ptr %391, i64 -24
  %393 = load i64, ptr %392, align 8
  %394 = getelementptr inbounds i8, ptr %13, i64 %393
  %395 = getelementptr inbounds %"class.std::ios_base", ptr %394, i64 0, i32 5
  %396 = load i32, ptr %395, align 8, !tbaa !94
  %397 = and i32 %396, 5
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %418

399:                                              ; preds = %390
  %400 = load i32, ptr %15, align 4
  %401 = add i32 %400, -20
  %402 = icmp ult i32 %401, -18
  br i1 %402, label %418, label %415

403:                                              ; preds = %383
  %404 = landingpad { ptr, i32 }
          cleanup
  br label %430

405:                                              ; preds = %418, %416, %415, %388, %384
  %406 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #27
  %407 = load ptr, ptr %14, align 8, !tbaa !52
  %408 = icmp eq ptr %407, %385
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = load i64, ptr %386, align 8, !tbaa !59
  %411 = icmp ult i64 %410, 16
  call void @llvm.assume(i1 %411)
  br label %413

412:                                              ; preds = %405
  call void @_ZdlPv(ptr noundef %407) #26
  br label %413

413:                                              ; preds = %409, %412
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %414 = getelementptr inbounds i8, ptr %13, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %414) #27
  br label %430

415:                                              ; preds = %399
  invoke void @_ZN9GameState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %400, float noundef 7.500000e+00)
          to label %416 unwind label %405

416:                                              ; preds = %415
  %417 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %417, ptr noundef nonnull @.str.25)
          to label %421 unwind label %405

418:                                              ; preds = %390, %399
  %419 = phi ptr [ @.str.35, %399 ], [ @.str.36, %390 ]
  %420 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %420, ptr noundef nonnull %419)
          to label %421 unwind label %405

421:                                              ; preds = %418, %416
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #27
  %422 = load ptr, ptr %14, align 8, !tbaa !52
  %423 = icmp eq ptr %422, %385
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = load i64, ptr %386, align 8, !tbaa !59
  %426 = icmp ult i64 %425, 16
  call void @llvm.assume(i1 %426)
  br label %428

427:                                              ; preds = %421
  call void @_ZdlPv(ptr noundef %422) #26
  br label %428

428:                                              ; preds = %424, %427
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %429 = getelementptr inbounds i8, ptr %13, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %429) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #27
  br label %1684

430:                                              ; preds = %413, %403
  %431 = phi { ptr, i32 } [ %406, %413 ], [ %404, %403 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #27
  br label %1699

432:                                              ; preds = %380
  %433 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 11) #27
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  invoke void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %436 unwind label %125

436:                                              ; preds = %435
  %437 = load i32, ptr %5, align 4, !tbaa !80
  br label %180

438:                                              ; preds = %432
  %439 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, i64 noundef 0, i64 noundef 4) #27
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %486

441:                                              ; preds = %438
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %442 unwind label %461

442:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #27
  %443 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %443, ptr %17, align 8, !tbaa !60
  %444 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 0, ptr %444, align 8, !tbaa !59
  store i8 0, ptr %443, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #27
  store float 7.500000e+00, ptr %18, align 4, !tbaa !99
  %445 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %446 unwind label %463

446:                                              ; preds = %442
  %447 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(4) %18)
          to label %448 unwind label %463

448:                                              ; preds = %446
  %449 = load ptr, ptr %16, align 8, !tbaa !82
  %450 = getelementptr i8, ptr %449, i64 -24
  %451 = load i64, ptr %450, align 8
  %452 = getelementptr inbounds i8, ptr %16, i64 %451
  %453 = getelementptr inbounds %"class.std::ios_base", ptr %452, i64 0, i32 5
  %454 = load i32, ptr %453, align 8, !tbaa !94
  %455 = and i32 %454, 5
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %473

457:                                              ; preds = %448
  %458 = load float, ptr %18, align 4, !tbaa !99
  invoke void @_ZN9FastState8set_komiEf(ptr noundef nonnull align 8 dereferenceable(8388) %0, float noundef %458)
          to label %459 unwind label %463

459:                                              ; preds = %457
  %460 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %460, ptr noundef nonnull @.str.25)
          to label %475 unwind label %463

461:                                              ; preds = %441
  %462 = landingpad { ptr, i32 }
          cleanup
  br label %484

463:                                              ; preds = %446, %473, %459, %457, %442
  %464 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #27
  %465 = load ptr, ptr %17, align 8, !tbaa !52
  %466 = icmp eq ptr %465, %443
  br i1 %466, label %467, label %470

467:                                              ; preds = %463
  %468 = load i64, ptr %444, align 8, !tbaa !59
  %469 = icmp ult i64 %468, 16
  call void @llvm.assume(i1 %469)
  br label %471

470:                                              ; preds = %463
  call void @_ZdlPv(ptr noundef %465) #26
  br label %471

471:                                              ; preds = %467, %470
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %472 = getelementptr inbounds i8, ptr %16, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %472) #27
  br label %484

473:                                              ; preds = %448
  %474 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %474, ptr noundef nonnull @.str.36)
          to label %475 unwind label %463

475:                                              ; preds = %459, %473
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #27
  %476 = load ptr, ptr %17, align 8, !tbaa !52
  %477 = icmp eq ptr %476, %443
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = load i64, ptr %444, align 8, !tbaa !59
  %480 = icmp ult i64 %479, 16
  call void @llvm.assume(i1 %480)
  br label %482

481:                                              ; preds = %475
  call void @_ZdlPv(ptr noundef %476) #26
  br label %482

482:                                              ; preds = %478, %481
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %483 = getelementptr inbounds i8, ptr %16, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %483) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #27
  br label %1684

484:                                              ; preds = %471, %461
  %485 = phi { ptr, i32 } [ %464, %471 ], [ %462, %461 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #27
  br label %1699

486:                                              ; preds = %438
  %487 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 4) #27
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %629

489:                                              ; preds = %486
  %490 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.37, i64 noundef 0, i64 noundef 4) #27
  %491 = icmp eq i64 %490, -1
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.38, i64 noundef 0, i64 noundef 6) #27
  %494 = icmp eq i64 %493, -1
  br i1 %494, label %498, label %495

495:                                              ; preds = %492, %489
  invoke void @_ZN9GameState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %496 unwind label %125

496:                                              ; preds = %495
  %497 = load i32, ptr %5, align 4, !tbaa !80
  br label %180

498:                                              ; preds = %492
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %19) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %19, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %499 unwind label %550

499:                                              ; preds = %498
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #27
  %500 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  store ptr %500, ptr %20, align 8, !tbaa !60
  %501 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 1
  store i64 0, ptr %501, align 8, !tbaa !59
  store i8 0, ptr %500, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #27
  %502 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 2
  store ptr %502, ptr %21, align 8, !tbaa !60
  %503 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 1
  store i64 0, ptr %503, align 8, !tbaa !59
  store i8 0, ptr %502, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #27
  %504 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 2
  store ptr %504, ptr %22, align 8, !tbaa !60
  %505 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 1
  store i64 0, ptr %505, align 8, !tbaa !59
  store i8 0, ptr %504, align 8, !tbaa !61
  %506 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %507 unwind label %552

507:                                              ; preds = %499
  %508 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %509 unwind label %552

509:                                              ; preds = %507
  %510 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %511 unwind label %552

511:                                              ; preds = %509
  %512 = load ptr, ptr %19, align 8, !tbaa !82
  %513 = getelementptr i8, ptr %512, i64 -24
  %514 = load i64, ptr %513, align 8
  %515 = getelementptr inbounds i8, ptr %19, i64 %514
  %516 = getelementptr inbounds %"class.std::ios_base", ptr %515, i64 0, i32 5
  %517 = load i32, ptr %516, align 8, !tbaa !94
  %518 = and i32 %517, 5
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %575

520:                                              ; preds = %511
  %521 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  store ptr %521, ptr %23, align 8, !tbaa !60
  %522 = load ptr, ptr %21, align 8, !tbaa !52
  %523 = load i64, ptr %503, align 8, !tbaa !59
  %524 = getelementptr inbounds i8, ptr %522, i64 %523
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %522, ptr noundef %524)
          to label %525 unwind label %552

525:                                              ; preds = %520
  %526 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 2
  store ptr %526, ptr %24, align 8, !tbaa !60
  %527 = load ptr, ptr %22, align 8, !tbaa !52
  %528 = load i64, ptr %505, align 8, !tbaa !59
  %529 = getelementptr inbounds i8, ptr %527, i64 %528
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %527, ptr noundef %529)
          to label %530 unwind label %554

530:                                              ; preds = %525
  %531 = invoke noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull %23, ptr noundef nonnull %24)
          to label %532 unwind label %556

532:                                              ; preds = %530
  %533 = load ptr, ptr %24, align 8, !tbaa !52
  %534 = icmp eq ptr %533, %526
  br i1 %534, label %535, label %539

535:                                              ; preds = %532
  %536 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 1
  %537 = load i64, ptr %536, align 8, !tbaa !59
  %538 = icmp ult i64 %537, 16
  call void @llvm.assume(i1 %538)
  br label %540

539:                                              ; preds = %532
  call void @_ZdlPv(ptr noundef %533) #26
  br label %540

540:                                              ; preds = %535, %539
  %541 = load ptr, ptr %23, align 8, !tbaa !52
  %542 = icmp eq ptr %541, %521
  br i1 %542, label %543, label %547

543:                                              ; preds = %540
  %544 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %545 = load i64, ptr %544, align 8, !tbaa !59
  %546 = icmp ult i64 %545, 16
  call void @llvm.assume(i1 %546)
  br label %548

547:                                              ; preds = %540
  call void @_ZdlPv(ptr noundef %541) #26
  br label %548

548:                                              ; preds = %543, %547
  %549 = load i32, ptr %5, align 4, !tbaa !80
  br i1 %531, label %574, label %577

550:                                              ; preds = %498
  %551 = landingpad { ptr, i32 }
          cleanup
  br label %627

552:                                              ; preds = %577, %520, %574, %509, %507, %499
  %553 = landingpad { ptr, i32 }
          cleanup
  br label %603

554:                                              ; preds = %525
  %555 = landingpad { ptr, i32 }
          cleanup
  br label %565

556:                                              ; preds = %530
  %557 = landingpad { ptr, i32 }
          cleanup
  %558 = load ptr, ptr %24, align 8, !tbaa !52
  %559 = icmp eq ptr %558, %526
  br i1 %559, label %560, label %564

560:                                              ; preds = %556
  %561 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 1
  %562 = load i64, ptr %561, align 8, !tbaa !59
  %563 = icmp ult i64 %562, 16
  call void @llvm.assume(i1 %563)
  br label %565

564:                                              ; preds = %556
  call void @_ZdlPv(ptr noundef %558) #26
  br label %565

565:                                              ; preds = %564, %560, %554
  %566 = phi { ptr, i32 } [ %555, %554 ], [ %557, %560 ], [ %557, %564 ]
  %567 = load ptr, ptr %23, align 8, !tbaa !52
  %568 = icmp eq ptr %567, %521
  br i1 %568, label %569, label %573

569:                                              ; preds = %565
  %570 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %571 = load i64, ptr %570, align 8, !tbaa !59
  %572 = icmp ult i64 %571, 16
  call void @llvm.assume(i1 %572)
  br label %603

573:                                              ; preds = %565
  call void @_ZdlPv(ptr noundef %567) #26
  br label %603

574:                                              ; preds = %548
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %549, ptr noundef nonnull @.str.25)
          to label %580 unwind label %552

575:                                              ; preds = %511
  %576 = load i32, ptr %5, align 4, !tbaa !80
  br label %577

577:                                              ; preds = %548, %575
  %578 = phi i32 [ %576, %575 ], [ %549, %548 ]
  %579 = phi ptr [ @.str.36, %575 ], [ @.str.39, %548 ]
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %578, ptr noundef nonnull %579)
          to label %580 unwind label %552

580:                                              ; preds = %577, %574
  %581 = load ptr, ptr %22, align 8, !tbaa !52
  %582 = icmp eq ptr %581, %504
  br i1 %582, label %583, label %586

583:                                              ; preds = %580
  %584 = load i64, ptr %505, align 8, !tbaa !59
  %585 = icmp ult i64 %584, 16
  call void @llvm.assume(i1 %585)
  br label %587

586:                                              ; preds = %580
  call void @_ZdlPv(ptr noundef %581) #26
  br label %587

587:                                              ; preds = %583, %586
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27
  %588 = load ptr, ptr %21, align 8, !tbaa !52
  %589 = icmp eq ptr %588, %502
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = load i64, ptr %503, align 8, !tbaa !59
  %592 = icmp ult i64 %591, 16
  call void @llvm.assume(i1 %592)
  br label %594

593:                                              ; preds = %587
  call void @_ZdlPv(ptr noundef %588) #26
  br label %594

594:                                              ; preds = %590, %593
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #27
  %595 = load ptr, ptr %20, align 8, !tbaa !52
  %596 = icmp eq ptr %595, %500
  br i1 %596, label %597, label %600

597:                                              ; preds = %594
  %598 = load i64, ptr %501, align 8, !tbaa !59
  %599 = icmp ult i64 %598, 16
  call void @llvm.assume(i1 %599)
  br label %601

600:                                              ; preds = %594
  call void @_ZdlPv(ptr noundef %595) #26
  br label %601

601:                                              ; preds = %597, %600
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %19, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %602 = getelementptr inbounds i8, ptr %19, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %602) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %19) #27
  br label %1684

603:                                              ; preds = %573, %569, %552
  %604 = phi { ptr, i32 } [ %553, %552 ], [ %566, %569 ], [ %566, %573 ]
  %605 = load ptr, ptr %22, align 8, !tbaa !52
  %606 = icmp eq ptr %605, %504
  br i1 %606, label %607, label %610

607:                                              ; preds = %603
  %608 = load i64, ptr %505, align 8, !tbaa !59
  %609 = icmp ult i64 %608, 16
  call void @llvm.assume(i1 %609)
  br label %611

610:                                              ; preds = %603
  call void @_ZdlPv(ptr noundef %605) #26
  br label %611

611:                                              ; preds = %607, %610
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27
  %612 = load ptr, ptr %21, align 8, !tbaa !52
  %613 = icmp eq ptr %612, %502
  br i1 %613, label %614, label %617

614:                                              ; preds = %611
  %615 = load i64, ptr %503, align 8, !tbaa !59
  %616 = icmp ult i64 %615, 16
  call void @llvm.assume(i1 %616)
  br label %618

617:                                              ; preds = %611
  call void @_ZdlPv(ptr noundef %612) #26
  br label %618

618:                                              ; preds = %614, %617
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #27
  %619 = load ptr, ptr %20, align 8, !tbaa !52
  %620 = icmp eq ptr %619, %500
  br i1 %620, label %621, label %624

621:                                              ; preds = %618
  %622 = load i64, ptr %501, align 8, !tbaa !59
  %623 = icmp ult i64 %622, 16
  call void @llvm.assume(i1 %623)
  br label %625

624:                                              ; preds = %618
  call void @_ZdlPv(ptr noundef %619) #26
  br label %625

625:                                              ; preds = %621, %624
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %19, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %626 = getelementptr inbounds i8, ptr %19, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %626) #27
  br label %627

627:                                              ; preds = %625, %550
  %628 = phi { ptr, i32 } [ %604, %625 ], [ %551, %550 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %19) #27
  br label %1699

629:                                              ; preds = %486
  %630 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, i64 noundef 0, i64 noundef 7) #27
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %736

632:                                              ; preds = %629
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %25) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %25, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %633 unwind label %654

633:                                              ; preds = %632
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #27
  %634 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  store ptr %634, ptr %26, align 8, !tbaa !60
  %635 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  store i64 0, ptr %635, align 8, !tbaa !59
  store i8 0, ptr %634, align 8, !tbaa !61
  %636 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %637 unwind label %656

637:                                              ; preds = %633
  %638 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %639 unwind label %656

639:                                              ; preds = %637
  %640 = load ptr, ptr %25, align 8, !tbaa !82
  %641 = getelementptr i8, ptr %640, i64 -24
  %642 = load i64, ptr %641, align 8
  %643 = getelementptr inbounds i8, ptr %25, i64 %642
  %644 = getelementptr inbounds %"class.std::ios_base", ptr %643, i64 0, i32 5
  %645 = load i32, ptr %644, align 8, !tbaa !94
  %646 = and i32 %645, 5
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %713

648:                                              ; preds = %639
  %649 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.40) #27
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %668, label %651

651:                                              ; preds = %648
  %652 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.41) #27
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %668, label %660

654:                                              ; preds = %632
  %655 = landingpad { ptr, i32 }
          cleanup
  br label %734

656:                                              ; preds = %713, %637, %633
  %657 = landingpad { ptr, i32 }
          cleanup
  br label %724

658:                                              ; preds = %666
  %659 = landingpad { ptr, i32 }
          cleanup
  br label %724

660:                                              ; preds = %651
  %661 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.42) #27
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %668, label %663

663:                                              ; preds = %660
  %664 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.43) #27
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %668, label %666

666:                                              ; preds = %663
  %667 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %667, ptr noundef nonnull @.str.44)
          to label %715 unwind label %658

668:                                              ; preds = %660, %663, %648, %651
  %669 = phi i32 [ 1, %651 ], [ 1, %648 ], [ 0, %663 ], [ 0, %660 ]
  %670 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %671 unwind label %690

671:                                              ; preds = %668
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %670, ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %672 unwind label %692

672:                                              ; preds = %671
  %673 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %670, i32 noundef %669, i32 noundef 0)
          to label %674 unwind label %694

674:                                              ; preds = %672
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %669, i32 noundef %673)
          to label %675 unwind label %694

675:                                              ; preds = %674
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #27
  invoke void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %673)
          to label %676 unwind label %696

676:                                              ; preds = %675
  %677 = load i32, ptr %5, align 4, !tbaa !80
  %678 = load ptr, ptr %27, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %677, ptr noundef nonnull @.str.45, ptr noundef %678)
          to label %679 unwind label %698

679:                                              ; preds = %676
  %680 = load ptr, ptr %27, align 8, !tbaa !52
  %681 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  %682 = icmp eq ptr %680, %681
  br i1 %682, label %683, label %687

683:                                              ; preds = %679
  %684 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  %685 = load i64, ptr %684, align 8, !tbaa !59
  %686 = icmp ult i64 %685, 16
  call void @llvm.assume(i1 %686)
  br label %688

687:                                              ; preds = %679
  call void @_ZdlPv(ptr noundef %680) #26
  br label %688

688:                                              ; preds = %683, %687
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #27
  %689 = getelementptr inbounds %class.UCTSearch, ptr %670, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %689) #27
  call void @_ZdlPv(ptr noundef %670) #26
  br label %715

690:                                              ; preds = %668
  %691 = landingpad { ptr, i32 }
          cleanup
  br label %724

692:                                              ; preds = %671
  %693 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %670) #26
  br label %724

694:                                              ; preds = %674, %672
  %695 = landingpad { ptr, i32 }
          cleanup
  br label %710

696:                                              ; preds = %675
  %697 = landingpad { ptr, i32 }
          cleanup
  br label %708

698:                                              ; preds = %676
  %699 = landingpad { ptr, i32 }
          cleanup
  %700 = load ptr, ptr %27, align 8, !tbaa !52
  %701 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  %702 = icmp eq ptr %700, %701
  br i1 %702, label %703, label %707

703:                                              ; preds = %698
  %704 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  %705 = load i64, ptr %704, align 8, !tbaa !59
  %706 = icmp ult i64 %705, 16
  call void @llvm.assume(i1 %706)
  br label %708

707:                                              ; preds = %698
  call void @_ZdlPv(ptr noundef %700) #26
  br label %708

708:                                              ; preds = %707, %703, %696
  %709 = phi { ptr, i32 } [ %697, %696 ], [ %699, %703 ], [ %699, %707 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #27
  br label %710

710:                                              ; preds = %694, %708
  %711 = phi { ptr, i32 } [ %709, %708 ], [ %695, %694 ]
  %712 = getelementptr inbounds %class.UCTSearch, ptr %670, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %712) #27
  call void @_ZdlPv(ptr noundef %670) #26
  br label %724

713:                                              ; preds = %639
  %714 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %714, ptr noundef nonnull @.str.36)
          to label %715 unwind label %656

715:                                              ; preds = %713, %688, %666
  %716 = load ptr, ptr %26, align 8, !tbaa !52
  %717 = icmp eq ptr %716, %634
  br i1 %717, label %718, label %721

718:                                              ; preds = %715
  %719 = load i64, ptr %635, align 8, !tbaa !59
  %720 = icmp ult i64 %719, 16
  call void @llvm.assume(i1 %720)
  br label %722

721:                                              ; preds = %715
  call void @_ZdlPv(ptr noundef %716) #26
  br label %722

722:                                              ; preds = %718, %721
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %25, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %723 = getelementptr inbounds i8, ptr %25, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %723) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %25) #27
  br label %1684

724:                                              ; preds = %690, %692, %710, %658, %656
  %725 = phi { ptr, i32 } [ %657, %656 ], [ %659, %658 ], [ %711, %710 ], [ %693, %692 ], [ %691, %690 ]
  %726 = load ptr, ptr %26, align 8, !tbaa !52
  %727 = icmp eq ptr %726, %634
  br i1 %727, label %728, label %731

728:                                              ; preds = %724
  %729 = load i64, ptr %635, align 8, !tbaa !59
  %730 = icmp ult i64 %729, 16
  call void @llvm.assume(i1 %730)
  br label %732

731:                                              ; preds = %724
  call void @_ZdlPv(ptr noundef %726) #26
  br label %732

732:                                              ; preds = %728, %731
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %25, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %733 = getelementptr inbounds i8, ptr %25, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %733) #27
  br label %734

734:                                              ; preds = %732, %654
  %735 = phi { ptr, i32 } [ %725, %732 ], [ %655, %654 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %25) #27
  br label %1699

736:                                              ; preds = %629
  %737 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, i64 noundef 0, i64 noundef 19) #27
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %739, label %844

739:                                              ; preds = %736
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %28) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %740 unwind label %761

740:                                              ; preds = %739
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #27
  %741 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  store ptr %741, ptr %29, align 8, !tbaa !60
  %742 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  store i64 0, ptr %742, align 8, !tbaa !59
  store i8 0, ptr %741, align 8, !tbaa !61
  %743 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %744 unwind label %763

744:                                              ; preds = %740
  %745 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %746 unwind label %763

746:                                              ; preds = %744
  %747 = load ptr, ptr %28, align 8, !tbaa !82
  %748 = getelementptr i8, ptr %747, i64 -24
  %749 = load i64, ptr %748, align 8
  %750 = getelementptr inbounds i8, ptr %28, i64 %749
  %751 = getelementptr inbounds %"class.std::ios_base", ptr %750, i64 0, i32 5
  %752 = load i32, ptr %751, align 8, !tbaa !94
  %753 = and i32 %752, 5
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %821

755:                                              ; preds = %746
  %756 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.40) #27
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %775, label %758

758:                                              ; preds = %755
  %759 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.41) #27
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %775, label %767

761:                                              ; preds = %739
  %762 = landingpad { ptr, i32 }
          cleanup
  br label %842

763:                                              ; preds = %821, %744, %740
  %764 = landingpad { ptr, i32 }
          cleanup
  br label %832

765:                                              ; preds = %775, %773
  %766 = landingpad { ptr, i32 }
          cleanup
  br label %832

767:                                              ; preds = %758
  %768 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.42) #27
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %775, label %770

770:                                              ; preds = %767
  %771 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.43) #27
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %775, label %773

773:                                              ; preds = %770
  %774 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %774, ptr noundef nonnull @.str.44)
          to label %823 unwind label %765

775:                                              ; preds = %767, %770, %755, %758
  %776 = phi i32 [ 1, %758 ], [ 1, %755 ], [ 0, %770 ], [ 0, %767 ]
  invoke void @_ZN9FastState10set_passesEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef 0)
          to label %777 unwind label %765

777:                                              ; preds = %775
  %778 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %779 unwind label %798

779:                                              ; preds = %777
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %778, ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %780 unwind label %800

780:                                              ; preds = %779
  %781 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %778, i32 noundef %776, i32 noundef 1)
          to label %782 unwind label %802

782:                                              ; preds = %780
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %776, i32 noundef %781)
          to label %783 unwind label %802

783:                                              ; preds = %782
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #27
  invoke void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %781)
          to label %784 unwind label %804

784:                                              ; preds = %783
  %785 = load i32, ptr %5, align 4, !tbaa !80
  %786 = load ptr, ptr %30, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %785, ptr noundef nonnull @.str.45, ptr noundef %786)
          to label %787 unwind label %806

787:                                              ; preds = %784
  %788 = load ptr, ptr %30, align 8, !tbaa !52
  %789 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  %790 = icmp eq ptr %788, %789
  br i1 %790, label %791, label %795

791:                                              ; preds = %787
  %792 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  %793 = load i64, ptr %792, align 8, !tbaa !59
  %794 = icmp ult i64 %793, 16
  call void @llvm.assume(i1 %794)
  br label %796

795:                                              ; preds = %787
  call void @_ZdlPv(ptr noundef %788) #26
  br label %796

796:                                              ; preds = %791, %795
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #27
  %797 = getelementptr inbounds %class.UCTSearch, ptr %778, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %797) #27
  call void @_ZdlPv(ptr noundef %778) #26
  br label %823

798:                                              ; preds = %777
  %799 = landingpad { ptr, i32 }
          cleanup
  br label %832

800:                                              ; preds = %779
  %801 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %778) #26
  br label %832

802:                                              ; preds = %782, %780
  %803 = landingpad { ptr, i32 }
          cleanup
  br label %818

804:                                              ; preds = %783
  %805 = landingpad { ptr, i32 }
          cleanup
  br label %816

806:                                              ; preds = %784
  %807 = landingpad { ptr, i32 }
          cleanup
  %808 = load ptr, ptr %30, align 8, !tbaa !52
  %809 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  %810 = icmp eq ptr %808, %809
  br i1 %810, label %811, label %815

811:                                              ; preds = %806
  %812 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  %813 = load i64, ptr %812, align 8, !tbaa !59
  %814 = icmp ult i64 %813, 16
  call void @llvm.assume(i1 %814)
  br label %816

815:                                              ; preds = %806
  call void @_ZdlPv(ptr noundef %808) #26
  br label %816

816:                                              ; preds = %815, %811, %804
  %817 = phi { ptr, i32 } [ %805, %804 ], [ %807, %811 ], [ %807, %815 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #27
  br label %818

818:                                              ; preds = %802, %816
  %819 = phi { ptr, i32 } [ %817, %816 ], [ %803, %802 ]
  %820 = getelementptr inbounds %class.UCTSearch, ptr %778, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %820) #27
  call void @_ZdlPv(ptr noundef %778) #26
  br label %832

821:                                              ; preds = %746
  %822 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %822, ptr noundef nonnull @.str.36)
          to label %823 unwind label %763

823:                                              ; preds = %821, %796, %773
  %824 = load ptr, ptr %29, align 8, !tbaa !52
  %825 = icmp eq ptr %824, %741
  br i1 %825, label %826, label %829

826:                                              ; preds = %823
  %827 = load i64, ptr %742, align 8, !tbaa !59
  %828 = icmp ult i64 %827, 16
  call void @llvm.assume(i1 %828)
  br label %830

829:                                              ; preds = %823
  call void @_ZdlPv(ptr noundef %824) #26
  br label %830

830:                                              ; preds = %826, %829
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %831 = getelementptr inbounds i8, ptr %28, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %831) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %28) #27
  br label %1684

832:                                              ; preds = %798, %800, %818, %765, %763
  %833 = phi { ptr, i32 } [ %764, %763 ], [ %766, %765 ], [ %819, %818 ], [ %801, %800 ], [ %799, %798 ]
  %834 = load ptr, ptr %29, align 8, !tbaa !52
  %835 = icmp eq ptr %834, %741
  br i1 %835, label %836, label %839

836:                                              ; preds = %832
  %837 = load i64, ptr %742, align 8, !tbaa !59
  %838 = icmp ult i64 %837, 16
  call void @llvm.assume(i1 %838)
  br label %840

839:                                              ; preds = %832
  call void @_ZdlPv(ptr noundef %834) #26
  br label %840

840:                                              ; preds = %836, %839
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %841 = getelementptr inbounds i8, ptr %28, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %841) #27
  br label %842

842:                                              ; preds = %840, %761
  %843 = phi { ptr, i32 } [ %833, %840 ], [ %762, %761 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %28) #27
  br label %1699

844:                                              ; preds = %736
  %845 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13, i64 noundef 0, i64 noundef 4) #27
  %846 = icmp eq i64 %845, 0
  br i1 %846, label %847, label %854

847:                                              ; preds = %844
  %848 = invoke noundef zeroext i1 @_ZN9GameState9undo_moveEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %849 unwind label %125

849:                                              ; preds = %847
  %850 = load i32, ptr %5, align 4, !tbaa !80
  br i1 %848, label %180, label %851

851:                                              ; preds = %849, %1682
  %852 = phi i32 [ %1683, %1682 ], [ %850, %849 ]
  %853 = phi ptr [ @.str.58, %1682 ], [ @.str.46, %849 ]
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %852, ptr noundef nonnull %853)
          to label %1684 unwind label %125

854:                                              ; preds = %844
  %855 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, i64 noundef 0, i64 noundef 9) #27
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %857, label %860

857:                                              ; preds = %854
  %858 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %858, ptr noundef nonnull @.str.25)
          to label %859 unwind label %125

859:                                              ; preds = %857
  invoke void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %1684 unwind label %125

860:                                              ; preds = %854
  %861 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, i64 noundef 0, i64 noundef 8) #27
  %862 = icmp eq i64 %861, 0
  br i1 %862, label %863, label %884

863:                                              ; preds = %860
  %864 = invoke noundef float @_ZN9FastState8get_komiEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %865 unwind label %874

865:                                              ; preds = %863
  %866 = invoke noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %864)
          to label %867 unwind label %874

867:                                              ; preds = %865
  %868 = fpext float %866 to double
  %869 = fcmp olt double %868, -1.000000e-01
  br i1 %869, label %870, label %876

870:                                              ; preds = %867
  %871 = load i32, ptr %5, align 4, !tbaa !80
  %872 = call noundef float @llvm.fabs.f32(float %866)
  %873 = fpext float %872 to double
  br label %879

874:                                              ; preds = %879, %883, %865, %863
  %875 = landingpad { ptr, i32 }
          cleanup
  br label %1699

876:                                              ; preds = %867
  %877 = fcmp ogt double %868, 1.000000e-01
  %878 = load i32, ptr %5, align 4, !tbaa !80
  br i1 %877, label %879, label %883

879:                                              ; preds = %876, %870
  %880 = phi i32 [ %871, %870 ], [ %878, %876 ]
  %881 = phi ptr [ @.str.47, %870 ], [ @.str.48, %876 ]
  %882 = phi double [ %873, %870 ], [ %868, %876 ]
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %880, ptr noundef nonnull %881, double noundef %882)
          to label %1684 unwind label %874

883:                                              ; preds = %876
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %878, ptr noundef nonnull @.str.49)
          to label %1684 unwind label %874

884:                                              ; preds = %860
  %885 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.14, i64 noundef 0, i64 noundef 11) #27
  %886 = icmp eq i64 %885, 0
  br i1 %886, label %887, label %906

887:                                              ; preds = %884
  %888 = invoke noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %889 unwind label %896

889:                                              ; preds = %887
  %890 = fpext float %888 to double
  %891 = fcmp olt double %890, -1.000000e-01
  br i1 %891, label %892, label %898

892:                                              ; preds = %889
  %893 = load i32, ptr %5, align 4, !tbaa !80
  %894 = call noundef float @llvm.fabs.f32(float %888)
  %895 = fpext float %894 to double
  br label %901

896:                                              ; preds = %901, %905, %887
  %897 = landingpad { ptr, i32 }
          cleanup
  br label %1699

898:                                              ; preds = %889
  %899 = fcmp ogt double %890, 1.000000e-01
  %900 = load i32, ptr %5, align 4, !tbaa !80
  br i1 %899, label %901, label %905

901:                                              ; preds = %898, %892
  %902 = phi i32 [ %893, %892 ], [ %900, %898 ]
  %903 = phi ptr [ @.str.47, %892 ], [ @.str.48, %898 ]
  %904 = phi double [ %895, %892 ], [ %890, %898 ]
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %902, ptr noundef nonnull %903, double noundef %904)
          to label %1684 unwind label %896

905:                                              ; preds = %898
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %900, ptr noundef nonnull @.str.49)
          to label %1684 unwind label %896

906:                                              ; preds = %884
  %907 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15, i64 noundef 0, i64 noundef 17) #27
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %909, label %973

909:                                              ; preds = %906
  %910 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.50, i64 noundef 0, i64 noundef 5) #27
  %911 = icmp eq i64 %910, -1
  br i1 %911, label %940, label %912

912:                                              ; preds = %909
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %31) #27
  invoke void @_ZN3GTP13get_life_listB5cxx11ER9GameStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8508) %0, i1 noundef zeroext true)
          to label %913 unwind label %926

913:                                              ; preds = %912
  %914 = load i32, ptr %5, align 4, !tbaa !80
  %915 = load ptr, ptr %31, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %914, ptr noundef %915)
          to label %916 unwind label %928

916:                                              ; preds = %913
  %917 = load ptr, ptr %31, align 8, !tbaa !52
  %918 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 2
  %919 = icmp eq ptr %917, %918
  br i1 %919, label %920, label %924

920:                                              ; preds = %916
  %921 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 1
  %922 = load i64, ptr %921, align 8, !tbaa !59
  %923 = icmp ult i64 %922, 16
  call void @llvm.assume(i1 %923)
  br label %925

924:                                              ; preds = %916
  call void @_ZdlPv(ptr noundef %917) #26
  br label %925

925:                                              ; preds = %920, %924
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #27
  br label %1684

926:                                              ; preds = %912
  %927 = landingpad { ptr, i32 }
          cleanup
  br label %938

928:                                              ; preds = %913
  %929 = landingpad { ptr, i32 }
          cleanup
  %930 = load ptr, ptr %31, align 8, !tbaa !52
  %931 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 2
  %932 = icmp eq ptr %930, %931
  br i1 %932, label %933, label %937

933:                                              ; preds = %928
  %934 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 1
  %935 = load i64, ptr %934, align 8, !tbaa !59
  %936 = icmp ult i64 %935, 16
  call void @llvm.assume(i1 %936)
  br label %938

937:                                              ; preds = %928
  call void @_ZdlPv(ptr noundef %930) #26
  br label %938

938:                                              ; preds = %937, %933, %926
  %939 = phi { ptr, i32 } [ %927, %926 ], [ %929, %933 ], [ %929, %937 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #27
  br label %1699

940:                                              ; preds = %909
  %941 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.51, i64 noundef 0, i64 noundef 4) #27
  %942 = icmp eq i64 %941, -1
  br i1 %942, label %971, label %943

943:                                              ; preds = %940
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %32) #27
  invoke void @_ZN3GTP13get_life_listB5cxx11ER9GameStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8508) %0, i1 noundef zeroext false)
          to label %944 unwind label %957

944:                                              ; preds = %943
  %945 = load i32, ptr %5, align 4, !tbaa !80
  %946 = load ptr, ptr %32, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %945, ptr noundef %946)
          to label %947 unwind label %959

947:                                              ; preds = %944
  %948 = load ptr, ptr %32, align 8, !tbaa !52
  %949 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  %950 = icmp eq ptr %948, %949
  br i1 %950, label %951, label %955

951:                                              ; preds = %947
  %952 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 1
  %953 = load i64, ptr %952, align 8, !tbaa !59
  %954 = icmp ult i64 %953, 16
  call void @llvm.assume(i1 %954)
  br label %956

955:                                              ; preds = %947
  call void @_ZdlPv(ptr noundef %948) #26
  br label %956

956:                                              ; preds = %951, %955
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #27
  br label %1684

957:                                              ; preds = %943
  %958 = landingpad { ptr, i32 }
          cleanup
  br label %969

959:                                              ; preds = %944
  %960 = landingpad { ptr, i32 }
          cleanup
  %961 = load ptr, ptr %32, align 8, !tbaa !52
  %962 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  %963 = icmp eq ptr %961, %962
  br i1 %963, label %964, label %968

964:                                              ; preds = %959
  %965 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 1
  %966 = load i64, ptr %965, align 8, !tbaa !59
  %967 = icmp ult i64 %966, 16
  call void @llvm.assume(i1 %967)
  br label %969

968:                                              ; preds = %959
  call void @_ZdlPv(ptr noundef %961) #26
  br label %969

969:                                              ; preds = %968, %964, %957
  %970 = phi { ptr, i32 } [ %958, %957 ], [ %960, %964 ], [ %960, %968 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #27
  br label %1699

971:                                              ; preds = %940
  %972 = load i32, ptr %5, align 4, !tbaa !80
  br label %180

973:                                              ; preds = %906
  %974 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.16, i64 noundef 0, i64 noundef 13) #27
  %975 = icmp eq i64 %974, 0
  br i1 %975, label %976, label %1029

976:                                              ; preds = %973
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %33) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %33, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %977 unwind label %1004

977:                                              ; preds = %976
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %34) #27
  %978 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  store ptr %978, ptr %34, align 8, !tbaa !60
  %979 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  store i64 0, ptr %979, align 8, !tbaa !59
  store i8 0, ptr %978, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #27
  %980 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %981 unwind label %1006

981:                                              ; preds = %977
  %982 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %980, ptr noundef nonnull align 4 dereferenceable(4) %35)
          to label %983 unwind label %1006

983:                                              ; preds = %981
  %984 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %982, ptr noundef nonnull align 4 dereferenceable(4) %36)
          to label %985 unwind label %1006

985:                                              ; preds = %983
  %986 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %984, ptr noundef nonnull align 4 dereferenceable(4) %37)
          to label %987 unwind label %1006

987:                                              ; preds = %985
  %988 = load ptr, ptr %33, align 8, !tbaa !82
  %989 = getelementptr i8, ptr %988, i64 -24
  %990 = load i64, ptr %989, align 8
  %991 = getelementptr inbounds i8, ptr %33, i64 %990
  %992 = getelementptr inbounds %"class.std::ios_base", ptr %991, i64 0, i32 5
  %993 = load i32, ptr %992, align 8, !tbaa !94
  %994 = and i32 %993, 5
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %996, label %1016

996:                                              ; preds = %987
  %997 = load i32, ptr %35, align 4, !tbaa !80
  %998 = mul nsw i32 %997, 100
  %999 = load i32, ptr %36, align 4, !tbaa !80
  %1000 = mul nsw i32 %999, 100
  %1001 = load i32, ptr %37, align 4, !tbaa !80
  invoke void @_ZN9GameState15set_timecontrolEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %998, i32 noundef %1000, i32 noundef %1001)
          to label %1002 unwind label %1006

1002:                                             ; preds = %996
  %1003 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1003, ptr noundef nonnull @.str.25)
          to label %1018 unwind label %1006

1004:                                             ; preds = %976
  %1005 = landingpad { ptr, i32 }
          cleanup
  br label %1027

1006:                                             ; preds = %1016, %1002, %996, %985, %983, %981, %977
  %1007 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #27
  %1008 = load ptr, ptr %34, align 8, !tbaa !52
  %1009 = icmp eq ptr %1008, %978
  br i1 %1009, label %1010, label %1013

1010:                                             ; preds = %1006
  %1011 = load i64, ptr %979, align 8, !tbaa !59
  %1012 = icmp ult i64 %1011, 16
  call void @llvm.assume(i1 %1012)
  br label %1014

1013:                                             ; preds = %1006
  call void @_ZdlPv(ptr noundef %1008) #26
  br label %1014

1014:                                             ; preds = %1010, %1013
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %34) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %33, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1015 = getelementptr inbounds i8, ptr %33, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1015) #27
  br label %1027

1016:                                             ; preds = %987
  %1017 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %1017, ptr noundef nonnull @.str.36)
          to label %1018 unwind label %1006

1018:                                             ; preds = %1002, %1016
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #27
  %1019 = load ptr, ptr %34, align 8, !tbaa !52
  %1020 = icmp eq ptr %1019, %978
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %1018
  %1022 = load i64, ptr %979, align 8, !tbaa !59
  %1023 = icmp ult i64 %1022, 16
  call void @llvm.assume(i1 %1023)
  br label %1025

1024:                                             ; preds = %1018
  call void @_ZdlPv(ptr noundef %1019) #26
  br label %1025

1025:                                             ; preds = %1021, %1024
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %34) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %33, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1026 = getelementptr inbounds i8, ptr %33, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1026) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %33) #27
  br label %1684

1027:                                             ; preds = %1014, %1004
  %1028 = phi { ptr, i32 } [ %1007, %1014 ], [ %1005, %1004 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %33) #27
  br label %1699

1029:                                             ; preds = %973
  %1030 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17, i64 noundef 0, i64 noundef 9) #27
  %1031 = icmp eq i64 %1030, 0
  br i1 %1031, label %1032, label %1118

1032:                                             ; preds = %1029
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %38) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %38, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %1033 unwind label %1060

1033:                                             ; preds = %1032
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %39) #27
  %1034 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 2
  store ptr %1034, ptr %39, align 8, !tbaa !60
  %1035 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 1
  store i64 0, ptr %1035, align 8, !tbaa !59
  store i8 0, ptr %1034, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %40) #27
  %1036 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 2
  store ptr %1036, ptr %40, align 8, !tbaa !60
  %1037 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  store i64 0, ptr %1037, align 8, !tbaa !59
  store i8 0, ptr %1036, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #27
  %1038 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %1039 unwind label %1062

1039:                                             ; preds = %1033
  %1040 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1038, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %1041 unwind label %1062

1041:                                             ; preds = %1039
  %1042 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1040, ptr noundef nonnull align 4 dereferenceable(4) %41)
          to label %1043 unwind label %1062

1043:                                             ; preds = %1041
  %1044 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1042, ptr noundef nonnull align 4 dereferenceable(4) %42)
          to label %1045 unwind label %1062

1045:                                             ; preds = %1043
  %1046 = load ptr, ptr %38, align 8, !tbaa !82
  %1047 = getelementptr i8, ptr %1046, i64 -24
  %1048 = load i64, ptr %1047, align 8
  %1049 = getelementptr inbounds i8, ptr %38, i64 %1048
  %1050 = getelementptr inbounds %"class.std::ios_base", ptr %1049, i64 0, i32 5
  %1051 = load i32, ptr %1050, align 8, !tbaa !94
  %1052 = and i32 %1051, 5
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1081

1054:                                             ; preds = %1045
  %1055 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.40) #27
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1074, label %1057

1057:                                             ; preds = %1054
  %1058 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.41) #27
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1074, label %1066

1060:                                             ; preds = %1032
  %1061 = landingpad { ptr, i32 }
          cleanup
  br label %1116

1062:                                             ; preds = %1081, %1043, %1041, %1039, %1033
  %1063 = landingpad { ptr, i32 }
          cleanup
  br label %1099

1064:                                             ; preds = %1079, %1074, %1072
  %1065 = landingpad { ptr, i32 }
          cleanup
  br label %1099

1066:                                             ; preds = %1057
  %1067 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.42) #27
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1074, label %1069

1069:                                             ; preds = %1066
  %1070 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.43) #27
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1074, label %1072

1072:                                             ; preds = %1069
  %1073 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %1073, ptr noundef nonnull @.str.52)
          to label %1083 unwind label %1064

1074:                                             ; preds = %1066, %1069, %1054, %1057
  %1075 = phi i32 [ 1, %1057 ], [ 1, %1054 ], [ 0, %1069 ], [ 0, %1066 ]
  %1076 = load i32, ptr %41, align 4, !tbaa !80
  %1077 = mul nsw i32 %1076, 100
  %1078 = load i32, ptr %42, align 4, !tbaa !80
  invoke void @_ZN9GameState11adjust_timeEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1075, i32 noundef %1077, i32 noundef %1078)
          to label %1079 unwind label %1064

1079:                                             ; preds = %1074
  %1080 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1080, ptr noundef nonnull @.str.25)
          to label %1083 unwind label %1064

1081:                                             ; preds = %1045
  %1082 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %1082, ptr noundef nonnull @.str.36)
          to label %1083 unwind label %1062

1083:                                             ; preds = %1072, %1081, %1079
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #27
  %1084 = load ptr, ptr %40, align 8, !tbaa !52
  %1085 = icmp eq ptr %1084, %1036
  br i1 %1085, label %1086, label %1089

1086:                                             ; preds = %1083
  %1087 = load i64, ptr %1037, align 8, !tbaa !59
  %1088 = icmp ult i64 %1087, 16
  call void @llvm.assume(i1 %1088)
  br label %1090

1089:                                             ; preds = %1083
  call void @_ZdlPv(ptr noundef %1084) #26
  br label %1090

1090:                                             ; preds = %1086, %1089
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %40) #27
  %1091 = load ptr, ptr %39, align 8, !tbaa !52
  %1092 = icmp eq ptr %1091, %1034
  br i1 %1092, label %1093, label %1096

1093:                                             ; preds = %1090
  %1094 = load i64, ptr %1035, align 8, !tbaa !59
  %1095 = icmp ult i64 %1094, 16
  call void @llvm.assume(i1 %1095)
  br label %1097

1096:                                             ; preds = %1090
  call void @_ZdlPv(ptr noundef %1091) #26
  br label %1097

1097:                                             ; preds = %1093, %1096
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %39) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %38, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1098 = getelementptr inbounds i8, ptr %38, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1098) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %38) #27
  br label %1684

1099:                                             ; preds = %1064, %1062
  %1100 = phi { ptr, i32 } [ %1063, %1062 ], [ %1065, %1064 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #27
  %1101 = load ptr, ptr %40, align 8, !tbaa !52
  %1102 = icmp eq ptr %1101, %1036
  br i1 %1102, label %1103, label %1106

1103:                                             ; preds = %1099
  %1104 = load i64, ptr %1037, align 8, !tbaa !59
  %1105 = icmp ult i64 %1104, 16
  call void @llvm.assume(i1 %1105)
  br label %1107

1106:                                             ; preds = %1099
  call void @_ZdlPv(ptr noundef %1101) #26
  br label %1107

1107:                                             ; preds = %1103, %1106
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %40) #27
  %1108 = load ptr, ptr %39, align 8, !tbaa !52
  %1109 = icmp eq ptr %1108, %1034
  br i1 %1109, label %1110, label %1113

1110:                                             ; preds = %1107
  %1111 = load i64, ptr %1035, align 8, !tbaa !59
  %1112 = icmp ult i64 %1111, 16
  call void @llvm.assume(i1 %1112)
  br label %1114

1113:                                             ; preds = %1107
  call void @_ZdlPv(ptr noundef %1108) #26
  br label %1114

1114:                                             ; preds = %1110, %1113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %39) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %38, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1115 = getelementptr inbounds i8, ptr %38, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1115) #27
  br label %1116

1116:                                             ; preds = %1114, %1060
  %1117 = phi { ptr, i32 } [ %1100, %1114 ], [ %1061, %1060 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %38) #27
  br label %1699

1118:                                             ; preds = %1029
  %1119 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.53, i64 noundef 0, i64 noundef 4) #27
  %1120 = icmp eq i64 %1119, 0
  br i1 %1120, label %1121, label %1142

1121:                                             ; preds = %1118, %1133
  %1122 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %1123 unwind label %1135

1123:                                             ; preds = %1121
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %1122, ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %1124 unwind label %1137

1124:                                             ; preds = %1123
  %1125 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %1126 unwind label %1139

1126:                                             ; preds = %1124
  %1127 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %1122, i32 noundef %1125, i32 noundef 0)
          to label %1128 unwind label %1139

1128:                                             ; preds = %1126
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1127)
          to label %1129 unwind label %1139

1129:                                             ; preds = %1128
  invoke void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %1130 unwind label %1139

1130:                                             ; preds = %1129
  %1131 = getelementptr inbounds %class.UCTSearch, ptr %1122, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %1131) #27
  call void @_ZdlPv(ptr noundef %1122) #26
  %1132 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %1133 unwind label %123

1133:                                             ; preds = %1130
  %1134 = icmp slt i32 %1132, 2
  br i1 %1134, label %1121, label %1684, !llvm.loop !101

1135:                                             ; preds = %1121
  %1136 = landingpad { ptr, i32 }
          cleanup
  br label %1699

1137:                                             ; preds = %1123
  %1138 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %1122) #26
  br label %1699

1139:                                             ; preds = %1129, %1128, %1126, %1124
  %1140 = landingpad { ptr, i32 }
          cleanup
  %1141 = getelementptr inbounds %class.UCTSearch, ptr %1122, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %1141) #27
  call void @_ZdlPv(ptr noundef %1122) #26
  br label %1699

1142:                                             ; preds = %1118
  %1143 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.54, i64 noundef 0, i64 noundef 5) #27
  %1144 = icmp eq i64 %1143, 0
  br i1 %1144, label %1145, label %1146

1145:                                             ; preds = %1142
  invoke void @_ZN7Playout20do_playout_benchmarkER9GameState(ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %1684 unwind label %125

1146:                                             ; preds = %1142
  %1147 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.55, i64 noundef 0, i64 noundef 2) #27
  %1148 = icmp eq i64 %1147, 0
  br i1 %1148, label %1149, label %1194

1149:                                             ; preds = %1146
  %1150 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %1151 unwind label %1171

1151:                                             ; preds = %1149
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %1150, ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %1152 unwind label %1173

1152:                                             ; preds = %1151
  %1153 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %1154 unwind label %1175

1154:                                             ; preds = %1152
  %1155 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %1150, i32 noundef %1153, i32 noundef 0)
          to label %1156 unwind label %1175

1156:                                             ; preds = %1154
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1155)
          to label %1157 unwind label %1175

1157:                                             ; preds = %1156
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %43) #27
  invoke void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1155)
          to label %1158 unwind label %1177

1158:                                             ; preds = %1157
  %1159 = load ptr, ptr %43, align 8, !tbaa !52
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.56, ptr noundef %1159)
          to label %1160 unwind label %1179

1160:                                             ; preds = %1158
  %1161 = load ptr, ptr %43, align 8, !tbaa !52
  %1162 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 2
  %1163 = icmp eq ptr %1161, %1162
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1160
  %1165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 1
  %1166 = load i64, ptr %1165, align 8, !tbaa !59
  %1167 = icmp ult i64 %1166, 16
  call void @llvm.assume(i1 %1167)
  br label %1169

1168:                                             ; preds = %1160
  call void @_ZdlPv(ptr noundef %1161) #26
  br label %1169

1169:                                             ; preds = %1164, %1168
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %43) #27
  %1170 = getelementptr inbounds %class.UCTSearch, ptr %1150, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %1170) #27
  call void @_ZdlPv(ptr noundef %1150) #26
  br label %1684

1171:                                             ; preds = %1149
  %1172 = landingpad { ptr, i32 }
          cleanup
  br label %1699

1173:                                             ; preds = %1151
  %1174 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %1150) #26
  br label %1699

1175:                                             ; preds = %1156, %1154, %1152
  %1176 = landingpad { ptr, i32 }
          cleanup
  br label %1191

1177:                                             ; preds = %1157
  %1178 = landingpad { ptr, i32 }
          cleanup
  br label %1189

1179:                                             ; preds = %1158
  %1180 = landingpad { ptr, i32 }
          cleanup
  %1181 = load ptr, ptr %43, align 8, !tbaa !52
  %1182 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 2
  %1183 = icmp eq ptr %1181, %1182
  br i1 %1183, label %1184, label %1188

1184:                                             ; preds = %1179
  %1185 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 1
  %1186 = load i64, ptr %1185, align 8, !tbaa !59
  %1187 = icmp ult i64 %1186, 16
  call void @llvm.assume(i1 %1187)
  br label %1189

1188:                                             ; preds = %1179
  call void @_ZdlPv(ptr noundef %1181) #26
  br label %1189

1189:                                             ; preds = %1188, %1184, %1177
  %1190 = phi { ptr, i32 } [ %1178, %1177 ], [ %1180, %1184 ], [ %1180, %1188 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %43) #27
  br label %1191

1191:                                             ; preds = %1175, %1189
  %1192 = phi { ptr, i32 } [ %1190, %1189 ], [ %1176, %1175 ]
  %1193 = getelementptr inbounds %class.UCTSearch, ptr %1150, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %1193) #27
  call void @_ZdlPv(ptr noundef %1150) #26
  br label %1699

1194:                                             ; preds = %1146
  %1195 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, i64 noundef 0, i64 noundef 9) #27
  %1196 = icmp eq i64 %1195, 0
  br i1 %1196, label %1197, label %1210

1197:                                             ; preds = %1194
  %1198 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1198, ptr noundef nonnull @.str.25)
          to label %1199 unwind label %125

1199:                                             ; preds = %1197
  invoke void @_ZN9FastBoard9influenceEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %44, ptr noundef nonnull align 8 dereferenceable(8052) %0)
          to label %1200 unwind label %125

1200:                                             ; preds = %1199
  invoke void @_ZN9FastBoard11display_mapESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull %44)
          to label %1201 unwind label %1205

1201:                                             ; preds = %1200
  %1202 = load ptr, ptr %44, align 8, !tbaa !102
  %1203 = icmp eq ptr %1202, null
  br i1 %1203, label %1684, label %1204

1204:                                             ; preds = %1201
  call void @_ZdlPv(ptr noundef %1202) #26
  br label %1684

1205:                                             ; preds = %1200
  %1206 = landingpad { ptr, i32 }
          cleanup
  %1207 = load ptr, ptr %44, align 8, !tbaa !102
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1699, label %1209

1209:                                             ; preds = %1205
  call void @_ZdlPv(ptr noundef %1207) #26
  br label %1699

1210:                                             ; preds = %1194
  %1211 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.21, i64 noundef 0, i64 noundef 14) #27
  %1212 = icmp eq i64 %1211, 0
  br i1 %1212, label %1213, label %1279

1213:                                             ; preds = %1210
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %45) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %45, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %1214 unwind label %1238

1214:                                             ; preds = %1213
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %46) #27
  %1215 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 2
  store ptr %1215, ptr %46, align 8, !tbaa !60
  %1216 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 1
  store i64 0, ptr %1216, align 8, !tbaa !59
  store i8 0, ptr %1215, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #27
  %1217 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %1218 unwind label %1240

1218:                                             ; preds = %1214
  %1219 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 4 dereferenceable(4) %47)
          to label %1220 unwind label %1240

1220:                                             ; preds = %1218
  %1221 = load i32, ptr %47, align 4, !tbaa !80
  %1222 = invoke noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1221)
          to label %1223 unwind label %1240

1223:                                             ; preds = %1220
  br i1 %1222, label %1224, label %1256

1224:                                             ; preds = %1223
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %48) #27
  invoke void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8052) %0)
          to label %1225 unwind label %1242

1225:                                             ; preds = %1224
  %1226 = load i32, ptr %5, align 4, !tbaa !80
  %1227 = load ptr, ptr %48, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1226, ptr noundef nonnull @.str.45, ptr noundef %1227)
          to label %1228 unwind label %1244

1228:                                             ; preds = %1225
  %1229 = load ptr, ptr %48, align 8, !tbaa !52
  %1230 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 2
  %1231 = icmp eq ptr %1229, %1230
  br i1 %1231, label %1232, label %1236

1232:                                             ; preds = %1228
  %1233 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 1
  %1234 = load i64, ptr %1233, align 8, !tbaa !59
  %1235 = icmp ult i64 %1234, 16
  call void @llvm.assume(i1 %1235)
  br label %1237

1236:                                             ; preds = %1228
  call void @_ZdlPv(ptr noundef %1229) #26
  br label %1237

1237:                                             ; preds = %1232, %1236
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %48) #27
  br label %1258

1238:                                             ; preds = %1213
  %1239 = landingpad { ptr, i32 }
          cleanup
  br label %1277

1240:                                             ; preds = %1256, %1220, %1218, %1214
  %1241 = landingpad { ptr, i32 }
          cleanup
  br label %1267

1242:                                             ; preds = %1224
  %1243 = landingpad { ptr, i32 }
          cleanup
  br label %1254

1244:                                             ; preds = %1225
  %1245 = landingpad { ptr, i32 }
          cleanup
  %1246 = load ptr, ptr %48, align 8, !tbaa !52
  %1247 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 2
  %1248 = icmp eq ptr %1246, %1247
  br i1 %1248, label %1249, label %1253

1249:                                             ; preds = %1244
  %1250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 1
  %1251 = load i64, ptr %1250, align 8, !tbaa !59
  %1252 = icmp ult i64 %1251, 16
  call void @llvm.assume(i1 %1252)
  br label %1254

1253:                                             ; preds = %1244
  call void @_ZdlPv(ptr noundef %1246) #26
  br label %1254

1254:                                             ; preds = %1253, %1249, %1242
  %1255 = phi { ptr, i32 } [ %1243, %1242 ], [ %1245, %1249 ], [ %1245, %1253 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %48) #27
  br label %1267

1256:                                             ; preds = %1223
  %1257 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %1257, ptr noundef nonnull @.str.57)
          to label %1258 unwind label %1240

1258:                                             ; preds = %1256, %1237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #27
  %1259 = load ptr, ptr %46, align 8, !tbaa !52
  %1260 = icmp eq ptr %1259, %1215
  br i1 %1260, label %1261, label %1264

1261:                                             ; preds = %1258
  %1262 = load i64, ptr %1216, align 8, !tbaa !59
  %1263 = icmp ult i64 %1262, 16
  call void @llvm.assume(i1 %1263)
  br label %1265

1264:                                             ; preds = %1258
  call void @_ZdlPv(ptr noundef %1259) #26
  br label %1265

1265:                                             ; preds = %1261, %1264
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %46) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %45, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1266 = getelementptr inbounds i8, ptr %45, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1266) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %45) #27
  br label %1684

1267:                                             ; preds = %1254, %1240
  %1268 = phi { ptr, i32 } [ %1255, %1254 ], [ %1241, %1240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #27
  %1269 = load ptr, ptr %46, align 8, !tbaa !52
  %1270 = icmp eq ptr %1269, %1215
  br i1 %1270, label %1271, label %1274

1271:                                             ; preds = %1267
  %1272 = load i64, ptr %1216, align 8, !tbaa !59
  %1273 = icmp ult i64 %1272, 16
  call void @llvm.assume(i1 %1273)
  br label %1275

1274:                                             ; preds = %1267
  call void @_ZdlPv(ptr noundef %1269) #26
  br label %1275

1275:                                             ; preds = %1271, %1274
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %46) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %45, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1276 = getelementptr inbounds i8, ptr %45, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1276) #27
  br label %1277

1277:                                             ; preds = %1275, %1238
  %1278 = phi { ptr, i32 } [ %1268, %1275 ], [ %1239, %1238 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %45) #27
  br label %1699

1279:                                             ; preds = %1210
  %1280 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 19) #27
  %1281 = icmp eq i64 %1280, 0
  br i1 %1281, label %1282, label %1343

1282:                                             ; preds = %1279
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %49) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %49, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %1283 unwind label %1313

1283:                                             ; preds = %1282
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %50) #27
  %1284 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %1284, ptr %50, align 8, !tbaa !60
  %1285 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 0, ptr %1285, align 8, !tbaa !59
  store i8 0, ptr %1284, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #27
  %1286 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %1287 unwind label %1315

1287:                                             ; preds = %1283
  %1288 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 4 dereferenceable(4) %51)
          to label %1289 unwind label %1315

1289:                                             ; preds = %1287
  %1290 = load i32, ptr %51, align 4, !tbaa !80
  invoke void @_ZN9GameState19place_free_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1290)
          to label %1291 unwind label %1315

1291:                                             ; preds = %1289
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %52) #27
  invoke void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 8 dereferenceable(8052) %0)
          to label %1292 unwind label %1317

1292:                                             ; preds = %1291
  %1293 = load i32, ptr %5, align 4, !tbaa !80
  %1294 = load ptr, ptr %52, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1293, ptr noundef nonnull @.str.45, ptr noundef %1294)
          to label %1295 unwind label %1319

1295:                                             ; preds = %1292
  %1296 = load ptr, ptr %52, align 8, !tbaa !52
  %1297 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 2
  %1298 = icmp eq ptr %1296, %1297
  br i1 %1298, label %1299, label %1303

1299:                                             ; preds = %1295
  %1300 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 1
  %1301 = load i64, ptr %1300, align 8, !tbaa !59
  %1302 = icmp ult i64 %1301, 16
  call void @llvm.assume(i1 %1302)
  br label %1304

1303:                                             ; preds = %1295
  call void @_ZdlPv(ptr noundef %1296) #26
  br label %1304

1304:                                             ; preds = %1299, %1303
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %52) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #27
  %1305 = load ptr, ptr %50, align 8, !tbaa !52
  %1306 = icmp eq ptr %1305, %1284
  br i1 %1306, label %1307, label %1310

1307:                                             ; preds = %1304
  %1308 = load i64, ptr %1285, align 8, !tbaa !59
  %1309 = icmp ult i64 %1308, 16
  call void @llvm.assume(i1 %1309)
  br label %1311

1310:                                             ; preds = %1304
  call void @_ZdlPv(ptr noundef %1305) #26
  br label %1311

1311:                                             ; preds = %1307, %1310
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %50) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %49, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1312 = getelementptr inbounds i8, ptr %49, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1312) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %49) #27
  br label %1684

1313:                                             ; preds = %1282
  %1314 = landingpad { ptr, i32 }
          cleanup
  br label %1341

1315:                                             ; preds = %1289, %1287, %1283
  %1316 = landingpad { ptr, i32 }
          cleanup
  br label %1331

1317:                                             ; preds = %1291
  %1318 = landingpad { ptr, i32 }
          cleanup
  br label %1329

1319:                                             ; preds = %1292
  %1320 = landingpad { ptr, i32 }
          cleanup
  %1321 = load ptr, ptr %52, align 8, !tbaa !52
  %1322 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 2
  %1323 = icmp eq ptr %1321, %1322
  br i1 %1323, label %1324, label %1328

1324:                                             ; preds = %1319
  %1325 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 1
  %1326 = load i64, ptr %1325, align 8, !tbaa !59
  %1327 = icmp ult i64 %1326, 16
  call void @llvm.assume(i1 %1327)
  br label %1329

1328:                                             ; preds = %1319
  call void @_ZdlPv(ptr noundef %1321) #26
  br label %1329

1329:                                             ; preds = %1328, %1324, %1317
  %1330 = phi { ptr, i32 } [ %1318, %1317 ], [ %1320, %1324 ], [ %1320, %1328 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %52) #27
  br label %1331

1331:                                             ; preds = %1329, %1315
  %1332 = phi { ptr, i32 } [ %1330, %1329 ], [ %1316, %1315 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #27
  %1333 = load ptr, ptr %50, align 8, !tbaa !52
  %1334 = icmp eq ptr %1333, %1284
  br i1 %1334, label %1335, label %1338

1335:                                             ; preds = %1331
  %1336 = load i64, ptr %1285, align 8, !tbaa !59
  %1337 = icmp ult i64 %1336, 16
  call void @llvm.assume(i1 %1337)
  br label %1339

1338:                                             ; preds = %1331
  call void @_ZdlPv(ptr noundef %1333) #26
  br label %1339

1339:                                             ; preds = %1335, %1338
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %50) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %49, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1340 = getelementptr inbounds i8, ptr %49, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1340) #27
  br label %1341

1341:                                             ; preds = %1339, %1313
  %1342 = phi { ptr, i32 } [ %1332, %1339 ], [ %1314, %1313 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %49) #27
  br label %1699

1343:                                             ; preds = %1279
  %1344 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.23, i64 noundef 0, i64 noundef 17) #27
  %1345 = icmp eq i64 %1344, 0
  br i1 %1345, label %1346, label %1495

1346:                                             ; preds = %1343
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %53) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %53, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %1347 unwind label %1394

1347:                                             ; preds = %1346
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %54) #27
  %1348 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %54, i64 0, i32 2
  store ptr %1348, ptr %54, align 8, !tbaa !60
  %1349 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %54, i64 0, i32 1
  store i64 0, ptr %1349, align 8, !tbaa !59
  store i8 0, ptr %1348, align 8, !tbaa !61
  %1350 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %1351 unwind label %1396

1351:                                             ; preds = %1347
  %1352 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 0, i32 2
  %1353 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 0, i32 1
  %1354 = getelementptr inbounds %"class.std::ios_base", ptr %53, i64 0, i32 5
  %1355 = getelementptr inbounds %"class.std::ios_base", ptr %53, i64 0, i32 5
  %1356 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  %1357 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  %1358 = getelementptr inbounds i8, ptr %56, i64 21
  %1359 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 2
  %1360 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  br label %1361

1361:                                             ; preds = %1351, %1430
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %55) #27
  store ptr %1352, ptr %55, align 8, !tbaa !60
  store i64 0, ptr %1353, align 8, !tbaa !59
  store i8 0, ptr %1352, align 8, !tbaa !61
  %1362 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %1363 unwind label %1398

1363:                                             ; preds = %1361
  %1364 = load ptr, ptr %53, align 8, !tbaa !82
  %1365 = getelementptr i8, ptr %1364, i64 -24
  %1366 = load i64, ptr %1365, align 8
  %1367 = getelementptr i8, ptr %1354, i64 %1366
  %1368 = load i32, ptr %1367, align 8, !tbaa !94
  %1369 = and i32 %1368, 5
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1371, label %1423

1371:                                             ; preds = %1363
  store ptr %1356, ptr %56, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %1356, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false), !prof !104
  store i64 5, ptr %1357, align 8, !tbaa !59
  store i8 0, ptr %1358, align 1, !tbaa !61
  store ptr %1359, ptr %57, align 8, !tbaa !60
  %1372 = load ptr, ptr %55, align 8, !tbaa !52
  %1373 = load i64, ptr %1353, align 8, !tbaa !59
  %1374 = getelementptr inbounds i8, ptr %1372, i64 %1373
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef %1372, ptr noundef %1374)
          to label %1375 unwind label %1400

1375:                                             ; preds = %1371
  %1376 = invoke noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull %56, ptr noundef nonnull %57)
          to label %1377 unwind label %1402

1377:                                             ; preds = %1375
  %1378 = load ptr, ptr %57, align 8, !tbaa !52
  %1379 = icmp eq ptr %1378, %1359
  br i1 %1379, label %1380, label %1383

1380:                                             ; preds = %1377
  %1381 = load i64, ptr %1360, align 8, !tbaa !59
  %1382 = icmp ult i64 %1381, 16
  call void @llvm.assume(i1 %1382)
  br label %1384

1383:                                             ; preds = %1377
  call void @_ZdlPv(ptr noundef %1378) #26
  br label %1384

1384:                                             ; preds = %1380, %1383
  %1385 = load ptr, ptr %56, align 8, !tbaa !52
  %1386 = icmp eq ptr %1385, %1356
  br i1 %1386, label %1387, label %1390

1387:                                             ; preds = %1384
  %1388 = load i64, ptr %1357, align 8, !tbaa !59
  %1389 = icmp ult i64 %1388, 16
  call void @llvm.assume(i1 %1389)
  br label %1391

1390:                                             ; preds = %1384
  call void @_ZdlPv(ptr noundef %1385) #26
  br label %1391

1391:                                             ; preds = %1387, %1390
  br i1 %1376, label %1419, label %1392

1392:                                             ; preds = %1391
  %1393 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %1393, ptr noundef nonnull @.str.39)
          to label %1423 unwind label %1398

1394:                                             ; preds = %1346
  %1395 = landingpad { ptr, i32 }
          cleanup
  br label %1493

1396:                                             ; preds = %1347
  %1397 = landingpad { ptr, i32 }
          cleanup
  br label %1483

1398:                                             ; preds = %1421, %1419, %1392, %1361
  %1399 = landingpad { ptr, i32 }
          cleanup
  br label %1460

1400:                                             ; preds = %1371
  %1401 = landingpad { ptr, i32 }
          cleanup
  br label %1411

1402:                                             ; preds = %1375
  %1403 = landingpad { ptr, i32 }
          cleanup
  %1404 = load ptr, ptr %57, align 8, !tbaa !52
  %1405 = icmp eq ptr %1404, %1359
  br i1 %1405, label %1406, label %1410

1406:                                             ; preds = %1402
  %1407 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  %1408 = load i64, ptr %1407, align 8, !tbaa !59
  %1409 = icmp ult i64 %1408, 16
  call void @llvm.assume(i1 %1409)
  br label %1411

1410:                                             ; preds = %1402
  call void @_ZdlPv(ptr noundef %1404) #26
  br label %1411

1411:                                             ; preds = %1410, %1406, %1400
  %1412 = phi { ptr, i32 } [ %1401, %1400 ], [ %1403, %1406 ], [ %1403, %1410 ]
  %1413 = load ptr, ptr %56, align 8, !tbaa !52
  %1414 = icmp eq ptr %1413, %1356
  br i1 %1414, label %1415, label %1418

1415:                                             ; preds = %1411
  %1416 = load i64, ptr %1357, align 8, !tbaa !59
  %1417 = icmp ult i64 %1416, 16
  call void @llvm.assume(i1 %1417)
  br label %1460

1418:                                             ; preds = %1411
  call void @_ZdlPv(ptr noundef %1413) #26
  br label %1460

1419:                                             ; preds = %1391
  %1420 = invoke noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
          to label %1421 unwind label %1398

1421:                                             ; preds = %1419
  %1422 = add nsw i32 %1420, 1
  invoke void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1422)
          to label %1423 unwind label %1398

1423:                                             ; preds = %1421, %1392, %1363
  %1424 = load ptr, ptr %55, align 8, !tbaa !52
  %1425 = icmp eq ptr %1424, %1352
  br i1 %1425, label %1426, label %1429

1426:                                             ; preds = %1423
  %1427 = load i64, ptr %1353, align 8, !tbaa !59
  %1428 = icmp ult i64 %1427, 16
  call void @llvm.assume(i1 %1428)
  br label %1430

1429:                                             ; preds = %1423
  call void @_ZdlPv(ptr noundef %1424) #26
  br label %1430

1430:                                             ; preds = %1426, %1429
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %55) #27
  %1431 = load ptr, ptr %53, align 8, !tbaa !82
  %1432 = getelementptr i8, ptr %1431, i64 -24
  %1433 = load i64, ptr %1432, align 8
  %1434 = getelementptr i8, ptr %1355, i64 %1433
  %1435 = load i32, ptr %1434, align 8, !tbaa !94
  %1436 = and i32 %1435, 5
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1361, label %1438, !llvm.loop !105

1438:                                             ; preds = %1430
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %58) #27
  invoke void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 8 dereferenceable(8052) %0)
          to label %1439 unwind label %1469

1439:                                             ; preds = %1438
  %1440 = load i32, ptr %5, align 4, !tbaa !80
  %1441 = load ptr, ptr %58, align 8, !tbaa !52
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1440, ptr noundef nonnull @.str.45, ptr noundef %1441)
          to label %1442 unwind label %1471

1442:                                             ; preds = %1439
  %1443 = load ptr, ptr %58, align 8, !tbaa !52
  %1444 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 2
  %1445 = icmp eq ptr %1443, %1444
  br i1 %1445, label %1446, label %1450

1446:                                             ; preds = %1442
  %1447 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 1
  %1448 = load i64, ptr %1447, align 8, !tbaa !59
  %1449 = icmp ult i64 %1448, 16
  call void @llvm.assume(i1 %1449)
  br label %1451

1450:                                             ; preds = %1442
  call void @_ZdlPv(ptr noundef %1443) #26
  br label %1451

1451:                                             ; preds = %1446, %1450
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %58) #27
  %1452 = load ptr, ptr %54, align 8, !tbaa !52
  %1453 = icmp eq ptr %1452, %1348
  br i1 %1453, label %1454, label %1457

1454:                                             ; preds = %1451
  %1455 = load i64, ptr %1349, align 8, !tbaa !59
  %1456 = icmp ult i64 %1455, 16
  call void @llvm.assume(i1 %1456)
  br label %1458

1457:                                             ; preds = %1451
  call void @_ZdlPv(ptr noundef %1452) #26
  br label %1458

1458:                                             ; preds = %1454, %1457
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %54) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %53, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1459 = getelementptr inbounds i8, ptr %53, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1459) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %53) #27
  br label %1684

1460:                                             ; preds = %1415, %1418, %1398
  %1461 = phi { ptr, i32 } [ %1399, %1398 ], [ %1412, %1415 ], [ %1412, %1418 ]
  %1462 = load ptr, ptr %55, align 8, !tbaa !52
  %1463 = icmp eq ptr %1462, %1352
  br i1 %1463, label %1464, label %1467

1464:                                             ; preds = %1460
  %1465 = load i64, ptr %1353, align 8, !tbaa !59
  %1466 = icmp ult i64 %1465, 16
  call void @llvm.assume(i1 %1466)
  br label %1468

1467:                                             ; preds = %1460
  call void @_ZdlPv(ptr noundef %1462) #26
  br label %1468

1468:                                             ; preds = %1464, %1467
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %55) #27
  br label %1483

1469:                                             ; preds = %1438
  %1470 = landingpad { ptr, i32 }
          cleanup
  br label %1481

1471:                                             ; preds = %1439
  %1472 = landingpad { ptr, i32 }
          cleanup
  %1473 = load ptr, ptr %58, align 8, !tbaa !52
  %1474 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 2
  %1475 = icmp eq ptr %1473, %1474
  br i1 %1475, label %1476, label %1480

1476:                                             ; preds = %1471
  %1477 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 1
  %1478 = load i64, ptr %1477, align 8, !tbaa !59
  %1479 = icmp ult i64 %1478, 16
  call void @llvm.assume(i1 %1479)
  br label %1481

1480:                                             ; preds = %1471
  call void @_ZdlPv(ptr noundef %1473) #26
  br label %1481

1481:                                             ; preds = %1480, %1476, %1469
  %1482 = phi { ptr, i32 } [ %1470, %1469 ], [ %1472, %1476 ], [ %1472, %1480 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %58) #27
  br label %1483

1483:                                             ; preds = %1481, %1468, %1396
  %1484 = phi { ptr, i32 } [ %1482, %1481 ], [ %1397, %1396 ], [ %1461, %1468 ]
  %1485 = load ptr, ptr %54, align 8, !tbaa !52
  %1486 = icmp eq ptr %1485, %1348
  br i1 %1486, label %1487, label %1490

1487:                                             ; preds = %1483
  %1488 = load i64, ptr %1349, align 8, !tbaa !59
  %1489 = icmp ult i64 %1488, 16
  call void @llvm.assume(i1 %1489)
  br label %1491

1490:                                             ; preds = %1483
  call void @_ZdlPv(ptr noundef %1485) #26
  br label %1491

1491:                                             ; preds = %1487, %1490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %54) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %53, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1492 = getelementptr inbounds i8, ptr %53, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1492) #27
  br label %1493

1493:                                             ; preds = %1491, %1394
  %1494 = phi { ptr, i32 } [ %1484, %1491 ], [ %1395, %1394 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %53) #27
  br label %1699

1495:                                             ; preds = %1343
  %1496 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, i64 noundef 0, i64 noundef 7) #27
  %1497 = icmp eq i64 %1496, 0
  br i1 %1497, label %1498, label %1682

1498:                                             ; preds = %1495
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %59) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %59, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %1499 unwind label %1519

1499:                                             ; preds = %1498
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %60) #27
  %1500 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 2
  store ptr %1500, ptr %60, align 8, !tbaa !60
  %1501 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 1
  store i64 0, ptr %1501, align 8, !tbaa !59
  store i8 0, ptr %1500, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %61) #27
  %1502 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 2
  store ptr %1502, ptr %61, align 8, !tbaa !60
  %1503 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 1
  store i64 0, ptr %1503, align 8, !tbaa !59
  store i8 0, ptr %1502, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %62) #27
  %1504 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(32) %60)
          to label %1505 unwind label %1521

1505:                                             ; preds = %1499
  %1506 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %1507 unwind label %1521

1507:                                             ; preds = %1505
  %1508 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 4 dereferenceable(4) %62)
          to label %1509 unwind label %1521

1509:                                             ; preds = %1507
  %1510 = load ptr, ptr %59, align 8, !tbaa !82
  %1511 = getelementptr i8, ptr %1510, i64 -24
  %1512 = load i64, ptr %1511, align 8
  %1513 = getelementptr inbounds i8, ptr %59, i64 %1512
  %1514 = getelementptr inbounds %"class.std::ios_base", ptr %1513, i64 0, i32 5
  %1515 = load i32, ptr %1514, align 8, !tbaa !94
  %1516 = and i32 %1515, 5
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1523, label %1518

1518:                                             ; preds = %1509
  store i32 999, ptr %62, align 4, !tbaa !80
  br label %1523

1519:                                             ; preds = %1498
  %1520 = landingpad { ptr, i32 }
          cleanup
  br label %1680

1521:                                             ; preds = %1507, %1505, %1499
  %1522 = landingpad { ptr, i32 }
          cleanup
  br label %1663

1523:                                             ; preds = %1518, %1509
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %63) #27
  %1524 = invoke noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #31
          to label %1525 unwind label %1642

1525:                                             ; preds = %1523
  invoke void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512) %1524)
          to label %1526 unwind label %1644

1526:                                             ; preds = %1525
  store ptr %1524, ptr %63, align 8, !tbaa !106
  %1527 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 2
  store ptr %1527, ptr %64, align 8, !tbaa !60
  %1528 = load ptr, ptr %61, align 8, !tbaa !52
  %1529 = load i64, ptr %1503, align 8, !tbaa !59
  %1530 = getelementptr inbounds i8, ptr %1528, i64 %1529
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef %1528, ptr noundef %1530)
          to label %1531 unwind label %1646

1531:                                             ; preds = %1526
  invoke void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512) %1524, ptr noundef nonnull %64, i32 noundef 0)
          to label %1532 unwind label %1648

1532:                                             ; preds = %1531
  %1533 = load ptr, ptr %64, align 8, !tbaa !52
  %1534 = icmp eq ptr %1533, %1527
  br i1 %1534, label %1535, label %1539

1535:                                             ; preds = %1532
  %1536 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 1
  %1537 = load i64, ptr %1536, align 8, !tbaa !59
  %1538 = icmp ult i64 %1537, 16
  call void @llvm.assume(i1 %1538)
  br label %1540

1539:                                             ; preds = %1532
  call void @_ZdlPv(ptr noundef %1533) #26
  br label %1540

1540:                                             ; preds = %1535, %1539
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %65) #27
  %1541 = load ptr, ptr %63, align 8, !tbaa !106
  %1542 = load i32, ptr %62, align 4, !tbaa !80
  invoke void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind nonnull writable sret(%class.GameState) align 8 %65, ptr noundef nonnull align 8 dereferenceable(8512) %1541, i32 noundef %1542)
          to label %1543 unwind label %1657

1543:                                             ; preds = %1540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %65, i64 8024, i1 false)
  %1544 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %1545 = getelementptr inbounds %class.FastBoard, ptr %65, i64 0, i32 16
  %1546 = load ptr, ptr %1544, align 8, !tbaa !102
  %1547 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %1548 = load ptr, ptr %1547, align 8, !tbaa !108
  %1549 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %1550 = load ptr, ptr %1549, align 8, !tbaa !109
  %1551 = load ptr, ptr %1545, align 8, !tbaa !102
  store ptr %1551, ptr %1544, align 8, !tbaa !102
  %1552 = getelementptr inbounds %class.FastBoard, ptr %65, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %1553 = load ptr, ptr %1552, align 8, !tbaa !108
  store ptr %1553, ptr %1547, align 8, !tbaa !108
  %1554 = getelementptr inbounds %class.FastBoard, ptr %65, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %1555 = load ptr, ptr %1554, align 8, !tbaa !109
  store ptr %1555, ptr %1549, align 8, !tbaa !109
  store ptr %1546, ptr %1545, align 8, !tbaa !102
  store ptr %1548, ptr %1552, align 8, !tbaa !108
  store ptr %1550, ptr %1554, align 8, !tbaa !109
  %1556 = icmp eq ptr %1546, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1545, i8 0, i64 24, i1 false)
  br i1 %1556, label %1558, label %1557

1557:                                             ; preds = %1543
  call void @_ZdlPv(ptr noundef %1546) #26
  br label %1558

1558:                                             ; preds = %1543, %1557
  %1559 = getelementptr inbounds %class.FastBoard, ptr %65, i64 0, i32 17
  %1560 = load i32, ptr %1559, align 8, !tbaa !110
  %1561 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %1560, ptr %1561, align 8, !tbaa !110
  %1562 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %1563 = getelementptr inbounds %class.FullBoard, ptr %65, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1562, ptr noundef nonnull align 8 dereferenceable(16) %1563, i64 16, i1 false)
  %1564 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %1565 = getelementptr inbounds %class.FastState, ptr %65, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %1564, ptr noundef nonnull align 8 dereferenceable(124) %1565, i64 124, i1 false)
  %1566 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %1567 = getelementptr inbounds %class.FastState, ptr %65, i64 0, i32 9
  br label %1568

1568:                                             ; preds = %1558, %1568
  %1569 = phi i64 [ 0, %1558 ], [ %1576, %1568 ]
  %1570 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1566, i64 0, i64 %1569
  %1571 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1567, i64 0, i64 %1569
  %1572 = load i32, ptr %1571, align 4, !tbaa !80
  store i32 %1572, ptr %1570, align 4, !tbaa !121
  %1573 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1567, i64 0, i64 %1569, i32 1
  %1574 = load i32, ptr %1573, align 8, !tbaa !80
  %1575 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1566, i64 0, i64 %1569, i32 1
  store i32 %1574, ptr %1575, align 8, !tbaa !123
  %1576 = add nuw nsw i64 %1569, 1
  %1577 = icmp eq i64 %1576, 24
  br i1 %1577, label %1578, label %1568, !llvm.loop !124

1578:                                             ; preds = %1568
  %1579 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %1580 = getelementptr inbounds %class.KoState, ptr %65, i64 0, i32 1
  %1581 = load ptr, ptr %1579, align 8, !tbaa !125
  %1582 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %1583 = load ptr, ptr %1582, align 8, !tbaa !127
  %1584 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %1585 = load ptr, ptr %1584, align 8, !tbaa !128
  %1586 = load ptr, ptr %1580, align 8, !tbaa !125
  store ptr %1586, ptr %1579, align 8, !tbaa !125
  %1587 = getelementptr inbounds %class.KoState, ptr %65, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %1588 = load ptr, ptr %1587, align 8, !tbaa !127
  store ptr %1588, ptr %1582, align 8, !tbaa !127
  %1589 = getelementptr inbounds %class.KoState, ptr %65, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %1590 = load ptr, ptr %1589, align 8, !tbaa !128
  store ptr %1590, ptr %1584, align 8, !tbaa !128
  store ptr %1581, ptr %1580, align 8, !tbaa !125
  store ptr %1583, ptr %1587, align 8, !tbaa !127
  store ptr %1585, ptr %1589, align 8, !tbaa !128
  %1591 = icmp eq ptr %1581, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1580, i8 0, i64 24, i1 false)
  br i1 %1591, label %1593, label %1592

1592:                                             ; preds = %1578
  call void @_ZdlPv(ptr noundef %1581) #26
  br label %1593

1593:                                             ; preds = %1578, %1592
  %1594 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %1595 = getelementptr inbounds %class.KoState, ptr %65, i64 0, i32 2
  %1596 = load ptr, ptr %1594, align 8, !tbaa !125
  %1597 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1598 = load ptr, ptr %1597, align 8, !tbaa !127
  %1599 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %1600 = load ptr, ptr %1599, align 8, !tbaa !128
  %1601 = load ptr, ptr %1595, align 8, !tbaa !125
  store ptr %1601, ptr %1594, align 8, !tbaa !125
  %1602 = getelementptr inbounds %class.KoState, ptr %65, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1603 = load ptr, ptr %1602, align 8, !tbaa !127
  store ptr %1603, ptr %1597, align 8, !tbaa !127
  %1604 = getelementptr inbounds %class.KoState, ptr %65, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %1605 = load ptr, ptr %1604, align 8, !tbaa !128
  store ptr %1605, ptr %1599, align 8, !tbaa !128
  store ptr %1596, ptr %1595, align 8, !tbaa !125
  store ptr %1598, ptr %1602, align 8, !tbaa !127
  store ptr %1600, ptr %1604, align 8, !tbaa !128
  %1606 = icmp eq ptr %1596, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1595, i8 0, i64 24, i1 false)
  br i1 %1606, label %1608, label %1607

1607:                                             ; preds = %1593
  call void @_ZdlPv(ptr noundef %1596) #26
  br label %1608

1608:                                             ; preds = %1593, %1607
  %1609 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %1610 = getelementptr inbounds %class.GameState, ptr %65, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %1609, ptr noundef nonnull align 8 dereferenceable(24) %1610) #27
  %1611 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  %1612 = getelementptr inbounds %class.GameState, ptr %65, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %1611, ptr noundef nonnull align 8 dereferenceable(44) %1612, i64 44, i1 false), !tbaa.struct !129
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1610) #27
  %1613 = load ptr, ptr %1595, align 8, !tbaa !125
  %1614 = icmp eq ptr %1613, null
  br i1 %1614, label %1616, label %1615

1615:                                             ; preds = %1608
  call void @_ZdlPv(ptr noundef %1613) #26
  br label %1616

1616:                                             ; preds = %1615, %1608
  %1617 = load ptr, ptr %1580, align 8, !tbaa !125
  %1618 = icmp eq ptr %1617, null
  br i1 %1618, label %1620, label %1619

1619:                                             ; preds = %1616
  call void @_ZdlPv(ptr noundef %1617) #26
  br label %1620

1620:                                             ; preds = %1619, %1616
  %1621 = load ptr, ptr %1545, align 8, !tbaa !102
  %1622 = icmp eq ptr %1621, null
  br i1 %1622, label %1624, label %1623

1623:                                             ; preds = %1620
  call void @_ZdlPv(ptr noundef %1621) #26
  br label %1624

1624:                                             ; preds = %1620, %1623
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %65) #27
  %1625 = load i32, ptr %5, align 4, !tbaa !80
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %1625, ptr noundef nonnull @.str.25)
          to label %1626 unwind label %1646

1626:                                             ; preds = %1624
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %63) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %63) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %62) #27
  %1627 = load ptr, ptr %61, align 8, !tbaa !52
  %1628 = icmp eq ptr %1627, %1502
  br i1 %1628, label %1629, label %1632

1629:                                             ; preds = %1626
  %1630 = load i64, ptr %1503, align 8, !tbaa !59
  %1631 = icmp ult i64 %1630, 16
  call void @llvm.assume(i1 %1631)
  br label %1633

1632:                                             ; preds = %1626
  call void @_ZdlPv(ptr noundef %1627) #26
  br label %1633

1633:                                             ; preds = %1629, %1632
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %61) #27
  %1634 = load ptr, ptr %60, align 8, !tbaa !52
  %1635 = icmp eq ptr %1634, %1500
  br i1 %1635, label %1636, label %1639

1636:                                             ; preds = %1633
  %1637 = load i64, ptr %1501, align 8, !tbaa !59
  %1638 = icmp ult i64 %1637, 16
  call void @llvm.assume(i1 %1638)
  br label %1640

1639:                                             ; preds = %1633
  call void @_ZdlPv(ptr noundef %1634) #26
  br label %1640

1640:                                             ; preds = %1636, %1639
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %60) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %59, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1641 = getelementptr inbounds i8, ptr %59, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1641) #27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %59) #27
  br label %1684

1642:                                             ; preds = %1523
  %1643 = landingpad { ptr, i32 }
          cleanup
  br label %1661

1644:                                             ; preds = %1525
  %1645 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %1524) #26
  br label %1661

1646:                                             ; preds = %1526, %1624
  %1647 = landingpad { ptr, i32 }
          cleanup
  br label %1659

1648:                                             ; preds = %1531
  %1649 = landingpad { ptr, i32 }
          cleanup
  %1650 = load ptr, ptr %64, align 8, !tbaa !52
  %1651 = icmp eq ptr %1650, %1527
  br i1 %1651, label %1652, label %1656

1652:                                             ; preds = %1648
  %1653 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 1
  %1654 = load i64, ptr %1653, align 8, !tbaa !59
  %1655 = icmp ult i64 %1654, 16
  call void @llvm.assume(i1 %1655)
  br label %1659

1656:                                             ; preds = %1648
  call void @_ZdlPv(ptr noundef %1650) #26
  br label %1659

1657:                                             ; preds = %1540
  %1658 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %65) #27
  br label %1659

1659:                                             ; preds = %1656, %1652, %1657, %1646
  %1660 = phi { ptr, i32 } [ %1647, %1646 ], [ %1658, %1657 ], [ %1649, %1652 ], [ %1649, %1656 ]
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %63) #27
  br label %1661

1661:                                             ; preds = %1659, %1644, %1642
  %1662 = phi { ptr, i32 } [ %1660, %1659 ], [ %1645, %1644 ], [ %1643, %1642 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %63) #27
  br label %1663

1663:                                             ; preds = %1661, %1521
  %1664 = phi { ptr, i32 } [ %1662, %1661 ], [ %1522, %1521 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %62) #27
  %1665 = load ptr, ptr %61, align 8, !tbaa !52
  %1666 = icmp eq ptr %1665, %1502
  br i1 %1666, label %1667, label %1670

1667:                                             ; preds = %1663
  %1668 = load i64, ptr %1503, align 8, !tbaa !59
  %1669 = icmp ult i64 %1668, 16
  call void @llvm.assume(i1 %1669)
  br label %1671

1670:                                             ; preds = %1663
  call void @_ZdlPv(ptr noundef %1665) #26
  br label %1671

1671:                                             ; preds = %1667, %1670
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %61) #27
  %1672 = load ptr, ptr %60, align 8, !tbaa !52
  %1673 = icmp eq ptr %1672, %1500
  br i1 %1673, label %1674, label %1677

1674:                                             ; preds = %1671
  %1675 = load i64, ptr %1501, align 8, !tbaa !59
  %1676 = icmp ult i64 %1675, 16
  call void @llvm.assume(i1 %1676)
  br label %1678

1677:                                             ; preds = %1671
  call void @_ZdlPv(ptr noundef %1672) #26
  br label %1678

1678:                                             ; preds = %1674, %1677
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %60) #27
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %59, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #27
  %1679 = getelementptr inbounds i8, ptr %59, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %1679) #27
  br label %1680

1680:                                             ; preds = %1678, %1519
  %1681 = phi { ptr, i32 } [ %1664, %1678 ], [ %1520, %1519 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %59) #27
  br label %1699

1682:                                             ; preds = %1495
  %1683 = load i32, ptr %5, align 4, !tbaa !80
  br label %851

1684:                                             ; preds = %1133, %901, %879, %851, %180, %1145, %905, %883, %859, %1204, %1201, %925, %956, %601, %173, %131, %71, %1640, %1458, %1311, %1265, %1169, %1097, %1025, %830, %722, %482, %428, %366, %244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %1685 = load ptr, ptr %4, align 8, !tbaa !52
  %1686 = icmp eq ptr %1685, %72
  br i1 %1686, label %1687, label %1690

1687:                                             ; preds = %1684
  %1688 = load i64, ptr %73, align 8, !tbaa !59
  %1689 = icmp ult i64 %1688, 16
  call void @llvm.assume(i1 %1689)
  br label %1691

1690:                                             ; preds = %1684
  call void @_ZdlPv(ptr noundef %1685) #26
  br label %1691

1691:                                             ; preds = %1687, %1690
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %1692 = load ptr, ptr %3, align 8, !tbaa !52
  %1693 = icmp eq ptr %1692, %66
  br i1 %1693, label %1694, label %1697

1694:                                             ; preds = %1691
  %1695 = load i64, ptr %67, align 8, !tbaa !59
  %1696 = icmp ult i64 %1695, 16
  call void @llvm.assume(i1 %1696)
  br label %1698

1697:                                             ; preds = %1691
  call void @_ZdlPv(ptr noundef %1692) #26
  br label %1698

1698:                                             ; preds = %1694, %1697
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret i1 true

1699:                                             ; preds = %123, %125, %1209, %1205, %1171, %1173, %1191, %1135, %1137, %1139, %1680, %1493, %1341, %1277, %1116, %1027, %969, %938, %896, %874, %842, %734, %627, %484, %430, %378, %256, %167
  %1700 = phi { ptr, i32 } [ %257, %256 ], [ %379, %378 ], [ %431, %430 ], [ %485, %484 ], [ %628, %627 ], [ %735, %734 ], [ %843, %842 ], [ %875, %874 ], [ %897, %896 ], [ %939, %938 ], [ %970, %969 ], [ %1028, %1027 ], [ %1117, %1116 ], [ %1278, %1277 ], [ %1342, %1341 ], [ %1494, %1493 ], [ %1681, %1680 ], [ %168, %167 ], [ %1140, %1139 ], [ %1138, %1137 ], [ %1136, %1135 ], [ %1192, %1191 ], [ %1174, %1173 ], [ %1172, %1171 ], [ %1206, %1205 ], [ %1206, %1209 ], [ %124, %123 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %1701 = load ptr, ptr %4, align 8, !tbaa !52
  %1702 = icmp eq ptr %1701, %72
  br i1 %1702, label %1703, label %1706

1703:                                             ; preds = %1699
  %1704 = load i64, ptr %73, align 8, !tbaa !59
  %1705 = icmp ult i64 %1704, 16
  call void @llvm.assume(i1 %1705)
  br label %1707

1706:                                             ; preds = %1699
  call void @_ZdlPv(ptr noundef %1701) #26
  br label %1707

1707:                                             ; preds = %1703, %1706
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %1708

1708:                                             ; preds = %1707, %85
  %1709 = phi { ptr, i32 } [ %86, %85 ], [ %1700, %1707 ]
  %1710 = load ptr, ptr %3, align 8, !tbaa !52
  %1711 = icmp eq ptr %1710, %66
  br i1 %1711, label %1712, label %1715

1712:                                             ; preds = %1708
  %1713 = load i64, ptr %67, align 8, !tbaa !59
  %1714 = icmp ult i64 %1713, 16
  call void @llvm.assume(i1 %1714)
  br label %1716

1715:                                             ; preds = %1708
  call void @_ZdlPv(ptr noundef %1710) #26
  br label %1716

1716:                                             ; preds = %1712, %1715
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  resume { ptr, i32 } %1709
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #0

declare void @_ZN5Utils10gtp_printfEiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

declare void @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare void @_ZN9GameState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, float noundef) local_unnamed_addr #0

declare void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare void @_ZN9FastState8set_komiEf(ptr noundef nonnull align 8 dereferenceable(8388), float noundef) local_unnamed_addr #0

declare void @_ZN9GameState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90), ptr noundef nonnull align 8 dereferenceable(8508)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90), i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #0

declare void @_ZN9FastState10set_passesEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN9GameState9undo_moveEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #0

declare noundef float @_ZN9FastState8get_komiEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare void @_ZN9GameState15set_timecontrolEiii(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN9GameState11adjust_timeEiii(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare void @_ZN7Playout20do_playout_benchmarkER9GameState(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #0

declare void @_ZN9FastBoard11display_mapESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8052), ptr noundef) local_unnamed_addr #0

declare void @_ZN9FastBoard9influenceEv(ptr dead_on_unwind writable sret(%"class.std::vector.8") align 8, ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #0

declare void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #0

declare void @_ZN9GameState19place_free_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #0

declare void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512)) unnamed_addr #0

declare void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind writable sret(%class.GameState) align 8, ptr noundef nonnull align 8 dereferenceable(8512), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4, !prof !131

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %7)
          to label %11 unwind label %8, !prof !136

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #30
  unreachable

11:                                               ; preds = %4
  %12 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %21, label %17, !prof !140

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %19, %17 ], [ %13, %11 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %18)
  %19 = getelementptr inbounds %class.SGFTree, ptr %18, i64 1
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %21, label %17, !prof !141, !llvm.loop !142

21:                                               ; preds = %17, %11
  %22 = load ptr, ptr %12, align 8, !tbaa !137
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !140

24:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %22) #26
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !140

29:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %27) #26
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !125
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !140

34:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %32) #26
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !136

39:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %37) #26
  br label %40

40:                                               ; preds = %35, %39
  tail call void @_ZdlPv(ptr noundef %2) #26
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !51 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #27
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %3 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  %4 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %0, align 8, !tbaa !144
  %7 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = load ptr, ptr %1, align 8, !tbaa !144
  store ptr %11, ptr %0, align 8, !tbaa !144
  %12 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  store ptr %13, ptr %7, align 8, !tbaa !146
  %14 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  store ptr %15, ptr %9, align 8, !tbaa !147
  store ptr %6, ptr %1, align 8, !tbaa !144
  store ptr %8, ptr %12, align 8, !tbaa !146
  store ptr %10, ptr %14, align 8, !tbaa !147
  store ptr %6, ptr %3, align 8, !tbaa !144
  store ptr %8, ptr %4, align 8, !tbaa !146
  store ptr %10, ptr %5, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %25, label %6, !prof !149

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %2, %1 ]
  %8 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !125
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !150

11:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !150

16:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %14) #26
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !151

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #26
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %class.KoState, ptr %7, i64 1
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %6, !prof !152, !llvm.loop !153

25:                                               ; preds = %22, %1
  %26 = load ptr, ptr %0, align 8, !tbaa !144
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !154

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #26
  br label %29

29:                                               ; preds = %25, %28
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #15 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !70
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !156

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !52
  %11 = load i64, ptr %4, align 8, !tbaa !70
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !61
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !52
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !157

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !61
  store i8 %16, ptr %14, align 1, !tbaa !61
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !158
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !70
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !59
  %21 = load ptr, ptr %0, align 8, !tbaa !52
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !60
  %10 = load ptr, ptr %1, align 8, !tbaa !52
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !52
  %19 = load i64, ptr %11, align 8, !tbaa !61
  store i64 %19, ptr %9, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !59
  store ptr %11, ptr %1, align 8, !tbaa !52
  store i64 0, ptr %21, align 8, !tbaa !59
  store i8 0, ptr %11, align 8, !tbaa !61
  %24 = load ptr, ptr %3, align 8, !tbaa !72
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !72
  br label %27

26:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %3, align 8, !tbaa !62
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 -1
  ret ptr %29
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #28
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
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %21
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %21, i32 2
  store ptr %28, ptr %27, align 8, !tbaa !60
  %29 = load ptr, ptr %2, align 8, !tbaa !52
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !59
  %35 = icmp ult i64 %34, 16
  tail call void @llvm.assume(i1 %35)
  %36 = add nuw nsw i64 %34, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %28, ptr noundef nonnull align 8 dereferenceable(1) %30, i64 %36, i1 false)
  br label %39

37:                                               ; preds = %25
  store ptr %29, ptr %27, align 8, !tbaa !52
  %38 = load i64, ptr %30, align 8, !tbaa !61
  store i64 %38, ptr %28, align 8, !tbaa !61
  br label %39

39:                                               ; preds = %32, %37
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %21, i32 1
  store i64 %41, ptr %42, align 8, !tbaa !59
  store ptr %30, ptr %2, align 8, !tbaa !52
  store i64 0, ptr %40, align 8, !tbaa !59
  store i8 0, ptr %30, align 8, !tbaa !61
  %43 = icmp eq ptr %6, %1
  br i1 %43, label %44, label %48

44:                                               ; preds = %62, %39
  %45 = phi ptr [ %26, %39 ], [ %67, %62 ]
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %45, i64 1
  %47 = icmp eq ptr %5, %1
  br i1 %47, label %91, label %69

48:                                               ; preds = %39, %62
  %49 = phi ptr [ %67, %62 ], [ %26, %39 ]
  %50 = phi ptr [ %66, %62 ], [ %6, %39 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 2
  store ptr %51, ptr %49, align 8, !tbaa !60, !alias.scope !160, !noalias !163
  %52 = load ptr, ptr %50, align 8, !tbaa !52, !alias.scope !163, !noalias !160
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !59, !alias.scope !163, !noalias !160
  %58 = icmp ult i64 %57, 16
  tail call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false), !alias.scope !165
  br label %62

60:                                               ; preds = %48
  store ptr %52, ptr %49, align 8, !tbaa !52, !alias.scope !160, !noalias !163
  %61 = load i64, ptr %53, align 8, !tbaa !61, !alias.scope !163, !noalias !160
  store i64 %61, ptr %51, align 8, !tbaa !61, !alias.scope !160, !noalias !163
  br label %62

62:                                               ; preds = %60, %55
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !59, !alias.scope !163, !noalias !160
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 1
  store i64 %64, ptr %65, align 8, !tbaa !59, !alias.scope !160, !noalias !163
  store ptr %53, ptr %50, align 8, !tbaa !52, !alias.scope !163, !noalias !160
  store i64 0, ptr %63, align 8, !tbaa !59, !alias.scope !163, !noalias !160
  store i8 0, ptr %53, align 1, !tbaa !61, !alias.scope !163, !noalias !160
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 1
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 1
  %68 = icmp eq ptr %66, %1
  br i1 %68, label %44, label %48, !llvm.loop !166

69:                                               ; preds = %44, %84
  %70 = phi ptr [ %89, %84 ], [ %46, %44 ]
  %71 = phi ptr [ %70, %84 ], [ %45, %44 ]
  %72 = phi ptr [ %88, %84 ], [ %1, %44 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1, i32 2
  store ptr %73, ptr %70, align 8, !tbaa !60, !alias.scope !167, !noalias !170
  %74 = load ptr, ptr %72, align 8, !tbaa !52, !alias.scope !170, !noalias !167
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 2
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !59, !alias.scope !170, !noalias !167
  %80 = icmp ult i64 %79, 16
  tail call void @llvm.assume(i1 %80)
  %81 = add nuw nsw i64 %79, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %73, ptr noundef nonnull align 8 dereferenceable(1) %75, i64 %81, i1 false), !alias.scope !172
  br label %84

82:                                               ; preds = %69
  store ptr %74, ptr %70, align 8, !tbaa !52, !alias.scope !167, !noalias !170
  %83 = load i64, ptr %75, align 8, !tbaa !61, !alias.scope !170, !noalias !167
  store i64 %83, ptr %73, align 8, !tbaa !61, !alias.scope !167, !noalias !170
  br label %84

84:                                               ; preds = %82, %77
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !59, !alias.scope !170, !noalias !167
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1, i32 1
  store i64 %86, ptr %87, align 8, !tbaa !59, !alias.scope !167, !noalias !170
  store ptr %75, ptr %72, align 8, !tbaa !52, !alias.scope !170, !noalias !167
  store i64 0, ptr %85, align 8, !tbaa !59, !alias.scope !170, !noalias !167
  store i8 0, ptr %75, align 1, !tbaa !61, !alias.scope !170, !noalias !167
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %70, i64 1
  %90 = icmp eq ptr %88, %5
  br i1 %90, label %91, label %69, !llvm.loop !166

91:                                               ; preds = %84, %44
  %92 = phi ptr [ %46, %44 ], [ %89, %84 ]
  %93 = icmp eq ptr %6, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @_ZdlPv(ptr noundef %6) #26
  br label %95

95:                                               ; preds = %91, %94
  %96 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !74
  store ptr %92, ptr %4, align 8, !tbaa !72
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %18
  store ptr %97, ptr %96, align 8, !tbaa !159
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !51 {
  %4 = icmp ugt i64 %1, 288230376151711743
  br i1 %4, label %5, label %9, !prof !173

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 576460752303423487
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #31
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %6
  %9 = ashr exact i64 %8, 5
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 1
  br label %13

13:                                               ; preds = %11, %29
  %14 = phi i64 [ %9, %11 ], [ %37, %29 ]
  %15 = phi i64 [ %2, %11 ], [ %30, %29 ]
  %16 = phi ptr [ %1, %11 ], [ %34, %29 ]
  %17 = icmp eq i64 %15, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %16, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %19, %6
  %21 = icmp sgt i64 %20, 32
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %24, %22 ], [ %16, %18 ]
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 -1
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr nonnull %24, ptr nonnull %24, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %25, %6
  %27 = icmp sgt i64 %26, 32
  br i1 %27, label %22, label %28, !llvm.loop !174

28:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %39

29:                                               ; preds = %13
  %30 = add nsw i64 %15, -1
  %31 = lshr i64 %14, 1
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %31
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 -1
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr nonnull %12, ptr %32, ptr nonnull %33)
  %34 = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_SF_T0_(ptr nonnull %12, ptr %16, ptr %0)
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %34, ptr %16, i64 noundef %30)
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %35, %6
  %37 = ashr exact i64 %36, 5
  %38 = icmp sgt i64 %37, 16
  br i1 %38, label %13, label %39, !llvm.loop !175

39:                                               ; preds = %29, %3, %28
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat !prof !51 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 512
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 16
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr nonnull %8)
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %11)
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 1
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %15, label %10, !llvm.loop !176

14:                                               ; preds = %2
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1)
  br label %15

15:                                               ; preds = %10, %7, %14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %75, label %11

11:                                               ; preds = %3
  %12 = add nsw i64 %9, -2
  %13 = sdiv i64 %12, 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  br label %18

18:                                               ; preds = %58, %11
  %19 = phi i64 [ %13, %11 ], [ %51, %58 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %19
  store ptr %14, ptr %4, align 8, !tbaa !60
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %19, i32 2
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %19, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !59
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %31

29:                                               ; preds = %18
  store ptr %21, ptr %4, align 8, !tbaa !52
  %30 = load i64, ptr %22, align 8, !tbaa !61
  store i64 %30, ptr %14, align 8, !tbaa !61
  br label %31

31:                                               ; preds = %24, %29
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %19, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !59
  store i64 %33, ptr %15, align 8, !tbaa !59
  store ptr %22, ptr %20, align 8, !tbaa !52
  store i64 0, ptr %32, align 8, !tbaa !59
  store i8 0, ptr %22, align 1, !tbaa !61
  store ptr %16, ptr %5, align 8, !tbaa !60
  %34 = load ptr, ptr %4, align 8, !tbaa !52
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %37)
  %38 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %38, i1 false)
  br label %41

39:                                               ; preds = %31
  store ptr %34, ptr %5, align 8, !tbaa !52
  %40 = load i64, ptr %14, align 8, !tbaa !61
  store i64 %40, ptr %16, align 8, !tbaa !61
  br label %41

41:                                               ; preds = %36, %39
  store i64 %33, ptr %17, align 8, !tbaa !59
  store ptr %14, ptr %4, align 8, !tbaa !52
  store i64 0, ptr %15, align 8, !tbaa !59
  store i8 0, ptr %14, align 8, !tbaa !61
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %19, i64 noundef %9, ptr noundef nonnull %5)
          to label %42 unwind label %59

42:                                               ; preds = %41
  %43 = load ptr, ptr %5, align 8, !tbaa !52
  %44 = icmp eq ptr %43, %16
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, ptr %17, align 8, !tbaa !59
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %43) #26
  br label %49

49:                                               ; preds = %45, %48
  %50 = icmp eq i64 %19, 0
  %51 = call i64 @llvm.usub.sat.i64(i64 %19, i64 1)
  %52 = load ptr, ptr %4, align 8, !tbaa !52
  %53 = icmp eq ptr %52, %14
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, ptr %15, align 8, !tbaa !59
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %52) #26
  br label %58

58:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br i1 %50, label %75, label %18, !llvm.loop !177

59:                                               ; preds = %41
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %5, align 8, !tbaa !52
  %62 = icmp eq ptr %61, %16
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, ptr %17, align 8, !tbaa !59
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  br label %67

66:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %61) #26
  br label %67

67:                                               ; preds = %63, %66
  %68 = load ptr, ptr %4, align 8, !tbaa !52
  %69 = icmp eq ptr %68, %14
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, ptr %15, align 8, !tbaa !59
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %68) #26
  br label %74

74:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  resume { ptr, i32 } %60

75:                                               ; preds = %58, %3
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %7, ptr %5, align 8, !tbaa !60
  %8 = load ptr, ptr %2, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !59
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false)
  br label %18

16:                                               ; preds = %4
  store ptr %8, ptr %5, align 8, !tbaa !52
  %17 = load i64, ptr %9, align 8, !tbaa !61
  store i64 %17, ptr %7, align 8, !tbaa !61
  br label %18

18:                                               ; preds = %11, %16
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !59
  store ptr %9, ptr %2, align 8, !tbaa !52
  store i64 0, ptr %19, align 8, !tbaa !59
  store i8 0, ptr %9, align 1, !tbaa !61
  %22 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #27
  %23 = ptrtoint ptr %1 to i64
  %24 = ptrtoint ptr %0 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 5
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %27, ptr %6, align 8, !tbaa !60
  %28 = load ptr, ptr %5, align 8, !tbaa !52
  %29 = icmp eq ptr %28, %7
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i64, ptr %21, align 8, !tbaa !59
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  %33 = add nuw nsw i64 %31, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %33, i1 false)
  br label %36

34:                                               ; preds = %18
  store ptr %28, ptr %6, align 8, !tbaa !52
  %35 = load i64, ptr %7, align 8, !tbaa !61
  store i64 %35, ptr %27, align 8, !tbaa !61
  br label %36

36:                                               ; preds = %30, %34
  %37 = load i64, ptr %21, align 8, !tbaa !59
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %37, ptr %38, align 8, !tbaa !59
  store ptr %7, ptr %5, align 8, !tbaa !52
  store i64 0, ptr %21, align 8, !tbaa !59
  store i8 0, ptr %7, align 8, !tbaa !61
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %26, ptr noundef nonnull %6)
          to label %39 unwind label %54

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 8, !tbaa !52
  %41 = icmp eq ptr %40, %27
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, ptr %38, align 8, !tbaa !59
  %44 = icmp ult i64 %43, 16
  call void @llvm.assume(i1 %44)
  br label %46

45:                                               ; preds = %39
  call void @_ZdlPv(ptr noundef %40) #26
  br label %46

46:                                               ; preds = %42, %45
  %47 = load ptr, ptr %5, align 8, !tbaa !52
  %48 = icmp eq ptr %47, %7
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, ptr %21, align 8, !tbaa !59
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  br label %53

52:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %47) #26
  br label %53

53:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void

54:                                               ; preds = %36
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load ptr, ptr %6, align 8, !tbaa !52
  %57 = icmp eq ptr %56, %27
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, ptr %38, align 8, !tbaa !59
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %62

61:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %56) #26
  br label %62

62:                                               ; preds = %58, %61
  %63 = load ptr, ptr %5, align 8, !tbaa !52
  %64 = icmp eq ptr %63, %7
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, ptr %21, align 8, !tbaa !59
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %69

68:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #26
  br label %69

69:                                               ; preds = %65, %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  resume { ptr, i32 } %55
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %10, label %43

10:                                               ; preds = %4, %35
  %11 = phi i64 [ %38, %35 ], [ %1, %4 ]
  %12 = shl i64 %11, 1
  %13 = add i64 %12, 2
  %14 = or disjoint i64 %12, 1
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %13, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %14, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !59
  %19 = tail call i64 @llvm.umin.i64(i64 %18, i64 %16)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %14
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %13
  %24 = load ptr, ptr %22, align 8, !tbaa !52
  %25 = load ptr, ptr %23, align 8, !tbaa !52
  %26 = tail call i32 @memcmp(ptr noundef %25, ptr noundef %24, i64 noundef %19) #27
  br label %27

27:                                               ; preds = %21, %10
  %28 = phi i32 [ %26, %21 ], [ 0, %10 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = sub i64 %16, %18
  %32 = tail call i64 @llvm.smax.i64(i64 %31, i64 -2147483648)
  %33 = tail call i64 @llvm.smin.i64(i64 %32, i64 2147483647)
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %27, %30
  %36 = phi i32 [ %28, %27 ], [ %34, %30 ]
  %37 = icmp slt i32 %36, 0
  %38 = select i1 %37, i64 %14, i64 %13
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %38
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %11
  %41 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %39) #27
  %42 = icmp slt i64 %38, %8
  br i1 %42, label %10, label %43, !llvm.loop !178

43:                                               ; preds = %35, %4
  %44 = phi i64 [ %1, %4 ], [ %38, %35 ]
  %45 = and i64 %2, 1
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = add nsw i64 %2, -2
  %49 = ashr exact i64 %48, 1
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = shl i64 %44, 1
  %53 = or disjoint i64 %52, 1
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %53
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %44
  %56 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(32) %54) #27
  br label %57

57:                                               ; preds = %51, %47, %43
  %58 = phi i64 [ %53, %51 ], [ %44, %47 ], [ %44, %43 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %59, ptr %6, align 8, !tbaa !60
  %60 = load ptr, ptr %3, align 8, !tbaa !52
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !59
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  %67 = add nuw nsw i64 %65, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %59, ptr noundef nonnull align 8 dereferenceable(1) %61, i64 %67, i1 false)
  br label %70

68:                                               ; preds = %57
  store ptr %60, ptr %6, align 8, !tbaa !52
  %69 = load i64, ptr %61, align 8, !tbaa !61
  store i64 %69, ptr %59, align 8, !tbaa !61
  br label %70

70:                                               ; preds = %63, %68
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !59
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %72, ptr %73, align 8, !tbaa !59
  store ptr %61, ptr %3, align 8, !tbaa !52
  store i64 0, ptr %71, align 8, !tbaa !59
  store i8 0, ptr %61, align 1, !tbaa !61
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %58, i64 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %74 unwind label %82

74:                                               ; preds = %70
  %75 = load ptr, ptr %6, align 8, !tbaa !52
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, ptr %73, align 8, !tbaa !59
  %79 = icmp ult i64 %78, 16
  call void @llvm.assume(i1 %79)
  br label %81

80:                                               ; preds = %74
  call void @_ZdlPv(ptr noundef %75) #26
  br label %81

81:                                               ; preds = %77, %80
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  ret void

82:                                               ; preds = %70
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load ptr, ptr %6, align 8, !tbaa !52
  %85 = icmp eq ptr %84, %59
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, ptr %73, align 8, !tbaa !59
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %90

89:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %84) #26
  br label %90

90:                                               ; preds = %86, %89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  resume { ptr, i32 } %83
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %6 = icmp sgt i64 %1, %2
  br i1 %6, label %7, label %38

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %34
  %10 = phi i64 [ %1, %7 ], [ %12, %34 ]
  %11 = add nsw i64 %10, -1
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %12
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %12, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = load i64, ptr %8, align 8, !tbaa !59
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %15)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = load ptr, ptr %3, align 8, !tbaa !52
  %21 = load ptr, ptr %13, align 8, !tbaa !52
  %22 = tail call i32 @memcmp(ptr noundef %21, ptr noundef %20, i64 noundef %17) #27
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %22, %19 ], [ 0, %9 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = sub i64 %15, %16
  %28 = tail call i64 @llvm.smax.i64(i64 %27, i64 -2147483648)
  %29 = tail call i64 @llvm.smin.i64(i64 %28, i64 2147483647)
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i32 [ %24, %23 ], [ %30, %26 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %10
  %36 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  %37 = icmp sgt i64 %12, %2
  br i1 %37, label %9, label %38, !llvm.loop !179

38:                                               ; preds = %31, %34, %5
  %39 = phi i64 [ %1, %5 ], [ %10, %31 ], [ %12, %34 ]
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %39
  %41 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %6)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %2, align 8, !tbaa !52
  %13 = load ptr, ptr %1, align 8, !tbaa !52
  %14 = tail call i32 @memcmp(ptr noundef %13, ptr noundef %12, i64 noundef %9) #27
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i32 [ %14, %11 ], [ 0, %4 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = sub i64 %6, %8
  %20 = tail call i64 @llvm.smax.i64(i64 %19, i64 -2147483648)
  %21 = tail call i64 @llvm.smin.i64(i64 %20, i64 2147483647)
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi i32 [ %16, %15 ], [ %22, %18 ]
  %25 = icmp slt i32 %24, 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !59
  br i1 %25, label %28, label %65

28:                                               ; preds = %23
  %29 = tail call i64 @llvm.umin.i64(i64 %27, i64 %8)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !tbaa !52
  %33 = load ptr, ptr %2, align 8, !tbaa !52
  %34 = tail call i32 @memcmp(ptr noundef %33, ptr noundef %32, i64 noundef %29) #27
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %34, %31 ], [ 0, %28 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = sub i64 %8, %27
  %40 = tail call i64 @llvm.smax.i64(i64 %39, i64 -2147483648)
  %41 = tail call i64 @llvm.smin.i64(i64 %40, i64 2147483647)
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %35, %38
  %44 = phi i32 [ %36, %35 ], [ %42, %38 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %102, label %46

46:                                               ; preds = %43
  %47 = tail call i64 @llvm.umin.i64(i64 %27, i64 %6)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %3, align 8, !tbaa !52
  %51 = load ptr, ptr %1, align 8, !tbaa !52
  %52 = tail call i32 @memcmp(ptr noundef %51, ptr noundef %50, i64 noundef %47) #27
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i32 [ %52, %49 ], [ 0, %46 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = sub i64 %6, %27
  %58 = tail call i64 @llvm.smax.i64(i64 %57, i64 -2147483648)
  %59 = tail call i64 @llvm.smin.i64(i64 %58, i64 2147483647)
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %53, %56
  %62 = phi i32 [ %54, %53 ], [ %60, %56 ]
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %63, ptr %3, ptr %1
  br label %102

65:                                               ; preds = %23
  %66 = tail call i64 @llvm.umin.i64(i64 %27, i64 %6)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 8, !tbaa !52
  %70 = load ptr, ptr %1, align 8, !tbaa !52
  %71 = tail call i32 @memcmp(ptr noundef %70, ptr noundef %69, i64 noundef %66) #27
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ %71, %68 ], [ 0, %65 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = sub i64 %6, %27
  %77 = tail call i64 @llvm.smax.i64(i64 %76, i64 -2147483648)
  %78 = tail call i64 @llvm.smin.i64(i64 %77, i64 2147483647)
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %72, %75
  %81 = phi i32 [ %73, %72 ], [ %79, %75 ]
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %80
  %84 = tail call i64 @llvm.umin.i64(i64 %27, i64 %8)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %3, align 8, !tbaa !52
  %88 = load ptr, ptr %2, align 8, !tbaa !52
  %89 = tail call i32 @memcmp(ptr noundef %88, ptr noundef %87, i64 noundef %84) #27
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %89, %86 ], [ 0, %83 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = sub i64 %8, %27
  %95 = tail call i64 @llvm.smax.i64(i64 %94, i64 -2147483648)
  %96 = tail call i64 @llvm.smin.i64(i64 %95, i64 2147483647)
  %97 = trunc i64 %96 to i32
  br label %98

98:                                               ; preds = %90, %93
  %99 = phi i32 [ %91, %90 ], [ %97, %93 ]
  %100 = icmp slt i32 %99, 0
  %101 = select i1 %100, ptr %3, ptr %2
  br label %102

102:                                              ; preds = %98, %80, %61, %43
  %103 = phi ptr [ %2, %43 ], [ %64, %61 ], [ %1, %80 ], [ %101, %98 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %103) #27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %56
  %6 = phi ptr [ %0, %3 ], [ %57, %56 ]
  %7 = phi ptr [ %1, %3 ], [ %33, %56 ]
  %8 = load i64, ptr %4, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %27, %5
  %10 = phi ptr [ %6, %5 ], [ %30, %27 ]
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = tail call i64 @llvm.umin.i64(i64 %8, i64 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !52
  %17 = load ptr, ptr %10, align 8, !tbaa !52
  %18 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %16, i64 noundef %13) #27
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %18, %15 ], [ 0, %9 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = sub i64 %12, %8
  %24 = tail call i64 @llvm.smax.i64(i64 %23, i64 -2147483648)
  %25 = tail call i64 @llvm.smin.i64(i64 %24, i64 2147483647)
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi i32 [ %20, %19 ], [ %26, %22 ]
  %29 = icmp slt i32 %28, 0
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 1
  br i1 %29, label %9, label %31, !llvm.loop !180

31:                                               ; preds = %27, %50
  %32 = phi ptr [ %33, %50 ], [ %7, %27 ]
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 -1
  %34 = getelementptr %"class.std::__cxx11::basic_string", ptr %32, i64 -1, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !59
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 %8)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %33, align 8, !tbaa !52
  %40 = load ptr, ptr %2, align 8, !tbaa !52
  %41 = tail call i32 @memcmp(ptr noundef %40, ptr noundef %39, i64 noundef %36) #27
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i32 [ %41, %38 ], [ 0, %31 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = sub i64 %8, %35
  %47 = tail call i64 @llvm.smax.i64(i64 %46, i64 -2147483648)
  %48 = tail call i64 @llvm.smin.i64(i64 %47, i64 2147483647)
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %42, %45
  %51 = phi i32 [ %43, %42 ], [ %49, %45 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %31, label %53, !llvm.loop !181

53:                                               ; preds = %50
  %54 = icmp ult ptr %10, %33
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  ret ptr %10

56:                                               ; preds = %53
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %33) #27
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 1
  br label %5, !llvm.loop !182
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %75, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %75, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %12 = ptrtoint ptr %0 to i64
  br label %13

13:                                               ; preds = %8, %72
  %14 = phi ptr [ %6, %8 ], [ %73, %72 ]
  %15 = phi ptr [ %0, %8 ], [ %14, %72 ]
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !59
  %18 = load i64, ptr %9, align 8, !tbaa !59
  %19 = call i64 @llvm.umin.i64(i64 %18, i64 %17)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 8, !tbaa !52
  %23 = load ptr, ptr %14, align 8, !tbaa !52
  %24 = call i32 @memcmp(ptr noundef %23, ptr noundef %22, i64 noundef %19) #27
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i32 [ %24, %21 ], [ 0, %13 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = sub i64 %17, %18
  %30 = call i64 @llvm.smax.i64(i64 %29, i64 -2147483648)
  %31 = call i64 @llvm.smin.i64(i64 %30, i64 2147483647)
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i32 [ %26, %25 ], [ %32, %28 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  store ptr %10, ptr %3, align 8, !tbaa !60
  %37 = load ptr, ptr %14, align 8, !tbaa !52
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 1, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %41)
  %42 = add nuw nsw i64 %17, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %42, i1 false)
  br label %45

43:                                               ; preds = %36
  store ptr %37, ptr %3, align 8, !tbaa !52
  %44 = load i64, ptr %38, align 8, !tbaa !61
  store i64 %44, ptr %10, align 8, !tbaa !61
  br label %45

45:                                               ; preds = %40, %43
  %46 = load i64, ptr %16, align 8, !tbaa !59
  store i64 %46, ptr %11, align 8, !tbaa !59
  store ptr %38, ptr %14, align 8, !tbaa !52
  store i64 0, ptr %16, align 8, !tbaa !59
  store i8 0, ptr %38, align 1, !tbaa !61
  %47 = ptrtoint ptr %14 to i64
  %48 = sub i64 %47, %12
  %49 = ashr exact i64 %48, 5
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 2
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %60, %53 ], [ %49, %51 ]
  %55 = phi ptr [ %58, %53 ], [ %52, %51 ]
  %56 = phi ptr [ %57, %53 ], [ %14, %51 ]
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 -1
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 -1
  %59 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(32) %57) #27
  %60 = add nsw i64 %54, -1
  %61 = icmp sgt i64 %54, 1
  br i1 %61, label %53, label %62, !llvm.loop !183

62:                                               ; preds = %53, %45
  %63 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
  %64 = load ptr, ptr %3, align 8, !tbaa !52
  %65 = icmp eq ptr %64, %10
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %11, align 8, !tbaa !59
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #26
  br label %70

70:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %72

71:                                               ; preds = %33
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %14)
  br label %72

72:                                               ; preds = %70, %71
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 1
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %13, !llvm.loop !184

75:                                               ; preds = %72, %5, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %3, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !59
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  %11 = add nuw nsw i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %11, i1 false)
  br label %14

12:                                               ; preds = %1
  store ptr %4, ptr %2, align 8, !tbaa !52
  %13 = load i64, ptr %5, align 8, !tbaa !61
  store i64 %13, ptr %3, align 8, !tbaa !61
  br label %14

14:                                               ; preds = %7, %12
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !59
  store ptr %5, ptr %0, align 8, !tbaa !52
  store i64 0, ptr %15, align 8, !tbaa !59
  store i8 0, ptr %5, align 1, !tbaa !61
  br label %18

18:                                               ; preds = %41, %14
  %19 = phi ptr [ %0, %14 ], [ %20, %41 ]
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 -1
  %21 = load i64, ptr %17, align 8, !tbaa !59
  %22 = getelementptr %"class.std::__cxx11::basic_string", ptr %19, i64 -1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !59
  %24 = call i64 @llvm.umin.i64(i64 %23, i64 %21)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %20, align 8, !tbaa !52
  %28 = load ptr, ptr %2, align 8, !tbaa !52
  %29 = call i32 @memcmp(ptr noundef %28, ptr noundef %27, i64 noundef %24) #27
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i32 [ %29, %26 ], [ 0, %18 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = sub i64 %21, %23
  %35 = call i64 @llvm.smax.i64(i64 %34, i64 -2147483648)
  %36 = call i64 @llvm.smin.i64(i64 %35, i64 2147483647)
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %30, %33
  %39 = phi i32 [ %31, %30 ], [ %37, %33 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20) #27
  br label %18, !llvm.loop !185

43:                                               ; preds = %38
  %44 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
  %45 = load ptr, ptr %2, align 8, !tbaa !52
  %46 = icmp eq ptr %45, %3
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, ptr %17, align 8, !tbaa !59
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  br label %51

50:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %45) #26
  br label %51

51:                                               ; preds = %47, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat !prof !51 {
  %3 = tail call ptr @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1)
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 2
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 1
  br label %10

10:                                               ; preds = %8, %29
  %11 = phi ptr [ %31, %29 ], [ %6, %8 ]
  %12 = phi ptr [ %30, %29 ], [ %3, %8 ]
  %13 = phi ptr [ %11, %29 ], [ %9, %8 ]
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !59
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %11, align 8, !tbaa !52
  %23 = load ptr, ptr %12, align 8, !tbaa !52
  %24 = tail call i32 @bcmp(ptr %23, ptr %22, i64 %15)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %10, %21
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 1
  %28 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %11) #27
  br label %29

29:                                               ; preds = %19, %26, %21
  %30 = phi ptr [ %12, %21 ], [ %27, %26 ], [ %12, %19 ]
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 1
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %10, !llvm.loop !186

33:                                               ; preds = %29, %5
  %34 = phi ptr [ %3, %5 ], [ %30, %29 ]
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 1
  br label %36

36:                                               ; preds = %2, %33
  %37 = phi ptr [ %35, %33 ], [ %1, %2 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat !prof !51 {
  %3 = icmp eq ptr %0, %1
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 1
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %25, label %7

7:                                                ; preds = %2, %22
  %8 = phi ptr [ %23, %22 ], [ %4, %2 ]
  %9 = phi ptr [ %8, %22 ], [ %0, %2 ]
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = icmp eq i64 %11, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8, !tbaa !52
  %19 = load ptr, ptr %9, align 8, !tbaa !52
  %20 = tail call i32 @bcmp(ptr %19, ptr %18, i64 %11)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7, %17
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 1
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %7, !llvm.loop !187

25:                                               ; preds = %15, %22, %17, %2
  %26 = phi ptr [ %1, %2 ], [ %9, %17 ], [ %1, %22 ], [ %9, %15 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %2 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 5
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9, %15
  %16 = phi i64 [ %22, %15 ], [ %13, %9 ]
  %17 = phi ptr [ %21, %15 ], [ %1, %9 ]
  %18 = phi ptr [ %20, %15 ], [ %2, %9 ]
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18) #27
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 1
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 1
  %22 = add nsw i64 %16, -1
  %23 = icmp sgt i64 %16, 1
  br i1 %23, label %15, label %24, !llvm.loop !188

24:                                               ; preds = %15, %9, %5
  %25 = load ptr, ptr %6, align 8, !tbaa !62
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %2 to i64
  %28 = sub i64 %26, %27
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %24, %41
  %32 = phi ptr [ %42, %41 ], [ %29, %24 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !59
  %39 = icmp ult i64 %38, 16
  tail call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %33) #26
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 1
  %43 = icmp eq ptr %42, %25
  br i1 %43, label %44, label %31, !llvm.loop !78

44:                                               ; preds = %41
  store ptr %29, ptr %6, align 8, !tbaa !72
  br label %45

45:                                               ; preds = %44, %24, %3
  ret ptr %1
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #15 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #8 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !189 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !190

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !191
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !193, !llvm.loop !194

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !195 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12, !prof !196

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %10 = load i64, ptr %9, align 8, !tbaa !59
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #26
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !52
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21, !prof !193

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !59
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

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %0) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 !prof !197 {
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4)
          to label %8 unwind label %5, !prof !198

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #30
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %18, label %14, !prof !199

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %10, %8 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %15)
  %16 = getelementptr inbounds %class.SGFTree, ptr %15, i64 1
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %14, !prof !200, !llvm.loop !142

18:                                               ; preds = %14, %8
  %19 = load ptr, ptr %9, align 8, !tbaa !137
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !199

21:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %19) #26
  br label %22

22:                                               ; preds = %18, %21
  %23 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !201

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !125
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !201

31:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %29) #26
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !198

36:                                               ; preds = %32
  tail call void @_ZdlPv(ptr noundef %34) #26
  br label %37

37:                                               ; preds = %32, %36
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_GTP.cpp() #20 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !202 !PGOFuncName !203 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #27
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 0, i32 2), ptr @_ZN3GTP10s_commandsB5cxx11E, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #27
  store i64 16, ptr %1, align 8, !tbaa !70
  %7 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3GTP10s_commandsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
          to label %8 unwind label %33, !prof !204

8:                                                ; preds = %0
  store ptr %7, ptr @_ZN3GTP10s_commandsB5cxx11E, align 16, !tbaa !52
  %9 = load i64, ptr %1, align 8, !tbaa !70
  store i64 %9, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 0, i32 2), align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  store i64 %9, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 0, i32 1), align 8, !tbaa !59
  %10 = load ptr, ptr @_ZN3GTP10s_commandsB5cxx11E, align 16, !tbaa !52
  %11 = getelementptr inbounds i8, ptr %10, i64 %9
  store i8 0, ptr %11, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #27
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1), align 16, !tbaa !60
  store i32 1701667182, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1, i32 2), align 16
  store i64 4, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1, i32 2), i64 4), align 4, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2, i32 2), ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2, i32 2), i64 7), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3), align 16, !tbaa !60
  store i32 1953068401, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3, i32 2), align 16
  store i64 4, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3, i32 2), i64 4), align 4, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4, i32 2), ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4, i32 2, i32 1, i64 5), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5, i32 2), ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5, i32 2, i32 1, i64 5), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6), align 16, !tbaa !60
  store i32 1953068401, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6, i32 2), align 16
  store i64 4, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6, i32 2), i64 4), align 4, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7, i32 2), ptr noundef nonnull align 1 dereferenceable(9) @.str.7, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7, i32 2, i32 1, i64 1), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8, i32 2), ptr noundef nonnull align 1 dereferenceable(11) @.str.8, i64 11, i1 false)
  store i64 11, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8, i32 2, i32 1, i64 3), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9), align 16, !tbaa !60
  store i32 1768779627, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9, i32 2), align 16
  store i64 4, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9, i32 2), i64 4), align 4, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10), align 16, !tbaa !60
  store i32 2036427888, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10, i32 2), align 16
  store i64 4, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10, i32 2), i64 4), align 4, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11, i32 2), ptr noundef nonnull align 1 dereferenceable(7) @.str.11, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11, i32 2), i64 7), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12, i32 2), ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12, i32 2, i32 1, i64 1), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13), align 16, !tbaa !60
  store i32 1868852853, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13, i32 2), align 16
  store i64 4, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13, i32 2), i64 4), align 4, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14, i32 2), ptr noundef nonnull align 1 dereferenceable(11) @.str.14, i64 11, i1 false)
  store i64 11, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14, i32 2, i32 1, i64 3), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store i64 17, ptr %2, align 8, !tbaa !70
  %12 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %13 unwind label %35, !prof !204

13:                                               ; preds = %8
  store ptr %12, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), align 16, !tbaa !52
  %14 = load i64, ptr %2, align 8, !tbaa !70
  store i64 %14, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15, i32 2), align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %12, ptr noundef nonnull align 1 dereferenceable(17) @.str.15, i64 17, i1 false)
  store i64 %14, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15, i32 1), align 8, !tbaa !59
  %15 = load ptr, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), align 16, !tbaa !52
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16, i32 2), ptr noundef nonnull align 1 dereferenceable(13) @.str.16, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16, i32 2, i32 1, i64 5), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17, i32 2), ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17, i32 2, i32 1, i64 1), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18, i32 2), ptr noundef nonnull align 1 dereferenceable(9) @.str.18, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18, i32 2, i32 1, i64 1), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19), align 16, !tbaa !60
  store i64 7310027618103812973, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19, i32 2), align 16
  store i64 8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19, i32 2, i32 1, i64 0), align 8, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store i64 19, ptr %3, align 8, !tbaa !70
  %17 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %18 unwind label %37, !prof !204

18:                                               ; preds = %13
  store ptr %17, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), align 16, !tbaa !52
  %19 = load i64, ptr %3, align 8, !tbaa !70
  store i64 %19, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20, i32 2), align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %17, ptr noundef nonnull align 1 dereferenceable(19) @.str.20, i64 19, i1 false)
  store i64 %19, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20, i32 1), align 8, !tbaa !59
  %20 = load ptr, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), align 16, !tbaa !52
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  store i8 0, ptr %21, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21, i32 2), ptr noundef nonnull align 1 dereferenceable(14) @.str.21, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21, i32 2, i32 1, i64 6), align 2, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store i64 19, ptr %4, align 8, !tbaa !70
  %22 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %23 unwind label %39, !prof !204

23:                                               ; preds = %18
  store ptr %22, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), align 16, !tbaa !52
  %24 = load i64, ptr %4, align 8, !tbaa !70
  store i64 %24, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22, i32 2), align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %22, ptr noundef nonnull align 1 dereferenceable(19) @.str.22, i64 19, i1 false)
  store i64 %24, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22, i32 1), align 8, !tbaa !59
  %25 = load ptr, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), align 16, !tbaa !52
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  store i8 0, ptr %26, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i64 17, ptr %5, align 8, !tbaa !70
  %27 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %28 unwind label %41, !prof !204

28:                                               ; preds = %23
  store ptr %27, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), align 16, !tbaa !52
  %29 = load i64, ptr %5, align 8, !tbaa !70
  store i64 %29, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23, i32 2), align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %27, ptr noundef nonnull align 1 dereferenceable(17) @.str.23, i64 17, i1 false)
  store i64 %29, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23, i32 1), align 8, !tbaa !59
  %30 = load ptr, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), align 16, !tbaa !52
  %31 = getelementptr inbounds i8, ptr %30, i64 %29
  store i8 0, ptr %31, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24), align 16, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24, i32 2), ptr noundef nonnull align 1 dereferenceable(7) @.str.24, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24, i32 2), i64 7), align 1, !tbaa !61
  store ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 25, i32 2), ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 25), align 16, !tbaa !60
  store i64 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 25, i32 1), align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 25, i32 2), align 16, !tbaa !61
  %32 = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #27
  ret void

33:                                               ; preds = %0
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %43

35:                                               ; preds = %8
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %13
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %43

39:                                               ; preds = %18
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %43

41:                                               ; preds = %23
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33
  %44 = phi i1 [ true, %33 ], [ false, %35 ], [ false, %37 ], [ false, %39 ], [ false, %41 ]
  %45 = phi ptr [ @_ZN3GTP10s_commandsB5cxx11E, %33 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), %35 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), %37 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), %39 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), %41 ]
  %46 = phi { ptr, i32 } [ %34, %33 ], [ %36, %35 ], [ %38, %37 ], [ %40, %39 ], [ %42, %41 ]
  br i1 %44, label %60, label %47

47:                                               ; preds = %43, %58
  %48 = phi ptr [ %49, %58 ], [ %45, %43 ]
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 -1
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = getelementptr %"class.std::__cxx11::basic_string", ptr %48, i64 -1, i32 2
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr %"class.std::__cxx11::basic_string", ptr %48, i64 -1, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !59
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %50) #26
  br label %58

58:                                               ; preds = %57, %53
  %59 = icmp eq ptr %49, @_ZN3GTP10s_commandsB5cxx11E
  br i1 %59, label %60, label %47

60:                                               ; preds = %58, %43
  resume { ptr, i32 } %46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 448}
!36 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 10}
!37 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZdlPv, i64 478}
!38 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 10}
!39 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZdlPv, i64 3038376}
!40 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 32}
!41 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 606}
!42 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!43 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZdlPv, i64 617}
!44 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 437}
!45 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 427}
!46 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZdlPv, i64 1301}
!47 = !{ptr @_GLOBAL__sub_I_GTP.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!48 = !{ptr @_GLOBAL__sub_I_GTP.cpp, ptr @__cxa_atexit, i64 2}
!49 = !{ptr @_GLOBAL__sub_I_GTP.cpp, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 5}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !55, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !58, i64 8, !56, i64 16}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"long", !56, i64 0}
!59 = !{!53, !58, i64 8}
!60 = !{!54, !55, i64 0}
!61 = !{!56, !56, i64 0}
!62 = !{!55, !55, i64 0}
!63 = !{i64 0, i64 65}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !55, i64 0}
!68 = !{!"_ZTSSt18_Bit_iterator_base", !55, i64 0, !69, i64 8}
!69 = !{!"int", !56, i64 0}
!70 = !{!58, !58, i64 0}
!71 = distinct !{!71, !65, !66}
!72 = !{!73, !55, i64 8}
!73 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!74 = !{!73, !55, i64 0}
!75 = !{!76, !55, i64 32}
!76 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !77, i64 0, !77, i64 16, !55, i64 32}
!77 = !{!"_ZTSSt13_Bit_iterator", !68, i64 0}
!78 = distinct !{!78, !65, !66}
!79 = distinct !{!79, !65, !66}
!80 = !{!69, !69, i64 0}
!81 = distinct !{!81, !65, !66}
!82 = !{!83, !83, i64 0}
!83 = !{!"vtable pointer", !57, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"_ZTSSt13_Ios_Fmtflags", !56, i64 0}
!86 = distinct !{!86, !65, !66}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!89 = distinct !{!89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!92 = distinct !{!92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!93 = distinct !{!93, !65, !66}
!94 = !{!95, !96, i64 32}
!95 = !{!"_ZTSSt8ios_base", !58, i64 8, !58, i64 16, !85, i64 24, !96, i64 28, !96, i64 32, !55, i64 40, !97, i64 48, !56, i64 64, !69, i64 192, !55, i64 200, !98, i64 208}
!96 = !{!"_ZTSSt12_Ios_Iostate", !56, i64 0}
!97 = !{!"_ZTSNSt8ios_base6_WordsE", !55, i64 0, !58, i64 8}
!98 = !{!"_ZTSSt6locale", !55, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"float", !56, i64 0}
!101 = distinct !{!101, !65, !66}
!102 = !{!103, !55, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!104 = !{!"VP", i32 1, i64 0, i64 2, i64 0}
!105 = distinct !{!105, !65, !66}
!106 = !{!107, !55, i64 0}
!107 = !{!"_ZTSSt8auto_ptrI7SGFTreeE", !55, i64 0}
!108 = !{!103, !55, i64 8}
!109 = !{!103, !55, i64 16}
!110 = !{!111, !69, i64 8048}
!111 = !{!"_ZTS9FastBoard", !112, i64 0, !112, i64 882, !69, i64 1764, !69, i64 1768, !69, i64 1772, !113, i64 1776, !114, i64 3540, !114, i64 4424, !114, i64 5308, !114, i64 6192, !112, i64 7076, !115, i64 7960, !116, i64 7976, !117, i64 8008, !117, i64 8016, !118, i64 8024, !69, i64 8048}
!112 = !{!"_ZTSN5boost5arrayItLm441EEE", !56, i64 0}
!113 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !56, i64 0}
!114 = !{!"_ZTSN5boost5arrayItLm442EEE", !56, i64 0}
!115 = !{!"_ZTSN5boost5arrayIiLm4EEE", !56, i64 0}
!116 = !{!"_ZTSN5boost5arrayIiLm8EEE", !56, i64 0}
!117 = !{!"_ZTSN5boost5arrayIiLm2EEE", !56, i64 0}
!118 = !{!"_ZTSSt6vectorIiSaIiEE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !103, i64 0}
!121 = !{!122, !69, i64 0}
!122 = !{!"_ZTSSt4pairIiiE", !69, i64 0, !69, i64 4}
!123 = !{!122, !69, i64 4}
!124 = distinct !{!124, !65, !66}
!125 = !{!126, !55, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!127 = !{!126, !55, i64 8}
!128 = !{!126, !55, i64 16}
!129 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 2, !61, i64 36, i64 8, !61}
!130 = !{!"function_entry_count", i64 448}
!131 = !{!"branch_weights", i32 0, i32 448}
!132 = !{!133, !55, i64 8}
!133 = !{!"_ZTSSt15_Rb_tree_header", !134, i64 0, !58, i64 32}
!134 = !{!"_ZTSSt18_Rb_tree_node_base", !135, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!135 = !{!"_ZTSSt14_Rb_tree_color", !56, i64 0}
!136 = !{!"branch_weights", i32 448, i32 0}
!137 = !{!138, !55, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!139 = !{!138, !55, i64 8}
!140 = !{!"branch_weights", i32 438, i32 10}
!141 = !{!"branch_weights", i32 10, i32 0}
!142 = distinct !{!142, !65, !66}
!143 = !{!"function_entry_count", i64 10}
!144 = !{!145, !55, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!146 = !{!145, !55, i64 8}
!147 = !{!145, !55, i64 16}
!148 = !{!"function_entry_count", i64 12023}
!149 = !{!"branch_weights", i32 1, i32 12022}
!150 = !{!"branch_weights", i32 0, i32 1513182}
!151 = !{!"branch_weights", i32 1513182, i32 0}
!152 = !{!"branch_weights", i32 12022, i32 1501160}
!153 = distinct !{!153, !65, !66}
!154 = !{!"branch_weights", i32 11, i32 12012}
!155 = !{!"function_entry_count", i64 37847}
!156 = !{!"branch_weights", i32 32, i32 37815}
!157 = !{!"branch_weights", i32 36919, i32 928, i32 0}
!158 = !{!"VP", i32 1, i64 36919, i64 2, i64 29486, i64 3, i64 5287, i64 4, i64 1900, i64 8, i64 106}
!159 = !{!73, !55, i64 16}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!162 = distinct !{!162, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!165 = !{!161, !164}
!166 = distinct !{!166, !65, !66}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!169 = distinct !{!169, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!172 = !{!168, !171}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = distinct !{!174, !65, !66}
!175 = distinct !{!175, !65, !66}
!176 = distinct !{!176, !65, !66}
!177 = distinct !{!177, !65, !66}
!178 = distinct !{!178, !65, !66}
!179 = distinct !{!179, !65, !66}
!180 = distinct !{!180, !65, !66}
!181 = distinct !{!181, !65, !66}
!182 = distinct !{!182, !65, !66}
!183 = distinct !{!183, !65, !66}
!184 = distinct !{!184, !65, !66}
!185 = distinct !{!185, !65, !66}
!186 = distinct !{!186, !65, !66}
!187 = distinct !{!187, !65, !66}
!188 = distinct !{!188, !65, !66}
!189 = !{!"function_entry_count", i64 1928}
!190 = !{!"branch_weights", i32 1322, i32 606}
!191 = !{!134, !55, i64 24}
!192 = !{!134, !55, i64 16}
!193 = !{!"branch_weights", i32 606, i32 0}
!194 = distinct !{!194, !65, !66}
!195 = !{!"function_entry_count", i64 606}
!196 = !{!"branch_weights", i32 595, i32 11}
!197 = !{!"function_entry_count", i64 437}
!198 = !{!"branch_weights", i32 437, i32 0}
!199 = !{!"branch_weights", i32 10, i32 427}
!200 = !{!"branch_weights", i32 427, i32 0}
!201 = !{!"branch_weights", i32 0, i32 437}
!202 = !{!"function_entry_count", i64 1}
!203 = !{!"GTP.cpp;_GLOBAL__sub_I_GTP.cpp"}
!204 = !{!"branch_weights", i32 1, i32 0}
