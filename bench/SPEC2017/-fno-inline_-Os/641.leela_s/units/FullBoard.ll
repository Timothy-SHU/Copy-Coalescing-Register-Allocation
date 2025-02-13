; ModuleID = 'FullBoard.cpp'
source_filename = "FullBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::array.5" = type { [4 x %"class.boost::array.6"] }
%"class.boost::array.6" = type { [441 x i64] }
%"class.boost::array.7" = type { [2 x %"class.boost::array.8"] }
%"class.boost::array.8" = type { [882 x i64] }
%"class.boost::array.4" = type { [2 x i32] }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.std::vector.9" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::allocator.13" = type { i8 }
%"struct.std::_Bit_reference" = type { ptr, i64 }
%"class.std::allocator.10" = type { i8 }
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>

$_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm = comdat any

$_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm = comdat any

$_ZN5boost5arrayIyLm441EEixEm = comdat any

$_ZN5boost5arrayItLm442EEixEm = comdat any

$_ZN5boost5arrayIiLm2EEixEm = comdat any

$_ZN5boost5arrayItLm441EEixEm = comdat any

$_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm = comdat any

$_ZN5boost5arrayIyLm882EEixEm = comdat any

$_ZNK5boost5arrayIiLm2EEixEm = comdat any

$_ZN5boost5arrayIiLm4EEixEm = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSt15__new_allocatorIbED2Ev = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSt15__new_allocatorIbEC2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_initializeEm = comdat any

$_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb = comdat any

$_ZNSaImEC2IbEERKSaIT_E = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE = comdat any

$_ZNSt15__new_allocatorImEC2Ev = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorImEC2ERKS0_ = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt18_Bit_iterator_baseC2EPmj = comdat any

$_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm = comdat any

$_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm = comdat any

$_ZNSt13_Bit_iteratorC2EPmj = comdat any

$_ZStplRKSt13_Bit_iteratorl = comdat any

$_ZNSt16allocator_traitsISaImEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorImE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorImE11_M_max_sizeEv = comdat any

$_ZNSt13_Bit_iteratorpLEl = comdat any

$_ZNSt18_Bit_iterator_base7_M_incrEl = comdat any

$_ZSt16__fill_bvector_nPmmb = comdat any

$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv = comdat any

$_ZNSt15__new_allocatorImED2Ev = comdat any

$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv = comdat any

$_ZNSt15__new_allocatorImE10deallocateEPmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev = comdat any

$_ZNSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNKSt13_Bit_iteratorixEl = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

@_ZN7Zobrist7zobristE = external global %"class.boost::array.5", align 8
@_ZN7Zobrist12zobrist_prisE = external global %"class.boost::array.7", align 8
@_ZN9FastBoard9s_eyemaskE = external global %"class.boost::array.4", align 4
@.str = private unnamed_addr constant [27 x i8] c"Hash: %llX Ko-Hash: %llX\0A\0A\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FullBoard13remove_stringEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !116 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %4) #11
  %6 = load i32, ptr %5, align 4, !tbaa !117
  %7 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i32 [ 0, %2 ], [ %65, %15 ]
  %17 = phi i32 [ %1, %2 ], [ %68, %15 ]
  %18 = sext i32 %17 to i64
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %18) #11
  %20 = load i32, ptr %19, align 4, !tbaa !117
  %21 = zext i32 %20 to i64
  %22 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %21) #11
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %22, i64 noundef %18) #11
  %24 = load i64, ptr %23, align 8, !tbaa !121
  %25 = load i64, ptr %7, align 8, !tbaa !123
  %26 = xor i64 %25, %24
  store i64 %26, ptr %7, align 8, !tbaa !123
  %27 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %18) #11
  %28 = load i32, ptr %27, align 4, !tbaa !117
  %29 = zext i32 %28 to i64
  %30 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %29) #11
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %30, i64 noundef %18) #11
  %32 = load i64, ptr %31, align 8, !tbaa !121
  %33 = load i64, ptr %8, align 8, !tbaa !138
  %34 = xor i64 %33, %32
  store i64 %34, ptr %8, align 8, !tbaa !138
  %35 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %18) #11
  store i32 2, ptr %35, align 4, !tbaa !117
  %36 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %18) #11
  store i16 441, ptr %36, align 2, !tbaa !139
  %37 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef %11) #11
  %38 = load i32, ptr %37, align 4, !tbaa !141
  %39 = add nsw i32 %38, -1
  store i32 %39, ptr %37, align 4, !tbaa !141
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %17, i32 noundef %6) #11
  %40 = load i32, ptr %12, align 4, !tbaa !142
  %41 = trunc i32 %40 to i16
  %42 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %13, i64 noundef %18) #11
  store i16 %41, ptr %42, align 2, !tbaa !139
  %43 = trunc i32 %17 to i16
  %44 = load i32, ptr %12, align 4, !tbaa !142
  %45 = sext i32 %44 to i64
  %46 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %45) #11
  store i16 %43, ptr %46, align 2, !tbaa !139
  %47 = load i32, ptr %12, align 4, !tbaa !142
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %12, align 4, !tbaa !142
  %49 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %18) #11
  %50 = load i32, ptr %49, align 4, !tbaa !117
  %51 = zext i32 %50 to i64
  %52 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %51) #11
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %52, i64 noundef %18) #11
  %54 = load i64, ptr %53, align 8, !tbaa !121
  %55 = load i64, ptr %7, align 8, !tbaa !123
  %56 = xor i64 %55, %54
  store i64 %56, ptr %7, align 8, !tbaa !123
  %57 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %18) #11
  %58 = load i32, ptr %57, align 4, !tbaa !117
  %59 = zext i32 %58 to i64
  %60 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %59) #11
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %60, i64 noundef %18) #11
  %62 = load i64, ptr %61, align 8, !tbaa !121
  %63 = load i64, ptr %8, align 8, !tbaa !138
  %64 = xor i64 %63, %62
  store i64 %64, ptr %8, align 8, !tbaa !138
  %65 = add nuw nsw i32 %16, 1
  %66 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %14, i64 noundef %18) #11
  %67 = load i16, ptr %66, align 2, !tbaa !139
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %68, %1
  br i1 %69, label %70, label %15, !prof !143, !llvm.loop !144

70:                                               ; preds = %15
  ret i32 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds [441 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !147 {
  %3 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !147 {
  %3 = getelementptr inbounds [441 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !148 {
  %3 = getelementptr inbounds [442 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !149 {
  %3 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !150 {
  %3 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !152
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7, !prof !153

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %10

7:                                                ; preds = %24, %1
  %8 = phi i64 [ 1311768467139281697, %1 ], [ %25, %24 ]
  %9 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  store i64 %8, ptr %9, align 8, !tbaa !138
  ret i64 %8

10:                                               ; preds = %5, %24
  %11 = phi i64 [ 0, %5 ], [ %26, %24 ]
  %12 = phi i64 [ 1311768467139281697, %5 ], [ %25, %24 ]
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %11) #11
  %14 = load i32, ptr %13, align 4, !tbaa !117
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %24, label %16, !prof !154

16:                                               ; preds = %10
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %11) #11
  %18 = load i32, ptr %17, align 4, !tbaa !117
  %19 = zext i32 %18 to i64
  %20 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %19) #11
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %20, i64 noundef %11) #11
  %22 = load i64, ptr %21, align 8, !tbaa !121
  %23 = xor i64 %22, %12
  br label %24

24:                                               ; preds = %10, %16
  %25 = phi i64 [ %23, %16 ], [ %12, %10 ]
  %26 = add nuw nsw i64 %11, 1
  %27 = load i32, ptr %2, align 4, !tbaa !152
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %10, label %7, !prof !155, !llvm.loop !156
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !152
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7, !prof !153

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %30

7:                                                ; preds = %44, %1
  %8 = phi i64 [ 1311768467139281697, %1 ], [ %45, %44 ]
  %9 = tail call noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist12zobrist_prisE, i64 noundef 0) #11
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef 0) #11
  %12 = load i32, ptr %11, align 4, !tbaa !141
  %13 = sext i32 %12 to i64
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %9, i64 noundef %13) #11
  %15 = load i64, ptr %14, align 8, !tbaa !121
  %16 = tail call noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist12zobrist_prisE, i64 noundef 1) #11
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %10, i64 noundef 1) #11
  %18 = load i32, ptr %17, align 4, !tbaa !141
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %16, i64 noundef %19) #11
  %21 = load i64, ptr %20, align 8, !tbaa !121
  %22 = xor i64 %15, %8
  %23 = xor i64 %22, %21
  %24 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !157
  %26 = icmp eq i32 %25, 0
  %27 = xor i64 %23, -6067004223159161907
  %28 = select i1 %26, i64 %27, i64 %23, !prof !158
  %29 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  store i64 %28, ptr %29, align 8, !tbaa !123
  ret i64 %28

30:                                               ; preds = %5, %44
  %31 = phi i64 [ 0, %5 ], [ %46, %44 ]
  %32 = phi i64 [ 1311768467139281697, %5 ], [ %45, %44 ]
  %33 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %31) #11
  %34 = load i32, ptr %33, align 4, !tbaa !117
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %44, label %36, !prof !154

36:                                               ; preds = %30
  %37 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %31) #11
  %38 = load i32, ptr %37, align 4, !tbaa !117
  %39 = zext i32 %38 to i64
  %40 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %39) #11
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %40, i64 noundef %31) #11
  %42 = load i64, ptr %41, align 8, !tbaa !121
  %43 = xor i64 %42, %32
  br label %44

44:                                               ; preds = %30, %36
  %45 = phi i64 [ %43, %36 ], [ %32, %30 ]
  %46 = add nuw nsw i64 %31, 1
  %47 = load i32, ptr %2, align 4, !tbaa !152
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %30, label %7, !prof !155, !llvm.loop !159
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !160 {
  %3 = getelementptr inbounds [2 x %"class.boost::array.8"], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !160 {
  %3 = getelementptr inbounds [882 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN9FullBoard8get_hashEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8072) %0) local_unnamed_addr #4 align 2 !prof !161 {
  %2 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !123
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8072) %0) local_unnamed_addr #4 align 2 !prof !162 {
  %2 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !138
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FullBoard12update_boardEii(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !163 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %5 = sext i32 %2 to i64
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #11
  %7 = load i32, ptr %6, align 4, !tbaa !117
  %8 = zext i32 %7 to i64
  %9 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %8) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %9, i64 noundef %5) #11
  %11 = load i64, ptr %10, align 8, !tbaa !121
  %12 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !123
  %14 = xor i64 %13, %11
  store i64 %14, ptr %12, align 8, !tbaa !123
  %15 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #11
  %16 = load i32, ptr %15, align 4, !tbaa !117
  %17 = zext i32 %16 to i64
  %18 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %17) #11
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %18, i64 noundef %5) #11
  %20 = load i64, ptr %19, align 8, !tbaa !121
  %21 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !138
  %23 = xor i64 %22, %20
  store i64 %23, ptr %21, align 8, !tbaa !138
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #11
  store i32 %1, ptr %24, align 4, !tbaa !117
  %25 = trunc i32 %2 to i16
  %26 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %27 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %26, i64 noundef %5) #11
  store i16 %25, ptr %27, align 2, !tbaa !139
  %28 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %29 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %28, i64 noundef %5) #11
  store i16 %25, ptr %29, align 2, !tbaa !139
  %30 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #11
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %33 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %32, i64 noundef %5) #11
  store i16 %31, ptr %33, align 2, !tbaa !139
  %34 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %35 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %34, i64 noundef %5) #11
  store i16 1, ptr %35, align 2, !tbaa !139
  %36 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %37 = sext i32 %1 to i64
  %38 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %36, i64 noundef %37) #11
  %39 = load i32, ptr %38, align 4, !tbaa !141
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4, !tbaa !141
  %41 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #11
  %42 = load i32, ptr %41, align 4, !tbaa !117
  %43 = zext i32 %42 to i64
  %44 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %43) #11
  %45 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %44, i64 noundef %5) #11
  %46 = load i64, ptr %45, align 8, !tbaa !121
  %47 = load i64, ptr %12, align 8, !tbaa !123
  %48 = xor i64 %47, %46
  store i64 %48, ptr %12, align 8, !tbaa !123
  %49 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #11
  %50 = load i32, ptr %49, align 4, !tbaa !117
  %51 = zext i32 %50 to i64
  %52 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %51) #11
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %52, i64 noundef %5) #11
  %54 = load i64, ptr %53, align 8, !tbaa !121
  %55 = load i64, ptr %21, align 8, !tbaa !138
  %56 = xor i64 %55, %54
  store i64 %56, ptr %21, align 8, !tbaa !138
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %1) #11
  %57 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %58 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %57, i64 noundef %5) #11
  %59 = load i16, ptr %58, align 2, !tbaa !139
  %60 = icmp eq i32 %1, 0
  %61 = zext i1 %60 to i64
  %62 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) @_ZN9FastBoard9s_eyemaskE, i64 noundef %61) #11
  %63 = load i32, ptr %62, align 4, !tbaa !141
  %64 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %65 = zext i1 %60 to i32
  br label %108

66:                                               ; preds = %151
  %67 = tail call noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist12zobrist_prisE, i64 noundef %37) #11
  %68 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %69 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %68, i64 noundef %37) #11
  %70 = load i32, ptr %69, align 4, !tbaa !141
  %71 = sext i32 %70 to i64
  %72 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %67, i64 noundef %71) #11
  %73 = load i64, ptr %72, align 8, !tbaa !121
  %74 = load i64, ptr %12, align 8, !tbaa !123
  %75 = xor i64 %74, %73
  store i64 %75, ptr %12, align 8, !tbaa !123
  %76 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %68, i64 noundef %37) #11
  %77 = load i32, ptr %76, align 4, !tbaa !141
  %78 = add nsw i32 %77, %152
  store i32 %78, ptr %76, align 4, !tbaa !141
  %79 = tail call noundef nonnull align 8 dereferenceable(7056) ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist12zobrist_prisE, i64 noundef %37) #11
  %80 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %68, i64 noundef %37) #11
  %81 = load i32, ptr %80, align 4, !tbaa !141
  %82 = sext i32 %81 to i64
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm882EEixEm(ptr noundef nonnull align 8 dereferenceable(7056) %79, i64 noundef %82) #11
  %84 = load i64, ptr %83, align 8, !tbaa !121
  %85 = load i64, ptr %12, align 8, !tbaa !123
  %86 = xor i64 %85, %84
  store i64 %86, ptr %12, align 8, !tbaa !123
  %87 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !142
  %89 = add nsw i32 %88, -1
  store i32 %89, ptr %87, align 4, !tbaa !142
  %90 = sext i32 %89 to i64
  %91 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %90) #11
  %92 = load i16, ptr %91, align 2, !tbaa !139
  %93 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %94 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %93, i64 noundef %5) #11
  %95 = load i16, ptr %94, align 2, !tbaa !139
  %96 = zext i16 %92 to i64
  %97 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %93, i64 noundef %96) #11
  store i16 %95, ptr %97, align 2, !tbaa !139
  %98 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %93, i64 noundef %5) #11
  %99 = load i16, ptr %98, align 2, !tbaa !139
  %100 = zext i16 %99 to i64
  %101 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %100) #11
  store i16 %92, ptr %101, align 2, !tbaa !139
  %102 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %28, i64 noundef %5) #11
  %103 = load i16, ptr %102, align 2, !tbaa !139
  %104 = zext i16 %103 to i64
  %105 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %32, i64 noundef %104) #11
  %106 = load i16, ptr %105, align 2, !tbaa !139
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %156, label %158, !prof !164

108:                                              ; preds = %3, %151
  %109 = phi i64 [ 0, %3 ], [ %154, %151 ]
  %110 = phi i32 [ undef, %3 ], [ %153, %151 ]
  %111 = phi i32 [ 0, %3 ], [ %152, %151 ]
  %112 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %64, i64 noundef %109) #11
  %113 = load i32, ptr %112, align 4, !tbaa !141
  %114 = add nsw i32 %113, %2
  %115 = sext i32 %114 to i64
  %116 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %115) #11
  %117 = load i32, ptr %116, align 4, !tbaa !117
  %118 = icmp eq i32 %117, %65
  br i1 %118, label %119, label %129, !prof !165

119:                                              ; preds = %108
  %120 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %28, i64 noundef %115) #11
  %121 = load i16, ptr %120, align 2, !tbaa !139
  %122 = zext i16 %121 to i64
  %123 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %32, i64 noundef %122) #11
  %124 = load i16, ptr %123, align 2, !tbaa !139
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %151, !prof !166

126:                                              ; preds = %119
  %127 = tail call noundef i32 @_ZN9FullBoard13remove_stringEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %114) #11
  %128 = add nsw i32 %127, %111
  br label %151

129:                                              ; preds = %108
  %130 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %115) #11
  %131 = load i32, ptr %130, align 4, !tbaa !117
  %132 = icmp eq i32 %131, %1
  br i1 %132, label %133, label %151, !prof !167

133:                                              ; preds = %129
  %134 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %28, i64 noundef %5) #11
  %135 = load i16, ptr %134, align 2, !tbaa !139
  %136 = zext i16 %135 to i32
  %137 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %28, i64 noundef %115) #11
  %138 = load i16, ptr %137, align 2, !tbaa !139
  %139 = zext i16 %138 to i32
  %140 = icmp eq i16 %135, %138
  br i1 %140, label %151, label %141, !prof !168

141:                                              ; preds = %133
  %142 = zext i16 %135 to i64
  %143 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %34, i64 noundef %142) #11
  %144 = load i16, ptr %143, align 2, !tbaa !139
  %145 = zext i16 %138 to i64
  %146 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %34, i64 noundef %145) #11
  %147 = load i16, ptr %146, align 2, !tbaa !139
  %148 = icmp ult i16 %144, %147
  br i1 %148, label %150, label %149, !prof !169

149:                                              ; preds = %141
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %136, i32 noundef %139) #11
  br label %151

150:                                              ; preds = %141
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %139, i32 noundef %136) #11
  br label %151

151:                                              ; preds = %133, %150, %149, %129, %119, %126
  %152 = phi i32 [ %128, %126 ], [ %111, %119 ], [ %111, %129 ], [ %111, %149 ], [ %111, %150 ], [ %111, %133 ]
  %153 = phi i32 [ %114, %126 ], [ %110, %119 ], [ %110, %129 ], [ %110, %149 ], [ %110, %150 ], [ %110, %133 ]
  %154 = add nuw nsw i64 %109, 1
  %155 = icmp eq i64 %154, 4
  br i1 %155, label %66, label %108, !prof !170, !llvm.loop !171

156:                                              ; preds = %66
  %157 = tail call noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #11
  br label %158

158:                                              ; preds = %156, %66
  %159 = zext i16 %59 to i32
  %160 = and i32 %63, %159
  %161 = icmp eq i32 %152, 1
  %162 = icmp ne i32 %160, 0
  %163 = select i1 %161, i1 %162, i1 false
  %164 = select i1 %163, i32 %153, i32 -1, !prof !172
  ret i32 %164
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !173 {
  %3 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !174 {
  %3 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FullBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !175 {
  tail call void @_ZN9FastBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) #11
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !138
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i64 noundef %4, i64 noundef %6) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !176 {
  tail call void @_ZN9FastBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) #11
  %3 = tail call noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) #11
  %4 = tail call noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN9FullBoard15predict_ko_hashEii(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %4 = alloca %"class.std::vector.9", align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::allocator.13", align 1
  %7 = alloca %"struct.std::_Bit_reference", align 8
  %8 = alloca %"struct.std::_Bit_reference", align 8
  %9 = alloca %"struct.std::_Bit_reference", align 8
  %10 = alloca %"struct.std::_Bit_reference", align 8
  %11 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !138
  %13 = icmp eq i32 %2, -1
  br i1 %13, label %124, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %16 = sext i32 %2 to i64
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %16) #11
  %18 = load i32, ptr %17, align 4, !tbaa !117
  %19 = zext i32 %18 to i64
  %20 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %19) #11
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %20, i64 noundef %16) #11
  %22 = load i64, ptr %21, align 8, !tbaa !121
  %23 = sext i32 %1 to i64
  %24 = tail call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %23) #11
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %24, i64 noundef %16) #11
  %26 = load i64, ptr %25, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %27 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !152
  %29 = sext i32 %28 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1, !tbaa !178
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %29, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #11
          to label %30 unwind label %44

30:                                               ; preds = %14
  %31 = xor i64 %22, %26
  %32 = xor i64 %31, %12
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %33 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %34 = getelementptr inbounds { ptr, i64 }, ptr %7, i64 0, i32 1
  %35 = icmp eq i32 %1, 0
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %38 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %39 = getelementptr inbounds { ptr, i64 }, ptr %8, i64 0, i32 1
  %40 = getelementptr inbounds { ptr, i64 }, ptr %9, i64 0, i32 1
  %41 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %42 = getelementptr inbounds { ptr, i64 }, ptr %10, i64 0, i32 1
  br label %46

43:                                               ; preds = %116
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %124

44:                                               ; preds = %14
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  br label %122

46:                                               ; preds = %30, %116
  %47 = phi i64 [ 0, %30 ], [ %118, %116 ]
  %48 = phi i64 [ %32, %30 ], [ %117, %116 ]
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %33, i64 noundef %47) #11
  %50 = load i32, ptr %49, align 4, !tbaa !141
  %51 = add nsw i32 %50, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %52 = sext i32 %51 to i64
  %53 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %52) #11
          to label %54 unwind label %95

54:                                               ; preds = %46
  %55 = extractvalue { ptr, i64 } %53, 0
  store ptr %55, ptr %7, align 8
  %56 = extractvalue { ptr, i64 } %53, 1
  store i64 %56, ptr %34, align 8
  %57 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br i1 %57, label %116, label %58

58:                                               ; preds = %54
  %59 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %52) #11
  %60 = load i32, ptr %59, align 4, !tbaa !117
  %61 = icmp eq i32 %60, %36
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %38, i64 noundef %52) #11
  %64 = load i16, ptr %63, align 2, !tbaa !139
  %65 = zext i16 %64 to i64
  %66 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %37, i64 noundef %65) #11
  %67 = load i16, ptr %66, align 2, !tbaa !139
  %68 = icmp ult i16 %67, 2
  br i1 %68, label %69, label %107

69:                                               ; preds = %62, %101
  %70 = phi i64 [ %102, %101 ], [ %48, %62 ]
  %71 = phi i32 [ %105, %101 ], [ %51, %62 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  %72 = sext i32 %71 to i64
  %73 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %72) #11
          to label %74 unwind label %97

74:                                               ; preds = %69
  %75 = extractvalue { ptr, i64 } %73, 0
  store ptr %75, ptr %8, align 8
  %76 = extractvalue { ptr, i64 } %73, 1
  store i64 %76, ptr %39, align 8
  %77 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br i1 %77, label %101, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %79 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %72) #11
          to label %80 unwind label %99

80:                                               ; preds = %78
  %81 = extractvalue { ptr, i64 } %79, 0
  store ptr %81, ptr %9, align 8
  %82 = extractvalue { ptr, i64 } %79, 1
  store i64 %82, ptr %40, align 8
  %83 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %72) #11
  %85 = load i32, ptr %84, align 4, !tbaa !117
  %86 = zext i32 %85 to i64
  %87 = call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef %86) #11
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %87, i64 noundef %72) #11
  %89 = load i64, ptr %88, align 8, !tbaa !121
  %90 = call noundef nonnull align 8 dereferenceable(3528) ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm(ptr noundef nonnull align 8 dereferenceable(14112) @_ZN7Zobrist7zobristE, i64 noundef 2) #11
  %91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm441EEixEm(ptr noundef nonnull align 8 dereferenceable(3528) %90, i64 noundef %72) #11
  %92 = load i64, ptr %91, align 8, !tbaa !121
  %93 = xor i64 %89, %92
  %94 = xor i64 %93, %70
  br label %101

95:                                               ; preds = %46
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %120

97:                                               ; preds = %69
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br label %120

99:                                               ; preds = %78
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  br label %120

101:                                              ; preds = %80, %74
  %102 = phi i64 [ %94, %80 ], [ %70, %74 ]
  %103 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %41, i64 noundef %72) #11
  %104 = load i16, ptr %103, align 2, !tbaa !139
  %105 = zext i16 %104 to i32
  %106 = icmp eq i32 %51, %105
  br i1 %106, label %107, label %69, !llvm.loop !180

107:                                              ; preds = %101, %62, %58
  %108 = phi i64 [ %48, %62 ], [ %48, %58 ], [ %102, %101 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  %109 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %52) #11
          to label %110 unwind label %114

110:                                              ; preds = %107
  %111 = extractvalue { ptr, i64 } %109, 0
  store ptr %111, ptr %10, align 8
  %112 = extractvalue { ptr, i64 } %109, 1
  store i64 %112, ptr %42, align 8
  %113 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  br label %116

114:                                              ; preds = %107
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  br label %120

116:                                              ; preds = %110, %54
  %117 = phi i64 [ %108, %110 ], [ %48, %54 ]
  %118 = add nuw nsw i64 %47, 1
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %43, label %46, !llvm.loop !181

120:                                              ; preds = %97, %99, %114, %95
  %121 = phi { ptr, i32 } [ %115, %114 ], [ %96, %95 ], [ %100, %99 ], [ %98, %97 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  br label %122

122:                                              ; preds = %120, %44
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  resume { ptr, i32 } %123

124:                                              ; preds = %3, %43
  %125 = phi i64 [ %117, %43 ], [ %12, %3 ]
  ret i64 %125
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #11
          to label %5 unwind label %8

5:                                                ; preds = %4
  %6 = load i8, ptr %2, align 1, !tbaa !178, !range !183, !noundef !184
  %7 = icmp ne i8 %6, 0
  tail call void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %7) #13
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  resume { ptr, i32 } %9
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = tail call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %2 = load ptr, ptr %0, align 8, !tbaa !187
  %3 = load i64, ptr %2, align 8, !tbaa !190
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !191
  %6 = and i64 %5, %3
  %7 = icmp ne i64 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !192 {
  %3 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !191
  br i1 %1, label %5, label %9, !prof !193

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !187
  %7 = load i64, ptr %6, align 8, !tbaa !190
  %8 = or i64 %7, %4
  store i64 %8, ptr %6, align 8, !tbaa !190
  br label %14

9:                                                ; preds = %2
  %10 = xor i64 %4, -1
  %11 = load ptr, ptr %0, align 8, !tbaa !187
  %12 = load i64, ptr %11, align 8, !tbaa !190
  %13 = and i64 %12, %10
  store i64 %13, ptr %11, align 8, !tbaa !190
  br label %14

14:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !182 {
  %3 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  call void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %15, label %5, !prof !194

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #11
  %7 = tail call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %1) #11
  %8 = getelementptr inbounds i64, ptr %6, i64 %7
  %9 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %6, i32 noundef 0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %10 = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #11
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %12, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %15

15:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !199
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !194

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  tail call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %3, i64 noundef %10, i1 noundef zeroext %1) #13
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !prof !200 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !201 {
  store ptr %1, ptr %0, align 8, !tbaa !199
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %3 = tail call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %1) #11
  %4 = tail call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %0) local_unnamed_addr #2 comdat align 2 !prof !203 {
  %2 = add i64 %0, 63
  %3 = lshr i64 %2, 6
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !204 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !205 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %4 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #11
  %5 = load ptr, ptr %3, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %5, 0
  %7 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } %6, i32 %8, 1
  ret { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !206

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !182 {
  ret i64 1152921504606846975
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !205 {
  tail call void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #11
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !205 {
  %3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !202
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, %1
  %7 = sdiv i64 %6, 64
  %8 = load ptr, ptr %0, align 8, !tbaa !199
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = srem i64 %6, 64
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15, !prof !207

12:                                               ; preds = %2
  %13 = add nsw i64 %10, 64
  %14 = getelementptr inbounds i64, ptr %9, i64 -1
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %9, %2 ]
  %17 = phi i64 [ %13, %12 ], [ %10, %2 ]
  store ptr %16, ptr %0, align 8, !tbaa !199
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %3, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt16__fill_bvector_nPmmb(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat !prof !203 {
  %4 = sext i1 %2 to i8
  %5 = shl i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 %4, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !199
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !194

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !199
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = sub nsw i64 0, %10
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  tail call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %14, i64 noundef %10) #11
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %15

15:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !203 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !182 {
  tail call void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !182 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #12
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !182 {
  tail call void @_ZdlPv(ptr noundef %1) #17
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #11
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #11
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !195
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !199
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, i32 noundef 0) #11
  %4 = load ptr, ptr %2, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = insertvalue { ptr, i32 } %5, i32 %7, 1
  ret { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = tail call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #11
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !199
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !202
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw i64 1, %6
  call void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i64 noundef %7) #11
  %8 = load ptr, ptr %2, align 8
  %9 = insertvalue { ptr, i64 } poison, ptr %8, 0
  %10 = getelementptr inbounds { ptr, i64 }, ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = insertvalue { ptr, i64 } %9, i64 %11, 1
  ret { ptr, i64 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 comdat align 2 !prof !211 {
  store ptr %1, ptr %0, align 8, !tbaa !187
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !191
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn optsize }
attributes #16 = { builtin optsize allocsize(0) }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!115}

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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!36 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 43131224}
!37 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm, i64 31077420}
!38 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN5boost5arrayIyLm441EEixEm, i64 31077420}
!39 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 15538710}
!40 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 7769355}
!41 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN9FastBoard16remove_neighbourEii, i64 7769355}
!42 = !{ptr @_ZN9FullBoard13remove_stringEi, ptr @_ZN5boost5arrayItLm441EEixEm, i64 15538710}
!43 = !{ptr @_ZN9FullBoard12calc_ko_hashEv, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 31573}
!44 = !{ptr @_ZN9FullBoard12calc_ko_hashEv, ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm, i64 13977}
!45 = !{ptr @_ZN9FullBoard12calc_ko_hashEv, ptr @_ZN5boost5arrayIyLm441EEixEm, i64 13977}
!46 = !{ptr @_ZN9FullBoard9calc_hashEv, ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm, i64 116}
!47 = !{ptr @_ZN9FullBoard9calc_hashEv, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 116}
!48 = !{ptr @_ZN9FullBoard9calc_hashEv, ptr @_ZN5boost5arrayIyLm882EEixEm, i64 116}
!49 = !{ptr @_ZN9FullBoard9calc_hashEv, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 31573}
!50 = !{ptr @_ZN9FullBoard9calc_hashEv, ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm, i64 13977}
!51 = !{ptr @_ZN9FullBoard9calc_hashEv, ptr @_ZN5boost5arrayIyLm441EEixEm, i64 13977}
!52 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 371910739}
!53 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayINS0_IyLm441EEELm4EEixEm, i64 123886456}
!54 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayIyLm441EEixEm, i64 123886456}
!55 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 344250066}
!56 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard16count_plibertiesEi, i64 30971614}
!57 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 123886456}
!58 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard13add_neighbourEii, i64 30971614}
!59 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 185829684}
!60 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZNK5boost5arrayIiLm2EEixEm, i64 30971614}
!61 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayINS0_IyLm882EEELm2EEixEm, i64 61943228}
!62 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayIyLm882EEixEm, i64 61943228}
!63 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 123886453}
!64 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FullBoard13remove_stringEi, i64 4284450}
!65 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard13merge_stringsEii, i64 22715197}
!66 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard18remove_string_fastEi, i64 1}
!67 = !{ptr @_ZN9FullBoard13display_boardEi, ptr @_ZN9FastBoard13display_boardEi, i64 970}
!68 = !{ptr @_ZN9FullBoard13display_boardEi, ptr @_ZN5Utils8myprintfEPKcz, i64 970}
!69 = !{ptr @_ZN9FullBoard11reset_boardEi, ptr @_ZN9FastBoard11reset_boardEi, i64 29}
!70 = !{ptr @_ZN9FullBoard11reset_boardEi, ptr @_ZN9FullBoard9calc_hashEv, i64 29}
!71 = !{ptr @_ZN9FullBoard11reset_boardEi, ptr @_ZN9FullBoard12calc_ko_hashEv, i64 29}
!72 = !{ptr @_ZNSaIbEC2Ev, ptr @_ZNSt15__new_allocatorIbEC2Ev, i64 126015}
!73 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, i64 126015}
!74 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, i64 126015}
!75 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, i64 126015}
!76 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 14717977}
!77 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNKSt13_Bit_iteratorixEl, i64 14717977}
!78 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, i64 126015}
!79 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!80 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSaImEC2IbEERKSaIT_E, i64 126015}
!81 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, i64 126015}
!82 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!83 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, i64 126014}
!84 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, i64 126014}
!85 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 126014}
!86 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZStplRKSt13_Bit_iteratorl, i64 126014}
!87 = !{ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!88 = !{ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, ptr @_ZSt16__fill_bvector_nPmmb, i64 126014}
!89 = !{ptr @_ZNSaImEC2IbEERKSaIT_E, ptr @_ZNSt15__new_allocatorImEC2Ev, i64 126015}
!90 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, ptr @_ZNSaImEC2ERKS_, i64 126015}
!91 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!92 = !{ptr @_ZNSaImEC2ERKS_, ptr @_ZNSt15__new_allocatorImEC2ERKS0_, i64 126015}
!93 = !{ptr @_ZNSt13_Bit_iteratorC2Ev, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 504060}
!94 = !{ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, ptr @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, i64 126015}
!95 = !{ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m, i64 126015}
!96 = !{ptr @_ZNSt13_Bit_iteratorC2EPmj, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 15228725}
!97 = !{ptr @_ZStplRKSt13_Bit_iteratorl, ptr @_ZNSt13_Bit_iteratorpLEl, i64 14843992}
!98 = !{ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, i64 126015}
!99 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorImE11_M_max_sizeEv, i64 126015}
!100 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 31}
!101 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 31}
!102 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_Znwm, i64 125952}
!103 = !{ptr @_ZNSt13_Bit_iteratorpLEl, ptr @_ZNSt18_Bit_iterator_base7_M_incrEl, i64 14843992}
!104 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!105 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, i64 126014}
!106 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, i64 126014}
!107 = !{ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, i64 126015}
!108 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!109 = !{ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, ptr @_ZdlPv, i64 126015}
!110 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, ptr @_ZNSt13_Bit_iteratorC2Ev, i64 504060}
!111 = !{ptr @_ZNSt6vectorIbSaIbEE5beginEv, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 14973351}
!112 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZStplRKSt13_Bit_iteratorl, i64 14717977}
!113 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZNKSt13_Bit_iteratordeEv, i64 14717977}
!114 = !{ptr @_ZNKSt13_Bit_iteratordeEv, ptr @_ZNSt14_Bit_referenceC2EPmm, i64 22091440}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !{!"function_entry_count", i64 4284449}
!117 = !{!118, !118, i64 0}
!118 = !{!"_ZTSN9FastBoard8square_tE", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C++ TBAA"}
!121 = !{!122, !122, i64 0}
!122 = !{!"long long", !119, i64 0}
!123 = !{!124, !122, i64 8056}
!124 = !{!"_ZTS9FullBoard", !125, i64 0, !122, i64 8056, !122, i64 8064}
!125 = !{!"_ZTS9FastBoard", !126, i64 0, !126, i64 882, !127, i64 1764, !127, i64 1768, !127, i64 1772, !128, i64 1776, !129, i64 3540, !129, i64 4424, !129, i64 5308, !129, i64 6192, !126, i64 7076, !130, i64 7960, !131, i64 7976, !132, i64 8008, !132, i64 8016, !133, i64 8024, !127, i64 8048}
!126 = !{!"_ZTSN5boost5arrayItLm441EEE", !119, i64 0}
!127 = !{!"int", !119, i64 0}
!128 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !119, i64 0}
!129 = !{!"_ZTSN5boost5arrayItLm442EEE", !119, i64 0}
!130 = !{!"_ZTSN5boost5arrayIiLm4EEE", !119, i64 0}
!131 = !{!"_ZTSN5boost5arrayIiLm8EEE", !119, i64 0}
!132 = !{!"_ZTSN5boost5arrayIiLm2EEE", !119, i64 0}
!133 = !{!"_ZTSSt6vectorIiSaIiEE", !134, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !135, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !136, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!137 = !{!"any pointer", !119, i64 0}
!138 = !{!124, !122, i64 8064}
!139 = !{!140, !140, i64 0}
!140 = !{!"short", !119, i64 0}
!141 = !{!127, !127, i64 0}
!142 = !{!125, !127, i64 1764}
!143 = !{!"branch_weights", i32 4284450, i32 3484907}
!144 = distinct !{!144, !145}
!145 = !{!"llvm.loop.mustprogress"}
!146 = !{!"function_entry_count", i64 88073131441}
!147 = !{!"function_entry_count", i64 154994076}
!148 = !{!"function_entry_count", i64 115183010216}
!149 = !{!"function_entry_count", i64 3086438695}
!150 = !{!"function_entry_count", i64 32030604394}
!151 = !{!"function_entry_count", i64 58}
!152 = !{!125, !127, i64 1772}
!153 = !{!"branch_weights", i32 235, i32 1}
!154 = !{!"branch_weights", i32 3681, i32 14219}
!155 = !{!"branch_weights", i32 71361, i32 235}
!156 = distinct !{!156, !145}
!157 = !{!125, !127, i64 1768}
!158 = !{!"branch_weights", i32 59, i32 1}
!159 = distinct !{!159, !145}
!160 = !{!"function_entry_count", i64 61945108}
!161 = !{!"function_entry_count", i64 38472780}
!162 = !{!"function_entry_count", i64 2910}
!163 = !{!"function_entry_count", i64 30971614}
!164 = !{!"branch_weights", i32 1, i32 30971615}
!165 = !{!"branch_weights", i32 30720238, i32 93166220}
!166 = !{!"branch_weights", i32 4284450, i32 26435789}
!167 = !{!"branch_weights", i32 25774758, i32 67391463}
!168 = !{!"branch_weights", i32 3059560, i32 22715199}
!169 = !{!"branch_weights", i32 12413041, i32 10302159}
!170 = !{!"branch_weights", i32 30971615, i32 92914842}
!171 = distinct !{!171, !145}
!172 = !{!"branch_weights", i32 114674206, i32 -1683814154}
!173 = !{!"function_entry_count", i64 9192537479}
!174 = !{!"function_entry_count", i64 99995171483}
!175 = !{!"function_entry_count", i64 970}
!176 = !{!"function_entry_count", i64 29}
!177 = !{!"function_entry_count", i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"bool", !119, i64 0}
!180 = distinct !{!180, !145}
!181 = distinct !{!181, !145}
!182 = !{!"function_entry_count", i64 126015}
!183 = !{i8 0, i8 2}
!184 = !{}
!185 = !{!"function_entry_count", i64 14717977}
!186 = !{!"function_entry_count", i64 33058621}
!187 = !{!188, !137, i64 0}
!188 = !{!"_ZTSSt14_Bit_reference", !137, i64 0, !189, i64 8}
!189 = !{!"long", !119, i64 0}
!190 = !{!189, !189, i64 0}
!191 = !{!188, !189, i64 8}
!192 = !{!"function_entry_count", i64 14152662}
!193 = !{!"branch_weights", i32 8066000, i32 6086664}
!194 = !{!"branch_weights", i32 1, i32 126016}
!195 = !{!196, !137, i64 32}
!196 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !197, i64 0, !197, i64 16, !137, i64 32}
!197 = !{!"_ZTSSt13_Bit_iterator", !198, i64 0}
!198 = !{!"_ZTSSt18_Bit_iterator_base", !137, i64 0, !127, i64 8}
!199 = !{!198, !137, i64 0}
!200 = !{!"function_entry_count", i64 504060}
!201 = !{!"function_entry_count", i64 17543811}
!202 = !{!198, !127, i64 8}
!203 = !{!"function_entry_count", i64 252030}
!204 = !{!"function_entry_count", i64 15228725}
!205 = !{!"function_entry_count", i64 14843992}
!206 = !{!"branch_weights", i32 1, i32 2000}
!207 = !{!"branch_weights", i32 1, i32 14843993}
!208 = !{!"function_entry_count", i64 381389}
!209 = !{!"function_entry_count", i64 14973351}
!210 = !{!"function_entry_count", i64 22091440}
!211 = !{!"function_entry_count", i64 47211283}
