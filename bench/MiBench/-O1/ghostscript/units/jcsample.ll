; ModuleID = 'jcsample.c'
source_filename = "jcsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x ptr] }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_downsampler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 104) #5
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_downsample, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_downsampler, ptr %5, i64 0, i32 1
  store ptr @sep_downsample, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.jpeg_downsampler, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 23, ptr %14, align 8, !tbaa !24
  %15 = load ptr, ptr %13, align 8, !tbaa !26
  tail call void %15(ptr noundef nonnull %0) #5
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %18 = load i32, ptr %17, align 4, !tbaa !27
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  br label %28

28:                                               ; preds = %20, %76
  %29 = phi i64 [ 0, %20 ], [ %77, %76 ]
  %30 = phi ptr [ %22, %20 ], [ %78, %76 ]
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !29
  %33 = load i32, ptr %23, align 8, !tbaa !31
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !32
  %38 = load i32, ptr %24, align 4, !tbaa !33
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %29
  store ptr @fullsize_downsample, ptr %41, align 8, !tbaa !34
  br label %76

42:                                               ; preds = %35, %28
  %43 = shl nsw i32 %32, 1
  %44 = icmp eq i32 %43, %33
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !32
  %48 = load i32, ptr %25, align 4, !tbaa !33
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %29
  store ptr @h2v1_downsample, ptr %51, align 8, !tbaa !34
  br label %76

52:                                               ; preds = %45
  br i1 %44, label %53, label %61

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !32
  %56 = shl nsw i32 %55, 1
  %57 = load i32, ptr %26, align 4, !tbaa !33
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %29
  store ptr @h2v2_downsample, ptr %60, align 8, !tbaa !34
  br label %76

61:                                               ; preds = %42, %53, %52
  %62 = srem i32 %33, %32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, ptr %27, align 4, !tbaa !33
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !32
  %68 = srem i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %29
  store ptr @int_downsample, ptr %71, align 8, !tbaa !34
  br label %76

72:                                               ; preds = %64, %61
  %73 = load ptr, ptr %0, align 8, !tbaa !23
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 37, ptr %74, align 8, !tbaa !24
  %75 = load ptr, ptr %73, align 8, !tbaa !26
  tail call void %75(ptr noundef nonnull %0) #5
  br label %76

76:                                               ; preds = %40, %59, %72, %70, %50
  %77 = add nuw nsw i64 %29, 1
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 1
  %79 = load i32, ptr %17, align 4, !tbaa !27
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %28, label %82, !llvm.loop !35

82:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @start_pass_downsample(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sep_downsample(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !27
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = zext i32 %2 to i64
  br label %15

15:                                               ; preds = %11, %15
  %16 = phi i64 [ 0, %11 ], [ %30, %15 ]
  %17 = phi ptr [ %13, %11 ], [ %31, %15 ]
  %18 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds ptr, ptr %19, i64 %14
  %21 = getelementptr inbounds ptr, ptr %3, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !32
  %25 = mul i32 %24, %4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = getelementptr inbounds %struct.my_downsampler, ptr %7, i64 0, i32 1, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  tail call void %29(ptr noundef %0, ptr noundef %17, ptr noundef %20, ptr noundef %27) #5
  %30 = add nuw nsw i64 %16, 1
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 1
  %32 = load i32, ptr %8, align 4, !tbaa !27
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %15, label %35, !llvm.loop !37

35:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !38
  tail call void @jcopy_sample_rows(ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef %8) #5
  %9 = load i32, ptr %5, align 4, !tbaa !33
  %10 = load i32, ptr %7, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = shl i32 %12, 3
  %14 = sub i32 %13, %10
  %15 = icmp sgt i32 %14, 0
  %16 = icmp sgt i32 %9, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = zext i32 %10 to i64
  %20 = xor i32 %10, -1
  %21 = add i32 %13, %20
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext i32 %9 to i64
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i64 [ 0, %18 ], [ %32, %25 ]
  %27 = getelementptr inbounds ptr, ptr %3, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !40
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !41

34:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !39
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = shl i32 %6, 4
  %13 = sub i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = xor i32 %11, -1
  %20 = add i32 %12, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext i32 %9 to i64
  br label %24

24:                                               ; preds = %24, %17
  %25 = phi i64 [ 0, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !40
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !41

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = icmp eq i32 %7, 0
  br label %39

39:                                               ; preds = %37, %65
  %40 = phi i64 [ 0, %37 ], [ %66, %65 ]
  br i1 %38, label %65, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds ptr, ptr %2, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds ptr, ptr %3, i64 %40
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %61, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %60, %46 ], [ %45, %41 ]
  %49 = phi ptr [ %62, %46 ], [ %43, %41 ]
  %50 = phi i32 [ %63, %46 ], [ 0, %41 ]
  %51 = load i8, ptr %49, align 1, !tbaa !40
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !40
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %47, %52
  %57 = add nuw nsw i32 %56, %55
  %58 = lshr i32 %57, 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %59, ptr %48, align 1, !tbaa !40
  %61 = xor i32 %47, 1
  %62 = getelementptr inbounds i8, ptr %49, i64 2
  %63 = add nuw i32 %50, 1
  %64 = icmp eq i32 %63, %7
  br i1 %64, label %65, label %46, !llvm.loop !42

65:                                               ; preds = %46, %39
  %66 = add nuw nsw i64 %40, 1
  %67 = load i32, ptr %34, align 4, !tbaa !32
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %39, label %70, !llvm.loop !43

70:                                               ; preds = %65, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !39
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !38
  %12 = shl i32 %6, 4
  %13 = sub i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = xor i32 %11, -1
  %20 = add i32 %12, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext i32 %9 to i64
  br label %24

24:                                               ; preds = %24, %17
  %25 = phi i64 [ 0, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !40
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !41

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = icmp eq i32 %7, 0
  br label %39

39:                                               ; preds = %37, %78
  %40 = phi i64 [ 0, %37 ], [ %80, %78 ]
  %41 = phi i64 [ 0, %37 ], [ %79, %78 ]
  br i1 %38, label %78, label %42

42:                                               ; preds = %39
  %43 = or disjoint i64 %41, 1
  %44 = getelementptr inbounds ptr, ptr %2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds ptr, ptr %2, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds ptr, ptr %3, i64 %40
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %42, %50
  %51 = phi i32 [ %73, %50 ], [ 1, %42 ]
  %52 = phi ptr [ %72, %50 ], [ %49, %42 ]
  %53 = phi ptr [ %75, %50 ], [ %45, %42 ]
  %54 = phi ptr [ %74, %50 ], [ %47, %42 ]
  %55 = phi i32 [ %76, %50 ], [ 0, %42 ]
  %56 = load i8, ptr %54, align 1, !tbaa !40
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !40
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr %53, align 1, !tbaa !40
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i8, ptr %53, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !40
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %51, %57
  %67 = add nuw nsw i32 %66, %60
  %68 = add nuw nsw i32 %67, %62
  %69 = add nuw nsw i32 %68, %65
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %71, ptr %52, align 1, !tbaa !40
  %73 = xor i32 %51, 3
  %74 = getelementptr inbounds i8, ptr %54, i64 2
  %75 = getelementptr inbounds i8, ptr %53, i64 2
  %76 = add nuw i32 %55, 1
  %77 = icmp eq i32 %76, %7
  br i1 %77, label %78, label %50, !llvm.loop !44

78:                                               ; preds = %50, %39
  %79 = add nuw nsw i64 %41, 2
  %80 = add nuw nsw i64 %40, 1
  %81 = load i32, ptr %34, align 4, !tbaa !32
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %39, label %84, !llvm.loop !45

84:                                               ; preds = %78, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @int_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !39
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = sdiv i32 %9, %11
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %14 = load i32, ptr %13, align 4, !tbaa !33
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !32
  %17 = sdiv i32 %14, %16
  %18 = mul nsw i32 %17, %12
  %19 = sdiv i32 %18, 2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !38
  %22 = mul i32 %12, %7
  %23 = sub i32 %22, %21
  %24 = icmp sgt i32 %23, 0
  %25 = icmp sgt i32 %14, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = zext i32 %21 to i64
  %29 = xor i32 %21, -1
  %30 = add i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, 1
  %33 = zext i32 %14 to i64
  br label %34

34:                                               ; preds = %34, %27
  %35 = phi i64 [ 0, %27 ], [ %41, %34 ]
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %37, i64 %28
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %38, i8 %40, i64 %32, i1 false), !tbaa !40
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !41

43:                                               ; preds = %34, %4
  %44 = load i32, ptr %15, align 4, !tbaa !32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %43
  %47 = icmp eq i32 %7, 0
  %48 = icmp sgt i32 %17, 0
  %49 = icmp sgt i32 %12, 0
  %50 = sext i32 %19 to i64
  %51 = sext i32 %18 to i64
  %52 = sext i32 %17 to i64
  %53 = zext nneg i32 %17 to i64
  br label %54

54:                                               ; preds = %46, %97
  %55 = phi i64 [ 0, %46 ], [ %99, %97 ]
  %56 = phi i64 [ 0, %46 ], [ %98, %97 ]
  br i1 %47, label %97, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds ptr, ptr %3, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = getelementptr ptr, ptr %2, i64 %56
  br label %61

61:                                               ; preds = %57, %88
  %62 = phi ptr [ %93, %88 ], [ %59, %57 ]
  %63 = phi i32 [ %95, %88 ], [ 0, %57 ]
  %64 = phi i32 [ %94, %88 ], [ 0, %57 ]
  br i1 %48, label %65, label %88

65:                                               ; preds = %61
  %66 = zext i32 %63 to i64
  br label %67

67:                                               ; preds = %65, %84
  %68 = phi i64 [ 0, %65 ], [ %86, %84 ]
  %69 = phi i64 [ 0, %65 ], [ %85, %84 ]
  br i1 %49, label %70, label %84

70:                                               ; preds = %67
  %71 = getelementptr ptr, ptr %60, i64 %68
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds i8, ptr %72, i64 %66
  br label %74

74:                                               ; preds = %70, %74
  %75 = phi i64 [ %81, %74 ], [ %69, %70 ]
  %76 = phi ptr [ %78, %74 ], [ %73, %70 ]
  %77 = phi i32 [ %82, %74 ], [ 0, %70 ]
  %78 = getelementptr inbounds i8, ptr %76, i64 1
  %79 = load i8, ptr %76, align 1, !tbaa !40
  %80 = zext i8 %79 to i64
  %81 = add nsw i64 %75, %80
  %82 = add nuw nsw i32 %77, 1
  %83 = icmp eq i32 %82, %12
  br i1 %83, label %84, label %74, !llvm.loop !46

84:                                               ; preds = %74, %67
  %85 = phi i64 [ %69, %67 ], [ %81, %74 ]
  %86 = add nuw nsw i64 %68, 1
  %87 = icmp eq i64 %86, %53
  br i1 %87, label %88, label %67, !llvm.loop !47

88:                                               ; preds = %84, %61
  %89 = phi i64 [ 0, %61 ], [ %85, %84 ]
  %90 = add nsw i64 %89, %50
  %91 = sdiv i64 %90, %51
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %92, ptr %62, align 1, !tbaa !40
  %94 = add nuw i32 %64, 1
  %95 = add i32 %63, %12
  %96 = icmp eq i32 %94, %7
  br i1 %96, label %97, label %61, !llvm.loop !48

97:                                               ; preds = %88, %54
  %98 = add i64 %56, %52
  %99 = add nuw nsw i64 %55, 1
  %100 = load i32, ptr %15, align 4, !tbaa !32
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %54, label %103, !llvm.loop !49

103:                                              ; preds = %97, %43
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 472}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 24}
!19 = !{!"jpeg_downsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !10, i64 16}
!22 = !{!6, !10, i64 260}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!25, !7, i64 0}
!27 = !{!6, !10, i64 68}
!28 = !{!6, !7, i64 80}
!29 = !{!30, !10, i64 8}
!30 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!31 = !{!6, !10, i64 304}
!32 = !{!30, !10, i64 12}
!33 = !{!6, !10, i64 308}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !36}
!38 = !{!6, !10, i64 40}
!39 = !{!30, !10, i64 28}
!40 = !{!8, !8, i64 0}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = distinct !{!48, !36}
!49 = distinct !{!49, !36}
