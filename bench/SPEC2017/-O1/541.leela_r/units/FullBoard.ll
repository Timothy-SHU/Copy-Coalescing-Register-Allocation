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
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

@_ZN7Zobrist7zobristE = external local_unnamed_addr global %"class.boost::array.5", align 8
@_ZN7Zobrist12zobrist_prisE = external local_unnamed_addr global %"class.boost::array.7", align 8
@_ZN9FastBoard9s_eyemaskE = external local_unnamed_addr global %"class.boost::array.4", align 4
@.str = private unnamed_addr constant [27 x i8] c"Hash: %llX Ko-Hash: %llX\0A\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9FullBoard13remove_stringEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !45 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [441 x i32], ptr %3, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %11
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %16

16:                                               ; preds = %16, %2
  %17 = phi i32 [ 0, %2 ], [ %51, %16 ]
  %18 = phi i32 [ %1, %2 ], [ %54, %16 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [441 x i32], ptr %3, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %22
  %24 = getelementptr inbounds [441 x i64], ptr %23, i64 0, i64 %19
  %25 = load i64, ptr %24, align 8, !tbaa !50
  %26 = load i64, ptr %7, align 8, !tbaa !52
  %27 = xor i64 %26, %25
  store i64 %27, ptr %7, align 8, !tbaa !52
  %28 = load i64, ptr %24, align 8, !tbaa !50
  %29 = load i64, ptr %8, align 8, !tbaa !67
  %30 = xor i64 %29, %28
  store i64 %30, ptr %8, align 8, !tbaa !67
  store i32 2, ptr %20, align 4, !tbaa !46
  %31 = getelementptr inbounds [442 x i16], ptr %9, i64 0, i64 %19
  store i16 441, ptr %31, align 2, !tbaa !68
  %32 = load i32, ptr %12, align 4, !tbaa !70
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %12, align 4, !tbaa !70
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %18, i32 noundef %6)
  %34 = load i32, ptr %13, align 4, !tbaa !71
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds [441 x i16], ptr %14, i64 0, i64 %19
  store i16 %35, ptr %36, align 2, !tbaa !68
  %37 = trunc i32 %18 to i16
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %38
  store i16 %37, ptr %39, align 2, !tbaa !68
  %40 = add nsw i32 %34, 1
  store i32 %40, ptr %13, align 4, !tbaa !71
  %41 = load i32, ptr %20, align 4, !tbaa !46
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %42
  %44 = getelementptr inbounds [441 x i64], ptr %43, i64 0, i64 %19
  %45 = load i64, ptr %44, align 8, !tbaa !50
  %46 = load i64, ptr %7, align 8, !tbaa !52
  %47 = xor i64 %46, %45
  store i64 %47, ptr %7, align 8, !tbaa !52
  %48 = load i64, ptr %44, align 8, !tbaa !50
  %49 = load i64, ptr %8, align 8, !tbaa !67
  %50 = xor i64 %49, %48
  store i64 %50, ptr %8, align 8, !tbaa !67
  %51 = add nuw nsw i32 %17, 1
  %52 = getelementptr inbounds [442 x i16], ptr %15, i64 0, i64 %19
  %53 = load i16, ptr %52, align 2, !tbaa !68
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %56, label %16, !prof !72, !llvm.loop !73

56:                                               ; preds = %16
  ret i32 %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr nocapture noundef nonnull align 8 dereferenceable(8072) %0) local_unnamed_addr #3 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8, !prof !78

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = zext nneg i32 %3 to i64
  br label %11

8:                                                ; preds = %23, %1
  %9 = phi i64 [ 1311768467139281697, %1 ], [ %24, %23 ]
  %10 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  store i64 %9, ptr %10, align 8, !tbaa !67
  ret i64 %9

11:                                               ; preds = %5, %23
  %12 = phi i64 [ 0, %5 ], [ %25, %23 ]
  %13 = phi i64 [ 1311768467139281697, %5 ], [ %24, %23 ]
  %14 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %12
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %23, label %17, !prof !79

17:                                               ; preds = %11
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %18
  %20 = getelementptr inbounds [441 x i64], ptr %19, i64 0, i64 %12
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = xor i64 %21, %13
  br label %23

23:                                               ; preds = %11, %17
  %24 = phi i64 [ %22, %17 ], [ %13, %11 ]
  %25 = add nuw nsw i64 %12, 1
  %26 = icmp eq i64 %25, %7
  br i1 %26, label %8, label %11, !prof !80, !llvm.loop !81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZN9FullBoard9calc_hashEv(ptr nocapture noundef nonnull align 8 dereferenceable(8072) %0) local_unnamed_addr #3 align 2 !prof !82 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8, !prof !78

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = zext nneg i32 %3 to i64
  br label %28

8:                                                ; preds = %40, %1
  %9 = phi i64 [ 1311768467139281697, %1 ], [ %41, %40 ]
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !70
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [882 x i64], ptr @_ZN7Zobrist12zobrist_prisE, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14, i32 0, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [882 x i64], ptr getelementptr inbounds (%"class.boost::array.7", ptr @_ZN7Zobrist12zobrist_prisE, i64 0, i32 0, i64 1), i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !50
  %20 = xor i64 %14, %9
  %21 = xor i64 %20, %19
  %22 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = icmp eq i32 %23, 0
  %25 = xor i64 %21, -6067004223159161907
  %26 = select i1 %24, i64 %25, i64 %21, !prof !84
  %27 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  store i64 %26, ptr %27, align 8, !tbaa !52
  ret i64 %26

28:                                               ; preds = %5, %40
  %29 = phi i64 [ 0, %5 ], [ %42, %40 ]
  %30 = phi i64 [ 1311768467139281697, %5 ], [ %41, %40 ]
  %31 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %29
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %40, label %34, !prof !85

34:                                               ; preds = %28
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %35
  %37 = getelementptr inbounds [441 x i64], ptr %36, i64 0, i64 %29
  %38 = load i64, ptr %37, align 8, !tbaa !50
  %39 = xor i64 %38, %30
  br label %40

40:                                               ; preds = %28, %34
  %41 = phi i64 [ %39, %34 ], [ %30, %28 ]
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, %7
  br i1 %43, label %8, label %28, !prof !80, !llvm.loop !86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN9FullBoard8get_hashEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8072) %0) local_unnamed_addr #4 align 2 !prof !87 {
  %2 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !52
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN9FullBoard11get_ko_hashEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8072) %0) local_unnamed_addr #5 align 2 !prof !88 {
  %2 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !67
  ret i64 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9FullBoard12update_boardEii(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !89 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [441 x i32], ptr %4, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %8
  %10 = getelementptr inbounds [441 x i64], ptr %9, i64 0, i64 %5
  %11 = load i64, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !52
  %14 = xor i64 %13, %11
  store i64 %14, ptr %12, align 8, !tbaa !52
  %15 = load i64, ptr %10, align 8, !tbaa !50
  %16 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !67
  %18 = xor i64 %17, %15
  store i64 %18, ptr %16, align 8, !tbaa !67
  store i32 %1, ptr %6, align 4, !tbaa !46
  %19 = trunc i32 %2 to i16
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %21 = getelementptr inbounds [442 x i16], ptr %20, i64 0, i64 %5
  store i16 %19, ptr %21, align 2, !tbaa !68
  %22 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds [442 x i16], ptr %22, i64 0, i64 %5
  store i16 %19, ptr %23, align 2, !tbaa !68
  %24 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2)
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %27 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %5
  store i16 %25, ptr %27, align 2, !tbaa !68
  %28 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %29 = getelementptr inbounds [442 x i16], ptr %28, i64 0, i64 %5
  store i16 1, ptr %29, align 2, !tbaa !68
  %30 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds [2 x i32], ptr %30, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !70
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !70
  %35 = load i32, ptr %6, align 4, !tbaa !46
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %36
  %38 = getelementptr inbounds [441 x i64], ptr %37, i64 0, i64 %5
  %39 = load i64, ptr %38, align 8, !tbaa !50
  %40 = load i64, ptr %12, align 8, !tbaa !52
  %41 = xor i64 %40, %39
  store i64 %41, ptr %12, align 8, !tbaa !52
  %42 = load i64, ptr %38, align 8, !tbaa !50
  %43 = load i64, ptr %16, align 8, !tbaa !67
  %44 = xor i64 %43, %42
  store i64 %44, ptr %16, align 8, !tbaa !67
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %1)
  %45 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %46 = getelementptr inbounds [441 x i16], ptr %45, i64 0, i64 %5
  %47 = load i16, ptr %46, align 2, !tbaa !68
  %48 = icmp eq i32 %1, 0
  %49 = zext i1 %48 to i64
  %50 = getelementptr inbounds [2 x i32], ptr @_ZN9FastBoard9s_eyemaskE, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !70
  %52 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %53 = zext i1 %48 to i32
  br label %88

54:                                               ; preds = %172
  %55 = getelementptr inbounds [2 x %"class.boost::array.8"], ptr @_ZN7Zobrist12zobrist_prisE, i64 0, i64 %31
  %56 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %57 = getelementptr inbounds [2 x i32], ptr %56, i64 0, i64 %31
  %58 = load i32, ptr %57, align 4, !tbaa !70
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [882 x i64], ptr %55, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !50
  %62 = load i64, ptr %12, align 8, !tbaa !52
  %63 = xor i64 %62, %61
  store i64 %63, ptr %12, align 8, !tbaa !52
  %64 = add nsw i32 %58, %173
  store i32 %64, ptr %57, align 4, !tbaa !70
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [882 x i64], ptr %55, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !50
  %68 = xor i64 %67, %63
  store i64 %68, ptr %12, align 8, !tbaa !52
  %69 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !71
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %69, align 4, !tbaa !71
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !68
  %75 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %76 = getelementptr inbounds [441 x i16], ptr %75, i64 0, i64 %5
  %77 = load i16, ptr %76, align 2, !tbaa !68
  %78 = zext i16 %74 to i64
  %79 = getelementptr inbounds [441 x i16], ptr %75, i64 0, i64 %78
  store i16 %77, ptr %79, align 2, !tbaa !68
  %80 = load i16, ptr %76, align 2, !tbaa !68
  %81 = zext i16 %80 to i64
  %82 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %81
  store i16 %74, ptr %82, align 2, !tbaa !68
  %83 = load i16, ptr %23, align 2, !tbaa !68
  %84 = zext i16 %83 to i64
  %85 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !68
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %177, label %179, !prof !90

88:                                               ; preds = %3, %172
  %89 = phi i64 [ 0, %3 ], [ %175, %172 ]
  %90 = phi i32 [ undef, %3 ], [ %174, %172 ]
  %91 = phi i32 [ 0, %3 ], [ %173, %172 ]
  %92 = getelementptr inbounds [4 x i32], ptr %52, i64 0, i64 %89
  %93 = load i32, ptr %92, align 4, !tbaa !70
  %94 = add nsw i32 %93, %2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [441 x i32], ptr %4, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !46
  %98 = icmp eq i32 %97, %53
  br i1 %98, label %99, label %153, !prof !91

99:                                               ; preds = %88
  %100 = getelementptr inbounds [442 x i16], ptr %22, i64 0, i64 %95
  %101 = load i16, ptr %100, align 2, !tbaa !68
  %102 = zext i16 %101 to i64
  %103 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !68
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %172, !prof !92

106:                                              ; preds = %99
  %107 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %108 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %109 = sext i32 %97 to i64
  %110 = getelementptr inbounds [2 x i32], ptr %30, i64 0, i64 %109
  br label %111

111:                                              ; preds = %111, %106
  %112 = phi i32 [ 0, %106 ], [ %146, %111 ]
  %113 = phi i32 [ %94, %106 ], [ %149, %111 ]
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [441 x i32], ptr %4, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !46
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %117
  %119 = getelementptr inbounds [441 x i64], ptr %118, i64 0, i64 %114
  %120 = load i64, ptr %119, align 8, !tbaa !50
  %121 = load i64, ptr %12, align 8, !tbaa !52
  %122 = xor i64 %121, %120
  store i64 %122, ptr %12, align 8, !tbaa !52
  %123 = load i64, ptr %119, align 8, !tbaa !50
  %124 = load i64, ptr %16, align 8, !tbaa !67
  %125 = xor i64 %124, %123
  store i64 %125, ptr %16, align 8, !tbaa !67
  store i32 2, ptr %115, align 4, !tbaa !46
  %126 = getelementptr inbounds [442 x i16], ptr %22, i64 0, i64 %114
  store i16 441, ptr %126, align 2, !tbaa !68
  %127 = load i32, ptr %110, align 4, !tbaa !70
  %128 = add nsw i32 %127, -1
  store i32 %128, ptr %110, align 4, !tbaa !70
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %113, i32 noundef %97)
  %129 = load i32, ptr %107, align 4, !tbaa !71
  %130 = trunc i32 %129 to i16
  %131 = getelementptr inbounds [441 x i16], ptr %108, i64 0, i64 %114
  store i16 %130, ptr %131, align 2, !tbaa !68
  %132 = trunc i32 %113 to i16
  %133 = sext i32 %129 to i64
  %134 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %133
  store i16 %132, ptr %134, align 2, !tbaa !68
  %135 = add nsw i32 %129, 1
  store i32 %135, ptr %107, align 4, !tbaa !71
  %136 = load i32, ptr %115, align 4, !tbaa !46
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %137
  %139 = getelementptr inbounds [441 x i64], ptr %138, i64 0, i64 %114
  %140 = load i64, ptr %139, align 8, !tbaa !50
  %141 = load i64, ptr %12, align 8, !tbaa !52
  %142 = xor i64 %141, %140
  store i64 %142, ptr %12, align 8, !tbaa !52
  %143 = load i64, ptr %139, align 8, !tbaa !50
  %144 = load i64, ptr %16, align 8, !tbaa !67
  %145 = xor i64 %144, %143
  store i64 %145, ptr %16, align 8, !tbaa !67
  %146 = add nuw nsw i32 %112, 1
  %147 = getelementptr inbounds [442 x i16], ptr %20, i64 0, i64 %114
  %148 = load i16, ptr %147, align 2, !tbaa !68
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %94, %149
  br i1 %150, label %151, label %111, !prof !72, !llvm.loop !73

151:                                              ; preds = %111
  %152 = add nsw i32 %146, %91
  br label %172

153:                                              ; preds = %88
  %154 = icmp eq i32 %97, %1
  br i1 %154, label %155, label %172, !prof !93

155:                                              ; preds = %153
  %156 = load i16, ptr %23, align 2, !tbaa !68
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds [442 x i16], ptr %22, i64 0, i64 %95
  %159 = load i16, ptr %158, align 2, !tbaa !68
  %160 = zext i16 %159 to i32
  %161 = icmp eq i16 %156, %159
  br i1 %161, label %172, label %162, !prof !94

162:                                              ; preds = %155
  %163 = zext i16 %156 to i64
  %164 = getelementptr inbounds [442 x i16], ptr %28, i64 0, i64 %163
  %165 = load i16, ptr %164, align 2, !tbaa !68
  %166 = zext i16 %159 to i64
  %167 = getelementptr inbounds [442 x i16], ptr %28, i64 0, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !68
  %169 = icmp ult i16 %165, %168
  br i1 %169, label %171, label %170, !prof !95

170:                                              ; preds = %162
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %157, i32 noundef %160)
  br label %172

171:                                              ; preds = %162
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %160, i32 noundef %157)
  br label %172

172:                                              ; preds = %155, %171, %170, %153, %99, %151
  %173 = phi i32 [ %152, %151 ], [ %91, %99 ], [ %91, %153 ], [ %91, %170 ], [ %91, %171 ], [ %91, %155 ]
  %174 = phi i32 [ %94, %151 ], [ %90, %99 ], [ %90, %153 ], [ %90, %170 ], [ %90, %171 ], [ %90, %155 ]
  %175 = add nuw nsw i64 %89, 1
  %176 = icmp eq i64 %175, 4
  br i1 %176, label %54, label %88, !prof !96, !llvm.loop !97

177:                                              ; preds = %54
  %178 = tail call noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2)
  br label %179

179:                                              ; preds = %177, %54
  %180 = zext i16 %47 to i32
  %181 = and i32 %51, %180
  %182 = icmp eq i32 %173, 1
  %183 = icmp ne i32 %181, 0
  %184 = select i1 %182, i1 %183, i1 false, !prof !98
  %185 = select i1 %184, i32 %174, i32 -1, !prof !99
  ret i32 %185
}

declare noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #2

declare void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FullBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !100 {
  tail call void @_ZN9FastBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1)
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !67
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i64 noundef %4, i64 noundef %6)
  ret void
}

declare void @_ZN9FastBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #2

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !76 {
  tail call void @_ZN9FastBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1)
  %3 = tail call noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0)
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !77
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26, !prof !78

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %22
  %11 = phi i64 [ 0, %7 ], [ %24, %22 ]
  %12 = phi i64 [ 1311768467139281697, %7 ], [ %23, %22 ]
  %13 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %22, label %16, !prof !79

16:                                               ; preds = %10
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %17
  %19 = getelementptr inbounds [441 x i64], ptr %18, i64 0, i64 %11
  %20 = load i64, ptr %19, align 8, !tbaa !50
  %21 = xor i64 %20, %12
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i64 [ %21, %16 ], [ %12, %10 ]
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !prof !80, !llvm.loop !81

26:                                               ; preds = %22, %2
  %27 = phi i64 [ 1311768467139281697, %2 ], [ %23, %22 ]
  %28 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  store i64 %27, ptr %28, align 8, !tbaa !67
  ret void
}

declare void @_ZN9FastBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN9FullBoard15predict_ko_hashEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8072) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = alloca %"class.std::vector.9", align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::allocator.13", align 1
  %7 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !67
  %9 = icmp eq i32 %2, -1
  br i1 %9, label %119, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %15
  %17 = getelementptr inbounds [441 x i64], ptr %16, i64 0, i64 %12
  %18 = load i64, ptr %17, align 8, !tbaa !50
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %19
  %21 = getelementptr inbounds [441 x i64], ptr %20, i64 0, i64 %12
  %22 = load i64, ptr %21, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !77
  %25 = sext i32 %24 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  call void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %26 = xor i64 %18, %22
  %27 = xor i64 %26, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %28 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %4, align 8, !tbaa !103
  %30 = icmp eq i32 %1, 0
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %33 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %34 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %51

35:                                               ; preds = %115
  %36 = load ptr, ptr %4, align 8, !tbaa !103
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  %41 = ptrtoint ptr %40 to i64
  %42 = ptrtoint ptr %36 to i64
  %43 = sub i64 %41, %42
  %44 = ashr exact i64 %43, 3
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i64, ptr %40, i64 %45
  call void @_ZdlPv(ptr noundef %46) #11
  store ptr null, ptr %4, align 8
  %47 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %48, align 8
  %49 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %49, align 8
  store ptr null, ptr %39, align 8
  br label %50

50:                                               ; preds = %35, %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %119

51:                                               ; preds = %10, %115
  %52 = phi i64 [ 0, %10 ], [ %117, %115 ]
  %53 = phi i64 [ %27, %10 ], [ %116, %115 ]
  %54 = getelementptr inbounds [4 x i32], ptr %28, i64 0, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !70
  %56 = add nsw i32 %55, %2
  %57 = sext i32 %56 to i64
  %58 = sdiv i64 %57, 64
  %59 = getelementptr inbounds i64, ptr %29, i64 %58
  %60 = srem i64 %57, 64
  %61 = ashr i64 %60, 63
  %62 = getelementptr inbounds i64, ptr %59, i64 %61
  %63 = and i64 %60, 63
  %64 = shl nuw i64 1, %63
  %65 = load i64, ptr %62, align 8, !tbaa !108
  %66 = and i64 %64, %65
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %51
  %69 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %57
  %70 = load i32, ptr %69, align 4, !tbaa !46
  %71 = icmp eq i32 %70, %31
  br i1 %71, label %72, label %111

72:                                               ; preds = %68
  %73 = getelementptr inbounds [442 x i16], ptr %33, i64 0, i64 %57
  %74 = load i16, ptr %73, align 2, !tbaa !68
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !68
  %78 = icmp ult i16 %77, 2
  br i1 %78, label %79, label %111

79:                                               ; preds = %72, %105
  %80 = phi i64 [ %106, %105 ], [ %53, %72 ]
  %81 = phi i32 [ %109, %105 ], [ %56, %72 ]
  %82 = sext i32 %81 to i64
  %83 = sdiv i64 %82, 64
  %84 = getelementptr inbounds i64, ptr %29, i64 %83
  %85 = srem i64 %82, 64
  %86 = ashr i64 %85, 63
  %87 = getelementptr inbounds i64, ptr %84, i64 %86
  %88 = and i64 %85, 63
  %89 = shl nuw i64 1, %88
  %90 = load i64, ptr %87, align 8, !tbaa !108
  %91 = and i64 %89, %90
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %79
  %94 = or i64 %89, %90
  store i64 %94, ptr %87, align 8, !tbaa !108
  %95 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %82
  %96 = load i32, ptr %95, align 4, !tbaa !46
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [4 x %"class.boost::array.6"], ptr @_ZN7Zobrist7zobristE, i64 0, i64 %97
  %99 = getelementptr inbounds [441 x i64], ptr %98, i64 0, i64 %82
  %100 = load i64, ptr %99, align 8, !tbaa !50
  %101 = getelementptr inbounds [441 x i64], ptr getelementptr inbounds (%"class.boost::array.5", ptr @_ZN7Zobrist7zobristE, i64 0, i32 0, i64 2), i64 0, i64 %82
  %102 = load i64, ptr %101, align 8, !tbaa !50
  %103 = xor i64 %100, %102
  %104 = xor i64 %103, %80
  br label %105

105:                                              ; preds = %79, %93
  %106 = phi i64 [ %104, %93 ], [ %80, %79 ]
  %107 = getelementptr inbounds [442 x i16], ptr %34, i64 0, i64 %82
  %108 = load i16, ptr %107, align 2, !tbaa !68
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %56, %109
  br i1 %110, label %111, label %79, !llvm.loop !110

111:                                              ; preds = %105, %72, %68
  %112 = phi i64 [ %53, %72 ], [ %53, %68 ], [ %106, %105 ]
  %113 = load i64, ptr %62, align 8, !tbaa !108
  %114 = or i64 %113, %64
  store i64 %114, ptr %62, align 8, !tbaa !108
  br label %115

115:                                              ; preds = %111, %51
  %116 = phi i64 [ %112, %111 ], [ %53, %51 ]
  %117 = add nuw nsw i64 %52, 1
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %35, label %51, !llvm.loop !111

119:                                              ; preds = %3, %50
  %120 = phi i64 [ %116, %50 ], [ %8, %3 ]
  ret i64 %120
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  store ptr null, ptr %0, align 8, !tbaa !103
  %5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !113
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !103
  %7 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !113
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !105
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %23, label %10, !prof !114

10:                                               ; preds = %4
  %11 = add i64 %1, 63
  %12 = lshr i64 %11, 6
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #12
  %15 = getelementptr inbounds i64, ptr %14, i64 %12
  store ptr %15, ptr %8, align 8, !tbaa !105
  store ptr %14, ptr %0, align 8
  store i32 0, ptr %5, align 8
  %16 = sdiv i64 %1, 64
  %17 = getelementptr inbounds i64, ptr %14, i64 %16
  %18 = srem i64 %1, 64
  %19 = ashr i64 %18, 63
  %20 = getelementptr inbounds i64, ptr %17, i64 %19
  %21 = trunc i64 %18 to i32
  %22 = and i32 %21, 63
  store ptr %20, ptr %6, align 8
  store i32 %22, ptr %7, align 8
  br label %23

23:                                               ; preds = %10, %4
  %24 = load ptr, ptr %0, align 8, !tbaa !103
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !114

26:                                               ; preds = %23
  %27 = load i8, ptr %2, align 1, !tbaa !101, !range !115, !noundef !116
  %28 = load ptr, ptr %8, align 8, !tbaa !105
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %29, %30
  %32 = sub nsw i8 0, %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %24, i8 %32, i64 %31, i1 false), !prof !117
  br label %33

33:                                               ; preds = %23, %26
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard16count_plibertiesEi, i64 30971614}
!36 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard13add_neighbourEii, i64 30971614}
!37 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard16remove_neighbourEii, i64 7769355}
!38 = !{ptr @_ZN9FullBoard12update_boardEii, ptr @_ZN9FastBoard13merge_stringsEii, i64 22715198}
!39 = !{ptr @_ZN9FullBoard13display_boardEi, ptr @_ZN9FastBoard13display_boardEi, i64 970}
!40 = !{ptr @_ZN9FullBoard13display_boardEi, ptr @_ZN5Utils8myprintfEPKcz, i64 970}
!41 = !{ptr @_ZN9FullBoard11reset_boardEi, ptr @_ZN9FastBoard11reset_boardEi, i64 29}
!42 = !{ptr @_ZN9FullBoard11reset_boardEi, ptr @_ZN9FullBoard9calc_hashEv, i64 29}
!43 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_Znwm, i64 126015}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"_ZTSN9FastBoard8square_tE", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !51, i64 0}
!51 = !{!"long long", !48, i64 0}
!52 = !{!53, !51, i64 8056}
!53 = !{!"_ZTS9FullBoard", !54, i64 0, !51, i64 8056, !51, i64 8064}
!54 = !{!"_ZTS9FastBoard", !55, i64 0, !55, i64 882, !56, i64 1764, !56, i64 1768, !56, i64 1772, !57, i64 1776, !58, i64 3540, !58, i64 4424, !58, i64 5308, !58, i64 6192, !55, i64 7076, !59, i64 7960, !60, i64 7976, !61, i64 8008, !61, i64 8016, !62, i64 8024, !56, i64 8048}
!55 = !{!"_ZTSN5boost5arrayItLm441EEE", !48, i64 0}
!56 = !{!"int", !48, i64 0}
!57 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !48, i64 0}
!58 = !{!"_ZTSN5boost5arrayItLm442EEE", !48, i64 0}
!59 = !{!"_ZTSN5boost5arrayIiLm4EEE", !48, i64 0}
!60 = !{!"_ZTSN5boost5arrayIiLm8EEE", !48, i64 0}
!61 = !{!"_ZTSN5boost5arrayIiLm2EEE", !48, i64 0}
!62 = !{!"_ZTSSt6vectorIiSaIiEE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"any pointer", !48, i64 0}
!67 = !{!53, !51, i64 8064}
!68 = !{!69, !69, i64 0}
!69 = !{!"short", !48, i64 0}
!70 = !{!56, !56, i64 0}
!71 = !{!54, !56, i64 1764}
!72 = !{!"branch_weights", i32 4284449, i32 3484906}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!"function_entry_count", i64 29}
!77 = !{!54, !56, i64 1772}
!78 = !{!"branch_weights", i32 231, i32 1}
!79 = !{!"branch_weights", i32 1840, i32 7109}
!80 = !{!"branch_weights", i32 231, i32 71361}
!81 = distinct !{!81, !74, !75}
!82 = !{!"function_entry_count", i64 58}
!83 = !{!54, !56, i64 1768}
!84 = !{!"branch_weights", i32 58, i32 0}
!85 = !{!"branch_weights", i32 3680, i32 14218}
!86 = distinct !{!86, !74, !75}
!87 = !{!"function_entry_count", i64 38472780}
!88 = !{!"function_entry_count", i64 2910}
!89 = !{!"function_entry_count", i64 30971614}
!90 = !{!"branch_weights", i32 0, i32 30971614}
!91 = !{!"branch_weights", i32 30720237, i32 93166219}
!92 = !{!"branch_weights", i32 4284449, i32 26435788}
!93 = !{!"branch_weights", i32 25774757, i32 67391462}
!94 = !{!"branch_weights", i32 3059559, i32 22715198}
!95 = !{!"branch_weights", i32 12413040, i32 10302158}
!96 = !{!"branch_weights", i32 30971614, i32 92914842}
!97 = distinct !{!97, !74, !75}
!98 = !{!"branch_weights", i32 2883926, i32 28087688}
!99 = !{!"branch_weights", i32 1302960, i32 29668654}
!100 = !{!"function_entry_count", i64 970}
!101 = !{!102, !102, i64 0}
!102 = !{!"bool", !48, i64 0}
!103 = !{!104, !66, i64 0}
!104 = !{!"_ZTSSt18_Bit_iterator_base", !66, i64 0, !56, i64 8}
!105 = !{!106, !66, i64 32}
!106 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !107, i64 0, !107, i64 16, !66, i64 32}
!107 = !{!"_ZTSSt13_Bit_iterator", !104, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"long", !48, i64 0}
!110 = distinct !{!110, !74, !75}
!111 = distinct !{!111, !74, !75}
!112 = !{!"function_entry_count", i64 126015}
!113 = !{!104, !56, i64 8}
!114 = !{!"branch_weights", i32 0, i32 126015}
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = !{!"VP", i32 1, i64 126015, i64 16, i64 126008, i64 33, i64 7}
