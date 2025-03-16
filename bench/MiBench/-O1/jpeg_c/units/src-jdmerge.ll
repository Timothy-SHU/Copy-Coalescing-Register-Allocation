; ModuleID = 'src/jdmerge.c'
source_filename = "src/jdmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.my_upsampler = type { %struct.jpeg_upsampler, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_merged_upsampler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 88) #6
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_merged_upsample, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_upsampler, ptr %5, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = mul i32 %11, %9
  %13 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 8
  store i32 %12, ptr %13, align 4, !tbaa !23
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %15 = load i32, ptr %14, align 8, !tbaa !24
  %16 = icmp eq i32 %15, 2
  %17 = getelementptr inbounds %struct.jpeg_upsampler, ptr %5, i64 0, i32 1
  %18 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 1
  br i1 %16, label %19, label %25

19:                                               ; preds = %1
  store ptr @merged_2v_upsample, ptr %17, align 8, !tbaa !25
  store ptr @h2v2_merged_upsample, ptr %18, align 8, !tbaa !26
  %20 = load ptr, ptr %2, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !27
  %23 = zext i32 %12 to i64
  %24 = tail call ptr %22(ptr noundef %0, i32 noundef 1, i64 noundef %23) #6
  br label %26

25:                                               ; preds = %1
  store ptr @merged_1v_upsample, ptr %17, align 8, !tbaa !25
  store ptr @h2v1_merged_upsample, ptr %18, align 8, !tbaa !26
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi ptr [ null, %25 ], [ %24, %19 ]
  %28 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !28
  %29 = load ptr, ptr %6, align 8, !tbaa !16
  %30 = load ptr, ptr %2, align 8, !tbaa !5
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = tail call ptr %31(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #6
  %33 = getelementptr inbounds %struct.my_upsampler, ptr %29, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !29
  %34 = load ptr, ptr %2, align 8, !tbaa !5
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = tail call ptr %35(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #6
  %37 = getelementptr inbounds %struct.my_upsampler, ptr %29, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !30
  %38 = load ptr, ptr %2, align 8, !tbaa !5
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = tail call ptr %39(ptr noundef %0, i32 noundef 1, i64 noundef 2048) #6
  %41 = getelementptr inbounds %struct.my_upsampler, ptr %29, i64 0, i32 4
  store ptr %40, ptr %41, align 8, !tbaa !31
  %42 = load ptr, ptr %2, align 8, !tbaa !5
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  %44 = tail call ptr %43(ptr noundef %0, i32 noundef 1, i64 noundef 2048) #6
  %45 = getelementptr inbounds %struct.my_upsampler, ptr %29, i64 0, i32 5
  store ptr %44, ptr %45, align 8, !tbaa !32
  %46 = load ptr, ptr %33, align 8, !tbaa !29
  %47 = load ptr, ptr %37, align 8, !tbaa !30
  %48 = load ptr, ptr %41, align 8, !tbaa !31
  br label %49

49:                                               ; preds = %49, %26
  %50 = phi i64 [ 0, %26 ], [ %67, %49 ]
  %51 = phi i64 [ -128, %26 ], [ %68, %49 ]
  %52 = mul nsw i64 %51, 91881
  %53 = add nsw i64 %52, 32768
  %54 = lshr i64 %53, 16
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds i32, ptr %46, i64 %50
  store i32 %55, ptr %56, align 4, !tbaa !33
  %57 = mul nsw i64 %51, 116130
  %58 = add nsw i64 %57, 32768
  %59 = lshr i64 %58, 16
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds i32, ptr %47, i64 %50
  store i32 %60, ptr %61, align 4, !tbaa !33
  %62 = mul nsw i64 %51, -46802
  %63 = getelementptr inbounds i64, ptr %48, i64 %50
  store i64 %62, ptr %63, align 8, !tbaa !34
  %64 = mul nsw i64 %51, -22554
  %65 = add nsw i64 %64, 32768
  %66 = getelementptr inbounds i64, ptr %44, i64 %50
  store i64 %65, ptr %66, align 8, !tbaa !34
  %67 = add nuw nsw i64 %50, 1
  %68 = add nsw i64 %51, 1
  %69 = icmp eq i64 %67, 256
  br i1 %69, label %70, label %49, !llvm.loop !35

70:                                               ; preds = %49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @start_pass_merged_upsample(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.my_upsampler, ptr %3, i64 0, i32 7
  store i32 0, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.my_upsampler, ptr %3, i64 0, i32 9
  store i32 %6, ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merged_2v_upsample(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = alloca [2 x ptr], align 16
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %11 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !37
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 6
  %16 = load i32, ptr %5, align 4, !tbaa !33
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %4, i64 %17
  %19 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !23
  tail call void @jcopy_sample_rows(ptr noundef nonnull %15, i32 noundef 0, ptr noundef %18, i32 noundef 0, i32 noundef 1, i32 noundef %20) #6
  store i32 0, ptr %11, align 8, !tbaa !37
  br label %46

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !39
  %24 = load i32, ptr %5, align 4, !tbaa !33
  %25 = sub i32 %6, %24
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 2)
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds ptr, ptr %4, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  store ptr %30, ptr %8, align 16, !tbaa !40
  %31 = icmp ugt i32 %26, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = add i32 %24, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %4, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !40
  br label %42

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !28
  %41 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  store ptr %40, ptr %41, align 8, !tbaa !40
  store i32 1, ptr %11, align 8, !tbaa !37
  br label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !26
  %45 = load i32, ptr %2, align 4, !tbaa !33
  call void %44(ptr noundef %0, ptr noundef %1, i32 noundef %45, ptr noundef nonnull %8) #6
  br label %46

46:                                               ; preds = %42, %14
  %47 = phi i32 [ 1, %14 ], [ %27, %42 ]
  %48 = load i32, ptr %5, align 4, !tbaa !33
  %49 = add i32 %48, %47
  store i32 %49, ptr %5, align 4, !tbaa !33
  %50 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !39
  %52 = sub i32 %51, %47
  store i32 %52, ptr %50, align 8, !tbaa !39
  %53 = load i32, ptr %11, align 8, !tbaa !37
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, ptr %2, align 4, !tbaa !33
  %57 = add i32 %56, 1
  store i32 %57, ptr %2, align 4, !tbaa !33
  br label %58

58:                                               ; preds = %55, %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_merged_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = load ptr, ptr %1, align 8, !tbaa !40
  %18 = shl i32 %2, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = or disjoint i32 %18, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %17, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = getelementptr inbounds ptr, ptr %1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds ptr, ptr %1, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = getelementptr inbounds ptr, ptr %32, i64 %28
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = load ptr, ptr %3, align 8, !tbaa !40
  %36 = getelementptr inbounds ptr, ptr %3, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %39 = load i32, ptr %38, align 8, !tbaa !21
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %142, label %41

41:                                               ; preds = %4
  %42 = lshr i32 %39, 1
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %140, %43 ], [ %42, %41 ]
  %45 = phi ptr [ %53, %43 ], [ %34, %41 ]
  %46 = phi ptr [ %51, %43 ], [ %30, %41 ]
  %47 = phi ptr [ %122, %43 ], [ %25, %41 ]
  %48 = phi ptr [ %86, %43 ], [ %21, %41 ]
  %49 = phi ptr [ %139, %43 ], [ %37, %41 ]
  %50 = phi ptr [ %103, %43 ], [ %35, %41 ]
  %51 = getelementptr inbounds i8, ptr %46, i64 1
  %52 = load i8, ptr %46, align 1, !tbaa !42
  %53 = getelementptr inbounds i8, ptr %45, i64 1
  %54 = load i8, ptr %45, align 1, !tbaa !42
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i32, ptr %10, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !33
  %58 = zext i8 %52 to i64
  %59 = getelementptr inbounds i64, ptr %16, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !34
  %61 = getelementptr inbounds i64, ptr %14, i64 %55
  %62 = load i64, ptr %61, align 8, !tbaa !34
  %63 = add nsw i64 %62, %60
  %64 = lshr i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds i32, ptr %12, i64 %58
  %67 = load i32, ptr %66, align 4, !tbaa !33
  %68 = getelementptr inbounds i8, ptr %48, i64 1
  %69 = load i8, ptr %48, align 1, !tbaa !42
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %57, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %8, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !42
  store i8 %74, ptr %50, align 1, !tbaa !42
  %75 = add nsw i32 %70, %65
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %8, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !42
  %79 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !42
  %80 = add nsw i32 %67, %70
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %8, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !42
  %84 = getelementptr inbounds i8, ptr %50, i64 2
  store i8 %83, ptr %84, align 1, !tbaa !42
  %85 = getelementptr inbounds i8, ptr %50, i64 3
  %86 = getelementptr inbounds i8, ptr %48, i64 2
  %87 = load i8, ptr %68, align 1, !tbaa !42
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %57, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %8, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !42
  store i8 %92, ptr %85, align 1, !tbaa !42
  %93 = add nsw i32 %88, %65
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %8, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !42
  %97 = getelementptr inbounds i8, ptr %50, i64 4
  store i8 %96, ptr %97, align 1, !tbaa !42
  %98 = add nsw i32 %67, %88
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %8, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !42
  %102 = getelementptr inbounds i8, ptr %50, i64 5
  store i8 %101, ptr %102, align 1, !tbaa !42
  %103 = getelementptr inbounds i8, ptr %50, i64 6
  %104 = getelementptr inbounds i8, ptr %47, i64 1
  %105 = load i8, ptr %47, align 1, !tbaa !42
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %57, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %8, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !42
  store i8 %110, ptr %49, align 1, !tbaa !42
  %111 = add nsw i32 %106, %65
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %8, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !42
  %115 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %114, ptr %115, align 1, !tbaa !42
  %116 = add nsw i32 %67, %106
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %8, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !42
  %120 = getelementptr inbounds i8, ptr %49, i64 2
  store i8 %119, ptr %120, align 1, !tbaa !42
  %121 = getelementptr inbounds i8, ptr %49, i64 3
  %122 = getelementptr inbounds i8, ptr %47, i64 2
  %123 = load i8, ptr %104, align 1, !tbaa !42
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %57, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %8, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !42
  store i8 %128, ptr %121, align 1, !tbaa !42
  %129 = add nsw i32 %124, %65
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %8, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !42
  %133 = getelementptr inbounds i8, ptr %49, i64 4
  store i8 %132, ptr %133, align 1, !tbaa !42
  %134 = add nsw i32 %67, %124
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %8, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !42
  %138 = getelementptr inbounds i8, ptr %49, i64 5
  store i8 %137, ptr %138, align 1, !tbaa !42
  %139 = getelementptr inbounds i8, ptr %49, i64 6
  %140 = add nsw i32 %44, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %43, !llvm.loop !43

142:                                              ; preds = %43, %4
  %143 = phi ptr [ %35, %4 ], [ %103, %43 ]
  %144 = phi ptr [ %37, %4 ], [ %139, %43 ]
  %145 = phi ptr [ %21, %4 ], [ %86, %43 ]
  %146 = phi ptr [ %25, %4 ], [ %122, %43 ]
  %147 = phi ptr [ %30, %4 ], [ %51, %43 ]
  %148 = phi ptr [ %34, %4 ], [ %53, %43 ]
  %149 = load i32, ptr %38, align 8, !tbaa !21
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %200, label %152

152:                                              ; preds = %142
  %153 = load i8, ptr %147, align 1, !tbaa !42
  %154 = load i8, ptr %148, align 1, !tbaa !42
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds i32, ptr %10, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !33
  %158 = zext i8 %153 to i64
  %159 = getelementptr inbounds i64, ptr %16, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !34
  %161 = getelementptr inbounds i64, ptr %14, i64 %155
  %162 = load i64, ptr %161, align 8, !tbaa !34
  %163 = add nsw i64 %162, %160
  %164 = lshr i64 %163, 16
  %165 = trunc i64 %164 to i32
  %166 = getelementptr inbounds i32, ptr %12, i64 %158
  %167 = load i32, ptr %166, align 4, !tbaa !33
  %168 = load i8, ptr %145, align 1, !tbaa !42
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %157, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %8, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !42
  store i8 %173, ptr %143, align 1, !tbaa !42
  %174 = add nsw i32 %169, %165
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %8, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !42
  %178 = getelementptr inbounds i8, ptr %143, i64 1
  store i8 %177, ptr %178, align 1, !tbaa !42
  %179 = add nsw i32 %167, %169
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %8, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !42
  %183 = getelementptr inbounds i8, ptr %143, i64 2
  store i8 %182, ptr %183, align 1, !tbaa !42
  %184 = load i8, ptr %146, align 1, !tbaa !42
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %157, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %8, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !42
  store i8 %189, ptr %144, align 1, !tbaa !42
  %190 = add nsw i32 %185, %165
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %8, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !42
  %194 = getelementptr inbounds i8, ptr %144, i64 1
  store i8 %193, ptr %194, align 1, !tbaa !42
  %195 = add nsw i32 %167, %185
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %8, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !42
  %199 = getelementptr inbounds i8, ptr %144, i64 2
  store i8 %198, ptr %199, align 1, !tbaa !42
  br label %200

200:                                              ; preds = %152, %142
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merged_1v_upsample(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 %3, ptr noundef %4, ptr nocapture noundef %5, i32 %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = load i32, ptr %2, align 4, !tbaa !33
  %13 = load i32, ptr %5, align 4, !tbaa !33
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %4, i64 %14
  tail call void %11(ptr noundef %0, ptr noundef %1, i32 noundef %12, ptr noundef %15) #6
  %16 = load i32, ptr %5, align 4, !tbaa !33
  %17 = add i32 %16, 1
  store i32 %17, ptr %5, align 4, !tbaa !33
  %18 = load i32, ptr %2, align 4, !tbaa !33
  %19 = add i32 %18, 1
  store i32 %19, ptr %2, align 4, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_merged_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = load ptr, ptr %1, align 8, !tbaa !40
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = getelementptr inbounds ptr, ptr %22, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds ptr, ptr %1, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = load ptr, ptr %3, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !21
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %96, label %33

33:                                               ; preds = %4
  %34 = lshr i32 %31, 1
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %94, %35 ], [ %34, %33 ]
  %37 = phi ptr [ %43, %35 ], [ %28, %33 ]
  %38 = phi ptr [ %41, %35 ], [ %24, %33 ]
  %39 = phi ptr [ %76, %35 ], [ %20, %33 ]
  %40 = phi ptr [ %93, %35 ], [ %29, %33 ]
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %38, align 1, !tbaa !42
  %43 = getelementptr inbounds i8, ptr %37, i64 1
  %44 = load i8, ptr %37, align 1, !tbaa !42
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i32, ptr %10, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !33
  %48 = zext i8 %42 to i64
  %49 = getelementptr inbounds i64, ptr %16, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds i64, ptr %14, i64 %45
  %52 = load i64, ptr %51, align 8, !tbaa !34
  %53 = add nsw i64 %52, %50
  %54 = lshr i64 %53, 16
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds i32, ptr %12, i64 %48
  %57 = load i32, ptr %56, align 4, !tbaa !33
  %58 = getelementptr inbounds i8, ptr %39, i64 1
  %59 = load i8, ptr %39, align 1, !tbaa !42
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %47, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %8, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !42
  store i8 %64, ptr %40, align 1, !tbaa !42
  %65 = add nsw i32 %60, %55
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %8, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !42
  %69 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !42
  %70 = add nsw i32 %57, %60
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %8, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !42
  %74 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 %73, ptr %74, align 1, !tbaa !42
  %75 = getelementptr inbounds i8, ptr %40, i64 3
  %76 = getelementptr inbounds i8, ptr %39, i64 2
  %77 = load i8, ptr %58, align 1, !tbaa !42
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %47, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %8, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !42
  store i8 %82, ptr %75, align 1, !tbaa !42
  %83 = add nsw i32 %78, %55
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %8, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !42
  %87 = getelementptr inbounds i8, ptr %40, i64 4
  store i8 %86, ptr %87, align 1, !tbaa !42
  %88 = add nsw i32 %57, %78
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %8, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !42
  %92 = getelementptr inbounds i8, ptr %40, i64 5
  store i8 %91, ptr %92, align 1, !tbaa !42
  %93 = getelementptr inbounds i8, ptr %40, i64 6
  %94 = add nsw i32 %36, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %35, !llvm.loop !44

96:                                               ; preds = %35, %4
  %97 = phi ptr [ %29, %4 ], [ %93, %35 ]
  %98 = phi ptr [ %20, %4 ], [ %76, %35 ]
  %99 = phi ptr [ %24, %4 ], [ %41, %35 ]
  %100 = phi ptr [ %28, %4 ], [ %43, %35 ]
  %101 = load i32, ptr %30, align 8, !tbaa !21
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %136, label %104

104:                                              ; preds = %96
  %105 = load i8, ptr %99, align 1, !tbaa !42
  %106 = load i8, ptr %100, align 1, !tbaa !42
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds i32, ptr %10, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !33
  %110 = zext i8 %105 to i64
  %111 = getelementptr inbounds i64, ptr %16, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !34
  %113 = getelementptr inbounds i64, ptr %14, i64 %107
  %114 = load i64, ptr %113, align 8, !tbaa !34
  %115 = add nsw i64 %114, %112
  %116 = lshr i64 %115, 16
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds i32, ptr %12, i64 %110
  %119 = load i32, ptr %118, align 4, !tbaa !33
  %120 = load i8, ptr %98, align 1, !tbaa !42
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %109, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %8, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !42
  store i8 %125, ptr %97, align 1, !tbaa !42
  %126 = add nsw i32 %121, %117
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %8, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !42
  %130 = getelementptr inbounds i8, ptr %97, i64 1
  store i8 %129, ptr %130, align 1, !tbaa !42
  %131 = add nsw i32 %119, %121
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %8, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !42
  %135 = getelementptr inbounds i8, ptr %97, i64 2
  store i8 %134, ptr %135, align 1, !tbaa !42
  br label %136

136:                                              ; preds = %104, %96
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 592}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 76, !10, i64 80}
!19 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!20 = !{!18, !10, i64 16}
!21 = !{!6, !10, i64 128}
!22 = !{!6, !10, i64 136}
!23 = !{!18, !10, i64 76}
!24 = !{!6, !10, i64 392}
!25 = !{!18, !7, i64 8}
!26 = !{!18, !7, i64 24}
!27 = !{!14, !7, i64 8}
!28 = !{!18, !7, i64 64}
!29 = !{!18, !7, i64 32}
!30 = !{!18, !7, i64 40}
!31 = !{!18, !7, i64 48}
!32 = !{!18, !7, i64 56}
!33 = !{!10, !10, i64 0}
!34 = !{!15, !15, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!18, !10, i64 72}
!38 = !{!6, !10, i64 132}
!39 = !{!18, !10, i64 80}
!40 = !{!7, !7, i64 0}
!41 = !{!6, !7, i64 408}
!42 = !{!8, !8, i64 0}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
