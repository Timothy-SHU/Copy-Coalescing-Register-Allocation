; ModuleID = 'Playout.cpp'
source_filename = "Playout.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Playout = type { i8, float, %"class.boost::array" }
%"class.boost::array" = type { [2 x %"class.std::bitset"] }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [7 x i64] }
%"class.std::bitset<441>::reference" = type { ptr, i64 }
%class.Time = type { i32 }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.6", %"class.boost::array.7", [4 x i8] }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array.0", %"class.boost::array.0", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.0", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32 }>
%"class.boost::array.1" = type { [441 x i32] }
%"class.boost::array.2" = type { [442 x i16] }
%"class.boost::array.0" = type { [441 x i16] }
%"class.boost::array.3" = type { [4 x i32] }
%"class.boost::array.4" = type { [8 x i32] }
%"class.boost::array.5" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.6" = type { [24 x i32] }
%"class.boost::array.7" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%class.FastBoard = type <{ %"class.boost::array.0", %"class.boost::array.0", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.0", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32, [4 x i8] }>
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }

$_ZN5boost5arrayISt6bitsetILm441EELm2EEC2Ev = comdat any

$_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm = comdat any

$_ZNSt6bitsetILm441EE5resetEv = comdat any

$_ZNSt6bitsetILm441EEixEm = comdat any

$_ZNKSt6bitsetILm441EE9referencecvbEv = comdat any

$_ZNSt6bitsetILm441EE9referenceD2Ev = comdat any

$_ZNSt6bitsetILm441EE9referenceaSEb = comdat any

$_ZNSt6bitsetILm441EEC2Ev = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZNSt12_Base_bitsetILm7EEC2Ev = comdat any

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

$_ZN9FastBoardD2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Base_bitsetILm7EE11_M_do_resetEv = comdat any

$_ZNSt6bitsetILm441EE9referenceC2ERS0_m = comdat any

$_ZNSt12_Base_bitsetILm7EE10_M_getwordEm = comdat any

$_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm = comdat any

$_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm = comdat any

$_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm = comdat any

@.str = private unnamed_addr constant [37 x i8] c"%d games in %5.2f seconds -> %d g/s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Avg Len: %5.2f Score: %f\0A\00", align 1

@_ZN7PlayoutC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7PlayoutC2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7PlayoutC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 !prof !128 {
  %2 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 2
  tail call void @_ZN5boost5arrayISt6bitsetILm441EELm2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  store i8 0, ptr %0, align 8, !tbaa !129
  %3 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef 0) #14
  %4 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6bitsetILm441EE5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  %5 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef 1) #14
  %6 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6bitsetILm441EE5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost5arrayISt6bitsetILm441EELm2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZNSt6bitsetILm441EEC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #13
  %5 = add nuw nsw i64 %3, 56
  %6 = icmp eq i64 %5, 112
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !136 {
  %3 = getelementptr inbounds [2 x %"class.std::bitset"], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt6bitsetILm441EE5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !137 {
  tail call void @_ZNSt12_Base_bitsetILm7EE11_M_do_resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN7Playout9get_scoreEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !138 {
  %2 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !139
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7Playout15set_final_scoreEf(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(120) %0, float noundef %1) local_unnamed_addr #2 align 2 !prof !140 {
  store i8 1, ptr %0, align 8, !tbaa !129
  %3 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 1
  store float %1, ptr %3, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !141 {
  %4 = alloca %"class.std::bitset<441>::reference", align 8
  %5 = alloca %"class.std::bitset<441>::reference", align 8
  %6 = alloca %"class.std::bitset", align 8
  %7 = alloca %"class.std::bitset<441>::reference", align 8
  %8 = alloca %"class.std::bitset<441>::reference", align 8
  %9 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
  %10 = mul nsw i32 %9, %9
  %11 = udiv i32 %10, 3
  %12 = shl nuw nsw i32 %10, 1
  %13 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %44, %3
  %15 = phi i32 [ 0, %3 ], [ %33, %44 ]
  %16 = call noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  %17 = icmp ult i32 %15, 30
  %18 = icmp ne i32 %16, -1
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %32, !prof !142

20:                                               ; preds = %14
  %21 = call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  %22 = icmp ne i32 %21, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %23 = zext i1 %22 to i64
  %24 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %13, i64 noundef %23) #14
  %25 = sext i32 %16 to i64
  call void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind nonnull writable sret(%"class.std::bitset<441>::reference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %24, i64 noundef %25) #14
  %26 = call noundef zeroext i1 @_ZNKSt6bitsetILm441EE9referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br i1 %26, label %32, label %27, !prof !143

27:                                               ; preds = %20
  %28 = xor i1 %22, true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %29 = zext i1 %28 to i64
  %30 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %13, i64 noundef %29) #14
  call void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind nonnull writable sret(%"class.std::bitset<441>::reference") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %30, i64 noundef %25) #14
  %31 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6bitsetILm441EE9referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true) #13
  call void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %32

32:                                               ; preds = %20, %27, %14
  %33 = add nuw nsw i32 %15, 1
  %34 = call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %45, !prof !144

36:                                               ; preds = %32
  %37 = call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  %38 = icmp slt i32 %37, %12
  br i1 %38, label %39, label %45, !prof !145

39:                                               ; preds = %36
  br i1 %2, label %40, label %44, !prof !146

40:                                               ; preds = %39
  %41 = call noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  %42 = call i32 @llvm.abs.i32(i32 %41, i1 true)
  %43 = icmp ult i32 %42, %11
  br i1 %43, label %44, label %45, !prof !147

44:                                               ; preds = %40, %39
  br label %14, !llvm.loop !148

45:                                               ; preds = %36, %32, %40
  %46 = call noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  call void @_ZNSt6bitsetILm441EEC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #13
  %47 = icmp sgt i32 %9, 0
  br i1 %47, label %48, label %50, !prof !150

48:                                               ; preds = %45, %55
  %49 = phi i32 [ %56, %55 ], [ 0, %45 ]
  br label %58

50:                                               ; preds = %55, %45
  %51 = call noundef ptr @_ZN12MCOwnerTable7get_MCOEv() #14
  call void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef nonnull align 8 dereferenceable(56) %6) #14
  store i8 1, ptr %0, align 8, !tbaa !129
  %52 = sitofp i32 %10 to float
  %53 = fdiv float %46, %52
  %54 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 1
  store float %53, ptr %54, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  ret void

55:                                               ; preds = %74
  %56 = add nuw nsw i32 %49, 1
  %57 = icmp eq i32 %56, %9
  br i1 %57, label %50, label %48, !prof !151, !llvm.loop !152

58:                                               ; preds = %48, %74
  %59 = phi i32 [ %75, %74 ], [ 0, %48 ]
  %60 = call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %49, i32 noundef %59) #14
  %61 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %60) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66, !prof !153

63:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %64 = sext i32 %60 to i64
  call void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind nonnull writable sret(%"class.std::bitset<441>::reference") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %64) #14
  %65 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6bitsetILm441EE9referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true) #13
  call void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %74

66:                                               ; preds = %58
  %67 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %60) #14
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %74, !prof !154

69:                                               ; preds = %66
  %70 = call noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef 0, i32 noundef %60) #14
  br i1 %70, label %71, label %74, !prof !155

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %72 = sext i32 %60 to i64
  call void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind nonnull writable sret(%"class.std::bitset<441>::reference") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %72) #14
  %73 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6bitsetILm441EE9referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true) #13
  call void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %74

74:                                               ; preds = %66, %71, %69, %63
  %75 = add nuw nsw i32 %59, 1
  %76 = icmp eq i32 %75, %9
  br i1 %76, label %55, label %58, !prof !156, !llvm.loop !157
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind noalias writable sret(%"class.std::bitset<441>::reference") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !158 {
  tail call void @_ZNSt6bitsetILm441EE9referenceC2ERS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6bitsetILm441EE9referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !159 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = load i64, ptr %2, align 8, !tbaa !164
  %4 = getelementptr inbounds %"class.std::bitset<441>::reference", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !165
  %6 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm(i64 noundef %5) #13
  %7 = and i64 %6, %3
  %8 = icmp ne i64 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !158 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6bitsetILm441EE9referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !166 {
  %3 = getelementptr inbounds %"class.std::bitset<441>::reference", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !165
  %5 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm(i64 noundef %4) #13
  br i1 %1, label %6, label %10, !prof !167

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !160
  %8 = load i64, ptr %7, align 8, !tbaa !164
  %9 = or i64 %8, %5
  store i64 %9, ptr %7, align 8, !tbaa !164
  br label %15

10:                                               ; preds = %2
  %11 = xor i64 %5, -1
  %12 = load ptr, ptr %0, align 8, !tbaa !160
  %13 = load i64, ptr %12, align 8, !tbaa !164
  %14 = and i64 %13, %11
  store i64 %14, ptr %12, align 8, !tbaa !164
  br label %15

15:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: optsize
declare noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EEC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 !prof !168 {
  tail call void @_ZNSt12_Base_bitsetILm7EEC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !169 {
  %4 = alloca %"class.std::bitset<441>::reference", align 8
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %12, label %6, !prof !170

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %7 = getelementptr inbounds %class.Playout, ptr %0, i64 0, i32 2
  %8 = sext i32 %1 to i64
  %9 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %7, i64 noundef %8) #14
  %10 = sext i32 %2 to i64
  call void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind nonnull writable sret(%"class.std::bitset<441>::reference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %10) #14
  %11 = call noundef zeroext i1 @_ZNKSt6bitsetILm441EE9referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i1 [ %11, %6 ], [ false, %3 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7Playout20do_playout_benchmarkER9GameState(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #3 align 2 !prof !171 {
  %2 = alloca %class.Time, align 4
  %3 = alloca %class.Time, align 4
  %4 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #14
  %5 = mul nsw i32 %4, %4
  %6 = udiv i32 %5, 3
  %7 = shl nuw nsw i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  br label %8

8:                                                ; preds = %1, %23
  %9 = phi i32 [ 0, %1 ], [ %29, %23 ]
  %10 = phi float [ 0.000000e+00, %1 ], [ %26, %23 ]
  %11 = phi float [ 0.000000e+00, %1 ], [ %28, %23 ]
  br label %12

12:                                               ; preds = %8, %19
  %13 = call noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %14 = call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %18 = icmp slt i32 %17, %7
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %12, label %23, !llvm.loop !172

23:                                               ; preds = %16, %12, %19
  %24 = call noundef i32 @_ZN9FastState11get_movenumEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %25 = sitofp i32 %24 to float
  %26 = fadd float %10, %25
  %27 = call noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %28 = fadd float %11, %27
  call void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #14
  %29 = add nuw nsw i32 %9, 1
  %30 = icmp eq i32 %29, 100000
  br i1 %30, label %31, label %8, !llvm.loop !173

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %32 = load i32, ptr %2, align 4, !tbaa.struct !174
  %33 = load i32, ptr %3, align 4, !tbaa.struct !174
  %34 = call noundef i32 @_ZN4Time8timediffES_S_(i32 %32, i32 %33) #14
  %35 = sitofp i32 %34 to float
  %36 = fpext float %35 to double
  %37 = fdiv double %36, 1.000000e+02
  %38 = load i32, ptr %2, align 4, !tbaa.struct !174
  %39 = load i32, ptr %3, align 4, !tbaa.struct !174
  %40 = call noundef i32 @_ZN4Time8timediffES_S_(i32 %38, i32 %39) #14
  %41 = sitofp i32 %40 to float
  %42 = fpext float %41 to double
  %43 = fdiv double %42, 1.000000e+02
  %44 = fdiv double 1.000000e+05, %43
  %45 = fptosi double %44 to i32
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i32 noundef 100000, double noundef %37, i32 noundef %45) #14
  %46 = fdiv float %26, 1.000000e+05
  %47 = fpext float %46 to double
  %48 = fdiv float %28, 1.000000e+05
  %49 = fpext float %48 to double
  call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.1, double noundef %47, double noundef %49) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN4TimeC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN4Time8timediffES_S_(i32, i32) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @_ZN7Playout8mc_ownerER9FastStatei(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %3 = alloca %class.FastState, align 8
  %4 = alloca %class.Playout, align 8
  %5 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #14
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %17, label %9, !prof !178

7:                                                ; preds = %20
  %8 = sitofp i32 %24 to float
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi float [ 0.000000e+00, %2 ], [ %8, %7 ]
  %11 = sitofp i32 %1 to float
  %12 = fdiv float %10, %11
  %13 = call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %14 = icmp eq i32 %13, 0
  %15 = fsub float 1.000000e+00, %12
  %16 = select i1 %14, float %12, float %15, !prof !179
  ret float %16

17:                                               ; preds = %2, %20
  %18 = phi i32 [ %24, %20 ], [ 0, %2 ]
  %19 = phi i32 [ %25, %20 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %3) #15
  call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %3, ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #15
  call void @_ZN7PlayoutC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #14
  invoke void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(8388) %3, i1 noundef zeroext false) #14
          to label %20 unwind label %27

20:                                               ; preds = %17
  %21 = call noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %4) #14
  %22 = fcmp ogt float %21, 0.000000e+00
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %18, %23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %3) #13
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #15
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %7, label %17, !prof !180, !llvm.loop !181

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %3) #13
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #15
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #14
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Base_bitsetILm7EEC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 !prof !168 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !182
  store i32 %7, ptr %5, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !194 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !195
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !196
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !197 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = load ptr, ptr %0, align 8, !tbaa !195
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 !prof !194 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !198 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !200 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !194 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !201 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !201 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !202 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !194 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat align 2 !prof !205 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat align 2 !prof !205 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat align 2 !prof !206 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !195
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !196
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !207 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !208 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !209

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !210 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !210 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !211

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #18
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !212 {
  ret i64 2305843009213693951
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !194 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !194 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !194 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #14
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #14
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !194 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !213
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #0 comdat !prof !214 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !194 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !201 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #0 comdat !prof !214 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !215 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !201 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !201 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !216

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !217 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !214 {
  %3 = load ptr, ptr %1, align 8, !tbaa !213
  store ptr %3, ptr %0, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !220 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !221

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !222 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !222 {
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat !prof !223 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !223 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !223 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Base_bitsetILm7EE11_M_do_resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !137 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EE9referenceC2ERS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !158 {
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) #13
  store ptr %4, ptr %0, align 8, !tbaa !160
  %5 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm(i64 noundef %2) #13
  %6 = getelementptr inbounds %"class.std::bitset<441>::reference", ptr %0, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !158 {
  %3 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm(i64 noundef %1) #13
  %4 = getelementptr inbounds [7 x i64], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm(i64 noundef %0) local_unnamed_addr #0 comdat align 2 !prof !224 {
  %2 = and i64 %0, 63
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm(i64 noundef %0) local_unnamed_addr #0 comdat align 2 !prof !158 {
  %2 = lshr i64 %0, 6
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm(i64 noundef %0) local_unnamed_addr #0 comdat align 2 !prof !158 {
  %2 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm(i64 noundef %0) #13
  %3 = shl nuw i64 1, %2
  ret i64 %3
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn optsize }
attributes #18 = { builtin optsize allocsize(0) }
attributes #19 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!127}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!35 = !{ptr @_ZN7PlayoutC2Ev, ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEC2Ev, i64 38536652}
!36 = !{ptr @_ZN7PlayoutC2Ev, ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm, i64 77073304}
!37 = !{ptr @_ZN7PlayoutC2Ev, ptr @_ZNSt6bitsetILm441EE5resetEv, i64 77073304}
!38 = !{ptr @_ZNSt6bitsetILm441EE5resetEv, ptr @_ZNSt12_Base_bitsetILm7EE11_M_do_resetEv, i64 77073304}
!39 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard13get_boardsizeEv, i64 6098317}
!40 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState16play_random_moveEv, i64 446756841}
!41 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState11get_to_moveEv, i64 96107403}
!42 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm, i64 190538730}
!43 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZNSt6bitsetILm441EEixEm, i64 768939800}
!44 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZNKSt6bitsetILm441EE9referencecvbEv, i64 96107403}
!45 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZNSt6bitsetILm441EE9referenceD2Ev, i64 768939800}
!46 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZNSt6bitsetILm441EE9referenceaSEb, i64 672832397}
!47 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState10get_passesEv, i64 446756841}
!48 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState11get_movenumEv, i64 443921480}
!49 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState17estimate_mc_scoreEv, i64 437704802}
!50 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastState18calculate_mc_scoreEv, i64 6098317}
!51 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZNSt6bitsetILm441EEC2Ev, i64 6098317}
!52 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN12MCOwnerTable7get_MCOEv, i64 6098317}
!53 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, i64 6098317}
!54 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard10get_vertexEii, i64 1183882377}
!55 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard10get_squareEi, i64 1870501538}
!56 = !{ptr @_ZN7Playout3runER9FastStateb, ptr @_ZN9FastBoard6is_eyeEii, i64 204385542}
!57 = !{ptr @_ZNSt6bitsetILm441EEixEm, ptr @_ZNSt6bitsetILm441EE9referenceC2ERS0_m, i64 5564211925}
!58 = !{ptr @_ZNKSt6bitsetILm441EE9referencecvbEv, ptr @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm, i64 4812897662}
!59 = !{ptr @_ZNSt6bitsetILm441EE9referenceaSEb, ptr @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm, i64 751314263}
!60 = !{ptr @_ZNSt6bitsetILm441EEC2Ev, ptr @_ZNSt12_Base_bitsetILm7EEC2Ev, i64 83171621}
!61 = !{ptr @_ZN7Playout11passthroughEii, ptr @_ZN5boost5arrayISt6bitsetILm441EELm2EEixEm, i64 1947557697}
!62 = !{ptr @_ZN7Playout11passthroughEii, ptr @_ZNSt6bitsetILm441EEixEm, i64 1947557697}
!63 = !{ptr @_ZN7Playout11passthroughEii, ptr @_ZNKSt6bitsetILm441EE9referencecvbEv, i64 1947557697}
!64 = !{ptr @_ZN7Playout11passthroughEii, ptr @_ZNSt6bitsetILm441EE9referenceD2Ev, i64 1947557697}
!65 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN9FastBoard13get_boardsizeEv, i64 970}
!66 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN9FastState11get_to_moveEv, i64 970}
!67 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN9FastStateC2ERKS_, i64 62013}
!68 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN7PlayoutC2Ev, i64 62013}
!69 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN7Playout3runER9FastStateb, i64 62013}
!70 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN7Playout9get_scoreEv, i64 62013}
!71 = !{ptr @_ZN7Playout8mc_ownerER9FastStatei, ptr @_ZN9FastStateD2Ev, i64 62013}
!72 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!73 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!74 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!75 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!76 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!77 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!78 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!79 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!80 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!81 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!82 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!83 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!84 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!85 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!86 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!87 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!88 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!89 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!90 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!91 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!92 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!93 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!94 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!95 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!96 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!97 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!98 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!99 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!100 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!101 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!102 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!103 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!104 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!105 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!106 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!107 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!108 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!109 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!110 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!111 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!112 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!113 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!114 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!115 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!116 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!117 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!118 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!119 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!120 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!121 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!122 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!123 = !{ptr @_ZNSt6bitsetILm441EE9referenceC2ERS0_m, ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm, i64 5564211925}
!124 = !{ptr @_ZNSt6bitsetILm441EE9referenceC2ERS0_m, ptr @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm, i64 5564211925}
!125 = !{ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm, ptr @_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm, i64 5564211925}
!126 = !{ptr @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm, ptr @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm, i64 5564211925}
!127 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!128 = !{!"function_entry_count", i64 38536652}
!129 = !{!130, !131, i64 0}
!130 = !{!"_ZTS7Playout", !131, i64 0, !134, i64 4, !135, i64 8}
!131 = !{!"bool", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C++ TBAA"}
!134 = !{!"float", !132, i64 0}
!135 = !{!"_ZTSN5boost5arrayISt6bitsetILm441EELm2EEE", !132, i64 0}
!136 = !{!"function_entry_count", i64 2373526275}
!137 = !{!"function_entry_count", i64 77073304}
!138 = !{!"function_entry_count", i64 70942102}
!139 = !{!130, !134, i64 4}
!140 = !{!"function_entry_count", i64 31495}
!141 = !{!"function_entry_count", i64 6098317}
!142 = !{!"branch_weights", i32 934232700, i32 -886403948}
!143 = !{!"branch_weights", i32 3069062, i32 172913107}
!144 = !{!"branch_weights", i32 812864165, i32 5191828}
!145 = !{!"branch_weights", i32 812864128, i32 38}
!146 = !{!"branch_weights", i32 801480814, i32 11383315}
!147 = !{!"branch_weights", i32 811957675, i32 6098318}
!148 = distinct !{!148, !149}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"branch_weights", i32 6098317, i32 1}
!151 = !{!"branch_weights", i32 6098317, i32 73426497}
!152 = distinct !{!152, !149}
!153 = !{!"branch_weights", i32 497263292, i32 686619267}
!154 = !{!"branch_weights", i32 204385574, i32 482233694}
!155 = !{!"branch_weights", i32 81137867, i32 123247708}
!156 = !{!"branch_weights", i32 79524813, i32 1104357745}
!157 = distinct !{!157, !149}
!158 = !{!"function_entry_count", i64 5564211925}
!159 = !{!"function_entry_count", i64 4812897662}
!160 = !{!161, !162, i64 0}
!161 = !{!"_ZTSNSt6bitsetILm441EE9referenceE", !162, i64 0, !163, i64 8}
!162 = !{!"any pointer", !132, i64 0}
!163 = !{!"long", !132, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!161, !163, i64 8}
!166 = !{!"function_entry_count", i64 751314263}
!167 = !{!"branch_weights", i32 751314264, i32 1}
!168 = !{!"function_entry_count", i64 83171621}
!169 = !{!"function_entry_count", i64 1979964940}
!170 = !{!"branch_weights", i32 32407243, i32 1947557699}
!171 = !{!"function_entry_count", i64 0}
!172 = distinct !{!172, !149}
!173 = distinct !{!173, !149}
!174 = !{i64 0, i64 4, !175}
!175 = !{!176, !176, i64 0}
!176 = !{!"int", !132, i64 0}
!177 = !{!"function_entry_count", i64 970}
!178 = !{!"branch_weights", i32 970, i32 1}
!179 = !{!"branch_weights", i32 487, i32 485}
!180 = !{!"branch_weights", i32 970, i32 61111}
!181 = distinct !{!181, !149}
!182 = !{!183, !176, i64 8048}
!183 = !{!"_ZTS9FastBoard", !184, i64 0, !184, i64 882, !176, i64 1764, !176, i64 1768, !176, i64 1772, !185, i64 1776, !186, i64 3540, !186, i64 4424, !186, i64 5308, !186, i64 6192, !184, i64 7076, !187, i64 7960, !188, i64 7976, !189, i64 8008, !189, i64 8016, !190, i64 8024, !176, i64 8048}
!184 = !{!"_ZTSN5boost5arrayItLm441EEE", !132, i64 0}
!185 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !132, i64 0}
!186 = !{!"_ZTSN5boost5arrayItLm442EEE", !132, i64 0}
!187 = !{!"_ZTSN5boost5arrayIiLm4EEE", !132, i64 0}
!188 = !{!"_ZTSN5boost5arrayIiLm8EEE", !132, i64 0}
!189 = !{!"_ZTSN5boost5arrayIiLm2EEE", !132, i64 0}
!190 = !{!"_ZTSSt6vectorIiSaIiEE", !191, i64 0}
!191 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !192, i64 0}
!192 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !193, i64 0}
!193 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !162, i64 0, !162, i64 8, !162, i64 16}
!194 = !{!"function_entry_count", i64 7788864}
!195 = !{!193, !162, i64 0}
!196 = !{!193, !162, i64 8}
!197 = !{!"function_entry_count", i64 899000483}
!198 = !{!"function_entry_count", i64 28293760}
!199 = !{!"function_entry_count", i64 7788871}
!200 = !{!"function_entry_count", i64 17161144}
!201 = !{!"function_entry_count", i64 7789311}
!202 = !{!"function_entry_count", i64 97749716}
!203 = !{!"function_entry_count", i64 9372256}
!204 = !{!193, !162, i64 16}
!205 = !{!"function_entry_count", i64 16958771}
!206 = !{!"function_entry_count", i64 7788881}
!207 = !{!"function_entry_count", i64 7991268}
!208 = !{!"function_entry_count", i64 18041313}
!209 = !{!"branch_weights", i32 7788865, i32 10252450}
!210 = !{!"function_entry_count", i64 10252449}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{!"function_entry_count", i64 30757342}
!213 = !{!162, !162, i64 0}
!214 = !{!"function_entry_count", i64 15578622}
!215 = !{!"function_entry_count", i64 69303513}
!216 = !{!"branch_weights", i32 7789312, i32 1}
!217 = !{!"function_entry_count", i64 28111432}
!218 = !{!219, !162, i64 0}
!219 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !162, i64 0}
!220 = !{!"function_entry_count", i64 19624698}
!221 = !{!"branch_weights", i32 9372251, i32 10252449}
!222 = !{!"function_entry_count", i64 10252448}
!223 = !{!"function_entry_count", i64 69455494}
!224 = !{!"function_entry_count", i64 11128423850}
