; ModuleID = 'GameState.cpp'
source_filename = "GameState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.17", %"class.boost::array.18" }
%"class.boost::array.4" = type { [2 x i32] }
%"class.boost::array.17" = type { [2 x i8] }
%"class.boost::array.18" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%class.GameState = type <{ %class.KoState, %"class.std::vector.12", %class.TimeControl, [4 x i8] }>
%class.KoState = type { %class.FastState.base, %"class.std::vector.7", %"class.std::vector.7" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }

$_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm = comdat any

$_ZNSt6vectorIySaIyEEaSERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %4 = alloca %class.TimeControl, align 4
  tail call void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, float noundef %2)
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %6, ptr noundef %8)
          to label %11 unwind label %12

11:                                               ; preds = %10
  store ptr %6, ptr %7, align 8, !tbaa !64
  br label %15

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable

15:                                               ; preds = %3, %11
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #19
  call void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %4, i32 noundef %1, i32 noundef 30000, i32 noundef 0, i32 noundef 25)
  %16 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %16, ptr noundef nonnull align 4 dereferenceable(44) %4, i64 44, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #19
  ret void
}

declare void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #2 comdat align 2 !prof !69 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  tail call void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8440) %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !64
  %10 = getelementptr inbounds %class.KoState, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !64
  br label %12

11:                                               ; preds = %2
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(8440) %1)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %2 = alloca %class.TimeControl, align 4
  tail call void @_ZN7KoState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8440) %0)
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %4, ptr noundef %6)
          to label %9 unwind label %10

9:                                                ; preds = %8
  store ptr %4, ptr %5, align 8, !tbaa !64
  br label %13

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable

13:                                               ; preds = %1, %9
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #19
  %14 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  call void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %2, i32 noundef %14, i32 noundef 30000, i32 noundef 0, i32 noundef 25)
  %15 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %15, ptr noundef nonnull align 4 dereferenceable(44) %2, i64 44, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #19
  ret void
}

declare void @_ZN7KoState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9GameState12forward_moveEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %2, align 8, !tbaa !59
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8440
  %10 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = icmp ugt i64 %9, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  store i32 %12, ptr %10, align 8, !tbaa !73
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds %class.KoState, ptr %5, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %17, i64 8024, i1 false)
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %19 = getelementptr inbounds %class.FastBoard, ptr %17, i64 0, i32 16
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
  %21 = getelementptr inbounds %class.FastBoard, ptr %17, i64 0, i32 17
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %22, ptr %23, align 8, !tbaa !91
  %24 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %class.FullBoard, ptr %17, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %26 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %class.FastState, ptr %17, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %26, ptr noundef nonnull align 8 dereferenceable(124) %27, i64 124, i1 false)
  %28 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %29 = getelementptr inbounds %class.FastState, ptr %17, i64 0, i32 9
  br label %30

30:                                               ; preds = %15, %30
  %31 = phi i64 [ 0, %15 ], [ %38, %30 ]
  %32 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %28, i64 0, i64 %31
  %33 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %29, i64 0, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !92
  store i32 %34, ptr %32, align 4, !tbaa !92
  %35 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %29, i64 0, i64 %31, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !94
  %37 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %28, i64 0, i64 %31, i32 1
  store i32 %36, ptr %37, align 8, !tbaa !94
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, 24
  br i1 %39, label %40, label %30, !llvm.loop !95

40:                                               ; preds = %30
  %41 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %42 = getelementptr inbounds %class.KoState, ptr %5, i64 %16, i32 1
  %43 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %42)
  %44 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %45 = getelementptr inbounds %class.KoState, ptr %5, i64 %16, i32 2
  %46 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45)
  br label %47

47:                                               ; preds = %1, %40
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9GameState9undo_moveEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !73
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %8 = zext nneg i32 %6 to i64
  %9 = load ptr, ptr %7, align 8, !tbaa !59
  %10 = getelementptr inbounds %class.KoState, ptr %9, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %10, i64 8024, i1 false)
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %12 = getelementptr inbounds %class.FastBoard, ptr %10, i64 0, i32 16
  %13 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %14 = getelementptr inbounds %class.FastBoard, ptr %10, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %15, ptr %16, align 8, !tbaa !91
  %17 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %class.FullBoard, ptr %10, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %19 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %class.FastState, ptr %10, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %19, ptr noundef nonnull align 8 dereferenceable(124) %20, i64 124, i1 false)
  %21 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %22 = getelementptr inbounds %class.FastState, ptr %10, i64 0, i32 9
  br label %23

23:                                               ; preds = %5, %23
  %24 = phi i64 [ 0, %5 ], [ %31, %23 ]
  %25 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %21, i64 0, i64 %24
  %26 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %22, i64 0, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !92
  store i32 %27, ptr %25, align 4, !tbaa !92
  %28 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %22, i64 0, i64 %24, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !94
  %30 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %21, i64 0, i64 %24, i32 1
  store i32 %29, ptr %30, align 8, !tbaa !94
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, 24
  br i1 %32, label %33, label %23, !llvm.loop !95

33:                                               ; preds = %23
  %34 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %class.KoState, ptr %9, i64 %8, i32 1
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
  %37 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %class.KoState, ptr %9, i64 %8, i32 2
  %39 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
  br label %40

40:                                               ; preds = %1, %33
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState6rewindEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %3, i64 8024, i1 false)
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %7 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %8, ptr %9, align 8, !tbaa !91
  %10 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %class.FullBoard, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  %12 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %class.FastState, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 dereferenceable(124) %13, i64 124, i1 false)
  %14 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %class.FastState, ptr %3, i64 0, i32 9
  br label %16

16:                                               ; preds = %1, %16
  %17 = phi i64 [ 0, %1 ], [ %24, %16 ]
  %18 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %14, i64 0, i64 %17
  %19 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %15, i64 0, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !92
  store i32 %20, ptr %18, align 4, !tbaa !92
  %21 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %15, i64 0, i64 %17, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %14, i64 0, i64 %17, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !94
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 24
  br i1 %25, label %26, label %16, !llvm.loop !95

26:                                               ; preds = %16
  %27 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 1
  %29 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28)
  %30 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 2
  %32 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !98 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !99
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %4, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %4 = icmp ult i32 %2, -2
  br i1 %4, label %5, label %6, !prof !100

5:                                                ; preds = %3
  tail call void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, i32 noundef %2)
  br label %10

6:                                                ; preds = %3
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0)
  %7 = icmp eq i32 %2, -2
  br i1 %7, label %8, label %10, !prof !101

8:                                                ; preds = %6
  %9 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  store i32 -2, ptr %9, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %6, %8, %5
  %11 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = load ptr, ptr %11, align 8, !tbaa !59
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8440
  %22 = icmp ult i64 %21, %14
  br i1 %22, label %23, label %25, !prof !103

23:                                               ; preds = %10
  %24 = sub nsw i64 %14, %21
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %24)
  br label %35

25:                                               ; preds = %10
  %26 = icmp ugt i64 %21, %14
  br i1 %26, label %27, label %35, !prof !103

27:                                               ; preds = %25
  %28 = getelementptr inbounds %class.KoState, ptr %17, i64 %14
  %29 = icmp eq ptr %16, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %28, ptr noundef %16)
          to label %31 unwind label %32

31:                                               ; preds = %30
  store ptr %28, ptr %15, align 8, !tbaa !64
  br label %35

32:                                               ; preds = %30
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #18
  unreachable

35:                                               ; preds = %23, %25, %27, %31
  %36 = load ptr, ptr %15, align 8, !tbaa !70
  %37 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %43, label %40, !prof !72

40:                                               ; preds = %35
  tail call void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  %41 = load ptr, ptr %15, align 8, !tbaa !64
  %42 = getelementptr inbounds %class.KoState, ptr %41, i64 1
  store ptr %42, ptr %15, align 8, !tbaa !64
  br label %44

43:                                               ; preds = %35
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %36, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  br label %44

44:                                               ; preds = %40, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !58 {
  %2 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0)
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = sext i32 %5 to i64
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %6)
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  ret void
}

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %0, align 8, !tbaa !59
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8440
  %10 = icmp ult i64 %9, %1
  br i1 %10, label %11, label %13, !prof !103

11:                                               ; preds = %2
  %12 = sub i64 %1, %9
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %12)
  br label %23

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, %1
  br i1 %14, label %15, label %23, !prof !103

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.KoState, ptr %5, i64 %1
  %17 = icmp eq ptr %4, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %16, ptr noundef %4)
          to label %19 unwind label %20

19:                                               ; preds = %18
  store ptr %16, ptr %3, align 8, !tbaa !64
  br label %23

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #18
  unreachable

23:                                               ; preds = %19, %15, %13, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %7 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %8 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %91

19:                                               ; preds = %16, %13, %3, %10
  %20 = phi i32 [ 1, %10 ], [ 1, %3 ], [ 0, %13 ], [ 0, %16 ]
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !104
  %23 = icmp ult i64 %22, 2
  br i1 %23, label %91, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8, !tbaa !108
  %26 = load i8, ptr %25, align 1, !tbaa !68
  %27 = sext i8 %26 to i32
  %28 = tail call i32 @isalpha(i32 noundef %27) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %91, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !68
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -58
  %35 = icmp ult i32 %34, -10
  %36 = icmp eq i8 %26, 105
  %37 = or i1 %36, %35
  br i1 %37, label %91, label %38

38:                                               ; preds = %30
  %39 = icmp slt i8 %26, 105
  %40 = select i1 %39, i32 -97, i32 -98
  %41 = add nsw i32 %40, %27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %42, ptr %5, align 8, !tbaa !109
  %43 = getelementptr inbounds i8, ptr %25, i64 %22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %25, ptr noundef nonnull %43)
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !104
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %47)
          to label %48 unwind label %57

48:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 8)
          to label %49 unwind label %59

49:                                               ; preds = %48
  %50 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %51 unwind label %61

51:                                               ; preds = %49
  %52 = load i32, ptr %4, align 4, !tbaa !66
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %4, align 4, !tbaa !66
  %54 = icmp sle i32 %52, %7
  %55 = icmp slt i32 %41, %7
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %63, label %68

57:                                               ; preds = %38
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %82

59:                                               ; preds = %48
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %80

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %77

63:                                               ; preds = %51
  %64 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %41, i32 noundef %53)
          to label %65 unwind label %66

65:                                               ; preds = %63
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %20, i32 noundef %64)
          to label %68 unwind label %66

66:                                               ; preds = %65, %63
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %77

68:                                               ; preds = %65, %51
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #19
  %69 = getelementptr inbounds i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %69) #19
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #19
  %70 = load ptr, ptr %5, align 8, !tbaa !108
  %71 = icmp eq ptr %70, %42
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, ptr %44, align 8, !tbaa !104
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  br label %76

75:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %70) #21
  br label %76

76:                                               ; preds = %72, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %91

77:                                               ; preds = %66, %61
  %78 = phi { ptr, i32 } [ %67, %66 ], [ %62, %61 ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE) #19
  %79 = getelementptr inbounds i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %79) #19
  br label %80

80:                                               ; preds = %77, %59
  %81 = phi { ptr, i32 } [ %78, %77 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #19
  br label %82

82:                                               ; preds = %80, %57
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %58, %57 ]
  %84 = load ptr, ptr %5, align 8, !tbaa !108
  %85 = icmp eq ptr %84, %42
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, ptr %44, align 8, !tbaa !104
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %90

89:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %84) #21
  br label %90

90:                                               ; preds = %86, %89
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  resume { ptr, i32 } %83

91:                                               ; preds = %30, %24, %19, %16, %76
  %92 = phi i1 [ %56, %76 ], [ false, %16 ], [ false, %19 ], [ false, %24 ], [ false, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i1 %92
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState10stop_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !110 {
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl4stopEi(ptr noundef nonnull align 4 dereferenceable(44) %3, i32 noundef %1)
  ret void
}

declare void @_ZN11TimeControl4stopEi(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState11start_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !110 {
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl5startEi(ptr noundef nonnull align 4 dereferenceable(44) %3, i32 noundef %1)
  ret void
}

declare void @_ZN11TimeControl5startEi(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !110 {
  tail call void @_ZN9FastState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl13display_timesEv(ptr noundef nonnull align 4 dereferenceable(44) %2)
  ret void
}

declare void @_ZN9FastState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare void @_ZN11TimeControl13display_timesEv(ptr noundef nonnull align 4 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN9GameState15get_timecontrolEv(ptr noundef nonnull readnone align 8 dereferenceable(8508) %0) local_unnamed_addr #6 align 2 !prof !110 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState15set_timecontrolEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !58 {
  %5 = alloca %class.TimeControl, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #19
  %6 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  call void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %5, i32 noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %7, ptr noundef nonnull align 4 dereferenceable(44) %5, i64 44, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9GameState15set_timecontrolE11TimeControl(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8508) %0, ptr nocapture noundef readonly byval(%class.TimeControl) align 8 %1) local_unnamed_addr #7 align 2 !prof !58 {
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(44) %1, i64 44, i1 false), !tbaa.struct !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState11adjust_timeEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !58 {
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl11adjust_timeEiii(ptr noundef nonnull align 4 dereferenceable(44) %5, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

declare void @_ZN11TimeControl11adjust_timeEiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %13, label %8, !prof !111

8:                                                ; preds = %1
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %4, ptr noundef %6)
          to label %9 unwind label %10

9:                                                ; preds = %8
  store ptr %4, ptr %5, align 8, !tbaa !64
  br label %13

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable

13:                                               ; preds = %1, %9
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8440) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !58 {
  %3 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %4 = add i32 %1, -10
  %5 = icmp ult i32 %4, -8
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp sgt i32 %1, 4
  %10 = icmp eq i32 %3, 7
  %11 = or i1 %10, %8
  %12 = and i1 %9, %11
  %13 = icmp sgt i32 %3, 6
  %14 = xor i1 %12, true
  %15 = and i1 %13, %14
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i1 [ false, %2 ], [ %15, %6 ]
  br i1 %17, label %18, label %56

18:                                               ; preds = %16
  %19 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %20 = icmp sgt i32 %19, 12
  %21 = select i1 %20, i32 3, i32 2
  %22 = sdiv i32 %19, 2
  %23 = xor i32 %21, -1
  %24 = add i32 %19, %23
  %25 = icmp sgt i32 %1, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %24, i32 noundef %24)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %27)
  %28 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21, i32 noundef %21)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %28)
  br label %29

29:                                               ; preds = %26, %18
  %30 = icmp sgt i32 %1, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21, i32 noundef %24)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %32)
  br label %33

33:                                               ; preds = %31, %29
  %34 = icmp sgt i32 %1, 3
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %24, i32 noundef %21)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %36)
  br label %37

37:                                               ; preds = %35, %33
  %38 = icmp slt i32 %1, 5
  %39 = and i32 %1, 1
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %22, i32 noundef %22)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %43)
  br label %44

44:                                               ; preds = %42, %37
  %45 = icmp sgt i32 %1, 5
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %24, i32 noundef %22)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %47)
  %48 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21, i32 noundef %22)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %48)
  br label %49

49:                                               ; preds = %46, %44
  %50 = icmp sgt i32 %1, 7
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %22, i32 noundef %24)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %52)
  %53 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %22, i32 noundef %21)
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %53)
  br label %54

54:                                               ; preds = %51, %49
  %55 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 1, ptr %55, align 8, !tbaa !99
  tail call void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
  tail call void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1)
  br label %56

56:                                               ; preds = %16, %54
  ret i1 %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9GameState14valid_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !58 {
  %3 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %4 = add i32 %1, -10
  %5 = icmp ult i32 %4, -8
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp sgt i32 %1, 4
  %10 = icmp eq i32 %3, 7
  %11 = or i1 %10, %8
  %12 = and i1 %9, %11
  %13 = icmp sgt i32 %3, 6
  %14 = xor i1 %12, true
  %15 = and i1 %13, %14
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i1 [ false, %2 ], [ %15, %6 ]
  ret i1 %17
}

declare void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9GameState19place_free_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %4 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %5 = mul nsw i32 %4, %3
  %6 = sdiv i32 %5, 2
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %1)
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 9)
  %9 = tail call noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %8)
  %10 = sub nsw i32 %7, %8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %20, %2
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 1, ptr %13, align 8, !tbaa !99
  tail call void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0)
  tail call void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %7)
  ret void

14:                                               ; preds = %2, %20
  %15 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %16 = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %16, ptr noundef nonnull align 8 dereferenceable(8508) %0)
          to label %17 unwind label %24

17:                                               ; preds = %14
  %18 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %16, i32 noundef 0, i32 noundef 1)
          to label %19 unwind label %26

19:                                               ; preds = %17
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %18)
          to label %20 unwind label %26

20:                                               ; preds = %19
  %21 = getelementptr inbounds %class.UCTSearch, ptr %16, i64 0, i32 1
  tail call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %21) #19
  tail call void @_ZdlPv(ptr noundef %16) #21
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp eq i32 %22, %10
  br i1 %23, label %12, label %14, !llvm.loop !112

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %29

26:                                               ; preds = %19, %17
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = getelementptr inbounds %class.UCTSearch, ptr %16, i64 0, i32 1
  tail call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %28) #19
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZdlPv(ptr noundef %16) #21
  resume { ptr, i32 } %30
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90), ptr noundef nonnull align 8 dereferenceable(8508)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !114

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load ptr, ptr %1, align 8, !tbaa !70
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !117

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22, !prof !114

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %10, i1 false), !prof !118
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !119
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !117

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #21
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !119
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !115
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !120
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
  %42 = load ptr, ptr %1, align 8, !tbaa !119
  %43 = load ptr, ptr %30, align 8, !tbaa !120
  %44 = load ptr, ptr %0, align 8, !tbaa !119
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !120
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !119
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !120
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !122

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load ptr, ptr %1, align 8, !tbaa !70
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !122

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 2
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %20, ptr align 4 %7, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !124
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #21
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !124
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !123
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !125
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35, !prof !122

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37, !prof !126

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
  %42 = load ptr, ptr %1, align 8, !tbaa !124
  %43 = load ptr, ptr %30, align 8, !tbaa !125
  %44 = load ptr, ptr %0, align 8, !tbaa !124
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !125
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %43, ptr align 4 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !124
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !125
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !58 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !127 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !128

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #22
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !129 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !130

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #22
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !132
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !133

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !108
  %11 = load i64, ptr %4, align 8, !tbaa !132
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !108
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !134

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !68
  store i8 %16, ptr %14, align 1, !tbaa !68
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !135
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !132
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !104
  %21 = load ptr, ptr %0, align 8, !tbaa !108
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %23, label %4, !prof !137

4:                                                ; preds = %2, %20
  %5 = phi ptr [ %21, %20 ], [ %0, %2 ]
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !138

9:                                                ; preds = %4
  tail call void @_ZdlPv(ptr noundef %7) #21
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !138

14:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %12) #21
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !139

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %17) #21
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %4, !prof !140, !llvm.loop !141

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854769760
  br i1 %10, label %11, label %12, !prof !143

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 8440
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1092816592044404)
  %18 = select i1 %16, i64 1092816592044404, i64 %17, !prof !143
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 8440
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !143

23:                                               ; preds = %12
  %24 = mul nuw nsw i64 %18, 8440
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #22
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %class.KoState, ptr %27, i64 %21
  invoke void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8440) %2)
          to label %29 unwind label %96, !prof !144

29:                                               ; preds = %26
  %30 = icmp eq ptr %6, %1
  br i1 %30, label %31, label %35, !prof !145

31:                                               ; preds = %79, %29
  %32 = phi ptr [ %27, %29 ], [ %81, %79 ]
  %33 = getelementptr inbounds %class.KoState, ptr %32, i64 1
  %34 = icmp eq ptr %5, %1
  br i1 %34, label %89, label %83, !prof !146

35:                                               ; preds = %29, %79
  %36 = phi ptr [ %81, %79 ], [ %27, %29 ]
  %37 = phi ptr [ %80, %79 ], [ %6, %29 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %36, ptr noundef nonnull align 8 dereferenceable(8024) %37, i64 8024, i1 false)
  %38 = getelementptr inbounds %class.FastBoard, ptr %36, i64 0, i32 16
  %39 = getelementptr inbounds %class.FastBoard, ptr %37, i64 0, i32 16
  %40 = load ptr, ptr %39, align 8, !tbaa !124
  store ptr %40, ptr %38, align 8, !tbaa !124
  %41 = getelementptr inbounds %class.FastBoard, ptr %36, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %42 = getelementptr inbounds %class.FastBoard, ptr %37, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !125
  store ptr %43, ptr %41, align 8, !tbaa !125
  %44 = getelementptr inbounds %class.FastBoard, ptr %36, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %45 = getelementptr inbounds %class.FastBoard, ptr %37, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !123
  store ptr %46, ptr %44, align 8, !tbaa !123
  %47 = getelementptr inbounds %class.FastBoard, ptr %36, i64 0, i32 17
  %48 = getelementptr inbounds %class.FastBoard, ptr %37, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %49 = load i32, ptr %48, align 8, !tbaa !91
  store i32 %49, ptr %47, align 8, !tbaa !91
  %50 = getelementptr inbounds %class.FullBoard, ptr %36, i64 0, i32 1
  %51 = getelementptr inbounds %class.FullBoard, ptr %37, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %51, i64 16, i1 false)
  %52 = getelementptr inbounds %class.FastState, ptr %36, i64 0, i32 1
  %53 = getelementptr inbounds %class.FastState, ptr %37, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %52, ptr noundef nonnull align 8 dereferenceable(316) %53, i64 316, i1 false)
  %54 = getelementptr inbounds %class.KoState, ptr %36, i64 0, i32 1
  %55 = getelementptr inbounds %class.KoState, ptr %37, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !119
  store ptr %56, ptr %54, align 8, !tbaa !119
  %57 = getelementptr inbounds %class.KoState, ptr %36, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %58 = getelementptr inbounds %class.KoState, ptr %37, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !120
  store ptr %59, ptr %57, align 8, !tbaa !120
  %60 = getelementptr inbounds %class.KoState, ptr %36, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %61 = getelementptr inbounds %class.KoState, ptr %37, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !115
  store ptr %62, ptr %60, align 8, !tbaa !115
  %63 = getelementptr inbounds %class.KoState, ptr %36, i64 0, i32 2
  %64 = getelementptr inbounds %class.KoState, ptr %37, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  %65 = load ptr, ptr %64, align 8, !tbaa !119
  store ptr %65, ptr %63, align 8, !tbaa !119
  %66 = getelementptr inbounds %class.KoState, ptr %36, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %67 = getelementptr inbounds %class.KoState, ptr %37, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !120
  store ptr %68, ptr %66, align 8, !tbaa !120
  %69 = getelementptr inbounds %class.KoState, ptr %36, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %70 = getelementptr inbounds %class.KoState, ptr %37, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !115
  store ptr %71, ptr %69, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %72 = load ptr, ptr %55, align 8, !tbaa !119
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74, !prof !147

74:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %72) #21
  br label %75

75:                                               ; preds = %74, %35
  %76 = load ptr, ptr %39, align 8, !tbaa !124
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !147

78:                                               ; preds = %75
  tail call void @_ZdlPv(ptr noundef %76) #21
  br label %79

79:                                               ; preds = %75, %78
  %80 = getelementptr inbounds %class.KoState, ptr %37, i64 1
  %81 = getelementptr inbounds %class.KoState, ptr %36, i64 1
  %82 = icmp eq ptr %80, %1
  br i1 %82, label %31, label %35, !prof !148, !llvm.loop !149

83:                                               ; preds = %31, %83
  %84 = phi ptr [ %87, %83 ], [ %33, %31 ]
  %85 = phi ptr [ %86, %83 ], [ %1, %31 ]
  tail call void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %84, ptr noundef nonnull align 8 dereferenceable(8440) %85) #19
  tail call void @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %85) #19
  %86 = getelementptr inbounds %class.KoState, ptr %85, i64 1
  %87 = getelementptr inbounds %class.KoState, ptr %84, i64 1
  %88 = icmp eq ptr %86, %5
  br i1 %88, label %89, label %83, !prof !146, !llvm.loop !149

89:                                               ; preds = %83, %31
  %90 = phi ptr [ %33, %31 ], [ %87, %83 ]
  %91 = icmp eq ptr %6, null
  br i1 %91, label %93, label %92, !prof !150

92:                                               ; preds = %89
  tail call void @_ZdlPv(ptr noundef %6) #21
  br label %93

93:                                               ; preds = %89, %92
  %94 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !59
  store ptr %90, ptr %4, align 8, !tbaa !64
  %95 = getelementptr inbounds %class.KoState, ptr %27, i64 %18
  store ptr %95, ptr %94, align 8, !tbaa !71
  ret void

96:                                               ; preds = %26
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  %99 = tail call ptr @__cxa_begin_catch(ptr %98) #19
  %100 = icmp eq ptr %27, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  tail call void @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %28) #19
  br label %105

102:                                              ; preds = %105
  %103 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %106 unwind label %107

104:                                              ; preds = %96
  tail call void @_ZdlPv(ptr noundef %27) #21
  br label %105

105:                                              ; preds = %101, %104
  invoke void @__cxa_rethrow() #23
          to label %110 unwind label %102

106:                                              ; preds = %102
  resume { ptr, i32 } %103

107:                                              ; preds = %102
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  tail call void @__clang_call_terminate(ptr %109) #18
  unreachable

110:                                              ; preds = %105
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %1, ptr noundef nonnull align 8 dereferenceable(8024) %2, i64 8024, i1 false)
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %6 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = load ptr, ptr %5, align 8, !tbaa !124
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 2
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %15 = icmp eq ptr %7, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %15, label %18, label %16, !prof !152

16:                                               ; preds = %3
  %17 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %12, ptr noundef null)
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ null, %3 ], [ %17, %16 ]
  store ptr %19, ptr %4, align 8, !tbaa !124
  store ptr %19, ptr %13, align 8, !tbaa !125
  %20 = getelementptr inbounds i32, ptr %19, i64 %12
  store ptr %20, ptr %14, align 8, !tbaa !123
  %21 = load ptr, ptr %5, align 8, !tbaa !70
  %22 = load ptr, ptr %6, align 8, !tbaa !70
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %21 to i64
  %25 = sub i64 %23, %24
  %26 = icmp eq ptr %22, %21
  br i1 %26, label %28, label %27, !prof !152

27:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %19, ptr align 4 %21, i64 %25, i1 false)
  br label %28

28:                                               ; preds = %18, %27
  %29 = getelementptr inbounds i8, ptr %19, i64 %25
  store ptr %29, ptr %13, align 8, !tbaa !125
  %30 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %31 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 17
  %32 = load i32, ptr %31, align 8, !tbaa !91
  store i32 %32, ptr %30, align 8, !tbaa !91
  %33 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %class.FullBoard, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  %35 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  %36 = getelementptr inbounds %class.FastState, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %35, ptr noundef nonnull align 8 dereferenceable(316) %36, i64 316, i1 false)
  %37 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %38 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %39 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !120
  %41 = load ptr, ptr %38, align 8, !tbaa !119
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = ashr exact i64 %44, 3
  %46 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %47 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %48 = icmp eq ptr %40, %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  br i1 %48, label %59, label %49, !prof !153

49:                                               ; preds = %28
  %50 = icmp ugt i64 %45, 1152921504606846975
  br i1 %50, label %51, label %57, !prof !130

51:                                               ; preds = %49
  %52 = icmp ugt i64 %45, 2305843009213693951
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %54 unwind label %105

54:                                               ; preds = %53
  unreachable

55:                                               ; preds = %51
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %56 unwind label %105

56:                                               ; preds = %55
  unreachable

57:                                               ; preds = %49
  %58 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %44) #22
          to label %59 unwind label %105

59:                                               ; preds = %57, %28
  %60 = phi ptr [ null, %28 ], [ %58, %57 ]
  store ptr %60, ptr %37, align 8, !tbaa !119
  store ptr %60, ptr %46, align 8, !tbaa !120
  %61 = getelementptr inbounds i64, ptr %60, i64 %45
  store ptr %61, ptr %47, align 8, !tbaa !115
  %62 = load ptr, ptr %38, align 8, !tbaa !70
  %63 = load ptr, ptr %39, align 8, !tbaa !70
  %64 = ptrtoint ptr %63 to i64
  %65 = ptrtoint ptr %62 to i64
  %66 = sub i64 %64, %65
  %67 = icmp eq ptr %63, %62
  br i1 %67, label %69, label %68, !prof !153

68:                                               ; preds = %59
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %60, ptr align 8 %62, i64 %66, i1 false), !prof !154
  br label %69

69:                                               ; preds = %59, %68
  %70 = getelementptr inbounds i8, ptr %60, i64 %66
  store ptr %70, ptr %46, align 8, !tbaa !120
  %71 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %72 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %73 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !120
  %75 = load ptr, ptr %72, align 8, !tbaa !119
  %76 = ptrtoint ptr %74 to i64
  %77 = ptrtoint ptr %75 to i64
  %78 = sub i64 %76, %77
  %79 = ashr exact i64 %78, 3
  %80 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %81 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %82 = icmp eq ptr %74, %75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  br i1 %82, label %93, label %83, !prof !153

83:                                               ; preds = %69
  %84 = icmp ugt i64 %79, 1152921504606846975
  br i1 %84, label %85, label %91, !prof !130

85:                                               ; preds = %83
  %86 = icmp ugt i64 %79, 2305843009213693951
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %88 unwind label %107

88:                                               ; preds = %87
  unreachable

89:                                               ; preds = %85
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %90 unwind label %107

90:                                               ; preds = %89
  unreachable

91:                                               ; preds = %83
  %92 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %78) #22
          to label %93 unwind label %107

93:                                               ; preds = %91, %69
  %94 = phi ptr [ null, %69 ], [ %92, %91 ]
  store ptr %94, ptr %71, align 8, !tbaa !119
  store ptr %94, ptr %80, align 8, !tbaa !120
  %95 = getelementptr inbounds i64, ptr %94, i64 %79
  store ptr %95, ptr %81, align 8, !tbaa !115
  %96 = load ptr, ptr %72, align 8, !tbaa !70
  %97 = load ptr, ptr %73, align 8, !tbaa !70
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %96 to i64
  %100 = sub i64 %98, %99
  %101 = icmp eq ptr %97, %96
  br i1 %101, label %103, label %102, !prof !153

102:                                              ; preds = %93
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %94, ptr align 8 %96, i64 %100, i1 false), !prof !154
  br label %103

103:                                              ; preds = %93, %102
  %104 = getelementptr inbounds i8, ptr %94, i64 %100
  store ptr %104, ptr %80, align 8, !tbaa !120
  ret void

105:                                              ; preds = %57, %55, %53
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %112

107:                                              ; preds = %91, %89, %87
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = load ptr, ptr %37, align 8, !tbaa !119
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @_ZdlPv(ptr noundef %109) #21
  br label %112

112:                                              ; preds = %111, %107, %105
  %113 = phi { ptr, i32 } [ %106, %105 ], [ %108, %107 ], [ %108, %111 ]
  %114 = load ptr, ptr %4, align 8, !tbaa !124
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @_ZdlPv(ptr noundef %114) #21
  br label %117

117:                                              ; preds = %116, %112
  resume { ptr, i32 } %113
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !155 {
  %4 = icmp ugt i64 %1, 1092816592044404
  br i1 %4, label %5, label %9, !prof !156

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2185633184088809
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 8440
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #22
  ret ptr %11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #12 comdat align 2 !prof !58 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %1, ptr noundef nonnull align 8 dereferenceable(8024) %2, i64 8024, i1 false)
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  store ptr %6, ptr %4, align 8, !tbaa !124
  %7 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !125
  store ptr %9, ptr %7, align 8, !tbaa !125
  %10 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %11 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  store ptr %12, ptr %10, align 8, !tbaa !123
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %14 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %15 = load i32, ptr %14, align 8, !tbaa !91
  store i32 %15, ptr %13, align 8, !tbaa !91
  %16 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %class.FullBoard, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %18 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %class.FastState, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %18, ptr noundef nonnull align 8 dereferenceable(316) %19, i64 316, i1 false)
  %20 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  store ptr %22, ptr %20, align 8, !tbaa !119
  %23 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %24 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !120
  store ptr %25, ptr %23, align 8, !tbaa !120
  %26 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %27 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  store ptr %28, ptr %26, align 8, !tbaa !115
  %29 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %30 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %31 = load ptr, ptr %30, align 8, !tbaa !119
  store ptr %31, ptr %29, align 8, !tbaa !119
  %32 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %33 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  store ptr %34, ptr %32, align 8, !tbaa !120
  %35 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %36 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !115
  store ptr %37, ptr %35, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !147

6:                                                ; preds = %2
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !147

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #21
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !147

16:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %14) #21
  br label %17

17:                                               ; preds = %12, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %0, align 8, !tbaa !59
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8440
  %12 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = sdiv exact i64 %15, 8440
  %17 = icmp ult i64 %11, 1092816592044405
  tail call void @llvm.assume(i1 %17)
  %18 = sub nuw nsw i64 1092816592044404, %11
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %35, label %21

21:                                               ; preds = %4
  %22 = getelementptr i8, ptr %6, i64 8196
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ %33, %23 ], [ 0, %21 ]
  %25 = phi ptr [ %31, %23 ], [ %6, %21 ]
  %26 = phi i64 [ %30, %23 ], [ %1, %21 ]
  %27 = mul i64 %24, 8440
  %28 = getelementptr i8, ptr %22, i64 %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8440) %25, i8 0, i64 8440, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %28, i8 0, i64 192, i1 false), !tbaa !66
  %29 = getelementptr inbounds %class.KoState, ptr %25, i64 0, i32 1
  %30 = add i64 %26, -1
  %31 = getelementptr inbounds %class.KoState, ptr %25, i64 1
  %32 = icmp eq i64 %30, 0
  %33 = add nuw i64 %24, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, i8 0, i64 48, i1 false)
  br i1 %32, label %34, label %23, !llvm.loop !157

34:                                               ; preds = %23
  store ptr %31, ptr %5, align 8, !tbaa !64
  br label %77

35:                                               ; preds = %4
  %36 = icmp ult i64 %18, %1
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

38:                                               ; preds = %35
  %39 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %40 = add i64 %39, %11
  %41 = icmp ult i64 %40, %11
  %42 = tail call i64 @llvm.umin.i64(i64 %40, i64 1092816592044404)
  %43 = select i1 %41, i64 1092816592044404, i64 %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = tail call noundef ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %43, ptr noundef null)
  br label %47

47:                                               ; preds = %38, %45
  %48 = phi ptr [ %46, %45 ], [ null, %38 ]
  %49 = getelementptr %class.KoState, ptr %48, i64 %11
  %50 = add nuw i64 %10, 8196
  br label %53

51:                                               ; preds = %53
  %52 = icmp eq ptr %7, %6
  br i1 %52, label %71, label %65

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %64, %53 ]
  %55 = phi ptr [ %49, %47 ], [ %62, %53 ]
  %56 = phi i64 [ %1, %47 ], [ %61, %53 ]
  %57 = mul i64 %54, 8440
  %58 = add i64 %50, %57
  %59 = getelementptr i8, ptr %48, i64 %58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8440) %55, i8 0, i64 8440, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %59, i8 0, i64 192, i1 false), !tbaa !66
  %60 = getelementptr inbounds %class.KoState, ptr %55, i64 0, i32 1
  %61 = add i64 %56, -1
  %62 = getelementptr inbounds %class.KoState, ptr %55, i64 1
  %63 = icmp eq i64 %61, 0
  %64 = add i64 %54, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %60, i8 0, i64 48, i1 false)
  br i1 %63, label %51, label %53, !llvm.loop !157

65:                                               ; preds = %51, %65
  %66 = phi ptr [ %69, %65 ], [ %48, %51 ]
  %67 = phi ptr [ %68, %65 ], [ %7, %51 ]
  tail call void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %66, ptr noundef nonnull align 8 dereferenceable(8440) %67) #19
  tail call void @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %67) #19
  %68 = getelementptr inbounds %class.KoState, ptr %67, i64 1
  %69 = getelementptr inbounds %class.KoState, ptr %66, i64 1
  %70 = icmp eq ptr %68, %6
  br i1 %70, label %71, label %65, !llvm.loop !149

71:                                               ; preds = %65, %51
  %72 = icmp eq ptr %7, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call void @_ZdlPv(ptr noundef %7) #21
  br label %74

74:                                               ; preds = %71, %73
  store ptr %48, ptr %0, align 8, !tbaa !59
  %75 = getelementptr inbounds %class.KoState, ptr %49, i64 %1
  store ptr %75, ptr %5, align 8, !tbaa !64
  %76 = getelementptr inbounds %class.KoState, ptr %48, i64 %43
  store ptr %76, ptr %12, align 8, !tbaa !71
  br label %77

77:                                               ; preds = %34, %74, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #14

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind
declare void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_, i64 7}
!36 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, i64 3}
!37 = !{ptr @_ZN9GameState9play_moveEi, ptr @_ZN9GameState9play_moveEii, i64 40849}
!38 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZN7KoState9play_moveEii, i64 38896}
!39 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZN7KoState9play_passEv, i64 1953}
!40 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_, i64 29490}
!41 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, i64 11359}
!42 = !{ptr @_ZN9GameState10stop_clockEi, ptr @_ZN11TimeControl4stopEi, i64 970}
!43 = !{ptr @_ZN9GameState11start_clockEi, ptr @_ZN11TimeControl5startEi, i64 970}
!44 = !{ptr @_ZN9GameState13display_stateEv, ptr @_ZN9FastState13display_stateEv, i64 970}
!45 = !{ptr @_ZN9GameState13display_stateEv, ptr @_ZN11TimeControl13display_timesEv, i64 970}
!46 = !{ptr @_ZN9GameState19anchor_game_historyEv, ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, i64 10}
!47 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 894}
!48 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!49 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 12425414}
!50 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 32}
!51 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, ptr @_ZdlPv, i64 3026364}
!52 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_Znwm, i64 11362}
!53 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_, i64 11362}
!54 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZdlPv, i64 11352}
!55 = !{ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_, ptr @_Znwm, i64 81708}
!56 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_Znwm, i64 12002}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!60, !61, i64 8}
!65 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 12, i64 4, !66, i64 16, i64 8, !68, i64 24, i64 8, !68, i64 32, i64 2, !68, i64 36, i64 8, !68}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !62, i64 0}
!68 = !{!62, !62, i64 0}
!69 = !{!"function_entry_count", i64 10}
!70 = !{!61, !61, i64 0}
!71 = !{!60, !61, i64 16}
!72 = !{!"branch_weights", i32 11362, i32 29497}
!73 = !{!74, !67, i64 8088}
!74 = !{!"_ZTS9FastState", !75, i64 0, !88, i64 8072, !67, i64 8076, !67, i64 8080, !67, i64 8084, !67, i64 8088, !67, i64 8092, !67, i64 8096, !89, i64 8100, !90, i64 8196}
!75 = !{!"_ZTS9FullBoard", !76, i64 0, !87, i64 8056, !87, i64 8064}
!76 = !{!"_ZTS9FastBoard", !77, i64 0, !77, i64 882, !67, i64 1764, !67, i64 1768, !67, i64 1772, !78, i64 1776, !79, i64 3540, !79, i64 4424, !79, i64 5308, !79, i64 6192, !77, i64 7076, !80, i64 7960, !81, i64 7976, !82, i64 8008, !82, i64 8016, !83, i64 8024, !67, i64 8048}
!77 = !{!"_ZTSN5boost5arrayItLm441EEE", !62, i64 0}
!78 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !62, i64 0}
!79 = !{!"_ZTSN5boost5arrayItLm442EEE", !62, i64 0}
!80 = !{!"_ZTSN5boost5arrayIiLm4EEE", !62, i64 0}
!81 = !{!"_ZTSN5boost5arrayIiLm8EEE", !62, i64 0}
!82 = !{!"_ZTSN5boost5arrayIiLm2EEE", !62, i64 0}
!83 = !{!"_ZTSSt6vectorIiSaIiEE", !84, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!87 = !{!"long long", !62, i64 0}
!88 = !{!"float", !62, i64 0}
!89 = !{!"_ZTSN5boost5arrayIiLm24EEE", !62, i64 0}
!90 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !62, i64 0}
!91 = !{!76, !67, i64 8048}
!92 = !{!93, !67, i64 0}
!93 = !{!"_ZTSSt4pairIiiE", !67, i64 0, !67, i64 4}
!94 = !{!93, !67, i64 4}
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!"function_entry_count", i64 40849}
!99 = !{!76, !67, i64 1768}
!100 = !{!"branch_weights", i32 38896, i32 1953}
!101 = !{!"branch_weights", i32 10, i32 1943}
!102 = !{!74, !67, i64 8092}
!103 = !{!"branch_weights", i32 0, i32 40849}
!104 = !{!105, !107, i64 8}
!105 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !106, i64 0, !107, i64 8, !62, i64 16}
!106 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!107 = !{!"long", !62, i64 0}
!108 = !{!105, !61, i64 0}
!109 = !{!106, !61, i64 0}
!110 = !{!"function_entry_count", i64 970}
!111 = !{!"branch_weights", i32 10, i32 0}
!112 = distinct !{!112, !96, !97}
!113 = !{!"function_entry_count", i64 894}
!114 = !{!"branch_weights", i32 0, i32 894}
!115 = !{!116, !61, i64 16}
!116 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!117 = !{!"branch_weights", i32 894, i32 0}
!118 = !{!"VP", i32 1, i64 894, i64 513, i64 266, i64 257, i64 232, i64 129, i64 120, i64 65, i64 76}
!119 = !{!116, !61, i64 0}
!120 = !{!116, !61, i64 8}
!121 = !{!"function_entry_count", i64 447}
!122 = !{!"branch_weights", i32 0, i32 447}
!123 = !{!86, !61, i64 16}
!124 = !{!86, !61, i64 0}
!125 = !{!86, !61, i64 8}
!126 = !{!"branch_weights", i32 447, i32 0}
!127 = !{!"function_entry_count", i64 10252442}
!128 = !{!"branch_weights", i32 0, i32 10252442}
!129 = !{!"function_entry_count", i64 12425414}
!130 = !{!"branch_weights", i32 0, i32 27873636}
!131 = !{!"function_entry_count", i64 37847}
!132 = !{!107, !107, i64 0}
!133 = !{!"branch_weights", i32 32, i32 37815}
!134 = !{!"branch_weights", i32 36919, i32 928, i32 0}
!135 = !{!"VP", i32 1, i64 36919, i64 2, i64 29486, i64 3, i64 5287, i64 4, i64 1900, i64 8, i64 106}
!136 = !{!"function_entry_count", i64 12023}
!137 = !{!"branch_weights", i32 1, i32 12022}
!138 = !{!"branch_weights", i32 0, i32 1513182}
!139 = !{!"branch_weights", i32 1513182, i32 0}
!140 = !{!"branch_weights", i32 12022, i32 1501160}
!141 = distinct !{!141, !96, !97}
!142 = !{!"function_entry_count", i64 11362}
!143 = !{!"branch_weights", i32 0, i32 11362}
!144 = !{!"branch_weights", i32 11362, i32 0}
!145 = !{!"branch_weights", i32 1, i32 11361}
!146 = !{!"branch_weights", i32 1, i32 0}
!147 = !{!"branch_weights", i32 1381009, i32 0}
!148 = !{!"branch_weights", i32 11361, i32 1369648}
!149 = distinct !{!149, !96, !97}
!150 = !{!"branch_weights", i32 10, i32 11352}
!151 = !{!"function_entry_count", i64 40859}
!152 = !{!"branch_weights", i32 7788864, i32 0}
!153 = !{!"branch_weights", i32 1748, i32 15448222}
!154 = !{!"VP", i32 1, i64 40854, i64 513, i64 21065, i64 257, i64 10404, i64 129, i64 5689, i64 65, i64 2149}
!155 = !{!"function_entry_count", i64 12002}
!156 = !{!"branch_weights", i32 0, i32 23364}
!157 = distinct !{!157, !96, !97}
