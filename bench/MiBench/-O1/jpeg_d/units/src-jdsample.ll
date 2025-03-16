; ModuleID = 'src/jdsample.c'
source_filename = "src/jdsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x ptr], [10 x ptr], i32, i32, [10 x i32], [10 x i8], [10 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_color_deconverter = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_upsampler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 256) #7
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_upsample, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_upsampler, ptr %5, i64 0, i32 1
  store ptr @sep_upsample, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.jpeg_upsampler, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 56
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 23, ptr %14, align 8, !tbaa !24
  %15 = load ptr, ptr %13, align 8, !tbaa !26
  tail call void %15(ptr noundef nonnull %0) #7
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = icmp sgt i32 %22, 1
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !29
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %127

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 57
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  br label %36

36:                                               ; preds = %29, %121
  %37 = phi i64 [ 0, %29 ], [ %122, %121 ]
  %38 = phi ptr [ %31, %29 ], [ %123, %121 ]
  %39 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 4, !tbaa !33
  %43 = mul nsw i32 %42, %40
  %44 = load i32, ptr %32, align 4, !tbaa !28
  %45 = sdiv i32 %43, %44
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = mul nsw i32 %47, %42
  %49 = sdiv i32 %48, %44
  %50 = load i32, ptr %33, align 4, !tbaa !35
  %51 = load i32, ptr %34, align 8, !tbaa !36
  %52 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 5, i64 %37
  store i32 %49, ptr %52, align 4, !tbaa !37
  %53 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 12
  %54 = load i32, ptr %53, align 8, !tbaa !38
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @noop_upsample, ptr %57, align 8, !tbaa !39
  br label %121

58:                                               ; preds = %36
  %59 = icmp eq i32 %45, %50
  %60 = icmp eq i32 %49, %51
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @fullsize_upsample, ptr %63, align 8, !tbaa !39
  br label %121

64:                                               ; preds = %58
  %65 = shl nsw i32 %45, 1
  %66 = icmp eq i32 %65, %50
  %67 = select i1 %66, i1 %60, i1 false
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  br i1 %25, label %69, label %75

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !40
  %72 = icmp ugt i32 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @h2v1_fancy_upsample, ptr %74, align 8, !tbaa !39
  br label %108

75:                                               ; preds = %69, %68
  %76 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @h2v1_upsample, ptr %76, align 8, !tbaa !39
  br label %108

77:                                               ; preds = %64
  %78 = shl nsw i32 %49, 1
  %79 = icmp eq i32 %78, %51
  %80 = select i1 %66, i1 %79, i1 false
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  br i1 %25, label %82, label %88

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !40
  %85 = icmp ugt i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @h2v2_fancy_upsample, ptr %87, align 8, !tbaa !39
  store i32 1, ptr %8, align 8, !tbaa !21
  br label %108

88:                                               ; preds = %82, %81
  %89 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @h2v2_upsample, ptr %89, align 8, !tbaa !39
  br label %108

90:                                               ; preds = %77
  %91 = srem i32 %50, %45
  %92 = sdiv i32 %50, %45
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = srem i32 %51, %49
  %96 = sdiv i32 %51, %49
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 2, i64 %37
  store ptr @int_upsample, ptr %99, align 8, !tbaa !39
  %100 = trunc i32 %92 to i8
  %101 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 6, i64 %37
  store i8 %100, ptr %101, align 1, !tbaa !41
  %102 = trunc i32 %96 to i8
  %103 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 7, i64 %37
  store i8 %102, ptr %103, align 1, !tbaa !41
  br label %108

104:                                              ; preds = %94, %90
  %105 = load ptr, ptr %0, align 8, !tbaa !23
  %106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 5
  store i32 37, ptr %106, align 8, !tbaa !24
  %107 = load ptr, ptr %105, align 8, !tbaa !26
  tail call void %107(ptr noundef nonnull %0) #7
  br label %108

108:                                              ; preds = %75, %73, %98, %104, %86, %88
  %109 = load ptr, ptr %2, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !42
  %112 = load i32, ptr %35, align 8, !tbaa !43
  %113 = zext i32 %112 to i64
  %114 = load i32, ptr %33, align 4, !tbaa !35
  %115 = sext i32 %114 to i64
  %116 = tail call i64 @jround_up(i64 noundef %113, i64 noundef %115) #7
  %117 = trunc i64 %116 to i32
  %118 = load i32, ptr %34, align 8, !tbaa !36
  %119 = tail call ptr %111(ptr noundef %0, i32 noundef 1, i32 noundef %117, i32 noundef %118) #7
  %120 = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 1, i64 %37
  store ptr %119, ptr %120, align 8, !tbaa !39
  br label %121

121:                                              ; preds = %62, %56, %108
  %122 = add nuw nsw i64 %37, 1
  %123 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 1
  %124 = load i32, ptr %26, align 8, !tbaa !29
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %36, label %127, !llvm.loop !44

127:                                              ; preds = %121, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @start_pass_upsample(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %5 = load i32, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.my_upsampler, ptr %3, i64 0, i32 3
  store i32 %5, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds %struct.my_upsampler, ptr %3, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sep_upsample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %13 = load i32, ptr %12, align 8, !tbaa !36
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %43, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 1
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %37, %23 ]
  %25 = phi ptr [ %21, %19 ], [ %38, %23 ]
  %26 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 2, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds ptr, ptr %1, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = load i32, ptr %2, align 4, !tbaa !37
  %31 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 5, i64 %24
  %32 = load i32, ptr %31, align 4, !tbaa !37
  %33 = mul i32 %32, %30
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %29, i64 %34
  %36 = getelementptr inbounds ptr, ptr %22, i64 %24
  tail call void %27(ptr noundef %0, ptr noundef %25, ptr noundef %35, ptr noundef nonnull %36) #7
  %37 = add nuw nsw i64 %24, 1
  %38 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 1
  %39 = load i32, ptr %16, align 8, !tbaa !29
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %23, label %42, !llvm.loop !49

42:                                               ; preds = %23, %15
  store i32 0, ptr %10, align 8, !tbaa !46
  br label %43

43:                                               ; preds = %42, %7
  %44 = load i32, ptr %12, align 8, !tbaa !36
  %45 = load i32, ptr %10, align 8, !tbaa !46
  %46 = sub nsw i32 %44, %45
  %47 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !48
  %49 = tail call i32 @llvm.umin.i32(i32 %46, i32 %48)
  %50 = load i32, ptr %5, align 4, !tbaa !37
  %51 = sub i32 %6, %50
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51)
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 82
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.my_upsampler, ptr %9, i64 0, i32 1
  %58 = zext i32 %50 to i64
  %59 = getelementptr inbounds ptr, ptr %4, i64 %58
  tail call void %56(ptr noundef %0, ptr noundef nonnull %57, i32 noundef %45, ptr noundef %59, i32 noundef %52) #7
  %60 = load i32, ptr %5, align 4, !tbaa !37
  %61 = add i32 %60, %52
  store i32 %61, ptr %5, align 4, !tbaa !37
  %62 = load i32, ptr %47, align 4, !tbaa !48
  %63 = sub i32 %62, %52
  store i32 %63, ptr %47, align 4, !tbaa !48
  %64 = load i32, ptr %10, align 8, !tbaa !46
  %65 = add i32 %64, %52
  store i32 %65, ptr %10, align 8, !tbaa !46
  %66 = load i32, ptr %12, align 8, !tbaa !36
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %43
  %69 = load i32, ptr %2, align 4, !tbaa !37
  %70 = add i32 %69, 1
  store i32 %70, ptr %2, align 4, !tbaa !37
  br label %71

71:                                               ; preds = %68, %43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @noop_upsample(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #2 {
  store ptr null, ptr %3, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fullsize_upsample(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #2 {
  store ptr %2, ptr %3, align 8, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_fancy_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load ptr, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 10
  br label %11

11:                                               ; preds = %9, %58
  %12 = phi i64 [ 0, %9 ], [ %73, %58 ]
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds ptr, ptr %5, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  %18 = load i8, ptr %14, align 1, !tbaa !41
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !41
  %21 = mul nuw nsw i16 %19, 3
  %22 = load i8, ptr %17, align 1, !tbaa !41
  %23 = zext i8 %22 to i16
  %24 = add nuw nsw i16 %21, 2
  %25 = add nuw nsw i16 %24, %23
  %26 = lshr i16 %25, 2
  %27 = trunc i16 %26 to i8
  store i8 %27, ptr %20, align 1, !tbaa !41
  %28 = load i32, ptr %10, align 8, !tbaa !40
  %29 = add i32 %28, -2
  %30 = getelementptr inbounds i8, ptr %16, i64 2
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %11, %32
  %33 = phi ptr [ %56, %32 ], [ %30, %11 ]
  %34 = phi i32 [ %55, %32 ], [ %29, %11 ]
  %35 = phi ptr [ %33, %32 ], [ %16, %11 ]
  %36 = phi ptr [ %37, %32 ], [ %17, %11 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %36, align 1, !tbaa !41
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, 3
  %41 = getelementptr inbounds i8, ptr %36, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !41
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  %45 = add nuw nsw i32 %44, %40
  %46 = lshr i32 %45, 2
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %35, i64 3
  store i8 %47, ptr %33, align 1, !tbaa !41
  %49 = load i8, ptr %37, align 1, !tbaa !41
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %40, 2
  %52 = add nuw nsw i32 %51, %50
  %53 = lshr i32 %52, 2
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %48, align 1, !tbaa !41
  %55 = add i32 %34, -1
  %56 = getelementptr inbounds i8, ptr %33, i64 2
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %32, !llvm.loop !53

58:                                               ; preds = %32, %11
  %59 = phi ptr [ %17, %11 ], [ %37, %32 ]
  %60 = phi ptr [ %16, %11 ], [ %33, %32 ]
  %61 = phi ptr [ %30, %11 ], [ %56, %32 ]
  %62 = load i8, ptr %59, align 1, !tbaa !41
  %63 = zext i8 %62 to i16
  %64 = mul nuw nsw i16 %63, 3
  %65 = getelementptr inbounds i8, ptr %59, i64 -1
  %66 = load i8, ptr %65, align 1, !tbaa !41
  %67 = zext i8 %66 to i16
  %68 = add nuw nsw i16 %67, 1
  %69 = add nuw nsw i16 %68, %64
  %70 = lshr i16 %69, 2
  %71 = trunc i16 %70 to i8
  %72 = getelementptr inbounds i8, ptr %60, i64 3
  store i8 %71, ptr %61, align 1, !tbaa !41
  store i8 %62, ptr %72, align 1, !tbaa !41
  %73 = add nuw nsw i64 %12, 1
  %74 = load i32, ptr %6, align 8, !tbaa !36
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %11, label %77, !llvm.loop !54

77:                                               ; preds = %58, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_upsample(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load ptr, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  br label %11

11:                                               ; preds = %9, %30
  %12 = phi i64 [ 0, %9 ], [ %31, %30 ]
  %13 = getelementptr inbounds ptr, ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = load i32, ptr %10, align 8, !tbaa !43
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds ptr, ptr %2, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %19 ]
  %24 = phi ptr [ %28, %22 ], [ %14, %19 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = load i8, ptr %23, align 1, !tbaa !41
  %27 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %26, ptr %24, align 1, !tbaa !41
  %28 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !41
  %29 = icmp ult ptr %28, %17
  br i1 %29, label %22, label %30, !llvm.loop !55

30:                                               ; preds = %22, %11
  %31 = add nuw nsw i64 %12, 1
  %32 = load i32, ptr %6, align 8, !tbaa !36
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %11, label %35, !llvm.loop !56

35:                                               ; preds = %30, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load ptr, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %110

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 10
  br label %11

11:                                               ; preds = %9, %105
  %12 = phi i64 [ 0, %9 ], [ %107, %105 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %105 ]
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  %15 = shl i64 %13, 32
  %16 = ashr exact i64 %15, 32
  br label %17

17:                                               ; preds = %11, %88
  %18 = phi i64 [ %16, %11 ], [ %25, %88 ]
  %19 = phi i32 [ 0, %11 ], [ %103, %88 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !39
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %21, i64 -1, i64 1
  %23 = getelementptr ptr, ptr %14, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = add nsw i64 %18, 1
  %26 = getelementptr inbounds ptr, ptr %5, i64 %18
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds i8, ptr %20, i64 1
  %29 = load i8, ptr %20, align 1, !tbaa !41
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %30, 3
  %32 = getelementptr inbounds i8, ptr %24, i64 1
  %33 = load i8, ptr %24, align 1, !tbaa !41
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %31, %34
  %36 = load i8, ptr %28, align 1, !tbaa !41
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %37, 3
  %39 = load i8, ptr %32, align 1, !tbaa !41
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %38, %40
  %42 = shl nuw nsw i32 %35, 2
  %43 = add nuw nsw i32 %42, 8
  %44 = lshr i32 %43, 4
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %45, ptr %27, align 1, !tbaa !41
  %47 = mul nuw nsw i32 %35, 3
  %48 = add nuw nsw i32 %47, 7
  %49 = add nuw nsw i32 %48, %41
  %50 = lshr i32 %49, 4
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %46, align 1, !tbaa !41
  %52 = load i32, ptr %10, align 8, !tbaa !40
  %53 = add i32 %52, -2
  %54 = getelementptr inbounds i8, ptr %27, i64 2
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %17
  %57 = getelementptr inbounds i8, ptr %24, i64 2
  %58 = getelementptr inbounds i8, ptr %20, i64 2
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi ptr [ %86, %59 ], [ %54, %56 ]
  %61 = phi i32 [ %85, %59 ], [ %53, %56 ]
  %62 = phi i32 [ %63, %59 ], [ %35, %56 ]
  %63 = phi i32 [ %74, %59 ], [ %41, %56 ]
  %64 = phi ptr [ %60, %59 ], [ %27, %56 ]
  %65 = phi ptr [ %71, %59 ], [ %57, %56 ]
  %66 = phi ptr [ %67, %59 ], [ %58, %56 ]
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  %68 = load i8, ptr %66, align 1, !tbaa !41
  %69 = zext i8 %68 to i32
  %70 = mul nuw nsw i32 %69, 3
  %71 = getelementptr inbounds i8, ptr %65, i64 1
  %72 = load i8, ptr %65, align 1, !tbaa !41
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %70, %73
  %75 = mul nuw nsw i32 %63, 3
  %76 = add nuw nsw i32 %62, 8
  %77 = add nuw nsw i32 %76, %75
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %64, i64 3
  store i8 %79, ptr %60, align 1, !tbaa !41
  %81 = add nuw nsw i32 %75, 7
  %82 = add nuw nsw i32 %81, %74
  %83 = lshr i32 %82, 4
  %84 = trunc i32 %83 to i8
  store i8 %84, ptr %80, align 1, !tbaa !41
  %85 = add i32 %61, -1
  %86 = getelementptr inbounds i8, ptr %60, i64 2
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %59, !llvm.loop !57

88:                                               ; preds = %59, %17
  %89 = phi ptr [ %27, %17 ], [ %60, %59 ]
  %90 = phi i32 [ %41, %17 ], [ %74, %59 ]
  %91 = phi i32 [ %35, %17 ], [ %63, %59 ]
  %92 = phi ptr [ %54, %17 ], [ %86, %59 ]
  %93 = mul nuw nsw i32 %90, 3
  %94 = add nuw nsw i32 %91, 8
  %95 = add nuw nsw i32 %94, %93
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds i8, ptr %89, i64 3
  store i8 %97, ptr %92, align 1, !tbaa !41
  %99 = shl nuw nsw i32 %90, 2
  %100 = add nuw nsw i32 %99, 7
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %98, align 1, !tbaa !41
  %103 = add nuw nsw i32 %19, 1
  %104 = icmp eq i32 %19, 0
  br i1 %104, label %17, label %105, !llvm.loop !58

105:                                              ; preds = %88
  %106 = trunc i64 %25 to i32
  %107 = add nuw i64 %12, 1
  %108 = load i32, ptr %6, align 8, !tbaa !36
  %109 = icmp sgt i32 %108, %106
  br i1 %109, label %11, label %110, !llvm.loop !59

110:                                              ; preds = %105, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  br label %11

11:                                               ; preds = %9, %32
  %12 = phi i64 [ 0, %9 ], [ %36, %32 ]
  %13 = phi i64 [ 0, %9 ], [ %37, %32 ]
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds ptr, ptr %5, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = load i32, ptr %10, align 8, !tbaa !43
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds ptr, ptr %2, i64 %12
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %27, %24 ], [ %23, %21 ]
  %26 = phi ptr [ %30, %24 ], [ %16, %21 ]
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  %28 = load i8, ptr %25, align 1, !tbaa !41
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 %28, ptr %26, align 1, !tbaa !41
  %30 = getelementptr inbounds i8, ptr %26, i64 2
  store i8 %28, ptr %29, align 1, !tbaa !41
  %31 = icmp ult ptr %30, %19
  br i1 %31, label %24, label %32, !llvm.loop !60

32:                                               ; preds = %24, %11
  %33 = or disjoint i32 %14, 1
  %34 = load i32, ptr %10, align 8, !tbaa !43
  %35 = trunc i64 %13 to i32
  tail call void @jcopy_sample_rows(ptr noundef %5, i32 noundef %35, ptr noundef %5, i32 noundef %33, i32 noundef 1, i32 noundef %34) #7
  %36 = add nuw i64 %12, 1
  %37 = add nuw i64 %13, 2
  %38 = load i32, ptr %6, align 8, !tbaa !36
  %39 = trunc i64 %37 to i32
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %11, label %41, !llvm.loop !61

41:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !62
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.my_upsampler, ptr %11, i64 0, i32 7, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !41
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.my_upsampler, ptr %11, i64 0, i32 6, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !41
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %22 = icmp eq i8 %19, 0
  %23 = icmp ugt i8 %16, 1
  %24 = add nsw i32 %17, -1
  %25 = zext i8 %19 to i64
  %26 = add nuw nsw i64 %20, 4294967295
  %27 = and i64 %26, 4294967295
  %28 = add nuw nsw i64 %27, 1
  %29 = zext i8 %16 to i64
  br label %30

30:                                               ; preds = %9, %58
  %31 = phi i64 [ 0, %9 ], [ %59, %58 ]
  %32 = phi i64 [ 0, %9 ], [ %60, %58 ]
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds ptr, ptr %5, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = load i32, ptr %21, align 8, !tbaa !43
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds ptr, ptr %2, i64 %31
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  br label %46

43:                                               ; preds = %50, %46
  %44 = phi ptr [ %48, %46 ], [ %52, %50 ]
  %45 = icmp ult ptr %44, %38
  br i1 %45, label %46, label %53, !llvm.loop !63

46:                                               ; preds = %40, %43
  %47 = phi ptr [ %49, %43 ], [ %42, %40 ]
  %48 = phi ptr [ %44, %43 ], [ %35, %40 ]
  %49 = getelementptr inbounds i8, ptr %47, i64 1
  br i1 %22, label %43, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr %47, align 1, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %48, i8 %51, i64 %25, i1 false), !tbaa !41
  %52 = getelementptr i8, ptr %48, i64 %28
  br label %43

53:                                               ; preds = %43, %30
  br i1 %23, label %54, label %58

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %33, 1
  %56 = load i32, ptr %21, align 8, !tbaa !43
  %57 = trunc i64 %32 to i32
  tail call void @jcopy_sample_rows(ptr noundef %5, i32 noundef %57, ptr noundef %5, i32 noundef %55, i32 noundef %24, i32 noundef %56) #7
  br label %58

58:                                               ; preds = %54, %53
  %59 = add nuw i64 %31, 1
  %60 = add i64 %32, %29
  %61 = load i32, ptr %6, align 8, !tbaa !36
  %62 = trunc i64 %60 to i32
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %30, label %64, !llvm.loop !64

64:                                               ; preds = %58, %4
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!18 = !{!"", !19, i64 0, !8, i64 24, !8, i64 104, !10, i64 184, !10, i64 188, !8, i64 192, !8, i64 232, !8, i64 242}
!19 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !10, i64 16}
!22 = !{!6, !10, i64 384}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!25, !7, i64 0}
!27 = !{!6, !10, i64 92}
!28 = !{!6, !10, i64 396}
!29 = !{!6, !10, i64 48}
!30 = !{!6, !7, i64 296}
!31 = !{!32, !10, i64 8}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!32, !10, i64 36}
!34 = !{!32, !10, i64 12}
!35 = !{!6, !10, i64 388}
!36 = !{!6, !10, i64 392}
!37 = !{!10, !10, i64 0}
!38 = !{!32, !10, i64 48}
!39 = !{!7, !7, i64 0}
!40 = !{!32, !10, i64 40}
!41 = !{!8, !8, i64 0}
!42 = !{!14, !7, i64 16}
!43 = !{!6, !10, i64 128}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!18, !10, i64 184}
!47 = !{!6, !10, i64 132}
!48 = !{!18, !10, i64 188}
!49 = distinct !{!49, !45}
!50 = !{!6, !7, i64 600}
!51 = !{!52, !7, i64 8}
!52 = !{!"jpeg_color_deconverter", !7, i64 0, !7, i64 8}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !45}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = !{!32, !10, i64 4}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
