; ModuleID = 'src/jccolor.c'
source_filename = "src/jccolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_color_converter = type { ptr, ptr }
%struct.my_color_converter = type { %struct.jpeg_color_converter, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_color_converter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 24) #3
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @null_method, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 2, label %13
    i32 3, label %13
    i32 4, label %17
    i32 5, label %17
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %29, label %25

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %29, label %25

17:                                               ; preds = %1, %1
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !21
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %29, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17, %13, %9
  %26 = load ptr, ptr %0, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 7, ptr %27, align 8, !tbaa !23
  %28 = load ptr, ptr %26, align 8, !tbaa !25
  tail call void %28(ptr noundef nonnull %0) #3
  br label %29

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !26
  switch i32 %31, label %122 [
    i32 1, label %32
    i32 2, label %52
    i32 3, label %69
    i32 4, label %87
    i32 5, label %104
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !27
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 8, ptr %38, align 8, !tbaa !23
  %39 = load ptr, ptr %37, align 8, !tbaa !25
  tail call void %39(ptr noundef nonnull %0) #3
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %41, label %48 [
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @grayscale_convert, ptr %43, align 8, !tbaa !28
  br label %137

44:                                               ; preds = %40
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @rgb_gray_convert, ptr %45, align 8, !tbaa !28
  br label %137

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @grayscale_convert, ptr %47, align 8, !tbaa !28
  br label %137

48:                                               ; preds = %40
  %49 = load ptr, ptr %0, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 25, ptr %50, align 8, !tbaa !23
  %51 = load ptr, ptr %49, align 8, !tbaa !25
  tail call void %51(ptr noundef nonnull %0) #3
  br label %137

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !27
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 8, ptr %58, align 8, !tbaa !23
  %59 = load ptr, ptr %57, align 8, !tbaa !25
  tail call void %59(ptr noundef nonnull %0) #3
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, ptr %7, align 4, !tbaa !20
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %64, align 8, !tbaa !28
  br label %137

65:                                               ; preds = %60
  %66 = load ptr, ptr %0, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 25, ptr %67, align 8, !tbaa !23
  %68 = load ptr, ptr %66, align 8, !tbaa !25
  tail call void %68(ptr noundef nonnull %0) #3
  br label %137

69:                                               ; preds = %29
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %71 = load i32, ptr %70, align 4, !tbaa !27
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %0, align 8, !tbaa !22
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 8, ptr %75, align 8, !tbaa !23
  %76 = load ptr, ptr %74, align 8, !tbaa !25
  tail call void %76(ptr noundef nonnull %0) #3
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %78, label %83 [
    i32 2, label %79
    i32 3, label %81
  ]

79:                                               ; preds = %77
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !17
  %80 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @rgb_ycc_convert, ptr %80, align 8, !tbaa !28
  br label %137

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %82, align 8, !tbaa !28
  br label %137

83:                                               ; preds = %77
  %84 = load ptr, ptr %0, align 8, !tbaa !22
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 25, ptr %85, align 8, !tbaa !23
  %86 = load ptr, ptr %84, align 8, !tbaa !25
  tail call void %86(ptr noundef nonnull %0) #3
  br label %137

87:                                               ; preds = %29
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %89 = load i32, ptr %88, align 4, !tbaa !27
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !22
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 8, ptr %93, align 8, !tbaa !23
  %94 = load ptr, ptr %92, align 8, !tbaa !25
  tail call void %94(ptr noundef nonnull %0) #3
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, ptr %7, align 4, !tbaa !20
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %99, align 8, !tbaa !28
  br label %137

100:                                              ; preds = %95
  %101 = load ptr, ptr %0, align 8, !tbaa !22
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i64 0, i32 5
  store i32 25, ptr %102, align 8, !tbaa !23
  %103 = load ptr, ptr %101, align 8, !tbaa !25
  tail call void %103(ptr noundef nonnull %0) #3
  br label %137

104:                                              ; preds = %29
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %106 = load i32, ptr %105, align 4, !tbaa !27
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %0, align 8, !tbaa !22
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 8, ptr %110, align 8, !tbaa !23
  %111 = load ptr, ptr %109, align 8, !tbaa !25
  tail call void %111(ptr noundef nonnull %0) #3
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %113, label %118 [
    i32 4, label %114
    i32 5, label %116
  ]

114:                                              ; preds = %112
  store ptr @rgb_ycc_start, ptr %5, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @cmyk_ycck_convert, ptr %115, align 8, !tbaa !28
  br label %137

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %117, align 8, !tbaa !28
  br label %137

118:                                              ; preds = %112
  %119 = load ptr, ptr %0, align 8, !tbaa !22
  %120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %119, i64 0, i32 5
  store i32 25, ptr %120, align 8, !tbaa !23
  %121 = load ptr, ptr %119, align 8, !tbaa !25
  tail call void %121(ptr noundef nonnull %0) #3
  br label %137

122:                                              ; preds = %29
  %123 = load i32, ptr %7, align 4, !tbaa !20
  %124 = icmp eq i32 %31, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %127 = load i32, ptr %126, align 4, !tbaa !27
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %129 = load i32, ptr %128, align 8, !tbaa !21
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %125, %122
  %132 = load ptr, ptr %0, align 8, !tbaa !22
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 5
  store i32 25, ptr %133, align 8, !tbaa !23
  %134 = load ptr, ptr %132, align 8, !tbaa !25
  tail call void %134(ptr noundef nonnull %0) #3
  br label %135

135:                                              ; preds = %131, %125
  %136 = getelementptr inbounds %struct.jpeg_color_converter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %136, align 8, !tbaa !28
  br label %137

137:                                              ; preds = %114, %118, %116, %98, %100, %79, %83, %81, %63, %65, %42, %46, %48, %44, %135
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @null_method(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @grayscale_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = icmp eq i32 %7, 0
  %13 = sext i32 %11 to i64
  %14 = zext i32 %7 to i64
  br label %17

15:                                               ; preds = %30, %17
  %16 = icmp sgt i32 %18, 1
  br i1 %16, label %17, label %38, !llvm.loop !30

17:                                               ; preds = %9, %15
  %18 = phi i32 [ %4, %9 ], [ %21, %15 ]
  %19 = phi ptr [ %1, %9 ], [ %22, %15 ]
  %20 = phi i32 [ %3, %9 ], [ %27, %15 ]
  %21 = add nsw i32 %18, -1
  %22 = getelementptr inbounds ptr, ptr %19, i64 1
  %23 = load ptr, ptr %2, align 8, !tbaa !32
  %24 = zext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  %27 = add i32 %20, 1
  br i1 %12, label %15, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %19, align 8, !tbaa !32
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %32 = phi ptr [ %29, %28 ], [ %35, %30 ]
  %33 = load i8, ptr %32, align 1, !tbaa !33
  %34 = getelementptr inbounds i8, ptr %26, i64 %31
  store i8 %33, ptr %34, align 1, !tbaa !33
  %35 = getelementptr inbounds i8, ptr %32, i64 %13
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %14
  br i1 %37, label %15, label %30, !llvm.loop !34

38:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_ycc_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef 1, i64 noundef 16384) #3
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !35
  br label %9

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %36, %9 ]
  %11 = mul nuw nsw i64 %10, 19595
  %12 = getelementptr inbounds i64, ptr %7, i64 %10
  store i64 %11, ptr %12, align 8, !tbaa !36
  %13 = mul nuw nsw i64 %10, 38470
  %14 = or disjoint i64 %10, 256
  %15 = getelementptr inbounds i64, ptr %7, i64 %14
  store i64 %13, ptr %15, align 8, !tbaa !36
  %16 = mul nuw nsw i64 %10, 7471
  %17 = add nuw nsw i64 %16, 32768
  %18 = or disjoint i64 %10, 512
  %19 = getelementptr inbounds i64, ptr %7, i64 %18
  store i64 %17, ptr %19, align 8, !tbaa !36
  %20 = mul nsw i64 %10, -11059
  %21 = or disjoint i64 %10, 768
  %22 = getelementptr inbounds i64, ptr %7, i64 %21
  store i64 %20, ptr %22, align 8, !tbaa !36
  %23 = mul nsw i64 %10, -21709
  %24 = or disjoint i64 %10, 1024
  %25 = getelementptr inbounds i64, ptr %7, i64 %24
  store i64 %23, ptr %25, align 8, !tbaa !36
  %26 = shl nuw nsw i64 %10, 15
  %27 = add nuw nsw i64 %26, 8421375
  %28 = or disjoint i64 %10, 1280
  %29 = getelementptr inbounds i64, ptr %7, i64 %28
  store i64 %27, ptr %29, align 8, !tbaa !36
  %30 = mul nsw i64 %10, -27439
  %31 = or disjoint i64 %10, 1536
  %32 = getelementptr inbounds i64, ptr %7, i64 %31
  store i64 %30, ptr %32, align 8, !tbaa !36
  %33 = mul nsw i64 %10, -5329
  %34 = or disjoint i64 %10, 1792
  %35 = getelementptr inbounds i64, ptr %7, i64 %34
  store i64 %33, ptr %35, align 8, !tbaa !36
  %36 = add nuw nsw i64 %10, 1
  %37 = icmp eq i64 %36, 256
  br i1 %37, label %38, label %9, !llvm.loop !37

38:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rgb_gray_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %5
  %14 = icmp eq i32 %11, 0
  %15 = zext i32 %11 to i64
  br label %18

16:                                               ; preds = %31, %18
  %17 = icmp sgt i32 %19, 1
  br i1 %17, label %18, label %58, !llvm.loop !38

18:                                               ; preds = %13, %16
  %19 = phi i32 [ %4, %13 ], [ %22, %16 ]
  %20 = phi ptr [ %1, %13 ], [ %23, %16 ]
  %21 = phi i32 [ %3, %13 ], [ %28, %16 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load ptr, ptr %2, align 8, !tbaa !32
  %25 = zext i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = add i32 %21, 1
  br i1 %14, label %16, label %29

29:                                               ; preds = %18
  %30 = load ptr, ptr %20, align 8, !tbaa !32
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %56, %31 ]
  %33 = phi ptr [ %30, %29 ], [ %41, %31 ]
  %34 = load i8, ptr %33, align 1, !tbaa !33
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !33
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr %33, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !33
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 3
  %42 = zext i8 %34 to i64
  %43 = getelementptr inbounds i64, ptr %9, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !36
  %45 = or disjoint i64 %37, 256
  %46 = getelementptr inbounds i64, ptr %9, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !36
  %48 = add nsw i64 %47, %44
  %49 = or disjoint i64 %40, 512
  %50 = getelementptr inbounds i64, ptr %9, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !36
  %52 = add nsw i64 %48, %51
  %53 = lshr i64 %52, 16
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds i8, ptr %27, i64 %32
  store i8 %54, ptr %55, align 1, !tbaa !33
  %56 = add nuw nsw i64 %32, 1
  %57 = icmp eq i64 %56, %15
  br i1 %57, label %16, label %31, !llvm.loop !39

58:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @null_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !27
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !29
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = icmp sgt i32 %7, 0
  %13 = icmp eq i32 %9, 0
  %14 = sext i32 %7 to i64
  %15 = zext nneg i32 %7 to i64
  %16 = zext i32 %9 to i64
  br label %17

17:                                               ; preds = %11, %44
  %18 = phi i32 [ %4, %11 ], [ %21, %44 ]
  %19 = phi ptr [ %1, %11 ], [ %45, %44 ]
  %20 = phi i32 [ %3, %11 ], [ %46, %44 ]
  %21 = add nsw i32 %18, -1
  br i1 %12, label %22, label %44

22:                                               ; preds = %17
  %23 = zext i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %41
  %25 = phi i64 [ 0, %22 ], [ %42, %41 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  br i1 %13, label %41, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %19, align 8, !tbaa !32
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %39, %32 ]
  %34 = phi ptr [ %31, %30 ], [ %38, %32 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 %25
  %36 = load i8, ptr %35, align 1, !tbaa !33
  %37 = getelementptr inbounds i8, ptr %29, i64 %33
  store i8 %36, ptr %37, align 1, !tbaa !33
  %38 = getelementptr inbounds i8, ptr %34, i64 %14
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %32, !llvm.loop !40

41:                                               ; preds = %32, %24
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %44, label %24, !llvm.loop !41

44:                                               ; preds = %41, %17
  %45 = getelementptr inbounds ptr, ptr %19, i64 1
  %46 = add i32 %20, 1
  %47 = icmp sgt i32 %18, 1
  br i1 %47, label %17, label %48, !llvm.loop !42

48:                                               ; preds = %44, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rgb_ycc_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %103

13:                                               ; preds = %5
  %14 = getelementptr inbounds ptr, ptr %2, i64 1
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = icmp eq i32 %11, 0
  %17 = zext i32 %11 to i64
  br label %20

18:                                               ; preds = %39, %20
  %19 = icmp sgt i32 %21, 1
  br i1 %19, label %20, label %103, !llvm.loop !43

20:                                               ; preds = %13, %18
  %21 = phi i32 [ %4, %13 ], [ %24, %18 ]
  %22 = phi ptr [ %1, %13 ], [ %25, %18 ]
  %23 = phi i32 [ %3, %13 ], [ %36, %18 ]
  %24 = add nsw i32 %21, -1
  %25 = getelementptr inbounds ptr, ptr %22, i64 1
  %26 = load ptr, ptr %2, align 8, !tbaa !32
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  %30 = load ptr, ptr %14, align 8, !tbaa !32
  %31 = getelementptr inbounds ptr, ptr %30, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !32
  %33 = load ptr, ptr %15, align 8, !tbaa !32
  %34 = getelementptr inbounds ptr, ptr %33, i64 %27
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = add i32 %23, 1
  br i1 %16, label %18, label %37

37:                                               ; preds = %20
  %38 = load ptr, ptr %22, align 8, !tbaa !32
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %101, %39 ]
  %41 = phi ptr [ %38, %37 ], [ %50, %39 ]
  %42 = load i8, ptr %41, align 1, !tbaa !33
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !33
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %41, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !33
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %41, i64 3
  %51 = zext i8 %42 to i64
  %52 = getelementptr inbounds i64, ptr %9, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !36
  %54 = or disjoint i32 %46, 256
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %9, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !36
  %58 = add nsw i64 %57, %53
  %59 = or disjoint i32 %49, 512
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %9, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !36
  %63 = add nsw i64 %58, %62
  %64 = lshr i64 %63, 16
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds i8, ptr %29, i64 %40
  store i8 %65, ptr %66, align 1, !tbaa !33
  %67 = or disjoint i32 %43, 768
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds i64, ptr %9, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !36
  %71 = or disjoint i32 %46, 1024
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds i64, ptr %9, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !36
  %75 = add nsw i64 %74, %70
  %76 = or disjoint i32 %49, 1280
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %9, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !36
  %80 = add nsw i64 %75, %79
  %81 = lshr i64 %80, 16
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds i8, ptr %32, i64 %40
  store i8 %82, ptr %83, align 1, !tbaa !33
  %84 = or disjoint i32 %43, 1280
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds i64, ptr %9, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !36
  %88 = or disjoint i32 %46, 1536
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds i64, ptr %9, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !36
  %92 = add nsw i64 %91, %87
  %93 = or disjoint i32 %49, 1792
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds i64, ptr %9, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !36
  %97 = add nsw i64 %92, %96
  %98 = lshr i64 %97, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds i8, ptr %35, i64 %40
  store i8 %99, ptr %100, align 1, !tbaa !33
  %101 = add nuw nsw i64 %40, 1
  %102 = icmp eq i64 %101, %17
  br i1 %102, label %18, label %39, !llvm.loop !44

103:                                              ; preds = %18, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cmyk_ycck_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %113

13:                                               ; preds = %5
  %14 = getelementptr inbounds ptr, ptr %2, i64 1
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = getelementptr inbounds ptr, ptr %2, i64 3
  %17 = icmp eq i32 %11, 0
  %18 = zext i32 %11 to i64
  br label %21

19:                                               ; preds = %43, %21
  %20 = icmp sgt i32 %22, 1
  br i1 %20, label %21, label %113, !llvm.loop !45

21:                                               ; preds = %13, %19
  %22 = phi i32 [ %4, %13 ], [ %25, %19 ]
  %23 = phi ptr [ %1, %13 ], [ %26, %19 ]
  %24 = phi i32 [ %3, %13 ], [ %40, %19 ]
  %25 = add nsw i32 %22, -1
  %26 = getelementptr inbounds ptr, ptr %23, i64 1
  %27 = load ptr, ptr %2, align 8, !tbaa !32
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %31 = load ptr, ptr %14, align 8, !tbaa !32
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !32
  %34 = load ptr, ptr %15, align 8, !tbaa !32
  %35 = getelementptr inbounds ptr, ptr %34, i64 %28
  %36 = load ptr, ptr %35, align 8, !tbaa !32
  %37 = load ptr, ptr %16, align 8, !tbaa !32
  %38 = getelementptr inbounds ptr, ptr %37, i64 %28
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = add i32 %24, 1
  br i1 %17, label %19, label %41

41:                                               ; preds = %21
  %42 = load ptr, ptr %23, align 8, !tbaa !32
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %111, %43 ]
  %45 = phi ptr [ %42, %41 ], [ %60, %43 ]
  %46 = load i8, ptr %45, align 1, !tbaa !33
  %47 = xor i8 %46, -1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !33
  %51 = xor i8 %50, -1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %45, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !33
  %55 = xor i8 %54, -1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %45, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !33
  %59 = getelementptr inbounds i8, ptr %39, i64 %44
  store i8 %58, ptr %59, align 1, !tbaa !33
  %60 = getelementptr inbounds i8, ptr %45, i64 4
  %61 = zext i8 %47 to i64
  %62 = getelementptr inbounds i64, ptr %9, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !36
  %64 = or disjoint i32 %52, 256
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds i64, ptr %9, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !36
  %68 = add nsw i64 %67, %63
  %69 = or disjoint i32 %56, 512
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %9, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !36
  %73 = add nsw i64 %68, %72
  %74 = lshr i64 %73, 16
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, ptr %30, i64 %44
  store i8 %75, ptr %76, align 1, !tbaa !33
  %77 = or disjoint i32 %48, 768
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds i64, ptr %9, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !36
  %81 = or disjoint i32 %52, 1024
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds i64, ptr %9, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !36
  %85 = add nsw i64 %84, %80
  %86 = or disjoint i32 %56, 1280
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i64, ptr %9, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !36
  %90 = add nsw i64 %85, %89
  %91 = lshr i64 %90, 16
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %33, i64 %44
  store i8 %92, ptr %93, align 1, !tbaa !33
  %94 = or disjoint i32 %48, 1280
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds i64, ptr %9, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !36
  %98 = or disjoint i32 %52, 1536
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds i64, ptr %9, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !36
  %102 = add nsw i64 %101, %97
  %103 = or disjoint i32 %56, 1792
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds i64, ptr %9, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !36
  %107 = add nsw i64 %102, %106
  %108 = lshr i64 %107, 16
  %109 = trunc i64 %108 to i8
  %110 = getelementptr inbounds i8, ptr %36, i64 %44
  store i8 %109, ptr %110, align 1, !tbaa !33
  %111 = add nuw nsw i64 %44, 1
  %112 = icmp eq i64 %111, %18
  br i1 %112, label %19, label %43, !llvm.loop !46

113:                                              ; preds = %19, %5
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!16 = !{!6, !7, i64 464}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 16}
!19 = !{!"jpeg_color_converter", !7, i64 0, !7, i64 8}
!20 = !{!6, !10, i64 52}
!21 = !{!6, !10, i64 48}
!22 = !{!6, !7, i64 0}
!23 = !{!24, !10, i64 40}
!24 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!25 = !{!24, !7, i64 0}
!26 = !{!6, !10, i64 72}
!27 = !{!6, !10, i64 68}
!28 = !{!18, !7, i64 8}
!29 = !{!6, !10, i64 40}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!7, !7, i64 0}
!33 = !{!8, !8, i64 0}
!34 = distinct !{!34, !31}
!35 = !{!18, !7, i64 16}
!36 = !{!15, !15, i64 0}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31}
!43 = distinct !{!43, !31}
!44 = distinct !{!44, !31}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
