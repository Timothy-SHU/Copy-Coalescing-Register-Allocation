; ModuleID = 'UCTNode.cpp'
source_filename = "UCTNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }
%"class.SMP::Lock" = type { ptr }
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
%class.KoState = type { %class.FastState.base, %"class.std::vector.8", %"class.std::vector.8" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::tuples::tuple" = type { %"struct.boost::tuples::cons" }
%"struct.boost::tuples::cons" = type { i32, %"struct.boost::tuples::cons.19" }
%"struct.boost::tuples::cons.19" = type { i32, %"struct.boost::tuples::cons.20" }
%"struct.boost::tuples::cons.20" = type { ptr }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { %class.NodeComp }
%class.NodeComp = type { i32 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { %class.NodeComp }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { %class.NodeComp }

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_ = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag = comdat any

$_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_ = comdat any

$_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_ = comdat any

$_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_ = comdat any

$_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_ = comdat any

$_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

@_ZN7UCTNodeC1Eii = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN7UCTNodeC2Eii
@_ZN7UCTNodeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7UCTNodeD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7UCTNodeC2Eii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !82 {
  store ptr null, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  store i32 %2, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !93
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  store i8 1, ptr %7, align 4, !tbaa !95
  %8 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  store i32 15, ptr %8, align 8, !tbaa !96
  %9 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  tail call void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  store i32 20, ptr %10, align 8, !tbaa !97
  %11 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  store i32 10, ptr %11, align 4, !tbaa !98
  ret void
}

declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %2 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  invoke void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %4 unwind label %13, !prof !100

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !101

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  call void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #22
  call void @_ZdlPv(ptr noundef %8) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !prof !103, !llvm.loop !104

12:                                               ; preds = %7, %4
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !107 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  ret ptr %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !107 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !108 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !94
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN7UCTNode10link_childEPS_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !107 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %class.UCTNode, ptr %1, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !102
  store ptr %1, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %4 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %181, !prof !110

8:                                                ; preds = %3
  %9 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
          to label %10 unwind label %54, !prof !110

10:                                               ; preds = %8
  %11 = icmp slt i32 %9, 2
  br i1 %11, label %12, label %121, !prof !111

12:                                               ; preds = %10
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !112
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19, !prof !124

16:                                               ; preds = %12
  %17 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 4
  %18 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 3
  br label %56

19:                                               ; preds = %111, %12
  %20 = phi ptr [ null, %12 ], [ %112, %111 ]
  %21 = phi ptr [ null, %12 ], [ %113, %111 ]
  %22 = phi ptr [ null, %12 ], [ %114, %111 ]
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %26, label %24, !prof !125

24:                                               ; preds = %19
  store i32 -1, ptr %21, align 4, !tbaa !126
  %25 = getelementptr inbounds i32, ptr %21, i64 1
  br label %121

26:                                               ; preds = %19
  %27 = ptrtoint ptr %21 to i64
  %28 = ptrtoint ptr %20 to i64
  %29 = sub i64 %27, %28
  %30 = icmp eq i64 %29, 9223372036854775804
  br i1 %30, label %31, label %33, !prof !127

31:                                               ; preds = %26
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %32 unwind label %119

32:                                               ; preds = %31
  unreachable

33:                                               ; preds = %26
  %34 = ashr exact i64 %29, 2
  %35 = call i64 @llvm.umax.i64(i64 %34, i64 1)
  %36 = add i64 %35, %34
  %37 = icmp ult i64 %36, %34
  %38 = call i64 @llvm.umin.i64(i64 %36, i64 2305843009213693951)
  %39 = select i1 %37, i64 2305843009213693951, i64 %38, !prof !127
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41, !prof !127

41:                                               ; preds = %33
  %42 = shl nuw nsw i64 %39, 2
  %43 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %42) #26
          to label %44 unwind label %119

44:                                               ; preds = %41, %33
  %45 = phi ptr [ null, %33 ], [ %43, %41 ]
  %46 = getelementptr inbounds i32, ptr %45, i64 %34
  store i32 -1, ptr %46, align 4, !tbaa !126
  %47 = icmp sgt i64 %29, 0
  br i1 %47, label %48, label %49, !prof !128

48:                                               ; preds = %44
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %45, ptr align 4 %20, i64 %29, i1 false), !prof !129
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds i8, ptr %45, i64 %29
  %51 = getelementptr inbounds i32, ptr %50, i64 1
  %52 = icmp eq ptr %20, null
  br i1 %52, label %121, label %53, !prof !130

53:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %20) #23
  br label %121

54:                                               ; preds = %8
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %175

56:                                               ; preds = %16, %111
  %57 = phi i64 [ 0, %16 ], [ %115, %111 ]
  %58 = phi ptr [ null, %16 ], [ %114, %111 ]
  %59 = phi ptr [ null, %16 ], [ %113, %111 ]
  %60 = phi ptr [ null, %16 ], [ %112, %111 ]
  %61 = getelementptr inbounds [441 x i16], ptr %1, i64 0, i64 %57
  %62 = load i16, ptr %61, align 2, !tbaa !131
  %63 = zext i16 %62 to i32
  %64 = load i32, ptr %17, align 4, !tbaa !133
  %65 = icmp eq i32 %64, %63
  br i1 %65, label %111, label %66, !prof !140

66:                                               ; preds = %56
  %67 = invoke noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %63)
          to label %68 unwind label %107, !prof !141

68:                                               ; preds = %66
  br i1 %67, label %69, label %111, !prof !142

69:                                               ; preds = %68
  %70 = load i32, ptr %18, align 8, !tbaa !143
  %71 = invoke noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %63, i32 noundef %70)
          to label %72 unwind label %107, !prof !144

72:                                               ; preds = %69
  br i1 %71, label %111, label %73, !prof !145

73:                                               ; preds = %72
  %74 = icmp eq ptr %59, %58
  br i1 %74, label %77, label %75, !prof !146

75:                                               ; preds = %73
  store i32 %63, ptr %59, align 4, !tbaa !126
  %76 = getelementptr inbounds i32, ptr %59, i64 1
  br label %111

77:                                               ; preds = %73
  %78 = ptrtoint ptr %59 to i64
  %79 = ptrtoint ptr %60 to i64
  %80 = sub i64 %78, %79
  %81 = icmp eq i64 %80, 9223372036854775804
  br i1 %81, label %82, label %84, !prof !147

82:                                               ; preds = %77
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %83 unwind label %109

83:                                               ; preds = %82
  unreachable

84:                                               ; preds = %77
  %85 = ashr exact i64 %80, 2
  %86 = call i64 @llvm.umax.i64(i64 %85, i64 1)
  %87 = add i64 %86, %85
  %88 = icmp ult i64 %87, %85
  %89 = call i64 @llvm.umin.i64(i64 %87, i64 2305843009213693951)
  %90 = select i1 %88, i64 2305843009213693951, i64 %89, !prof !147
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92, !prof !147

92:                                               ; preds = %84
  %93 = shl nuw nsw i64 %90, 2
  %94 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %93) #26
          to label %95 unwind label %107

95:                                               ; preds = %92, %84
  %96 = phi ptr [ null, %84 ], [ %94, %92 ]
  %97 = getelementptr inbounds i32, ptr %96, i64 %85
  store i32 %63, ptr %97, align 4, !tbaa !126
  %98 = icmp sgt i64 %80, 0
  br i1 %98, label %99, label %100, !prof !148

99:                                               ; preds = %95
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %96, ptr align 4 %60, i64 %80, i1 false), !prof !149
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds i8, ptr %96, i64 %80
  %102 = getelementptr inbounds i32, ptr %101, i64 1
  %103 = icmp eq ptr %60, null
  br i1 %103, label %105, label %104, !prof !150

104:                                              ; preds = %100
  call void @_ZdlPv(ptr noundef %60) #23
  br label %105

105:                                              ; preds = %100, %104
  %106 = getelementptr inbounds i32, ptr %96, i64 %90
  br label %111

107:                                              ; preds = %66, %69, %92
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %175

109:                                              ; preds = %82
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %175

111:                                              ; preds = %105, %75, %72, %68, %56
  %112 = phi ptr [ %60, %56 ], [ %60, %72 ], [ %96, %105 ], [ %60, %75 ], [ %60, %68 ]
  %113 = phi ptr [ %59, %56 ], [ %59, %72 ], [ %102, %105 ], [ %76, %75 ], [ %59, %68 ]
  %114 = phi ptr [ %58, %56 ], [ %58, %72 ], [ %106, %105 ], [ %58, %75 ], [ %58, %68 ]
  %115 = add nuw nsw i64 %57, 1
  %116 = load i32, ptr %13, align 4, !tbaa !112
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %56, label %19, !prof !151, !llvm.loop !152

119:                                              ; preds = %41, %31
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %175

121:                                              ; preds = %24, %49, %53, %10
  %122 = phi ptr [ null, %10 ], [ %20, %24 ], [ %45, %49 ], [ %45, %53 ]
  %123 = phi ptr [ null, %10 ], [ %25, %24 ], [ %51, %49 ], [ %51, %53 ]
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %171, label %125, !prof !153

125:                                              ; preds = %121
  %126 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 3
  br label %127

127:                                              ; preds = %125, %165
  %128 = phi i32 [ 0, %125 ], [ %168, %165 ]
  %129 = phi ptr [ %122, %125 ], [ %169, %165 ]
  %130 = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %131 unwind label %152, !prof !103

131:                                              ; preds = %127
  %132 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1)
          to label %133 unwind label %154, !prof !103

133:                                              ; preds = %131
  %134 = load i32, ptr %129, align 4, !tbaa !126
  store ptr null, ptr %130, align 8, !tbaa !83
  %135 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 2
  store i32 %134, ptr %135, align 8, !tbaa !92
  %136 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 3
  store i32 0, ptr %136, align 4, !tbaa !93
  %137 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 4
  store i32 0, ptr %137, align 8, !tbaa !94
  %138 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 7
  store i8 1, ptr %138, align 4, !tbaa !95
  %139 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 8
  store i32 15, ptr %139, align 8, !tbaa !96
  %140 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 9
  invoke void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %141 unwind label %154, !prof !103

141:                                              ; preds = %133
  %142 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 6
  store i32 20, ptr %142, align 8, !tbaa !97
  %143 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 5
  store i32 10, ptr %143, align 4, !tbaa !98
  %144 = load i32, ptr %129, align 4, !tbaa !126
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %165, label %146, !prof !154

146:                                              ; preds = %141
  %147 = load i32, ptr %126, align 8, !tbaa !143
  %148 = invoke noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %147, i32 noundef %144)
          to label %149 unwind label %152, !prof !155

149:                                              ; preds = %146
  %150 = icmp slt i32 %148, 3
  br i1 %150, label %151, label %156, !prof !156

151:                                              ; preds = %149
  store i32 5, ptr %139, align 8, !tbaa !96
  br label %156

152:                                              ; preds = %156, %146, %127
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %175

154:                                              ; preds = %133, %131
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %130) #23
  br label %175

156:                                              ; preds = %151, %149
  %157 = load i32, ptr %126, align 8, !tbaa !143
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = load i32, ptr %129, align 4, !tbaa !126
  %161 = invoke noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %159, i32 noundef %160)
          to label %162 unwind label %152, !prof !155

162:                                              ; preds = %156
  %163 = icmp eq i32 %161, 1
  br i1 %163, label %164, label %165, !prof !157

164:                                              ; preds = %162
  store i32 5, ptr %139, align 8, !tbaa !96
  br label %165

165:                                              ; preds = %162, %164, %141
  %166 = load ptr, ptr %0, align 8, !tbaa !83
  %167 = getelementptr inbounds %class.UCTNode, ptr %130, i64 0, i32 1
  store ptr %166, ptr %167, align 8, !tbaa !102
  store ptr %130, ptr %0, align 8, !tbaa !83
  %168 = add nuw nsw i32 %128, 1
  %169 = getelementptr inbounds i32, ptr %129, i64 1
  %170 = icmp eq ptr %169, %123
  br i1 %170, label %171, label %127, !prof !158, !llvm.loop !159

171:                                              ; preds = %165, %121
  %172 = phi i32 [ 0, %121 ], [ %168, %165 ]
  %173 = icmp eq ptr %122, null
  br i1 %173, label %181, label %174, !prof !160

174:                                              ; preds = %171
  call void @_ZdlPv(ptr noundef %122) #23
  br label %181

175:                                              ; preds = %107, %109, %152, %154, %119, %54
  %176 = phi ptr [ %20, %119 ], [ %122, %152 ], [ %122, %154 ], [ null, %54 ], [ %60, %107 ], [ %60, %109 ]
  %177 = phi { ptr, i32 } [ %120, %119 ], [ %153, %152 ], [ %155, %154 ], [ %55, %54 ], [ %108, %107 ], [ %110, %109 ]
  %178 = icmp eq ptr %176, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void @_ZdlPv(ptr noundef %176) #23
  br label %180

180:                                              ; preds = %175, %179
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  resume { ptr, i32 } %177

181:                                              ; preds = %174, %171, %3
  %182 = phi i32 [ 0, %3 ], [ %172, %171 ], [ %172, %174 ]
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %182
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #11 align 2 !prof !161 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7UCTNode10set_extendEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !107 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8440) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = alloca %class.KoState, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %167, label %6, !prof !162

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %9 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %10 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 17
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %14 = getelementptr inbounds %class.FullBoard, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %class.FastState, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  %18 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 1
  %19 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %21 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %22 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %23 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 2
  %24 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %25 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %27 = getelementptr inbounds %class.KoState, ptr %3, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  br label %28

28:                                               ; preds = %6, %164
  %29 = phi ptr [ %4, %6 ], [ %165, %164 ]
  %30 = getelementptr inbounds %class.UCTNode, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %160, label %33, !prof !163

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %3, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %34 = load ptr, ptr %9, align 8, !tbaa !164
  %35 = load ptr, ptr %8, align 8, !tbaa !165
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 2
  %40 = icmp eq ptr %34, %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %40, label %43, label %41, !prof !166

41:                                               ; preds = %33
  %42 = call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %7, i64 noundef %39, ptr noundef null)
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi ptr [ null, %33 ], [ %42, %41 ]
  store ptr %44, ptr %7, align 8, !tbaa !165
  store ptr %44, ptr %10, align 8, !tbaa !164
  %45 = getelementptr inbounds i32, ptr %44, i64 %39
  store ptr %45, ptr %11, align 8, !tbaa !167
  %46 = load ptr, ptr %8, align 8, !tbaa !168
  %47 = load ptr, ptr %9, align 8, !tbaa !168
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %46 to i64
  %50 = sub i64 %48, %49
  %51 = icmp eq ptr %47, %46
  br i1 %51, label %53, label %52, !prof !166

52:                                               ; preds = %43
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %44, ptr align 4 %46, i64 %50, i1 false)
  br label %53

53:                                               ; preds = %43, %52
  %54 = getelementptr inbounds i8, ptr %44, i64 %50
  store ptr %54, ptr %10, align 8, !tbaa !164
  %55 = load i32, ptr %13, align 8, !tbaa !169
  store i32 %55, ptr %12, align 8, !tbaa !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %16, ptr noundef nonnull align 8 dereferenceable(316) %17, i64 316, i1 false)
  %56 = load ptr, ptr %20, align 8, !tbaa !168
  %57 = load ptr, ptr %19, align 8, !tbaa !168
  %58 = ptrtoint ptr %56 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = ashr exact i64 %60, 3
  %62 = icmp eq ptr %56, %57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %62, label %73, label %63, !prof !170

63:                                               ; preds = %53
  %64 = icmp ugt i64 %61, 1152921504606846975
  br i1 %64, label %65, label %71, !prof !171

65:                                               ; preds = %63
  %66 = icmp ugt i64 %61, 2305843009213693951
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %68 unwind label %104

68:                                               ; preds = %67
  unreachable

69:                                               ; preds = %65
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %70 unwind label %104

70:                                               ; preds = %69
  unreachable

71:                                               ; preds = %63
  %72 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %60) #26
          to label %73 unwind label %102

73:                                               ; preds = %71, %53
  %74 = phi ptr [ null, %53 ], [ %72, %71 ]
  store ptr %74, ptr %18, align 8, !tbaa !172
  store ptr %74, ptr %21, align 8, !tbaa !174
  %75 = getelementptr inbounds i64, ptr %74, i64 %61
  store ptr %75, ptr %22, align 8, !tbaa !175
  br i1 %62, label %77, label %76, !prof !170

76:                                               ; preds = %73
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %74, ptr align 8 %57, i64 %60, i1 false), !prof !176
  br label %77

77:                                               ; preds = %73, %76
  %78 = getelementptr inbounds i8, ptr %74, i64 %60
  store ptr %78, ptr %21, align 8, !tbaa !174
  %79 = load ptr, ptr %25, align 8, !tbaa !168
  %80 = load ptr, ptr %24, align 8, !tbaa !168
  %81 = ptrtoint ptr %79 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = ashr exact i64 %83, 3
  %85 = icmp eq ptr %79, %80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  br i1 %85, label %96, label %86, !prof !170

86:                                               ; preds = %77
  %87 = icmp ugt i64 %84, 1152921504606846975
  br i1 %87, label %88, label %94, !prof !171

88:                                               ; preds = %86
  %89 = icmp ugt i64 %84, 2305843009213693951
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %91 unwind label %108

91:                                               ; preds = %90
  unreachable

92:                                               ; preds = %88
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %93 unwind label %108

93:                                               ; preds = %92
  unreachable

94:                                               ; preds = %86
  %95 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %83) #26
          to label %96 unwind label %106

96:                                               ; preds = %94, %77
  %97 = phi ptr [ null, %77 ], [ %95, %94 ]
  store ptr %97, ptr %23, align 8, !tbaa !172
  store ptr %97, ptr %26, align 8, !tbaa !174
  %98 = getelementptr inbounds i64, ptr %97, i64 %84
  store ptr %98, ptr %27, align 8, !tbaa !175
  br i1 %85, label %100, label %99, !prof !170

99:                                               ; preds = %96
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %97, ptr align 8 %80, i64 %83, i1 false), !prof !176
  br label %100

100:                                              ; preds = %96, %99
  %101 = getelementptr inbounds i8, ptr %97, i64 %83
  store ptr %101, ptr %26, align 8, !tbaa !174
  invoke void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %3, i32 noundef %31)
          to label %122 unwind label %128, !prof !177

102:                                              ; preds = %71
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %115

104:                                              ; preds = %67, %69
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %115

106:                                              ; preds = %94
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %110

108:                                              ; preds = %90, %92
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi { ptr, i32 } [ %107, %106 ], [ %109, %108 ]
  %112 = load ptr, ptr %18, align 8, !tbaa !172
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void @_ZdlPv(ptr noundef %112) #23
  br label %115

115:                                              ; preds = %102, %104, %114, %110
  %116 = phi { ptr, i32 } [ %111, %110 ], [ %111, %114 ], [ %103, %102 ], [ %105, %104 ]
  %117 = load ptr, ptr %7, align 8, !tbaa !165
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %117) #23
  br label %120

120:                                              ; preds = %115, %119, %159
  %121 = phi { ptr, i32 } [ %147, %159 ], [ %116, %119 ], [ %116, %115 ]
  resume { ptr, i32 } %121

122:                                              ; preds = %100
  %123 = invoke noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %3)
          to label %124 unwind label %128, !prof !177

124:                                              ; preds = %122
  br i1 %123, label %125, label %132, !prof !178

125:                                              ; preds = %124
  %126 = getelementptr inbounds %class.UCTNode, ptr %29, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !102
  invoke void @_ZN7UCTNode12delete_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %29)
          to label %132 unwind label %130

128:                                              ; preds = %122, %100
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %146

130:                                              ; preds = %125
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %146

132:                                              ; preds = %124, %125
  %133 = phi ptr [ %127, %125 ], [ %29, %124 ]
  %134 = load ptr, ptr %23, align 8, !tbaa !172
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136, !prof !178

136:                                              ; preds = %132
  call void @_ZdlPv(ptr noundef %134) #23
  br label %137

137:                                              ; preds = %136, %132
  %138 = load ptr, ptr %18, align 8, !tbaa !172
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140, !prof !178

140:                                              ; preds = %137
  call void @_ZdlPv(ptr noundef %138) #23
  br label %141

141:                                              ; preds = %140, %137
  %142 = load ptr, ptr %7, align 8, !tbaa !165
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144, !prof !177

144:                                              ; preds = %141
  call void @_ZdlPv(ptr noundef %142) #23
  br label %145

145:                                              ; preds = %141, %144
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #22
  br i1 %123, label %164, label %160, !prof !178

146:                                              ; preds = %130, %128
  %147 = phi { ptr, i32 } [ %131, %130 ], [ %129, %128 ]
  %148 = load ptr, ptr %23, align 8, !tbaa !172
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void @_ZdlPv(ptr noundef %148) #23
  br label %151

151:                                              ; preds = %150, %146
  %152 = load ptr, ptr %18, align 8, !tbaa !172
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  call void @_ZdlPv(ptr noundef %152) #23
  br label %155

155:                                              ; preds = %154, %151
  %156 = load ptr, ptr %7, align 8, !tbaa !165
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  call void @_ZdlPv(ptr noundef %156) #23
  br label %159

159:                                              ; preds = %155, %158
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #22
  br label %120

160:                                              ; preds = %145, %28
  %161 = phi ptr [ %133, %145 ], [ %29, %28 ]
  %162 = getelementptr inbounds %class.UCTNode, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !102
  br label %164

164:                                              ; preds = %145, %160
  %165 = phi ptr [ %163, %160 ], [ %133, %145 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %28, !prof !179

167:                                              ; preds = %164, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode8get_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !180 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !92
  ret i32 %3
}

declare void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7UCTNode12delete_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !107 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = load ptr, ptr %0, align 8, !tbaa !83
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  store ptr %9, ptr %0, align 8, !tbaa !83
  %10 = icmp eq ptr %1, null
  br i1 %10, label %24, label %23

11:                                               ; preds = %2, %21
  %12 = phi ptr [ %14, %21 ], [ %5, %2 ]
  %13 = getelementptr inbounds %class.UCTNode, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.UCTNode, ptr %12, i64 0, i32 1
  %18 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  store ptr %19, ptr %17, align 8, !tbaa !102
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %23

21:                                               ; preds = %11
  %22 = icmp eq ptr %14, null
  br i1 %22, label %24, label %11, !llvm.loop !181

23:                                               ; preds = %16, %7
  call void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %1) #22
  call void @_ZdlPv(ptr noundef %1) #23
  br label %24

24:                                               ; preds = %21, %23, %16, %7
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7UCTNode8set_moveEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !107 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %4 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !94
  %9 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !97
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !97
  %12 = invoke noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %13 unwind label %19, !prof !183

13:                                               ; preds = %3
  %14 = fcmp ogt float %12, 0.000000e+00
  br i1 %14, label %15, label %21, !prof !184

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !93
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !93
  br label %21

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  resume { ptr, i32 } %20

21:                                               ; preds = %15, %13
  %22 = icmp eq i32 %2, 1
  br i1 %22, label %23, label %25, !prof !185

23:                                               ; preds = %21
  %24 = fcmp olt float %12, 0.000000e+00
  br i1 %24, label %28, label %32, !prof !186

25:                                               ; preds = %21
  %26 = icmp eq i32 %2, 0
  %27 = and i1 %26, %14
  br i1 %27, label %28, label %32, !prof !187

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !98
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !98
  br label %32

32:                                               ; preds = %28, %25, %23
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

declare noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !182 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #10 align 2 !prof !188 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !94
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #10 align 2 !prof !188 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !93
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #15 align 2 !prof !189 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = mul nsw i32 %4, 1000
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = sdiv i32 %5, %7
  %9 = icmp eq i32 %1, 1
  %10 = sub nsw i32 1000, %8
  %11 = select i1 %9, i32 %10, i32 %8, !prof !190
  ret i32 %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #11 align 2 !prof !191 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !192 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !98
  %4 = mul nsw i32 %3, 1000
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !97
  %7 = sdiv i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !192 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !97
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode9do_extendEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !193 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !96
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #16 align 2 !prof !194 {
  %3 = load ptr, ptr %0, align 8, !tbaa !168
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !195

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %12, %10 ], [ %3, %2 ]
  %7 = getelementptr inbounds %class.UCTNode, ptr %6, i64 0, i32 7
  %8 = load i8, ptr %7, align 4, !tbaa !95, !range !196, !noundef !197
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !198

10:                                               ; preds = %5
  %11 = getelementptr inbounds %class.UCTNode, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !prof !198, !llvm.loop !199

14:                                               ; preds = %5, %10, %2
  %15 = phi ptr [ %3, %2 ], [ %6, %5 ], [ %12, %10 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17, !prof !200

17:                                               ; preds = %14
  %18 = icmp eq i32 %1, 1
  br label %19

19:                                               ; preds = %66, %17
  %20 = phi ptr [ null, %17 ], [ %56, %66 ]
  %21 = phi i32 [ -10000, %17 ], [ %55, %66 ]
  %22 = phi ptr [ %15, %17 ], [ %60, %66 ]
  %23 = getelementptr inbounds %class.UCTNode, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !97
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %52, !prof !201

26:                                               ; preds = %19
  %27 = getelementptr inbounds %class.UCTNode, ptr %22, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !94
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30, !prof !202

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.UCTNode, ptr %22, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !93
  %33 = mul nsw i32 %32, 1000
  %34 = sdiv i32 %33, %28
  %35 = sub nsw i32 1000, %34
  %36 = select i1 %18, i32 %35, i32 %34, !prof !203
  br label %37

37:                                               ; preds = %26, %30
  %38 = phi i32 [ %36, %30 ], [ 1100, %26 ]
  %39 = getelementptr inbounds %class.UCTNode, ptr %22, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !98
  %41 = mul nsw i32 %40, 1000
  %42 = sdiv i32 %41, %24
  %43 = sdiv i32 %28, 200
  %44 = add nsw i32 %43, 2
  %45 = sdiv i32 1000, %44
  %46 = add nsw i32 %45, 200
  %47 = mul nsw i32 %46, %42
  %48 = sub nsw i32 800, %45
  %49 = mul nsw i32 %48, %38
  %50 = add nsw i32 %47, %49
  %51 = sdiv i32 %50, 1000
  br label %52

52:                                               ; preds = %19, %37
  %53 = phi i32 [ %51, %37 ], [ 1100, %19 ]
  %54 = icmp sgt i32 %53, %21
  %55 = tail call i32 @llvm.smax.i32(i32 %53, i32 %21)
  %56 = select i1 %54, ptr %22, ptr %20, !prof !204
  br label %57

57:                                               ; preds = %62, %52
  %58 = phi ptr [ %22, %52 ], [ %60, %62 ]
  %59 = getelementptr inbounds %class.UCTNode, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !102
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62, !prof !205

62:                                               ; preds = %57
  %63 = getelementptr inbounds %class.UCTNode, ptr %60, i64 0, i32 7
  %64 = load i8, ptr %63, align 4, !tbaa !95, !range !196, !noundef !197
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %57, label %66, !prof !206, !llvm.loop !207

66:                                               ; preds = %62
  br label %19, !llvm.loop !208

67:                                               ; preds = %57, %14
  %68 = phi ptr [ null, %14 ], [ %56, %57 ]
  ret ptr %68
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN7UCTNode5validEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !107 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !95, !range !196, !noundef !197
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = load ptr, ptr %0, align 8, !tbaa !168
  %6 = icmp eq ptr %5, null
  br i1 %6, label %126, label %7, !prof !210

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 1
  br label %9

9:                                                ; preds = %7, %118
  %10 = phi ptr [ %5, %7 ], [ %124, %118 ]
  %11 = phi i32 [ 0, %7 ], [ %122, %118 ]
  %12 = phi ptr [ null, %7 ], [ %121, %118 ]
  %13 = phi ptr [ null, %7 ], [ %120, %118 ]
  %14 = phi ptr [ null, %7 ], [ %119, %118 ]
  %15 = getelementptr inbounds %class.UCTNode, ptr %10, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !94
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %71, label %18, !prof !211

18:                                               ; preds = %9
  %19 = getelementptr inbounds %class.UCTNode, ptr %10, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !93
  %21 = mul nsw i32 %20, 1000
  %22 = sdiv i32 %21, %16
  %23 = sub nsw i32 1000, %22
  %24 = select i1 %8, i32 %23, i32 %22, !prof !212
  %25 = icmp eq ptr %13, %12
  br i1 %25, label %30, label %26, !prof !213

26:                                               ; preds = %18
  store i32 %24, ptr %13, align 8
  %27 = getelementptr inbounds i8, ptr %13, i64 8
  store i32 %16, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %13, i64 16
  store ptr %10, ptr %28, align 8
  %29 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 1
  br label %118

30:                                               ; preds = %18
  %31 = ptrtoint ptr %13 to i64
  %32 = ptrtoint ptr %14 to i64
  %33 = sub i64 %31, %32
  %34 = icmp eq i64 %33, 9223372036854775800
  br i1 %34, label %35, label %37, !prof !214

35:                                               ; preds = %30
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %36 unwind label %69

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %30
  %38 = sdiv exact i64 %33, 24
  %39 = call i64 @llvm.umax.i64(i64 %38, i64 1)
  %40 = add i64 %39, %38
  %41 = icmp ult i64 %40, %38
  %42 = call i64 @llvm.umin.i64(i64 %40, i64 384307168202282325)
  %43 = select i1 %41, i64 384307168202282325, i64 %42, !prof !214
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45, !prof !214

45:                                               ; preds = %37
  %46 = mul nuw nsw i64 %43, 24
  %47 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %46) #26
          to label %48 unwind label %67

48:                                               ; preds = %45, %37
  %49 = phi ptr [ null, %37 ], [ %47, %45 ]
  %50 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %49, i64 %38
  store i32 %24, ptr %50, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 8
  store i32 %16, ptr %51, align 8
  %52 = getelementptr inbounds i8, ptr %50, i64 16
  store ptr %10, ptr %52, align 8
  %53 = icmp eq ptr %14, %13
  br i1 %53, label %54, label %58, !prof !215

54:                                               ; preds = %58, %48
  %55 = phi ptr [ %49, %48 ], [ %62, %58 ]
  %56 = getelementptr %"class.boost::tuples::tuple", ptr %55, i64 1
  %57 = icmp eq ptr %14, null
  br i1 %57, label %65, label %64, !prof !216

58:                                               ; preds = %48, %58
  %59 = phi ptr [ %62, %58 ], [ %49, %48 ]
  %60 = phi ptr [ %61, %58 ], [ %14, %48 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %60, i64 24, i1 false), !alias.scope !217
  %61 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %60, i64 1
  %62 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %59, i64 1
  %63 = icmp eq ptr %61, %13
  br i1 %63, label %54, label %58, !prof !221, !llvm.loop !222

64:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %14) #23
  br label %65

65:                                               ; preds = %54, %64
  %66 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %49, i64 %43
  br label %118

67:                                               ; preds = %45
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %226

69:                                               ; preds = %35
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %226

71:                                               ; preds = %9
  %72 = icmp eq ptr %13, %12
  br i1 %72, label %77, label %73, !prof !223

73:                                               ; preds = %71
  store i32 0, ptr %13, align 8
  %74 = getelementptr inbounds i8, ptr %13, i64 8
  store i32 0, ptr %74, align 8
  %75 = getelementptr inbounds i8, ptr %13, i64 16
  store ptr %10, ptr %75, align 8
  %76 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 1
  br label %118

77:                                               ; preds = %71
  %78 = ptrtoint ptr %13 to i64
  %79 = ptrtoint ptr %14 to i64
  %80 = sub i64 %78, %79
  %81 = icmp eq i64 %80, 9223372036854775800
  br i1 %81, label %82, label %84, !prof !214

82:                                               ; preds = %77
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %83 unwind label %116

83:                                               ; preds = %82
  unreachable

84:                                               ; preds = %77
  %85 = sdiv exact i64 %80, 24
  %86 = call i64 @llvm.umax.i64(i64 %85, i64 1)
  %87 = add i64 %86, %85
  %88 = icmp ult i64 %87, %85
  %89 = call i64 @llvm.umin.i64(i64 %87, i64 384307168202282325)
  %90 = select i1 %88, i64 384307168202282325, i64 %89, !prof !214
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92, !prof !214

92:                                               ; preds = %84
  %93 = mul nuw nsw i64 %90, 24
  %94 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %93) #26
          to label %95 unwind label %114

95:                                               ; preds = %92, %84
  %96 = phi ptr [ null, %84 ], [ %94, %92 ]
  %97 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %96, i64 %85
  store i32 0, ptr %97, align 8
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  store i32 0, ptr %98, align 8
  %99 = getelementptr inbounds i8, ptr %97, i64 16
  store ptr %10, ptr %99, align 8
  %100 = icmp eq ptr %14, %13
  br i1 %100, label %101, label %105, !prof !215

101:                                              ; preds = %105, %95
  %102 = phi ptr [ %96, %95 ], [ %109, %105 ]
  %103 = getelementptr %"class.boost::tuples::tuple", ptr %102, i64 1
  %104 = icmp eq ptr %14, null
  br i1 %104, label %112, label %111, !prof !216

105:                                              ; preds = %95, %105
  %106 = phi ptr [ %109, %105 ], [ %96, %95 ]
  %107 = phi ptr [ %108, %105 ], [ %14, %95 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %106, ptr noundef nonnull align 8 dereferenceable(24) %107, i64 24, i1 false), !alias.scope !224
  %108 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %107, i64 1
  %109 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %106, i64 1
  %110 = icmp eq ptr %108, %13
  br i1 %110, label %101, label %105, !prof !221, !llvm.loop !222

111:                                              ; preds = %101
  call void @_ZdlPv(ptr noundef %14) #23
  br label %112

112:                                              ; preds = %101, %111
  %113 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %96, i64 %90
  br label %118

114:                                              ; preds = %92
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %226

116:                                              ; preds = %82
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %226

118:                                              ; preds = %73, %112, %26, %65
  %119 = phi ptr [ %49, %65 ], [ %14, %26 ], [ %96, %112 ], [ %14, %73 ]
  %120 = phi ptr [ %56, %65 ], [ %29, %26 ], [ %103, %112 ], [ %76, %73 ]
  %121 = phi ptr [ %66, %65 ], [ %12, %26 ], [ %113, %112 ], [ %12, %73 ]
  %122 = call i32 @llvm.smax.i32(i32 %11, i32 %16)
  %123 = getelementptr inbounds %class.UCTNode, ptr %10, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !168
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %9, !prof !228, !llvm.loop !229

126:                                              ; preds = %118, %2
  %127 = phi ptr [ null, %2 ], [ %119, %118 ]
  %128 = phi ptr [ null, %2 ], [ %120, %118 ]
  %129 = phi i32 [ 0, %2 ], [ %122, %118 ]
  %130 = icmp ne ptr %127, %128
  br i1 %130, label %131, label %212, !prof !230

131:                                              ; preds = %126
  %132 = ptrtoint ptr %128 to i64
  %133 = ptrtoint ptr %127 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 24
  %136 = add nsw i64 %135, 1
  %137 = sdiv i64 %136, 2
  %138 = call i64 @llvm.smin.i64(i64 %137, i64 384307168202282325)
  br label %139

139:                                              ; preds = %153, %131
  %140 = phi i64 [ %138, %131 ], [ %154, %153 ]
  %141 = phi ptr [ undef, %131 ], [ %155, %153 ]
  %142 = phi i64 [ undef, %131 ], [ %156, %153 ]
  %143 = icmp sgt i64 %140, 0
  br i1 %143, label %144, label %157, !prof !230

144:                                              ; preds = %139
  %145 = mul i64 %140, 24
  %146 = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %145, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #27
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %153, !prof !231

148:                                              ; preds = %144
  %149 = icmp eq i64 %140, 1
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = add nuw nsw i64 %140, 1
  %152 = lshr i64 %151, 1
  br label %153

153:                                              ; preds = %150, %148, %144
  %154 = phi i64 [ %140, %144 ], [ %152, %150 ], [ 0, %148 ]
  %155 = phi ptr [ %146, %144 ], [ %141, %150 ], [ %141, %148 ]
  %156 = phi i64 [ %140, %144 ], [ %142, %150 ], [ %142, %148 ]
  br i1 %147, label %139, label %157, !prof !231, !llvm.loop !232

157:                                              ; preds = %153, %139
  %158 = phi ptr [ null, %139 ], [ %155, %153 ]
  %159 = phi i64 [ 0, %139 ], [ %156, %153 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %183, label %161, !prof !231

161:                                              ; preds = %157
  %162 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %158, i64 %159
  %163 = icmp eq i64 %159, 0
  br i1 %163, label %183, label %164, !prof !231

164:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %158, ptr noundef nonnull align 8 dereferenceable(24) %127, i64 24, i1 false)
  %165 = icmp eq i64 %159, 1
  br i1 %165, label %174, label %166, !prof !210

166:                                              ; preds = %164
  %167 = getelementptr %"class.boost::tuples::tuple", ptr %158, i64 1
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %172, %168 ], [ %167, %166 ]
  %170 = phi ptr [ %171, %168 ], [ %158, %166 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %169, ptr noundef nonnull align 8 dereferenceable(24) %170, i64 24, i1 false)
  %171 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %170, i64 1
  %172 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %169, i64 1
  %173 = icmp eq ptr %172, %162
  br i1 %173, label %174, label %168, !prof !233, !llvm.loop !234

174:                                              ; preds = %168, %164
  %175 = phi ptr [ %158, %164 ], [ %171, %168 ]
  %176 = load i32, ptr %175, align 8, !tbaa !235
  store i32 %176, ptr %127, align 8, !tbaa !235
  %177 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %175, i64 0, i32 1
  %178 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %127, i64 0, i32 1
  %179 = load i32, ptr %177, align 8, !tbaa !239
  store i32 %179, ptr %178, align 8, !tbaa !239
  %180 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %175, i64 0, i32 1, i32 1
  %181 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %127, i64 0, i32 1, i32 1
  %182 = load ptr, ptr %180, align 8, !tbaa !240
  store ptr %182, ptr %181, align 8, !tbaa !240
  br label %183

183:                                              ; preds = %157, %174, %161
  %184 = phi ptr [ null, %157 ], [ %158, %174 ], [ %158, %161 ]
  %185 = phi i64 [ 0, %157 ], [ %159, %174 ], [ %159, %161 ]
  %186 = icmp eq ptr %184, null
  br i1 %186, label %187, label %190, !prof !231

187:                                              ; preds = %183
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %127, ptr %128, i32 %129)
          to label %191 unwind label %188

188:                                              ; preds = %190, %187
  %189 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %184) #22
  br label %226

190:                                              ; preds = %183
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %127, ptr %128, ptr noundef nonnull %184, i64 noundef %185, i32 %129)
          to label %191 unwind label %188, !prof !230

191:                                              ; preds = %187, %190
  call void @_ZdlPv(ptr noundef %184) #22
  %192 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %128, i64 -1
  %193 = icmp ult ptr %127, %192
  %194 = select i1 %130, i1 %193, i1 false
  br i1 %194, label %195, label %212, !prof !241

195:                                              ; preds = %191, %195
  %196 = phi ptr [ %210, %195 ], [ %192, %191 ]
  %197 = phi ptr [ %196, %195 ], [ %128, %191 ]
  %198 = phi ptr [ %209, %195 ], [ %127, %191 ]
  %199 = load i32, ptr %198, align 8
  %200 = getelementptr inbounds i8, ptr %198, i64 8
  %201 = load i32, ptr %200, align 8
  %202 = getelementptr inbounds i8, ptr %198, i64 16
  %203 = load ptr, ptr %202, align 8
  %204 = load i32, ptr %196, align 8, !tbaa !235
  store i32 %204, ptr %198, align 8, !tbaa !235
  %205 = getelementptr %"class.boost::tuples::tuple", ptr %197, i64 -1, i32 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !239
  store i32 %206, ptr %200, align 8, !tbaa !239
  %207 = getelementptr %"class.boost::tuples::tuple", ptr %197, i64 -1, i32 0, i32 1, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !240
  store ptr %208, ptr %202, align 8, !tbaa !240
  store i32 %199, ptr %196, align 8, !tbaa !235
  store i32 %201, ptr %205, align 8, !tbaa !239
  store ptr %203, ptr %207, align 8, !tbaa !240
  %209 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %198, i64 1
  %210 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %196, i64 -1
  %211 = icmp ult ptr %209, %210
  br i1 %211, label %195, label %212, !prof !242, !llvm.loop !243

212:                                              ; preds = %195, %126, %191
  store ptr null, ptr %0, align 8, !tbaa !83
  %213 = icmp eq ptr %127, %128
  br i1 %213, label %222, label %214, !prof !210

214:                                              ; preds = %212, %214
  %215 = phi ptr [ %220, %214 ], [ %127, %212 ]
  %216 = phi ptr [ %218, %214 ], [ null, %212 ]
  %217 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %215, i64 0, i32 1, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !168
  %219 = getelementptr inbounds %class.UCTNode, ptr %218, i64 0, i32 1
  store ptr %216, ptr %219, align 8, !tbaa !102
  store ptr %218, ptr %0, align 8, !tbaa !83
  %220 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %215, i64 1
  %221 = icmp eq ptr %220, %128
  br i1 %221, label %222, label %214, !prof !228, !llvm.loop !244

222:                                              ; preds = %214, %212
  %223 = icmp eq ptr %127, null
  br i1 %223, label %225, label %224, !prof !231

224:                                              ; preds = %222
  call void @_ZdlPv(ptr noundef %127) #23
  br label %225

225:                                              ; preds = %222, %224
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void

226:                                              ; preds = %114, %116, %67, %69, %188
  %227 = phi ptr [ %127, %188 ], [ %14, %67 ], [ %14, %69 ], [ %14, %114 ], [ %14, %116 ]
  %228 = phi { ptr, i32 } [ %189, %188 ], [ %68, %67 ], [ %70, %69 ], [ %115, %114 ], [ %117, %116 ]
  %229 = icmp eq ptr %227, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %227) #23
  br label %231

231:                                              ; preds = %226, %230
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  resume { ptr, i32 } %228
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7UCTNode15get_first_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !245 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7UCTNode11get_siblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #15 align 2 !prof !192 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #17 align 2 !prof !246 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !195

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9, !prof !247

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !248, !llvm.loop !249

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ %5, %4 ], [ null, %9 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #17 align 2 !prof !250 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !195

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13, !prof !251

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !252, !llvm.loop !253

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ %5, %4 ], [ null, %9 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 !prof !254 {
  %2 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 4, !tbaa !95
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7UCTNode10updateRAVEER7Playouti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) local_unnamed_addr #10 align 2 !prof !194 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = alloca %"class.SMP::Lock", align 8
  %6 = tail call noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %7 = load ptr, ptr %0, align 8, !tbaa !168
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9, !prof !200

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = fcmp olt float %6, 0.000000e+00
  %12 = fcmp ogt float %6, 0.000000e+00
  br label %13

13:                                               ; preds = %9, %41
  %14 = phi ptr [ %7, %9 ], [ %43, %41 ]
  %15 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !92
  br i1 %10, label %17, label %29, !prof !255

17:                                               ; preds = %13
  %18 = call noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 0, i32 noundef %16)
  br i1 %18, label %19, label %41, !prof !256

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %20 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %21 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !97
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !97
  br i1 %12, label %24, label %28, !prof !257

24:                                               ; preds = %19
  %25 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !98
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !98
  br label %28

28:                                               ; preds = %24, %19
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %41

29:                                               ; preds = %13
  %30 = call noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 1, i32 noundef %16)
  br i1 %30, label %31, label %41, !prof !258

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %32 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 9
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %32)
  %33 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !97
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !97
  br i1 %11, label %36, label %40, !prof !259

36:                                               ; preds = %31
  %37 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !98
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !98
  br label %40

40:                                               ; preds = %36, %31
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %41

41:                                               ; preds = %29, %40, %17, %28
  %42 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !168
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !prof !260, !llvm.loop !261

45:                                               ; preds = %41, %3
  ret void
}

declare noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 !prof !262 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !263

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !107 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 360
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2)
  br label %9

9:                                                ; preds = %8, %10
  ret void

10:                                               ; preds = %3
  %11 = udiv i64 %6, 48
  %12 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 %11
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %12, i32 %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %12, ptr %1, i32 %2)
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %4, %13
  %15 = sdiv exact i64 %14, 24
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %12, ptr %1, i64 noundef %11, i64 noundef %15, i32 %2)
  br label %9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4) local_unnamed_addr #10 comdat !prof !209 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 24
  %10 = add nsw i64 %9, 1
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 %11
  %13 = icmp sgt i64 %11, %3
  br i1 %13, label %14, label %15, !prof !231

14:                                               ; preds = %5
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %0, ptr %12, ptr noundef %2, i64 noundef %3, i32 %4)
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %12, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4)
  br label %16

15:                                               ; preds = %5
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %0, ptr %12, ptr noundef %2, i32 %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %12, ptr %1, ptr noundef %2, i32 %4)
  br label %16

16:                                               ; preds = %15, %14
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %6, %17
  %19 = sdiv exact i64 %18, 24
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %12, ptr %1, i64 noundef %11, i64 noundef %19, ptr noundef %2, i64 noundef %3, i32 %4)
  ret void
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #10 comdat !prof !264 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %133, label %5, !prof !265

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %133, label %8, !prof !266

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  br label %10

10:                                               ; preds = %8, %130
  %11 = phi ptr [ %6, %8 ], [ %131, %130 ]
  %12 = phi ptr [ %0, %8 ], [ %11, %130 ]
  %13 = load i32, ptr %11, align 8
  %14 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = load i32, ptr %0, align 8
  %17 = load i32, ptr %9, align 8
  %18 = icmp ne i32 %15, 0
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %18, i1 true, i1 %19, !prof !267
  br i1 %20, label %21, label %76, !prof !268

21:                                               ; preds = %10
  %22 = icmp ne i32 %17, 0
  %23 = icmp eq i32 %15, 0
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %47, !prof !269

25:                                               ; preds = %21
  %26 = select i1 %23, i1 %19, i1 false, !prof !270
  br i1 %26, label %76, label %27, !prof !270

27:                                               ; preds = %25
  %28 = icmp sgt i32 %15, 15
  %29 = icmp sgt i32 %17, 15
  %30 = select i1 %28, i1 %29, i1 false, !prof !271
  br i1 %30, label %31, label %43, !prof !272

31:                                               ; preds = %27
  %32 = shl nuw nsw i32 %15, 1
  %33 = icmp sgt i32 %32, %2
  %34 = shl nuw nsw i32 %17, 1
  %35 = icmp sgt i32 %34, %2
  %36 = select i1 %33, i1 %35, i1 false, !prof !273
  br i1 %36, label %37, label %43, !prof !274

37:                                               ; preds = %31
  %38 = icmp eq i32 %13, %16
  br i1 %38, label %39, label %41, !prof !275

39:                                               ; preds = %37
  %40 = icmp sgt i32 %15, %17
  br label %45

41:                                               ; preds = %37
  %42 = icmp sgt i32 %13, %16
  br label %45

43:                                               ; preds = %31, %27
  %44 = icmp sgt i32 %15, %17
  br label %45

45:                                               ; preds = %39, %41, %43
  %46 = phi i1 [ %40, %39 ], [ %42, %41 ], [ %44, %43 ]
  br i1 %46, label %47, label %76, !prof !276

47:                                               ; preds = %21, %45
  %48 = ptrtoint ptr %0 to i64
  %49 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1, i32 0, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %11 to i64
  %54 = sub i64 %53, %48
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %74, !prof !277

56:                                               ; preds = %47
  %57 = udiv exact i64 %54, 24
  %58 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 2
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ %72, %59 ], [ %57, %56 ]
  %61 = phi ptr [ %64, %59 ], [ %58, %56 ]
  %62 = phi ptr [ %63, %59 ], [ %11, %56 ]
  %63 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %62, i64 -1
  %64 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %61, i64 -1
  %65 = load i32, ptr %63, align 8, !tbaa !235
  store i32 %65, ptr %64, align 8, !tbaa !235
  %66 = getelementptr %"class.boost::tuples::tuple", ptr %62, i64 -1, i32 0, i32 1
  %67 = getelementptr %"class.boost::tuples::tuple", ptr %61, i64 -1, i32 0, i32 1
  %68 = load i32, ptr %66, align 8, !tbaa !239
  store i32 %68, ptr %67, align 8, !tbaa !239
  %69 = getelementptr %"class.boost::tuples::tuple", ptr %62, i64 -1, i32 0, i32 1, i32 1
  %70 = getelementptr %"class.boost::tuples::tuple", ptr %61, i64 -1, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %69, align 8, !tbaa !240
  store ptr %71, ptr %70, align 8, !tbaa !240
  %72 = add nsw i64 %60, -1
  %73 = icmp sgt i64 %60, 1
  br i1 %73, label %59, label %74, !prof !278, !llvm.loop !279

74:                                               ; preds = %59, %47
  %75 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1, i32 1
  store i32 %13, ptr %0, align 8, !tbaa !235
  store i32 %50, ptr %9, align 8, !tbaa !239
  store ptr %52, ptr %75, align 8, !tbaa !240
  br label %130

76:                                               ; preds = %10, %25, %45
  %77 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1, i32 0, i32 1, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr %"class.boost::tuples::tuple", ptr %12, i64 0, i32 0, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %18, i1 true, i1 %81, !prof !280
  br i1 %82, label %83, label %126, !prof !281

83:                                               ; preds = %76
  %84 = icmp eq i32 %15, 0
  br label %85

85:                                               ; preds = %115, %83
  %86 = phi i1 [ %81, %83 ], [ %124, %115 ]
  %87 = phi i32 [ %80, %83 ], [ %123, %115 ]
  %88 = phi ptr [ %11, %83 ], [ %89, %115 ]
  %89 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %88, i64 -1
  %90 = load i32, ptr %89, align 8
  %91 = icmp ne i32 %87, 0
  %92 = or i1 %84, %91
  br i1 %92, label %93, label %115, !prof !282

93:                                               ; preds = %85
  %94 = select i1 %84, i1 %86, i1 false, !prof !283
  br i1 %94, label %126, label %95, !prof !283

95:                                               ; preds = %93
  %96 = icmp sgt i32 %15, 15
  %97 = icmp sgt i32 %87, 15
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %111, !prof !284

99:                                               ; preds = %95
  %100 = shl nuw nsw i32 %15, 1
  %101 = icmp sgt i32 %100, %2
  %102 = shl nuw nsw i32 %87, 1
  %103 = icmp sgt i32 %102, %2
  %104 = select i1 %101, i1 %103, i1 false, !prof !285
  br i1 %104, label %105, label %111, !prof !286

105:                                              ; preds = %99
  %106 = icmp eq i32 %13, %90
  br i1 %106, label %107, label %109, !prof !287

107:                                              ; preds = %105
  %108 = icmp sgt i32 %15, %87
  br label %113

109:                                              ; preds = %105
  %110 = icmp sgt i32 %13, %90
  br label %113

111:                                              ; preds = %99, %95
  %112 = icmp sgt i32 %15, %87
  br label %113

113:                                              ; preds = %111, %109, %107
  %114 = phi i1 [ %108, %107 ], [ %110, %109 ], [ %112, %111 ]
  br i1 %114, label %115, label %126, !prof !288

115:                                              ; preds = %113, %85
  store i32 %90, ptr %88, align 8, !tbaa !235
  %116 = getelementptr %"class.boost::tuples::tuple", ptr %88, i64 -1, i32 0, i32 1
  %117 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %88, i64 0, i32 1
  %118 = load i32, ptr %116, align 8, !tbaa !239
  store i32 %118, ptr %117, align 8, !tbaa !239
  %119 = getelementptr %"class.boost::tuples::tuple", ptr %88, i64 -1, i32 0, i32 1, i32 1
  %120 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %88, i64 0, i32 1, i32 1
  %121 = load ptr, ptr %119, align 8, !tbaa !240
  store ptr %121, ptr %120, align 8, !tbaa !240
  %122 = getelementptr %"class.boost::tuples::tuple", ptr %88, i64 -2, i32 0, i32 1
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %18, i1 true, i1 %124, !prof !280
  br i1 %125, label %85, label %126, !prof !289, !llvm.loop !290

126:                                              ; preds = %93, %113, %115, %76
  %127 = phi ptr [ %11, %76 ], [ %88, %113 ], [ %88, %93 ], [ %89, %115 ]
  store i32 %13, ptr %127, align 8, !tbaa !235
  %128 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %127, i64 0, i32 1
  store i32 %15, ptr %128, align 8, !tbaa !239
  %129 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %127, i64 0, i32 1, i32 1
  store ptr %78, ptr %129, align 8, !tbaa !240
  br label %130

130:                                              ; preds = %74, %126
  %131 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %11, i64 1
  %132 = icmp eq ptr %131, %1
  br i1 %132, label %133, label %10, !prof !291, !llvm.loop !292

133:                                              ; preds = %130, %5, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, i32 %5) local_unnamed_addr #0 comdat !prof !107 {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 4
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store i32 %5, ptr %9, align 4
  %10 = icmp eq i64 %3, 0
  %11 = icmp eq i64 %4, 0
  %12 = or i1 %10, %11
  br i1 %12, label %93, label %13

13:                                               ; preds = %6
  %14 = add nsw i64 %4, %3
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr %1, ptr %0)
  br i1 %17, label %18, label %93

18:                                               ; preds = %16
  %19 = load i32, ptr %0, align 8
  %20 = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr %0, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %1, align 8, !tbaa !235
  store i32 %24, ptr %0, align 8, !tbaa !235
  %25 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !239
  store i32 %26, ptr %20, align 8, !tbaa !239
  %27 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %1, i64 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  store ptr %28, ptr %22, align 8, !tbaa !240
  store i32 %19, ptr %1, align 8, !tbaa !235
  store i32 %21, ptr %25, align 8, !tbaa !239
  store ptr %23, ptr %27, align 8, !tbaa !240
  br label %93

29:                                               ; preds = %13
  %30 = icmp sgt i64 %3, %4
  br i1 %30, label %31, label %57

31:                                               ; preds = %29
  %32 = sdiv i64 %3, 2
  %33 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 %5, ptr %8, align 4
  %34 = ptrtoint ptr %2 to i64
  %35 = ptrtoint ptr %1 to i64
  %36 = sub i64 %34, %35
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = udiv exact i64 %36, 24
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %50, %40 ], [ %39, %38 ]
  %42 = phi ptr [ %49, %40 ], [ %1, %38 ]
  %43 = lshr i64 %41, 1
  %44 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %42, i64 %43
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr %44, ptr noundef nonnull align 8 dereferenceable(24) %33)
  %46 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %44, i64 1
  %47 = xor i64 %43, -1
  %48 = add nsw i64 %41, %47
  %49 = select i1 %45, ptr %46, ptr %42
  %50 = select i1 %45, i64 %48, i64 %43
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %40, label %52, !llvm.loop !293

52:                                               ; preds = %40, %31
  %53 = phi ptr [ %1, %31 ], [ %49, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %54, %35
  %56 = sdiv exact i64 %55, 24
  br label %83

57:                                               ; preds = %29
  %58 = sdiv i64 %4, 2
  %59 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %1, i64 %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %5, ptr %7, align 4
  %60 = ptrtoint ptr %1 to i64
  %61 = ptrtoint ptr %0 to i64
  %62 = sub i64 %60, %61
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = udiv exact i64 %62, 24
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %76, %66 ], [ %65, %64 ]
  %68 = phi ptr [ %75, %66 ], [ %0, %64 ]
  %69 = lshr i64 %67, 1
  %70 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %68, i64 %69
  %71 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr %70)
  %72 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %70, i64 1
  %73 = xor i64 %69, -1
  %74 = add nsw i64 %67, %73
  %75 = select i1 %71, ptr %68, ptr %72
  %76 = select i1 %71, i64 %69, i64 %74
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %66, label %78, !llvm.loop !294

78:                                               ; preds = %66, %57
  %79 = phi ptr [ %0, %57 ], [ %75, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %80 = ptrtoint ptr %79 to i64
  %81 = sub i64 %80, %61
  %82 = sdiv exact i64 %81, 24
  br label %83

83:                                               ; preds = %78, %52
  %84 = phi ptr [ %33, %52 ], [ %79, %78 ]
  %85 = phi ptr [ %53, %52 ], [ %59, %78 ]
  %86 = phi i64 [ %56, %52 ], [ %58, %78 ]
  %87 = phi i64 [ %32, %52 ], [ %82, %78 ]
  %88 = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %84, ptr %1, ptr %85)
  %89 = load i32, ptr %9, align 4
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %84, ptr %88, i64 noundef %87, i64 noundef %86, i32 %89)
  %90 = sub nsw i64 %3, %87
  %91 = sub nsw i64 %4, %86
  %92 = load i32, ptr %9, align 4
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %88, ptr %85, ptr %2, i64 noundef %90, i64 noundef %91, i32 %92)
  br label %93

93:                                               ; preds = %16, %18, %6, %83
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr %2) local_unnamed_addr #10 comdat align 2 !prof !107 {
  %4 = load i32, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load i32, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %6, 0
  %11 = icmp eq i32 %9, 0
  %12 = select i1 %10, i1 true, i1 %11, !prof !267
  br i1 %12, label %13, label %38, !prof !268

13:                                               ; preds = %3
  %14 = icmp ne i32 %9, 0
  %15 = icmp eq i32 %6, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %38, !prof !269

17:                                               ; preds = %13
  %18 = select i1 %15, i1 %11, i1 false, !prof !270
  br i1 %18, label %38, label %19, !prof !270

19:                                               ; preds = %17
  %20 = icmp sgt i32 %6, 15
  %21 = icmp sgt i32 %9, 15
  %22 = select i1 %20, i1 %21, i1 false, !prof !271
  br i1 %22, label %23, label %36, !prof !272

23:                                               ; preds = %19
  %24 = shl nuw nsw i32 %6, 1
  %25 = load i32, ptr %0, align 4, !tbaa !295
  %26 = icmp sgt i32 %24, %25
  %27 = shl nuw nsw i32 %9, 1
  %28 = icmp sgt i32 %27, %25
  %29 = select i1 %26, i1 %28, i1 false, !prof !273
  br i1 %29, label %30, label %36, !prof !274

30:                                               ; preds = %23
  %31 = icmp eq i32 %4, %7
  br i1 %31, label %32, label %34, !prof !275

32:                                               ; preds = %30
  %33 = icmp sgt i32 %6, %9
  br label %38

34:                                               ; preds = %30
  %35 = icmp sgt i32 %4, %7
  br label %38

36:                                               ; preds = %23, %19
  %37 = icmp sgt i32 %6, %9
  br label %38

38:                                               ; preds = %3, %13, %17, %32, %34, %36
  %39 = phi i1 [ %33, %32 ], [ %35, %34 ], [ %37, %36 ], [ false, %3 ], [ true, %13 ], [ false, %17 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !107 {
  %4 = load i32, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load i32, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %6, 0
  %11 = icmp eq i32 %9, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = icmp ne i32 %9, 0
  %15 = icmp eq i32 %6, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = select i1 %15, i1 %11, i1 false
  br i1 %18, label %38, label %19

19:                                               ; preds = %17
  %20 = icmp sgt i32 %6, 15
  %21 = icmp sgt i32 %9, 15
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = shl nuw nsw i32 %6, 1
  %25 = load i32, ptr %0, align 4, !tbaa !295
  %26 = icmp sgt i32 %24, %25
  %27 = shl nuw nsw i32 %9, 1
  %28 = icmp sgt i32 %27, %25
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = icmp eq i32 %4, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = icmp sgt i32 %6, %9
  br label %38

34:                                               ; preds = %30
  %35 = icmp sgt i32 %4, %7
  br label %38

36:                                               ; preds = %23, %19
  %37 = icmp sgt i32 %6, %9
  br label %38

38:                                               ; preds = %3, %13, %17, %32, %34, %36
  %39 = phi i1 [ %33, %32 ], [ %35, %34 ], [ %37, %36 ], [ false, %3 ], [ true, %13 ], [ false, %17 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !107 {
  %4 = load i32, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load i32, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %6, 0
  %11 = icmp eq i32 %9, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = icmp ne i32 %9, 0
  %15 = icmp eq i32 %6, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = select i1 %15, i1 %11, i1 false
  br i1 %18, label %38, label %19

19:                                               ; preds = %17
  %20 = icmp sgt i32 %6, 15
  %21 = icmp sgt i32 %9, 15
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = shl nuw nsw i32 %6, 1
  %25 = load i32, ptr %0, align 4, !tbaa !295
  %26 = icmp sgt i32 %24, %25
  %27 = shl nuw nsw i32 %9, 1
  %28 = icmp sgt i32 %27, %25
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = icmp eq i32 %4, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = icmp sgt i32 %6, %9
  br label %38

34:                                               ; preds = %30
  %35 = icmp sgt i32 %4, %7
  br label %38

36:                                               ; preds = %23, %19
  %37 = icmp sgt i32 %6, %9
  br label %38

38:                                               ; preds = %3, %13, %17, %32, %34, %36
  %39 = phi i1 [ %33, %32 ], [ %35, %34 ], [ %37, %36 ], [ false, %3 ], [ true, %13 ], [ false, %17 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !107 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, %1
  br i1 %6, label %103, label %7

7:                                                ; preds = %5
  %8 = ptrtoint ptr %2 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %12, %9
  %14 = sdiv exact i64 %13, 24
  %15 = sub nsw i64 %11, %14
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %7
  %18 = icmp eq ptr %0, %1
  br i1 %18, label %103, label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %33, %19 ], [ %1, %17 ]
  %21 = phi ptr [ %32, %19 ], [ %0, %17 ]
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %21, i64 8
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %21, i64 16
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %20, align 8, !tbaa !235
  store i32 %27, ptr %21, align 8, !tbaa !235
  %28 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %20, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !239
  store i32 %29, ptr %23, align 8, !tbaa !239
  %30 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %20, i64 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !240
  store ptr %31, ptr %25, align 8, !tbaa !240
  store i32 %22, ptr %20, align 8, !tbaa !235
  store i32 %24, ptr %28, align 8, !tbaa !239
  store ptr %26, ptr %30, align 8, !tbaa !240
  %32 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %21, i64 1
  %33 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %20, i64 1
  %34 = icmp eq ptr %32, %1
  br i1 %34, label %103, label %19, !llvm.loop !297

35:                                               ; preds = %7
  %36 = sub i64 %8, %12
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  br label %38

38:                                               ; preds = %81, %35
  %39 = phi i64 [ %11, %35 ], [ %82, %81 ]
  %40 = phi i64 [ %14, %35 ], [ %83, %81 ]
  %41 = phi ptr [ %0, %35 ], [ %84, %81 ]
  %42 = sub nsw i64 %39, %40
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = icmp sgt i64 %42, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %41, i64 %40
  br label %52

48:                                               ; preds = %52, %44
  %49 = phi ptr [ %41, %44 ], [ %66, %52 ]
  %50 = srem i64 %39, %40
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %103, label %70

52:                                               ; preds = %46, %52
  %53 = phi i64 [ %68, %52 ], [ 0, %46 ]
  %54 = phi ptr [ %67, %52 ], [ %47, %46 ]
  %55 = phi ptr [ %66, %52 ], [ %41, %46 ]
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds i8, ptr %55, i64 8
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %55, i64 16
  %60 = load ptr, ptr %59, align 8
  %61 = load i32, ptr %54, align 8, !tbaa !235
  store i32 %61, ptr %55, align 8, !tbaa !235
  %62 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %54, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !239
  store i32 %63, ptr %57, align 8, !tbaa !239
  %64 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %54, i64 0, i32 1, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !240
  store ptr %65, ptr %59, align 8, !tbaa !240
  store i32 %56, ptr %54, align 8, !tbaa !235
  store i32 %58, ptr %62, align 8, !tbaa !239
  store ptr %60, ptr %64, align 8, !tbaa !240
  %66 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %55, i64 1
  %67 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %54, i64 1
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %42
  br i1 %69, label %48, label %52, !llvm.loop !298

70:                                               ; preds = %48
  %71 = sub nsw i64 %40, %50
  br label %81

72:                                               ; preds = %38
  %73 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %41, i64 %39
  %74 = sub i64 0, %42
  %75 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %73, i64 %74
  %76 = icmp sgt i64 %40, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %85, %72
  %78 = phi ptr [ %75, %72 ], [ %41, %85 ]
  %79 = srem i64 %39, %42
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %77, %70
  %82 = phi i64 [ %40, %70 ], [ %42, %77 ]
  %83 = phi i64 [ %71, %70 ], [ %79, %77 ]
  %84 = phi ptr [ %49, %70 ], [ %78, %77 ]
  br label %38, !llvm.loop !299

85:                                               ; preds = %72, %85
  %86 = phi i64 [ %101, %85 ], [ 0, %72 ]
  %87 = phi ptr [ %90, %85 ], [ %73, %72 ]
  %88 = phi ptr [ %89, %85 ], [ %75, %72 ]
  %89 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %88, i64 -1
  %90 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %87, i64 -1
  %91 = load i32, ptr %89, align 8
  %92 = getelementptr %"class.boost::tuples::tuple", ptr %88, i64 -1, i32 0, i32 1
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr %"class.boost::tuples::tuple", ptr %88, i64 -1, i32 0, i32 1, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = load i32, ptr %90, align 8, !tbaa !235
  store i32 %96, ptr %89, align 8, !tbaa !235
  %97 = getelementptr %"class.boost::tuples::tuple", ptr %87, i64 -1, i32 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !239
  store i32 %98, ptr %92, align 8, !tbaa !239
  %99 = getelementptr %"class.boost::tuples::tuple", ptr %87, i64 -1, i32 0, i32 1, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !240
  store ptr %100, ptr %94, align 8, !tbaa !240
  store i32 %91, ptr %90, align 8, !tbaa !235
  store i32 %93, ptr %97, align 8, !tbaa !239
  store ptr %95, ptr %99, align 8, !tbaa !240
  %101 = add nuw nsw i64 %86, 1
  %102 = icmp eq i64 %101, %40
  br i1 %102, label %77, label %85, !llvm.loop !300

103:                                              ; preds = %77, %48, %19, %17, %5, %3
  %104 = phi ptr [ %2, %3 ], [ %0, %5 ], [ %1, %17 ], [ %1, %19 ], [ %37, %48 ], [ %37, %77 ]
  ret ptr %104
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %0, ptr %1, ptr noundef %2, i32 %3) local_unnamed_addr #10 comdat !prof !301 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  %9 = getelementptr inbounds i8, ptr %2, i64 %7
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %5, %10
  %12 = icmp slt i64 %11, 168
  br i1 %12, label %19, label %13, !prof !302

13:                                               ; preds = %4, %13
  %14 = phi ptr [ %15, %13 ], [ %0, %4 ]
  %15 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %14, i64 7
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %14, ptr nonnull %15, i32 %3)
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %5, %16
  %18 = icmp slt i64 %17, 168
  br i1 %18, label %19, label %13, !prof !303, !llvm.loop !304

19:                                               ; preds = %13, %4
  %20 = phi ptr [ %0, %4 ], [ %15, %13 ]
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %20, ptr %1, i32 %3)
  %21 = icmp sgt i64 %7, 168
  br i1 %21, label %22, label %67, !prof !305

22:                                               ; preds = %19
  %23 = ptrtoint ptr %9 to i64
  %24 = udiv exact i64 %7, 24
  br label %25

25:                                               ; preds = %22, %58
  %26 = phi i64 [ 7, %22 ], [ %65, %58 ]
  %27 = shl nsw i64 %26, 1
  %28 = icmp slt i64 %8, %27
  br i1 %28, label %39, label %29, !prof !306

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %34, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %0, %25 ]
  %32 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %31, i64 %26
  %33 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %31, i64 %27
  %34 = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %31, ptr nonnull %32, ptr nonnull %32, ptr nonnull %33, ptr noundef %30, i32 %3)
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %5, %35
  %37 = sdiv exact i64 %36, 24
  %38 = icmp slt i64 %37, %27
  br i1 %38, label %39, label %29, !prof !307, !llvm.loop !308

39:                                               ; preds = %29, %25
  %40 = phi ptr [ %0, %25 ], [ %33, %29 ]
  %41 = phi ptr [ %2, %25 ], [ %34, %29 ]
  %42 = phi i64 [ %8, %25 ], [ %37, %29 ]
  %43 = tail call i64 @llvm.smin.i64(i64 %42, i64 %26)
  %44 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %40, i64 %43
  %45 = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %40, ptr %44, ptr %44, ptr %1, ptr noundef %41, i32 %3)
  %46 = shl nsw i64 %26, 2
  %47 = icmp slt i64 %24, %46
  br i1 %47, label %58, label %48, !prof !309

48:                                               ; preds = %39, %48
  %49 = phi ptr [ %53, %48 ], [ %0, %39 ]
  %50 = phi ptr [ %52, %48 ], [ %2, %39 ]
  %51 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %50, i64 %27
  %52 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %50, i64 %46
  %53 = tail call ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %50, ptr noundef nonnull %51, ptr noundef nonnull %51, ptr noundef nonnull %52, ptr %49, i32 %3)
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %23, %54
  %56 = sdiv exact i64 %55, 24
  %57 = icmp slt i64 %56, %46
  br i1 %57, label %58, label %48, !prof !310, !llvm.loop !311

58:                                               ; preds = %48, %39
  %59 = phi ptr [ %2, %39 ], [ %52, %48 ]
  %60 = phi ptr [ %0, %39 ], [ %53, %48 ]
  %61 = phi i64 [ %24, %39 ], [ %56, %48 ]
  %62 = tail call i64 @llvm.smin.i64(i64 %61, i64 %27)
  %63 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %59, i64 %62
  %64 = tail call ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %59, ptr noundef %63, ptr noundef %63, ptr noundef nonnull %9, ptr %60, i32 %3)
  %65 = shl nsw i64 %26, 2
  %66 = icmp slt i64 %65, %8
  br i1 %66, label %25, label %67, !prof !312, !llvm.loop !313

67:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 %7) local_unnamed_addr #10 comdat !prof !209 {
  %9 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 4
  %11 = icmp sgt i64 %3, %4
  %12 = icmp sgt i64 %3, %6
  %13 = or i1 %11, %12
  br i1 %13, label %38, label %14, !prof !314

14:                                               ; preds = %8
  %15 = ptrtoint ptr %1 to i64
  %16 = ptrtoint ptr %0 to i64
  %17 = sub i64 %15, %16
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %36, !prof !315

19:                                               ; preds = %14
  %20 = udiv exact i64 %17, 24
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %34, %21 ], [ %20, %19 ]
  %23 = phi ptr [ %33, %21 ], [ %5, %19 ]
  %24 = phi ptr [ %32, %21 ], [ %0, %19 ]
  %25 = load i32, ptr %24, align 8, !tbaa !235
  store i32 %25, ptr %23, align 8, !tbaa !235
  %26 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %24, i64 0, i32 1
  %27 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %23, i64 0, i32 1
  %28 = load i32, ptr %26, align 8, !tbaa !239
  store i32 %28, ptr %27, align 8, !tbaa !239
  %29 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %24, i64 0, i32 1, i32 1
  %30 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %23, i64 0, i32 1, i32 1
  %31 = load ptr, ptr %29, align 8, !tbaa !240
  store ptr %31, ptr %30, align 8, !tbaa !240
  %32 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %24, i64 1
  %33 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %23, i64 1
  %34 = add nsw i64 %22, -1
  %35 = icmp sgt i64 %22, 1
  br i1 %35, label %21, label %36, !prof !316, !llvm.loop !317

36:                                               ; preds = %21, %14
  %37 = phi ptr [ %5, %14 ], [ %33, %21 ]
  tail call void @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr noundef %5, ptr noundef %37, ptr %1, ptr %2, ptr %0, i32 %7)
  br label %125

38:                                               ; preds = %8
  %39 = icmp sgt i64 %4, %6
  br i1 %39, label %64, label %40, !prof !318

40:                                               ; preds = %38
  %41 = ptrtoint ptr %2 to i64
  %42 = ptrtoint ptr %1 to i64
  %43 = sub i64 %41, %42
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %62, !prof !319

45:                                               ; preds = %40
  %46 = udiv exact i64 %43, 24
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %60, %47 ], [ %46, %45 ]
  %49 = phi ptr [ %59, %47 ], [ %5, %45 ]
  %50 = phi ptr [ %58, %47 ], [ %1, %45 ]
  %51 = load i32, ptr %50, align 8, !tbaa !235
  store i32 %51, ptr %49, align 8, !tbaa !235
  %52 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %50, i64 0, i32 1
  %53 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %49, i64 0, i32 1
  %54 = load i32, ptr %52, align 8, !tbaa !239
  store i32 %54, ptr %53, align 8, !tbaa !239
  %55 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %50, i64 0, i32 1, i32 1
  %56 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %49, i64 0, i32 1, i32 1
  %57 = load ptr, ptr %55, align 8, !tbaa !240
  store ptr %57, ptr %56, align 8, !tbaa !240
  %58 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %50, i64 1
  %59 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %49, i64 1
  %60 = add nsw i64 %48, -1
  %61 = icmp sgt i64 %48, 1
  br i1 %61, label %47, label %62, !prof !320, !llvm.loop !317

62:                                               ; preds = %47, %40
  %63 = phi ptr [ %5, %40 ], [ %59, %47 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %63, ptr %2, i32 %7)
  br label %125

64:                                               ; preds = %38
  br i1 %11, label %65, label %91

65:                                               ; preds = %64
  %66 = sdiv i64 %3, 2
  %67 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  store i32 %7, ptr %10, align 4
  %68 = ptrtoint ptr %2 to i64
  %69 = ptrtoint ptr %1 to i64
  %70 = sub i64 %68, %69
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = udiv exact i64 %70, 24
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ %84, %74 ], [ %73, %72 ]
  %76 = phi ptr [ %83, %74 ], [ %1, %72 ]
  %77 = lshr i64 %75, 1
  %78 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %76, i64 %77
  %79 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr %78, ptr noundef nonnull align 8 dereferenceable(24) %67)
  %80 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %78, i64 1
  %81 = xor i64 %77, -1
  %82 = add nsw i64 %75, %81
  %83 = select i1 %79, ptr %80, ptr %76
  %84 = select i1 %79, i64 %82, i64 %77
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %74, label %86, !llvm.loop !293

86:                                               ; preds = %74, %65
  %87 = phi ptr [ %1, %65 ], [ %83, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %88, %69
  %90 = sdiv exact i64 %89, 24
  br label %117

91:                                               ; preds = %64
  %92 = sdiv i64 %4, 2
  %93 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %1, i64 %92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store i32 %7, ptr %9, align 4
  %94 = ptrtoint ptr %1 to i64
  %95 = ptrtoint ptr %0 to i64
  %96 = sub i64 %94, %95
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = udiv exact i64 %96, 24
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ %110, %100 ], [ %99, %98 ]
  %102 = phi ptr [ %109, %100 ], [ %0, %98 ]
  %103 = lshr i64 %101, 1
  %104 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %102, i64 %103
  %105 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(24) %93, ptr %104)
  %106 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %104, i64 1
  %107 = xor i64 %103, -1
  %108 = add nsw i64 %101, %107
  %109 = select i1 %105, ptr %102, ptr %106
  %110 = select i1 %105, i64 %103, i64 %108
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %100, label %112, !llvm.loop !294

112:                                              ; preds = %100, %91
  %113 = phi ptr [ %0, %91 ], [ %109, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 %114, %95
  %116 = sdiv exact i64 %115, 24
  br label %117

117:                                              ; preds = %112, %86
  %118 = phi ptr [ %67, %86 ], [ %113, %112 ]
  %119 = phi ptr [ %87, %86 ], [ %93, %112 ]
  %120 = phi i64 [ %90, %86 ], [ %92, %112 ]
  %121 = phi i64 [ %66, %86 ], [ %116, %112 ]
  %122 = sub nsw i64 %3, %121
  %123 = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_(ptr %118, ptr %1, ptr %119, i64 noundef %122, i64 noundef %120, ptr noundef %5, i64 noundef %6)
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %118, ptr %123, i64 noundef %121, i64 noundef %120, ptr noundef %5, i64 noundef %6, i32 %7)
  %124 = sub nsw i64 %4, %120
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %123, ptr %119, ptr %2, i64 noundef %122, i64 noundef %124, ptr noundef %5, i64 noundef %6, i32 %7)
  br label %125

125:                                              ; preds = %62, %117, %36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4, i32 %5) local_unnamed_addr #10 comdat !prof !321 {
  %7 = icmp ne ptr %0, %1
  %8 = icmp ne ptr %2, %3
  %9 = select i1 %7, i1 %8, i1 false, !prof !322
  br i1 %9, label %10, label %68, !prof !323

10:                                               ; preds = %6, %61
  %11 = phi ptr [ %64, %61 ], [ %4, %6 ]
  %12 = phi ptr [ %63, %61 ], [ %0, %6 ]
  %13 = phi ptr [ %62, %61 ], [ %2, %6 ]
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %13, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %12, align 8
  %18 = getelementptr inbounds i8, ptr %12, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp ne i32 %16, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 true, i1 %21, !prof !267
  br i1 %22, label %23, label %55, !prof !268

23:                                               ; preds = %10
  %24 = icmp ne i32 %19, 0
  %25 = icmp eq i32 %16, 0
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %49, !prof !269

27:                                               ; preds = %23
  %28 = select i1 %25, i1 %21, i1 false, !prof !270
  br i1 %28, label %55, label %29, !prof !270

29:                                               ; preds = %27
  %30 = icmp sgt i32 %16, 15
  %31 = icmp sgt i32 %19, 15
  %32 = select i1 %30, i1 %31, i1 false, !prof !271
  br i1 %32, label %33, label %45, !prof !272

33:                                               ; preds = %29
  %34 = shl nuw nsw i32 %16, 1
  %35 = icmp sgt i32 %34, %5
  %36 = shl nuw nsw i32 %19, 1
  %37 = icmp sgt i32 %36, %5
  %38 = select i1 %35, i1 %37, i1 false, !prof !273
  br i1 %38, label %39, label %45, !prof !274

39:                                               ; preds = %33
  %40 = icmp eq i32 %14, %17
  br i1 %40, label %41, label %43, !prof !275

41:                                               ; preds = %39
  %42 = icmp sgt i32 %16, %19
  br label %47

43:                                               ; preds = %39
  %44 = icmp sgt i32 %14, %17
  br label %47

45:                                               ; preds = %33, %29
  %46 = icmp sgt i32 %16, %19
  br label %47

47:                                               ; preds = %41, %43, %45
  %48 = phi i1 [ %42, %41 ], [ %44, %43 ], [ %46, %45 ]
  br i1 %48, label %49, label %55, !prof !324

49:                                               ; preds = %23, %47
  store i32 %14, ptr %11, align 8, !tbaa !235
  %50 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %11, i64 0, i32 1
  store i32 %16, ptr %50, align 8, !tbaa !239
  %51 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %13, i64 0, i32 1, i32 1
  %52 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %11, i64 0, i32 1, i32 1
  %53 = load ptr, ptr %51, align 8, !tbaa !240
  store ptr %53, ptr %52, align 8, !tbaa !240
  %54 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 1
  br label %61

55:                                               ; preds = %10, %27, %47
  store i32 %17, ptr %11, align 8, !tbaa !235
  %56 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %11, i64 0, i32 1
  store i32 %19, ptr %56, align 8, !tbaa !239
  %57 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %12, i64 0, i32 1, i32 1
  %58 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %11, i64 0, i32 1, i32 1
  %59 = load ptr, ptr %57, align 8, !tbaa !240
  store ptr %59, ptr %58, align 8, !tbaa !240
  %60 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi ptr [ %54, %49 ], [ %13, %55 ]
  %63 = phi ptr [ %12, %49 ], [ %60, %55 ]
  %64 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %11, i64 1
  %65 = icmp ne ptr %63, %1
  %66 = icmp ne ptr %62, %3
  %67 = select i1 %65, i1 %66, i1 false, !prof !322
  br i1 %67, label %10, label %68, !prof !325, !llvm.loop !326

68:                                               ; preds = %61, %6
  %69 = phi ptr [ %2, %6 ], [ %62, %61 ]
  %70 = phi ptr [ %0, %6 ], [ %63, %61 ]
  %71 = phi ptr [ %4, %6 ], [ %64, %61 ]
  %72 = ptrtoint ptr %1 to i64
  %73 = ptrtoint ptr %70 to i64
  %74 = sub i64 %72, %73
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %93, !prof !327

76:                                               ; preds = %68
  %77 = udiv exact i64 %74, 24
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %91, %78 ], [ %77, %76 ]
  %80 = phi ptr [ %90, %78 ], [ %71, %76 ]
  %81 = phi ptr [ %89, %78 ], [ %70, %76 ]
  %82 = load i32, ptr %81, align 8, !tbaa !235
  store i32 %82, ptr %80, align 8, !tbaa !235
  %83 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %81, i64 0, i32 1
  %84 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %80, i64 0, i32 1
  %85 = load i32, ptr %83, align 8, !tbaa !239
  store i32 %85, ptr %84, align 8, !tbaa !239
  %86 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %81, i64 0, i32 1, i32 1
  %87 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %80, i64 0, i32 1, i32 1
  %88 = load ptr, ptr %86, align 8, !tbaa !240
  store ptr %88, ptr %87, align 8, !tbaa !240
  %89 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %81, i64 1
  %90 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %80, i64 1
  %91 = add nsw i64 %79, -1
  %92 = icmp sgt i64 %79, 1
  br i1 %92, label %78, label %93, !prof !328, !llvm.loop !317

93:                                               ; preds = %78, %68
  %94 = phi ptr [ %71, %68 ], [ %90, %78 ]
  %95 = ptrtoint ptr %3 to i64
  %96 = ptrtoint ptr %69 to i64
  %97 = sub i64 %95, %96
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %116, !prof !323

99:                                               ; preds = %93
  %100 = udiv exact i64 %97, 24
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ %114, %101 ], [ %100, %99 ]
  %103 = phi ptr [ %113, %101 ], [ %94, %99 ]
  %104 = phi ptr [ %112, %101 ], [ %69, %99 ]
  %105 = load i32, ptr %104, align 8, !tbaa !235
  store i32 %105, ptr %103, align 8, !tbaa !235
  %106 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %104, i64 0, i32 1
  %107 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %103, i64 0, i32 1
  %108 = load i32, ptr %106, align 8, !tbaa !239
  store i32 %108, ptr %107, align 8, !tbaa !239
  %109 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %104, i64 0, i32 1, i32 1
  %110 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %103, i64 0, i32 1, i32 1
  %111 = load ptr, ptr %109, align 8, !tbaa !240
  store ptr %111, ptr %110, align 8, !tbaa !240
  %112 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %104, i64 1
  %113 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %103, i64 1
  %114 = add nsw i64 %102, -1
  %115 = icmp sgt i64 %102, 1
  br i1 %115, label %101, label %116, !prof !329, !llvm.loop !317

116:                                              ; preds = %101, %93
  %117 = phi ptr [ %94, %93 ], [ %113, %101 ]
  ret ptr %117
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) local_unnamed_addr #10 comdat !prof !330 {
  %7 = icmp ne ptr %0, %1
  %8 = icmp ne ptr %2, %3
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %68, !prof !331

10:                                               ; preds = %6, %61
  %11 = phi ptr [ %63, %61 ], [ %0, %6 ]
  %12 = phi ptr [ %62, %61 ], [ %2, %6 ]
  %13 = phi ptr [ %64, %61 ], [ %4, %6 ]
  %14 = load i32, ptr %12, align 8
  %15 = getelementptr inbounds i8, ptr %12, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %11, align 8
  %18 = getelementptr inbounds i8, ptr %11, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp ne i32 %16, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 true, i1 %21, !prof !332
  br i1 %22, label %23, label %55, !prof !333

23:                                               ; preds = %10
  %24 = icmp ne i32 %19, 0
  %25 = icmp eq i32 %16, 0
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %49, !prof !334

27:                                               ; preds = %23
  %28 = select i1 %25, i1 %21, i1 false, !prof !335
  br i1 %28, label %55, label %29, !prof !335

29:                                               ; preds = %27
  %30 = icmp sgt i32 %16, 15
  %31 = icmp sgt i32 %19, 15
  %32 = select i1 %30, i1 %31, i1 false, !prof !336
  br i1 %32, label %33, label %45, !prof !337

33:                                               ; preds = %29
  %34 = shl nuw nsw i32 %16, 1
  %35 = icmp sgt i32 %34, %5
  %36 = shl nuw nsw i32 %19, 1
  %37 = icmp sgt i32 %36, %5
  %38 = select i1 %35, i1 %37, i1 false, !prof !338
  br i1 %38, label %39, label %45, !prof !339

39:                                               ; preds = %33
  %40 = icmp eq i32 %14, %17
  br i1 %40, label %41, label %43, !prof !340

41:                                               ; preds = %39
  %42 = icmp sgt i32 %16, %19
  br label %47

43:                                               ; preds = %39
  %44 = icmp sgt i32 %14, %17
  br label %47

45:                                               ; preds = %33, %29
  %46 = icmp sgt i32 %16, %19
  br label %47

47:                                               ; preds = %41, %43, %45
  %48 = phi i1 [ %42, %41 ], [ %44, %43 ], [ %46, %45 ]
  br i1 %48, label %49, label %55, !prof !341

49:                                               ; preds = %23, %47
  store i32 %14, ptr %13, align 8, !tbaa !235
  %50 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %13, i64 0, i32 1
  store i32 %16, ptr %50, align 8, !tbaa !239
  %51 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %12, i64 0, i32 1, i32 1
  %52 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %13, i64 0, i32 1, i32 1
  %53 = load ptr, ptr %51, align 8, !tbaa !240
  store ptr %53, ptr %52, align 8, !tbaa !240
  %54 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1
  br label %61

55:                                               ; preds = %10, %27, %47
  store i32 %17, ptr %13, align 8, !tbaa !235
  %56 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %13, i64 0, i32 1
  store i32 %19, ptr %56, align 8, !tbaa !239
  %57 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %11, i64 0, i32 1, i32 1
  %58 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %13, i64 0, i32 1, i32 1
  %59 = load ptr, ptr %57, align 8, !tbaa !240
  store ptr %59, ptr %58, align 8, !tbaa !240
  %60 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %11, i64 1
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi ptr [ %54, %49 ], [ %12, %55 ]
  %63 = phi ptr [ %11, %49 ], [ %60, %55 ]
  %64 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 1
  %65 = icmp ne ptr %63, %1
  %66 = icmp ne ptr %62, %3
  %67 = select i1 %65, i1 %66, i1 false, !prof !342
  br i1 %67, label %10, label %68, !prof !343, !llvm.loop !344

68:                                               ; preds = %61, %6
  %69 = phi ptr [ %4, %6 ], [ %64, %61 ]
  %70 = phi ptr [ %2, %6 ], [ %62, %61 ]
  %71 = phi ptr [ %0, %6 ], [ %63, %61 ]
  %72 = ptrtoint ptr %1 to i64
  %73 = ptrtoint ptr %71 to i64
  %74 = sub i64 %72, %73
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %93, !prof !331

76:                                               ; preds = %68
  %77 = udiv exact i64 %74, 24
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %91, %78 ], [ %77, %76 ]
  %80 = phi ptr [ %90, %78 ], [ %69, %76 ]
  %81 = phi ptr [ %89, %78 ], [ %71, %76 ]
  %82 = load i32, ptr %81, align 8, !tbaa !235
  store i32 %82, ptr %80, align 8, !tbaa !235
  %83 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %81, i64 0, i32 1
  %84 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %80, i64 0, i32 1
  %85 = load i32, ptr %83, align 8, !tbaa !239
  store i32 %85, ptr %84, align 8, !tbaa !239
  %86 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %81, i64 0, i32 1, i32 1
  %87 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %80, i64 0, i32 1, i32 1
  %88 = load ptr, ptr %86, align 8, !tbaa !240
  store ptr %88, ptr %87, align 8, !tbaa !240
  %89 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %81, i64 1
  %90 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %80, i64 1
  %91 = add nsw i64 %79, -1
  %92 = icmp sgt i64 %79, 1
  br i1 %92, label %78, label %93, !prof !345, !llvm.loop !317

93:                                               ; preds = %78, %68
  %94 = phi ptr [ %69, %68 ], [ %90, %78 ]
  %95 = ptrtoint ptr %94 to i64
  %96 = ptrtoint ptr %69 to i64
  %97 = sub i64 %95, %96
  %98 = getelementptr inbounds i8, ptr %69, i64 %97
  %99 = ptrtoint ptr %3 to i64
  %100 = ptrtoint ptr %70 to i64
  %101 = sub i64 %99, %100
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %120, !prof !331

103:                                              ; preds = %93
  %104 = udiv exact i64 %101, 24
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i64 [ %118, %105 ], [ %104, %103 ]
  %107 = phi ptr [ %117, %105 ], [ %98, %103 ]
  %108 = phi ptr [ %116, %105 ], [ %70, %103 ]
  %109 = load i32, ptr %108, align 8, !tbaa !235
  store i32 %109, ptr %107, align 8, !tbaa !235
  %110 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %108, i64 0, i32 1
  %111 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %107, i64 0, i32 1
  %112 = load i32, ptr %110, align 8, !tbaa !239
  store i32 %112, ptr %111, align 8, !tbaa !239
  %113 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %108, i64 0, i32 1, i32 1
  %114 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %107, i64 0, i32 1, i32 1
  %115 = load ptr, ptr %113, align 8, !tbaa !240
  store ptr %115, ptr %114, align 8, !tbaa !240
  %116 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %108, i64 1
  %117 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %107, i64 1
  %118 = add nsw i64 %106, -1
  %119 = icmp sgt i64 %106, 1
  br i1 %119, label %105, label %120, !prof !346, !llvm.loop !317

120:                                              ; preds = %105, %93
  %121 = phi ptr [ %98, %93 ], [ %117, %105 ]
  %122 = ptrtoint ptr %121 to i64
  %123 = ptrtoint ptr %98 to i64
  %124 = sub i64 %122, %123
  %125 = getelementptr inbounds i8, ptr %98, i64 %124
  ret ptr %125
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #10 comdat !prof !347 {
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %88, label %8, !prof !348

8:                                                ; preds = %6, %61
  %9 = phi ptr [ %63, %61 ], [ %0, %6 ]
  %10 = phi ptr [ %64, %61 ], [ %4, %6 ]
  %11 = phi ptr [ %62, %61 ], [ %2, %6 ]
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %66, label %13, !prof !349

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8
  %15 = getelementptr inbounds i8, ptr %11, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %9, align 8
  %18 = getelementptr inbounds i8, ptr %9, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp ne i32 %16, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 true, i1 %21, !prof !350
  br i1 %22, label %23, label %55, !prof !351

23:                                               ; preds = %13
  %24 = icmp ne i32 %19, 0
  %25 = icmp eq i32 %16, 0
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %49, !prof !352

27:                                               ; preds = %23
  %28 = select i1 %25, i1 %21, i1 false, !prof !353
  br i1 %28, label %55, label %29, !prof !353

29:                                               ; preds = %27
  %30 = icmp sgt i32 %16, 15
  %31 = icmp sgt i32 %19, 15
  %32 = select i1 %30, i1 %31, i1 false, !prof !354
  br i1 %32, label %33, label %45, !prof !355

33:                                               ; preds = %29
  %34 = shl nuw nsw i32 %16, 1
  %35 = icmp sgt i32 %34, %5
  %36 = shl nuw nsw i32 %19, 1
  %37 = icmp sgt i32 %36, %5
  %38 = select i1 %35, i1 %37, i1 false, !prof !356
  br i1 %38, label %39, label %45, !prof !357

39:                                               ; preds = %33
  %40 = icmp eq i32 %14, %17
  br i1 %40, label %41, label %43, !prof !358

41:                                               ; preds = %39
  %42 = icmp sgt i32 %16, %19
  br label %47

43:                                               ; preds = %39
  %44 = icmp sgt i32 %14, %17
  br label %47

45:                                               ; preds = %33, %29
  %46 = icmp sgt i32 %16, %19
  br label %47

47:                                               ; preds = %41, %43, %45
  %48 = phi i1 [ %42, %41 ], [ %44, %43 ], [ %46, %45 ]
  br i1 %48, label %49, label %55, !prof !359

49:                                               ; preds = %23, %47
  store i32 %14, ptr %10, align 8, !tbaa !235
  %50 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %10, i64 0, i32 1
  store i32 %16, ptr %50, align 8, !tbaa !239
  %51 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %11, i64 0, i32 1, i32 1
  %52 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %10, i64 0, i32 1, i32 1
  %53 = load ptr, ptr %51, align 8, !tbaa !240
  store ptr %53, ptr %52, align 8, !tbaa !240
  %54 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %11, i64 1
  br label %61

55:                                               ; preds = %13, %27, %47
  store i32 %17, ptr %10, align 8, !tbaa !235
  %56 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %10, i64 0, i32 1
  store i32 %19, ptr %56, align 8, !tbaa !239
  %57 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %9, i64 0, i32 1, i32 1
  %58 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %10, i64 0, i32 1, i32 1
  %59 = load ptr, ptr %57, align 8, !tbaa !240
  store ptr %59, ptr %58, align 8, !tbaa !240
  %60 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %9, i64 1
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi ptr [ %54, %49 ], [ %11, %55 ]
  %63 = phi ptr [ %9, %49 ], [ %60, %55 ]
  %64 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %10, i64 1
  %65 = icmp eq ptr %63, %1
  br i1 %65, label %88, label %8, !prof !360, !llvm.loop !361

66:                                               ; preds = %8
  %67 = ptrtoint ptr %1 to i64
  %68 = ptrtoint ptr %9 to i64
  %69 = sub i64 %67, %68
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %88, !prof !362

71:                                               ; preds = %66
  %72 = udiv exact i64 %69, 24
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i64 [ %86, %73 ], [ %72, %71 ]
  %75 = phi ptr [ %85, %73 ], [ %10, %71 ]
  %76 = phi ptr [ %84, %73 ], [ %9, %71 ]
  %77 = load i32, ptr %76, align 8, !tbaa !235
  store i32 %77, ptr %75, align 8, !tbaa !235
  %78 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %76, i64 0, i32 1
  %79 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %75, i64 0, i32 1
  %80 = load i32, ptr %78, align 8, !tbaa !239
  store i32 %80, ptr %79, align 8, !tbaa !239
  %81 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %76, i64 0, i32 1, i32 1
  %82 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %75, i64 0, i32 1, i32 1
  %83 = load ptr, ptr %81, align 8, !tbaa !240
  store ptr %83, ptr %82, align 8, !tbaa !240
  %84 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %76, i64 1
  %85 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %75, i64 1
  %86 = add nsw i64 %74, -1
  %87 = icmp sgt i64 %74, 1
  br i1 %87, label %73, label %88, !prof !363, !llvm.loop !317

88:                                               ; preds = %61, %73, %6, %66
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) local_unnamed_addr #10 comdat !prof !364 {
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %8, label %30, !prof !318

8:                                                ; preds = %6
  %9 = ptrtoint ptr %3 to i64
  %10 = ptrtoint ptr %2 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %116

13:                                               ; preds = %8
  %14 = udiv exact i64 %11, 24
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ %28, %15 ], [ %14, %13 ]
  %17 = phi ptr [ %20, %15 ], [ %4, %13 ]
  %18 = phi ptr [ %19, %15 ], [ %3, %13 ]
  %19 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %18, i64 -1
  %20 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %17, i64 -1
  %21 = load i32, ptr %19, align 8, !tbaa !235
  store i32 %21, ptr %20, align 8, !tbaa !235
  %22 = getelementptr %"class.boost::tuples::tuple", ptr %18, i64 -1, i32 0, i32 1
  %23 = getelementptr %"class.boost::tuples::tuple", ptr %17, i64 -1, i32 0, i32 1
  %24 = load i32, ptr %22, align 8, !tbaa !239
  store i32 %24, ptr %23, align 8, !tbaa !239
  %25 = getelementptr %"class.boost::tuples::tuple", ptr %18, i64 -1, i32 0, i32 1, i32 1
  %26 = getelementptr %"class.boost::tuples::tuple", ptr %17, i64 -1, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %25, align 8, !tbaa !240
  store ptr %27, ptr %26, align 8, !tbaa !240
  %28 = add nsw i64 %16, -1
  %29 = icmp sgt i64 %16, 1
  br i1 %29, label %15, label %116, !llvm.loop !279

30:                                               ; preds = %6
  %31 = icmp eq ptr %2, %3
  br i1 %31, label %116, label %32, !prof !365

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %3, i64 -1
  br label %34

34:                                               ; preds = %77, %32
  %35 = phi ptr [ %1, %32 ], [ %38, %77 ]
  %36 = phi ptr [ %4, %32 ], [ %78, %77 ]
  %37 = phi ptr [ %33, %32 ], [ %42, %77 ]
  %38 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %35, i64 -1
  %39 = getelementptr %"class.boost::tuples::tuple", ptr %35, i64 -1, i32 0, i32 1
  br label %40

40:                                               ; preds = %34, %114
  %41 = phi ptr [ %108, %114 ], [ %36, %34 ]
  %42 = phi ptr [ %115, %114 ], [ %37, %34 ]
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %42, i64 8
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %38, align 8
  %47 = load i32, ptr %39, align 8
  %48 = icmp ne i32 %45, 0
  %49 = icmp eq i32 %47, 0
  %50 = select i1 %48, i1 true, i1 %49, !prof !366
  br i1 %50, label %51, label %107, !prof !367

51:                                               ; preds = %40
  %52 = icmp ne i32 %47, 0
  %53 = icmp eq i32 %45, 0
  %54 = or i1 %53, %52
  br i1 %54, label %55, label %77, !prof !368

55:                                               ; preds = %51
  %56 = select i1 %53, i1 %49, i1 false, !prof !369
  br i1 %56, label %107, label %57, !prof !369

57:                                               ; preds = %55
  %58 = icmp sgt i32 %45, 15
  %59 = icmp sgt i32 %47, 15
  %60 = select i1 %58, i1 %59, i1 false, !prof !370
  br i1 %60, label %61, label %73, !prof !371

61:                                               ; preds = %57
  %62 = shl nuw nsw i32 %45, 1
  %63 = icmp sgt i32 %62, %5
  %64 = shl nuw nsw i32 %47, 1
  %65 = icmp sgt i32 %64, %5
  %66 = select i1 %63, i1 %65, i1 false, !prof !372
  br i1 %66, label %67, label %73, !prof !373

67:                                               ; preds = %61
  %68 = icmp eq i32 %43, %46
  br i1 %68, label %69, label %71, !prof !374

69:                                               ; preds = %67
  %70 = icmp sgt i32 %45, %47
  br label %75

71:                                               ; preds = %67
  %72 = icmp sgt i32 %43, %46
  br label %75

73:                                               ; preds = %61, %57
  %74 = icmp sgt i32 %45, %47
  br label %75

75:                                               ; preds = %69, %71, %73
  %76 = phi i1 [ %70, %69 ], [ %72, %71 ], [ %74, %73 ]
  br i1 %76, label %77, label %107, !prof !375

77:                                               ; preds = %51, %75
  %78 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %41, i64 -1
  store i32 %46, ptr %78, align 8, !tbaa !235
  %79 = getelementptr %"class.boost::tuples::tuple", ptr %41, i64 -1, i32 0, i32 1
  store i32 %47, ptr %79, align 8, !tbaa !239
  %80 = getelementptr %"class.boost::tuples::tuple", ptr %35, i64 -1, i32 0, i32 1, i32 1
  %81 = getelementptr %"class.boost::tuples::tuple", ptr %41, i64 -1, i32 0, i32 1, i32 1
  %82 = load ptr, ptr %80, align 8, !tbaa !240
  store ptr %82, ptr %81, align 8, !tbaa !240
  %83 = icmp eq ptr %38, %0
  br i1 %83, label %84, label %34, !prof !376, !llvm.loop !377

84:                                               ; preds = %77
  %85 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %42, i64 1
  %86 = ptrtoint ptr %85 to i64
  %87 = ptrtoint ptr %2 to i64
  %88 = sub i64 %86, %87
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %116, !prof !378

90:                                               ; preds = %84
  %91 = udiv exact i64 %88, 24
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ %105, %92 ], [ %91, %90 ]
  %94 = phi ptr [ %97, %92 ], [ %78, %90 ]
  %95 = phi ptr [ %96, %92 ], [ %85, %90 ]
  %96 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %95, i64 -1
  %97 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %94, i64 -1
  %98 = load i32, ptr %96, align 8, !tbaa !235
  store i32 %98, ptr %97, align 8, !tbaa !235
  %99 = getelementptr %"class.boost::tuples::tuple", ptr %95, i64 -1, i32 0, i32 1
  %100 = getelementptr %"class.boost::tuples::tuple", ptr %94, i64 -1, i32 0, i32 1
  %101 = load i32, ptr %99, align 8, !tbaa !239
  store i32 %101, ptr %100, align 8, !tbaa !239
  %102 = getelementptr %"class.boost::tuples::tuple", ptr %95, i64 -1, i32 0, i32 1, i32 1
  %103 = getelementptr %"class.boost::tuples::tuple", ptr %94, i64 -1, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %102, align 8, !tbaa !240
  store ptr %104, ptr %103, align 8, !tbaa !240
  %105 = add nsw i64 %93, -1
  %106 = icmp sgt i64 %93, 1
  br i1 %106, label %92, label %116, !prof !379, !llvm.loop !279

107:                                              ; preds = %40, %55, %75
  %108 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %41, i64 -1
  store i32 %43, ptr %108, align 8, !tbaa !235
  %109 = getelementptr %"class.boost::tuples::tuple", ptr %41, i64 -1, i32 0, i32 1
  store i32 %45, ptr %109, align 8, !tbaa !239
  %110 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %42, i64 0, i32 1, i32 1
  %111 = getelementptr %"class.boost::tuples::tuple", ptr %41, i64 -1, i32 0, i32 1, i32 1
  %112 = load ptr, ptr %110, align 8, !tbaa !240
  store ptr %112, ptr %111, align 8, !tbaa !240
  %113 = icmp eq ptr %42, %2
  br i1 %113, label %116, label %114, !prof !380

114:                                              ; preds = %107
  %115 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %42, i64 -1
  br label %40, !llvm.loop !377

116:                                              ; preds = %107, %92, %15, %84, %8, %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat !prof !107 {
  %8 = icmp sle i64 %3, %4
  %9 = icmp sgt i64 %4, %6
  %10 = or i1 %8, %9
  br i1 %10, label %84, label %11

11:                                               ; preds = %7
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %161, label %13

13:                                               ; preds = %11
  %14 = ptrtoint ptr %2 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = sub i64 %14, %15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = udiv exact i64 %16, 24
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %33, %20 ], [ %19, %18 ]
  %22 = phi ptr [ %32, %20 ], [ %5, %18 ]
  %23 = phi ptr [ %31, %20 ], [ %1, %18 ]
  %24 = load i32, ptr %23, align 8, !tbaa !235
  store i32 %24, ptr %22, align 8, !tbaa !235
  %25 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %23, i64 0, i32 1
  %26 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %22, i64 0, i32 1
  %27 = load i32, ptr %25, align 8, !tbaa !239
  store i32 %27, ptr %26, align 8, !tbaa !239
  %28 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %23, i64 0, i32 1, i32 1
  %29 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %22, i64 0, i32 1, i32 1
  %30 = load ptr, ptr %28, align 8, !tbaa !240
  store ptr %30, ptr %29, align 8, !tbaa !240
  %31 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %23, i64 1
  %32 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %22, i64 1
  %33 = add nsw i64 %21, -1
  %34 = icmp sgt i64 %21, 1
  br i1 %34, label %20, label %35, !llvm.loop !317

35:                                               ; preds = %20, %13
  %36 = phi ptr [ %5, %13 ], [ %32, %20 ]
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %15, %37
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = udiv exact i64 %38, 24
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %55, %42 ], [ %41, %40 ]
  %44 = phi ptr [ %47, %42 ], [ %2, %40 ]
  %45 = phi ptr [ %46, %42 ], [ %1, %40 ]
  %46 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %45, i64 -1
  %47 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %44, i64 -1
  %48 = load i32, ptr %46, align 8, !tbaa !235
  store i32 %48, ptr %47, align 8, !tbaa !235
  %49 = getelementptr %"class.boost::tuples::tuple", ptr %45, i64 -1, i32 0, i32 1
  %50 = getelementptr %"class.boost::tuples::tuple", ptr %44, i64 -1, i32 0, i32 1
  %51 = load i32, ptr %49, align 8, !tbaa !239
  store i32 %51, ptr %50, align 8, !tbaa !239
  %52 = getelementptr %"class.boost::tuples::tuple", ptr %45, i64 -1, i32 0, i32 1, i32 1
  %53 = getelementptr %"class.boost::tuples::tuple", ptr %44, i64 -1, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %52, align 8, !tbaa !240
  store ptr %54, ptr %53, align 8, !tbaa !240
  %55 = add nsw i64 %43, -1
  %56 = icmp sgt i64 %43, 1
  br i1 %56, label %42, label %57, !llvm.loop !279

57:                                               ; preds = %42, %35
  %58 = ptrtoint ptr %36 to i64
  %59 = ptrtoint ptr %5 to i64
  %60 = sub i64 %58, %59
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = udiv exact i64 %60, 24
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ %77, %64 ], [ %63, %62 ]
  %66 = phi ptr [ %76, %64 ], [ %0, %62 ]
  %67 = phi ptr [ %75, %64 ], [ %5, %62 ]
  %68 = load i32, ptr %67, align 8, !tbaa !235
  store i32 %68, ptr %66, align 8, !tbaa !235
  %69 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %67, i64 0, i32 1
  %70 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %66, i64 0, i32 1
  %71 = load i32, ptr %69, align 8, !tbaa !239
  store i32 %71, ptr %70, align 8, !tbaa !239
  %72 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %67, i64 0, i32 1, i32 1
  %73 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %66, i64 0, i32 1, i32 1
  %74 = load ptr, ptr %72, align 8, !tbaa !240
  store ptr %74, ptr %73, align 8, !tbaa !240
  %75 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %67, i64 1
  %76 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %66, i64 1
  %77 = add nsw i64 %65, -1
  %78 = icmp sgt i64 %65, 1
  br i1 %78, label %64, label %79, !llvm.loop !317

79:                                               ; preds = %64, %57
  %80 = phi ptr [ %0, %57 ], [ %76, %64 ]
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %81, %37
  %83 = getelementptr inbounds i8, ptr %0, i64 %82
  br label %161

84:                                               ; preds = %7
  %85 = icmp sgt i64 %3, %6
  br i1 %85, label %159, label %86

86:                                               ; preds = %84
  %87 = icmp eq i64 %3, 0
  br i1 %87, label %161, label %88

88:                                               ; preds = %86
  %89 = ptrtoint ptr %1 to i64
  %90 = ptrtoint ptr %0 to i64
  %91 = sub i64 %89, %90
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = udiv exact i64 %91, 24
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi i64 [ %108, %95 ], [ %94, %93 ]
  %97 = phi ptr [ %107, %95 ], [ %5, %93 ]
  %98 = phi ptr [ %106, %95 ], [ %0, %93 ]
  %99 = load i32, ptr %98, align 8, !tbaa !235
  store i32 %99, ptr %97, align 8, !tbaa !235
  %100 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %98, i64 0, i32 1
  %101 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %97, i64 0, i32 1
  %102 = load i32, ptr %100, align 8, !tbaa !239
  store i32 %102, ptr %101, align 8, !tbaa !239
  %103 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %98, i64 0, i32 1, i32 1
  %104 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %97, i64 0, i32 1, i32 1
  %105 = load ptr, ptr %103, align 8, !tbaa !240
  store ptr %105, ptr %104, align 8, !tbaa !240
  %106 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %98, i64 1
  %107 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %97, i64 1
  %108 = add nsw i64 %96, -1
  %109 = icmp sgt i64 %96, 1
  br i1 %109, label %95, label %110, !llvm.loop !317

110:                                              ; preds = %95, %88
  %111 = phi ptr [ %5, %88 ], [ %107, %95 ]
  %112 = ptrtoint ptr %2 to i64
  %113 = sub i64 %112, %89
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = udiv exact i64 %113, 24
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ %130, %117 ], [ %116, %115 ]
  %119 = phi ptr [ %129, %117 ], [ %0, %115 ]
  %120 = phi ptr [ %128, %117 ], [ %1, %115 ]
  %121 = load i32, ptr %120, align 8, !tbaa !235
  store i32 %121, ptr %119, align 8, !tbaa !235
  %122 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %120, i64 0, i32 1
  %123 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %119, i64 0, i32 1
  %124 = load i32, ptr %122, align 8, !tbaa !239
  store i32 %124, ptr %123, align 8, !tbaa !239
  %125 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %120, i64 0, i32 1, i32 1
  %126 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %119, i64 0, i32 1, i32 1
  %127 = load ptr, ptr %125, align 8, !tbaa !240
  store ptr %127, ptr %126, align 8, !tbaa !240
  %128 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %120, i64 1
  %129 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %119, i64 1
  %130 = add nsw i64 %118, -1
  %131 = icmp sgt i64 %118, 1
  br i1 %131, label %117, label %132, !llvm.loop !317

132:                                              ; preds = %117, %110
  %133 = ptrtoint ptr %111 to i64
  %134 = ptrtoint ptr %5 to i64
  %135 = sub i64 %133, %134
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = udiv exact i64 %135, 24
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi i64 [ %152, %139 ], [ %138, %137 ]
  %141 = phi ptr [ %144, %139 ], [ %2, %137 ]
  %142 = phi ptr [ %143, %139 ], [ %111, %137 ]
  %143 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %142, i64 -1
  %144 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %141, i64 -1
  %145 = load i32, ptr %143, align 8, !tbaa !235
  store i32 %145, ptr %144, align 8, !tbaa !235
  %146 = getelementptr %"class.boost::tuples::tuple", ptr %142, i64 -1, i32 0, i32 1
  %147 = getelementptr %"class.boost::tuples::tuple", ptr %141, i64 -1, i32 0, i32 1
  %148 = load i32, ptr %146, align 8, !tbaa !239
  store i32 %148, ptr %147, align 8, !tbaa !239
  %149 = getelementptr %"class.boost::tuples::tuple", ptr %142, i64 -1, i32 0, i32 1, i32 1
  %150 = getelementptr %"class.boost::tuples::tuple", ptr %141, i64 -1, i32 0, i32 1, i32 1
  %151 = load ptr, ptr %149, align 8, !tbaa !240
  store ptr %151, ptr %150, align 8, !tbaa !240
  %152 = add nsw i64 %140, -1
  %153 = icmp sgt i64 %140, 1
  br i1 %153, label %139, label %154, !llvm.loop !279

154:                                              ; preds = %139, %132
  %155 = phi ptr [ %2, %132 ], [ %144, %139 ]
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %156, %112
  %158 = getelementptr inbounds i8, ptr %2, i64 %157
  br label %161

159:                                              ; preds = %84
  %160 = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %161

161:                                              ; preds = %86, %11, %159, %154, %79
  %162 = phi ptr [ %83, %79 ], [ %158, %154 ], [ %160, %159 ], [ %0, %11 ], [ %2, %86 ]
  ret ptr %162
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind allocsize(0) }

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
!35 = !{ptr @_ZN7UCTNodeC2Eii, ptr @_ZN3SMP5MutexC1Ev, i64 970}
!36 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 12331874}
!37 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN7UCTNodeD2Ev, i64 12330904}
!38 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZdlPv, i64 12330904}
!39 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN3SMP4LockD1Ev, i64 12331874}
!40 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 201906}
!41 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastState10get_passesEv, i64 201906}
!42 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_Znwm, i64 13494548}
!43 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZdlPv, i64 640693}
!44 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard11no_eye_fillEi, i64 12742161}
!45 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard10is_suicideEii, i64 12533597}
!46 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastState11get_to_moveEv, i64 12330834}
!47 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP5MutexC1Ev, i64 12330834}
!48 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard18minimum_elib_countEii, i64 24320848}
!49 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP4LockD1Ev, i64 201906}
!50 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_Znwm, i64 265874}
!51 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoState9play_moveEi, i64 132952}
!52 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoState7superkoEv, i64 132952}
!53 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZdlPv, i64 265904}
!54 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!55 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN7Playout9get_scoreEv, i64 38472780}
!56 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!57 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 561583}
!58 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN3SMP4LockD1Ev, i64 561583}
!59 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 561583}
!60 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN3SMP4LockD1Ev, i64 561583}
!61 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 47163}
!62 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_Znwm, i64 343422}
!63 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZdlPv, i64 390584}
!64 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZnwmRKSt9nothrow_t, i64 47163}
!65 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 47163}
!66 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN3SMP4LockD1Ev, i64 47163}
!67 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 402}
!68 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN3SMP4LockD1Ev, i64 402}
!69 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7Playout9get_scoreEv, i64 32407242}
!70 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7Playout11passthroughEii, i64 1979964963}
!71 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 337948431}
!72 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN3SMP4LockD1Ev, i64 337948431}
!73 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 1}
!74 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, i64 94326}
!75 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, i64 47163}
!76 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 678637}
!77 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, i64 449259}
!78 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, i64 260362}
!79 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, i64 23734}
!80 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, i64 23429}
!81 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!82 = !{!"function_entry_count", i64 970}
!83 = !{!84, !85, i64 0}
!84 = !{!"_ZTS7UCTNode", !85, i64 0, !85, i64 8, !88, i64 16, !88, i64 20, !88, i64 24, !88, i64 28, !88, i64 32, !89, i64 36, !88, i64 40, !90, i64 48}
!85 = !{!"any pointer", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C++ TBAA"}
!88 = !{!"int", !86, i64 0}
!89 = !{!"bool", !86, i64 0}
!90 = !{!"_ZTSN3SMP5MutexE", !91, i64 0}
!91 = !{!"long", !86, i64 0}
!92 = !{!84, !88, i64 16}
!93 = !{!84, !88, i64 20}
!94 = !{!84, !88, i64 24}
!95 = !{!84, !89, i64 36}
!96 = !{!84, !88, i64 40}
!97 = !{!84, !88, i64 32}
!98 = !{!84, !88, i64 28}
!99 = !{!"function_entry_count", i64 12331874}
!100 = !{!"branch_weights", i32 12331874, i32 0}
!101 = !{!"branch_weights", i32 970, i32 12330904}
!102 = !{!84, !85, i64 8}
!103 = !{!"branch_weights", i32 12330904, i32 0}
!104 = distinct !{!104, !105, !106}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"function_entry_count", i64 0}
!108 = !{!"function_entry_count", i64 1946}
!109 = !{!"function_entry_count", i64 201906}
!110 = !{!"branch_weights", i32 201906, i32 0}
!111 = !{!"branch_weights", i32 170411, i32 31495}
!112 = !{!113, !88, i64 1764}
!113 = !{!"_ZTS9FastBoard", !114, i64 0, !114, i64 882, !88, i64 1764, !88, i64 1768, !88, i64 1772, !115, i64 1776, !116, i64 3540, !116, i64 4424, !116, i64 5308, !116, i64 6192, !114, i64 7076, !117, i64 7960, !118, i64 7976, !119, i64 8008, !119, i64 8016, !120, i64 8024, !88, i64 8048}
!114 = !{!"_ZTSN5boost5arrayItLm441EEE", !86, i64 0}
!115 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !86, i64 0}
!116 = !{!"_ZTSN5boost5arrayItLm442EEE", !86, i64 0}
!117 = !{!"_ZTSN5boost5arrayIiLm4EEE", !86, i64 0}
!118 = !{!"_ZTSN5boost5arrayIiLm8EEE", !86, i64 0}
!119 = !{!"_ZTSN5boost5arrayIiLm2EEE", !86, i64 0}
!120 = !{!"_ZTSSt6vectorIiSaIiEE", !121, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!124 = !{!"branch_weights", i32 170410, i32 1}
!125 = !{!"branch_weights", i32 13186, i32 157225}
!126 = !{!88, !88, i64 0}
!127 = !{!"branch_weights", i32 0, i32 13186}
!128 = !{!"branch_weights", i32 13080, i32 106}
!129 = !{!"VP", i32 1, i64 13080, i64 32, i64 2542, i64 16, i64 2461, i64 64, i64 2271, i64 128, i64 2193}
!130 = !{!"branch_weights", i32 106, i32 13080}
!131 = !{!132, !132, i64 0}
!132 = !{!"short", !86, i64 0}
!133 = !{!134, !88, i64 8084}
!134 = !{!"_ZTS9FastState", !135, i64 0, !137, i64 8072, !88, i64 8076, !88, i64 8080, !88, i64 8084, !88, i64 8088, !88, i64 8092, !88, i64 8096, !138, i64 8100, !139, i64 8196}
!135 = !{!"_ZTS9FullBoard", !113, i64 0, !136, i64 8056, !136, i64 8064}
!136 = !{!"long long", !86, i64 0}
!137 = !{!"float", !86, i64 0}
!138 = !{!"_ZTSN5boost5arrayIiLm24EEE", !86, i64 0}
!139 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !86, i64 0}
!140 = !{!"branch_weights", i32 3979, i32 12742243}
!141 = !{!"branch_weights", i32 12742243, i32 0}
!142 = !{!"branch_weights", i32 12533678, i32 208565}
!143 = !{!113, !88, i64 1768}
!144 = !{!"branch_weights", i32 12533678, i32 0}
!145 = !{!"branch_weights", i32 373185, i32 12160493}
!146 = !{!"branch_weights", i32 1150535, i32 11009958}
!147 = !{!"branch_weights", i32 0, i32 10239255}
!148 = !{!"branch_weights", i32 4068926, i32 6170329}
!149 = !{!"VP", i32 1, i64 457205, i64 4, i64 330340, i64 8, i64 54676, i64 16, i64 18311, i64 32, i64 17146}
!150 = !{!"branch_weights", i32 6170329, i32 4068926}
!151 = !{!"branch_weights", i32 12575812, i32 170410}
!152 = distinct !{!152, !105, !106}
!153 = !{!"branch_weights", i32 1, i32 201905}
!154 = !{!"branch_weights", i32 170411, i32 12160493}
!155 = !{!"branch_weights", i32 12160493, i32 0}
!156 = !{!"branch_weights", i32 1187347, i32 10973146}
!157 = !{!"branch_weights", i32 266421, i32 11894072}
!158 = !{!"branch_weights", i32 201905, i32 12128999}
!159 = distinct !{!159, !105, !106}
!160 = !{!"branch_weights", i32 31495, i32 170411}
!161 = !{!"function_entry_count", i64 70959083}
!162 = !{!"branch_weights", i32 1, i32 969}
!163 = !{!"branch_weights", i32 970, i32 132987}
!164 = !{!123, !85, i64 8}
!165 = !{!123, !85, i64 0}
!166 = !{!"branch_weights", i32 7788864, i32 0}
!167 = !{!123, !85, i64 16}
!168 = !{!85, !85, i64 0}
!169 = !{!113, !88, i64 8048}
!170 = !{!"branch_weights", i32 1748, i32 15448222}
!171 = !{!"branch_weights", i32 0, i32 27873636}
!172 = !{!173, !85, i64 0}
!173 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!174 = !{!173, !85, i64 8}
!175 = !{!173, !85, i64 16}
!176 = !{!"VP", i32 1, i64 132971, i64 513, i64 68563, i64 257, i64 33863, i64 129, i64 18516, i64 65, i64 6995}
!177 = !{!"branch_weights", i32 132987, i32 0}
!178 = !{!"branch_weights", i32 0, i32 132987}
!179 = !{!"branch_weights", i32 969, i32 132988}
!180 = !{!"function_entry_count", i64 32455418}
!181 = distinct !{!181, !105, !106}
!182 = !{!"function_entry_count", i64 38472780}
!183 = !{!"branch_weights", i32 38472780, i32 0}
!184 = !{!"branch_weights", i32 18020217, i32 20452563}
!185 = !{!"branch_weights", i32 19262151, i32 19210629}
!186 = !{!"branch_weights", i32 10198155, i32 9063996}
!187 = !{!"branch_weights", i32 8977475, i32 10233154}
!188 = !{!"function_entry_count", i64 561583}
!189 = !{!"function_entry_count", i64 14918}
!190 = !{!"branch_weights", i32 7444, i32 7474}
!191 = !{!"function_entry_count", i64 86774516}
!192 = !{!"function_entry_count", i64 5818}
!193 = !{!"function_entry_count", i64 6234979}
!194 = !{!"function_entry_count", i64 32407242}
!195 = !{!"branch_weights", i32 0, i32 1}
!196 = !{i8 0, i8 2}
!197 = !{}
!198 = !{!"branch_weights", i32 0, i32 32407242}
!199 = distinct !{!199, !105, !106}
!200 = !{!"branch_weights", i32 1, i32 32407241}
!201 = !{!"branch_weights", i32 1979944395, i32 0}
!202 = !{!"branch_weights", i32 348959203, i32 1630985192}
!203 = !{!"branch_weights", i32 806909936, i32 824075256}
!204 = !{!"branch_weights", i32 97427716, i32 1882516679}
!205 = !{!"branch_weights", i32 32407242, i32 1947557698}
!206 = !{!"branch_weights", i32 20545, i32 1947537153}
!207 = distinct !{!207, !105, !106}
!208 = distinct !{!208, !105, !106}
!209 = !{!"function_entry_count", i64 47163}
!210 = !{!"branch_weights", i32 1, i32 47162}
!211 = !{!"branch_weights", i32 1368726, i32 3007641}
!212 = !{!"branch_weights", i32 1490411, i32 1517230}
!213 = !{!"branch_weights", i32 283144, i32 2724497}
!214 = !{!"branch_weights", i32 0, i32 343424}
!215 = !{!"branch_weights", i32 1, i32 343423}
!216 = !{!"branch_weights", i32 47163, i32 296261}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!219 = distinct !{!219, !"_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_"}
!220 = distinct !{!220, !219, !"_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!221 = !{!"branch_weights", i32 343423, i32 5801922}
!222 = distinct !{!222, !105, !106}
!223 = !{!"branch_weights", i32 60280, i32 1308446}
!224 = !{!225, !227}
!225 = distinct !{!225, !226, !"_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!226 = distinct !{!226, !"_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_"}
!227 = distinct !{!227, !226, !"_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!228 = !{!"branch_weights", i32 47162, i32 4329205}
!229 = distinct !{!229, !105, !106}
!230 = !{!"branch_weights", i32 47163, i32 0}
!231 = !{!"branch_weights", i32 0, i32 47163}
!232 = distinct !{!232, !105, !106}
!233 = !{!"branch_weights", i32 47162, i32 2105573}
!234 = distinct !{!234, !105, !106}
!235 = !{!236, !88, i64 0}
!236 = !{!"_ZTSN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEE", !88, i64 0, !237, i64 8}
!237 = !{!"_ZTSN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEE", !88, i64 0, !238, i64 8}
!238 = !{!"_ZTSN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEE", !85, i64 0}
!239 = !{!237, !88, i64 0}
!240 = !{!238, !85, i64 0}
!241 = !{!"branch_weights", i32 -2070665890, i32 47163}
!242 = !{!"branch_weights", i32 2129307, i32 47162}
!243 = distinct !{!243, !105, !106}
!244 = distinct !{!244, !105, !106}
!245 = !{!"function_entry_count", i64 51043}
!246 = !{!"function_entry_count", i64 2}
!247 = !{!"branch_weights", i32 2, i32 8}
!248 = !{!"branch_weights", i32 0, i32 10}
!249 = distinct !{!249, !105, !106}
!250 = !{!"function_entry_count", i64 6}
!251 = !{!"branch_weights", i32 6, i32 6}
!252 = !{!"branch_weights", i32 0, i32 12}
!253 = distinct !{!253, !105, !106}
!254 = !{!"function_entry_count", i64 402}
!255 = !{!"branch_weights", i32 989825196, i32 990139744}
!256 = !{!"branch_weights", i32 169118413, i32 820706783}
!257 = !{!"branch_weights", i32 73820375, i32 95298038}
!258 = !{!"branch_weights", i32 168830014, i32 821309730}
!259 = !{!"branch_weights", i32 93301142, i32 75528872}
!260 = !{!"branch_weights", i32 32407241, i32 1947557699}
!261 = distinct !{!261, !105, !106}
!262 = !{!"function_entry_count", i64 1}
!263 = !{!"branch_weights", i32 0, i32 10252442}
!264 = !{!"function_entry_count", i64 678637}
!265 = !{!"branch_weights", i32 12878, i32 665759}
!266 = !{!"branch_weights", i32 1, i32 665758}
!267 = !{!"branch_weights", i32 6477390, i32 2940477}
!268 = !{!"branch_weights", i32 8993448, i32 424419}
!269 = !{!"branch_weights", i32 8703185, i32 290263}
!270 = !{!"branch_weights", i32 2516058, i32 6187127}
!271 = !{!"branch_weights", i32 543481, i32 5643646}
!272 = !{!"branch_weights", i32 479302, i32 5707825}
!273 = !{!"branch_weights", i32 24470, i32 454832}
!274 = !{!"branch_weights", i32 16363, i32 462939}
!275 = !{!"branch_weights", i32 360, i32 16003}
!276 = !{!"branch_weights", i32 244359, i32 3466249}
!277 = !{!"branch_weights", i32 244358, i32 1}
!278 = !{!"branch_weights", i32 452287, i32 244358}
!279 = distinct !{!279, !105, !106}
!280 = !{!"branch_weights", i32 2966335, i32 1171735}
!281 = !{!"branch_weights", i32 62072, i32 1}
!282 = !{!"branch_weights", i32 3795562, i32 280435}
!283 = !{!"branch_weights", i32 1109662, i32 2685900}
!284 = !{!"branch_weights", i32 243842, i32 2442058}
!285 = !{!"branch_weights", i32 12844, i32 230998}
!286 = !{!"branch_weights", i32 11599, i32 232243}
!287 = !{!"branch_weights", i32 457, i32 11142}
!288 = !{!"branch_weights", i32 671821, i32 3466249}
!289 = !{!"branch_weights", i32 4013925, i32 62072}
!290 = distinct !{!290, !105, !106}
!291 = !{!"branch_weights", i32 665758, i32 3044850}
!292 = distinct !{!292, !105, !106}
!293 = distinct !{!293, !105, !106}
!294 = distinct !{!294, !105, !106}
!295 = !{!296, !88, i64 0}
!296 = !{!"_ZTS8NodeComp", !88, i64 0}
!297 = distinct !{!297, !105, !106}
!298 = distinct !{!298, !105, !106}
!299 = distinct !{!299, !105, !106}
!300 = distinct !{!300, !105, !106}
!301 = !{!"function_entry_count", i64 94326}
!302 = !{!"branch_weights", i32 1, i32 94325}
!303 = !{!"branch_weights", i32 94325, i32 489986}
!304 = distinct !{!304, !105, !106}
!305 = !{!"branch_weights", i32 94325, i32 1}
!306 = !{!"branch_weights", i32 1, i32 136936}
!307 = !{!"branch_weights", i32 136936, i32 175386}
!308 = distinct !{!308, !105, !106}
!309 = !{!"branch_weights", i32 13512, i32 123425}
!310 = !{!"branch_weights", i32 123425, i32 0}
!311 = distinct !{!311, !105, !106}
!312 = !{!"branch_weights", i32 42612, i32 94325}
!313 = distinct !{!313, !105, !106}
!314 = !{!"branch_weights", i32 23429, i32 23734}
!315 = !{!"branch_weights", i32 23733, i32 1}
!316 = !{!"branch_weights", i32 1038842, i32 23733}
!317 = distinct !{!317, !105, !106}
!318 = !{!"branch_weights", i32 0, i32 23429}
!319 = !{!"branch_weights", i32 23428, i32 1}
!320 = !{!"branch_weights", i32 1090466, i32 23428}
!321 = !{!"function_entry_count", i64 449259}
!322 = !{!"branch_weights", i32 5773830, i32 382688}
!323 = !{!"branch_weights", i32 449258, i32 1}
!324 = !{!"branch_weights", i32 597738, i32 5109521}
!325 = !{!"branch_weights", i32 5258001, i32 449258}
!326 = distinct !{!326, !105, !106}
!327 = !{!"branch_weights", i32 445978, i32 3281}
!328 = !{!"branch_weights", i32 0, i32 445978}
!329 = !{!"branch_weights", i32 2574458, i32 449258}
!330 = !{!"function_entry_count", i64 260362}
!331 = !{!"branch_weights", i32 260361, i32 1}
!332 = !{!"branch_weights", i32 3112605, i32 1329565}
!333 = !{!"branch_weights", i32 4375623, i32 66547}
!334 = !{!"branch_weights", i32 4164413, i32 211210}
!335 = !{!"branch_weights", i32 1263018, i32 2901395}
!336 = !{!"branch_weights", i32 185740, i32 2715655}
!337 = !{!"branch_weights", i32 169686, i32 2731709}
!338 = !{!"branch_weights", i32 6077, i32 163609}
!339 = !{!"branch_weights", i32 2822, i32 166864}
!340 = !{!"branch_weights", i32 67, i32 2755}
!341 = !{!"branch_weights", i32 522517, i32 3919653}
!342 = !{!"branch_weights", i32 4517353, i32 185179}
!343 = !{!"branch_weights", i32 4181809, i32 260361}
!344 = distinct !{!344, !105, !106}
!345 = !{!"branch_weights", i32 1877553, i32 260361}
!346 = !{!"branch_weights", i32 2336508, i32 260361}
!347 = !{!"function_entry_count", i64 23734}
!348 = !{!"branch_weights", i32 1, i32 23152}
!349 = !{!"branch_weights", i32 581, i32 1241624}
!350 = !{!"branch_weights", i32 927052, i32 314572}
!351 = !{!"branch_weights", i32 1213148, i32 28476}
!352 = !{!"branch_weights", i32 1151074, i32 62074}
!353 = !{!"branch_weights", i32 286096, i32 864978}
!354 = !{!"branch_weights", i32 43094, i32 821884}
!355 = !{!"branch_weights", i32 38397, i32 826581}
!356 = !{!"branch_weights", i32 4378, i32 34019}
!357 = !{!"branch_weights", i32 2162, i32 36235}
!358 = !{!"branch_weights", i32 59, i32 2103}
!359 = !{!"branch_weights", i32 179827, i32 1061797}
!360 = !{!"branch_weights", i32 23152, i32 1219053}
!361 = distinct !{!361, !105, !106}
!362 = !{!"branch_weights", i32 580, i32 1}
!363 = !{!"branch_weights", i32 198, i32 580}
!364 = !{!"function_entry_count", i64 23429}
!365 = !{!"branch_weights", i32 6, i32 23423}
!366 = !{!"branch_weights", i32 1187253, i32 395709}
!367 = !{!"branch_weights", i32 1553010, i32 29952}
!368 = !{!"branch_weights", i32 1411985, i32 141025}
!369 = !{!"branch_weights", i32 365757, i32 1046228}
!370 = !{!"branch_weights", i32 52179, i32 994049}
!371 = !{!"branch_weights", i32 31951, i32 1014277}
!372 = !{!"branch_weights", i32 5080, i32 26871}
!373 = !{!"branch_weights", i32 2039, i32 29912}
!374 = !{!"branch_weights", i32 53, i32 1986}
!375 = !{!"branch_weights", i32 475397, i32 1107565}
!376 = !{!"branch_weights", i32 3553, i32 471844}
!377 = distinct !{!377, !105, !106}
!378 = !{!"branch_weights", i32 3552, i32 1}
!379 = !{!"branch_weights", i32 2777, i32 3552}
!380 = !{!"branch_weights", i32 19870, i32 1087695}
