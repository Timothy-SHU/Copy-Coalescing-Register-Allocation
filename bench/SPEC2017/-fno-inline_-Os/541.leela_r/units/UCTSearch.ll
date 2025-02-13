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
%"class.std::allocator.14" = type { i8 }
%"class.std::allocator.9" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.28" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.29" = type { ptr }

$_ZN9GameStateC2ERKS_ = comdat any

$_ZN9GameStateD2Ev = comdat any

$_ZSt3maxIfERKT_S2_S2_ = comdat any

$_ZSt3minIfERKT_S2_S2_ = comdat any

$_ZN7KoStateC2ERKS_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_ = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIySaIyEED2Ev = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZN9FullBoardC2ERKS_ = comdat any

$_ZN9FastBoardC2ERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt6vectorIySaIyEE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIySaIyEE5beginEv = comdat any

$_ZNKSt6vectorIySaIyEE3endEv = comdat any

$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIyEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIyEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIyEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIyE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPyET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPyET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym = comdat any

$_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym = comdat any

$_ZNSt15__new_allocatorIyE10deallocateEPym = comdat any

$_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPyEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_ = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI7KoStateES1_E17_S_select_on_copyERKS2_ = comdat any

$_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2EmRKS1_ = comdat any

$_ZNSt15__new_allocatorI7KoStateED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E = comdat any

$_ZNKSt6vectorI7KoStateSaIS0_EE5beginEv = comdat any

$_ZNKSt6vectorI7KoStateSaIS0_EE3endEv = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE37select_on_container_copy_constructionERKS1_ = comdat any

$_ZNSaI7KoStateEC2ERKS0_ = comdat any

$_ZNSt15__new_allocatorI7KoStateEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m = comdat any

$_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZN9__gnu_cxxneIPK7KoStateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZSt10_ConstructI7KoStateJRKS0_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZSt8_DestroyIP7KoStateEvT_S2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZSt8_DestroyI7KoStateEvPT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E = comdat any

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

@_ZN9UCTSearchC1ER9GameState = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN9UCTSearchC2ER9GameState

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTSearchC2ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1) unnamed_addr #0 align 2 !prof !290 {
  store ptr %1, ptr %0, align 8, !tbaa !291
  %3 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  %4 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #12
  tail call void @_ZN7UCTNodeC1Eii(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %4, i32 noundef -1) #12
  %5 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !295
  %6 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 3
  store i32 500000000, ptr %6, align 4, !tbaa !303
  %7 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %7, align 8, !tbaa !304
  %8 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  store i8 0, ptr %8, align 1, !tbaa !305
  %9 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !306
  %10 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 9
  store i8 0, ptr %10, align 8, !tbaa !307
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7UCTNodeC1Eii(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch11set_runflagEPb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !308 {
  %3 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !306
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind noalias writable sret(%class.Playout) align 8 %0, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !309 {
  %5 = alloca %class.Playout, align 8
  %6 = alloca %class.Playout, align 8
  %7 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %2) #12
  %8 = tail call noundef i64 @_ZN9FullBoard8get_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %2) #12
  tail call void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #12
  %9 = tail call noundef ptr @_ZN6TTable6get_TTEv() #12
  tail call void @_ZN6TTable4syncEyP7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %8, ptr noundef %3) #12
  %10 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  br i1 %10, label %24, label %11, !prof !310

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  %13 = tail call noundef i32 @_ZNK7UCTNode9do_extendEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %16, label %15, !prof !311

15:                                               ; preds = %11
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true) #12
  br label %46

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.UCTSearch, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !295
  %19 = icmp slt i32 %18, 5000000
  br i1 %19, label %20, label %24, !prof !312

20:                                               ; preds = %16
  %21 = tail call noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext false) #12
  %22 = load i32, ptr %17, align 8, !tbaa !295
  %23 = add nsw i32 %22, %21
  store i32 %23, ptr %17, align 8, !tbaa !295
  br label %24

24:                                               ; preds = %4, %20, %16
  %25 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  br i1 %25, label %26, label %39, !prof !313

26:                                               ; preds = %24
  %27 = tail call noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %7) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29, !prof !314

29:                                               ; preds = %26
  %30 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #12
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %36, label %32, !prof !315

32:                                               ; preds = %29
  tail call void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %2, i32 noundef %30) #12
  %33 = tail call noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %2) #12
  br i1 %33, label %35, label %34, !prof !316

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #13
  call void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %5, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull %27) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %5, i64 120, i1 false), !tbaa.struct !317
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #13
  br label %38

35:                                               ; preds = %32
  tail call void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #12
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true) #12
  br label %38

36:                                               ; preds = %29
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %2) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #13
  call void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull %27) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !317
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #13
  br label %38

37:                                               ; preds = %26
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true) #12
  br label %38

38:                                               ; preds = %36, %35, %34, %37
  call void @_ZN7UCTNode10updateRAVEER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %7) #12
  br label %46

39:                                               ; preds = %24
  %40 = getelementptr inbounds %class.UCTSearch, ptr %1, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !295
  %42 = icmp sgt i32 %41, 4999999
  br i1 %42, label %43, label %44, !prof !321

43:                                               ; preds = %39
  tail call void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %2, i1 noundef zeroext true) #12
  br label %46

44:                                               ; preds = %39
  %45 = tail call noundef float @_ZN9FastState21percentual_area_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %2) #12
  tail call void @_ZN7Playout15set_final_scoreEf(ptr noundef nonnull align 8 dereferenceable(120) %0, float noundef %45) #12
  br label %46

46:                                               ; preds = %38, %44, %43, %15
  %47 = icmp eq i32 %7, 0
  %48 = zext i1 %47 to i32
  call void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %48) #12
  %49 = call noundef ptr @_ZN6TTable6get_TTEv() #12
  call void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 noundef %8, ptr noundef nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef i64 @_ZN9FullBoard8get_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN6TTable6get_TTEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6TTable4syncEyP7UCTNode(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode9do_extendEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8388), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8388), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7UCTNode10updateRAVEER7Playouti(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7Playout15set_final_scoreEf(ptr noundef nonnull align 8 dereferenceable(120), float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef float @_ZN9FastState21percentual_area_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %class.GameState, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %class.GameState, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #12
  %11 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #12
  br i1 %11, label %12, label %112, !prof !322

12:                                               ; preds = %3
  %13 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %13, i32 noundef %10) #12
  %14 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #12
  %15 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #12
  br i1 %15, label %112, label %16, !prof !323

16:                                               ; preds = %12
  %17 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef %10) #12
  %18 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #12
  %19 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #12
  br label %20

20:                                               ; preds = %16, %65
  %21 = phi ptr [ %14, %16 ], [ %64, %65 ]
  %22 = phi i32 [ 0, %16 ], [ %23, %65 ]
  %23 = add nuw nsw i32 %22, 1
  %24 = icmp eq i32 %22, 6
  br i1 %24, label %85, label %25, !prof !324

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %26 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
  call void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %26) #12
  %27 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %28 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %29 unwind label %67

29:                                               ; preds = %25
  %30 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %31 unwind label %67

31:                                               ; preds = %29
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %38, !prof !325

33:                                               ; preds = %31
  %34 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %21, i32 noundef %10) #12
          to label %35 unwind label %67

35:                                               ; preds = %33
  %36 = sitofp i32 %34 to float
  %37 = fdiv float %36, 1.000000e+01
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi float [ %37, %35 ], [ 0.000000e+00, %31 ]
  %40 = fpext float %39 to double
  %41 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %42 unwind label %67

42:                                               ; preds = %38
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %49, !prof !325

44:                                               ; preds = %42
  %45 = invoke noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %46 unwind label %67

46:                                               ; preds = %44
  %47 = sitofp i32 %45 to float
  %48 = fdiv float %47, 1.000000e+01
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi float [ %48, %46 ], [ 0.000000e+00, %42 ]
  %51 = invoke noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %52 unwind label %67

52:                                               ; preds = %49
  %53 = fpext float %50 to double
  %54 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, ptr noundef %27, i32 noundef %28, double noundef %40, double noundef %53, i32 noundef %51, ptr noundef %54) #12
          to label %55 unwind label %67

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %5) #13
  invoke void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %5, ptr noundef nonnull align 8 dereferenceable(8508) %1) #12
          to label %56 unwind label %69

56:                                               ; preds = %55
  %57 = invoke noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %58 unwind label %71

58:                                               ; preds = %56
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %5, i32 noundef %57) #12
          to label %59 unwind label %71

59:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %5, ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %60 unwind label %73

60:                                               ; preds = %59
  %61 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef %61) #12
          to label %62 unwind label %75

62:                                               ; preds = %60
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1) #12
          to label %63 unwind label %71

63:                                               ; preds = %62
  %64 = invoke noundef ptr @_ZN7UCTNode11get_siblingEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #12
          to label %65 unwind label %71

65:                                               ; preds = %63
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %5) #14
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %5) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %66 = icmp eq ptr %64, null
  br i1 %66, label %85, label %20, !prof !326, !llvm.loop !327

67:                                               ; preds = %52, %49, %44, %38, %33, %29, %25
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %83

69:                                               ; preds = %55
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %81

71:                                               ; preds = %63, %62, %58, %56
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %79

73:                                               ; preds = %59
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %77

75:                                               ; preds = %60
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi { ptr, i32 } [ %72, %71 ], [ %78, %77 ]
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %5) #14
  br label %81

81:                                               ; preds = %79, %69
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %5) #13
  br label %83

83:                                               ; preds = %81, %67
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %68, %67 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %131

85:                                               ; preds = %20, %65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  %86 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #12
  call void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %86) #12
  %87 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #12
          to label %88 unwind label %113

88:                                               ; preds = %85
  %89 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #12
          to label %90 unwind label %113

90:                                               ; preds = %88
  %91 = icmp sgt i32 %89, 0
  br i1 %91, label %92, label %98, !prof !322

92:                                               ; preds = %90
  %93 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef %10) #12
          to label %94 unwind label %113

94:                                               ; preds = %92
  %95 = sitofp i32 %93 to float
  %96 = fdiv float %95, 1.000000e+01
  %97 = fpext float %96 to double
  br label %98

98:                                               ; preds = %90, %94
  %99 = phi double [ %97, %94 ], [ 0.000000e+00, %90 ]
  %100 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %10) #12
          to label %101 unwind label %113

101:                                              ; preds = %98
  %102 = sitofp i32 %100 to float
  %103 = fdiv float %102, 1.000000e+01
  %104 = fpext float %103 to double
  %105 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2, i32 noundef %87, double noundef %99, double noundef %104, ptr noundef %105) #12
          to label %106 unwind label %113

106:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %8) #13
  invoke void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %8, ptr noundef nonnull align 8 dereferenceable(8508) %1) #12
          to label %107 unwind label %115

107:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %8, ptr noundef nonnull align 8 dereferenceable(56) %2) #12
          to label %108 unwind label %117

108:                                              ; preds = %107
  %109 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef %109) #12
          to label %110 unwind label %119

110:                                              ; preds = %108
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1) #12
          to label %111 unwind label %123

111:                                              ; preds = %110
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %8) #14
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %8) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  br label %112

112:                                              ; preds = %111, %12, %3
  ret void

113:                                              ; preds = %101, %98, %92, %88, %85
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %129

115:                                              ; preds = %106
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %127

117:                                              ; preds = %107
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %121

119:                                              ; preds = %108
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  br label %125

123:                                              ; preds = %110
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %122, %121 ]
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %8) #14
  br label %127

127:                                              ; preds = %125, %115
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %8) #13
  br label %129

129:                                              ; preds = %127, %113
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %114, %113 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  br label %131

131:                                              ; preds = %129, %83
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %84, %83 ]
  resume { ptr, i32 } %132
}

; Function Attrs: optsize
declare void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #12
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #12
          to label %5 unwind label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull align 8 dereferenceable(44) %7, i64 44, i1 false), !tbaa.struct !329
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #14
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !331 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = tail call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  br i1 %7, label %9, label %8, !prof !332

8:                                                ; preds = %4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %38

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %2) #12
  tail call void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %10) #12
  %11 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  %12 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %11) #12
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %15, !prof !333

14:                                               ; preds = %9
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %38

15:                                               ; preds = %9
  %16 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %11) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8388) %2, i32 noundef %16) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #12
          to label %17 unwind label %24

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.11) #12
          to label %19 unwind label %26

19:                                               ; preds = %17
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %2, i32 noundef %16) #12
          to label %20 unwind label %26

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(56) %11) #12
          to label %21 unwind label %28

21:                                               ; preds = %20
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #12
          to label %23 unwind label %30

23:                                               ; preds = %21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %38

24:                                               ; preds = %15
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %36

26:                                               ; preds = %19, %17
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %34

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %27, %26 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %25, %24 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %37

38:                                               ; preds = %14, %23, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef ptr @_ZN7UCTNode11get_siblingEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9UCTSearch13get_best_moveEi(ptr noundef nonnull align 8 dereferenceable(90) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !290 {
  %3 = load ptr, ptr %0, align 8, !tbaa !334
  %4 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %5) #12
  %7 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %8 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #12
  %9 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !323

11:                                               ; preds = %2
  %12 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %13 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %12) #12
  br i1 %13, label %108, label %14, !prof !323

14:                                               ; preds = %11, %2
  %15 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %16 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef %5) #12
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %17, 1.000000e+03
  %19 = tail call noundef ptr @_ZN7UCTNode15get_first_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %20 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %19) #12
  %21 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 4
  store float %18, ptr %21, align 8, !tbaa !304
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24, !prof !322

24:                                               ; preds = %14
  %25 = icmp eq i32 %8, -1
  br i1 %25, label %26, label %85

26:                                               ; preds = %24
  %27 = tail call noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %105, label %29

29:                                               ; preds = %26
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.3) #12
  %30 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #12
  %31 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #12
  br i1 %31, label %81, label %75

32:                                               ; preds = %14
  %33 = load ptr, ptr %0, align 8, !tbaa !334
  %34 = tail call noundef i32 @_ZN9FastState13get_last_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %33) #12
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %57, !prof !347

36:                                               ; preds = %32
  %37 = tail call noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39, !prof !348

39:                                               ; preds = %36
  %40 = tail call noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %41 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %40) #12
  %42 = icmp sgt i32 %41, 100
  br i1 %42, label %43, label %57, !prof !348

43:                                               ; preds = %39
  %44 = tail call noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %45 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %44, i32 noundef %5) #12
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %46, 1.000000e+03
  %48 = fcmp ogt float %47, 0x3FECCCCCC0000000
  %49 = fsub float %18, %47
  %50 = fcmp olt float %49, 0x3FA99999A0000000
  %51 = and i1 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = fmul float %47, 1.000000e+02
  %54 = fpext float %53 to double
  %55 = fmul float %18, 1.000000e+02
  %56 = fpext float %55 to double
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.5, double noundef %54, double noundef %56) #12
  br label %59

57:                                               ; preds = %43, %36, %39, %32
  %58 = icmp eq i32 %8, -1
  br i1 %58, label %59, label %85, !prof !349

59:                                               ; preds = %52, %57
  %60 = load ptr, ptr %0, align 8, !tbaa !334
  %61 = tail call noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %60) #12
  %62 = fcmp ogt float %61, 0.000000e+00
  %63 = icmp eq i32 %5, 1
  %64 = and i1 %63, %62
  br i1 %64, label %69, label %65, !prof !350

65:                                               ; preds = %59
  %66 = fcmp olt float %61, 0.000000e+00
  %67 = icmp eq i32 %5, 0
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %105, !prof !351

69:                                               ; preds = %65, %59
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.6) #12
  %70 = tail call noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %105, label %72, !prof !352

72:                                               ; preds = %69
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7) #12
  %73 = tail call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %70) #12
  %74 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %70) #12
  br i1 %74, label %81, label %75, !prof !352

75:                                               ; preds = %72, %29
  %76 = phi ptr [ %27, %29 ], [ %70, %72 ]
  %77 = phi i32 [ %30, %29 ], [ %73, %72 ]
  %78 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %76, i32 noundef %5) #12
  %79 = sitofp i32 %78 to float
  %80 = fdiv float %79, 1.000000e+03
  br label %81

81:                                               ; preds = %75, %72, %29
  %82 = phi float [ 1.000000e+00, %29 ], [ 1.000000e+00, %72 ], [ %80, %75 ]
  %83 = phi i32 [ %30, %29 ], [ %73, %72 ], [ %77, %75 ]
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %108, label %85, !prof !353

85:                                               ; preds = %57, %24, %81
  %86 = phi i32 [ %83, %81 ], [ %8, %57 ], [ %8, %24 ]
  %87 = phi float [ %82, %81 ], [ %18, %57 ], [ %18, %24 ]
  %88 = and i32 %1, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %108, !prof !354

90:                                               ; preds = %85
  %91 = load ptr, ptr %0, align 8, !tbaa !334
  %92 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %91) #12
  %93 = load ptr, ptr %0, align 8, !tbaa !334
  %94 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %93) #12
  %95 = fcmp olt float %87, 0x3FC3333340000000
  %96 = icmp sgt i32 %20, 90
  %97 = and i1 %96, %95
  br i1 %97, label %98, label %108, !prof !355

98:                                               ; preds = %90
  %99 = mul nsw i32 %94, %92
  %100 = sdiv i32 %99, 3
  %101 = load ptr, ptr %0, align 8, !tbaa !334
  %102 = getelementptr inbounds %class.FastState, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %102, align 8, !tbaa !356
  %104 = icmp sgt i32 %103, %100
  br i1 %104, label %105, label %108, !prof !362

105:                                              ; preds = %98, %65, %69, %26
  %106 = phi ptr [ @.str.4, %26 ], [ @.str.8, %69 ], [ @.str.9, %65 ], [ @.str.10, %98 ]
  %107 = phi i32 [ -1, %26 ], [ -1, %69 ], [ -1, %65 ], [ -2, %98 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %106) #12
  br label %108

108:                                              ; preds = %105, %81, %85, %98, %90, %11
  %109 = phi i32 [ %8, %11 ], [ %86, %85 ], [ -1, %81 ], [ %86, %98 ], [ %86, %90 ], [ %107, %105 ]
  ret i32 %109
}

; Function Attrs: optsize
declare noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState13get_last_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTSearch13dump_analysisEv(ptr noundef nonnull align 8 dereferenceable(90) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !363 {
  %2 = alloca %class.GameState, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %2) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN9GameStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(8508) %7) #12
  %8 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %10 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  invoke void @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %2, ptr noundef nonnull align 8 dereferenceable(56) %10) #12
          to label %11 unwind label %26

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %12 = invoke noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %9) #12
          to label %13 unwind label %28

13:                                               ; preds = %11
  %14 = sitofp i32 %12 to float
  %15 = fdiv float %14, 1.000000e+01
  store float %15, ptr %4, align 4, !tbaa !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 0.000000e+00, ptr %5, align 4, !tbaa !319
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %17 = load float, ptr %16, align 4, !tbaa !319
  store float %17, ptr %4, align 4, !tbaa !319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store float 1.000000e+02, ptr %6, align 4, !tbaa !319
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %19 = load float, ptr %18, align 4, !tbaa !319
  store float %19, ptr %4, align 4, !tbaa !319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %20 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %10) #12
          to label %21 unwind label %28

21:                                               ; preds = %13
  %22 = load float, ptr %4, align 4, !tbaa !319
  %23 = fpext float %22 to double
  %24 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.12, i32 noundef %20, double noundef %23, ptr noundef %24) #12
          to label %25 unwind label %28

25:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %2) #14
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %2) #13
  ret void

26:                                               ; preds = %1
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %21, %13, %11
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %2) #14
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %2) #13
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat !prof !363 {
  %3 = load float, ptr %0, align 4, !tbaa !319
  %4 = load float, ptr %1, align 4, !tbaa !319
  %5 = fcmp olt float %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !364
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat !prof !363 {
  %3 = load float, ptr %1, align 4, !tbaa !319
  %4 = load float, ptr %0, align 4, !tbaa !319
  %5 = fcmp olt float %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !365
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9UCTSearch10is_runningEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(90) %0) local_unnamed_addr #6 align 2 !prof !308 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !366, !range !367, !noundef !368
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTWorkerclEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !308 {
  %2 = alloca %class.KoState, align 8
  %3 = alloca %class.Playout, align 8
  %4 = getelementptr inbounds %class.UCTWorker, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %class.UCTWorker, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %2) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !369
  call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull align 8 dereferenceable(8440) %7) #12
  %8 = load ptr, ptr %4, align 8, !tbaa !371
  %9 = load ptr, ptr %5, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #13
  invoke void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %3, ptr noundef nonnull align 8 dereferenceable(90) %8, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef %9) #12
          to label %10 unwind label %14

10:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #13
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %2) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #13
  %11 = load ptr, ptr %4, align 8, !tbaa !371
  %12 = call noundef zeroext i1 @_ZN9UCTSearch10is_runningEv(ptr noundef nonnull align 8 dereferenceable(90) %11) #12
  br i1 %12, label %6, label %13, !llvm.loop !373

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #13
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %2) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #13
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #12
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #12
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #12
          to label %8 unwind label %11

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN9UCTSearch9get_scoreEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(90) %0) local_unnamed_addr #6 align 2 !prof !308 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !304
  ret float %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %4 = alloca %class.Time, align 4
  %5 = alloca %class.KoState, align 8
  %6 = alloca %class.Playout, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !334
  %8 = getelementptr inbounds %class.FastBoard, ptr %7, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %9 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 9
  %10 = load i8, ptr %9, align 8, !tbaa !307, !range !367, !noundef !368
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %43, !prof !322

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !334
  %14 = call noundef ptr @_ZN9GameState15get_timecontrolEv(ptr noundef nonnull align 8 dereferenceable(8508) %13) #12
  %15 = call noundef i32 @_ZN11TimeControl17max_time_for_moveEi(ptr noundef nonnull align 4 dereferenceable(44) %14, i32 noundef %1) #12
  %16 = load ptr, ptr %0, align 8, !tbaa !334
  %17 = call noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388) %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43, !prof !322

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8, !tbaa !334
  %21 = call noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %20) #12
  %22 = icmp eq i64 %21, -4227546272005961421
  br i1 %22, label %114, label %23, !prof !323

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 8, !tbaa !334
  %25 = call noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %24) #12
  %26 = icmp eq i64 %25, 1645110429106286179
  br i1 %26, label %27, label %32, !prof !323

27:                                               ; preds = %23
  %28 = call noundef ptr @_ZN6Random7get_RngEv() #12
  %29 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %28, i16 noundef zeroext 2) #12
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 82, i32 81
  br label %114

32:                                               ; preds = %23
  %33 = load ptr, ptr %0, align 8, !tbaa !334
  %34 = call noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %33) #12
  %35 = icmp eq i64 %34, -7724308731872248033
  br i1 %35, label %36, label %43, !prof !323

36:                                               ; preds = %32
  %37 = call noundef ptr @_ZN6Random7get_RngEv() #12
  %38 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %37, i16 noundef zeroext 3) #12
  %39 = icmp eq i32 %38, 1
  %40 = select i1 %39, i32 373, i32 374
  %41 = icmp eq i32 %38, 0
  %42 = select i1 %41, i32 352, i32 %40
  br label %114

43:                                               ; preds = %3, %12, %32
  %44 = load ptr, ptr %0, align 8, !tbaa !334
  %45 = call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %44) #12
  %46 = icmp eq i32 %45, 9
  %47 = select i1 %46, i32 10000, i32 4000, !prof !374
  %48 = select i1 %46, i32 2000, i32 1000, !prof !374
  %49 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN9GameState11start_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %49, i32 noundef %1) #12
  call void @_ZN12MCOwnerTable5clearEv() #12
  %50 = load ptr, ptr %0, align 8, !tbaa !334
  %51 = call noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388) %50, i32 noundef 64) #12
  %52 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %0, align 8, !tbaa !334
  %54 = call noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %52, ptr noundef nonnull align 8 dereferenceable(8388) %53, i1 noundef zeroext true) #12
  %55 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !295
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 8, !tbaa !295
  %58 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56) %52, ptr noundef nonnull align 8 dereferenceable(8440) %58) #12
  %59 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 5
  store i8 1, ptr %59, align 4, !tbaa !366
  %60 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  %61 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 3
  %62 = or disjoint i32 %47, 1
  br label %63

63:                                               ; preds = %102, %43
  %64 = phi i32 [ 0, %43 ], [ %103, %102 ]
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %5) #13
  %65 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %5, ptr noundef nonnull align 8 dereferenceable(8440) %65) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #13
  invoke void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8440) %5, ptr noundef nonnull %52) #12
          to label %66 unwind label %73

66:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #13
  %67 = load i8, ptr %9, align 8, !tbaa !307, !range !367, !noundef !368
  %68 = icmp eq i8 %67, 0
  %69 = urem i32 %64, %48
  %70 = icmp eq i32 %69, 0
  br i1 %68, label %71, label %85, !prof !375

71:                                               ; preds = %66
  br i1 %70, label %72, label %77, !prof !376

72:                                               ; preds = %71
  invoke void @_ZN9UCTSearch13dump_analysisEv(ptr noundef nonnull align 8 dereferenceable(90) %0) #12
          to label %77 unwind label %75

73:                                               ; preds = %63
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #13
  br label %106

75:                                               ; preds = %86, %77, %72
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %106

77:                                               ; preds = %72, %71
  %78 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %52) #12
          to label %79 unwind label %75

79:                                               ; preds = %77
  %80 = load i32, ptr %61, align 4, !tbaa !303
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %98, !prof !375

82:                                               ; preds = %79
  %83 = load i8, ptr %60, align 1, !tbaa !305, !range !367, !noundef !368
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %95, label %90, !prof !375

85:                                               ; preds = %66
  br i1 %70, label %86, label %87

86:                                               ; preds = %85
  invoke void @_ZN9UCTSearch13dump_analysisEv(ptr noundef nonnull align 8 dereferenceable(90) %0) #12
          to label %87 unwind label %75

87:                                               ; preds = %86, %85
  %88 = load i8, ptr %60, align 1, !tbaa !305, !range !367, !noundef !368
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87, %82
  %91 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !306
  %93 = load i8, ptr %92, align 1, !tbaa !318, !range !367, !noundef !368
  %94 = icmp ne i8 %93, 0
  br label %95

95:                                               ; preds = %90, %87, %82
  %96 = phi i1 [ true, %82 ], [ true, %87 ], [ %94, %90 ]
  %97 = icmp eq i32 %64, %62
  br i1 %97, label %101, label %102, !prof !377

98:                                               ; preds = %79
  %99 = icmp ugt i32 %64, %47
  br i1 %99, label %101, label %100, !prof !377

100:                                              ; preds = %98
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %5) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %5) #13
  br label %104

101:                                              ; preds = %95, %98
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %5) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %5) #13
  br label %104

102:                                              ; preds = %95
  %103 = add nuw nsw i32 %64, 1
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %5) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %5) #13
  br i1 %96, label %63, label %104, !prof !378, !llvm.loop !379

104:                                              ; preds = %102, %100, %101
  store i8 0, ptr %59, align 4, !tbaa !366
  %105 = call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %52) #12
  br i1 %105, label %108, label %114, !prof !322

106:                                              ; preds = %75, %73
  %107 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ]
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %5) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  resume { ptr, i32 } %107

108:                                              ; preds = %104
  %109 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN9GameState10stop_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %109, i32 noundef %1) #12
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1) #12
  %110 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %110, ptr noundef nonnull align 8 dereferenceable(56) %52) #12
  %111 = call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %52) #12
  %112 = load i32, ptr %55, align 8, !tbaa !295
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.13, i32 noundef %111, i32 noundef %112) #12
  %113 = call noundef i32 @_ZN9UCTSearch13get_best_moveEi(ptr noundef nonnull align 8 dereferenceable(90) %0, i32 noundef %2) #12
  br label %114

114:                                              ; preds = %36, %108, %104, %27, %19
  %115 = phi i32 [ 60, %19 ], [ %31, %27 ], [ %113, %108 ], [ -1, %104 ], [ %42, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %115
}

; Function Attrs: optsize
declare void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN9GameState15get_timecontrolEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11TimeControl17max_time_for_moveEi(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState11start_clockEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12MCOwnerTable5clearEv() local_unnamed_addr #1

; Function Attrs: optsize
declare noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState10stop_clockEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9UCTSearch6ponderEv(ptr noundef nonnull align 8 dereferenceable(90) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !308 {
  %2 = alloca %class.KoState, align 8
  %3 = alloca %class.Playout, align 8
  tail call void @_ZN12MCOwnerTable5clearEv() #12
  %4 = load ptr, ptr %0, align 8, !tbaa !334
  %5 = tail call noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388) %4, i32 noundef 64) #12
  %6 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 5
  store i8 1, ptr %6, align 4, !tbaa !366
  %7 = tail call noundef i32 @_ZN3SMP12get_num_cpusEv() #12
  %8 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 8
  br label %11

11:                                               ; preds = %22, %1
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %2) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull align 8 dereferenceable(8440) %12) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #13
  invoke void @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode(ptr dead_on_unwind nonnull writable sret(%class.Playout) align 8 %3, ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8440) %2, ptr noundef nonnull %8) #12
          to label %13 unwind label %28

13:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #13
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %2) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #13
  %14 = call noundef zeroext i1 @_ZN5Utils13input_pendingEv() #12
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = load i8, ptr %9, align 1, !tbaa !305, !range !367, !noundef !368
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 8, !tbaa !306
  %20 = load i8, ptr %19, align 1, !tbaa !318, !range !367, !noundef !368
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %15
  br label %11, !llvm.loop !380

23:                                               ; preds = %13, %18
  store i8 0, ptr %6, align 4, !tbaa !366
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1) #12
  %24 = load ptr, ptr %0, align 8, !tbaa !334
  call void @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(8508) %24, ptr noundef nonnull align 8 dereferenceable(56) %8) #12
  %25 = call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #12
  %26 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !295
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.13, i32 noundef %25, i32 noundef %27) #12
  ret void

28:                                               ; preds = %11
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #13
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %2) #14
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %2) #13
  resume { ptr, i32 } %29
}

; Function Attrs: optsize
declare noundef i32 @_ZN3SMP12get_num_cpusEv() local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN5Utils13input_pendingEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch15set_visit_limitEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !308 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 500000000, i32 %1
  %5 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch13set_analyzingEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !308 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !307
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9UCTSearch9set_quietEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(90) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !308 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 1, !tbaa !381
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !382 {
  %3 = alloca %"class.std::allocator.14", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI7KoStateES1_E17_S_select_on_copyERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.14") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %7 = call ptr @_ZNKSt6vectorI7KoStateSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %8 = call ptr @_ZNKSt6vectorI7KoStateSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %9 = load ptr, ptr %0, align 8, !tbaa !383
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #12
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !385
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #12
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !386 {
  %3 = alloca %"class.std::allocator.9", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.9") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  invoke void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %7 = call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %8 = call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %9 = load ptr, ptr %0, align 8, !tbaa !387
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #12
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !389
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !390 {
  %2 = load ptr, ptr %0, align 8, !tbaa !387
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !389
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #12
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !391
  store i32 %7, ptr %5, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !392 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %9 = load ptr, ptr %0, align 8, !tbaa !393
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #12
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !394
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !395 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !394
  %4 = load ptr, ptr %0, align 8, !tbaa !393
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !392 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !396 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !397 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !398 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !392 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !399 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !399 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !400 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !393
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !402
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !392 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !403 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !403 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !404 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !397 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !393
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !394
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !402
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !405 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !406 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !407

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !408 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !408 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !409

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !410 {
  ret i64 2305843009213693951
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !392 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !392 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !392 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #12
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !392 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !291
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #5 comdat !prof !411 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !392 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !399 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !411 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !412 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !399 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !399 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !413

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !414 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !411 {
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %3, ptr %0, align 8, !tbaa !415
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !417 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !418

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !419 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !419 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !420 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  %4 = load ptr, ptr %0, align 8, !tbaa !387
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !386 {
  tail call void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !421 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !386 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !422 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !423 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !423 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !423 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !424 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !390 {
  %2 = load ptr, ptr %0, align 8, !tbaa !387
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !386 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !426 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !426 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !427 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !386 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !387
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !389
  %5 = getelementptr inbounds i64, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !425
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !428 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !429 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !430

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !431 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !431 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !409

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !432 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !423 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !423 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !423 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #12
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !423 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !291
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #14
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #14
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #14
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) local_unnamed_addr #5 comdat !prof !433 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !423 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !423 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !433 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !434 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !423 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !423 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !435

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !436 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !433 {
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %3, ptr %0, align 8, !tbaa !437
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !439 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !440

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !431 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !431 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !441 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !441 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !441 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !393
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !394
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !442 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !442 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !442 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !443 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  %4 = load ptr, ptr %0, align 8, !tbaa !383
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8440
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaI7KoStateES1_E17_S_select_on_copyERKS2_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !382 {
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE37select_on_container_copy_constructionERKS1_(ptr dead_on_unwind writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !444 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !382 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !445 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !382 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorI7KoStateSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !382 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorI7KoStateSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !382 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !446 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !447 {
  %2 = load ptr, ptr %0, align 8, !tbaa !383
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !448
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8440
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE37select_on_container_copy_constructionERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !382 {
  tail call void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !449 {
  tail call void @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !449 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !450 {
  tail call void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !382 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !383
  %4 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !385
  %5 = getelementptr inbounds %class.KoState, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !448
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !451 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !453

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !409

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2185633184088809
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 8440
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !454 {
  ret i64 1092816592044404
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !382 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !382 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !382 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPK7KoStateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br i1 %6, label %7, label %19, !prof !455

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(8440) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  invoke void @_ZSt10_ConstructI7KoStateJRKS0_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8440) %9) #12
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %12 = getelementptr inbounds %class.KoState, ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPK7KoStateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br i1 %13, label %7, label %19, !prof !456, !llvm.loop !457

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #13
  invoke void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %2, ptr noundef %8) #12
          to label %18 unwind label %21

18:                                               ; preds = %14
  invoke void @__cxa_rethrow() #19
          to label %27 unwind label %21

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %12, %10 ]
  ret ptr %20

21:                                               ; preds = %18, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %24

23:                                               ; preds = %21
  resume { ptr, i32 } %22

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPK7KoStateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !458 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !291
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI7KoStateJRKS0_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #0 comdat !prof !459 {
  tail call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8440) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !459 {
  %2 = load ptr, ptr %0, align 8, !tbaa !460
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !459 {
  %2 = load ptr, ptr %0, align 8, !tbaa !460
  %3 = getelementptr inbounds %class.KoState, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !460
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !447 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !462 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !447 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !463

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %5) #12
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !464, !llvm.loop !465

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !466 {
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !467 {
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %3, ptr %0, align 8, !tbaa !460
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !468 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !469

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !452 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !452 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !447 {
  %2 = load ptr, ptr %0, align 8, !tbaa !383
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !385
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !447 {
  tail call void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn optsize }
attributes #17 = { builtin optsize allocsize(0) }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!289}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 747867958256}
!4 = !{!"MaxCount", i64 115183010216}
!5 = !{!"MaxInternalCount", i64 7835753190}
!6 = !{!"MaxFunctionCount", i64 115183010216}
!7 = !{!"NumCounts", i64 2640}
!8 = !{!"NumFunctions", i64 1541}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 115183010216, i32 1}
!14 = !{i32 100000, i64 115183010216, i32 1}
!15 = !{i32 200000, i64 99995171483, i32 2}
!16 = !{i32 300000, i64 88073131441, i32 3}
!17 = !{i32 400000, i64 88073131441, i32 3}
!18 = !{i32 500000, i64 32030604394, i32 5}
!19 = !{i32 600000, i64 11128423850, i32 9}
!20 = !{i32 700000, i64 5564211925, i32 21}
!21 = !{i32 800000, i64 3688044421, i32 36}
!22 = !{i32 900000, i64 1979964940, i32 64}
!23 = !{i32 950000, i64 877932300, i32 88}
!24 = !{i32 990000, i64 97283944, i32 151}
!25 = !{i32 999000, i64 10252442, i32 368}
!26 = !{i32 999900, i64 1381009, i32 513}
!27 = !{i32 999990, i64 126015, i32 686}
!28 = !{i32 999999, i64 12002, i32 815}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!35 = !{ptr @_ZN9UCTSearchC2ER9GameState, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!36 = !{ptr @_ZN9UCTSearchC2ER9GameState, ptr @_ZN7UCTNodeC1Eii, i64 970}
!37 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9FastState11get_to_moveEv, i64 38472780}
!38 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9FullBoard8get_hashEv, i64 38472780}
!39 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7PlayoutC1Ev, i64 38472780}
!40 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN6TTable6get_TTEv, i64 76945560}
!41 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN6TTable4syncEyP7UCTNode, i64 38472780}
!42 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode12has_childrenEv, i64 70911517}
!43 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 6234980}
!44 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode9do_extendEv, i64 6234980}
!45 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7Playout3runER9FastStateb, i64 6034448}
!46 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode15create_childrenER9FastStateb, i64 200936}
!47 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode16uct_select_childEi, i64 32407241}
!48 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZNK7UCTNode8get_moveEv, i64 32407240}
!49 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7KoState9play_moveEi, i64 30799291}
!50 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7KoState7superkoEv, i64 30799291}
!51 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, i64 32406837}
!52 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode10invalidateEv, i64 403}
!53 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7KoState9play_passEv, i64 1607949}
!54 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode10updateRAVEER7Playouti, i64 32407241}
!55 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN9FastState21percentual_area_scoreEv, i64 31495}
!56 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7Playout15set_final_scoreEf, i64 31495}
!57 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN7UCTNode6updateER7Playouti, i64 38472780}
!58 = !{ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, ptr @_ZN6TTable6updateEyPK7UCTNode, i64 38472780}
!59 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!60 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode12has_childrenEv, i64 970}
!61 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN7UCTNode13sort_childrenEi, i64 969}
!62 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN7UCTNode15get_first_childEv, i64 969}
!63 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode11first_visitEv, i64 969}
!64 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode11get_winrateEi, i64 8701}
!65 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 20301}
!66 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode8get_moveEv, i64 13534}
!67 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9FastState12move_to_textB5cxx11Ei, i64 6767}
!68 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 19333}
!69 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode12get_raverateEv, i64 5798}
!70 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNK7UCTNode14get_ravevisitsEv, i64 5799}
!71 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN5Utils8myprintfEPKcz, i64 20301}
!72 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9GameStateC2ERKS_, i64 6767}
!73 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9GameState9play_moveEi, i64 5799}
!74 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, i64 6767}
!75 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 13534}
!76 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN7UCTNode11get_siblingEv, i64 5799}
!77 = !{ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, ptr @_ZN9GameStateD2Ev, i64 6767}
!78 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNK7UCTNode12has_childrenEv, i64 45626}
!79 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 12003}
!80 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9FastState11get_to_moveEv, i64 45222}
!81 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN7UCTNode13sort_childrenEi, i64 45222}
!82 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN7UCTNode15get_first_childEv, i64 45222}
!83 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 45222}
!84 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNK7UCTNode8get_moveEv, i64 33623}
!85 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9FastState12move_to_textB5cxx11Ei, i64 33623}
!86 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 33623}
!87 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 33623}
!88 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9GameState9play_moveEi, i64 33623}
!89 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, i64 33623}
!90 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 33623}
!91 = !{ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 67246}
!92 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode13sort_childrenEi, i64 970}
!93 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode15get_first_childEv, i64 4847}
!94 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode8get_moveEv, i64 975}
!95 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode11first_visitEv, i64 974}
!96 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode11get_winrateEi, i64 974}
!97 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 970}
!98 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN9FastState13get_last_moveEv, i64 968}
!99 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode14get_pass_childEv, i64 3}
!100 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN9FastState11final_scoreEv, i64 8}
!101 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN5Utils8myprintfEPKcz, i64 23}
!102 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN7UCTNode16get_nopass_childEv, i64 6}
!103 = !{ptr @_ZN9UCTSearch13get_best_moveEi, ptr @_ZN9FastBoard13get_boardsizeEv, i64 1930}
!104 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN9GameStateC2ERKS_, i64 5214}
!105 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN9UCTSearch6get_pvB5cxx11ER9GameStateR7UCTNode, i64 5214}
!106 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNK7UCTNode11get_winrateEi, i64 5214}
!107 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZSt3maxIfERKT_S2_S2_, i64 5214}
!108 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZSt3minIfERKT_S2_S2_, i64 5214}
!109 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNK7UCTNode10get_visitsEv, i64 5214}
!110 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 5214}
!111 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN5Utils8myprintfEPKcz, i64 5214}
!112 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 5214}
!113 = !{ptr @_ZN9UCTSearch13dump_analysisEv, ptr @_ZN9GameStateD2Ev, i64 5214}
!114 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN4TimeC1Ev, i64 970}
!115 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9GameState15get_timecontrolEv, i64 969}
!116 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN11TimeControl17max_time_for_moveEi, i64 969}
!117 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9FastState12get_handicapEv, i64 969}
!118 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9FullBoard11get_ko_hashEv, i64 2901}
!119 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN6Random7get_RngEv, i64 2}
!120 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN6Random7randintEt, i64 2}
!121 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9FastBoard13get_boardsizeEv, i64 967}
!122 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9GameState11start_clockEi, i64 967}
!123 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN12MCOwnerTable5clearEv, i64 967}
!124 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7Playout8mc_ownerER9FastStatei, i64 967}
!125 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7UCTNode15create_childrenER9FastStateb, i64 967}
!126 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7UCTNode13kill_superkosER7KoState, i64 967}
!127 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7KoStateC2ERKS_, i64 3002877}
!128 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch15play_simulationER7KoStateP7UCTNode, i64 3002877}
!129 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch13dump_analysisEv, i64 2582}
!130 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZNK7UCTNode10get_visitsEv, i64 3003834}
!131 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN7KoStateD2Ev, i64 3002877}
!132 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZNK7UCTNode12has_childrenEv, i64 961}
!133 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9GameState10stop_clockEi, i64 960}
!134 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN5Utils8myprintfEPKcz, i64 1920}
!135 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch10dump_statsER9GameStateR7UCTNode, i64 960}
!136 = !{ptr @_ZN9UCTSearch5thinkEii, ptr @_ZN9UCTSearch13get_best_moveEi, i64 960}
!137 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv, i64 12002}
!138 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 12002}
!139 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaI7KoStateES1_E17_S_select_on_copyERKS2_, i64 12002}
!140 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2EmRKS1_, i64 12002}
!141 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 12002}
!142 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE5beginEv, i64 12002}
!143 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE3endEv, i64 12002}
!144 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 12002}
!145 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS2_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, i64 12002}
!146 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 15449970}
!147 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449970}
!148 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, i64 15449970}
!149 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, i64 15449970}
!150 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15449970}
!151 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 15449955}
!152 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 15449955}
!153 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449955}
!154 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 15449955}
!155 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 15}
!156 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!157 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!158 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!159 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!160 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!161 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!162 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!163 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!164 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!165 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!166 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!167 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!168 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!169 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!170 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!171 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!172 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!173 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!174 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!175 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!176 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!177 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!178 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!179 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!180 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!181 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!182 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!183 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!184 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!185 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!186 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!187 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!188 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!189 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!190 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!191 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!192 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!193 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!194 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!195 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!196 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!197 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!198 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!199 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!200 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!201 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!202 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!203 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!204 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!205 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, i64 15449970}
!206 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 15449970}
!207 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, i64 15449970}
!208 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15}
!209 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!210 = !{ptr @_ZNKSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!211 = !{ptr @_ZNKSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!212 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!213 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!214 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!215 = !{ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449970}
!216 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!217 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!218 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!219 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 15449970}
!220 = !{ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, i64 27873635}
!221 = !{ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 27873636}
!222 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 27873636}
!223 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6965}
!224 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6965}
!225 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 27859706}
!226 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, i64 15450864}
!227 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!228 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_, i64 30901728}
!229 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, i64 15450864}
!230 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 30901728}
!231 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 15450864}
!232 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!233 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_, i64 15450864}
!234 = !{ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!235 = !{ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 30901728}
!236 = !{ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, i64 15450864}
!237 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!238 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!239 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!240 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!241 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!242 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!243 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!244 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!245 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!246 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!247 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!248 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaI7KoStateES1_E17_S_select_on_copyERKS2_, ptr @_ZNSt16allocator_traitsISaI7KoStateEE37select_on_container_copy_constructionERKS1_, i64 12002}
!249 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2EmRKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, i64 12002}
!250 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2EmRKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_M_create_storageEm, i64 12002}
!251 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 12002}
!252 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS3_, i64 12002}
!253 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS3_, i64 12002}
!254 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, i64 12023}
!255 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 12023}
!256 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE37select_on_container_copy_constructionERKS1_, ptr @_ZNSaI7KoStateEC2ERKS0_, i64 12002}
!257 = !{ptr @_ZNSaI7KoStateEC2ERKS0_, ptr @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_, i64 24024}
!258 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSaI7KoStateEC2ERKS0_, i64 12012}
!259 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 12012}
!260 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm, i64 12002}
!261 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m, i64 23363}
!262 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m, ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, i64 23364}
!263 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv, i64 23364}
!264 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6}
!265 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6}
!266 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_Znwm, i64 23352}
!267 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, i64 12002}
!268 = !{ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 12002}
!269 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZN9__gnu_cxxneIPK7KoStateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, i64 1484031}
!270 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEdeEv, i64 1472031}
!271 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZSt10_ConstructI7KoStateJRKS0_EEvPT_DpOT0_, i64 1472031}
!272 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEppEv, i64 1472029}
!273 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @__cxa_begin_catch, i64 1}
!274 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, i64 1}
!275 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @__cxa_rethrow, i64 1}
!276 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @__cxa_end_catch, i64 1}
!277 = !{ptr @_ZN9__gnu_cxxneIPK7KoStateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEE4baseEv, i64 2968650}
!278 = !{ptr @_ZSt10_ConstructI7KoStateJRKS0_EEvPT_DpOT0_, ptr @_ZN7KoStateC2ERKS_, i64 1472323}
!279 = !{ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, i64 12023}
!280 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, ptr @_ZSt8_DestroyI7KoStateEvPT_, i64 1513057}
!281 = !{ptr @_ZSt8_DestroyI7KoStateEvPT_, ptr @_ZN7KoStateD2Ev, i64 1513182}
!282 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, i64 23363}
!283 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, i64 23364}
!284 = !{ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, ptr @_ZdlPv, i64 23364}
!285 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 12023}
!286 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, i64 12023}
!287 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, i64 12023}
!288 = !{ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, i64 12023}
!289 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!290 = !{!"function_entry_count", i64 970}
!291 = !{!292, !292, i64 0}
!292 = !{!"any pointer", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C++ TBAA"}
!295 = !{!296, !298, i64 64}
!296 = !{!"_ZTS9UCTSearch", !292, i64 0, !297, i64 8, !298, i64 64, !298, i64 68, !302, i64 72, !299, i64 76, !299, i64 77, !292, i64 80, !299, i64 88, !299, i64 89}
!297 = !{!"_ZTS7UCTNode", !292, i64 0, !292, i64 8, !298, i64 16, !298, i64 20, !298, i64 24, !298, i64 28, !298, i64 32, !299, i64 36, !298, i64 40, !300, i64 48}
!298 = !{!"int", !293, i64 0}
!299 = !{!"bool", !293, i64 0}
!300 = !{!"_ZTSN3SMP5MutexE", !301, i64 0}
!301 = !{!"long", !293, i64 0}
!302 = !{!"float", !293, i64 0}
!303 = !{!296, !298, i64 68}
!304 = !{!296, !302, i64 72}
!305 = !{!296, !299, i64 77}
!306 = !{!296, !292, i64 80}
!307 = !{!296, !299, i64 88}
!308 = !{!"function_entry_count", i64 0}
!309 = !{!"function_entry_count", i64 38472780}
!310 = !{!"branch_weights", i32 32237802, i32 6234980}
!311 = !{!"branch_weights", i32 200937, i32 6034044}
!312 = !{!"branch_weights", i32 200937, i32 1}
!313 = !{!"branch_weights", i32 32407243, i32 31496}
!314 = !{!"branch_weights", i32 1, i32 32407243}
!315 = !{!"branch_weights", i32 1607949, i32 30799295}
!316 = !{!"branch_weights", i32 403, i32 30798893}
!317 = !{i64 0, i64 1, !318, i64 4, i64 4, !319, i64 8, i64 112, !320}
!318 = !{!299, !299, i64 0}
!319 = !{!302, !302, i64 0}
!320 = !{!293, !293, i64 0}
!321 = !{!"branch_weights", i32 1, i32 31496}
!322 = !{!"branch_weights", i32 971, i32 1}
!323 = !{!"branch_weights", i32 1, i32 971}
!324 = !{!"branch_weights", i32 967, i32 5819}
!325 = !{!"branch_weights", i32 5819, i32 1}
!326 = !{!"branch_weights", i32 5, i32 6780}
!327 = distinct !{!327, !328}
!328 = !{!"llvm.loop.mustprogress"}
!329 = !{i64 0, i64 4, !330, i64 4, i64 4, !330, i64 8, i64 4, !330, i64 12, i64 4, !330, i64 16, i64 8, !320, i64 24, i64 8, !320, i64 32, i64 2, !320, i64 36, i64 8, !320}
!330 = !{!298, !298, i64 0}
!331 = !{!"function_entry_count", i64 45626}
!332 = !{!"branch_weights", i32 45224, i32 404}
!333 = !{!"branch_weights", i32 11600, i32 33625}
!334 = !{!296, !292, i64 0}
!335 = !{!336, !298, i64 1768}
!336 = !{!"_ZTS9FastBoard", !337, i64 0, !337, i64 882, !298, i64 1764, !298, i64 1768, !298, i64 1772, !338, i64 1776, !339, i64 3540, !339, i64 4424, !339, i64 5308, !339, i64 6192, !337, i64 7076, !340, i64 7960, !341, i64 7976, !342, i64 8008, !342, i64 8016, !343, i64 8024, !298, i64 8048}
!337 = !{!"_ZTSN5boost5arrayItLm441EEE", !293, i64 0}
!338 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !293, i64 0}
!339 = !{!"_ZTSN5boost5arrayItLm442EEE", !293, i64 0}
!340 = !{!"_ZTSN5boost5arrayIiLm4EEE", !293, i64 0}
!341 = !{!"_ZTSN5boost5arrayIiLm8EEE", !293, i64 0}
!342 = !{!"_ZTSN5boost5arrayIiLm2EEE", !293, i64 0}
!343 = !{!"_ZTSSt6vectorIiSaIiEE", !344, i64 0}
!344 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !345, i64 0}
!345 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !346, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !292, i64 0, !292, i64 8, !292, i64 16}
!347 = !{!"branch_weights", i32 2, i32 970}
!348 = !{!"branch_weights", i32 1, i32 2}
!349 = !{!"branch_weights", i32 17187726, i32 2130295922}
!350 = !{!"branch_weights", i32 36, i32 27}
!351 = !{!"branch_weights", i32 6, i32 10}
!352 = !{!"branch_weights", i32 1, i32 7}
!353 = !{!"branch_weights", i32 0, i32 -2147483648}
!354 = !{!"branch_weights", i32 970, i32 1}
!355 = !{!"branch_weights", i32 121, i32 11531}
!356 = !{!357, !298, i64 8088}
!357 = !{!"_ZTS9FastState", !358, i64 0, !302, i64 8072, !298, i64 8076, !298, i64 8080, !298, i64 8084, !298, i64 8088, !298, i64 8092, !298, i64 8096, !360, i64 8100, !361, i64 8196}
!358 = !{!"_ZTS9FullBoard", !336, i64 0, !359, i64 8056, !359, i64 8064}
!359 = !{!"long long", !293, i64 0}
!360 = !{!"_ZTSN5boost5arrayIiLm24EEE", !293, i64 0}
!361 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !293, i64 0}
!362 = !{!"branch_weights", i32 11, i32 1}
!363 = !{!"function_entry_count", i64 5214}
!364 = !{!"branch_weights", i32 5208, i32 8}
!365 = !{!"branch_weights", i32 5211, i32 5}
!366 = !{!296, !299, i64 76}
!367 = !{i8 0, i8 2}
!368 = !{}
!369 = !{!370, !292, i64 0}
!370 = !{!"_ZTS9UCTWorker", !292, i64 0, !292, i64 8, !292, i64 16}
!371 = !{!370, !292, i64 16}
!372 = !{!370, !292, i64 8}
!373 = distinct !{!373, !328}
!374 = !{!"branch_weights", i32 365, i32 607}
!375 = !{!"branch_weights", i32 6065941, i32 1}
!376 = !{!"branch_weights", i32 5215, i32 6060727}
!377 = !{!"branch_weights", i32 971, i32 6064971}
!378 = !{!"branch_weights", i32 2147140246, i32 343402}
!379 = distinct !{!379, !328}
!380 = distinct !{!380, !328}
!381 = !{!296, !299, i64 89}
!382 = !{!"function_entry_count", i64 12002}
!383 = !{!384, !292, i64 0}
!384 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !292, i64 0, !292, i64 8, !292, i64 16}
!385 = !{!384, !292, i64 8}
!386 = !{!"function_entry_count", i64 15449970}
!387 = !{!388, !292, i64 0}
!388 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !292, i64 0, !292, i64 8, !292, i64 16}
!389 = !{!388, !292, i64 8}
!390 = !{!"function_entry_count", i64 18212926}
!391 = !{!336, !298, i64 8048}
!392 = !{!"function_entry_count", i64 7788864}
!393 = !{!346, !292, i64 0}
!394 = !{!346, !292, i64 8}
!395 = !{!"function_entry_count", i64 899000483}
!396 = !{!"function_entry_count", i64 28293760}
!397 = !{!"function_entry_count", i64 7788871}
!398 = !{!"function_entry_count", i64 17161144}
!399 = !{!"function_entry_count", i64 7789311}
!400 = !{!"function_entry_count", i64 97749716}
!401 = !{!"function_entry_count", i64 9372256}
!402 = !{!346, !292, i64 16}
!403 = !{!"function_entry_count", i64 16958771}
!404 = !{!"function_entry_count", i64 7788881}
!405 = !{!"function_entry_count", i64 7991268}
!406 = !{!"function_entry_count", i64 18041313}
!407 = !{!"branch_weights", i32 7788865, i32 10252450}
!408 = !{!"function_entry_count", i64 10252449}
!409 = !{!"branch_weights", i32 1, i32 2000}
!410 = !{!"function_entry_count", i64 30757342}
!411 = !{!"function_entry_count", i64 15578622}
!412 = !{!"function_entry_count", i64 69303513}
!413 = !{!"branch_weights", i32 7789312, i32 1}
!414 = !{!"function_entry_count", i64 28111432}
!415 = !{!416, !292, i64 0}
!416 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !292, i64 0}
!417 = !{!"function_entry_count", i64 19624698}
!418 = !{!"branch_weights", i32 9372251, i32 10252449}
!419 = !{!"function_entry_count", i64 10252448}
!420 = !{!"function_entry_count", i64 65148944}
!421 = !{!"function_entry_count", i64 40299030}
!422 = !{!"function_entry_count", i64 33662916}
!423 = !{!"function_entry_count", i64 15450864}
!424 = !{!"function_entry_count", i64 58513802}
!425 = !{!388, !292, i64 16}
!426 = !{!"function_entry_count", i64 33661998}
!427 = !{!"function_entry_count", i64 15449990}
!428 = !{!"function_entry_count", i64 15450948}
!429 = !{!"function_entry_count", i64 27875384}
!430 = !{!"branch_weights", i32 1749, i32 27873637}
!431 = !{!"function_entry_count", i64 27873636}
!432 = !{!"function_entry_count", i64 52722676}
!433 = !{!"function_entry_count", i64 30901728}
!434 = !{!"function_entry_count", i64 89997984}
!435 = !{!"branch_weights", i32 1749, i32 15449117}
!436 = !{!"function_entry_count", i64 216494610}
!437 = !{!438, !292, i64 0}
!438 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !292, i64 0}
!439 = !{!"function_entry_count", i64 30638340}
!440 = !{!"branch_weights", i32 2764705, i32 27873637}
!441 = !{!"function_entry_count", i64 18213858}
!442 = !{!"function_entry_count", i64 69455494}
!443 = !{!"function_entry_count", i64 139148}
!444 = !{!"function_entry_count", i64 34736}
!445 = !{!"function_entry_count", i64 24035}
!446 = !{!"function_entry_count", i64 46769}
!447 = !{!"function_entry_count", i64 12023}
!448 = !{!384, !292, i64 16}
!449 = !{!"function_entry_count", i64 24024}
!450 = !{!"function_entry_count", i64 12012}
!451 = !{!"function_entry_count", i64 12043}
!452 = !{!"function_entry_count", i64 23364}
!453 = !{!"branch_weights", i32 1, i32 23365}
!454 = !{!"function_entry_count", i64 46088}
!455 = !{!"branch_weights", i32 12002, i32 1}
!456 = !{!"branch_weights", i32 1460322, i32 12002}
!457 = distinct !{!457, !328}
!458 = !{!"function_entry_count", i64 1484325}
!459 = !{!"function_entry_count", i64 1472323}
!460 = !{!461, !292, i64 0}
!461 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPK7KoStateSt6vectorIS1_SaIS1_EEEE", !292, i64 0}
!462 = !{!"function_entry_count", i64 2968650}
!463 = !{!"branch_weights", i32 1, i32 12023}
!464 = !{!"branch_weights", i32 12023, i32 1501160}
!465 = distinct !{!465, !328}
!466 = !{!"function_entry_count", i64 1513182}
!467 = !{!"function_entry_count", i64 24004}
!468 = !{!"function_entry_count", i64 23385}
!469 = !{!"branch_weights", i32 22, i32 23365}
