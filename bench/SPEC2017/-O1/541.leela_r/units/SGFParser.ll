; ModuleID = 'SGFParser.cpp'
source_filename = "SGFParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::auto_ptr" = type { ptr }
%class.SGFTree = type { %class.KoState, %"class.std::vector.16", %"class.std::multimap" }
%class.KoState = type { %class.FastState.base, %"class.std::vector.11", %"class.std::vector.11" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.9", %"class.boost::array.10" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32 }>
%"class.boost::array.1" = type { [441 x i32] }
%"class.boost::array.2" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.3" = type { [4 x i32] }
%"class.boost::array.4" = type { [8 x i32] }
%"class.boost::array.5" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.9" = type { [24 x i32] }
%"class.boost::array.10" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32, [4 x i8] }>
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.9", %"class.boost::array.10", [4 x i8] }>
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"struct.std::pair.26" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZN7SGFTreeC2ERKS_ = comdat any

$_ZNSt8auto_ptrI7SGFTreeED2Ev = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTISt9exception = external constant ptr
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@.str = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SGFParser.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %4 = alloca %"class.std::basic_ifstream", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %4) #17
  %7 = load ptr, ptr %1, align 8, !tbaa !83
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %7, i32 noundef 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %8, ptr %5, align 8, !tbaa !90
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 0, ptr %9, align 8, !tbaa !91
  store i8 0, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %10, ptr %0, align 8, !tbaa !90
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %11, align 8, !tbaa !91
  store i8 0, ptr %10, align 8, !tbaa !92
  %12 = load ptr, ptr %4, align 8, !tbaa !93
  %13 = getelementptr i8, ptr %12, i64 -24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %4, i64 %14
  %16 = getelementptr inbounds %"class.std::ios_base", ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !95
  %18 = and i32 %17, 5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !102

20:                                               ; preds = %3
  %21 = call ptr @__cxa_allocate_exception(i64 8) #17
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %21, align 8, !tbaa !93
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #18
          to label %137 unwind label %22

22:                                               ; preds = %20
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %121

24:                                               ; preds = %3
  %25 = getelementptr inbounds %"class.std::ios_base", ptr %15, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !103
  %27 = and i32 %26, -4097
  store i32 %27, ptr %25, align 4, !tbaa !103
  store i64 0, ptr %9, align 8, !tbaa !91
  store i8 0, ptr %8, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  br label %28

28:                                               ; preds = %86, %24
  %29 = phi i32 [ %87, %86 ], [ 0, %24 ]
  %30 = icmp sle i32 %29, %2
  %31 = icmp eq i32 %29, %2
  br label %32

32:                                               ; preds = %70, %28
  %33 = phi i32 [ 0, %28 ], [ %71, %70 ]
  br label %34

34:                                               ; preds = %32, %59
  %35 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %36 unwind label %49, !prof !104

36:                                               ; preds = %34
  %37 = load ptr, ptr %35, align 8, !tbaa !93
  %38 = getelementptr i8, ptr %37, i64 -24
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds i8, ptr %35, i64 %39
  %41 = getelementptr inbounds %"class.std::ios_base", ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !95
  %43 = and i32 %42, 5
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i1 %30, i1 false, !prof !105
  br i1 %45, label %46, label %88, !prof !106

46:                                               ; preds = %36
  br i1 %31, label %47, label %59, !prof !107

47:                                               ; preds = %46
  %48 = load i8, ptr %6, align 1, !tbaa !92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext %48)
          to label %59 unwind label %49, !prof !108

49:                                               ; preds = %34, %47
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %57

51:                                               ; preds = %63
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %57

53:                                               ; preds = %76
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %57

55:                                               ; preds = %81, %88, %93
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %57

57:                                               ; preds = %53, %51, %49, %55
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ], [ %50, %49 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  br label %121

59:                                               ; preds = %47, %46
  %60 = load i8, ptr %6, align 1, !tbaa !92
  switch i8 %60, label %34 [
    i8 40, label %61
    i8 41, label %72
  ], !prof !109, !llvm.loop !110

61:                                               ; preds = %59
  %62 = icmp eq i32 %33, 0
  br i1 %62, label %63, label %68, !prof !113

63:                                               ; preds = %61
  %64 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %65 unwind label %51, !prof !114

65:                                               ; preds = %63
  br i1 %31, label %66, label %68, !prof !115

66:                                               ; preds = %65
  store i64 0, ptr %9, align 8, !tbaa !91
  %67 = load ptr, ptr %5, align 8, !tbaa !83
  store i8 0, ptr %67, align 1, !tbaa !92
  br label %68

68:                                               ; preds = %65, %66, %61
  %69 = add nsw i32 %33, 1
  br label %70

70:                                               ; preds = %68, %72
  %71 = phi i32 [ %73, %72 ], [ %69, %68 ]
  br label %32, !llvm.loop !110

72:                                               ; preds = %59
  %73 = add nsw i32 %33, -1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %70, !prof !113

75:                                               ; preds = %72
  br i1 %31, label %76, label %86, !prof !115

76:                                               ; preds = %75
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %77 unwind label %53, !prof !116

77:                                               ; preds = %76
  %78 = load i64, ptr %11, align 8, !tbaa !91
  %79 = add i64 %78, -1
  %80 = icmp eq i64 %78, 0
  br i1 %80, label %81, label %83, !prof !117

81:                                               ; preds = %77
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %79, i64 noundef %78) #18
          to label %82 unwind label %55

82:                                               ; preds = %81
  unreachable

83:                                               ; preds = %77
  store i64 %79, ptr %11, align 8, !tbaa !91
  %84 = load ptr, ptr %0, align 8, !tbaa !83
  %85 = getelementptr inbounds i8, ptr %84, i64 %79
  store i8 0, ptr %85, align 1, !tbaa !92
  br label %86

86:                                               ; preds = %83, %75
  %87 = add nuw nsw i32 %29, 1
  br label %28, !llvm.loop !110

88:                                               ; preds = %36
  %89 = getelementptr inbounds %"class.std::basic_ifstream", ptr %4, i64 0, i32 1
  %90 = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %89)
          to label %91 unwind label %55, !prof !102

91:                                               ; preds = %88
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %101, !prof !118

93:                                               ; preds = %91
  %94 = load ptr, ptr %4, align 8, !tbaa !93
  %95 = getelementptr i8, ptr %94, i64 -24
  %96 = load i64, ptr %95, align 8
  %97 = getelementptr inbounds i8, ptr %4, i64 %96
  %98 = getelementptr inbounds %"class.std::ios_base", ptr %97, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !95
  %100 = or i32 %99, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %97, i32 noundef %100)
          to label %101 unwind label %55

101:                                              ; preds = %91, %93
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %102 = load ptr, ptr %5, align 8, !tbaa !83
  %103 = icmp eq ptr %102, %8
  br i1 %103, label %104, label %107, !prof !119

104:                                              ; preds = %101
  %105 = load i64, ptr %9, align 8, !tbaa !91
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %108

107:                                              ; preds = %101
  call void @_ZdlPv(ptr noundef %102) #19
  br label %108

108:                                              ; preds = %104, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  %109 = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8
  store ptr %109, ptr %4, align 8, !tbaa !93
  %110 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 3), align 8
  %111 = getelementptr i8, ptr %109, i64 -24
  %112 = load i64, ptr %111, align 8
  %113 = getelementptr inbounds i8, ptr %4, i64 %112
  store ptr %110, ptr %113, align 8, !tbaa !93
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %89) #17
  %114 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  store ptr %114, ptr %4, align 8, !tbaa !93
  %115 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %116 = getelementptr i8, ptr %114, i64 -24
  %117 = load i64, ptr %116, align 8
  %118 = getelementptr inbounds i8, ptr %4, i64 %117
  store ptr %115, ptr %118, align 8, !tbaa !93
  %119 = getelementptr inbounds %"class.std::basic_istream", ptr %4, i64 0, i32 1
  store i64 0, ptr %119, align 8, !tbaa !120
  %120 = getelementptr inbounds i8, ptr %4, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %120) #17
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %4) #17
  ret void

121:                                              ; preds = %57, %22
  %122 = phi { ptr, i32 } [ %23, %22 ], [ %58, %57 ]
  %123 = load ptr, ptr %0, align 8, !tbaa !83
  %124 = icmp eq ptr %123, %10
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i64, ptr %11, align 8, !tbaa !91
  %127 = icmp ult i64 %126, 16
  call void @llvm.assume(i1 %127)
  br label %129

128:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %123) #19
  br label %129

129:                                              ; preds = %125, %128
  %130 = load ptr, ptr %5, align 8, !tbaa !83
  %131 = icmp eq ptr %130, %8
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i64, ptr %9, align 8, !tbaa !91
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %136

135:                                              ; preds = %129
  call void @_ZdlPv(ptr noundef %130) #19
  br label %136

136:                                              ; preds = %132, %135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #17
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %4) #17
  resume { ptr, i32 } %122

137:                                              ; preds = %20
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #5 align 2

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #6 align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !91
  store i8 0, ptr %4, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  br label %6

6:                                                ; preds = %37, %2
  %7 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %8 unwind label %24, !prof !123

8:                                                ; preds = %6
  %9 = load ptr, ptr %7, align 8, !tbaa !93
  %10 = getelementptr i8, ptr %9, i64 -24
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %7, i64 %11
  %13 = getelementptr inbounds %"class.std::ios_base", ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !95
  %15 = and i32 %14, 5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %38, !prof !123

17:                                               ; preds = %8
  %18 = load i8, ptr %3, align 1, !tbaa !92
  %19 = sext i8 %18 to i32
  %20 = call i32 @isupper(i32 noundef %19) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37, !prof !124

22:                                               ; preds = %17
  %23 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %38 unwind label %26, !prof !125

24:                                               ; preds = %6, %37
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %25, %24 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %30 = load ptr, ptr %0, align 8, !tbaa !83
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, ptr %5, align 8, !tbaa !91
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  br label %36

35:                                               ; preds = %28
  call void @_ZdlPv(ptr noundef %30) #19
  br label %36

36:                                               ; preds = %32, %35
  resume { ptr, i32 } %29

37:                                               ; preds = %17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %18)
          to label %6 unwind label %24, !prof !126, !llvm.loop !127

38:                                               ; preds = %8, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 !prof !128 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8, !tbaa !93
  %5 = getelementptr i8, ptr %4, i64 -24
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = getelementptr inbounds %"class.std::ios_base", ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !103
  %10 = and i32 %9, -4097
  store i32 %10, ptr %8, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  br label %11

11:                                               ; preds = %21, %2
  %12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = getelementptr inbounds %"class.std::ios_base", ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !95
  %19 = and i32 %18, 5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28, !prof !129

21:                                               ; preds = %11
  %22 = load i8, ptr %3, align 1, !tbaa !92
  %23 = sext i8 %22 to i32
  %24 = call i32 @isspace(i32 noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %11, !prof !130, !llvm.loop !131

26:                                               ; preds = %21
  %27 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %28

28:                                               ; preds = %11, %26
  %29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %30 = load i8, ptr %3, align 1, !tbaa !92
  %31 = icmp eq i8 %30, 91
  br i1 %31, label %32, label %45, !prof !132

32:                                               ; preds = %28
  %33 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = getelementptr i8, ptr %34, i64 -24
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = getelementptr inbounds %"class.std::ios_base", ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !95
  %40 = and i32 %39, 5
  %41 = icmp eq i32 %40, 0
  %42 = load i8, ptr %3, align 1
  %43 = icmp ne i8 %42, 93
  %44 = select i1 %41, i1 %43, i1 false, !prof !133
  br i1 %44, label %47, label %66, !prof !134

45:                                               ; preds = %28
  %46 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %74

47:                                               ; preds = %32, %52
  %48 = phi i8 [ %63, %52 ], [ %42, %32 ]
  %49 = icmp eq i8 %48, 92
  br i1 %49, label %50, label %52, !prof !135

50:                                               ; preds = %47
  %51 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %52

52:                                               ; preds = %47, %50
  %53 = load i8, ptr %3, align 1, !tbaa !92
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %53)
  %54 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = getelementptr inbounds %"class.std::ios_base", ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !95
  %61 = and i32 %60, 5
  %62 = icmp eq i32 %61, 0
  %63 = load i8, ptr %3, align 1
  %64 = icmp ne i8 %63, 93
  %65 = select i1 %62, i1 %64, i1 false, !prof !133
  br i1 %65, label %47, label %66, !prof !136, !llvm.loop !137

66:                                               ; preds = %52, %32
  %67 = load ptr, ptr %0, align 8, !tbaa !93
  %68 = getelementptr i8, ptr %67, i64 -24
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds i8, ptr %0, i64 %69
  %71 = getelementptr inbounds %"class.std::ios_base", ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !103
  %73 = or i32 %72, 4096
  store i32 %73, ptr %71, align 4, !tbaa !103
  br label %74

74:                                               ; preds = %66, %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  ret i1 %31
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %3 = alloca i8, align 1
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::auto_ptr", align 8
  %10 = alloca %class.SGFTree, align 8
  %11 = alloca %"class.std::auto_ptr", align 8
  %12 = alloca %class.SGFTree, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %13 = getelementptr inbounds %"class.std::ios_base", ptr %0, i64 0, i32 5
  %14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = getelementptr inbounds %"class.std::ios_base", ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !95
  %21 = and i32 %20, 5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %314, !prof !139

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %33 = getelementptr inbounds %class.SGFTree, ptr %12, i64 0, i32 2
  %34 = getelementptr inbounds %class.SGFTree, ptr %12, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %35 = getelementptr inbounds %class.SGFTree, ptr %12, i64 0, i32 1
  %36 = getelementptr inbounds %class.KoState, ptr %12, i64 0, i32 2
  %37 = getelementptr inbounds %class.KoState, ptr %12, i64 0, i32 1
  %38 = getelementptr inbounds %class.FastBoard, ptr %12, i64 0, i32 16
  br label %39

39:                                               ; preds = %23, %303
  %40 = phi ptr [ %1, %23 ], [ %43, %303 ]
  %41 = phi i8 [ 0, %23 ], [ %304, %303 ]
  br label %42

42:                                               ; preds = %39, %261
  %43 = phi ptr [ %40, %39 ], [ %243, %261 ]
  br label %44

44:                                               ; preds = %42, %137
  %45 = load ptr, ptr %0, align 8, !tbaa !93
  %46 = getelementptr i8, ptr %45, i64 -24
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr i8, ptr %13, i64 %47
  %49 = load i32, ptr %48, align 8, !tbaa !95
  %50 = and i32 %49, 5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %314, !prof !140

52:                                               ; preds = %44
  %53 = load i8, ptr %3, align 1, !tbaa !92
  %54 = sext i8 %53 to i32
  %55 = call i32 @isspace(i32 noundef %54) #20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %137, !prof !140

57:                                               ; preds = %52
  %58 = call i32 @isalpha(i32 noundef %54) #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %165, label %60, !prof !141

60:                                               ; preds = %57
  %61 = call i32 @isupper(i32 noundef %54) #20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %165, label %63, !prof !142

63:                                               ; preds = %60
  %64 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %65

65:                                               ; preds = %98, %63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  store ptr %24, ptr %5, align 8, !tbaa !90
  store i64 0, ptr %25, align 8, !tbaa !91
  store i8 0, ptr %24, align 8, !tbaa !92
  %66 = invoke noundef zeroext i1 @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %67 unwind label %99, !prof !143

67:                                               ; preds = %65
  br i1 %66, label %68, label %121, !prof !132

68:                                               ; preds = %67
  store ptr %26, ptr %6, align 8, !tbaa !90
  %69 = load ptr, ptr %4, align 8, !tbaa !83
  %70 = load i64, ptr %27, align 8, !tbaa !91
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %69, ptr noundef %71)
          to label %72 unwind label %99, !prof !125

72:                                               ; preds = %68
  store ptr %28, ptr %7, align 8, !tbaa !90
  %73 = load ptr, ptr %5, align 8, !tbaa !83
  %74 = load i64, ptr %25, align 8, !tbaa !91
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %73, ptr noundef %75)
          to label %76 unwind label %101, !prof !125

76:                                               ; preds = %72
  invoke void @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8512) %43, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %77 unwind label %103, !prof !125

77:                                               ; preds = %76
  %78 = load ptr, ptr %7, align 8, !tbaa !83
  %79 = icmp eq ptr %78, %28
  br i1 %79, label %80, label %83, !prof !144

80:                                               ; preds = %77
  %81 = load i64, ptr %29, align 8, !tbaa !91
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %78) #19
  br label %84

84:                                               ; preds = %80, %83
  %85 = load ptr, ptr %6, align 8, !tbaa !83
  %86 = icmp eq ptr %85, %26
  br i1 %86, label %87, label %90, !prof !125

87:                                               ; preds = %84
  %88 = load i64, ptr %30, align 8, !tbaa !91
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %85) #19
  br label %91

91:                                               ; preds = %87, %90
  %92 = load ptr, ptr %5, align 8, !tbaa !83
  %93 = icmp eq ptr %92, %24
  br i1 %93, label %94, label %97, !prof !144

94:                                               ; preds = %91
  %95 = load i64, ptr %25, align 8, !tbaa !91
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %98

97:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %92) #19
  br label %98

98:                                               ; preds = %94, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br i1 %66, label %65, label %129, !prof !125, !llvm.loop !145

99:                                               ; preds = %68, %65
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %147

101:                                              ; preds = %72
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %112

103:                                              ; preds = %76
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = load ptr, ptr %7, align 8, !tbaa !83
  %106 = icmp eq ptr %105, %28
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !91
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %112

111:                                              ; preds = %103
  call void @_ZdlPv(ptr noundef %105) #19
  br label %112

112:                                              ; preds = %111, %107, %101
  %113 = phi { ptr, i32 } [ %102, %101 ], [ %104, %107 ], [ %104, %111 ]
  %114 = load ptr, ptr %6, align 8, !tbaa !83
  %115 = icmp eq ptr %114, %26
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !91
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %147

120:                                              ; preds = %112
  call void @_ZdlPv(ptr noundef %114) #19
  br label %147

121:                                              ; preds = %67
  %122 = load ptr, ptr %5, align 8, !tbaa !83
  %123 = icmp eq ptr %122, %24
  br i1 %123, label %124, label %127, !prof !125

124:                                              ; preds = %121
  %125 = load i64, ptr %25, align 8, !tbaa !91
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %128

127:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %122) #19
  br label %128

128:                                              ; preds = %124, %127
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %129

129:                                              ; preds = %98, %128
  %130 = load ptr, ptr %4, align 8, !tbaa !83
  %131 = icmp eq ptr %130, %31
  br i1 %131, label %132, label %135, !prof !125

132:                                              ; preds = %129
  %133 = load i64, ptr %32, align 8, !tbaa !91
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %136

135:                                              ; preds = %129
  call void @_ZdlPv(ptr noundef %130) #19
  br label %136

136:                                              ; preds = %132, %135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %137

137:                                              ; preds = %136, %52
  %138 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %139 = load ptr, ptr %138, align 8, !tbaa !93
  %140 = getelementptr i8, ptr %139, i64 -24
  %141 = load i64, ptr %140, align 8
  %142 = getelementptr inbounds i8, ptr %138, i64 %141
  %143 = getelementptr inbounds %"class.std::ios_base", ptr %142, i64 0, i32 5
  %144 = load i32, ptr %143, align 8, !tbaa !95
  %145 = and i32 %144, 5
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %44, label %314, !prof !146, !llvm.loop !147

147:                                              ; preds = %120, %116, %99
  %148 = phi { ptr, i32 } [ %100, %99 ], [ %113, %116 ], [ %113, %120 ]
  %149 = load ptr, ptr %5, align 8, !tbaa !83
  %150 = icmp eq ptr %149, %24
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i64, ptr %25, align 8, !tbaa !91
  %153 = icmp ult i64 %152, 16
  call void @llvm.assume(i1 %153)
  br label %155

154:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %149) #19
  br label %155

155:                                              ; preds = %151, %154
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  %156 = load ptr, ptr %4, align 8, !tbaa !83
  %157 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !91
  %162 = icmp ult i64 %161, 16
  call void @llvm.assume(i1 %162)
  br label %164

163:                                              ; preds = %155
  call void @_ZdlPv(ptr noundef %156) #19
  br label %164

164:                                              ; preds = %159, %163
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %315

165:                                              ; preds = %60, %57
  switch i8 %53, label %303 [
    i8 40, label %166
    i8 41, label %234
    i8 59, label %239
  ], !prof !148

166:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  %167 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %168 = load i8, ptr %8, align 1, !tbaa !92
  %169 = icmp eq i8 %168, 59
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %172

172:                                              ; preds = %170, %166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %173 = call noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #21
  invoke void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512) %173)
          to label %174 unwind label %202

174:                                              ; preds = %172
  store ptr %173, ptr %9, align 8, !tbaa !149
  invoke void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %10, ptr noundef nonnull align 8 dereferenceable(8512) %173)
          to label %175 unwind label %204

175:                                              ; preds = %174
  %176 = invoke noundef ptr @_ZN7SGFTree9add_childES_(ptr noundef nonnull align 8 dereferenceable(8512) %43, ptr noundef nonnull %10)
          to label %177 unwind label %206

177:                                              ; preds = %175
  %178 = getelementptr inbounds %class.SGFTree, ptr %10, i64 0, i32 2
  %179 = getelementptr inbounds %class.SGFTree, ptr %10, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %178, ptr noundef %180)
          to label %184 unwind label %181

181:                                              ; preds = %177
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #22
  unreachable

184:                                              ; preds = %177
  %185 = getelementptr inbounds %class.SGFTree, ptr %10, i64 0, i32 1
  %186 = getelementptr inbounds %class.KoState, ptr %10, i64 0, i32 2
  call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %185) #17
  %187 = load ptr, ptr %186, align 8, !tbaa !155
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  call void @_ZdlPv(ptr noundef %187) #19
  br label %190

190:                                              ; preds = %189, %184
  %191 = getelementptr inbounds %class.KoState, ptr %10, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !155
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @_ZdlPv(ptr noundef %192) #19
  br label %195

195:                                              ; preds = %194, %190
  %196 = getelementptr inbounds %class.FastBoard, ptr %10, i64 0, i32 16
  %197 = load ptr, ptr %196, align 8, !tbaa !157
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  call void @_ZdlPv(ptr noundef %197) #19
  br label %200

200:                                              ; preds = %195, %199
  invoke void @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %176)
          to label %201 unwind label %204

201:                                              ; preds = %200
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  br label %303

202:                                              ; preds = %172
  %203 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %173) #19
  br label %232

204:                                              ; preds = %200, %174
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %230

206:                                              ; preds = %175
  %207 = landingpad { ptr, i32 }
          cleanup
  %208 = getelementptr inbounds %class.SGFTree, ptr %10, i64 0, i32 2
  %209 = getelementptr inbounds %class.SGFTree, ptr %10, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %208, ptr noundef %210)
          to label %214 unwind label %211

211:                                              ; preds = %206
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #22
  unreachable

214:                                              ; preds = %206
  %215 = getelementptr inbounds %class.SGFTree, ptr %10, i64 0, i32 1
  call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %215) #17
  %216 = getelementptr inbounds %class.KoState, ptr %10, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !155
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %214
  call void @_ZdlPv(ptr noundef %217) #19
  br label %220

220:                                              ; preds = %219, %214
  %221 = getelementptr inbounds %class.KoState, ptr %10, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !155
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  call void @_ZdlPv(ptr noundef %222) #19
  br label %225

225:                                              ; preds = %224, %220
  %226 = getelementptr inbounds %class.FastBoard, ptr %10, i64 0, i32 16
  %227 = load ptr, ptr %226, align 8, !tbaa !157
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call void @_ZdlPv(ptr noundef %227) #19
  br label %230

230:                                              ; preds = %229, %225, %204
  %231 = phi { ptr, i32 } [ %205, %204 ], [ %207, %225 ], [ %207, %229 ]
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  br label %232

232:                                              ; preds = %230, %202
  %233 = phi { ptr, i32 } [ %231, %230 ], [ %203, %202 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  br label %315

234:                                              ; preds = %165
  %235 = and i8 %41, 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %303

237:                                              ; preds = %234
  %238 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %314

239:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  %240 = call noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #21
  invoke void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512) %240)
          to label %241 unwind label %271, !prof !159

241:                                              ; preds = %239
  store ptr %240, ptr %11, align 8, !tbaa !149
  invoke void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %12, ptr noundef nonnull align 8 dereferenceable(8512) %240)
          to label %242 unwind label %273, !prof !159

242:                                              ; preds = %241
  %243 = invoke noundef ptr @_ZN7SGFTree9add_childES_(ptr noundef nonnull align 8 dereferenceable(8512) %43, ptr noundef nonnull %12)
          to label %244 unwind label %275, !prof !159

244:                                              ; preds = %242
  %245 = load ptr, ptr %34, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef %245)
          to label %249 unwind label %246, !prof !159

246:                                              ; preds = %244
  %247 = landingpad { ptr, i32 }
          catch ptr null
  %248 = extractvalue { ptr, i32 } %247, 0
  call void @__clang_call_terminate(ptr %248) #22
  unreachable

249:                                              ; preds = %244
  call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %35) #17
  %250 = load ptr, ptr %36, align 8, !tbaa !155
  %251 = icmp eq ptr %250, null
  br i1 %251, label %253, label %252, !prof !159

252:                                              ; preds = %249
  call void @_ZdlPv(ptr noundef %250) #19
  br label %253

253:                                              ; preds = %252, %249
  %254 = load ptr, ptr %37, align 8, !tbaa !155
  %255 = icmp eq ptr %254, null
  br i1 %255, label %257, label %256, !prof !159

256:                                              ; preds = %253
  call void @_ZdlPv(ptr noundef %254) #19
  br label %257

257:                                              ; preds = %256, %253
  %258 = load ptr, ptr %38, align 8, !tbaa !157
  %259 = icmp eq ptr %258, null
  br i1 %259, label %261, label %260, !prof !159

260:                                              ; preds = %257
  call void @_ZdlPv(ptr noundef %258) #19
  br label %261

261:                                              ; preds = %257, %260
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  %262 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %263 = load ptr, ptr %262, align 8, !tbaa !93
  %264 = getelementptr i8, ptr %263, i64 -24
  %265 = load i64, ptr %264, align 8
  %266 = getelementptr inbounds i8, ptr %262, i64 %265
  %267 = getelementptr inbounds %"class.std::ios_base", ptr %266, i64 0, i32 5
  %268 = load i32, ptr %267, align 8, !tbaa !95
  %269 = and i32 %268, 5
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %42, label %314, !prof !160

271:                                              ; preds = %239
  %272 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %240) #19
  br label %301

273:                                              ; preds = %241
  %274 = landingpad { ptr, i32 }
          cleanup
  br label %299

275:                                              ; preds = %242
  %276 = landingpad { ptr, i32 }
          cleanup
  %277 = getelementptr inbounds %class.SGFTree, ptr %12, i64 0, i32 2
  %278 = getelementptr inbounds %class.SGFTree, ptr %12, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %277, ptr noundef %279)
          to label %283 unwind label %280

280:                                              ; preds = %275
  %281 = landingpad { ptr, i32 }
          catch ptr null
  %282 = extractvalue { ptr, i32 } %281, 0
  call void @__clang_call_terminate(ptr %282) #22
  unreachable

283:                                              ; preds = %275
  %284 = getelementptr inbounds %class.SGFTree, ptr %12, i64 0, i32 1
  call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %284) #17
  %285 = getelementptr inbounds %class.KoState, ptr %12, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !155
  %287 = icmp eq ptr %286, null
  br i1 %287, label %289, label %288

288:                                              ; preds = %283
  call void @_ZdlPv(ptr noundef %286) #19
  br label %289

289:                                              ; preds = %288, %283
  %290 = getelementptr inbounds %class.KoState, ptr %12, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !155
  %292 = icmp eq ptr %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  call void @_ZdlPv(ptr noundef %291) #19
  br label %294

294:                                              ; preds = %293, %289
  %295 = getelementptr inbounds %class.FastBoard, ptr %12, i64 0, i32 16
  %296 = load ptr, ptr %295, align 8, !tbaa !157
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  call void @_ZdlPv(ptr noundef %296) #19
  br label %299

299:                                              ; preds = %298, %294, %273
  %300 = phi { ptr, i32 } [ %274, %273 ], [ %276, %294 ], [ %276, %298 ]
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  br label %301

301:                                              ; preds = %299, %271
  %302 = phi { ptr, i32 } [ %300, %299 ], [ %272, %271 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  br label %315

303:                                              ; preds = %165, %201, %234
  %304 = phi i8 [ 0, %234 ], [ 1, %201 ], [ %41, %165 ]
  %305 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %306 = load ptr, ptr %305, align 8, !tbaa !93
  %307 = getelementptr i8, ptr %306, i64 -24
  %308 = load i64, ptr %307, align 8
  %309 = getelementptr inbounds i8, ptr %305, i64 %308
  %310 = getelementptr inbounds %"class.std::ios_base", ptr %309, i64 0, i32 5
  %311 = load i32, ptr %310, align 8, !tbaa !95
  %312 = and i32 %311, 5
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %39, label %314, !prof !161, !llvm.loop !147

314:                                              ; preds = %303, %261, %44, %137, %2, %237
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  ret void

315:                                              ; preds = %301, %232, %164
  %316 = phi { ptr, i32 } [ %148, %164 ], [ %233, %232 ], [ %302, %301 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  resume { ptr, i32 } %316
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #7

declare void @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8512), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN7SGFTree9add_childES_(ptr noundef nonnull align 8 dereferenceable(8512), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !163
  store i32 %7, ptr %5, align 8, !tbaa !163
  %8 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %10 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %10, ptr noundef nonnull align 8 dereferenceable(316) %11, i64 316, i1 false)
  %12 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %14 unwind label %17, !prof !174

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %33 unwind label %19, !prof !174

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %24

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %12, align 8, !tbaa !155
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %21) #19
  br label %24

24:                                               ; preds = %23, %19, %17
  %25 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ], [ %20, %23 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !157
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %64
  %29 = phi ptr [ %65, %64 ], [ %26, %24 ]
  %30 = phi { ptr, i32 } [ %56, %64 ], [ %25, %24 ]
  tail call void @_ZdlPv(ptr noundef %29) #19
  br label %31

31:                                               ; preds = %28, %64, %24
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %56, %64 ], [ %30, %28 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  %34 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %36 unwind label %51, !prof !174

36:                                               ; preds = %33
  %37 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  store i32 0, ptr %37, align 8, !tbaa !175
  %38 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %38, align 8, !tbaa !151
  %39 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !176
  %40 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %37, ptr %40, align 8, !tbaa !177
  %41 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %41, align 8, !tbaa !178
  %42 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !151
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !174

45:                                               ; preds = %36
  %46 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2
  %47 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %48 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(48) %46)
          to label %49 unwind label %53

49:                                               ; preds = %45
  store ptr %48, ptr %38, align 8, !tbaa !179
  br label %50

50:                                               ; preds = %49, %36
  ret void

51:                                               ; preds = %33
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %55

53:                                               ; preds = %45
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %34) #17
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  %57 = load ptr, ptr %15, align 8, !tbaa !155
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @_ZdlPv(ptr noundef %57) #19
  br label %60

60:                                               ; preds = %59, %55
  %61 = load ptr, ptr %12, align 8, !tbaa !155
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @_ZdlPv(ptr noundef %61) #19
  br label %64

64:                                               ; preds = %63, %60
  %65 = load ptr, ptr %3, align 8, !tbaa !157
  %66 = icmp eq ptr %65, null
  br i1 %66, label %31, label %28
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %7)
          to label %11 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #22
  unreachable

11:                                               ; preds = %4
  %12 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  %13 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %14) #19
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !155
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #19
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !157
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #19
  br label %27

27:                                               ; preds = %22, %26
  tail call void @_ZdlPv(ptr noundef %2) #19
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN9SGFParser19count_games_in_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nocapture noundef readonly %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %2 = alloca %"class.std::basic_ifstream", align 8
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %2) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef %4, i32 noundef 12)
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 %7
  %9 = getelementptr inbounds %"class.std::ios_base", ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !95
  %11 = and i32 %10, 5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call ptr @__cxa_allocate_exception(i64 8) #17
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %14, align 8, !tbaa !93
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #18
          to label %88 unwind label %15

15:                                               ; preds = %13
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %86

17:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  br label %18

18:                                               ; preds = %55, %17
  %19 = phi i32 [ %59, %55 ], [ 0, %17 ]
  %20 = phi i32 [ %56, %55 ], [ 0, %17 ]
  br label %21

21:                                               ; preds = %18, %53
  %22 = phi i32 [ %20, %18 ], [ %54, %53 ]
  br label %23

23:                                               ; preds = %21, %52
  br label %24

24:                                               ; preds = %23, %43
  %25 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %26 unwind label %46

26:                                               ; preds = %24
  %27 = load ptr, ptr %25, align 8, !tbaa !93
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %25, i64 %29
  %31 = getelementptr inbounds %"class.std::ios_base", ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !95
  %33 = and i32 %32, 5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %26
  %36 = load i8, ptr %3, align 1, !tbaa !92
  %37 = icmp slt i8 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35, %40
  %39 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %40 unwind label %44

40:                                               ; preds = %38
  %41 = load i8, ptr %3, align 1, !tbaa !92
  %42 = icmp slt i8 %41, 0
  br i1 %42, label %38, label %43, !llvm.loop !181

43:                                               ; preds = %40
  br label %24, !llvm.loop !182

44:                                               ; preds = %38
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %50

46:                                               ; preds = %24
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %50

48:                                               ; preds = %65, %60
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %50

50:                                               ; preds = %46, %48, %44
  %51 = phi { ptr, i32 } [ %45, %44 ], [ %47, %46 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  br label %86

52:                                               ; preds = %35
  switch i8 %36, label %23 [
    i8 40, label %53
    i8 41, label %55
  ], !llvm.loop !182

53:                                               ; preds = %52
  %54 = add nsw i32 %22, 1
  br label %21, !llvm.loop !182

55:                                               ; preds = %52
  %56 = add nsw i32 %22, -1
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %19, %58
  br label %18, !llvm.loop !182

60:                                               ; preds = %26
  %61 = getelementptr inbounds %"class.std::basic_ifstream", ptr %2, i64 0, i32 1
  %62 = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %61)
          to label %63 unwind label %48

63:                                               ; preds = %60
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = load ptr, ptr %2, align 8, !tbaa !93
  %67 = getelementptr i8, ptr %66, i64 -24
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds i8, ptr %2, i64 %68
  %70 = getelementptr inbounds %"class.std::ios_base", ptr %69, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !95
  %72 = or i32 %71, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %69, i32 noundef %72)
          to label %73 unwind label %48

73:                                               ; preds = %63, %65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %74 = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8
  store ptr %74, ptr %2, align 8, !tbaa !93
  %75 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 3), align 8
  %76 = getelementptr i8, ptr %74, i64 -24
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds i8, ptr %2, i64 %77
  store ptr %75, ptr %78, align 8, !tbaa !93
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %61) #17
  %79 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  store ptr %79, ptr %2, align 8, !tbaa !93
  %80 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %81 = getelementptr i8, ptr %79, i64 -24
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds i8, ptr %2, i64 %82
  store ptr %80, ptr %83, align 8, !tbaa !93
  %84 = getelementptr inbounds %"class.std::basic_istream", ptr %2, i64 0, i32 1
  store i64 0, ptr %84, align 8, !tbaa !120
  %85 = getelementptr inbounds i8, ptr %2, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %85) #17
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %2) #17
  ret i32 %19

86:                                               ; preds = %50, %15
  %87 = phi { ptr, i32 } [ %16, %15 ], [ %51, %50 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #17
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %2) #17
  resume { ptr, i32 } %87

88:                                               ; preds = %13
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = load ptr, ptr %1, align 8, !tbaa !185
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8512
  %10 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !174

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !185
  store ptr %16, ptr %10, align 8, !tbaa !183
  %17 = getelementptr inbounds %class.SGFTree, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !186
  %18 = load ptr, ptr %1, align 8, !tbaa !179
  %19 = load ptr, ptr %3, align 8, !tbaa !179
  %20 = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %18, ptr %19, ptr noundef %16)
          to label %21 unwind label %22, !prof !174

21:                                               ; preds = %15
  store ptr %20, ptr %10, align 8, !tbaa !183
  ret void

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %0, align 8, !tbaa !185
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #19
  br label %27

27:                                               ; preds = %26, %22
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %33, label %6, !prof !188

6:                                                ; preds = %1, %30
  %7 = phi ptr [ %31, %30 ], [ %2, %1 ]
  %8 = getelementptr inbounds %class.SGFTree, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %class.SGFTree, ptr %7, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %10)
          to label %14 unwind label %11

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #22
  unreachable

14:                                               ; preds = %6
  %15 = getelementptr inbounds %class.SGFTree, ptr %7, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #17
  %16 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %17) #19
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !155
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef %22) #19
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !157
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %27) #19
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %class.SGFTree, ptr %7, i64 1
  %32 = icmp eq ptr %31, %4
  br i1 %32, label %33, label %6, !prof !188, !llvm.loop !189

33:                                               ; preds = %30, %1
  %34 = load ptr, ptr %0, align 8, !tbaa !185
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !159

36:                                               ; preds = %33
  tail call void @_ZdlPv(ptr noundef %34) #19
  br label %37

37:                                               ; preds = %33, %36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !190 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = load ptr, ptr %1, align 8, !tbaa !155
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %21, label %13, !prof !192

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, 1152921504606846975
  br i1 %14, label %15, label %19, !prof !193

15:                                               ; preds = %13
  %16 = icmp ugt i64 %9, 2305843009213693951
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

18:                                               ; preds = %15
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

19:                                               ; preds = %13
  %20 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #21
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ]
  store ptr %22, ptr %0, align 8, !tbaa !155
  store ptr %22, ptr %10, align 8, !tbaa !191
  %23 = getelementptr inbounds i64, ptr %22, i64 %9
  store ptr %23, ptr %11, align 8, !tbaa !194
  %24 = load ptr, ptr %1, align 8, !tbaa !179
  %25 = load ptr, ptr %3, align 8, !tbaa !179
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %24 to i64
  %28 = sub i64 %26, %27
  %29 = icmp eq ptr %25, %24
  br i1 %29, label %31, label %30, !prof !192

30:                                               ; preds = %21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %28, i1 false), !prof !195
  br label %31

31:                                               ; preds = %21, %30
  %32 = getelementptr inbounds i8, ptr %22, i64 %28
  store ptr %32, ptr %10, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = load ptr, ptr %1, align 8, !tbaa !157
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !198

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !157
  store ptr %16, ptr %10, align 8, !tbaa !197
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !199
  %18 = load ptr, ptr %1, align 8, !tbaa !179
  %19 = load ptr, ptr %3, align 8, !tbaa !179
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24, !prof !198

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !200 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !201

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !180 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !187 {
  %4 = icmp ugt i64 %1, 1083572842675608
  br i1 %4, label %5, label %9, !prof !202

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2167145685351216
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 8512
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !162 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %45, label %5, !prof !188

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %6, ptr noundef nonnull align 8 dereferenceable(8512) %7)
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.SGFTree, ptr %7, i64 1
  %10 = getelementptr inbounds %class.SGFTree, ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %45, label %5, !prof !188, !llvm.loop !203

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #17
  %16 = icmp eq ptr %6, %2
  br i1 %16, label %44, label %17

17:                                               ; preds = %12, %41
  %18 = phi ptr [ %42, %41 ], [ %2, %12 ]
  %19 = getelementptr inbounds %class.SGFTree, ptr %18, i64 0, i32 2
  %20 = getelementptr inbounds %class.SGFTree, ptr %18, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !151
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %21)
          to label %25 unwind label %22

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #22
  unreachable

25:                                               ; preds = %17
  %26 = getelementptr inbounds %class.SGFTree, ptr %18, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %26) #17
  %27 = getelementptr inbounds %class.KoState, ptr %18, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %28) #19
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %class.KoState, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !155
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %33) #19
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %class.FastBoard, ptr %18, i64 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !157
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @_ZdlPv(ptr noundef %38) #19
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %class.SGFTree, ptr %18, i64 1
  %43 = icmp eq ptr %42, %6
  br i1 %43, label %44, label %17, !llvm.loop !189

44:                                               ; preds = %41, %12
  invoke void @__cxa_rethrow() #18
          to label %53 unwind label %47

45:                                               ; preds = %8, %3
  %46 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %46

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %49 unwind label %50

49:                                               ; preds = %47
  resume { ptr, i32 } %48

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #22
  unreachable

53:                                               ; preds = %44
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #5 comdat align 2 !prof !180 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr %0, ptr %3, align 8, !tbaa !179
  %4 = getelementptr inbounds i8, ptr %1, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %7, %2 ], [ %11, %8 ]
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !205

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %9, ptr %14, align 8, !tbaa !179
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %7, %13 ], [ %18, %15 ]
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !207

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %16, ptr %21, align 8, !tbaa !179
  %22 = getelementptr inbounds i8, ptr %1, i64 40
  %23 = load i64, ptr %22, align 8, !tbaa !178
  %24 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 %23, ptr %24, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %3, align 8, !tbaa !208
  %7 = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(64) %5)
  %8 = load i32, ptr %1, align 8, !tbaa !210
  store i32 %8, ptr %7, align 8, !tbaa !210
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %2, ptr %11, align 8, !tbaa !211
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !206
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %18

17:                                               ; preds = %15
  store ptr %16, ptr %10, align 8, !tbaa !206
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

20:                                               ; preds = %17, %4
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %20, %50
  %25 = phi ptr [ %52, %50 ], [ %22, %20 ]
  %26 = phi ptr [ %28, %50 ], [ %7, %20 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !208
  %28 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %29 unwind label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %25, i64 0, i32 1
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(64) %30)
          to label %31 unwind label %43

31:                                               ; preds = %29
  %32 = load i32, ptr %25, align 8, !tbaa !210
  store i32 %32, ptr %28, align 8, !tbaa !210
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %28, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %28, i64 0, i32 3
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %26, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  store ptr %28, ptr %35, align 8, !tbaa !204
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %28, i64 0, i32 1
  store ptr %26, ptr %36, align 8, !tbaa !211
  %37 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %25, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !206
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %38, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %42 unwind label %43

42:                                               ; preds = %40
  store ptr %41, ptr %34, align 8, !tbaa !206
  br label %50

43:                                               ; preds = %29, %24, %40
  %44 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

45:                                               ; preds = %43, %18
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %19, %18 ]
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = tail call ptr @__cxa_begin_catch(ptr %47) #17
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %7)
          to label %49 unwind label %54

49:                                               ; preds = %45
  invoke void @__cxa_rethrow() #18
          to label %61 unwind label %54

50:                                               ; preds = %42, %31
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %25, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !204
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %24, !llvm.loop !212

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
  tail call void @__clang_call_terminate(ptr %60) #22
  unreachable

61:                                               ; preds = %49
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !213 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !214

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !125, !llvm.loop !215

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %11 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = tail call ptr @__cxa_begin_catch(ptr %7) #17
  tail call void @_ZdlPv(ptr noundef %1) #19
  invoke void @__cxa_rethrow() #18
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
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable

16:                                               ; preds = %5
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !90
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::pair.26", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::pair.26", ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::pair.26", ptr %0, i64 0, i32 1, i32 2
  store ptr %10, ptr %8, align 8, !tbaa !90
  %11 = load ptr, ptr %9, align 8, !tbaa !83
  %12 = getelementptr inbounds %"struct.std::pair.26", ptr %1, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %11, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %2
  ret void

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %0, align 8, !tbaa !83
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !91
  %23 = icmp ult i64 %22, 16
  tail call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %18) #19
  br label %25

25:                                               ; preds = %20, %24
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12, !prof !144

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %10 = load i64, ptr %9, align 8, !tbaa !91
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #19
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21, !prof !125

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !91
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %14) #19
  br label %22

22:                                               ; preds = %17, %21
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !216 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !217
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !218

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !83
  %11 = load i64, ptr %4, align 8, !tbaa !217
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !83
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !219

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !92
  store i8 %16, ptr %14, align 1, !tbaa !92
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !220
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !217
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !91
  %21 = load ptr, ptr %0, align 8, !tbaa !83
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_SGFParser.cpp() #14 section ".text.startup" !prof !221 !PGOFuncName !222 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!81}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!35 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode, i64 11}
!36 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_, i64 24999}
!37 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc, i64 4769}
!38 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_, i64 10}
!39 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv, i64 11}
!40 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZdlPv, i64 10}
!41 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev, i64 11}
!42 = !{ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt8ios_baseD2Ev, i64 11}
!43 = !{ptr @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_, i64 1379}
!44 = !{ptr @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, ptr @isupper, i64 1379}
!45 = !{ptr @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZNSi5ungetEv, i64 606}
!46 = !{ptr @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc, i64 773}
!47 = !{ptr @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE, ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_, i64 5338}
!48 = !{ptr @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE, ptr @isspace, i64 1381}
!49 = !{ptr @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE, ptr @_ZNSi5ungetEv, i64 1808}
!50 = !{ptr @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc, i64 2129}
!51 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_, i64 1227}
!52 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @isspace, i64 1217}
!53 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @isalpha, i64 1217}
!54 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @isupper, i64 707}
!55 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZNSi5ungetEv, i64 707}
!56 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZN9SGFParser19parse_property_nameERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 707}
!57 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZN9SGFParser20parse_property_valueERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEERNS0_12basic_stringIcS3_S4_EE, i64 1415}
!58 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 1414}
!59 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, i64 707}
!60 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZdlPv, i64 26}
!61 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_Znwm, i64 510}
!62 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZN7SGFTreeC1Ev, i64 510}
!63 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZN7SGFTreeC2ERKS_, i64 510}
!64 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZN7SGFTree9add_childES_, i64 510}
!65 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 510}
!66 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, i64 510}
!67 = !{ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, i64 510}
!68 = !{ptr @_ZN7SGFTreeC2ERKS_, ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, i64 874}
!69 = !{ptr @_ZN7SGFTreeC2ERKS_, ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, i64 1748}
!70 = !{ptr @_ZN7SGFTreeC2ERKS_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, i64 874}
!71 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 874}
!72 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_Znwm, i64 15448222}
!73 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!74 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv, ptr @_Znwm, i64 437}
!75 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 606}
!76 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!77 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZdlPv, i64 617}
!78 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 32}
!79 = !{ptr @_GLOBAL__sub_I_SGFParser.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!80 = !{ptr @_GLOBAL__sub_I_SGFParser.cpp, ptr @__cxa_atexit, i64 1}
!81 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!82 = !{!"function_entry_count", i64 11}
!83 = !{!84, !86, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !85, i64 0, !89, i64 8, !87, i64 16}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !86, i64 0}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C++ TBAA"}
!89 = !{!"long", !87, i64 0}
!90 = !{!85, !86, i64 0}
!91 = !{!84, !89, i64 8}
!92 = !{!87, !87, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"vtable pointer", !88, i64 0}
!95 = !{!96, !98, i64 32}
!96 = !{!"_ZTSSt8ios_base", !89, i64 8, !89, i64 16, !97, i64 24, !98, i64 28, !98, i64 32, !86, i64 40, !99, i64 48, !87, i64 64, !100, i64 192, !86, i64 200, !101, i64 208}
!97 = !{!"_ZTSSt13_Ios_Fmtflags", !87, i64 0}
!98 = !{!"_ZTSSt12_Ios_Iostate", !87, i64 0}
!99 = !{!"_ZTSNSt8ios_base6_WordsE", !86, i64 0, !89, i64 8}
!100 = !{!"int", !87, i64 0}
!101 = !{!"_ZTSSt6locale", !86, i64 0}
!102 = !{!"branch_weights", i32 11, i32 0}
!103 = !{!97, !97, i64 0}
!104 = !{!"branch_weights", i32 24934, i32 0}
!105 = !{!"branch_weights", i32 24933, i32 1}
!106 = !{!"branch_weights", i32 24923, i32 11}
!107 = !{!"branch_weights", i32 4769, i32 20154}
!108 = !{!"branch_weights", i32 4769, i32 0}
!109 = !{!"branch_weights", i32 24725, i32 99, i32 99}
!110 = distinct !{!110, !111, !112}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = !{!"branch_weights", i32 65, i32 34}
!114 = !{!"branch_weights", i32 65, i32 0}
!115 = !{!"branch_weights", i32 10, i32 55}
!116 = !{!"branch_weights", i32 10, i32 0}
!117 = !{!"branch_weights", i32 0, i32 10}
!118 = !{!"branch_weights", i32 0, i32 11}
!119 = !{!"branch_weights", i32 1, i32 10}
!120 = !{!121, !89, i64 8}
!121 = !{!"_ZTSSi", !89, i64 8}
!122 = !{!"function_entry_count", i64 606}
!123 = !{!"branch_weights", i32 1379, i32 0}
!124 = !{!"branch_weights", i32 606, i32 773}
!125 = !{!"branch_weights", i32 606, i32 0}
!126 = !{!"branch_weights", i32 773, i32 0}
!127 = distinct !{!127, !111, !112}
!128 = !{!"function_entry_count", i64 1212}
!129 = !{!"branch_weights", i32 1381, i32 10}
!130 = !{!"branch_weights", i32 1202, i32 179}
!131 = distinct !{!131, !111, !112}
!132 = !{!"branch_weights", i32 606, i32 606}
!133 = !{!"branch_weights", i32 2735, i32 0}
!134 = !{!"branch_weights", i32 605, i32 1}
!135 = !{!"branch_weights", i32 0, i32 2129}
!136 = !{!"branch_weights", i32 1524, i32 605}
!137 = distinct !{!137, !111, !112}
!138 = !{!"function_entry_count", i64 10}
!139 = !{!"branch_weights", i32 127, i32 1}
!140 = !{!"branch_weights", i32 1043, i32 0}
!141 = !{!"branch_weights", i32 437, i32 606}
!142 = !{!"branch_weights", i32 0, i32 606}
!143 = !{!"branch_weights", i32 1212, i32 0}
!144 = !{!"branch_weights", i32 595, i32 11}
!145 = distinct !{!145, !111, !112}
!146 = !{!"branch_weights", i32 16529, i32 159}
!147 = distinct !{!147, !111, !112}
!148 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 437}
!149 = !{!150, !86, i64 0}
!150 = !{!"_ZTSSt8auto_ptrI7SGFTreeE", !86, i64 0}
!151 = !{!152, !86, i64 8}
!152 = !{!"_ZTSSt15_Rb_tree_header", !153, i64 0, !89, i64 32}
!153 = !{!"_ZTSSt18_Rb_tree_node_base", !154, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!154 = !{!"_ZTSSt14_Rb_tree_color", !87, i64 0}
!155 = !{!156, !86, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!157 = !{!158, !86, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!159 = !{!"branch_weights", i32 437, i32 0}
!160 = !{!"branch_weights", i32 20225, i32 127}
!161 = !{!"branch_weights", i32 16129, i32 127}
!162 = !{!"function_entry_count", i64 874}
!163 = !{!164, !100, i64 8048}
!164 = !{!"_ZTS9FastBoard", !165, i64 0, !165, i64 882, !100, i64 1764, !100, i64 1768, !100, i64 1772, !166, i64 1776, !167, i64 3540, !167, i64 4424, !167, i64 5308, !167, i64 6192, !165, i64 7076, !168, i64 7960, !169, i64 7976, !170, i64 8008, !170, i64 8016, !171, i64 8024, !100, i64 8048}
!165 = !{!"_ZTSN5boost5arrayItLm441EEE", !87, i64 0}
!166 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !87, i64 0}
!167 = !{!"_ZTSN5boost5arrayItLm442EEE", !87, i64 0}
!168 = !{!"_ZTSN5boost5arrayIiLm4EEE", !87, i64 0}
!169 = !{!"_ZTSN5boost5arrayIiLm8EEE", !87, i64 0}
!170 = !{!"_ZTSN5boost5arrayIiLm2EEE", !87, i64 0}
!171 = !{!"_ZTSSt6vectorIiSaIiEE", !172, i64 0}
!172 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !173, i64 0}
!173 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !158, i64 0}
!174 = !{!"branch_weights", i32 874, i32 0}
!175 = !{!152, !154, i64 0}
!176 = !{!152, !86, i64 16}
!177 = !{!152, !86, i64 24}
!178 = !{!152, !89, i64 32}
!179 = !{!86, !86, i64 0}
!180 = !{!"function_entry_count", i64 0}
!181 = distinct !{!181, !111, !112}
!182 = distinct !{!182, !111, !112}
!183 = !{!184, !86, i64 8}
!184 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!185 = !{!184, !86, i64 0}
!186 = !{!184, !86, i64 16}
!187 = !{!"function_entry_count", i64 437}
!188 = !{!"branch_weights", i32 1, i32 0}
!189 = distinct !{!189, !111, !112}
!190 = !{!"function_entry_count", i64 15449970}
!191 = !{!156, !86, i64 8}
!192 = !{!"branch_weights", i32 1748, i32 15448222}
!193 = !{!"branch_weights", i32 0, i32 27873636}
!194 = !{!156, !86, i64 16}
!195 = !{!"VP", i32 1, i64 15448222, i64 513, i64 7965526, i64 257, i64 3934196, i64 129, i64 2151218, i64 65, i64 812660}
!196 = !{!"function_entry_count", i64 7788864}
!197 = !{!158, !86, i64 8}
!198 = !{!"branch_weights", i32 7788864, i32 0}
!199 = !{!158, !86, i64 16}
!200 = !{!"function_entry_count", i64 10252442}
!201 = !{!"branch_weights", i32 0, i32 10252442}
!202 = !{!"branch_weights", i32 0, i32 437}
!203 = distinct !{!203, !111, !112}
!204 = !{!153, !86, i64 16}
!205 = distinct !{!205, !111, !112}
!206 = !{!153, !86, i64 24}
!207 = distinct !{!207, !111, !112}
!208 = !{!209, !86, i64 0}
!209 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeE", !86, i64 0}
!210 = !{!153, !154, i64 0}
!211 = !{!153, !86, i64 8}
!212 = distinct !{!212, !111, !112}
!213 = !{!"function_entry_count", i64 1928}
!214 = !{!"branch_weights", i32 1322, i32 606}
!215 = distinct !{!215, !111, !112}
!216 = !{!"function_entry_count", i64 37847}
!217 = !{!89, !89, i64 0}
!218 = !{!"branch_weights", i32 32, i32 37815}
!219 = !{!"branch_weights", i32 36919, i32 928, i32 0}
!220 = !{!"VP", i32 1, i64 36919, i64 2, i64 29486, i64 3, i64 5287, i64 4, i64 1900, i64 8, i64 106}
!221 = !{!"function_entry_count", i64 1}
!222 = !{!"SGFParser.cpp;_GLOBAL__sub_I_SGFParser.cpp"}
