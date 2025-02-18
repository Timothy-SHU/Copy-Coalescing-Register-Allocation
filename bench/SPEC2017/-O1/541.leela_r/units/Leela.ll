; ModuleID = 'Leela.cpp'
source_filename = "Leela.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::auto_ptr.0" = type { ptr }
%"class.std::auto_ptr.23" = type { ptr }
%class.GameState = type <{ %class.KoState, %"class.std::vector.16", %class.TimeControl, [4 x i8] }>
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
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.5", %"class.boost::array.21", %"class.boost::array.22" }
%"class.boost::array.21" = type { [2 x i8] }
%"class.boost::array.22" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32, [4 x i8] }>
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.9", %"class.boost::array.10", [4 x i8] }>
%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }
%class.SGFTree = type { %class.KoState, %"class.std::vector.24", %"class.std::multimap" }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }

$_ZNSt8auto_ptrI7SGFTreeED2Ev = comdat any

$_ZNSt8auto_ptrI9GameStateED2Ev = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZSt8_DestroyI7SGFTreeEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [19 x i8] c"No file specifided\00", align 1
@_ZSt3cin = external local_unnamed_addr global %"class.std::basic_istream", align 8
@_ZSt4cerr = external local_unnamed_addr global %"class.std::basic_ostream", align 8
@_ZTISt9exception = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Leela.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::auto_ptr.0", align 8
  %6 = alloca %"class.std::auto_ptr.23", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %class.GameState, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %9, ptr %3, align 8, !tbaa !78
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !83
  store i8 0, ptr %9, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %11, ptr %4, align 8, !tbaa !78
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 0, ptr %12, align 8, !tbaa !83
  store i8 0, ptr %11, align 8, !tbaa !86
  %13 = icmp slt i32 %0, 2
  br i1 %13, label %14, label %30, !prof !87

14:                                               ; preds = %2
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 18)
          to label %16 unwind label %26

16:                                               ; preds = %14
  %17 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !88
  %18 = getelementptr i8, ptr %17, i64 -24
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %19
  %21 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %20, i8 noundef signext 10)
          to label %22 unwind label %26

22:                                               ; preds = %16
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %21)
          to label %24 unwind label %26

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %280 unwind label %26

26:                                               ; preds = %24, %22, %16, %30, %14
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  br label %296

30:                                               ; preds = %2
  %31 = getelementptr inbounds ptr, ptr %1, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #19
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %32, i64 noundef %33)
          to label %35 unwind label %26, !prof !91

35:                                               ; preds = %30
  %36 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !88
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !92
  %42 = or i32 %41, 8192
  store i32 %42, ptr %40, align 4, !tbaa !92
  %43 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !88
  %44 = getelementptr i8, ptr %43, i64 -24
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %45
  %47 = getelementptr inbounds %"class.std::ios_base", ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !92
  %49 = or i32 %48, 8192
  store i32 %49, ptr %47, align 4, !tbaa !92
  %50 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !88
  %51 = getelementptr i8, ptr %50, i64 -24
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %52
  %54 = getelementptr inbounds %"class.std::ios_base", ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !92
  %56 = or i32 %55, 8192
  store i32 %56, ptr %54, align 4, !tbaa !92
  %57 = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #20
          to label %58 unwind label %211, !prof !91

58:                                               ; preds = %35
  invoke void @_ZN6RandomC1Ei(ptr noundef nonnull align 4 dereferenceable(12) %57, i32 noundef 5489)
          to label %59 unwind label %215, !prof !91

59:                                               ; preds = %58
  invoke void @_ZN7Zobrist12init_zobristER6Random(ptr noundef nonnull align 4 dereferenceable(12) %57)
          to label %60 unwind label %219, !prof !91

60:                                               ; preds = %59
  %61 = invoke noundef ptr @_ZN7Matcher11get_MatcherEv()
          to label %62 unwind label %219, !prof !91

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %63 = invoke noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #20
          to label %64 unwind label %223, !prof !91

64:                                               ; preds = %62
  %65 = getelementptr inbounds %class.FastBoard, ptr %63, i64 0, i32 16
  %66 = getelementptr inbounds %class.FastState, ptr %63, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %66, i8 0, i64 192, i1 false), !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  %67 = getelementptr inbounds %class.KoState, ptr %63, i64 0, i32 1
  %68 = getelementptr inbounds %class.GameState, ptr %63, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %67, i8 0, i64 72, i1 false)
  invoke void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %68, i32 noundef 9, i32 noundef 30000, i32 noundef 0, i32 noundef 25)
          to label %84 unwind label %69, !prof !91

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  %71 = getelementptr inbounds %class.GameState, ptr %63, i64 0, i32 1
  %72 = getelementptr inbounds %class.KoState, ptr %63, i64 0, i32 2
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %71) #19
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  call void @_ZdlPv(ptr noundef %73) #21
  br label %76

76:                                               ; preds = %75, %69
  %77 = load ptr, ptr %67, align 8, !tbaa !96
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %77) #21
  br label %80

80:                                               ; preds = %79, %76
  %81 = load ptr, ptr %65, align 8, !tbaa !98
  %82 = icmp eq ptr %81, null
  br i1 %82, label %227, label %83

83:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %81) #21
  br label %227

84:                                               ; preds = %64
  store ptr %63, ptr %5, align 8, !tbaa !100
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %87 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 16
  %88 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %89 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %90 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 17
  %91 = getelementptr inbounds %class.FullBoard, ptr %8, i64 0, i32 1
  %92 = getelementptr inbounds %class.FastState, ptr %8, i64 0, i32 1
  %93 = getelementptr inbounds %class.FastState, ptr %8, i64 0, i32 9
  %94 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 1
  %95 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %96 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %97 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 2
  %98 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %99 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %100 = getelementptr inbounds %class.GameState, ptr %8, i64 0, i32 1
  %101 = getelementptr inbounds %class.GameState, ptr %8, i64 0, i32 2
  br label %102

102:                                              ; preds = %210, %84
  %103 = phi i32 [ 0, %84 ], [ %111, %210 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %104 = invoke noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #20
          to label %105 unwind label %230, !prof !102

105:                                              ; preds = %102
  invoke void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512) %104)
          to label %106 unwind label %232, !prof !102

106:                                              ; preds = %105
  store ptr %104, ptr %6, align 8, !tbaa !103
  store ptr %85, ptr %7, align 8, !tbaa !78
  %107 = load ptr, ptr %4, align 8, !tbaa !105
  %108 = load i64, ptr %12, align 8, !tbaa !83
  %109 = getelementptr inbounds i8, ptr %107, i64 %108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %107, ptr noundef %109)
          to label %110 unwind label %234, !prof !102

110:                                              ; preds = %106
  %111 = add nuw nsw i32 %103, 1
  invoke void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512) %104, ptr noundef nonnull %7, i32 noundef %103)
          to label %112 unwind label %236, !prof !106

112:                                              ; preds = %110
  %113 = load ptr, ptr %7, align 8, !tbaa !105
  %114 = icmp eq ptr %113, %85
  br i1 %114, label %115, label %118, !prof !107

115:                                              ; preds = %112
  %116 = load i64, ptr %86, align 8, !tbaa !83
  %117 = icmp ult i64 %116, 16
  call void @llvm.assume(i1 %117)
  br label %119

118:                                              ; preds = %112
  call void @_ZdlPv(ptr noundef %113) #21
  br label %119

119:                                              ; preds = %115, %118
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %8) #19
  %120 = load ptr, ptr %6, align 8, !tbaa !103
  invoke void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind nonnull writable sret(%class.GameState) align 8 %8, ptr noundef nonnull align 8 dereferenceable(8512) %120, i32 noundef 999)
          to label %121 unwind label %245, !prof !107

121:                                              ; preds = %119
  %122 = load ptr, ptr %5, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %122, ptr noundef nonnull align 8 dereferenceable(8024) %8, i64 8024, i1 false)
  %123 = getelementptr inbounds %class.FastBoard, ptr %122, i64 0, i32 16
  %124 = load ptr, ptr %123, align 8, !tbaa !98
  %125 = getelementptr inbounds %class.FastBoard, ptr %122, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !108
  %127 = getelementptr inbounds %class.FastBoard, ptr %122, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !109
  %129 = load ptr, ptr %87, align 8, !tbaa !98
  store ptr %129, ptr %123, align 8, !tbaa !98
  %130 = load ptr, ptr %88, align 8, !tbaa !108
  store ptr %130, ptr %125, align 8, !tbaa !108
  %131 = load ptr, ptr %89, align 8, !tbaa !109
  store ptr %131, ptr %127, align 8, !tbaa !109
  store ptr %124, ptr %87, align 8, !tbaa !98
  store ptr %126, ptr %88, align 8, !tbaa !108
  store ptr %128, ptr %89, align 8, !tbaa !109
  %132 = icmp eq ptr %124, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, i8 0, i64 24, i1 false)
  br i1 %132, label %134, label %133, !prof !107

133:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %124) #21
  br label %134

134:                                              ; preds = %121, %133
  %135 = load i32, ptr %90, align 8, !tbaa !110
  %136 = getelementptr inbounds %class.FastBoard, ptr %122, i64 0, i32 17
  store i32 %135, ptr %136, align 8, !tbaa !110
  %137 = getelementptr inbounds %class.FullBoard, ptr %122, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %137, ptr noundef nonnull align 8 dereferenceable(16) %91, i64 16, i1 false)
  %138 = getelementptr inbounds %class.FastState, ptr %122, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %138, ptr noundef nonnull align 8 dereferenceable(124) %92, i64 124, i1 false)
  %139 = getelementptr inbounds %class.FastState, ptr %122, i64 0, i32 9
  br label %140

140:                                              ; preds = %134, %140
  %141 = phi i64 [ 0, %134 ], [ %148, %140 ]
  %142 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %139, i64 0, i64 %141
  %143 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %93, i64 0, i64 %141
  %144 = load i32, ptr %143, align 4, !tbaa !94
  store i32 %144, ptr %142, align 4, !tbaa !121
  %145 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %93, i64 0, i64 %141, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !94
  %147 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %139, i64 0, i64 %141, i32 1
  store i32 %146, ptr %147, align 4, !tbaa !123
  %148 = add nuw nsw i64 %141, 1
  %149 = icmp eq i64 %148, 24
  br i1 %149, label %150, label %140, !prof !124, !llvm.loop !125

150:                                              ; preds = %140
  %151 = getelementptr inbounds %class.KoState, ptr %122, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !96
  %153 = getelementptr inbounds %class.KoState, ptr %122, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !128
  %155 = getelementptr inbounds %class.KoState, ptr %122, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !129
  %157 = load ptr, ptr %94, align 8, !tbaa !96
  store ptr %157, ptr %151, align 8, !tbaa !96
  %158 = load ptr, ptr %95, align 8, !tbaa !128
  store ptr %158, ptr %153, align 8, !tbaa !128
  %159 = load ptr, ptr %96, align 8, !tbaa !129
  store ptr %159, ptr %155, align 8, !tbaa !129
  store ptr %152, ptr %94, align 8, !tbaa !96
  store ptr %154, ptr %95, align 8, !tbaa !128
  store ptr %156, ptr %96, align 8, !tbaa !129
  %160 = icmp eq ptr %152, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, i8 0, i64 24, i1 false)
  br i1 %160, label %162, label %161, !prof !130

161:                                              ; preds = %150
  call void @_ZdlPv(ptr noundef %152) #21
  br label %162

162:                                              ; preds = %150, %161
  %163 = getelementptr inbounds %class.KoState, ptr %122, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !96
  %165 = getelementptr inbounds %class.KoState, ptr %122, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !128
  %167 = getelementptr inbounds %class.KoState, ptr %122, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !129
  %169 = load ptr, ptr %97, align 8, !tbaa !96
  store ptr %169, ptr %163, align 8, !tbaa !96
  %170 = load ptr, ptr %98, align 8, !tbaa !128
  store ptr %170, ptr %165, align 8, !tbaa !128
  %171 = load ptr, ptr %99, align 8, !tbaa !129
  store ptr %171, ptr %167, align 8, !tbaa !129
  store ptr %164, ptr %97, align 8, !tbaa !96
  store ptr %166, ptr %98, align 8, !tbaa !128
  store ptr %168, ptr %99, align 8, !tbaa !129
  %172 = icmp eq ptr %164, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %97, i8 0, i64 24, i1 false)
  br i1 %172, label %174, label %173, !prof !130

173:                                              ; preds = %162
  call void @_ZdlPv(ptr noundef %164) #21
  br label %174

174:                                              ; preds = %162, %173
  %175 = getelementptr inbounds %class.GameState, ptr %122, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %175, ptr noundef nonnull align 8 dereferenceable(24) %100) #19
  %176 = getelementptr inbounds %class.GameState, ptr %122, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %176, ptr noundef nonnull align 8 dereferenceable(44) %101, i64 44, i1 false), !tbaa.struct !131
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %100) #19
  %177 = load ptr, ptr %97, align 8, !tbaa !96
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179, !prof !107

179:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %177) #21
  br label %180

180:                                              ; preds = %179, %174
  %181 = load ptr, ptr %94, align 8, !tbaa !96
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183, !prof !107

183:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %181) #21
  br label %184

184:                                              ; preds = %183, %180
  %185 = load ptr, ptr %87, align 8, !tbaa !98
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187, !prof !107

187:                                              ; preds = %184
  call void @_ZdlPv(ptr noundef %185) #21
  br label %188

188:                                              ; preds = %184, %187
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %8) #19
  br label %189

189:                                              ; preds = %206, %188
  %190 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20
          to label %191 unwind label %247, !prof !132

191:                                              ; preds = %189
  %192 = load ptr, ptr %5, align 8, !tbaa !100
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %190, ptr noundef nonnull align 8 dereferenceable(8508) %192)
          to label %193 unwind label %249, !prof !132

193:                                              ; preds = %191
  %194 = load ptr, ptr %5, align 8, !tbaa !100
  %195 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %194)
          to label %196 unwind label %251, !prof !132

196:                                              ; preds = %193
  %197 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %190, i32 noundef %195, i32 noundef 0)
          to label %198 unwind label %251, !prof !132

198:                                              ; preds = %196
  %199 = load ptr, ptr %5, align 8, !tbaa !100
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %199, i32 noundef %197)
          to label %200 unwind label %251, !prof !132

200:                                              ; preds = %198
  %201 = load ptr, ptr %5, align 8, !tbaa !100
  invoke void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %201)
          to label %202 unwind label %251, !prof !132

202:                                              ; preds = %200
  %203 = getelementptr inbounds %class.UCTSearch, ptr %190, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %203) #19
  call void @_ZdlPv(ptr noundef %190) #21
  %204 = load ptr, ptr %5, align 8, !tbaa !100
  %205 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %204)
          to label %206 unwind label %254, !prof !132

206:                                              ; preds = %202
  %207 = icmp slt i32 %205, 2
  %208 = icmp ne i32 %197, -2
  %209 = and i1 %208, %207
  br i1 %209, label %189, label %210, !prof !133, !llvm.loop !134

210:                                              ; preds = %206
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %102, !llvm.loop !135

211:                                              ; preds = %35
  %212 = landingpad { ptr, i32 }
          cleanup
  %213 = extractvalue { ptr, i32 } %212, 0
  %214 = extractvalue { ptr, i32 } %212, 1
  br label %296

215:                                              ; preds = %58
  %216 = landingpad { ptr, i32 }
          cleanup
  %217 = extractvalue { ptr, i32 } %216, 0
  %218 = extractvalue { ptr, i32 } %216, 1
  call void @_ZdlPv(ptr noundef %57) #21
  br label %296

219:                                              ; preds = %60, %59
  %220 = landingpad { ptr, i32 }
          cleanup
  %221 = extractvalue { ptr, i32 } %220, 0
  %222 = extractvalue { ptr, i32 } %220, 1
  br label %277

223:                                              ; preds = %62
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = extractvalue { ptr, i32 } %224, 0
  %226 = extractvalue { ptr, i32 } %224, 1
  br label %274

227:                                              ; preds = %80, %83
  %228 = extractvalue { ptr, i32 } %70, 0
  %229 = extractvalue { ptr, i32 } %70, 1
  call void @_ZdlPv(ptr noundef %63) #21
  br label %274

230:                                              ; preds = %102
  %231 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %258

232:                                              ; preds = %105
  %233 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPv(ptr noundef %104) #21
  br label %258

234:                                              ; preds = %106
  %235 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %256

236:                                              ; preds = %110
  %237 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %238 = load ptr, ptr %7, align 8, !tbaa !105
  %239 = icmp eq ptr %238, %85
  br i1 %239, label %240, label %244, !prof !91

240:                                              ; preds = %236
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !83
  %243 = icmp ult i64 %242, 16
  call void @llvm.assume(i1 %243)
  br label %256

244:                                              ; preds = %236
  call void @_ZdlPv(ptr noundef %238) #21
  br label %256

245:                                              ; preds = %119
  %246 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %8) #19
  br label %256

247:                                              ; preds = %189
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %256

249:                                              ; preds = %191
  %250 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPv(ptr noundef %190) #21
  br label %256

251:                                              ; preds = %200, %198, %196, %193
  %252 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %253 = getelementptr inbounds %class.UCTSearch, ptr %190, i64 0, i32 1
  call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %253) #19
  call void @_ZdlPv(ptr noundef %190) #21
  br label %256

254:                                              ; preds = %202
  %255 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %256

256:                                              ; preds = %247, %249, %251, %244, %240, %254, %245, %234
  %257 = phi { ptr, i32 } [ %246, %245 ], [ %235, %234 ], [ %255, %254 ], [ %237, %240 ], [ %237, %244 ], [ %252, %251 ], [ %250, %249 ], [ %248, %247 ]
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %258

258:                                              ; preds = %256, %232, %230
  %259 = phi { ptr, i32 } [ %257, %256 ], [ %233, %232 ], [ %231, %230 ]
  %260 = extractvalue { ptr, i32 } %259, 0
  %261 = extractvalue { ptr, i32 } %259, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %262 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #19
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %271, !prof !91

264:                                              ; preds = %258
  %265 = call ptr @__cxa_begin_catch(ptr %260) #19
  invoke void @__cxa_end_catch()
          to label %266 unwind label %267, !prof !91

266:                                              ; preds = %264
  call void @_ZNSt8auto_ptrI9GameStateED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @_ZdlPv(ptr noundef %57) #21
  br label %280

267:                                              ; preds = %264
  %268 = landingpad { ptr, i32 }
          cleanup
  %269 = extractvalue { ptr, i32 } %268, 0
  %270 = extractvalue { ptr, i32 } %268, 1
  br label %271

271:                                              ; preds = %267, %258
  %272 = phi i32 [ %270, %267 ], [ %261, %258 ]
  %273 = phi ptr [ %269, %267 ], [ %260, %258 ]
  call void @_ZNSt8auto_ptrI9GameStateED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %274

274:                                              ; preds = %271, %227, %223
  %275 = phi i32 [ %272, %271 ], [ %229, %227 ], [ %226, %223 ]
  %276 = phi ptr [ %273, %271 ], [ %228, %227 ], [ %225, %223 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %277

277:                                              ; preds = %219, %274
  %278 = phi i32 [ %275, %274 ], [ %222, %219 ]
  %279 = phi ptr [ %276, %274 ], [ %221, %219 ]
  call void @_ZdlPv(ptr noundef %57) #21
  br label %296

280:                                              ; preds = %24, %266
  %281 = phi i32 [ 0, %266 ], [ 1, %24 ]
  %282 = load ptr, ptr %4, align 8, !tbaa !105
  %283 = icmp eq ptr %282, %11
  br i1 %283, label %284, label %287, !prof !91

284:                                              ; preds = %280
  %285 = load i64, ptr %12, align 8, !tbaa !83
  %286 = icmp ult i64 %285, 16
  call void @llvm.assume(i1 %286)
  br label %288

287:                                              ; preds = %280
  call void @_ZdlPv(ptr noundef %282) #21
  br label %288

288:                                              ; preds = %284, %287
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  %289 = load ptr, ptr %3, align 8, !tbaa !105
  %290 = icmp eq ptr %289, %9
  br i1 %290, label %291, label %294, !prof !91

291:                                              ; preds = %288
  %292 = load i64, ptr %10, align 8, !tbaa !83
  %293 = icmp ult i64 %292, 16
  call void @llvm.assume(i1 %293)
  br label %295

294:                                              ; preds = %288
  call void @_ZdlPv(ptr noundef %289) #21
  br label %295

295:                                              ; preds = %291, %294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret i32 %281

296:                                              ; preds = %211, %215, %277, %26
  %297 = phi i32 [ %29, %26 ], [ %278, %277 ], [ %218, %215 ], [ %214, %211 ]
  %298 = phi ptr [ %28, %26 ], [ %279, %277 ], [ %217, %215 ], [ %213, %211 ]
  %299 = load ptr, ptr %4, align 8, !tbaa !105
  %300 = icmp eq ptr %299, %11
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i64, ptr %12, align 8, !tbaa !83
  %303 = icmp ult i64 %302, 16
  call void @llvm.assume(i1 %303)
  br label %305

304:                                              ; preds = %296
  call void @_ZdlPv(ptr noundef %299) #21
  br label %305

305:                                              ; preds = %301, %304
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  %306 = load ptr, ptr %3, align 8, !tbaa !105
  %307 = icmp eq ptr %306, %9
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i64, ptr %10, align 8, !tbaa !83
  %310 = icmp ult i64 %309, 16
  call void @llvm.assume(i1 %310)
  br label %312

311:                                              ; preds = %305
  call void @_ZdlPv(ptr noundef %306) #21
  br label %312

312:                                              ; preds = %308, %311
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %313 = insertvalue { ptr, i32 } poison, ptr %298, 0
  %314 = insertvalue { ptr, i32 } %313, i32 %297, 1
  resume { ptr, i32 } %314
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN6RandomC1Ei(ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN7Zobrist12init_zobristER6Random(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #0

declare noundef ptr @_ZN7Matcher11get_MatcherEv() local_unnamed_addr #0

declare void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512)) unnamed_addr #0

declare void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind writable sret(%class.GameState) align 8, ptr noundef nonnull align 8 dereferenceable(8512), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90), ptr noundef nonnull align 8 dereferenceable(8508)) unnamed_addr #0

declare noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #0

declare void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #0

declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %2 = load ptr, ptr %0, align 8, !tbaa !103
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4, !prof !137

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %7)
          to label %11 unwind label %8, !prof !142

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #22
  unreachable

11:                                               ; preds = %4
  %12 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !143
  %14 = getelementptr inbounds %class.SGFTree, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %21, label %17, !prof !146

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %19, %17 ], [ %13, %11 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %18)
  %19 = getelementptr inbounds %class.SGFTree, ptr %18, i64 1
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %21, label %17, !prof !107, !llvm.loop !147

21:                                               ; preds = %17, %11
  %22 = load ptr, ptr %12, align 8, !tbaa !143
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !146

24:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %22) #21
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !96
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !146

29:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %27) #21
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !146

34:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %32) #21
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !142

39:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %37) #21
  br label %40

40:                                               ; preds = %35, %39
  tail call void @_ZdlPv(ptr noundef %2) #21
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9GameStateED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4, !prof !87

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.GameState, ptr %2, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %6 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !87

9:                                                ; preds = %4
  tail call void @_ZdlPv(ptr noundef %7) #21
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !87

14:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %12) #21
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !91

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %17) #21
  br label %20

20:                                               ; preds = %15, %19
  tail call void @_ZdlPv(ptr noundef %2) #21
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

declare void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %25, label %6, !prof !152

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %2, %1 ]
  %8 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !153

11:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #21
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !153

16:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %14) #21
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !154

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #21
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %class.KoState, ptr %7, i64 1
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %6, !prof !155, !llvm.loop !156

25:                                               ; preds = %22, %1
  %26 = load ptr, ptr %0, align 8, !tbaa !149
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !157

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #21
  br label %29

29:                                               ; preds = %25, %28
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !158 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %3 = alloca %"class.std::vector.16", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %0, align 8, !tbaa !149
  %7 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = load ptr, ptr %1, align 8, !tbaa !149
  store ptr %11, ptr %0, align 8, !tbaa !149
  %12 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !151
  store ptr %13, ptr %7, align 8, !tbaa !151
  %14 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  store ptr %15, ptr %9, align 8, !tbaa !160
  store ptr %6, ptr %1, align 8, !tbaa !149
  store ptr %8, ptr %12, align 8, !tbaa !151
  store ptr %10, ptr %14, align 8, !tbaa !160
  store ptr %6, ptr %3, align 8, !tbaa !149
  store ptr %8, ptr %4, align 8, !tbaa !151
  store ptr %10, ptr %5, align 8, !tbaa !160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !162
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !163

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !105
  %11 = load i64, ptr %4, align 8, !tbaa !162
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !86
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !105
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !164

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !86
  store i8 %16, ptr %14, align 1, !tbaa !86
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !165
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !162
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !83
  %21 = load ptr, ptr %0, align 8, !tbaa !105
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #14 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 !prof !166 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !167

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !170, !llvm.loop !171

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12, !prof !173

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %10 = load i64, ptr %9, align 8, !tbaa !83
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #21
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !105
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21, !prof !170

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !83
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %14) #21
  br label %22

22:                                               ; preds = %17, %21
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4)
          to label %8 unwind label %5, !prof !175

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #22
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %18, label %14, !prof !176

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %10, %8 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %15)
  %16 = getelementptr inbounds %class.SGFTree, ptr %15, i64 1
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %14, !prof !177, !llvm.loop !147

18:                                               ; preds = %14, %8
  %19 = load ptr, ptr %9, align 8, !tbaa !143
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !176

21:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %19) #21
  br label %22

22:                                               ; preds = %18, %21
  %23 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !178

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #21
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !178

31:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %29) #21
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !175

36:                                               ; preds = %32
  tail call void @_ZdlPv(ptr noundef %34) #21
  br label %37

37:                                               ; preds = %32, %36
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_Leela.cpp() #16 section ".text.startup" !prof !77 !PGOFuncName !179 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!76}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!35 = !{ptr @main, ptr @strlen, i64 1}
!36 = !{ptr @main, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 1}
!37 = !{ptr @main, ptr @_Znwm, i64 983}
!38 = !{ptr @main, ptr @_ZN6RandomC1Ei, i64 1}
!39 = !{ptr @main, ptr @_ZN7Zobrist12init_zobristER6Random, i64 1}
!40 = !{ptr @main, ptr @_ZN7Matcher11get_MatcherEv, i64 1}
!41 = !{ptr @main, ptr @_ZN11TimeControlC1Eiiii, i64 1}
!42 = !{ptr @main, ptr @_ZN7SGFTreeC1Ev, i64 11}
!43 = !{ptr @main, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 11}
!44 = !{ptr @main, ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, i64 11}
!45 = !{ptr @main, ptr @_ZN7SGFTree12get_mainlineEj, i64 10}
!46 = !{ptr @main, ptr @_ZdlPv, i64 989}
!47 = !{ptr @main, ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, i64 10}
!48 = !{ptr @main, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 10}
!49 = !{ptr @main, ptr @_ZN9UCTSearchC1ER9GameState, i64 970}
!50 = !{ptr @main, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!51 = !{ptr @main, ptr @_ZN9UCTSearch5thinkEii, i64 970}
!52 = !{ptr @main, ptr @_ZN9GameState9play_moveEi, i64 970}
!53 = !{ptr @main, ptr @_ZN9GameState13display_stateEv, i64 970}
!54 = !{ptr @main, ptr @_ZN7UCTNodeD1Ev, i64 970}
!55 = !{ptr @main, ptr @_ZN9FastState10get_passesEv, i64 970}
!56 = !{ptr @main, ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, i64 11}
!57 = !{ptr @main, ptr @__cxa_begin_catch, i64 1}
!58 = !{ptr @main, ptr @__cxa_end_catch, i64 1}
!59 = !{ptr @main, ptr @_ZNSt8auto_ptrI9GameStateED2Ev, i64 1}
!60 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 448}
!61 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 10}
!62 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZdlPv, i64 478}
!63 = !{ptr @_ZNSt8auto_ptrI9GameStateED2Ev, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 1}
!64 = !{ptr @_ZNSt8auto_ptrI9GameStateED2Ev, ptr @_ZdlPv, i64 3}
!65 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZdlPv, i64 3038376}
!66 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 10}
!67 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 32}
!68 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 606}
!69 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!70 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZdlPv, i64 617}
!71 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 437}
!72 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 427}
!73 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZdlPv, i64 1301}
!74 = !{ptr @_GLOBAL__sub_I_Leela.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!75 = !{ptr @_GLOBAL__sub_I_Leela.cpp, ptr @__cxa_atexit, i64 1}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 1}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !80, i64 0}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C++ TBAA"}
!83 = !{!84, !85, i64 8}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !79, i64 0, !85, i64 8, !81, i64 16}
!85 = !{!"long", !81, i64 0}
!86 = !{!81, !81, i64 0}
!87 = !{!"branch_weights", i32 0, i32 1}
!88 = !{!89, !89, i64 0}
!89 = !{!"vtable pointer", !82, i64 0}
!90 = !{!80, !80, i64 0}
!91 = !{!"branch_weights", i32 1, i32 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"_ZTSSt13_Ios_Fmtflags", !81, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !81, i64 0}
!96 = !{!97, !80, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!98 = !{!99, !80, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!100 = !{!101, !80, i64 0}
!101 = !{!"_ZTSSt8auto_ptrI9GameStateE", !80, i64 0}
!102 = !{!"branch_weights", i32 11, i32 0}
!103 = !{!104, !80, i64 0}
!104 = !{!"_ZTSSt8auto_ptrI7SGFTreeE", !80, i64 0}
!105 = !{!84, !80, i64 0}
!106 = !{!"branch_weights", i32 10, i32 1}
!107 = !{!"branch_weights", i32 10, i32 0}
!108 = !{!99, !80, i64 8}
!109 = !{!99, !80, i64 16}
!110 = !{!111, !95, i64 8048}
!111 = !{!"_ZTS9FastBoard", !112, i64 0, !112, i64 882, !95, i64 1764, !95, i64 1768, !95, i64 1772, !113, i64 1776, !114, i64 3540, !114, i64 4424, !114, i64 5308, !114, i64 6192, !112, i64 7076, !115, i64 7960, !116, i64 7976, !117, i64 8008, !117, i64 8016, !118, i64 8024, !95, i64 8048}
!112 = !{!"_ZTSN5boost5arrayItLm441EEE", !81, i64 0}
!113 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !81, i64 0}
!114 = !{!"_ZTSN5boost5arrayItLm442EEE", !81, i64 0}
!115 = !{!"_ZTSN5boost5arrayIiLm4EEE", !81, i64 0}
!116 = !{!"_ZTSN5boost5arrayIiLm8EEE", !81, i64 0}
!117 = !{!"_ZTSN5boost5arrayIiLm2EEE", !81, i64 0}
!118 = !{!"_ZTSSt6vectorIiSaIiEE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !99, i64 0}
!121 = !{!122, !95, i64 0}
!122 = !{!"_ZTSSt4pairIiiE", !95, i64 0, !95, i64 4}
!123 = !{!122, !95, i64 4}
!124 = !{!"branch_weights", i32 10, i32 230}
!125 = distinct !{!125, !126, !127}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!97, !80, i64 8}
!129 = !{!97, !80, i64 16}
!130 = !{!"branch_weights", i32 1, i32 9}
!131 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 12, i64 4, !94, i64 16, i64 8, !86, i64 24, i64 8, !86, i64 32, i64 2, !86, i64 36, i64 8, !86}
!132 = !{!"branch_weights", i32 970, i32 0}
!133 = !{!"branch_weights", i32 960, i32 10}
!134 = distinct !{!134, !126, !127}
!135 = distinct !{!135, !126, !127}
!136 = !{!"function_entry_count", i64 448}
!137 = !{!"branch_weights", i32 0, i32 448}
!138 = !{!139, !80, i64 8}
!139 = !{!"_ZTSSt15_Rb_tree_header", !140, i64 0, !85, i64 32}
!140 = !{!"_ZTSSt18_Rb_tree_node_base", !141, i64 0, !80, i64 8, !80, i64 16, !80, i64 24}
!141 = !{!"_ZTSSt14_Rb_tree_color", !81, i64 0}
!142 = !{!"branch_weights", i32 448, i32 0}
!143 = !{!144, !80, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!145 = !{!144, !80, i64 8}
!146 = !{!"branch_weights", i32 438, i32 10}
!147 = distinct !{!147, !126, !127}
!148 = !{!"function_entry_count", i64 12023}
!149 = !{!150, !80, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!151 = !{!150, !80, i64 8}
!152 = !{!"branch_weights", i32 1, i32 12022}
!153 = !{!"branch_weights", i32 0, i32 1513182}
!154 = !{!"branch_weights", i32 1513182, i32 0}
!155 = !{!"branch_weights", i32 12022, i32 1501160}
!156 = distinct !{!156, !126, !127}
!157 = !{!"branch_weights", i32 11, i32 12012}
!158 = !{!"function_entry_count", i64 0}
!159 = !{!"function_entry_count", i64 10}
!160 = !{!150, !80, i64 16}
!161 = !{!"function_entry_count", i64 37847}
!162 = !{!85, !85, i64 0}
!163 = !{!"branch_weights", i32 32, i32 37815}
!164 = !{!"branch_weights", i32 36919, i32 928, i32 0}
!165 = !{!"VP", i32 1, i64 36919, i64 2, i64 29486, i64 3, i64 5287, i64 4, i64 1900, i64 8, i64 106}
!166 = !{!"function_entry_count", i64 1928}
!167 = !{!"branch_weights", i32 1322, i32 606}
!168 = !{!140, !80, i64 24}
!169 = !{!140, !80, i64 16}
!170 = !{!"branch_weights", i32 606, i32 0}
!171 = distinct !{!171, !126, !127}
!172 = !{!"function_entry_count", i64 606}
!173 = !{!"branch_weights", i32 595, i32 11}
!174 = !{!"function_entry_count", i64 437}
!175 = !{!"branch_weights", i32 437, i32 0}
!176 = !{!"branch_weights", i32 10, i32 427}
!177 = !{!"branch_weights", i32 427, i32 0}
!178 = !{!"branch_weights", i32 0, i32 437}
!179 = !{!"Leela.cpp;_GLOBAL__sub_I_Leela.cpp"}
