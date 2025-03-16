; ModuleID = 'src/jcsample.c'
source_filename = "src/jcsample.c"
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
  br i1 %19, label %20, label %96

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  br label %30

30:                                               ; preds = %20, %87
  %31 = phi i64 [ 0, %20 ], [ %89, %87 ]
  %32 = phi i32 [ 1, %20 ], [ %88, %87 ]
  %33 = phi ptr [ %22, %20 ], [ %90, %87 ]
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !29
  %36 = load i32, ptr %23, align 8, !tbaa !31
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !32
  %41 = load i32, ptr %24, align 4, !tbaa !33
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, ptr %29, align 8, !tbaa !34
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %31
  br i1 %45, label %48, label %47

47:                                               ; preds = %43
  store ptr @fullsize_smooth_downsample, ptr %46, align 8, !tbaa !35
  store i32 1, ptr %8, align 8, !tbaa !21
  br label %87

48:                                               ; preds = %43
  store ptr @fullsize_downsample, ptr %46, align 8, !tbaa !35
  br label %87

49:                                               ; preds = %38, %30
  %50 = shl nsw i32 %35, 1
  %51 = icmp eq i32 %50, %36
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !32
  %55 = load i32, ptr %25, align 4, !tbaa !33
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %31
  store ptr @h2v1_downsample, ptr %58, align 8, !tbaa !35
  br label %87

59:                                               ; preds = %52
  br i1 %51, label %60, label %72

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !32
  %63 = shl nsw i32 %62, 1
  %64 = load i32, ptr %26, align 4, !tbaa !33
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, ptr %28, align 8, !tbaa !34
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %31
  br i1 %68, label %71, label %70

70:                                               ; preds = %66
  store ptr @h2v2_smooth_downsample, ptr %69, align 8, !tbaa !35
  store i32 1, ptr %8, align 8, !tbaa !21
  br label %87

71:                                               ; preds = %66
  store ptr @h2v2_downsample, ptr %69, align 8, !tbaa !35
  br label %87

72:                                               ; preds = %49, %60, %59
  %73 = srem i32 %36, %35
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, ptr %27, align 4, !tbaa !33
  %77 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !32
  %79 = srem i32 %76, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.my_downsampler, ptr %5, i64 0, i32 1, i64 %31
  store ptr @int_downsample, ptr %82, align 8, !tbaa !35
  br label %87

83:                                               ; preds = %75, %72
  %84 = load ptr, ptr %0, align 8, !tbaa !23
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 37, ptr %85, align 8, !tbaa !24
  %86 = load ptr, ptr %84, align 8, !tbaa !26
  tail call void %86(ptr noundef nonnull %0) #5
  br label %87

87:                                               ; preds = %48, %47, %71, %70, %83, %81, %57
  %88 = phi i32 [ %32, %47 ], [ %32, %48 ], [ 0, %57 ], [ %32, %70 ], [ %32, %71 ], [ 0, %81 ], [ %32, %83 ]
  %89 = add nuw nsw i64 %31, 1
  %90 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 1
  %91 = load i32, ptr %17, align 4, !tbaa !27
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %30, label %94, !llvm.loop !36

94:                                               ; preds = %87
  %95 = icmp ne i32 %88, 0
  br label %96

96:                                               ; preds = %94, %16
  %97 = phi i1 [ true, %16 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %99 = load i32, ptr %98, align 8, !tbaa !34
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i1 true, i1 %97
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr %0, align 8, !tbaa !23
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 98, ptr %104, align 8, !tbaa !24
  %105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !38
  tail call void %106(ptr noundef nonnull %0, i32 noundef 0) #5
  br label %107

107:                                              ; preds = %102, %96
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
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 %14
  %21 = getelementptr inbounds ptr, ptr %3, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !32
  %25 = mul i32 %24, %4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = getelementptr inbounds %struct.my_downsampler, ptr %7, i64 0, i32 1, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  tail call void %29(ptr noundef %0, ptr noundef %17, ptr noundef %20, ptr noundef %27) #5
  %30 = add nuw nsw i64 %16, 1
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 1
  %32 = load i32, ptr %8, align 4, !tbaa !27
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %15, label %35, !llvm.loop !39

35:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @fullsize_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds ptr, ptr %2, i64 -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = sub i32 %7, %12
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %10, -2
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = add nsw i32 %10, 2
  %19 = zext i32 %12 to i64
  %20 = xor i32 %12, -1
  %21 = add i32 %7, %20
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext i32 %18 to i64
  br label %25

25:                                               ; preds = %25, %17
  %26 = phi i64 [ 0, %17 ], [ %32, %25 ]
  %27 = getelementptr inbounds ptr, ptr %8, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !42
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !43

34:                                               ; preds = %25, %4
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 9
  %39 = sub nsw i64 65536, %38
  %40 = shl nsw i32 %36, 6
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !32
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %34
  %46 = add i32 %7, -2
  br label %47

47:                                               ; preds = %45, %126
  %48 = phi i64 [ 0, %45 ], [ %55, %126 ]
  %49 = getelementptr inbounds ptr, ptr %3, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %2, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = getelementptr ptr, ptr %51, i64 -1
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = add nuw nsw i64 %48, 1
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %54, align 1, !tbaa !42
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %57, i64 1
  %62 = load i8, ptr %57, align 1, !tbaa !42
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %63, %60
  %65 = load i8, ptr %52, align 1, !tbaa !42
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %64, %66
  %68 = getelementptr inbounds i8, ptr %52, i64 1
  %69 = zext i8 %65 to i64
  %70 = load i8, ptr %58, align 1, !tbaa !42
  %71 = zext i8 %70 to i32
  %72 = load i8, ptr %61, align 1, !tbaa !42
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %73, %71
  %75 = load i8, ptr %68, align 1, !tbaa !42
  %76 = zext i8 %75 to i32
  %77 = add nuw nsw i32 %74, %76
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw nsw i32 %67, 1
  %80 = zext nneg i32 %79 to i64
  %81 = sub nsw i64 %80, %69
  %82 = add nsw i64 %81, %78
  %83 = mul nsw i64 %39, %69
  %84 = mul i64 %82, %41
  %85 = add nsw i64 %83, 32768
  %86 = add i64 %85, %84
  %87 = lshr i64 %86, 16
  %88 = trunc i64 %87 to i8
  store i8 %88, ptr %50, align 1, !tbaa !42
  %89 = getelementptr inbounds i8, ptr %50, i64 1
  br label %90

90:                                               ; preds = %47, %90
  %91 = phi ptr [ %89, %47 ], [ %124, %90 ]
  %92 = phi i32 [ %67, %47 ], [ %93, %90 ]
  %93 = phi i32 [ %77, %47 ], [ %110, %90 ]
  %94 = phi i32 [ %46, %47 ], [ %123, %90 ]
  %95 = phi ptr [ %61, %47 ], [ %102, %90 ]
  %96 = phi ptr [ %58, %47 ], [ %101, %90 ]
  %97 = phi ptr [ %68, %47 ], [ %98, %90 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %97, align 1, !tbaa !42
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds i8, ptr %96, i64 1
  %102 = getelementptr inbounds i8, ptr %95, i64 1
  %103 = load i8, ptr %101, align 1, !tbaa !42
  %104 = zext i8 %103 to i32
  %105 = load i8, ptr %102, align 1, !tbaa !42
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %106, %104
  %108 = load i8, ptr %98, align 1, !tbaa !42
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %107, %109
  %111 = zext nneg i32 %92 to i64
  %112 = zext nneg i32 %93 to i64
  %113 = zext nneg i32 %110 to i64
  %114 = add nuw nsw i64 %111, %112
  %115 = sub nsw i64 %114, %100
  %116 = add nsw i64 %115, %113
  %117 = mul nsw i64 %39, %100
  %118 = mul i64 %116, %41
  %119 = add nsw i64 %117, 32768
  %120 = add i64 %119, %118
  %121 = lshr i64 %120, 16
  %122 = trunc i64 %121 to i8
  store i8 %122, ptr %91, align 1, !tbaa !42
  %123 = add i32 %94, -1
  %124 = getelementptr inbounds i8, ptr %91, i64 1
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %126, label %90, !llvm.loop !44

126:                                              ; preds = %90
  %127 = load i8, ptr %98, align 1, !tbaa !42
  %128 = zext i8 %127 to i64
  %129 = zext nneg i32 %93 to i64
  %130 = shl nuw nsw i32 %110, 1
  %131 = zext nneg i32 %130 to i64
  %132 = add nuw nsw i64 %131, %129
  %133 = sub nsw i64 %132, %128
  %134 = mul nsw i64 %39, %128
  %135 = mul i64 %133, %41
  %136 = add nsw i64 %134, 32768
  %137 = add i64 %136, %135
  %138 = lshr i64 %137, 16
  %139 = trunc i64 %138 to i8
  store i8 %139, ptr %124, align 1, !tbaa !42
  %140 = load i32, ptr %42, align 4, !tbaa !32
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %55, %141
  br i1 %142, label %47, label %143, !llvm.loop !45

143:                                              ; preds = %126, %34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !41
  tail call void @jcopy_sample_rows(ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef %8) #5
  %9 = load i32, ptr %5, align 4, !tbaa !33
  %10 = load i32, ptr %7, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !40
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
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !42
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !43

34:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !41
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
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !42
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !43

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
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %3, i64 %40
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %61, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %60, %46 ], [ %45, %41 ]
  %49 = phi ptr [ %62, %46 ], [ %43, %41 ]
  %50 = phi i32 [ %63, %46 ], [ 0, %41 ]
  %51 = load i8, ptr %49, align 1, !tbaa !42
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !42
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %47, %52
  %57 = add nuw nsw i32 %56, %55
  %58 = lshr i32 %57, 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %59, ptr %48, align 1, !tbaa !42
  %61 = xor i32 %47, 1
  %62 = getelementptr inbounds i8, ptr %49, i64 2
  %63 = add nuw i32 %50, 1
  %64 = icmp eq i32 %63, %7
  br i1 %64, label %65, label %46, !llvm.loop !46

65:                                               ; preds = %46, %39
  %66 = add nuw nsw i64 %40, 1
  %67 = load i32, ptr %34, align 4, !tbaa !32
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %39, label %70, !llvm.loop !47

70:                                               ; preds = %65, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds ptr, ptr %2, i64 -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = shl i32 %6, 4
  %14 = sub i32 %13, %12
  %15 = icmp sgt i32 %14, 0
  %16 = icmp sgt i32 %10, -2
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = add nsw i32 %10, 2
  %20 = zext i32 %12 to i64
  %21 = xor i32 %12, -1
  %22 = add i32 %13, %21
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 1
  %25 = zext i32 %19 to i64
  br label %26

26:                                               ; preds = %26, %18
  %27 = phi i64 [ 0, %18 ], [ %33, %26 ]
  %28 = getelementptr inbounds ptr, ptr %8, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds i8, ptr %29, i64 %20
  %31 = getelementptr inbounds i8, ptr %30, i64 -1
  %32 = load i8, ptr %31, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, i8 %32, i64 %24, i1 false), !tbaa !42
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !43

35:                                               ; preds = %26, %4
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %37 = load i32, ptr %36, align 8, !tbaa !34
  %38 = mul i32 %37, -80
  %39 = add i32 %38, 16384
  %40 = zext i32 %39 to i64
  %41 = shl nsw i32 %37, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %257

46:                                               ; preds = %35
  %47 = add i32 %7, -2
  br label %48

48:                                               ; preds = %46, %196
  %49 = phi i64 [ 0, %46 ], [ %253, %196 ]
  %50 = phi i64 [ 0, %46 ], [ %60, %196 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %2, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = or disjoint i64 %50, 1
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = getelementptr ptr, ptr %53, i64 -1
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = add nuw nsw i64 %50, 2
  %61 = getelementptr inbounds ptr, ptr %2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = load i8, ptr %54, align 1, !tbaa !42
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds i8, ptr %54, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !42
  %67 = zext i8 %66 to i32
  %68 = load i8, ptr %57, align 1, !tbaa !42
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds i8, ptr %57, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !42
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %69, %64
  %74 = add nuw nsw i32 %73, %67
  %75 = add nuw nsw i32 %74, %72
  %76 = zext nneg i32 %75 to i64
  %77 = load i8, ptr %59, align 1, !tbaa !42
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds i8, ptr %59, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !42
  %81 = zext i8 %80 to i32
  %82 = load i8, ptr %62, align 1, !tbaa !42
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds i8, ptr %62, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !42
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds i8, ptr %54, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !42
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds i8, ptr %57, i64 2
  %91 = load i8, ptr %90, align 1, !tbaa !42
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %69, %64
  %94 = add nuw nsw i32 %93, %78
  %95 = add nuw nsw i32 %94, %81
  %96 = add nuw nsw i32 %95, %83
  %97 = add nuw nsw i32 %96, %86
  %98 = add nuw nsw i32 %97, %89
  %99 = add nuw nsw i32 %98, %92
  %100 = zext nneg i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 1
  %102 = getelementptr inbounds i8, ptr %59, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !42
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %62, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !42
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %83, %78
  %109 = add nuw nsw i32 %108, %104
  %110 = add nuw nsw i32 %109, %107
  %111 = zext nneg i32 %110 to i64
  %112 = add nuw nsw i64 %101, %111
  %113 = mul nuw nsw i64 %76, %40
  %114 = mul i64 %112, %42
  %115 = add nuw nsw i64 %113, 32768
  %116 = add i64 %115, %114
  %117 = lshr i64 %116, 16
  %118 = trunc i64 %117 to i8
  store i8 %118, ptr %52, align 1, !tbaa !42
  %119 = getelementptr inbounds i8, ptr %52, i64 1
  br label %120

120:                                              ; preds = %48, %120
  %121 = phi ptr [ %119, %48 ], [ %194, %120 ]
  %122 = phi ptr [ %105, %48 ], [ %182, %120 ]
  %123 = phi ptr [ %102, %48 ], [ %174, %120 ]
  %124 = phi ptr [ %90, %48 ], [ %165, %120 ]
  %125 = phi ptr [ %87, %48 ], [ %157, %120 ]
  %126 = phi i32 [ %47, %48 ], [ %193, %120 ]
  %127 = load i8, ptr %125, align 1, !tbaa !42
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i8, ptr %125, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !42
  %131 = zext i8 %130 to i64
  %132 = add nuw nsw i64 %131, %128
  %133 = load i8, ptr %124, align 1, !tbaa !42
  %134 = zext i8 %133 to i64
  %135 = add nuw nsw i64 %132, %134
  %136 = getelementptr inbounds i8, ptr %124, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !42
  %138 = zext i8 %137 to i64
  %139 = add nuw nsw i64 %135, %138
  %140 = load i8, ptr %123, align 1, !tbaa !42
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds i8, ptr %123, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !42
  %144 = zext i8 %143 to i64
  %145 = add nuw nsw i64 %144, %141
  %146 = load i8, ptr %122, align 1, !tbaa !42
  %147 = zext i8 %146 to i64
  %148 = add nuw nsw i64 %145, %147
  %149 = getelementptr inbounds i8, ptr %122, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !42
  %151 = zext i8 %150 to i64
  %152 = add nuw nsw i64 %148, %151
  %153 = getelementptr inbounds i8, ptr %125, i64 -1
  %154 = load i8, ptr %153, align 1, !tbaa !42
  %155 = zext i8 %154 to i64
  %156 = add nuw nsw i64 %152, %155
  %157 = getelementptr inbounds i8, ptr %125, i64 2
  %158 = load i8, ptr %157, align 1, !tbaa !42
  %159 = zext i8 %158 to i64
  %160 = add nuw nsw i64 %156, %159
  %161 = getelementptr inbounds i8, ptr %124, i64 -1
  %162 = load i8, ptr %161, align 1, !tbaa !42
  %163 = zext i8 %162 to i64
  %164 = add nuw nsw i64 %160, %163
  %165 = getelementptr inbounds i8, ptr %124, i64 2
  %166 = load i8, ptr %165, align 1, !tbaa !42
  %167 = zext i8 %166 to i64
  %168 = add nuw nsw i64 %164, %167
  %169 = shl nuw nsw i64 %168, 1
  %170 = and i64 %169, 8589934590
  %171 = getelementptr inbounds i8, ptr %123, i64 -1
  %172 = load i8, ptr %171, align 1, !tbaa !42
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds i8, ptr %123, i64 2
  %175 = load i8, ptr %174, align 1, !tbaa !42
  %176 = zext i8 %175 to i64
  %177 = add nuw nsw i64 %176, %173
  %178 = getelementptr inbounds i8, ptr %122, i64 -1
  %179 = load i8, ptr %178, align 1, !tbaa !42
  %180 = zext i8 %179 to i64
  %181 = add nuw nsw i64 %177, %180
  %182 = getelementptr inbounds i8, ptr %122, i64 2
  %183 = load i8, ptr %182, align 1, !tbaa !42
  %184 = zext i8 %183 to i64
  %185 = add nuw nsw i64 %181, %170
  %186 = add nuw nsw i64 %185, %184
  %187 = mul nuw nsw i64 %139, %40
  %188 = mul i64 %186, %42
  %189 = add nuw nsw i64 %187, 32768
  %190 = add i64 %189, %188
  %191 = lshr i64 %190, 16
  %192 = trunc i64 %191 to i8
  store i8 %192, ptr %121, align 1, !tbaa !42
  %193 = add i32 %126, -1
  %194 = getelementptr inbounds i8, ptr %121, i64 1
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %196, label %120, !llvm.loop !48

196:                                              ; preds = %120
  %197 = load i8, ptr %157, align 1, !tbaa !42
  %198 = zext i8 %197 to i32
  %199 = getelementptr inbounds i8, ptr %125, i64 3
  %200 = load i8, ptr %199, align 1, !tbaa !42
  %201 = zext i8 %200 to i32
  %202 = load i8, ptr %165, align 1, !tbaa !42
  %203 = zext i8 %202 to i32
  %204 = getelementptr inbounds i8, ptr %124, i64 3
  %205 = load i8, ptr %204, align 1, !tbaa !42
  %206 = zext i8 %205 to i32
  %207 = add nuw nsw i32 %206, %201
  %208 = add nuw nsw i32 %207, %198
  %209 = add nuw nsw i32 %208, %203
  %210 = zext nneg i32 %209 to i64
  %211 = load i8, ptr %174, align 1, !tbaa !42
  %212 = zext i8 %211 to i32
  %213 = getelementptr inbounds i8, ptr %123, i64 3
  %214 = load i8, ptr %213, align 1, !tbaa !42
  %215 = zext i8 %214 to i32
  %216 = load i8, ptr %182, align 1, !tbaa !42
  %217 = zext i8 %216 to i32
  %218 = getelementptr inbounds i8, ptr %122, i64 3
  %219 = load i8, ptr %218, align 1, !tbaa !42
  %220 = zext i8 %219 to i32
  %221 = getelementptr inbounds i8, ptr %125, i64 1
  %222 = load i8, ptr %221, align 1, !tbaa !42
  %223 = zext i8 %222 to i32
  %224 = getelementptr inbounds i8, ptr %124, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !42
  %226 = zext i8 %225 to i32
  %227 = add nuw nsw i32 %206, %201
  %228 = add nuw nsw i32 %227, %212
  %229 = add nuw nsw i32 %228, %215
  %230 = add nuw nsw i32 %229, %217
  %231 = add nuw nsw i32 %230, %220
  %232 = add nuw nsw i32 %231, %223
  %233 = add nuw nsw i32 %232, %226
  %234 = zext nneg i32 %233 to i64
  %235 = shl nuw nsw i64 %234, 1
  %236 = getelementptr inbounds i8, ptr %123, i64 1
  %237 = load i8, ptr %236, align 1, !tbaa !42
  %238 = zext i8 %237 to i32
  %239 = getelementptr inbounds i8, ptr %122, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !42
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %220, %215
  %243 = add nuw nsw i32 %242, %238
  %244 = add nuw nsw i32 %243, %241
  %245 = zext nneg i32 %244 to i64
  %246 = add nuw nsw i64 %235, %245
  %247 = mul nuw nsw i64 %210, %40
  %248 = mul i64 %246, %42
  %249 = add nuw nsw i64 %247, 32768
  %250 = add i64 %249, %248
  %251 = lshr i64 %250, 16
  %252 = trunc i64 %251 to i8
  store i8 %252, ptr %194, align 1, !tbaa !42
  %253 = add nuw nsw i64 %49, 1
  %254 = load i32, ptr %43, align 4, !tbaa !32
  %255 = sext i32 %254 to i64
  %256 = icmp slt i64 %253, %255
  br i1 %256, label %48, label %257, !llvm.loop !49

257:                                              ; preds = %196, %35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !41
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
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !42
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !43

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
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %2, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %3, i64 %40
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  br label %50

50:                                               ; preds = %42, %50
  %51 = phi i32 [ %73, %50 ], [ 1, %42 ]
  %52 = phi ptr [ %72, %50 ], [ %49, %42 ]
  %53 = phi ptr [ %75, %50 ], [ %45, %42 ]
  %54 = phi ptr [ %74, %50 ], [ %47, %42 ]
  %55 = phi i32 [ %76, %50 ], [ 0, %42 ]
  %56 = load i8, ptr %54, align 1, !tbaa !42
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !42
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr %53, align 1, !tbaa !42
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i8, ptr %53, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !42
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %51, %57
  %67 = add nuw nsw i32 %66, %60
  %68 = add nuw nsw i32 %67, %62
  %69 = add nuw nsw i32 %68, %65
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %71, ptr %52, align 1, !tbaa !42
  %73 = xor i32 %51, 3
  %74 = getelementptr inbounds i8, ptr %54, i64 2
  %75 = getelementptr inbounds i8, ptr %53, i64 2
  %76 = add nuw i32 %55, 1
  %77 = icmp eq i32 %76, %7
  br i1 %77, label %78, label %50, !llvm.loop !50

78:                                               ; preds = %50, %39
  %79 = add nuw nsw i64 %41, 2
  %80 = add nuw nsw i64 %40, 1
  %81 = load i32, ptr %34, align 4, !tbaa !32
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %39, label %84, !llvm.loop !51

84:                                               ; preds = %78, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @int_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !40
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
  %21 = load i32, ptr %20, align 8, !tbaa !41
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
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = getelementptr inbounds i8, ptr %37, i64 %28
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %38, i8 %40, i64 %32, i1 false), !tbaa !42
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !43

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
  %59 = load ptr, ptr %58, align 8, !tbaa !35
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
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = getelementptr inbounds i8, ptr %72, i64 %66
  br label %74

74:                                               ; preds = %70, %74
  %75 = phi i64 [ %81, %74 ], [ %69, %70 ]
  %76 = phi ptr [ %78, %74 ], [ %73, %70 ]
  %77 = phi i32 [ %82, %74 ], [ 0, %70 ]
  %78 = getelementptr inbounds i8, ptr %76, i64 1
  %79 = load i8, ptr %76, align 1, !tbaa !42
  %80 = zext i8 %79 to i64
  %81 = add nsw i64 %75, %80
  %82 = add nuw nsw i32 %77, 1
  %83 = icmp eq i32 %82, %12
  br i1 %83, label %84, label %74, !llvm.loop !52

84:                                               ; preds = %74, %67
  %85 = phi i64 [ %69, %67 ], [ %81, %74 ]
  %86 = add nuw nsw i64 %68, 1
  %87 = icmp eq i64 %86, %53
  br i1 %87, label %88, label %67, !llvm.loop !53

88:                                               ; preds = %84, %61
  %89 = phi i64 [ 0, %61 ], [ %85, %84 ]
  %90 = add nsw i64 %89, %50
  %91 = sdiv i64 %90, %51
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %92, ptr %62, align 1, !tbaa !42
  %94 = add nuw i32 %64, 1
  %95 = add i32 %63, %12
  %96 = icmp eq i32 %94, %7
  br i1 %96, label %97, label %61, !llvm.loop !54

97:                                               ; preds = %88, %54
  %98 = add i64 %56, %52
  %99 = add nuw nsw i64 %55, 1
  %100 = load i32, ptr %15, align 4, !tbaa !32
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %54, label %103, !llvm.loop !55

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
!34 = !{!6, !10, i64 264}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!25, !7, i64 8}
!39 = distinct !{!39, !37}
!40 = !{!30, !10, i64 28}
!41 = !{!6, !10, i64 40}
!42 = !{!8, !8, i64 0}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
