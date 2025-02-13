; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_rtbuild.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_rtbuild.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%struct.anon = type { ptr, ptr, i32 }
%struct.RTBuilder = type { %struct.anon, [3 x ptr], [3 x ptr], i32, [33 x i32], [6 x float] }
%"struct.RTBuilder::Object" = type { ptr, float, [6 x float], i32 }
%struct.SweepCost = type { [6 x float], float }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { ptr }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { ptr }
%"class.std::_Temporary_buffer" = type { i64, i64, ptr }
%"struct.__gnu_cxx::__ops::_Iter_pred" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_negate" = type { ptr }
%"struct.std::pair" = type { ptr, i64 }

$_ZSt16stable_partitionIPPN9RTBuilder6ObjectEPFbS2_EET_S6_S6_T0_ = comdat any

$_ZSt4sortIPPN9RTBuilder6ObjectEPFbRKS2_S5_EEvT_S8_T0_ = comdat any

$_ZSt6__sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_15_Iter_comp_iterIT_EESA_ = comdat any

$_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt22__final_insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_ = comdat any

$_ZSt14__partial_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_ = comdat any

$_ZSt13__heap_selectIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_ = comdat any

$_ZSt11__sort_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_ = comdat any

$_ZSt11__make_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_ = comdat any

$_ZSt13__adjust_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEC2EONS0_15_Iter_comp_iterIS8_EE = comdat any

$_ZSt11__push_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRKS2_S8_EEEEvT_T0_SD_T1_RT2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_S4_EEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_ = comdat any

$_ZSt21__unguarded_partitionIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_SC_T0_ = comdat any

$_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_ = comdat any

$_ZSt4swapIPN9RTBuilder6ObjectEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_ = comdat any

$_ZSt16__insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_ = comdat any

$_ZSt13move_backwardIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_ = comdat any

$_ZSt25__unguarded_linear_insertIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISA_EE = comdat any

$_ZSt22__copy_move_backward_aILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN9RTBuilder6ObjectEET_S4_ = comdat any

$_ZSt12__niter_wrapIPPN9RTBuilder6ObjectEET_RKS4_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN9RTBuilder6ObjectEEEPT_PKS6_S9_S7_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIS4_PS4_EEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEC2EONS0_15_Iter_comp_iterIS8_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEC2ES8_ = comdat any

$_ZSt18__stable_partitionIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops11__pred_iterIPFbPN9RTBuilder6ObjectEEEENS0_10_Iter_predIT_EES8_ = comdat any

$_ZSt13__find_if_notIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEEET_SA_SA_T0_ = comdat any

$_ZSt8distanceIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E15difference_typeES5_S5_ = comdat any

$_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_EC2ES3_l = comdat any

$_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_ = comdat any

$_ZNKSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E14requested_sizeEv = comdat any

$_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E5beginEv = comdat any

$_ZNKSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E4sizeEv = comdat any

$_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_ED2Ev = comdat any

$_ZSt9__find_ifIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops12_Iter_negateIPFbS2_EEEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops8__negateIPFbPN9RTBuilder6ObjectEEEENS0_12_Iter_negateIT_EENS0_10_Iter_predIS8_EE = comdat any

$_ZSt19__iterator_categoryIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEC2ES6_ = comdat any

$_ZSt10__distanceIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag = comdat any

$_ZSt20get_temporary_bufferIPN9RTBuilder6ObjectEESt4pairIPT_lEl = comdat any

$_ZSt29__uninitialized_construct_bufIPPN9RTBuilder6ObjectES3_EvT_S4_T0_ = comdat any

$_ZNSt8__detail25__return_temporary_bufferIPN9RTBuilder6ObjectEEEvPT_m = comdat any

$__clang_call_terminate = comdat any

$_ZNSt4pairIPPN9RTBuilder6ObjectElEC2IRS3_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_ = comdat any

$_ZNSt4pairIPPN9RTBuilder6ObjectElEC2IS3_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_ = comdat any

$_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIPPN9RTBuilder6ObjectES5_EEvT_S6_T0_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_ = comdat any

$_ZSt4moveIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_ = comdat any

$_ZSt7advanceIPPN9RTBuilder6ObjectElEvRT_T0_ = comdat any

$_ZSt15__find_if_not_nIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_RT1_T0_ = comdat any

$_ZNSt3_V26rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_ = comdat any

$_ZSt13__copy_move_aILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a1ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN9RTBuilder6ObjectEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt9__advanceIPPN9RTBuilder6ObjectElEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZNSt3_V28__rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_St26random_access_iterator_tag = comdat any

$_ZSt11swap_rangesIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_ = comdat any

$_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt8_DestroyIPPN9RTBuilder6ObjectEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPN9RTBuilder6ObjectEEEvT_S6_ = comdat any

$_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEC2ES6_ = comdat any

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"RTBuilder\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RTBuilder.objects\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RTBuilder.sorted_objects\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"RTBuilder.HeuristicSweep\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@switch.table._ZL11object_sortIPN9RTBuilder6ObjectEEvPT_S4_i = private unnamed_addr constant [3 x ptr] [ptr @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi0EEbRKT_S5_, ptr @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi1EEbRKT_S5_, ptr @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi2EEbRKT_S5_], align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local ptr @rtbuild_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 232, ptr noundef nonnull @.str) #17
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = sext i32 %0 to i64
  %6 = mul nsw i64 %5, 40
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.1) #17
  tail call fastcc void @_ZL12rtbuild_initP9RTBuilder(ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !38
  store ptr %7, ptr %3, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  store i32 %0, ptr %9, align 8, !tbaa !43
  %10 = shl nsw i64 %5, 3
  br label %12

11:                                               ; preds = %12
  ret ptr %3

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %18, %12 ]
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef %10, ptr noundef nonnull @.str.2) #17
  %16 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 1, i64 %13
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.RTBuilder, ptr %3, i64 0, i32 2, i64 %13
  store ptr %15, ptr %17, align 8, !tbaa !34
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %11, label %12, !llvm.loop !44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @_ZL12rtbuild_initP9RTBuilder(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !46 {
  %2 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !47
  %3 = getelementptr i8, ptr %0, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !48
  %4 = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %5 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 0
  store ptr null, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 1
  store ptr null, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 2
  store ptr null, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %9, align 4, !tbaa !49
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %8, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @rtbuild_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %5, %1
  br label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %2) #17
  br label %4

7:                                                ; preds = %16
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %0) #17
  ret void

9:                                                ; preds = %4, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #17
  br label %16

16:                                               ; preds = %9, %14
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %7, label %9, !llvm.loop !51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @rtbuild_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 2
  %5 = getelementptr inbounds float, ptr %3, i64 3
  %6 = getelementptr inbounds float, ptr %3, i64 5
  %7 = getelementptr inbounds float, ptr %3, i64 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 16, !tbaa !49
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %3, align 16, !tbaa !49
  call void @RE_rayobject_merge_bb(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %5) #17
  %8 = load float, ptr %3, align 16, !tbaa !49
  %9 = load float, ptr %5, align 4, !tbaa !49
  %10 = fcmp ogt float %8, %9
  br i1 %10, label %64, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = load float, ptr %7, align 16, !tbaa !49
  %15 = fcmp ogt float %13, %14
  br i1 %15, label %64, label %16

16:                                               ; preds = %11
  %17 = load float, ptr %4, align 8, !tbaa !49
  %18 = load float, ptr %6, align 4, !tbaa !49
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  %21 = call float @llvm.fabs.f32(float %8)
  %22 = fcmp ueq float %21, 0x7FF0000000000000
  %23 = call float @llvm.fabs.f32(float %13)
  %24 = fcmp ueq float %23, 0x7FF0000000000000
  %25 = or i1 %22, %24
  %26 = call float @llvm.fabs.f32(float %17)
  %27 = fcmp ueq float %26, 0x7FF0000000000000
  %28 = or i1 %25, %27
  br i1 %28, label %64, label %29

29:                                               ; preds = %20
  %30 = call float @llvm.fabs.f32(float %9)
  %31 = fcmp ueq float %30, 0x7FF0000000000000
  %32 = call float @llvm.fabs.f32(float %14)
  %33 = fcmp ueq float %32, 0x7FF0000000000000
  %34 = or i1 %31, %33
  %35 = call float @llvm.fabs.f32(float %18)
  %36 = fcmp ueq float %35, 0x7FF0000000000000
  %37 = or i1 %34, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %29
  %39 = fcmp oeq float %8, %9
  %40 = fcmp oeq float %13, %14
  %41 = and i1 %39, %40
  %42 = fcmp oeq float %17, %18
  %43 = and i1 %41, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %46, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %47, ptr noundef nonnull %3) #17
  %48 = load ptr, ptr %45, align 8, !tbaa !38
  %49 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %48, i64 0, i32 2, i64 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %49, ptr noundef nonnull %5) #17
  %50 = load ptr, ptr %45, align 8, !tbaa !38
  store ptr %1, ptr %50, align 8, !tbaa !52
  %51 = call float @RE_rayobject_cost(ptr noundef %1) #17
  %52 = load ptr, ptr %45, align 8, !tbaa !38
  %53 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %52, i64 0, i32 1
  store float %51, ptr %53, align 8, !tbaa !54
  br label %56

54:                                               ; preds = %56
  %55 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %52, i64 1
  store ptr %55, ptr %45, align 8, !tbaa !38
  br label %64

56:                                               ; preds = %44, %56
  %57 = phi i64 [ 0, %44 ], [ %62, %56 ]
  %58 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  store ptr %52, ptr %59, align 8, !tbaa !34
  %60 = load ptr, ptr %58, align 8, !tbaa !34
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %61, ptr %58, align 8, !tbaa !34
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %54, label %56, !llvm.loop !55

64:                                               ; preds = %38, %29, %20, %2, %11, %16, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL10copy_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !56 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare float @RE_rayobject_cost(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @rtbuild_size(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @rtbuild_done(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %16
  %4 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @RE_rayobjectcontrol_test_break(ptr noundef %1) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = trunc i64 %4 to i32
  tail call fastcc void @_ZL11object_sortIPN9RTBuilder6ObjectEEvPT_S4_i(ptr noundef %12, ptr noundef %14, i32 noundef %15) #17
  br label %16

16:                                               ; preds = %3, %11
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %3, !llvm.loop !57

19:                                               ; preds = %8, %16
  ret void
}

; Function Attrs: optsize
declare i32 @RE_rayobjectcontrol_test_break(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL11object_sortIPN9RTBuilder6ObjectEEvPT_S4_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !58 {
  %4 = icmp ult i32 %2, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZL11object_sortIPN9RTBuilder6ObjectEEvPT_S4_i, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  tail call void @_ZSt4sortIPPN9RTBuilder6ObjectEPFbRKS2_S5_EEvT_S8_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #17
  br label %9

9:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @rtbuild_get_primitive(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rtbuild_get_child(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef returned writeonly %2) local_unnamed_addr #7 {
  tail call fastcc void @_ZL12rtbuild_initP9RTBuilder(ptr noundef %2) #17
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 %4
  %6 = add nsw i32 %1, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 %7
  br label %10

9:                                                ; preds = %26
  ret ptr %2

10:                                               ; preds = %3, %26
  %11 = phi i64 [ 0, %3 ], [ %29, %26 ]
  %12 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %5, align 4, !tbaa !48
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %13, i64 %17
  %19 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 1, i64 %11
  store ptr %18, ptr %19, align 8, !tbaa !34
  %20 = load ptr, ptr %12, align 8, !tbaa !34
  %21 = load i32, ptr %8, align 4, !tbaa !48
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  br label %26

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 1, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %15, %24
  %27 = phi ptr [ null, %24 ], [ %23, %15 ]
  %28 = getelementptr inbounds %struct.RTBuilder, ptr %2, i64 0, i32 2, i64 %11
  store ptr %27, ptr %28, align 8
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %9, label %10, !llvm.loop !59
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @rtbuild_merge_bb(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @_ZL15rtbuild_calc_bbP9RTBuilder(ptr noundef %0) #17
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !49
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store float %6, ptr %1, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store float %13, ptr %10, align 4, !tbaa !49
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !49
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store float %20, ptr %17, align 4, !tbaa !49
  br label %23

23:                                               ; preds = %22, %16
  %24 = load float, ptr %2, align 4, !tbaa !49
  %25 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 3
  %26 = load float, ptr %25, align 4, !tbaa !49
  %27 = fcmp olt float %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store float %26, ptr %2, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 4
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store float %33, ptr %30, align 4, !tbaa !49
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds float, ptr %2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 5
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = fcmp olt float %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store float %40, ptr %37, align 4, !tbaa !49
  br label %43

43:                                               ; preds = %42, %36
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL15rtbuild_calc_bbP9RTBuilder(ptr noundef %0) unnamed_addr #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5
  %3 = load float, ptr %2, align 8, !tbaa !49
  %4 = fcmp oeq float %3, 0x46293E5940000000
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 5, i64 3
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %7, %11 ], [ %17, %13 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  tail call void @RE_rayobject_merge_bb(ptr noundef %16, ptr noundef nonnull %2, ptr noundef nonnull %12) #17
  %17 = getelementptr inbounds ptr, ptr %14, i64 1
  %18 = load ptr, ptr %8, align 8, !tbaa !34
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %13, !llvm.loop !61

20:                                               ; preds = %13, %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @rtbuild_heuristic_object_split(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SweepCost, align 16
  %4 = tail call i32 @rtbuild_size(ptr noundef %0) #17
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %196

6:                                                ; preds = %2
  %7 = sdiv i32 %4, 2
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = sext i32 %4 to i64
  %10 = mul nsw i64 %9, 28
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.3) #17
  %12 = add nsw i32 %4, -1
  %13 = icmp sgt i32 %4, 0
  %14 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 1
  %15 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 2
  %16 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 3
  %17 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 4
  %18 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 5
  %19 = getelementptr inbounds %struct.SweepCost, ptr %3, i64 0, i32 1
  %20 = icmp sgt i32 %4, 1
  %21 = zext i32 %12 to i64
  %22 = getelementptr inbounds %struct.SweepCost, ptr %11, i64 %21
  %23 = getelementptr inbounds float, ptr %22, i64 3
  %24 = zext nneg i32 %4 to i64
  br label %25

25:                                               ; preds = %6, %188
  %26 = phi i64 [ 0, %6 ], [ %194, %188 ]
  %27 = phi i32 [ -1, %6 ], [ %193, %188 ]
  %28 = phi i32 [ %7, %6 ], [ %190, %188 ]
  %29 = phi float [ 0x47EFFFFFE0000000, %6 ], [ %189, %188 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #18
  %30 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  br i1 %13, label %32, label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds ptr, ptr %31, i64 %21
  br label %50

34:                                               ; preds = %105, %25
  %35 = load ptr, ptr %31, align 8, !tbaa !34
  %36 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %35, i64 0, i32 2
  %37 = load <4 x float>, ptr %36, align 4, !tbaa !49
  store <4 x float> %37, ptr %3, align 16, !tbaa !49
  %38 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %35, i64 0, i32 2, i64 4
  %39 = load <2 x float>, ptr %38, align 4, !tbaa !49
  store <2 x float> %39, ptr %17, align 16, !tbaa !49
  %40 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %35, i64 0, i32 1
  %41 = load float, ptr %40, align 8, !tbaa !54
  store float %41, ptr %19, align 8, !tbaa !62
  br i1 %20, label %42, label %188

42:                                               ; preds = %34
  %43 = trunc i64 %26 to i32
  %44 = extractelement <4 x float> %37, i64 0
  %45 = extractelement <4 x float> %37, i64 1
  %46 = extractelement <4 x float> %37, i64 2
  %47 = extractelement <4 x float> %37, i64 3
  %48 = extractelement <2 x float> %39, i64 0
  %49 = extractelement <2 x float> %39, i64 1
  br label %110

50:                                               ; preds = %32, %105
  %51 = phi i64 [ %21, %32 ], [ %108, %105 ]
  %52 = icmp eq i64 %51, %21
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load ptr, ptr %33, align 8, !tbaa !34
  %55 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %54, i64 0, i32 2
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef %22, ptr noundef nonnull %55) #17
  %56 = load ptr, ptr %33, align 8, !tbaa !34
  %57 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %56, i64 0, i32 2, i64 3
  tail call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %23, ptr noundef nonnull %57) #17
  %58 = load ptr, ptr %33, align 8, !tbaa !34
  %59 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %58, i64 0, i32 1
  %60 = load float, ptr %59, align 8, !tbaa !54
  br label %105

61:                                               ; preds = %50
  %62 = getelementptr inbounds ptr, ptr %31, i64 %51
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 2
  %65 = load float, ptr %64, align 4, !tbaa !49
  %66 = getelementptr %struct.SweepCost, ptr %11, i64 %51
  %67 = getelementptr %struct.SweepCost, ptr %66, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !49
  %69 = tail call fastcc noundef float @_ZL6min_ffff(float noundef %65, float noundef %68) #17
  store float %69, ptr %66, align 4, !tbaa !49
  %70 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 2, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !49
  %72 = getelementptr %struct.SweepCost, ptr %66, i64 1, i32 0, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !49
  %74 = tail call fastcc noundef float @_ZL6min_ffff(float noundef %71, float noundef %73) #17
  %75 = getelementptr inbounds [6 x float], ptr %66, i64 0, i64 1
  store float %74, ptr %75, align 4, !tbaa !49
  %76 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 2, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !49
  %78 = getelementptr %struct.SweepCost, ptr %66, i64 1, i32 0, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !49
  %80 = tail call fastcc noundef float @_ZL6min_ffff(float noundef %77, float noundef %79) #17
  %81 = getelementptr inbounds [6 x float], ptr %66, i64 0, i64 2
  store float %80, ptr %81, align 4, !tbaa !49
  %82 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 2, i64 3
  %83 = load float, ptr %82, align 4, !tbaa !49
  %84 = getelementptr %struct.SweepCost, ptr %66, i64 1, i32 0, i64 3
  %85 = load float, ptr %84, align 4, !tbaa !49
  %86 = tail call fastcc noundef float @_ZL6max_ffff(float noundef %83, float noundef %85) #17
  %87 = getelementptr inbounds [6 x float], ptr %66, i64 0, i64 3
  store float %86, ptr %87, align 4, !tbaa !49
  %88 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 2, i64 4
  %89 = load float, ptr %88, align 4, !tbaa !49
  %90 = getelementptr %struct.SweepCost, ptr %66, i64 1, i32 0, i64 4
  %91 = load float, ptr %90, align 4, !tbaa !49
  %92 = tail call fastcc noundef float @_ZL6max_ffff(float noundef %89, float noundef %91) #17
  %93 = getelementptr inbounds [6 x float], ptr %66, i64 0, i64 4
  store float %92, ptr %93, align 4, !tbaa !49
  %94 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 2, i64 5
  %95 = load float, ptr %94, align 4, !tbaa !49
  %96 = getelementptr %struct.SweepCost, ptr %66, i64 1, i32 0, i64 5
  %97 = load float, ptr %96, align 4, !tbaa !49
  %98 = tail call fastcc noundef float @_ZL6max_ffff(float noundef %95, float noundef %97) #17
  %99 = getelementptr inbounds [6 x float], ptr %66, i64 0, i64 5
  store float %98, ptr %99, align 4, !tbaa !49
  %100 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %63, i64 0, i32 1
  %101 = load float, ptr %100, align 8, !tbaa !54
  %102 = getelementptr %struct.SweepCost, ptr %66, i64 1, i32 1
  %103 = load float, ptr %102, align 4, !tbaa !62
  %104 = fadd float %101, %103
  br label %105

105:                                              ; preds = %53, %61
  %106 = phi float [ %60, %53 ], [ %104, %61 ]
  %107 = getelementptr inbounds %struct.SweepCost, ptr %11, i64 %51, i32 1
  store float %106, ptr %107, align 4
  %108 = add nsw i64 %51, -1
  %109 = icmp sgt i64 %51, 0
  br i1 %109, label %50, label %34, !llvm.loop !64

110:                                              ; preds = %42, %181
  %111 = phi i64 [ 1, %42 ], [ %186, %181 ]
  %112 = phi i32 [ %27, %42 ], [ %144, %181 ]
  %113 = phi i32 [ %28, %42 ], [ %143, %181 ]
  %114 = phi float [ %29, %42 ], [ %142, %181 ]
  %115 = phi float [ %41, %42 ], [ %185, %181 ]
  %116 = phi float [ %44, %42 ], [ %152, %181 ]
  %117 = phi float [ %45, %42 ], [ %158, %181 ]
  %118 = phi float [ %46, %42 ], [ %164, %181 ]
  %119 = phi float [ %47, %42 ], [ %170, %181 ]
  %120 = phi float [ %48, %42 ], [ %176, %181 ]
  %121 = phi float [ %49, %42 ], [ %182, %181 ]
  %122 = call float @bb_area(ptr noundef nonnull %3, ptr noundef nonnull %16) #17
  %123 = fmul float %122, %115
  %124 = getelementptr inbounds %struct.SweepCost, ptr %11, i64 %111
  %125 = getelementptr inbounds float, ptr %124, i64 3
  %126 = tail call float @bb_area(ptr noundef nonnull %124, ptr noundef nonnull %125) #17
  %127 = getelementptr inbounds %struct.SweepCost, ptr %11, i64 %111, i32 1
  %128 = load float, ptr %127, align 4, !tbaa !62
  %129 = fmul float %126, %128
  %130 = fadd float %123, %129
  %131 = fcmp ule float %123, %114
  br i1 %131, label %132, label %188

132:                                              ; preds = %110
  %133 = fcmp olt float %130, %114
  br i1 %133, label %139, label %134

134:                                              ; preds = %132
  %135 = fcmp oeq float %130, %114
  %136 = sext i32 %112 to i64
  %137 = icmp slt i64 %26, %136
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %141

139:                                              ; preds = %134, %132
  %140 = trunc i64 %111 to i32
  br label %141

141:                                              ; preds = %139, %134
  %142 = phi float [ %130, %139 ], [ %114, %134 ]
  %143 = phi i32 [ %140, %139 ], [ %113, %134 ]
  %144 = phi i32 [ %43, %139 ], [ %112, %134 ]
  %145 = getelementptr inbounds ptr, ptr %31, i64 %111
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  %147 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 2
  %148 = load float, ptr %147, align 4, !tbaa !49
  %149 = fcmp ogt float %116, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  store float %148, ptr %3, align 16, !tbaa !49
  br label %151

151:                                              ; preds = %150, %141
  %152 = phi float [ %148, %150 ], [ %116, %141 ]
  %153 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !49
  %155 = fcmp ogt float %117, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store float %154, ptr %14, align 4, !tbaa !49
  br label %157

157:                                              ; preds = %156, %151
  %158 = phi float [ %154, %156 ], [ %117, %151 ]
  %159 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 2, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !49
  %161 = fcmp ogt float %118, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store float %160, ptr %15, align 8, !tbaa !49
  br label %163

163:                                              ; preds = %162, %157
  %164 = phi float [ %160, %162 ], [ %118, %157 ]
  %165 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 2, i64 3
  %166 = load float, ptr %165, align 4, !tbaa !49
  %167 = fcmp olt float %119, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store float %166, ptr %16, align 4, !tbaa !49
  br label %169

169:                                              ; preds = %168, %163
  %170 = phi float [ %166, %168 ], [ %119, %163 ]
  %171 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 2, i64 4
  %172 = load float, ptr %171, align 4, !tbaa !49
  %173 = fcmp olt float %120, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store float %172, ptr %17, align 16, !tbaa !49
  br label %175

175:                                              ; preds = %174, %169
  %176 = phi float [ %172, %174 ], [ %120, %169 ]
  %177 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 2, i64 5
  %178 = load float, ptr %177, align 4, !tbaa !49
  %179 = fcmp olt float %121, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store float %178, ptr %18, align 4, !tbaa !49
  br label %181

181:                                              ; preds = %175, %180
  %182 = phi float [ %121, %175 ], [ %178, %180 ]
  %183 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %146, i64 0, i32 1
  %184 = load float, ptr %183, align 8, !tbaa !54
  %185 = fadd float %115, %184
  store float %185, ptr %19, align 8, !tbaa !62
  %186 = add nuw nsw i64 %111, 1
  %187 = icmp eq i64 %186, %24
  br i1 %187, label %188, label %110, !llvm.loop !65

188:                                              ; preds = %181, %110, %34
  %189 = phi float [ %29, %34 ], [ %114, %110 ], [ %142, %181 ]
  %190 = phi i32 [ %28, %34 ], [ %113, %110 ], [ %143, %181 ]
  %191 = phi i32 [ %27, %34 ], [ %112, %110 ], [ %144, %181 ]
  %192 = icmp ult i32 %191, 3
  %193 = select i1 %192, i32 %191, i32 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #18
  %194 = add nuw nsw i64 %26, 1
  %195 = icmp eq i64 %194, 3
  br i1 %195, label %204, label %25, !llvm.loop !66

196:                                              ; preds = %2
  %197 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4
  store i32 0, ptr %197, align 4, !tbaa !48
  %198 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 1
  switch i32 %4, label %202 [
    i32 2, label %199
    i32 1, label %201
  ]

199:                                              ; preds = %196
  store i32 1, ptr %198, align 4, !tbaa !48
  %200 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 2
  store i32 %4, ptr %200, align 4, !tbaa !48
  br label %211

201:                                              ; preds = %196
  store i32 1, ptr %198, align 4, !tbaa !48
  br label %250

202:                                              ; preds = %196
  store i32 0, ptr %198, align 4, !tbaa !48
  %203 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 2
  store i32 %4, ptr %203, align 4, !tbaa !48
  br label %217

204:                                              ; preds = %188
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %205(ptr noundef %11) #17
  %206 = sext i32 %193 to i64
  %207 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4
  store i32 0, ptr %207, align 4, !tbaa !48
  %208 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 1
  store i32 %190, ptr %208, align 4, !tbaa !48
  %209 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 4, i64 2
  store i32 %4, ptr %209, align 4, !tbaa !48
  %210 = icmp sgt i32 %190, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %199, %204
  %212 = phi i64 [ 0, %199 ], [ %206, %204 ]
  %213 = phi i32 [ 1, %199 ], [ %190, %204 ]
  %214 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %212
  %215 = load ptr, ptr %214, align 8, !tbaa !34
  %216 = zext nneg i32 %213 to i64
  br label %226

217:                                              ; preds = %226, %202, %204
  %218 = phi i64 [ %206, %204 ], [ -1, %202 ], [ %212, %226 ]
  %219 = phi i32 [ %190, %204 ], [ 0, %202 ], [ %213, %226 ]
  %220 = icmp slt i32 %219, %4
  br i1 %220, label %221, label %240

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %218
  %223 = load ptr, ptr %222, align 8, !tbaa !34
  %224 = sext i32 %219 to i64
  %225 = sext i32 %4 to i64
  br label %233

226:                                              ; preds = %211, %226
  %227 = phi i64 [ 0, %211 ], [ %231, %226 ]
  %228 = getelementptr inbounds ptr, ptr %215, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !34
  %230 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %229, i64 0, i32 3
  store i32 1, ptr %230, align 4, !tbaa !67
  %231 = add nuw nsw i64 %227, 1
  %232 = icmp eq i64 %231, %216
  br i1 %232, label %217, label %226, !llvm.loop !68

233:                                              ; preds = %221, %233
  %234 = phi i64 [ %224, %221 ], [ %238, %233 ]
  %235 = getelementptr inbounds ptr, ptr %223, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !34
  %237 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %236, i64 0, i32 3
  store i32 0, ptr %237, align 4, !tbaa !67
  %238 = add nsw i64 %234, 1
  %239 = icmp eq i64 %238, %225
  br i1 %239, label %240, label %233, !llvm.loop !69

240:                                              ; preds = %233, %217
  br label %241

241:                                              ; preds = %240, %241
  %242 = phi i64 [ %248, %241 ], [ 0, %240 ]
  %243 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 1, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !34
  %245 = getelementptr inbounds %struct.RTBuilder, ptr %0, i64 0, i32 2, i64 %242
  %246 = load ptr, ptr %245, align 8, !tbaa !34
  %247 = tail call noundef ptr @_ZSt16stable_partitionIPPN9RTBuilder6ObjectEPFbS2_EET_S6_S6_T0_(ptr noundef %244, ptr noundef %246, ptr noundef nonnull @_ZL13selected_nodePN9RTBuilder6ObjectE) #17
  %248 = add nuw nsw i64 %242, 1
  %249 = icmp eq i64 %248, 3
  br i1 %249, label %250, label %241, !llvm.loop !70

250:                                              ; preds = %241, %201
  %251 = phi i32 [ 1, %201 ], [ %1, %241 ]
  ret i32 %251
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @_ZL6min_ffff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !71 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @_ZL6max_ffff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !72 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @bb_area(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fsub float %12, %14
  %16 = fmul float %5, %15
  %17 = tail call float @llvm.fmuladd.f32(float %5, float %10, float %16)
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %17)
  %19 = fmul float %18, 2.000000e+00
  %20 = fcmp olt float %19, 0.000000e+00
  %21 = select i1 %20, float 0.000000e+00, float %19
  ret float %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16stable_partitionIPPN9RTBuilder6ObjectEPFbS2_EET_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops11__pred_iterIPFbPN9RTBuilder6ObjectEEEENS0_10_Iter_predIT_EES8_(ptr noundef %2) #17
  %5 = tail call noundef ptr @_ZSt18__stable_partitionIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #17
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL13selected_nodePN9RTBuilder6ObjectE(ptr nocapture noundef readonly %0) #5 !PGOFuncName !73 {
  %2 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @bb_volume(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !49
  %9 = load <2 x float>, ptr %7, align 4, !tbaa !49
  %10 = fsub <2 x float> %8, %9
  %11 = extractelement <2 x float> %10, i64 0
  %12 = fmul float %5, %11
  %13 = extractelement <2 x float> %10, i64 1
  %14 = fmul float %12, %13
  ret float %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @bb_largest_axis(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !49
  %9 = load <2 x float>, ptr %7, align 4, !tbaa !49
  %10 = fsub <2 x float> %8, %9
  %11 = extractelement <2 x float> %10, i64 0
  %12 = fcmp ogt float %5, %11
  %13 = extractelement <2 x float> %10, i64 1
  %14 = fcmp ogt float %5, %13
  %15 = select i1 %14, i32 0, i32 2
  %16 = fcmp ogt float %11, %13
  %17 = select i1 %16, i32 1, i32 2
  %18 = select i1 %12, i32 %15, i32 %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @bb_fits_inside(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, 3
  br i1 %7, label %18, label %8, !llvm.loop !74

8:                                                ; preds = %4, %5
  %9 = phi i64 [ 0, %4 ], [ %6, %5 ]
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds float, ptr %2, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %25, label %5

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %25, label %18, !llvm.loop !75

18:                                               ; preds = %5, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %5 ]
  %20 = getelementptr inbounds float, ptr %1, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = getelementptr inbounds float, ptr %3, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %15

25:                                               ; preds = %8, %15, %18
  %26 = phi i32 [ 1, %15 ], [ 0, %18 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4sortIPPN9RTBuilder6ObjectEPFbRKS2_S5_EEvT_S8_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_15_Iter_comp_iterIT_EESA_(ptr noundef %2) #17
  tail call void @_ZSt6__sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi0EEbRKT_S5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) #6 !PGOFuncName !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %6, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fcmp une float %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !52
  %14 = load ptr, ptr %6, align 8, !tbaa !52
  %15 = icmp ult ptr %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ %11, %10 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi1EEbRKT_S5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) #6 !PGOFuncName !77 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %3, i64 0, i32 2, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %6, i64 0, i32 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fcmp une float %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !52
  %14 = load ptr, ptr %6, align 8, !tbaa !52
  %15 = icmp ult ptr %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ %11, %10 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi2EEbRKT_S5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) #6 !PGOFuncName !78 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %3, i64 0, i32 2, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %"struct.RTBuilder::Object", ptr %6, i64 0, i32 2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fcmp une float %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = fcmp olt float %5, %8
  br label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !52
  %14 = load ptr, ptr %6, align 8, !tbaa !52
  %15 = icmp ult ptr %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ %11, %10 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = tail call noundef i64 @_ZSt4__lgl(i64 noundef %9) #17
  %11 = shl nsw i64 %10, 1
  tail call void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %11, ptr %2) #17
  tail call void @_ZSt22__final_insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) #17
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_15_Iter_comp_iterIT_EESA_(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEC2ES8_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
  %5 = ptrtoint ptr %0 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %6, %5
  %8 = icmp sgt i64 %7, 128
  br i1 %8, label %9, label %20

9:                                                ; preds = %4, %14
  %10 = phi ptr [ %16, %14 ], [ %1, %4 ]
  %11 = phi i64 [ %15, %14 ], [ %2, %4 ]
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @_ZSt14__partial_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_(ptr noundef %0, ptr noundef %10, ptr noundef %10, ptr %3) #17
  br label %20

14:                                               ; preds = %9
  %15 = add nsw i64 %11, -1
  %16 = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_(ptr noundef %0, ptr noundef %10, ptr %3) #17
  tail call void @_ZSt16__introsort_loopIPPN9RTBuilder6ObjectElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef %16, ptr noundef %10, i64 noundef %15, ptr %3) #17
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %5
  %19 = icmp sgt i64 %18, 128
  br i1 %19, label %9, label %20, !llvm.loop !79

20:                                               ; preds = %14, %4, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgl(i64 noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call i64 @llvm.ctlz.i64(i64 %0, i1 true), !range !80
  %3 = xor i64 %2, 63
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 128
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds ptr, ptr %0, i64 16
  tail call void @_ZSt16__insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef nonnull %9, ptr %2) #17
  tail call void @_ZSt26__unguarded_insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef nonnull %9, ptr noundef %1, ptr %2) #17
  br label %11

10:                                               ; preds = %3
  tail call void @_ZSt16__insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) #17
  br label %11

11:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %3, ptr %5, align 8
  tail call void @_ZSt13__heap_selectIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) #17
  call void @_ZSt11__sort_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = getelementptr inbounds ptr, ptr %0, i64 1
  %11 = getelementptr inbounds ptr, ptr %1, i64 -1
  tail call void @_ZSt22__move_median_to_firstIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %9, ptr noundef nonnull %11, ptr %2) #17
  %12 = tail call noundef ptr @_ZSt21__unguarded_partitionIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_SC_T0_(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %0, ptr %2) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %3, ptr %5, align 8
  call void @_ZSt11__make_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %8, label %7

7:                                                ; preds = %12, %4
  ret void

8:                                                ; preds = %4, %12
  %9 = phi ptr [ %13, %12 ], [ %1, %4 ]
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9, ptr noundef %0) #17
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @_ZSt10__pop_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds ptr, ptr %9, i64 1
  %14 = icmp ult ptr %13, %2
  br i1 %14, label %8, label %7, !llvm.loop !81
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %14

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %10, %8 ], [ %1, %3 ]
  %10 = getelementptr inbounds ptr, ptr %9, i64 -1
  tail call void @_ZSt10__pop_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %4
  %13 = icmp sgt i64 %12, 8
  br i1 %13, label %8, label %14, !llvm.loop !82

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = add nsw i64 %7, -2
  %11 = lshr i64 %10, 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ %11, %9 ], [ %18, %12 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr %2, align 8, !tbaa.struct !83
  tail call void @_ZSt13__adjust_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_(ptr noundef %0, i64 noundef %13, i64 noundef %7, ptr noundef %15, ptr %16) #17
  %17 = icmp eq i64 %13, 0
  %18 = add nsw i64 %13, -1
  br i1 %17, label %19, label %12, !llvm.loop !84

19:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !85
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %6, ptr %2, align 8, !tbaa !34
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load ptr, ptr %3, align 8, !tbaa.struct !83
  tail call void @_ZSt13__adjust_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %10, ptr noundef %5, ptr %11) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  store ptr %4, ptr %6, align 8
  %8 = add nsw i64 %2, -1
  %9 = sdiv i64 %8, 2
  %10 = icmp sgt i64 %9, %1
  br i1 %10, label %11, label %24

11:                                               ; preds = %5, %11
  %12 = phi i64 [ %19, %11 ], [ %1, %5 ]
  %13 = shl i64 %12, 1
  %14 = add i64 %13, 2
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = or disjoint i64 %13, 1
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %15, ptr noundef nonnull %17) #17
  %19 = select i1 %18, i64 %16, i64 %14
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %0, i64 %12
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = icmp slt i64 %19, %9
  br i1 %23, label %11, label %24, !llvm.loop !87

24:                                               ; preds = %11, %5
  %25 = phi i64 [ %1, %5 ], [ %19, %11 ]
  %26 = and i64 %2, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = add nsw i64 %2, -2
  %30 = ashr exact i64 %29, 1
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = shl nsw i64 %25, 1
  %34 = or disjoint i64 %33, 1
  %35 = getelementptr inbounds ptr, ptr %0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds ptr, ptr %0, i64 %25
  store ptr %36, ptr %37, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %32, %28, %24
  %39 = phi i64 [ %34, %32 ], [ %25, %28 ], [ %25, %24 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEC2EONS0_15_Iter_comp_iterIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @_ZSt11__push_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRKS2_S8_EEEEvT_T0_SD_T1_RT2_(ptr noundef %0, i64 noundef %39, i64 noundef %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEC2EONS0_15_Iter_comp_iterIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %3, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPPN9RTBuilder6ObjectElS2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbRKS2_S8_EEEEvT_T0_SD_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat {
  %6 = alloca ptr, align 8
  store ptr %3, ptr %6, align 8, !tbaa !34
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %8, label %21

8:                                                ; preds = %5, %14
  %9 = phi i64 [ %11, %14 ], [ %1, %5 ]
  %10 = add nsw i64 %9, -1
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_S4_EEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %0, i64 %9
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = icmp sgt i64 %11, %2
  br i1 %17, label %8, label %18, !llvm.loop !90

18:                                               ; preds = %14, %8
  %19 = phi i64 [ %9, %8 ], [ %11, %14 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi ptr [ %3, %5 ], [ %20, %18 ]
  %23 = phi i64 [ %1, %5 ], [ %19, %18 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  store ptr %22, ptr %24, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_S4_EEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %4, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2) #17
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef %3) #17
  br i1 %9, label %16, label %12

10:                                               ; preds = %5
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %3) #17
  br i1 %11, label %16, label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %1, %8 ], [ %2, %10 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %13, ptr noundef %3) #17
  %15 = select i1 %14, ptr %3, ptr %13
  br label %16

16:                                               ; preds = %12, %10, %8
  %17 = phi ptr [ %2, %8 ], [ %1, %10 ], [ %15, %12 ]
  call void @_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_(ptr noundef %0, ptr noundef %17) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %3, ptr %5, align 8
  br label %6

6:                                                ; preds = %4, %20
  %7 = phi ptr [ %1, %4 ], [ %15, %20 ]
  %8 = phi ptr [ %0, %4 ], [ %12, %20 ]
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %8, %6 ], [ %12, %9 ]
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10, ptr noundef %2) #17
  %12 = getelementptr inbounds ptr, ptr %10, i64 1
  br i1 %11, label %9, label %13, !llvm.loop !91

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %7, %9 ]
  %15 = getelementptr inbounds ptr, ptr %14, i64 -1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull %15) #17
  br i1 %16, label %13, label %17, !llvm.loop !92

17:                                               ; preds = %13
  %18 = icmp ult ptr %10, %15
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  ret ptr %10

20:                                               ; preds = %17
  call void @_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_(ptr noundef %10, ptr noundef nonnull %15) #17
  br label %6, !llvm.loop !93
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat {
  tail call void @_ZSt4swapIPN9RTBuilder6ObjectEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIPN9RTBuilder6ObjectEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %4, ptr %0, align 8, !tbaa !34
  store ptr %3, ptr %1, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = icmp eq ptr %6, %1
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %3, %20
  %10 = phi ptr [ %21, %20 ], [ %6, %3 ]
  %11 = phi ptr [ %10, %20 ], [ %0, %3 ]
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIPS4_SB_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %10, ptr noundef %0) #17
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %10, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %11, i64 2
  %16 = call noundef ptr @_ZSt13move_backwardIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %15) #17
  store ptr %14, ptr %0, align 8, !tbaa !34
  br label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 8, !tbaa.struct !83
  %19 = call ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISA_EE(ptr %18) #17
  call void @_ZSt25__unguarded_linear_insertIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_(ptr noundef nonnull %10, ptr %19) #17
  br label %20

20:                                               ; preds = %13, %17
  %21 = getelementptr inbounds ptr, ptr %10, i64 1
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %9, !llvm.loop !94

23:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %6, %3
  ret void

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = tail call ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISA_EE(ptr %2) #17
  tail call void @_ZSt25__unguarded_linear_insertIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_(ptr noundef %7, ptr %8) #17
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %5, label %6, !llvm.loop !95
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS2_S8_EEEEvT_T0_(ptr noundef %0, ptr %1) local_unnamed_addr #0 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %5, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %0, i64 -1
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIS4_PS4_EEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %6) #17
  br i1 %7, label %8, label %14

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %2 ]
  %10 = phi ptr [ %9, %8 ], [ %0, %2 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  store ptr %11, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %9, i64 -1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIS4_PS4_EEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %12) #17
  br i1 %13, label %8, label %14, !llvm.loop !96

14:                                               ; preds = %8, %2
  %15 = phi ptr [ %0, %2 ], [ %9, %8 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  store ptr %16, ptr %15, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISA_EE(ptr %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEC2EONS0_15_Iter_comp_iterIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !34
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN9RTBuilder6ObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %0) local_unnamed_addr #10 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN9RTBuilder6ObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #10 comdat {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %0) local_unnamed_addr #10 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN9RTBuilder6ObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN9RTBuilder6ObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds ptr, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEclIS4_PS4_EEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !97
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEC2EONS0_15_Iter_comp_iterIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %3, ptr %0, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEC2ES8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__stable_partitionIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::_Temporary_buffer", align 8
  %5 = tail call noundef ptr @_ZSt13__find_if_notIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) #17
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %8 = tail call noundef i64 @_ZSt8distanceIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %5, ptr noundef %1) #17
  call void @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_EC2ES3_l(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, i64 noundef %8) #17
  %9 = call noundef i64 @_ZNKSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E14requested_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %10 = call noundef ptr @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %11 = call noundef i64 @_ZNKSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %12 = invoke noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %5, ptr noundef %1, ptr %2, i64 noundef %9, ptr noundef %10, i64 noundef %11) #17
          to label %13 unwind label %14

13:                                               ; preds = %7
  call void @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  br label %16

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  resume { ptr, i32 } %15

16:                                               ; preds = %3, %13
  %17 = phi ptr [ %12, %13 ], [ %1, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops11__pred_iterIPFbPN9RTBuilder6ObjectEEEENS0_10_Iter_predIT_EES8_(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  call void @_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__find_if_notIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !34
  %5 = tail call ptr @_ZN9__gnu_cxx5__ops8__negateIPFbPN9RTBuilder6ObjectEEEENS0_12_Iter_negateIT_EENS0_10_Iter_predIS8_EE(ptr %2) #17
  call void @_ZSt19__iterator_categoryIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %6 = call noundef ptr @_ZSt9__find_ifIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops12_Iter_negateIPFbS2_EEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %5) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E15difference_typeES5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !34
  call void @_ZSt19__iterator_categoryIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_EC2ES3_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  store i64 %2, ptr %0, align 8, !tbaa !99
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = tail call { ptr, i64 } @_ZSt20get_temporary_bufferIPN9RTBuilder6ObjectEESt4pairIPT_lEl(i64 noundef %2) #19
  %7 = extractvalue { ptr, i64 } %6, 0
  %8 = extractvalue { ptr, i64 } %6, 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %7, i64 %8
  invoke void @_ZSt29__uninitialized_construct_bufIPPN9RTBuilder6ObjectES3_EvT_S4_T0_(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef %1) #17
          to label %12 unwind label %13

12:                                               ; preds = %10
  store ptr %7, ptr %5, align 8, !tbaa !102
  store i64 %8, ptr %4, align 8, !tbaa !103
  br label %20

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #18
  tail call void @_ZNSt8__detail25__return_temporary_bufferIPN9RTBuilder6ObjectEEEvPT_m(ptr noundef nonnull %7, i64 noundef %8) #17
  invoke void @__cxa_rethrow() #20
          to label %24 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

19:                                               ; preds = %17
  resume { ptr, i32 } %18

20:                                               ; preds = %12, %3
  ret void

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #21
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %2, ptr %7, align 8
  %10 = icmp eq i64 %3, 1
  br i1 %10, label %52, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i64 %3, %5
  br i1 %12, label %37, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %14, ptr %4, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %4, i64 1
  %16 = getelementptr inbounds ptr, ptr %0, i64 1
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %33, label %18

18:                                               ; preds = %13, %28
  %19 = phi ptr [ %31, %28 ], [ %16, %13 ]
  %20 = phi ptr [ %30, %28 ], [ %0, %13 ]
  %21 = phi ptr [ %29, %28 ], [ %15, %13 ]
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %19) #17
  %23 = load ptr, ptr %19, align 8, !tbaa !34
  br i1 %22, label %24, label %26

24:                                               ; preds = %18
  store ptr %23, ptr %20, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %20, i64 1
  br label %28

26:                                               ; preds = %18
  store ptr %23, ptr %21, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %21, i64 1
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi ptr [ %21, %24 ], [ %27, %26 ]
  %30 = phi ptr [ %25, %24 ], [ %20, %26 ]
  %31 = getelementptr inbounds ptr, ptr %19, i64 1
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %18, !llvm.loop !104

33:                                               ; preds = %28, %13
  %34 = phi ptr [ %15, %13 ], [ %29, %28 ]
  %35 = phi ptr [ %0, %13 ], [ %30, %28 ]
  %36 = call noundef ptr @_ZSt4moveIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef nonnull %4, ptr noundef %34, ptr noundef %35) #17
  br label %52

37:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %0, ptr %8, align 8, !tbaa !34
  %38 = sdiv i64 %3, 2
  call void @_ZSt7advanceIPPN9RTBuilder6ObjectElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %38) #17
  %39 = load ptr, ptr %8, align 8, !tbaa !34
  %40 = call noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %0, ptr noundef %39, ptr %2, i64 noundef %38, ptr noundef %4, i64 noundef %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %41 = sub nsw i64 %3, %38
  store i64 %41, ptr %9, align 8, !tbaa !105
  %42 = load ptr, ptr %8, align 8, !tbaa !34
  %43 = call noundef ptr @_ZSt15__find_if_not_nIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_RT1_T0_(ptr noundef %42, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr %2) #17
  %44 = load i64, ptr %9, align 8, !tbaa !105
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call noundef ptr @_ZSt27__stable_partition_adaptiveIPPN9RTBuilder6ObjectES3_N9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_SA_T1_T2_T0_SC_(ptr noundef %43, ptr noundef %1, ptr %2, i64 noundef %44, ptr noundef %4, i64 noundef %5) #17
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi ptr [ %47, %46 ], [ %43, %37 ]
  %50 = load ptr, ptr %8, align 8, !tbaa !34
  %51 = call noundef ptr @_ZNSt3_V26rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_(ptr noundef %40, ptr noundef %50, ptr noundef %49) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %52

52:                                               ; preds = %6, %48, %33
  %53 = phi ptr [ %35, %33 ], [ %51, %48 ], [ %0, %6 ]
  ret ptr %53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E14requested_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
  %2 = load i64, ptr %0, align 8, !tbaa !99
  ret i64 %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !103
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !103
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  invoke void @_ZSt8_DestroyIPPN9RTBuilder6ObjectEEvT_S4_(ptr noundef %3, ptr noundef %6) #17
          to label %7 unwind label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !102
  %9 = load i64, ptr %4, align 8, !tbaa !103
  tail call void @_ZNSt8__detail25__return_temporary_bufferIPN9RTBuilder6ObjectEEEvPT_m(ptr noundef %8, i64 noundef %9) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops12_Iter_negateIPFbS2_EEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_negate", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #17
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #17
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #17
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #17
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !106

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %5, %28
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i64 [ %29, %27 ], [ %7, %3 ]
  %32 = phi ptr [ %24, %27 ], [ %0, %3 ]
  %33 = ashr exact i64 %31, 3
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %43
  ]

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #17
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #17
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #17
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops8__negateIPFbPN9RTBuilder6ObjectEEEENS0_12_Iter_negateIT_EENS0_10_Iter_predIS8_EE(ptr %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_negate", align 8
  call void @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 comdat {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !107
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call noundef zeroext i1 %3(ptr noundef %4) #17
  %6 = xor i1 %5, true
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZSt20get_temporary_bufferIPN9RTBuilder6ObjectEESt4pairIPT_lEl(i64 noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::pair", align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = icmp sgt i64 %0, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = tail call i64 @llvm.smin.i64(i64 %0, i64 1152921504606846975)
  br label %14

10:                                               ; preds = %19
  %11 = add nsw i64 %15, 1
  %12 = sdiv i64 %11, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %13 = icmp sgt i64 %15, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8, %10
  %15 = phi i64 [ %12, %10 ], [ %9, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %16 = shl i64 %15, 3
  %17 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %16, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #22
  store ptr %17, ptr %4, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = icmp eq i64 %15, 1
  br i1 %20, label %21, label %10

21:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %23

22:                                               ; preds = %14
  store i64 %15, ptr %3, align 8, !tbaa !105
  call void @_ZNSt4pairIPPN9RTBuilder6ObjectElEC2IRS3_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %24, !llvm.loop !109

23:                                               ; preds = %10, %21, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !48
  call void @_ZNSt4pairIPPN9RTBuilder6ObjectElEC2IS3_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %24

24:                                               ; preds = %22, %23
  %25 = load ptr, ptr %2, align 8
  %26 = insertvalue { ptr, i64 } poison, ptr %25, 0
  %27 = getelementptr inbounds { ptr, i64 }, ptr %2, i64 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = insertvalue { ptr, i64 } %26, i64 %28, 1
  ret { ptr, i64 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt29__uninitialized_construct_bufIPPN9RTBuilder6ObjectES3_EvT_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  tail call void @_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIPPN9RTBuilder6ObjectES5_EEvT_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8__detail25__return_temporary_bufferIPN9RTBuilder6ObjectEEEvPT_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 comdat {
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPPN9RTBuilder6ObjectElEC2IRS3_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #10 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %4, ptr %0, align 8, !tbaa !110
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %2, align 8, !tbaa !105
  store i64 %6, ptr %5, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPPN9RTBuilder6ObjectElEC2IS3_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #10 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %4, ptr %0, align 8, !tbaa !110
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %2, align 4, !tbaa !48
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %5, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIPPN9RTBuilder6ObjectES5_EEvT_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 {
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !113
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call noundef zeroext i1 %3(ptr noundef %4) #17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4moveIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7advanceIPPN9RTBuilder6ObjectElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  tail call void @_ZSt19__iterator_categoryIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  tail call void @_ZSt9__advanceIPPN9RTBuilder6ObjectElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt15__find_if_not_nIPPN9RTBuilder6ObjectEN9__gnu_cxx5__ops10_Iter_predIPFbS2_EEElET_SA_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8
  store ptr %2, ptr %4, align 8
  %5 = load i64, ptr %1, align 8, !tbaa !105
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %13, %10 ], [ %0, %3 ]
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, ptr %1, align 8, !tbaa !105
  %12 = add nsw i64 %11, -1
  store i64 %12, ptr %1, align 8, !tbaa !105
  %13 = getelementptr inbounds ptr, ptr %8, i64 1
  %14 = icmp eq i64 %12, 0
  br i1 %14, label %15, label %7, !llvm.loop !115

15:                                               ; preds = %10, %7, %3
  %16 = phi ptr [ %0, %3 ], [ %8, %7 ], [ %13, %10 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V26rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !34
  call void @_ZSt19__iterator_categoryIPPN9RTBuilder6ObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %5 = call noundef ptr @_ZNSt3_V28__rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !34
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN9RTBuilder6ObjectEET_S4_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN9RTBuilder6ObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPPN9RTBuilder6ObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN9RTBuilder6ObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN9RTBuilder6ObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPPN9RTBuilder6ObjectElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #10 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPPN9RTBuilder6ObjectEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %102, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, %1
  br i1 %8, label %102, label %9

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  store i64 %13, ptr %4, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %14, %11
  %16 = ashr exact i64 %15, 3
  store i64 %16, ptr %5, align 8, !tbaa !105
  %17 = sub nsw i64 %13, %16
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = tail call noundef ptr @_ZSt11swap_rangesIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %1) #17
  br label %100

21:                                               ; preds = %9
  %22 = sub i64 %10, %14
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  br label %24

24:                                               ; preds = %96, %21
  %25 = phi i64 [ %13, %21 ], [ %97, %96 ]
  %26 = phi i64 [ %16, %21 ], [ %98, %96 ]
  %27 = phi ptr [ %0, %21 ], [ %99, %96 ]
  %28 = sub nsw i64 %25, %26
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = icmp eq i64 %26, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = load ptr, ptr %27, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %27, i64 1
  %35 = getelementptr inbounds ptr, ptr %27, i64 %25
  %36 = call noundef ptr @_ZSt4moveIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %27) #17
  %37 = load i64, ptr %4, align 8, !tbaa !105
  %38 = getelementptr inbounds ptr, ptr %27, i64 %37
  %39 = getelementptr inbounds ptr, ptr %38, i64 -1
  store ptr %33, ptr %39, align 8, !tbaa !34
  br label %100

40:                                               ; preds = %30
  %41 = icmp sgt i64 %25, %26
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = getelementptr inbounds ptr, ptr %27, i64 %26
  br label %50

44:                                               ; preds = %50, %40
  %45 = phi ptr [ %27, %40 ], [ %54, %50 ]
  %46 = phi i64 [ %25, %40 ], [ %57, %50 ]
  %47 = phi i64 [ %26, %40 ], [ %58, %50 ]
  %48 = srem i64 %46, %47
  store i64 %48, ptr %4, align 8, !tbaa !105
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %100, label %61

50:                                               ; preds = %42, %50
  %51 = phi i64 [ %56, %50 ], [ 0, %42 ]
  %52 = phi ptr [ %55, %50 ], [ %43, %42 ]
  %53 = phi ptr [ %54, %50 ], [ %27, %42 ]
  call void @_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_(ptr noundef %53, ptr noundef %52) #17
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = getelementptr inbounds ptr, ptr %52, i64 1
  %56 = add nuw nsw i64 %51, 1
  %57 = load i64, ptr %4, align 8, !tbaa !105
  %58 = load i64, ptr %5, align 8, !tbaa !105
  %59 = sub nsw i64 %57, %58
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %50, label %44, !llvm.loop !116

61:                                               ; preds = %44
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %62 = load i64, ptr %4, align 8, !tbaa !105
  %63 = load i64, ptr %5, align 8, !tbaa !105
  %64 = sub nsw i64 %62, %63
  store i64 %64, ptr %5, align 8, !tbaa !105
  br label %96

65:                                               ; preds = %24
  store i64 %28, ptr %5, align 8, !tbaa !105
  %66 = icmp eq i64 %28, 1
  %67 = getelementptr inbounds ptr, ptr %27, i64 %25
  br i1 %66, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds ptr, ptr %67, i64 -1
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = call noundef ptr @_ZSt13move_backwardIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef %27, ptr noundef nonnull %69, ptr noundef %67) #17
  store ptr %70, ptr %27, align 8, !tbaa !34
  br label %100

72:                                               ; preds = %65
  %73 = sub i64 0, %28
  %74 = getelementptr inbounds ptr, ptr %67, i64 %73
  %75 = icmp sgt i64 %26, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %82, %72
  %77 = phi ptr [ %74, %72 ], [ %86, %82 ]
  %78 = phi i64 [ %25, %72 ], [ %89, %82 ]
  %79 = phi i64 [ %28, %72 ], [ %90, %82 ]
  %80 = srem i64 %78, %79
  store i64 %80, ptr %4, align 8, !tbaa !105
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %100, label %93

82:                                               ; preds = %72, %82
  %83 = phi i64 [ %88, %82 ], [ 0, %72 ]
  %84 = phi ptr [ %87, %82 ], [ %67, %72 ]
  %85 = phi ptr [ %86, %82 ], [ %74, %72 ]
  %86 = getelementptr inbounds ptr, ptr %85, i64 -1
  %87 = getelementptr inbounds ptr, ptr %84, i64 -1
  call void @_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_(ptr noundef nonnull %86, ptr noundef nonnull %87) #17
  %88 = add nuw nsw i64 %83, 1
  %89 = load i64, ptr %4, align 8, !tbaa !105
  %90 = load i64, ptr %5, align 8, !tbaa !105
  %91 = sub nsw i64 %89, %90
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %82, label %76, !llvm.loop !117

93:                                               ; preds = %76
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %94 = load i64, ptr %5, align 8, !tbaa !105
  %95 = load i64, ptr %4, align 8, !tbaa !105
  br label %96

96:                                               ; preds = %93, %61
  %97 = phi i64 [ %62, %61 ], [ %95, %93 ]
  %98 = phi i64 [ %64, %61 ], [ %94, %93 ]
  %99 = phi ptr [ %45, %61 ], [ %77, %93 ]
  br label %24, !llvm.loop !118

100:                                              ; preds = %76, %44, %32, %68, %19
  %101 = phi ptr [ %1, %19 ], [ %23, %32 ], [ %23, %68 ], [ %23, %44 ], [ %23, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %102

102:                                              ; preds = %7, %3, %100
  %103 = phi ptr [ %101, %100 ], [ %2, %3 ], [ %0, %7 ]
  ret ptr %103
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11swap_rangesIPPN9RTBuilder6ObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %9, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %8, %5 ], [ %0, %3 ]
  tail call void @_ZSt9iter_swapIPPN9RTBuilder6ObjectES3_EvT_T0_(ptr noundef %7, ptr noundef %6) #17
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp eq ptr %8, %1
  br i1 %10, label %11, label %5, !llvm.loop !119

11:                                               ; preds = %5, %3
  %12 = phi ptr [ %2, %3 ], [ %9, %5 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat {
  %3 = load i64, ptr %0, align 8, !tbaa !105
  %4 = load i64, ptr %1, align 8, !tbaa !105
  store i64 %4, ptr %0, align 8, !tbaa !105
  store i64 %3, ptr %1, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPN9RTBuilder6ObjectEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN9RTBuilder6ObjectEEEvT_S6_(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN9RTBuilder6ObjectEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"_ZTS9RTBuilder", !40, i64 0, !36, i64 24, !36, i64 48, !41, i64 72, !36, i64 76, !36, i64 208}
!40 = !{!"_ZTSN9RTBuilderUt_E", !35, i64 0, !35, i64 8, !41, i64 16}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !35, i64 0}
!43 = !{!39, !41, i64 16}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"rayobject_rtbuild.cpp:_ZL12rtbuild_initP9RTBuilder"}
!47 = !{!39, !41, i64 72}
!48 = !{!41, !41, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !36, i64 0}
!51 = distinct !{!51, !45}
!52 = !{!53, !35, i64 0}
!53 = !{!"_ZTSN9RTBuilder6ObjectE", !35, i64 0, !50, i64 8, !36, i64 12, !41, i64 36}
!54 = !{!53, !50, i64 8}
!55 = distinct !{!55, !45}
!56 = !{!"rayobject_rtbuild.cpp:_ZL10copy_v3_v3PfPKf"}
!57 = distinct !{!57, !45}
!58 = !{!"rayobject_rtbuild.cpp:_ZL11object_sortIPN9RTBuilder6ObjectEEvPT_S4_i"}
!59 = distinct !{!59, !45}
!60 = !{!"rayobject_rtbuild.cpp:_ZL15rtbuild_calc_bbP9RTBuilder"}
!61 = distinct !{!61, !45}
!62 = !{!63, !50, i64 24}
!63 = !{!"_ZTS9SweepCost", !36, i64 0, !50, i64 24}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !45}
!66 = distinct !{!66, !45}
!67 = !{!53, !41, i64 36}
!68 = distinct !{!68, !45}
!69 = distinct !{!69, !45}
!70 = distinct !{!70, !45}
!71 = !{!"rayobject_rtbuild.cpp:_ZL6min_ffff"}
!72 = !{!"rayobject_rtbuild.cpp:_ZL6max_ffff"}
!73 = !{!"rayobject_rtbuild.cpp:_ZL13selected_nodePN9RTBuilder6ObjectE"}
!74 = distinct !{!74, !45}
!75 = distinct !{!75, !45}
!76 = !{!"rayobject_rtbuild.cpp:_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi0EEbRKT_S5_"}
!77 = !{!"rayobject_rtbuild.cpp:_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi1EEbRKT_S5_"}
!78 = !{!"rayobject_rtbuild.cpp:_ZL14obj_bb_compareIPN9RTBuilder6ObjectELi2EEbRKT_S5_"}
!79 = distinct !{!79, !45}
!80 = !{i64 0, i64 65}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45}
!83 = !{i64 0, i64 8, !34}
!84 = distinct !{!84, !45}
!85 = !{!86, !35, i64 0}
!86 = !{!"_ZTSN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEE", !35, i64 0}
!87 = distinct !{!87, !45}
!88 = !{!89, !35, i64 0}
!89 = !{!"_ZTSN9__gnu_cxx5__ops14_Iter_comp_valIPFbRKPN9RTBuilder6ObjectES6_EEE", !35, i64 0}
!90 = distinct !{!90, !45}
!91 = distinct !{!91, !45}
!92 = distinct !{!92, !45}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, !45}
!95 = distinct !{!95, !45}
!96 = distinct !{!96, !45}
!97 = !{!98, !35, i64 0}
!98 = !{!"_ZTSN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKPN9RTBuilder6ObjectES6_EEE", !35, i64 0}
!99 = !{!100, !101, i64 0}
!100 = !{!"_ZTSSt17_Temporary_bufferIPPN9RTBuilder6ObjectES2_E", !101, i64 0, !101, i64 8, !35, i64 16}
!101 = !{!"long", !36, i64 0}
!102 = !{!100, !35, i64 16}
!103 = !{!100, !101, i64 8}
!104 = distinct !{!104, !45}
!105 = !{!101, !101, i64 0}
!106 = distinct !{!106, !45}
!107 = !{!108, !35, i64 0}
!108 = !{!"_ZTSN9__gnu_cxx5__ops12_Iter_negateIPFbPN9RTBuilder6ObjectEEEE", !35, i64 0}
!109 = distinct !{!109, !45}
!110 = !{!111, !35, i64 0}
!111 = !{!"_ZTSSt4pairIPPN9RTBuilder6ObjectElE", !35, i64 0, !101, i64 8}
!112 = !{!111, !101, i64 8}
!113 = !{!114, !35, i64 0}
!114 = !{!"_ZTSN9__gnu_cxx5__ops10_Iter_predIPFbPN9RTBuilder6ObjectEEEE", !35, i64 0}
!115 = distinct !{!115, !45}
!116 = distinct !{!116, !45}
!117 = distinct !{!117, !45}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !45}
