; ModuleID = 'UCTSearch.cpp'
source_filename = "UCTSearch.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }
%class.Playout = type { i8, float, %"class.boost::array.19" }
%"class.boost::array.19" = type { [2 x %"class.std::bitset"] }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [7 x i64] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
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
%"class.boost::array.4" = type { [2 x i32] }
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
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.17", %"class.boost::array.18" }
%"class.boost::array.17" = type { [2 x i8] }
%"class.boost::array.18" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.UCTWorker = type { ptr, ptr, ptr }

$_ZN9GameStateC2ERKS_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$__clang_call_terminate = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

@.str = private unnamed_addr constant [50 x i8] c"%4s -> %7d (U: %4.1f%%) (R: %4.1f%%: %7d) PV: %s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"====================================\0A%d visits, score %4.1f%% (from %4.1f%%) PV: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Preferring not to pass.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Pass is the only acceptable move.\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Preferring to pass since it's %5.2f%% compared to %5.2f%%.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Passing loses :-(\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Avoiding pass because it loses.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"No alternative to passing.\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Passing wins :-)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Score looks bad. Resigning.\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Nodes: %d, Win: %4.1f%%, PV: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\0A%d visits, %d nodes\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN9UCTSearchC1ER9GameState = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN9UCTSearchC2ER9GameState

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9UCTSearchC2ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1) unnamed_addr #0 align 2 !prof !143 {
  store ptr %1, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  %4 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  tail call void @_ZN7UCTNodeC1Eii(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %4, i32 noundef -1)
  %5 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !148
  %6 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 3
  store i32 500000000, ptr %6, align 4, !tbaa !156
  %7 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %7, align 8, !tbaa !157
  %8 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  store i8 0, ptr %8, align 1, !tbaa !158
  %9 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !159
  %10 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 9
  store i8 0, ptr %10, align 8, !tbaa !160
  ret void
}

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare void @_ZN7UCTNodeC1Eii(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch11set_runflagEPb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !161 {
  %3 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !158
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind noalias writable sret(%class.Playout) align 8 %0, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !162 {
  %5 = alloca %class.Playout, align 8
  %6 = alloca %class.Playout, align 8
  %7 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %2)
  %8 = tail call noundef i64 @_ZN9FullBoard8get_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %2)
  tail call void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %9 = tail call noundef ptr @_ZN6TTable6get_TTEv()
  tail call void @_ZN6TTable4syncEyP7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %8, ptr noundef %3)
  %10 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  br i1 %10, label %25, label %11, !prof !163

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %13 = tail call noundef i32 @_ZNK7UCTNode9do_extendEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %16, label %15, !prof !164

15:                                               ; preds = %11
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true)
  br label %47

16:                                               ; preds = %11
  br i1 %10, label %25, label %17, !prof !165

17:                                               ; preds = %16
  %18 = getelementptr inbounds %class.UCTSearch, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !148
  %20 = icmp slt i32 %19, 5000000
  br i1 %20, label %21, label %25, !prof !166

21:                                               ; preds = %17
  %22 = tail call noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext false)
  %23 = load i32, ptr %18, align 8, !tbaa !148
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %18, align 8, !tbaa !148
  br label %25

25:                                               ; preds = %4, %21, %17, %16
  %26 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  br i1 %26, label %27, label %40, !prof !167

27:                                               ; preds = %25
  %28 = tail call noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %7)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30, !prof !168

30:                                               ; preds = %27
  %31 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %28)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %37, label %33, !prof !169

33:                                               ; preds = %30
  tail call void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %2, i32 noundef %31)
  %34 = tail call noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %2)
  br i1 %34, label %36, label %35, !prof !170

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #15
  call void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %5, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %5, i64 120, i1 false), !tbaa.struct !171
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #15
  br label %39

36:                                               ; preds = %33
  tail call void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56) %28)
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true)
  br label %39

37:                                               ; preds = %30
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %2)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #15
  call void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !171
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #15
  br label %39

38:                                               ; preds = %27
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true)
  br label %39

39:                                               ; preds = %37, %36, %35, %38
  call void @_ZN7UCTNode10updateRAVEER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %7)
  br label %47

40:                                               ; preds = %25
  %41 = getelementptr inbounds %class.UCTSearch, ptr %1, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !148
  %43 = icmp sgt i32 %42, 4999999
  br i1 %43, label %44, label %45, !prof !175

44:                                               ; preds = %40
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true)
  br label %47

45:                                               ; preds = %40
  %46 = tail call noundef float @_ZN9FastState21percentual_area_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %2)
  tail call void @_ZN7Playout15set_final_scoreEf(ptr noundef nonnull align 8 dereferenceable(120) %0, float noundef %46)
  br label %47

47:                                               ; preds = %39, %45, %44, %15
  %48 = icmp eq i32 %7, 0
  %49 = zext i1 %48 to i32
  call void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %49)
  %50 = call noundef ptr @_ZN6TTable6get_TTEv()
  call void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef %8, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef i64 @_ZN9FullBoard8get_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

declare void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

declare noundef ptr @_ZN6TTable6get_TTEv() local_unnamed_addr #1

declare void @_ZN6TTable4syncEyP7UCTNode(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef i32 @_ZNK7UCTNode9do_extendEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8388), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8388), i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

declare void @_ZN7UCTNode10updateRAVEER7Playouti(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #1

declare void @_ZN7Playout15set_final_scoreEf(ptr noundef nonnull align 8 dereferenceable(120), float noundef) local_unnamed_addr #1

declare noundef float @_ZN9FastState21percentual_area_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #1

declare void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %class.GameState, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %class.GameState, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
  %11 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %11, label %12, label %240, !prof !176

12:                                               ; preds = %3
  %13 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %13, i32 noundef %10)
  %14 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %15 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  br i1 %15, label %240, label %16, !prof !177

16:                                               ; preds = %12
  %17 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef %10)
  %18 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %19 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %22 = getelementptr inbounds %class.GameState, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %class.GameState, ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %24 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  br label %29

29:                                               ; preds = %16, %127
  %30 = phi ptr [ %14, %16 ], [ %80, %127 ]
  %31 = phi i32 [ 0, %16 ], [ %32, %127 ]
  %32 = add nuw nsw i32 %31, 1
  %33 = icmp eq i32 %31, 6
  br i1 %33, label %179, label %34, !prof !178

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %35 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
  call void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %35)
  %36 = load ptr, ptr %4, align 8, !tbaa !179
  %37 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %38 unwind label %129, !prof !182

38:                                               ; preds = %34
  %39 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %40 unwind label %129, !prof !182

40:                                               ; preds = %38
  %41 = icmp sgt i32 %39, 0
  br i1 %41, label %42, label %47, !prof !182

42:                                               ; preds = %40
  %43 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %30, i32 noundef %10)
          to label %44 unwind label %129, !prof !182

44:                                               ; preds = %42
  %45 = sitofp i32 %43 to float
  %46 = fdiv float %45, 1.000000e+01
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi float [ %46, %44 ], [ 0.000000e+00, %40 ]
  %49 = fpext float %48 to double
  %50 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %51 unwind label %129, !prof !182

51:                                               ; preds = %47
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %53, label %58, !prof !182

53:                                               ; preds = %51
  %54 = invoke noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %55 unwind label %129, !prof !182

55:                                               ; preds = %53
  %56 = sitofp i32 %54 to float
  %57 = fdiv float %56, 1.000000e+01
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi float [ %57, %55 ], [ 0.000000e+00, %51 ]
  %60 = invoke noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %61 unwind label %129, !prof !182

61:                                               ; preds = %58
  %62 = fpext float %59 to double
  %63 = load ptr, ptr %4, align 8, !tbaa !179
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, ptr noundef %36, i32 noundef %37, double noundef %49, double noundef %62, i32 noundef %60, ptr noundef %63)
          to label %64 unwind label %129, !prof !182

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %5) #15
  invoke void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %5, ptr noundef nonnull align 8 dereferenceable(8508) %1)
          to label %65 unwind label %131, !prof !182

65:                                               ; preds = %64
  %66 = invoke noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %67 unwind label %133, !prof !182

67:                                               ; preds = %65
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %5, i32 noundef %66)
          to label %68 unwind label %133, !prof !182

68:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %5, ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %69 unwind label %135, !prof !182

69:                                               ; preds = %68
  %70 = load ptr, ptr %6, align 8, !tbaa !179
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef %70)
          to label %71 unwind label %137, !prof !182

71:                                               ; preds = %69
  %72 = load ptr, ptr %6, align 8, !tbaa !179
  %73 = icmp eq ptr %72, %20
  br i1 %73, label %74, label %77, !prof !183

74:                                               ; preds = %71
  %75 = load i64, ptr %21, align 8, !tbaa !184
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  br label %78

77:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %72) #16
  br label %78

78:                                               ; preds = %74, %77
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1)
          to label %79 unwind label %133, !prof !182

79:                                               ; preds = %78
  %80 = invoke noundef ptr @_ZN7UCTNode11get_siblingEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %81 unwind label %133, !prof !182

81:                                               ; preds = %79
  %82 = load ptr, ptr %22, align 8, !tbaa !185
  %83 = load ptr, ptr %23, align 8, !tbaa !187
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %104, label %85, !prof !188

85:                                               ; preds = %81, %101
  %86 = phi ptr [ %102, %101 ], [ %82, %81 ]
  %87 = getelementptr inbounds %class.KoState, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !189
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90, !prof !191

90:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %88) #16
  br label %91

91:                                               ; preds = %90, %85
  %92 = getelementptr inbounds %class.KoState, ptr %86, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !189
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !191

95:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %93) #16
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr inbounds %class.FastBoard, ptr %86, i64 0, i32 16
  %98 = load ptr, ptr %97, align 8, !tbaa !192
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !194

100:                                              ; preds = %96
  call void @_ZdlPv(ptr noundef %98) #16
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %class.KoState, ptr %86, i64 1
  %103 = icmp eq ptr %102, %83
  br i1 %103, label %104, label %85, !prof !195, !llvm.loop !196

104:                                              ; preds = %101, %81
  %105 = load ptr, ptr %22, align 8, !tbaa !185
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107, !prof !199

107:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %105) #16
  br label %108

108:                                              ; preds = %104, %107
  %109 = load ptr, ptr %24, align 8, !tbaa !189
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !200

111:                                              ; preds = %108
  call void @_ZdlPv(ptr noundef %109) #16
  br label %112

112:                                              ; preds = %111, %108
  %113 = load ptr, ptr %25, align 8, !tbaa !189
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !200

115:                                              ; preds = %112
  call void @_ZdlPv(ptr noundef %113) #16
  br label %116

116:                                              ; preds = %115, %112
  %117 = load ptr, ptr %26, align 8, !tbaa !192
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119, !prof !182

119:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %117) #16
  br label %120

120:                                              ; preds = %116, %119
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %5) #15
  %121 = load ptr, ptr %4, align 8, !tbaa !179
  %122 = icmp eq ptr %121, %27
  br i1 %122, label %123, label %126, !prof !182

123:                                              ; preds = %120
  %124 = load i64, ptr %28, align 8, !tbaa !184
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %127

126:                                              ; preds = %120
  call void @_ZdlPv(ptr noundef %121) #16
  br label %127

127:                                              ; preds = %123, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  %128 = icmp eq ptr %80, null
  br i1 %128, label %179, label %29, !prof !201, !llvm.loop !202

129:                                              ; preds = %61, %58, %53, %47, %42, %38, %34
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %168

131:                                              ; preds = %64
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %166

133:                                              ; preds = %79, %78, %67, %65
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %149

135:                                              ; preds = %68
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %147

137:                                              ; preds = %69
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %6, align 8, !tbaa !179
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !184
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %147

146:                                              ; preds = %137
  call void @_ZdlPv(ptr noundef %139) #16
  br label %147

147:                                              ; preds = %146, %142, %135
  %148 = phi { ptr, i32 } [ %136, %135 ], [ %138, %142 ], [ %138, %146 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %149

149:                                              ; preds = %147, %133
  %150 = phi { ptr, i32 } [ %134, %133 ], [ %148, %147 ]
  %151 = getelementptr inbounds %class.GameState, ptr %5, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %151) #15
  %152 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !189
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  call void @_ZdlPv(ptr noundef %153) #16
  br label %156

156:                                              ; preds = %155, %149
  %157 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !189
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void @_ZdlPv(ptr noundef %158) #16
  br label %161

161:                                              ; preds = %160, %156
  %162 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %163 = load ptr, ptr %162, align 8, !tbaa !192
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %163) #16
  br label %166

166:                                              ; preds = %165, %161, %131
  %167 = phi { ptr, i32 } [ %132, %131 ], [ %150, %161 ], [ %150, %165 ]
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %5) #15
  br label %168

168:                                              ; preds = %166, %129
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %130, %129 ]
  %170 = load ptr, ptr %4, align 8, !tbaa !179
  %171 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %172 = icmp eq ptr %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !184
  %176 = icmp ult i64 %175, 16
  call void @llvm.assume(i1 %176)
  br label %178

177:                                              ; preds = %168
  call void @_ZdlPv(ptr noundef %170) #16
  br label %178

178:                                              ; preds = %173, %177
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br label %291

179:                                              ; preds = %29, %127
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %180 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  call void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %180)
  %181 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %182 unwind label %241, !prof !176

182:                                              ; preds = %179
  %183 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %184 unwind label %241, !prof !176

184:                                              ; preds = %182
  %185 = icmp sgt i32 %183, 0
  br i1 %185, label %186, label %192, !prof !176

186:                                              ; preds = %184
  %187 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef %10)
          to label %188 unwind label %241, !prof !176

188:                                              ; preds = %186
  %189 = sitofp i32 %187 to float
  %190 = fdiv float %189, 1.000000e+01
  %191 = fpext float %190 to double
  br label %192

192:                                              ; preds = %184, %188
  %193 = phi double [ %191, %188 ], [ 0.000000e+00, %184 ]
  %194 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %10)
          to label %195 unwind label %241, !prof !176

195:                                              ; preds = %192
  %196 = sitofp i32 %194 to float
  %197 = fdiv float %196, 1.000000e+01
  %198 = fpext float %197 to double
  %199 = load ptr, ptr %7, align 8, !tbaa !179
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2, i32 noundef %181, double noundef %193, double noundef %198, ptr noundef %199)
          to label %200 unwind label %241, !prof !176

200:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %8) #15
  invoke void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %8, ptr noundef nonnull align 8 dereferenceable(8508) %1)
          to label %201 unwind label %243, !prof !176

201:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %8, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %202 unwind label %245, !prof !176

202:                                              ; preds = %201
  %203 = load ptr, ptr %9, align 8, !tbaa !179
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef %203)
          to label %204 unwind label %247, !prof !176

204:                                              ; preds = %202
  %205 = load ptr, ptr %9, align 8, !tbaa !179
  %206 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %207 = icmp eq ptr %205, %206
  br i1 %207, label %208, label %212, !prof !203

208:                                              ; preds = %204
  %209 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !184
  %211 = icmp ult i64 %210, 16
  call void @llvm.assume(i1 %211)
  br label %213

212:                                              ; preds = %204
  call void @_ZdlPv(ptr noundef %205) #16
  br label %213

213:                                              ; preds = %208, %212
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1)
          to label %214 unwind label %259, !prof !176

214:                                              ; preds = %213
  %215 = getelementptr inbounds %class.GameState, ptr %8, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %215) #15
  %216 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !189
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219, !prof !177

219:                                              ; preds = %214
  call void @_ZdlPv(ptr noundef %217) #16
  br label %220

220:                                              ; preds = %219, %214
  %221 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !189
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224, !prof !177

224:                                              ; preds = %220
  call void @_ZdlPv(ptr noundef %222) #16
  br label %225

225:                                              ; preds = %224, %220
  %226 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 16
  %227 = load ptr, ptr %226, align 8, !tbaa !192
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229, !prof !176

229:                                              ; preds = %225
  call void @_ZdlPv(ptr noundef %227) #16
  br label %230

230:                                              ; preds = %225, %229
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %8) #15
  %231 = load ptr, ptr %7, align 8, !tbaa !179
  %232 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %233 = icmp eq ptr %231, %232
  br i1 %233, label %234, label %238, !prof !176

234:                                              ; preds = %230
  %235 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %236 = load i64, ptr %235, align 8, !tbaa !184
  %237 = icmp ult i64 %236, 16
  call void @llvm.assume(i1 %237)
  br label %239

238:                                              ; preds = %230
  call void @_ZdlPv(ptr noundef %231) #16
  br label %239

239:                                              ; preds = %234, %238
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %240

240:                                              ; preds = %239, %12, %3
  ret void

241:                                              ; preds = %195, %192, %186, %182, %179
  %242 = landingpad { ptr, i32 }
          cleanup
  br label %280

243:                                              ; preds = %200
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %278

245:                                              ; preds = %201
  %246 = landingpad { ptr, i32 }
          cleanup
  br label %257

247:                                              ; preds = %202
  %248 = landingpad { ptr, i32 }
          cleanup
  %249 = load ptr, ptr %9, align 8, !tbaa !179
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !184
  %255 = icmp ult i64 %254, 16
  call void @llvm.assume(i1 %255)
  br label %257

256:                                              ; preds = %247
  call void @_ZdlPv(ptr noundef %249) #16
  br label %257

257:                                              ; preds = %256, %252, %245
  %258 = phi { ptr, i32 } [ %246, %245 ], [ %248, %252 ], [ %248, %256 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %261

259:                                              ; preds = %213
  %260 = landingpad { ptr, i32 }
          cleanup
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi { ptr, i32 } [ %260, %259 ], [ %258, %257 ]
  %263 = getelementptr inbounds %class.GameState, ptr %8, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %263) #15
  %264 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !189
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %261
  call void @_ZdlPv(ptr noundef %265) #16
  br label %268

268:                                              ; preds = %267, %261
  %269 = getelementptr inbounds %class.KoState, ptr %8, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !189
  %271 = icmp eq ptr %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #16
  br label %273

273:                                              ; preds = %272, %268
  %274 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 16
  %275 = load ptr, ptr %274, align 8, !tbaa !192
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  call void @_ZdlPv(ptr noundef %275) #16
  br label %278

278:                                              ; preds = %277, %273, %243
  %279 = phi { ptr, i32 } [ %244, %243 ], [ %262, %273 ], [ %262, %277 ]
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %8) #15
  br label %280

280:                                              ; preds = %278, %241
  %281 = phi { ptr, i32 } [ %279, %278 ], [ %242, %241 ]
  %282 = load ptr, ptr %7, align 8, !tbaa !179
  %283 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %284 = icmp eq ptr %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %287 = load i64, ptr %286, align 8, !tbaa !184
  %288 = icmp ult i64 %287, 16
  call void @llvm.assume(i1 %288)
  br label %290

289:                                              ; preds = %280
  call void @_ZdlPv(ptr noundef %282) #16
  br label %290

290:                                              ; preds = %285, %289
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %291

291:                                              ; preds = %290, %178
  %292 = phi { ptr, i32 } [ %281, %290 ], [ %169, %178 ]
  resume { ptr, i32 } %292
}

declare void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

declare void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = load ptr, ptr %4, align 8, !tbaa !192
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %14 = icmp eq ptr %6, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %14, label %17, label %15, !prof !206

15:                                               ; preds = %2
  %16 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %11, ptr noundef null)
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ null, %2 ], [ %16, %15 ]
  store ptr %18, ptr %3, align 8, !tbaa !192
  store ptr %18, ptr %12, align 8, !tbaa !205
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  store ptr %19, ptr %13, align 8, !tbaa !207
  %20 = load ptr, ptr %4, align 8, !tbaa !144
  %21 = load ptr, ptr %5, align 8, !tbaa !144
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %20 to i64
  %24 = sub i64 %22, %23
  %25 = icmp eq ptr %21, %20
  br i1 %25, label %27, label %26, !prof !206

26:                                               ; preds = %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %18, ptr align 4 %20, i64 %24, i1 false)
  br label %27

27:                                               ; preds = %17, %26
  %28 = getelementptr inbounds i8, ptr %18, i64 %24
  store ptr %28, ptr %12, align 8, !tbaa !205
  %29 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %30 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %31 = load i32, ptr %30, align 8, !tbaa !208
  store i32 %31, ptr %29, align 8, !tbaa !208
  %32 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false)
  %34 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %34, ptr noundef nonnull align 8 dereferenceable(316) %35, i64 316, i1 false)
  %36 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %38 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !219
  %40 = load ptr, ptr %37, align 8, !tbaa !189
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = ashr exact i64 %43, 3
  %45 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %46 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %47 = icmp eq ptr %39, %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  br i1 %47, label %58, label %48, !prof !220

48:                                               ; preds = %27
  %49 = icmp ugt i64 %44, 1152921504606846975
  br i1 %49, label %50, label %56, !prof !221

50:                                               ; preds = %48
  %51 = icmp ugt i64 %44, 2305843009213693951
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %53 unwind label %106

53:                                               ; preds = %52
  unreachable

54:                                               ; preds = %50
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %55 unwind label %106

55:                                               ; preds = %54
  unreachable

56:                                               ; preds = %48
  %57 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #18
          to label %58 unwind label %106

58:                                               ; preds = %56, %27
  %59 = phi ptr [ null, %27 ], [ %57, %56 ]
  store ptr %59, ptr %36, align 8, !tbaa !189
  store ptr %59, ptr %45, align 8, !tbaa !219
  %60 = getelementptr inbounds i64, ptr %59, i64 %44
  store ptr %60, ptr %46, align 8, !tbaa !222
  %61 = load ptr, ptr %37, align 8, !tbaa !144
  %62 = load ptr, ptr %38, align 8, !tbaa !144
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %61 to i64
  %65 = sub i64 %63, %64
  %66 = icmp eq ptr %62, %61
  br i1 %66, label %68, label %67, !prof !220

67:                                               ; preds = %58
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %59, ptr align 8 %61, i64 %65, i1 false), !prof !223
  br label %68

68:                                               ; preds = %58, %67
  %69 = getelementptr inbounds i8, ptr %59, i64 %65
  store ptr %69, ptr %45, align 8, !tbaa !219
  %70 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %71 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %72 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !219
  %74 = load ptr, ptr %71, align 8, !tbaa !189
  %75 = ptrtoint ptr %73 to i64
  %76 = ptrtoint ptr %74 to i64
  %77 = sub i64 %75, %76
  %78 = ashr exact i64 %77, 3
  %79 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %80 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %81 = icmp eq ptr %73, %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  br i1 %81, label %92, label %82, !prof !220

82:                                               ; preds = %68
  %83 = icmp ugt i64 %78, 1152921504606846975
  br i1 %83, label %84, label %90, !prof !221

84:                                               ; preds = %82
  %85 = icmp ugt i64 %78, 2305843009213693951
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %87 unwind label %108

87:                                               ; preds = %86
  unreachable

88:                                               ; preds = %84
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %89 unwind label %108

89:                                               ; preds = %88
  unreachable

90:                                               ; preds = %82
  %91 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %77) #18
          to label %92 unwind label %108

92:                                               ; preds = %90, %68
  %93 = phi ptr [ null, %68 ], [ %91, %90 ]
  store ptr %93, ptr %70, align 8, !tbaa !189
  store ptr %93, ptr %79, align 8, !tbaa !219
  %94 = getelementptr inbounds i64, ptr %93, i64 %78
  store ptr %94, ptr %80, align 8, !tbaa !222
  %95 = load ptr, ptr %71, align 8, !tbaa !144
  %96 = load ptr, ptr %72, align 8, !tbaa !144
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %95 to i64
  %99 = sub i64 %97, %98
  %100 = icmp eq ptr %96, %95
  br i1 %100, label %102, label %101, !prof !220

101:                                              ; preds = %92
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %93, ptr align 8 %95, i64 %99, i1 false), !prof !223
  br label %102

102:                                              ; preds = %92, %101
  %103 = getelementptr inbounds i8, ptr %93, i64 %99
  store ptr %103, ptr %79, align 8, !tbaa !219
  %104 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %105 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %105)
          to label %122 unwind label %125, !prof !224

106:                                              ; preds = %56, %54, %52
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %113

108:                                              ; preds = %90, %88, %86
  %109 = landingpad { ptr, i32 }
          cleanup
  %110 = load ptr, ptr %36, align 8, !tbaa !189
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void @_ZdlPv(ptr noundef %110) #16
  br label %113

113:                                              ; preds = %112, %108, %106
  %114 = phi { ptr, i32 } [ %107, %106 ], [ %109, %108 ], [ %109, %112 ]
  %115 = load ptr, ptr %3, align 8, !tbaa !192
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113, %134
  %118 = phi ptr [ %135, %134 ], [ %115, %113 ]
  %119 = phi { ptr, i32 } [ %126, %134 ], [ %114, %113 ]
  tail call void @_ZdlPv(ptr noundef %118) #16
  br label %120

120:                                              ; preds = %117, %134, %113
  %121 = phi { ptr, i32 } [ %114, %113 ], [ %126, %134 ], [ %119, %117 ]
  resume { ptr, i32 } %121

122:                                              ; preds = %102
  %123 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  %124 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %123, ptr noundef nonnull align 8 dereferenceable(44) %124, i64 44, i1 false), !tbaa.struct !225
  ret void

125:                                              ; preds = %102
  %126 = landingpad { ptr, i32 }
          cleanup
  %127 = load ptr, ptr %70, align 8, !tbaa !189
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @_ZdlPv(ptr noundef %127) #16
  br label %130

130:                                              ; preds = %129, %125
  %131 = load ptr, ptr %36, align 8, !tbaa !189
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  tail call void @_ZdlPv(ptr noundef %131) #16
  br label %134

134:                                              ; preds = %133, %130
  %135 = load ptr, ptr %3, align 8, !tbaa !192
  %136 = icmp eq ptr %135, null
  br i1 %136, label %120, label %117
}

declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !227 {
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  br i1 %8, label %12, label %9, !prof !228

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %10, ptr %0, align 8, !tbaa !229
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %11, align 8, !tbaa !184
  store i8 0, ptr %10, align 8, !tbaa !174
  br label %112

12:                                               ; preds = %4
  %13 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %2)
  tail call void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %13)
  %14 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %15 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %20, !prof !230

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %18, ptr %0, align 8, !tbaa !229
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %19, align 8, !tbaa !184
  store i8 0, ptr %18, align 8, !tbaa !174
  br label %112

20:                                               ; preds = %12
  %21 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8388) %2, i32 noundef %21)
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %22, ptr %0, align 8, !tbaa !229
  %23 = load ptr, ptr %6, align 8, !tbaa !179
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 %25, ptr %5, align 8, !tbaa !231
  %26 = icmp ugt i64 %25, 15
  br i1 %26, label %27, label %31, !prof !232

27:                                               ; preds = %20
  %28 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %29 unwind label %77

29:                                               ; preds = %27
  store ptr %28, ptr %0, align 8, !tbaa !179
  %30 = load i64, ptr %5, align 8, !tbaa !231
  store i64 %30, ptr %22, align 8, !tbaa !174
  br label %31

31:                                               ; preds = %29, %20
  %32 = load ptr, ptr %0, align 8, !tbaa !179
  switch i64 %25, label %35 [
    i64 1, label %33
    i64 0, label %36
  ], !prof !233

33:                                               ; preds = %31
  %34 = load i8, ptr %23, align 1, !tbaa !174
  store i8 %34, ptr %32, align 1, !tbaa !174
  br label %36

35:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %23, i64 %25, i1 false), !prof !234
  br label %36

36:                                               ; preds = %31, %33, %35
  %37 = load i64, ptr %5, align 8, !tbaa !231
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %37, ptr %38, align 8, !tbaa !184
  %39 = load ptr, ptr %0, align 8, !tbaa !179
  %40 = getelementptr inbounds i8, ptr %39, i64 %37
  store i8 0, ptr %40, align 1, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %41 = load i64, ptr %38, align 8, !tbaa !184
  %42 = icmp eq i64 %41, 4611686018427387903
  br i1 %42, label %43, label %45, !prof !235

43:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #17
          to label %44 unwind label %79

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %36
  %46 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %47 unwind label %79

47:                                               ; preds = %45
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %2, i32 noundef %21)
          to label %48 unwind label %79, !prof !236

48:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %49 unwind label %81, !prof !236

49:                                               ; preds = %48
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !184
  %52 = load i64, ptr %38, align 8, !tbaa !184
  %53 = sub i64 4611686018427387903, %52
  %54 = icmp ult i64 %53, %51
  br i1 %54, label %55, label %57, !prof !235

55:                                               ; preds = %49
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #17
          to label %56 unwind label %83

56:                                               ; preds = %55
  unreachable

57:                                               ; preds = %49
  %58 = load ptr, ptr %7, align 8, !tbaa !179
  %59 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %58, i64 noundef %51)
          to label %60 unwind label %83, !prof !236

60:                                               ; preds = %57
  %61 = load ptr, ptr %7, align 8, !tbaa !179
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %67, !prof !237

64:                                               ; preds = %60
  %65 = load i64, ptr %50, align 8, !tbaa !184
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  br label %68

67:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %61) #16
  br label %68

68:                                               ; preds = %64, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %69 = load ptr, ptr %6, align 8, !tbaa !179
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %75, !prof !236

72:                                               ; preds = %68
  %73 = load i64, ptr %24, align 8, !tbaa !184
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  br label %76

75:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %69) #16
  br label %76

76:                                               ; preds = %72, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %112

77:                                               ; preds = %27
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %102

79:                                               ; preds = %45, %43, %47
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %94

81:                                               ; preds = %48
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %92

83:                                               ; preds = %57, %55
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %7, align 8, !tbaa !179
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, ptr %50, align 8, !tbaa !184
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  br label %92

91:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %85) #16
  br label %92

92:                                               ; preds = %91, %88, %81
  %93 = phi { ptr, i32 } [ %82, %81 ], [ %84, %88 ], [ %84, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %94

94:                                               ; preds = %92, %79
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %80, %79 ]
  %96 = load ptr, ptr %0, align 8, !tbaa !179
  %97 = icmp eq ptr %96, %22
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, ptr %38, align 8, !tbaa !184
  %100 = icmp ult i64 %99, 16
  call void @llvm.assume(i1 %100)
  br label %102

101:                                              ; preds = %94
  call void @_ZdlPv(ptr noundef %96) #16
  br label %102

102:                                              ; preds = %101, %98, %77
  %103 = phi { ptr, i32 } [ %78, %77 ], [ %95, %98 ], [ %95, %101 ]
  %104 = load ptr, ptr %6, align 8, !tbaa !179
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, ptr %24, align 8, !tbaa !184
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %111

110:                                              ; preds = %102
  call void @_ZdlPv(ptr noundef %104) #16
  br label %111

111:                                              ; preds = %107, %110
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  resume { ptr, i32 } %103

112:                                              ; preds = %17, %76, %9
  ret void
}

declare noundef ptr @_ZN7UCTNode11get_siblingEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN9UCTSearch13get_best_moveEi(ptr noundef nonnull align 8 dereferenceable(90) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !143 {
  %3 = load ptr, ptr %0, align 8, !tbaa !238
  %4 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !239
  %6 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %5)
  %7 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %8 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
  %9 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !177

11:                                               ; preds = %2
  %12 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %13 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %12)
  br i1 %13, label %110, label %14, !prof !177

14:                                               ; preds = %11, %2
  %15 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %16 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef %5)
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %17, 1.000000e+03
  %19 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %20 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %19)
  %21 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 4
  store float %18, ptr %21, align 8, !tbaa !157
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24, !prof !176

24:                                               ; preds = %14
  %25 = icmp eq i32 %8, -1
  br i1 %25, label %26, label %87

26:                                               ; preds = %24
  %27 = tail call noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.3)
  %30 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %27)
  %31 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %27)
  br i1 %31, label %87, label %32

32:                                               ; preds = %29
  %33 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %27, i32 noundef %5)
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, 1.000000e+03
  br label %87

36:                                               ; preds = %26
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.4)
  br label %87

37:                                               ; preds = %14
  %38 = load ptr, ptr %0, align 8, !tbaa !238
  %39 = tail call noundef i32 @_ZN9FastState13get_last_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %62, !prof !240

41:                                               ; preds = %37
  %42 = tail call noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44, !prof !241

44:                                               ; preds = %41
  %45 = tail call noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %46 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %45)
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %62, !prof !241

48:                                               ; preds = %44
  %49 = tail call noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %50 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %49, i32 noundef %5)
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %51, 1.000000e+03
  %53 = fcmp ogt float %52, 0x3FECCCCCC0000000
  %54 = fsub float %18, %52
  %55 = fcmp olt float %54, 0x3FA99999A0000000
  %56 = and i1 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = fmul float %52, 1.000000e+02
  %59 = fpext float %58 to double
  %60 = fmul float %18, 1.000000e+02
  %61 = fpext float %60 to double
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.5, double noundef %59, double noundef %61)
  br label %62

62:                                               ; preds = %48, %57, %41, %44, %37
  %63 = phi i32 [ %8, %44 ], [ %8, %41 ], [ %8, %37 ], [ -1, %57 ], [ %8, %48 ]
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %87, !prof !242

65:                                               ; preds = %62
  %66 = load ptr, ptr %0, align 8, !tbaa !238
  %67 = tail call noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %66)
  %68 = fcmp ogt float %67, 0.000000e+00
  %69 = icmp eq i32 %5, 1
  %70 = and i1 %69, %68
  br i1 %70, label %75, label %71, !prof !243

71:                                               ; preds = %65
  %72 = fcmp olt float %67, 0.000000e+00
  %73 = icmp eq i32 %5, 0
  %74 = and i1 %73, %72
  br i1 %74, label %75, label %86, !prof !244

75:                                               ; preds = %71, %65
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.6)
  %76 = tail call noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78, !prof !245

78:                                               ; preds = %75
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7)
  %79 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %76)
  %80 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %76)
  br i1 %80, label %87, label %81, !prof !245

81:                                               ; preds = %78
  %82 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %5)
  %83 = sitofp i32 %82 to float
  %84 = fdiv float %83, 1.000000e+03
  br label %87

85:                                               ; preds = %75
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8)
  br label %87

86:                                               ; preds = %71
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.9)
  br label %87

87:                                               ; preds = %86, %78, %81, %85, %36, %32, %29, %62, %24
  %88 = phi float [ %18, %24 ], [ %18, %62 ], [ %35, %32 ], [ %18, %36 ], [ 1.000000e+00, %29 ], [ %18, %86 ], [ %84, %81 ], [ %18, %85 ], [ 1.000000e+00, %78 ]
  %89 = phi i32 [ %8, %24 ], [ %63, %62 ], [ %30, %32 ], [ -1, %36 ], [ %30, %29 ], [ -1, %86 ], [ %79, %81 ], [ -1, %85 ], [ %79, %78 ]
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %110, label %91, !prof !240

91:                                               ; preds = %87
  %92 = and i32 %1, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %110, !prof !246

94:                                               ; preds = %91
  %95 = load ptr, ptr %0, align 8, !tbaa !238
  %96 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %95)
  %97 = load ptr, ptr %0, align 8, !tbaa !238
  %98 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %97)
  %99 = fcmp olt float %88, 0x3FC3333340000000
  %100 = icmp sgt i32 %20, 90
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %110, !prof !247

102:                                              ; preds = %94
  %103 = mul nsw i32 %98, %96
  %104 = sdiv i32 %103, 3
  %105 = load ptr, ptr %0, align 8, !tbaa !238
  %106 = getelementptr inbounds %class.FastState, ptr %105, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !248
  %108 = icmp sgt i32 %107, %104
  br i1 %108, label %109, label %110, !prof !254

109:                                              ; preds = %102
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10)
  br label %110

110:                                              ; preds = %87, %91, %109, %102, %94, %11
  %111 = phi i32 [ %8, %11 ], [ %89, %91 ], [ -1, %87 ], [ -2, %109 ], [ %89, %102 ], [ %89, %94 ]
  ret i32 %111
}

declare noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef i32 @_ZN9FastState13get_last_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9UCTSearch13dump_analysisEv(ptr noundef nonnull align 8 dereferenceable(90) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %2 = alloca %class.GameState, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %2) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(8508) %4)
  %5 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %7 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %8 unwind label %47, !prof !256

8:                                                ; preds = %1
  %9 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %6)
          to label %10 unwind label %49, !prof !256

10:                                               ; preds = %8
  %11 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %12 unwind label %49, !prof !256

12:                                               ; preds = %10
  %13 = sitofp i32 %9 to float
  %14 = fdiv float %13, 1.000000e+01
  %15 = fcmp ogt float %14, 0.000000e+00
  %16 = select i1 %15, float %14, float 0.000000e+00, !prof !257
  %17 = fcmp olt float %16, 1.000000e+02
  %18 = select i1 %17, float %16, float 1.000000e+02, !prof !258
  %19 = fpext float %18 to double
  %20 = load ptr, ptr %3, align 8, !tbaa !179
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.12, i32 noundef %11, double noundef %19, ptr noundef %20)
          to label %21 unwind label %49, !prof !256

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8, !tbaa !179
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %29, !prof !259

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !184
  %28 = icmp ult i64 %27, 16
  call void @llvm.assume(i1 %28)
  br label %30

29:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %22) #16
  br label %30

30:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  %31 = getelementptr inbounds %class.GameState, ptr %2, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #15
  %32 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !189
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !260

35:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %33) #16
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !189
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !260

40:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %38) #16
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %43 = load ptr, ptr %42, align 8, !tbaa !192
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !256

45:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %43) #16
  br label %46

46:                                               ; preds = %41, %45
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %2) #15
  ret void

47:                                               ; preds = %1
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %59

49:                                               ; preds = %12, %10, %8
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load ptr, ptr %3, align 8, !tbaa !179
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !184
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %51) #16
  br label %59

59:                                               ; preds = %58, %54, %47
  %60 = phi { ptr, i32 } [ %48, %47 ], [ %50, %54 ], [ %50, %58 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  %61 = getelementptr inbounds %class.GameState, ptr %2, i64 0, i32 1
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %61) #15
  %62 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %63) #16
  br label %66

66:                                               ; preds = %65, %59
  %67 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !189
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %68) #16
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %73) #16
  br label %76

76:                                               ; preds = %71, %75
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %2) #15
  resume { ptr, i32 } %60
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9UCTSearch10is_runningEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(90) %0) local_unnamed_addr #7 align 2 !prof !161 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !261, !range !262, !noundef !263
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9UCTWorkerclEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %class.KoState, align 8
  %3 = alloca %class.Playout, align 8
  %4 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 17
  %6 = getelementptr inbounds %class.FullBoard, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %class.FastState, ptr %2, i64 0, i32 1
  %8 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %9 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %class.UCTWorker, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %class.UCTWorker, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %51, %1
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %2, ptr noundef nonnull align 8 dereferenceable(8024) %13, i64 8024, i1 false)
  %14 = getelementptr inbounds %class.FastBoard, ptr %13, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %15 = getelementptr inbounds %class.FastBoard, ptr %13, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !208
  store i32 %16, ptr %5, align 8, !tbaa !208
  %17 = getelementptr inbounds %class.FullBoard, ptr %13, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %18 = getelementptr inbounds %class.FastState, ptr %13, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %7, ptr noundef nonnull align 8 dereferenceable(316) %18, i64 316, i1 false)
  %19 = getelementptr inbounds %class.KoState, ptr %13, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %20 unwind label %22

20:                                               ; preds = %12
  %21 = getelementptr inbounds %class.KoState, ptr %13, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %36 unwind label %24

22:                                               ; preds = %12
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %29

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = load ptr, ptr %8, align 8, !tbaa !189
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @_ZdlPv(ptr noundef %26) #16
  br label %29

29:                                               ; preds = %28, %24, %22
  %30 = phi { ptr, i32 } [ %23, %22 ], [ %25, %24 ], [ %25, %28 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !192
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @_ZdlPv(ptr noundef %31) #16
  br label %34

34:                                               ; preds = %29, %33, %70
  %35 = phi { ptr, i32 } [ %58, %70 ], [ %30, %33 ], [ %30, %29 ]
  resume { ptr, i32 } %35

36:                                               ; preds = %20
  %37 = load ptr, ptr %10, align 8, !tbaa !266
  %38 = load ptr, ptr %11, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #15
  invoke void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %3, ptr noundef nonnull align 8 dereferenceable(90) %37, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef %38)
          to label %39 unwind label %57

39:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #15
  %40 = load ptr, ptr %9, align 8, !tbaa !189
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @_ZdlPv(ptr noundef %40) #16
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr %8, align 8, !tbaa !189
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %44) #16
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr %4, align 8, !tbaa !192
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %48) #16
  br label %51

51:                                               ; preds = %47, %50
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #15
  %52 = load ptr, ptr %10, align 8, !tbaa !266
  %53 = getelementptr inbounds %class.UCTSearch, ptr %52, i64 0, i32 5
  %54 = load i8, ptr %53, align 4, !tbaa !261, !range !262, !noundef !263
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %12, !llvm.loop !268

56:                                               ; preds = %51
  ret void

57:                                               ; preds = %36
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #15
  %59 = load ptr, ptr %9, align 8, !tbaa !189
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call void @_ZdlPv(ptr noundef %59) #16
  br label %62

62:                                               ; preds = %61, %57
  %63 = load ptr, ptr %8, align 8, !tbaa !189
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #16
  br label %66

66:                                               ; preds = %65, %62
  %67 = load ptr, ptr %4, align 8, !tbaa !192
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %67) #16
  br label %70

70:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #15
  br label %34
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN9UCTSearch9get_scoreEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(90) %0) local_unnamed_addr #7 align 2 !prof !161 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !157
  ret float %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %4 = alloca %class.Time, align 4
  %5 = alloca %class.KoState, align 8
  %6 = alloca %class.Playout, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !238
  %8 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %4)
  %9 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 9
  %10 = load i8, ptr %9, align 8, !tbaa !160, !range !262, !noundef !263
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %43, !prof !176

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !238
  %14 = call noundef ptr @_ZN9GameState15get_timecontrolEv(ptr noundef nonnull align 8 dereferenceable(8508) %13)
  %15 = call noundef i32 @_ZN11TimeControl17max_time_for_moveEi(ptr noundef nonnull align 4 dereferenceable(44) %14, i32 noundef %1)
  %16 = load ptr, ptr %0, align 8, !tbaa !238
  %17 = call noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388) %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43, !prof !176

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8, !tbaa !238
  %21 = call noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %20)
  %22 = icmp eq i64 %21, -4227546272005961421
  br i1 %22, label %255, label %23, !prof !177

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 8, !tbaa !238
  %25 = call noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %24)
  %26 = icmp eq i64 %25, 1645110429106286179
  br i1 %26, label %27, label %32, !prof !177

27:                                               ; preds = %23
  %28 = call noundef ptr @_ZN6Random7get_RngEv()
  %29 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %28, i16 noundef zeroext 2)
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 82, i32 81
  br label %255

32:                                               ; preds = %23
  %33 = load ptr, ptr %0, align 8, !tbaa !238
  %34 = call noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %33)
  %35 = icmp eq i64 %34, -7724308731872248033
  br i1 %35, label %36, label %43, !prof !177

36:                                               ; preds = %32
  %37 = call noundef ptr @_ZN6Random7get_RngEv()
  %38 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %37, i16 noundef zeroext 3)
  %39 = icmp eq i32 %38, 1
  %40 = select i1 %39, i32 373, i32 374
  %41 = icmp eq i32 %38, 0
  %42 = select i1 %41, i32 352, i32 %40
  br label %255

43:                                               ; preds = %3, %12, %32
  %44 = load ptr, ptr %0, align 8, !tbaa !238
  %45 = call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %44)
  %46 = icmp eq i32 %45, 9
  %47 = select i1 %46, i32 10000, i32 4000, !prof !269
  %48 = select i1 %46, i32 2000, i32 1000, !prof !269
  %49 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN9GameState11start_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %49, i32 noundef %1)
  call void @_ZN12MCOwnerTable5clearEv()
  %50 = load ptr, ptr %0, align 8, !tbaa !238
  %51 = call noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388) %50, i32 noundef 64)
  %52 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %0, align 8, !tbaa !238
  %54 = call noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %52, ptr noundef nonnull align 8 dereferenceable(8388) %53, i1 noundef zeroext true)
  %55 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !148
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 8, !tbaa !148
  %58 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56) %52, ptr noundef nonnull align 8 dereferenceable(8440) %58)
  %59 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 5
  store i8 1, ptr %59, align 4, !tbaa !261
  %60 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %61 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %62 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %63 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 17
  %64 = getelementptr inbounds %class.FullBoard, ptr %5, i64 0, i32 1
  %65 = getelementptr inbounds %class.FastState, ptr %5, i64 0, i32 1
  %66 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1
  %67 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %68 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %69 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2
  %70 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %71 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %72 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 3
  %73 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  br label %74

74:                                               ; preds = %232, %43
  %75 = phi i32 [ 0, %43 ], [ %218, %232 ]
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %5) #15
  %76 = load ptr, ptr %0, align 8, !tbaa !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %5, ptr noundef nonnull align 8 dereferenceable(8024) %76, i64 8024, i1 false)
  %77 = getelementptr inbounds %class.FastBoard, ptr %76, i64 0, i32 16
  %78 = getelementptr inbounds %class.FastBoard, ptr %76, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !205
  %80 = load ptr, ptr %77, align 8, !tbaa !192
  %81 = ptrtoint ptr %79 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = ashr exact i64 %83, 2
  %85 = icmp eq ptr %79, %80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  br i1 %85, label %88, label %86, !prof !206

86:                                               ; preds = %74
  %87 = call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %60, i64 noundef %84, ptr noundef null)
  br label %88

88:                                               ; preds = %86, %74
  %89 = phi ptr [ null, %74 ], [ %87, %86 ]
  store ptr %89, ptr %60, align 8, !tbaa !192
  store ptr %89, ptr %61, align 8, !tbaa !205
  %90 = getelementptr inbounds i32, ptr %89, i64 %84
  store ptr %90, ptr %62, align 8, !tbaa !207
  %91 = load ptr, ptr %77, align 8, !tbaa !144
  %92 = load ptr, ptr %78, align 8, !tbaa !144
  %93 = ptrtoint ptr %92 to i64
  %94 = ptrtoint ptr %91 to i64
  %95 = sub i64 %93, %94
  %96 = icmp eq ptr %92, %91
  br i1 %96, label %98, label %97, !prof !206

97:                                               ; preds = %88
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %89, ptr align 4 %91, i64 %95, i1 false)
  br label %98

98:                                               ; preds = %88, %97
  %99 = getelementptr inbounds i8, ptr %89, i64 %95
  store ptr %99, ptr %61, align 8, !tbaa !205
  %100 = getelementptr inbounds %class.FastBoard, ptr %76, i64 0, i32 17
  %101 = load i32, ptr %100, align 8, !tbaa !208
  store i32 %101, ptr %63, align 8, !tbaa !208
  %102 = getelementptr inbounds %class.FullBoard, ptr %76, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %102, i64 16, i1 false)
  %103 = getelementptr inbounds %class.FastState, ptr %76, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %65, ptr noundef nonnull align 8 dereferenceable(316) %103, i64 316, i1 false)
  %104 = getelementptr inbounds %class.KoState, ptr %76, i64 0, i32 1
  %105 = getelementptr inbounds %class.KoState, ptr %76, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !219
  %107 = load ptr, ptr %104, align 8, !tbaa !189
  %108 = ptrtoint ptr %106 to i64
  %109 = ptrtoint ptr %107 to i64
  %110 = sub i64 %108, %109
  %111 = ashr exact i64 %110, 3
  %112 = icmp eq ptr %106, %107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  br i1 %112, label %123, label %113, !prof !220

113:                                              ; preds = %98
  %114 = icmp ugt i64 %111, 1152921504606846975
  br i1 %114, label %115, label %121, !prof !221

115:                                              ; preds = %113
  %116 = icmp ugt i64 %111, 2305843009213693951
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %118 unwind label %168

118:                                              ; preds = %117
  unreachable

119:                                              ; preds = %115
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %120 unwind label %168

120:                                              ; preds = %119
  unreachable

121:                                              ; preds = %113
  %122 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %110) #18
          to label %123 unwind label %166

123:                                              ; preds = %121, %98
  %124 = phi ptr [ null, %98 ], [ %122, %121 ]
  store ptr %124, ptr %66, align 8, !tbaa !189
  store ptr %124, ptr %67, align 8, !tbaa !219
  %125 = getelementptr inbounds i64, ptr %124, i64 %111
  store ptr %125, ptr %68, align 8, !tbaa !222
  %126 = load ptr, ptr %104, align 8, !tbaa !144
  %127 = load ptr, ptr %105, align 8, !tbaa !144
  %128 = ptrtoint ptr %127 to i64
  %129 = ptrtoint ptr %126 to i64
  %130 = sub i64 %128, %129
  %131 = icmp eq ptr %127, %126
  br i1 %131, label %133, label %132, !prof !220

132:                                              ; preds = %123
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %124, ptr align 8 %126, i64 %130, i1 false), !prof !270
  br label %133

133:                                              ; preds = %123, %132
  %134 = getelementptr inbounds i8, ptr %124, i64 %130
  store ptr %134, ptr %67, align 8, !tbaa !219
  %135 = getelementptr inbounds %class.KoState, ptr %76, i64 0, i32 2
  %136 = getelementptr inbounds %class.KoState, ptr %76, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !219
  %138 = load ptr, ptr %135, align 8, !tbaa !189
  %139 = ptrtoint ptr %137 to i64
  %140 = ptrtoint ptr %138 to i64
  %141 = sub i64 %139, %140
  %142 = ashr exact i64 %141, 3
  %143 = icmp eq ptr %137, %138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  br i1 %143, label %154, label %144, !prof !220

144:                                              ; preds = %133
  %145 = icmp ugt i64 %142, 1152921504606846975
  br i1 %145, label %146, label %152, !prof !221

146:                                              ; preds = %144
  %147 = icmp ugt i64 %142, 2305843009213693951
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %149 unwind label %172

149:                                              ; preds = %148
  unreachable

150:                                              ; preds = %146
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %151 unwind label %172

151:                                              ; preds = %150
  unreachable

152:                                              ; preds = %144
  %153 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %141) #18
          to label %154 unwind label %170

154:                                              ; preds = %152, %133
  %155 = phi ptr [ null, %133 ], [ %153, %152 ]
  store ptr %155, ptr %69, align 8, !tbaa !189
  store ptr %155, ptr %70, align 8, !tbaa !219
  %156 = getelementptr inbounds i64, ptr %155, i64 %142
  store ptr %156, ptr %71, align 8, !tbaa !222
  %157 = load ptr, ptr %135, align 8, !tbaa !144
  %158 = load ptr, ptr %136, align 8, !tbaa !144
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %157 to i64
  %161 = sub i64 %159, %160
  %162 = icmp eq ptr %158, %157
  br i1 %162, label %164, label %163, !prof !220

163:                                              ; preds = %154
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %155, ptr align 8 %157, i64 %161, i1 false), !prof !271
  br label %164

164:                                              ; preds = %154, %163
  %165 = getelementptr inbounds i8, ptr %155, i64 %161
  store ptr %165, ptr %70, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #15
  invoke void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8440) %5, ptr noundef nonnull %52)
          to label %186 unwind label %193, !prof !272

166:                                              ; preds = %121
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %179

168:                                              ; preds = %117, %119
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %179

170:                                              ; preds = %152
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %174

172:                                              ; preds = %148, %150
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi { ptr, i32 } [ %171, %170 ], [ %173, %172 ]
  %176 = load ptr, ptr %66, align 8, !tbaa !189
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %176) #16
  br label %179

179:                                              ; preds = %166, %168, %178, %174
  %180 = phi { ptr, i32 } [ %175, %174 ], [ %175, %178 ], [ %167, %166 ], [ %169, %168 ]
  %181 = load ptr, ptr %60, align 8, !tbaa !192
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call void @_ZdlPv(ptr noundef %181) #16
  br label %184

184:                                              ; preds = %179, %183, %248
  %185 = phi { ptr, i32 } [ %236, %248 ], [ %180, %183 ], [ %180, %179 ]
  resume { ptr, i32 } %185

186:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #15
  %187 = load i8, ptr %9, align 8, !tbaa !160, !range !262, !noundef !263
  %188 = icmp eq i8 %187, 0
  %189 = urem i32 %75, %48
  %190 = icmp eq i32 %189, 0
  br i1 %188, label %191, label %205, !prof !272

191:                                              ; preds = %186
  br i1 %190, label %192, label %197, !prof !273

192:                                              ; preds = %191
  invoke void @_ZN9UCTSearch13dump_analysisEv(ptr noundef nonnull align 8 dereferenceable(90) %0)
          to label %197 unwind label %195, !prof !256

193:                                              ; preds = %164
  %194 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #15
  br label %235

195:                                              ; preds = %206, %197, %192
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %235

197:                                              ; preds = %192, %191
  %198 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %52)
          to label %199 unwind label %195, !prof !272

199:                                              ; preds = %197
  %200 = load i32, ptr %72, align 4, !tbaa !156
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %216, !prof !272

202:                                              ; preds = %199
  %203 = load i8, ptr %73, align 1, !tbaa !158, !range !262, !noundef !263
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %216, label %211, !prof !272

205:                                              ; preds = %186
  br i1 %190, label %206, label %207

206:                                              ; preds = %205
  invoke void @_ZN9UCTSearch13dump_analysisEv(ptr noundef nonnull align 8 dereferenceable(90) %0)
          to label %207 unwind label %195

207:                                              ; preds = %206, %205
  %208 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  %209 = load i8, ptr %208, align 1, !tbaa !158, !range !262, !noundef !263
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %207, %202
  %212 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  %213 = load ptr, ptr %212, align 8, !tbaa !159
  %214 = load i8, ptr %213, align 1, !tbaa !172, !range !262, !noundef !263
  %215 = icmp ne i8 %214, 0
  br label %216

216:                                              ; preds = %211, %207, %199, %202
  %217 = phi i1 [ false, %199 ], [ true, %202 ], [ true, %207 ], [ %215, %211 ]
  %218 = add nuw nsw i32 %75, 1
  %219 = icmp ule i32 %75, %47
  %220 = and i1 %219, %217
  %221 = load ptr, ptr %69, align 8, !tbaa !189
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223, !prof !274

223:                                              ; preds = %216
  call void @_ZdlPv(ptr noundef %221) #16
  br label %224

224:                                              ; preds = %223, %216
  %225 = load ptr, ptr %66, align 8, !tbaa !189
  %226 = icmp eq ptr %225, null
  br i1 %226, label %228, label %227, !prof !274

227:                                              ; preds = %224
  call void @_ZdlPv(ptr noundef %225) #16
  br label %228

228:                                              ; preds = %227, %224
  %229 = load ptr, ptr %60, align 8, !tbaa !192
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231, !prof !275

231:                                              ; preds = %228
  call void @_ZdlPv(ptr noundef %229) #16
  br label %232

232:                                              ; preds = %228, %231
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %5) #15
  br i1 %220, label %74, label %233, !prof !276, !llvm.loop !277

233:                                              ; preds = %232
  store i8 0, ptr %59, align 4, !tbaa !261
  %234 = call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %52)
  br i1 %234, label %249, label %255, !prof !176

235:                                              ; preds = %195, %193
  %236 = phi { ptr, i32 } [ %196, %195 ], [ %194, %193 ]
  %237 = load ptr, ptr %69, align 8, !tbaa !189
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %237) #16
  br label %240

240:                                              ; preds = %239, %235
  %241 = load ptr, ptr %66, align 8, !tbaa !189
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  call void @_ZdlPv(ptr noundef %241) #16
  br label %244

244:                                              ; preds = %243, %240
  %245 = load ptr, ptr %60, align 8, !tbaa !192
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %245) #16
  br label %248

248:                                              ; preds = %244, %247
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %184

249:                                              ; preds = %233
  %250 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN9GameState10stop_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %250, i32 noundef %1)
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1)
  %251 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %251, ptr noundef nonnull align 8 dereferenceable(56) %52)
  %252 = call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %52)
  %253 = load i32, ptr %55, align 8, !tbaa !148
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.13, i32 noundef %252, i32 noundef %253)
  %254 = call noundef i32 @_ZN9UCTSearch13get_best_moveEi(ptr noundef nonnull align 8 dereferenceable(90) %0, i32 noundef %2)
  br label %255

255:                                              ; preds = %36, %249, %233, %27, %19
  %256 = phi i32 [ 60, %19 ], [ %31, %27 ], [ %254, %249 ], [ -1, %233 ], [ %42, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %256
}

declare void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef ptr @_ZN9GameState15get_timecontrolEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

declare noundef i32 @_ZN11TimeControl17max_time_for_moveEi(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

declare noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #1

declare noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12), i16 noundef zeroext) local_unnamed_addr #1

declare void @_ZN9GameState11start_clockEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

declare void @_ZN12MCOwnerTable5clearEv() local_unnamed_addr #1

declare noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

declare void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

declare void @_ZN9GameState10stop_clockEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9UCTSearch6ponderEv(ptr noundef nonnull align 8 dereferenceable(90) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %class.KoState, align 8
  %3 = alloca %class.Playout, align 8
  tail call void @_ZN12MCOwnerTable5clearEv()
  %4 = load ptr, ptr %0, align 8, !tbaa !238
  %5 = tail call noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388) %4, i32 noundef 64)
  %6 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 5
  store i8 1, ptr %6, align 4, !tbaa !261
  %7 = tail call noundef i32 @_ZN3SMP12get_num_cpusEv()
  %8 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %9 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 17
  %10 = getelementptr inbounds %class.FullBoard, ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %class.FastState, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 1
  %13 = getelementptr inbounds %class.KoState, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  br label %17

17:                                               ; preds = %63, %1
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %2) #15
  %18 = load ptr, ptr %0, align 8, !tbaa !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %2, ptr noundef nonnull align 8 dereferenceable(8024) %18, i64 8024, i1 false)
  %19 = getelementptr inbounds %class.FastBoard, ptr %18, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %19)
  %20 = getelementptr inbounds %class.FastBoard, ptr %18, i64 0, i32 17
  %21 = load i32, ptr %20, align 8, !tbaa !208
  store i32 %21, ptr %9, align 8, !tbaa !208
  %22 = getelementptr inbounds %class.FullBoard, ptr %18, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  %23 = getelementptr inbounds %class.FastState, ptr %18, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %11, ptr noundef nonnull align 8 dereferenceable(316) %23, i64 316, i1 false)
  %24 = getelementptr inbounds %class.KoState, ptr %18, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %25 unwind label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %class.KoState, ptr %18, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %41 unwind label %29

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %34

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %12, align 8, !tbaa !189
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @_ZdlPv(ptr noundef %31) #16
  br label %34

34:                                               ; preds = %33, %29, %27
  %35 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ], [ %30, %33 ]
  %36 = load ptr, ptr %8, align 8, !tbaa !192
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %36) #16
  br label %39

39:                                               ; preds = %34, %38, %82
  %40 = phi { ptr, i32 } [ %70, %82 ], [ %35, %38 ], [ %35, %34 ]
  resume { ptr, i32 } %40

41:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #15
  invoke void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %3, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull %14)
          to label %42 unwind label %69

42:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #15
  %43 = load ptr, ptr %13, align 8, !tbaa !189
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %43) #16
  br label %46

46:                                               ; preds = %45, %42
  %47 = load ptr, ptr %12, align 8, !tbaa !189
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %47) #16
  br label %50

50:                                               ; preds = %49, %46
  %51 = load ptr, ptr %8, align 8, !tbaa !192
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @_ZdlPv(ptr noundef %51) #16
  br label %54

54:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #15
  %55 = call noundef zeroext i1 @_ZN5Utils13input_pendingEv()
  br i1 %55, label %64, label %56

56:                                               ; preds = %54
  %57 = load i8, ptr %15, align 1, !tbaa !158, !range !262, !noundef !263
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %16, align 8, !tbaa !159
  %61 = load i8, ptr %60, align 1, !tbaa !172, !range !262, !noundef !263
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %56
  br label %17, !llvm.loop !278

64:                                               ; preds = %54, %59
  store i8 0, ptr %6, align 4, !tbaa !261
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1)
  %65 = load ptr, ptr %0, align 8, !tbaa !238
  call void @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %65, ptr noundef nonnull align 8 dereferenceable(56) %14)
  %66 = call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
  %67 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !148
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.13, i32 noundef %66, i32 noundef %68)
  ret void

69:                                               ; preds = %41
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #15
  %71 = load ptr, ptr %13, align 8, !tbaa !189
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  call void @_ZdlPv(ptr noundef %71) #16
  br label %74

74:                                               ; preds = %73, %69
  %75 = load ptr, ptr %12, align 8, !tbaa !189
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @_ZdlPv(ptr noundef %75) #16
  br label %78

78:                                               ; preds = %77, %74
  %79 = load ptr, ptr %8, align 8, !tbaa !192
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @_ZdlPv(ptr noundef %79) #16
  br label %82

82:                                               ; preds = %78, %81
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #15
  br label %39
}

declare noundef i32 @_ZN3SMP12get_num_cpusEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5Utils13input_pendingEv() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch15set_visit_limitEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !161 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 3
  %5 = select i1 %3, i32 500000000, i32 %1
  store i32 %5, ptr %4, align 4, !tbaa !156
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch13set_analyzingEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !161 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !160
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch9set_quietEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !161 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 1, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = load ptr, ptr %1, align 8, !tbaa !185
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8440
  %10 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %21, label %13, !prof !280

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, 1092816592044404
  br i1 %14, label %15, label %19, !prof !281

15:                                               ; preds = %13
  %16 = icmp ugt i64 %9, 2185633184088809
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

18:                                               ; preds = %15
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

19:                                               ; preds = %13
  %20 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #18
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ]
  store ptr %22, ptr %0, align 8, !tbaa !185
  store ptr %22, ptr %10, align 8, !tbaa !187
  %23 = getelementptr inbounds %class.KoState, ptr %22, i64 %9
  store ptr %23, ptr %11, align 8, !tbaa !282
  %24 = load ptr, ptr %1, align 8, !tbaa !144
  %25 = load ptr, ptr %3, align 8, !tbaa !144
  %26 = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %24, ptr %25, ptr noundef %22)
          to label %27 unwind label %28, !prof !224

27:                                               ; preds = %21
  store ptr %26, ptr %10, align 8, !tbaa !187
  ret void

28:                                               ; preds = %21
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %0, align 8, !tbaa !185
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @_ZdlPv(ptr noundef %30) #16
  br label %33

33:                                               ; preds = %32, %28
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !283 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !219
  %5 = load ptr, ptr %1, align 8, !tbaa !189
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %21, label %13, !prof !220

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, 1152921504606846975
  br i1 %14, label %15, label %19, !prof !221

15:                                               ; preds = %13
  %16 = icmp ugt i64 %9, 2305843009213693951
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

18:                                               ; preds = %15
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

19:                                               ; preds = %13
  %20 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #18
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ]
  store ptr %22, ptr %0, align 8, !tbaa !189
  store ptr %22, ptr %10, align 8, !tbaa !219
  %23 = getelementptr inbounds i64, ptr %22, i64 %9
  store ptr %23, ptr %11, align 8, !tbaa !222
  %24 = load ptr, ptr %1, align 8, !tbaa !144
  %25 = load ptr, ptr %3, align 8, !tbaa !144
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %24 to i64
  %28 = sub i64 %26, %27
  %29 = icmp eq ptr %25, %24
  br i1 %29, label %31, label %30, !prof !220

30:                                               ; preds = %21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %28, i1 false), !prof !284
  br label %31

31:                                               ; preds = %21, %30
  %32 = getelementptr inbounds i8, ptr %22, i64 %28
  store ptr %32, ptr %10, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !205
  %5 = load ptr, ptr %1, align 8, !tbaa !192
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !206

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !192
  store ptr %16, ptr %10, align 8, !tbaa !205
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !207
  %18 = load ptr, ptr %1, align 8, !tbaa !144
  %19 = load ptr, ptr %3, align 8, !tbaa !144
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24, !prof !206

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !286 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !287

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !161 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !204 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %137, label %5, !prof !288

5:                                                ; preds = %3, %107
  %6 = phi ptr [ %110, %107 ], [ %2, %3 ]
  %7 = phi ptr [ %109, %107 ], [ %0, %3 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %6, ptr noundef nonnull align 8 dereferenceable(8024) %7, i64 8024, i1 false)
  %8 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 16
  %9 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16
  %10 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !205
  %12 = load ptr, ptr %9, align 8, !tbaa !192
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 2
  %17 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %18 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %19 = icmp eq ptr %11, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %19, label %22, label %20, !prof !206

20:                                               ; preds = %5
  %21 = invoke noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %16, ptr noundef null)
          to label %22 unwind label %130

22:                                               ; preds = %20, %5
  %23 = phi ptr [ null, %5 ], [ %21, %20 ]
  store ptr %23, ptr %8, align 8, !tbaa !192
  store ptr %23, ptr %17, align 8, !tbaa !205
  %24 = getelementptr inbounds i32, ptr %23, i64 %16
  store ptr %24, ptr %18, align 8, !tbaa !207
  %25 = load ptr, ptr %9, align 8, !tbaa !144
  %26 = load ptr, ptr %10, align 8, !tbaa !144
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %25 to i64
  %29 = sub i64 %27, %28
  %30 = icmp eq ptr %26, %25
  br i1 %30, label %32, label %31, !prof !206

31:                                               ; preds = %22
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %23, ptr align 4 %25, i64 %29, i1 false)
  br label %32

32:                                               ; preds = %22, %31
  %33 = getelementptr inbounds i8, ptr %23, i64 %29
  store ptr %33, ptr %17, align 8, !tbaa !205
  %34 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 17
  %35 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 17
  %36 = load i32, ptr %35, align 8, !tbaa !208
  store i32 %36, ptr %34, align 8, !tbaa !208
  %37 = getelementptr inbounds %class.FullBoard, ptr %6, i64 0, i32 1
  %38 = getelementptr inbounds %class.FullBoard, ptr %7, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false)
  %39 = getelementptr inbounds %class.FastState, ptr %6, i64 0, i32 1
  %40 = getelementptr inbounds %class.FastState, ptr %7, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %39, ptr noundef nonnull align 8 dereferenceable(316) %40, i64 316, i1 false)
  %41 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 1
  %42 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1
  %43 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !219
  %45 = load ptr, ptr %42, align 8, !tbaa !189
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %51 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %52 = icmp eq ptr %44, %45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br i1 %52, label %63, label %53, !prof !220

53:                                               ; preds = %32
  %54 = icmp ugt i64 %49, 1152921504606846975
  br i1 %54, label %55, label %61, !prof !221

55:                                               ; preds = %53
  %56 = icmp ugt i64 %49, 2305843009213693951
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %58 unwind label %114

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %55
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %60 unwind label %114

60:                                               ; preds = %59
  unreachable

61:                                               ; preds = %53
  %62 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %48) #18
          to label %63 unwind label %112

63:                                               ; preds = %61, %32
  %64 = phi ptr [ null, %32 ], [ %62, %61 ]
  store ptr %64, ptr %41, align 8, !tbaa !189
  store ptr %64, ptr %50, align 8, !tbaa !219
  %65 = getelementptr inbounds i64, ptr %64, i64 %49
  store ptr %65, ptr %51, align 8, !tbaa !222
  %66 = load ptr, ptr %42, align 8, !tbaa !144
  %67 = load ptr, ptr %43, align 8, !tbaa !144
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %66 to i64
  %70 = sub i64 %68, %69
  %71 = icmp eq ptr %67, %66
  br i1 %71, label %73, label %72, !prof !220

72:                                               ; preds = %63
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %64, ptr align 8 %66, i64 %70, i1 false), !prof !289
  br label %73

73:                                               ; preds = %63, %72
  %74 = getelementptr inbounds i8, ptr %64, i64 %70
  store ptr %74, ptr %50, align 8, !tbaa !219
  %75 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 2
  %76 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2
  %77 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !219
  %79 = load ptr, ptr %76, align 8, !tbaa !189
  %80 = ptrtoint ptr %78 to i64
  %81 = ptrtoint ptr %79 to i64
  %82 = sub i64 %80, %81
  %83 = ashr exact i64 %82, 3
  %84 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %85 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %86 = icmp eq ptr %78, %79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, i8 0, i64 24, i1 false)
  br i1 %86, label %97, label %87, !prof !220

87:                                               ; preds = %73
  %88 = icmp ugt i64 %83, 1152921504606846975
  br i1 %88, label %89, label %95, !prof !221

89:                                               ; preds = %87
  %90 = icmp ugt i64 %83, 2305843009213693951
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %92 unwind label %118

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %89
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %94 unwind label %118

94:                                               ; preds = %93
  unreachable

95:                                               ; preds = %87
  %96 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %82) #18
          to label %97 unwind label %116

97:                                               ; preds = %95, %73
  %98 = phi ptr [ null, %73 ], [ %96, %95 ]
  store ptr %98, ptr %75, align 8, !tbaa !189
  store ptr %98, ptr %84, align 8, !tbaa !219
  %99 = getelementptr inbounds i64, ptr %98, i64 %83
  store ptr %99, ptr %85, align 8, !tbaa !222
  %100 = load ptr, ptr %76, align 8, !tbaa !144
  %101 = load ptr, ptr %77, align 8, !tbaa !144
  %102 = ptrtoint ptr %101 to i64
  %103 = ptrtoint ptr %100 to i64
  %104 = sub i64 %102, %103
  %105 = icmp eq ptr %101, %100
  br i1 %105, label %107, label %106, !prof !220

106:                                              ; preds = %97
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %98, ptr align 8 %100, i64 %104, i1 false), !prof !289
  br label %107

107:                                              ; preds = %97, %106
  %108 = getelementptr inbounds i8, ptr %98, i64 %104
  store ptr %108, ptr %84, align 8, !tbaa !219
  %109 = getelementptr inbounds %class.KoState, ptr %7, i64 1
  %110 = getelementptr inbounds %class.KoState, ptr %6, i64 1
  %111 = icmp eq ptr %109, %1
  br i1 %111, label %137, label %5, !prof !290, !llvm.loop !291

112:                                              ; preds = %61
  %113 = landingpad { ptr, i32 }
          catch ptr null
  br label %125

114:                                              ; preds = %57, %59
  %115 = landingpad { ptr, i32 }
          catch ptr null
  br label %125

116:                                              ; preds = %95
  %117 = landingpad { ptr, i32 }
          catch ptr null
  br label %120

118:                                              ; preds = %91, %93
  %119 = landingpad { ptr, i32 }
          catch ptr null
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi { ptr, i32 } [ %117, %116 ], [ %119, %118 ]
  %122 = load ptr, ptr %41, align 8, !tbaa !189
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @_ZdlPv(ptr noundef %122) #16
  br label %125

125:                                              ; preds = %112, %114, %124, %120
  %126 = phi { ptr, i32 } [ %121, %120 ], [ %121, %124 ], [ %113, %112 ], [ %115, %114 ]
  %127 = load ptr, ptr %8, align 8, !tbaa !192
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  tail call void @_ZdlPv(ptr noundef %127) #16
  br label %132

130:                                              ; preds = %20
  %131 = landingpad { ptr, i32 }
          catch ptr null
  br label %132

132:                                              ; preds = %125, %129, %130
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %126, %129 ], [ %126, %125 ]
  %134 = extractvalue { ptr, i32 } %133, 0
  %135 = tail call ptr @__cxa_begin_catch(ptr %134) #15
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %2, ptr noundef %6)
          to label %136 unwind label %139

136:                                              ; preds = %132
  invoke void @__cxa_rethrow() #17
          to label %145 unwind label %139

137:                                              ; preds = %107, %3
  %138 = phi ptr [ %2, %3 ], [ %110, %107 ]
  ret ptr %138

139:                                              ; preds = %132, %136
  %140 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %141 unwind label %142

141:                                              ; preds = %139
  resume { ptr, i32 } %140

142:                                              ; preds = %139
  %143 = landingpad { ptr, i32 }
          catch ptr null
  %144 = extractvalue { ptr, i32 } %143, 0
  tail call void @__clang_call_terminate(ptr %144) #19
  unreachable

145:                                              ; preds = %136
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %23, label %4, !prof !188

4:                                                ; preds = %2, %20
  %5 = phi ptr [ %21, %20 ], [ %0, %2 ]
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !191

9:                                                ; preds = %4
  tail call void @_ZdlPv(ptr noundef %7) #16
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %class.KoState, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !189
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !191

14:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %12) #16
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !192
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !194

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %17) #16
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %4, !prof !195, !llvm.loop !196

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !292 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %25, label %6, !prof !188

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %2, %1 ]
  %8 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !191

11:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #16
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %class.KoState, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !191

16:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %14) #16
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !194

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #16
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %class.KoState, ptr %7, i64 1
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %6, !prof !195, !llvm.loop !196

25:                                               ; preds = %22, %1
  %26 = load ptr, ptr %0, align 8, !tbaa !185
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !199

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #16
  br label %29

29:                                               ; preds = %25, %28
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!142}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!35 = !{ptr @_ZN9UCTSearchC2ER9GameState, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!36 = !{ptr @_ZN9UCTSearchC2ER9GameState, ptr @_ZN7UCTNodeC1Eii, i64 970}
!37 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9FastState11get_to_moveEv, i64 38472780}
!38 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9FullBoard8get_hashEv, i64 38472780}
!39 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7PlayoutC1Ev, i64 38472780}
!40 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN6TTable6get_TTEv, i64 76945560}
!41 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN6TTable4syncEyP7UCTNode, i64 38472780}
!42 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode12has_childrenEv, i64 70911517}
!43 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 6234979}
!44 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode9do_extendEv, i64 6234979}
!45 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7Playout3runER9FastStateb, i64 6034445}
!46 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode15create_childrenER9FastStateb, i64 200936}
!47 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode16uct_select_childEi, i64 32407242}
!48 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode8get_moveEv, i64 32407242}
!49 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7KoState9play_moveEi, i64 30799294}
!50 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7KoState7superkoEv, i64 30799294}
!51 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, i64 32406840}
!52 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode10invalidateEv, i64 402}
!53 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7KoState9play_passEv, i64 1607948}
!54 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode10updateRAVEER7Playouti, i64 32407242}
!55 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9FastState21percentual_area_scoreEv, i64 31495}
!56 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7Playout15set_final_scoreEf, i64 31495}
!57 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode6updateER7Playouti, i64 38472780}
!58 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN6TTable6updateEyPK7UCTNode, i64 38472780}
!59 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!60 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode12has_childrenEv, i64 970}
!61 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN7UCTNode13sort_childrenEi, i64 970}
!62 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN7UCTNode15get_first_childEv, i64 970}
!63 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode11first_visitEv, i64 970}
!64 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode11get_winrateEi, i64 8731}
!65 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 20373}
!66 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode8get_moveEv, i64 13582}
!67 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9FastState12move_to_textB5cxx11Ei, i64 6791}
!68 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode12get_raverateEv, i64 5821}
!69 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode14get_ravevisitsEv, i64 5821}
!70 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN5Utils8myprintfEPKcz, i64 20373}
!71 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9GameStateC2ERKS_, i64 6791}
!72 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9GameState9play_moveEi, i64 5821}
!73 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, i64 6791}
!74 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZdlPv, i64 1485511}
!75 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN7UCTNode11get_siblingEv, i64 5821}
!76 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 970}
!77 = !{ptr @_ZN9GameStateC2ERKS_, ptr @_Znwm, i64 24002}
!78 = !{ptr @_ZN9GameStateC2ERKS_, ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, i64 12002}
!79 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNK7UCTNode12has_childrenEv, i64 45626}
!80 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9FastState11get_to_moveEv, i64 45223}
!81 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN7UCTNode13sort_childrenEi, i64 45223}
!82 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN7UCTNode15get_first_childEv, i64 45223}
!83 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 45223}
!84 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNK7UCTNode8get_moveEv, i64 33624}
!85 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9FastState12move_to_textB5cxx11Ei, i64 33624}
!86 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 28}
!87 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 67248}
!88 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9GameState9play_moveEi, i64 33624}
!89 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, i64 33624}
!90 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZdlPv, i64 9180}
!91 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode13sort_childrenEi, i64 970}
!92 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode15get_first_childEv, i64 4850}
!93 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode8get_moveEv, i64 976}
!94 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode11first_visitEv, i64 976}
!95 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode11get_winrateEi, i64 976}
!96 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 971}
!97 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN9FastState13get_last_moveEv, i64 970}
!98 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode14get_pass_childEv, i64 2}
!99 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN9FastState11final_scoreEv, i64 7}
!100 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN5Utils8myprintfEPKcz, i64 23}
!101 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode16get_nopass_childEv, i64 6}
!102 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN9FastBoard13get_boardsizeEv, i64 1938}
!103 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN9GameStateC2ERKS_, i64 5214}
!104 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, i64 5214}
!105 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNK7UCTNode11get_winrateEi, i64 5214}
!106 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNK7UCTNode10get_visitsEv, i64 5214}
!107 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN5Utils8myprintfEPKcz, i64 5214}
!108 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZdlPv, i64 11658}
!109 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 5214}
!110 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN4TimeC1Ev, i64 970}
!111 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9GameState15get_timecontrolEv, i64 970}
!112 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN11TimeControl17max_time_for_moveEi, i64 970}
!113 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9FastState12get_handicapEv, i64 970}
!114 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9FullBoard11get_ko_hashEv, i64 2910}
!115 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9FastBoard13get_boardsizeEv, i64 970}
!116 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9GameState11start_clockEi, i64 970}
!117 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN12MCOwnerTable5clearEv, i64 970}
!118 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7Playout8mc_ownerER9FastStatei, i64 970}
!119 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7UCTNode15create_childrenER9FastStateb, i64 970}
!120 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7UCTNode13kill_superkosER7KoState, i64 970}
!121 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_Znwm, i64 11987402}
!122 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, i64 5994371}
!123 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZdlPv, i64 17855228}
!124 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch13dump_analysisEv, i64 5152}
!125 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZNK7UCTNode10get_visitsEv, i64 5995330}
!126 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZNK7UCTNode12has_childrenEv, i64 959}
!127 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9GameState10stop_clockEi, i64 959}
!128 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN5Utils8myprintfEPKcz, i64 1918}
!129 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, i64 959}
!130 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch13get_best_moveEi, i64 959}
!131 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_Znwm, i64 12002}
!132 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 12002}
!133 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_Znwm, i64 349558}
!134 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!135 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_Znwm, i64 2943628}
!136 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZdlPv, i64 2}
!137 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @__cxa_begin_catch, i64 3}
!138 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, i64 3}
!139 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @__cxa_rethrow, i64 1}
!140 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @__cxa_end_catch, i64 3}
!141 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZdlPv, i64 1568087}
!142 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!143 = !{!"function_entry_count", i64 970}
!144 = !{!145, !145, i64 0}
!145 = !{!"any pointer", !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C++ TBAA"}
!148 = !{!149, !151, i64 64}
!149 = !{!"_ZTS9UCTSearch", !145, i64 0, !150, i64 8, !151, i64 64, !151, i64 68, !155, i64 72, !152, i64 76, !152, i64 77, !145, i64 80, !152, i64 88, !152, i64 89}
!150 = !{!"_ZTS7UCTNode", !145, i64 0, !145, i64 8, !151, i64 16, !151, i64 20, !151, i64 24, !151, i64 28, !151, i64 32, !152, i64 36, !151, i64 40, !153, i64 48}
!151 = !{!"int", !146, i64 0}
!152 = !{!"bool", !146, i64 0}
!153 = !{!"_ZTSN3SMP5MutexE", !154, i64 0}
!154 = !{!"long", !146, i64 0}
!155 = !{!"float", !146, i64 0}
!156 = !{!149, !151, i64 68}
!157 = !{!149, !155, i64 72}
!158 = !{!149, !152, i64 77}
!159 = !{!149, !145, i64 80}
!160 = !{!149, !152, i64 88}
!161 = !{!"function_entry_count", i64 0}
!162 = !{!"function_entry_count", i64 38472780}
!163 = !{!"branch_weights", i32 32237801, i32 6234979}
!164 = !{!"branch_weights", i32 200936, i32 6034043}
!165 = !{!"branch_weights", i32 0, i32 200936}
!166 = !{!"branch_weights", i32 200936, i32 0}
!167 = !{!"branch_weights", i32 32407242, i32 31495}
!168 = !{!"branch_weights", i32 0, i32 32407242}
!169 = !{!"branch_weights", i32 1607948, i32 30799294}
!170 = !{!"branch_weights", i32 402, i32 30798892}
!171 = !{i64 0, i64 1, !172, i64 4, i64 4, !173, i64 8, i64 112, !174}
!172 = !{!152, !152, i64 0}
!173 = !{!155, !155, i64 0}
!174 = !{!146, !146, i64 0}
!175 = !{!"branch_weights", i32 0, i32 31495}
!176 = !{!"branch_weights", i32 970, i32 0}
!177 = !{!"branch_weights", i32 0, i32 970}
!178 = !{!"branch_weights", i32 966, i32 5818}
!179 = !{!180, !145, i64 0}
!180 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !181, i64 0, !154, i64 8, !146, i64 16}
!181 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !145, i64 0}
!182 = !{!"branch_weights", i32 5818, i32 0}
!183 = !{!"branch_weights", i32 5410, i32 408}
!184 = !{!180, !154, i64 8}
!185 = !{!186, !145, i64 0}
!186 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!187 = !{!186, !145, i64 8}
!188 = !{!"branch_weights", i32 1, i32 12022}
!189 = !{!190, !145, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!191 = !{!"branch_weights", i32 0, i32 1513182}
!192 = !{!193, !145, i64 0}
!193 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!194 = !{!"branch_weights", i32 1513182, i32 0}
!195 = !{!"branch_weights", i32 12022, i32 1501160}
!196 = distinct !{!196, !197, !198}
!197 = !{!"llvm.loop.mustprogress"}
!198 = !{!"llvm.loop.unroll.disable"}
!199 = !{!"branch_weights", i32 11, i32 12012}
!200 = !{!"branch_weights", i32 0, i32 5818}
!201 = !{!"branch_weights", i32 4, i32 6780}
!202 = distinct !{!202, !197, !198}
!203 = !{!"branch_weights", i32 601, i32 369}
!204 = !{!"function_entry_count", i64 12002}
!205 = !{!193, !145, i64 8}
!206 = !{!"branch_weights", i32 7788864, i32 0}
!207 = !{!193, !145, i64 16}
!208 = !{!209, !151, i64 8048}
!209 = !{!"_ZTS9FastBoard", !210, i64 0, !210, i64 882, !151, i64 1764, !151, i64 1768, !151, i64 1772, !211, i64 1776, !212, i64 3540, !212, i64 4424, !212, i64 5308, !212, i64 6192, !210, i64 7076, !213, i64 7960, !214, i64 7976, !215, i64 8008, !215, i64 8016, !216, i64 8024, !151, i64 8048}
!210 = !{!"_ZTSN5boost5arrayItLm441EEE", !146, i64 0}
!211 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !146, i64 0}
!212 = !{!"_ZTSN5boost5arrayItLm442EEE", !146, i64 0}
!213 = !{!"_ZTSN5boost5arrayIiLm4EEE", !146, i64 0}
!214 = !{!"_ZTSN5boost5arrayIiLm8EEE", !146, i64 0}
!215 = !{!"_ZTSN5boost5arrayIiLm2EEE", !146, i64 0}
!216 = !{!"_ZTSSt6vectorIiSaIiEE", !217, i64 0}
!217 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !218, i64 0}
!218 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !193, i64 0}
!219 = !{!190, !145, i64 8}
!220 = !{!"branch_weights", i32 1748, i32 15448222}
!221 = !{!"branch_weights", i32 0, i32 27873636}
!222 = !{!190, !145, i64 16}
!223 = !{!"VP", i32 1, i64 12000, i64 513, i64 6187, i64 257, i64 3056, i64 129, i64 1671, i64 65, i64 631}
!224 = !{!"branch_weights", i32 12002, i32 0}
!225 = !{i64 0, i64 4, !226, i64 4, i64 4, !226, i64 8, i64 4, !226, i64 12, i64 4, !226, i64 16, i64 8, !174, i64 24, i64 8, !174, i64 32, i64 2, !174, i64 36, i64 8, !174}
!226 = !{!151, !151, i64 0}
!227 = !{!"function_entry_count", i64 45626}
!228 = !{!"branch_weights", i32 45223, i32 403}
!229 = !{!181, !145, i64 0}
!230 = !{!"branch_weights", i32 11599, i32 33624}
!231 = !{!154, !154, i64 0}
!232 = !{!"branch_weights", i32 32, i32 37815}
!233 = !{!"branch_weights", i32 36919, i32 928, i32 0}
!234 = !{!"VP", i32 1, i64 32799, i64 2, i64 26195, i64 3, i64 4697, i64 4, i64 1687, i64 8, i64 94}
!235 = !{!"branch_weights", i32 0, i32 33624}
!236 = !{!"branch_weights", i32 33624, i32 0}
!237 = !{!"branch_weights", i32 24444, i32 9180}
!238 = !{!149, !145, i64 0}
!239 = !{!209, !151, i64 1768}
!240 = !{!"branch_weights", i32 1, i32 969}
!241 = !{!"branch_weights", i32 0, i32 1}
!242 = !{!"branch_weights", i32 7, i32 963}
!243 = !{!"branch_weights", i32 5, i32 2}
!244 = !{!"branch_weights", i32 1, i32 1}
!245 = !{!"branch_weights", i32 0, i32 6}
!246 = !{!"branch_weights", i32 969, i32 0}
!247 = !{!"branch_weights", i32 10, i32 959}
!248 = !{!249, !151, i64 8088}
!249 = !{!"_ZTS9FastState", !250, i64 0, !155, i64 8072, !151, i64 8076, !151, i64 8080, !151, i64 8084, !151, i64 8088, !151, i64 8092, !151, i64 8096, !252, i64 8100, !253, i64 8196}
!250 = !{!"_ZTS9FullBoard", !209, i64 0, !251, i64 8056, !251, i64 8064}
!251 = !{!"long long", !146, i64 0}
!252 = !{!"_ZTSN5boost5arrayIiLm24EEE", !146, i64 0}
!253 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !146, i64 0}
!254 = !{!"branch_weights", i32 10, i32 0}
!255 = !{!"function_entry_count", i64 5214}
!256 = !{!"branch_weights", i32 5214, i32 0}
!257 = !{!"branch_weights", i32 5207, i32 7}
!258 = !{!"branch_weights", i32 5210, i32 4}
!259 = !{!"branch_weights", i32 3984, i32 1230}
!260 = !{!"branch_weights", i32 0, i32 5214}
!261 = !{!149, !152, i64 76}
!262 = !{i8 0, i8 2}
!263 = !{}
!264 = !{!265, !145, i64 0}
!265 = !{!"_ZTS9UCTWorker", !145, i64 0, !145, i64 8, !145, i64 16}
!266 = !{!265, !145, i64 16}
!267 = !{!265, !145, i64 8}
!268 = distinct !{!268, !197, !198}
!269 = !{!"branch_weights", i32 364, i32 606}
!270 = !{!"VP", i32 1, i64 6065173, i64 513, i64 3127369, i64 257, i64 1544616, i64 129, i64 844595, i64 65, i64 319059}
!271 = !{!"VP", i32 1, i64 6065173, i64 513, i64 3127368, i64 257, i64 1544615, i64 129, i64 844594, i64 65, i64 319059}
!272 = !{!"branch_weights", i32 6065940, i32 0}
!273 = !{!"branch_weights", i32 5214, i32 6060726}
!274 = !{!"branch_weights", i32 0, i32 6065940}
!275 = !{!"branch_weights", i32 129423, i32 5936517}
!276 = !{!"branch_weights", i32 6064970, i32 970}
!277 = distinct !{!277, !197, !198}
!278 = distinct !{!278, !197, !198}
!279 = !{!149, !152, i64 89}
!280 = !{!"branch_weights", i32 0, i32 12002}
!281 = !{!"branch_weights", i32 0, i32 23364}
!282 = !{!186, !145, i64 16}
!283 = !{!"function_entry_count", i64 349598}
!284 = !{!"VP", i32 1, i64 349558, i64 513, i64 180241, i64 257, i64 89021, i64 129, i64 48677, i64 65, i64 18388}
!285 = !{!"function_entry_count", i64 238678}
!286 = !{!"function_entry_count", i64 10252442}
!287 = !{!"branch_weights", i32 0, i32 10252442}
!288 = !{!"branch_weights", i32 1, i32 12001}
!289 = !{!"VP", i32 1, i64 1472156, i64 513, i64 759084, i64 257, i64 374913, i64 129, i64 205002, i64 65, i64 77443}
!290 = !{!"branch_weights", i32 12001, i32 1460322}
!291 = distinct !{!291, !197, !198}
!292 = !{!"function_entry_count", i64 6205}
