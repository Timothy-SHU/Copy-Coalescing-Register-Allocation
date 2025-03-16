; ModuleID = 'src/rdppm.c'
source_filename = "src/rdppm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, i64, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_read_ppm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 80) #3
  store ptr @start_input_ppm, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_ppm, ptr %6, align 8, !tbaa !19
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal void @start_input_ppm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = tail call i32 @getc(ptr noundef %4)
  %6 = icmp eq i32 %5, 80
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 1027, ptr %9, align 8, !tbaa !22
  %10 = load ptr, ptr %8, align 8, !tbaa !24
  tail call void %10(ptr noundef nonnull %0) #3
  br label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %3, align 8, !tbaa !20
  %13 = tail call i32 @getc(ptr noundef %12)
  %14 = load ptr, ptr %3, align 8, !tbaa !20
  %15 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %14)
  %16 = load ptr, ptr %3, align 8, !tbaa !20
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %16)
  %18 = load ptr, ptr %3, align 8, !tbaa !20
  %19 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %18)
  %20 = icmp eq i32 %15, 0
  %21 = icmp eq i32 %17, 0
  %22 = select i1 %20, i1 true, i1 %21
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 1027, ptr %27, align 8, !tbaa !22
  %28 = load ptr, ptr %26, align 8, !tbaa !24
  tail call void %28(ptr noundef nonnull %0) #3
  br label %29

29:                                               ; preds = %11, %25
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %30, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %15, ptr %31, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %17, ptr %32, align 4, !tbaa !27
  switch i32 %13, label %95 [
    i32 50, label %33
    i32 51, label %45
    i32 53, label %57
    i32 54, label %76
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 1, ptr %34, align 8, !tbaa !28
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 1, ptr %35, align 4, !tbaa !29
  %36 = load ptr, ptr %0, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i64 0, i32 5
  store i32 1029, ptr %37, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i64 0, i32 6
  store i32 %15, ptr %38, align 4, !tbaa !30
  %39 = load ptr, ptr %0, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %40, align 4, !tbaa !30
  %41 = load ptr, ptr %0, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  tail call void %43(ptr noundef nonnull %0, i32 noundef 1) #3
  %44 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_text_gray_row, ptr %44, align 8, !tbaa !32
  br label %99

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %47, align 4, !tbaa !29
  %48 = load ptr, ptr %0, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 1031, ptr %49, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6
  store i32 %15, ptr %50, align 4, !tbaa !30
  %51 = load ptr, ptr %0, align 8, !tbaa !21
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %52, align 4, !tbaa !30
  %53 = load ptr, ptr %0, align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !31
  tail call void %55(ptr noundef nonnull %0, i32 noundef 1) #3
  %56 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_text_rgb_row, ptr %56, align 8, !tbaa !32
  br label %99

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 1, ptr %58, align 8, !tbaa !28
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 1, ptr %59, align 4, !tbaa !29
  %60 = load ptr, ptr %0, align 8, !tbaa !21
  %61 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 5
  store i32 1028, ptr %61, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 6
  store i32 %15, ptr %62, align 4, !tbaa !30
  %63 = load ptr, ptr %0, align 8, !tbaa !21
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %64, align 4, !tbaa !30
  %65 = load ptr, ptr %0, align 8, !tbaa !21
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  tail call void %67(ptr noundef nonnull %0, i32 noundef 1) #3
  %68 = icmp ugt i32 %19, 255
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_word_gray_row, ptr %70, align 8, !tbaa !32
  br label %99

71:                                               ; preds = %57
  %72 = icmp eq i32 %19, 255
  %73 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  br i1 %72, label %74, label %75

74:                                               ; preds = %71
  store ptr @get_raw_row, ptr %73, align 8, !tbaa !32
  br label %99

75:                                               ; preds = %71
  store ptr @get_scaled_gray_row, ptr %73, align 8, !tbaa !32
  br label %99

76:                                               ; preds = %29
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %77, align 8, !tbaa !28
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %78, align 4, !tbaa !29
  %79 = load ptr, ptr %0, align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i64 0, i32 5
  store i32 1030, ptr %80, align 8, !tbaa !22
  %81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i64 0, i32 6
  store i32 %15, ptr %81, align 4, !tbaa !30
  %82 = load ptr, ptr %0, align 8, !tbaa !21
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %83, align 4, !tbaa !30
  %84 = load ptr, ptr %0, align 8, !tbaa !21
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !31
  tail call void %86(ptr noundef nonnull %0, i32 noundef 1) #3
  %87 = icmp ugt i32 %19, 255
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_word_rgb_row, ptr %89, align 8, !tbaa !32
  br label %99

90:                                               ; preds = %76
  %91 = icmp eq i32 %19, 255
  %92 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  br i1 %91, label %93, label %94

93:                                               ; preds = %90
  store ptr @get_raw_row, ptr %92, align 8, !tbaa !32
  br label %99

94:                                               ; preds = %90
  store ptr @get_scaled_rgb_row, ptr %92, align 8, !tbaa !32
  br label %99

95:                                               ; preds = %29
  %96 = load ptr, ptr %0, align 8, !tbaa !21
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 1027, ptr %97, align 8, !tbaa !22
  %98 = load ptr, ptr %96, align 8, !tbaa !24
  tail call void %98(ptr noundef nonnull %0) #3
  br label %99

99:                                               ; preds = %88, %94, %93, %69, %75, %74, %95, %45, %33
  %100 = phi i1 [ true, %95 ], [ true, %88 ], [ false, %93 ], [ true, %94 ], [ true, %69 ], [ false, %74 ], [ true, %75 ], [ true, %45 ], [ true, %33 ]
  %101 = phi i1 [ false, %95 ], [ false, %88 ], [ true, %93 ], [ false, %94 ], [ false, %69 ], [ true, %74 ], [ false, %75 ], [ false, %45 ], [ false, %33 ]
  %102 = phi i1 [ false, %95 ], [ false, %88 ], [ false, %93 ], [ false, %94 ], [ false, %69 ], [ false, %74 ], [ false, %75 ], [ true, %45 ], [ true, %33 ]
  br i1 %102, label %118, label %103

103:                                              ; preds = %99
  %104 = zext i32 %15 to i64
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %106 = load i32, ptr %105, align 8, !tbaa !28
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, %104
  %109 = icmp ugt i32 %19, 255
  %110 = zext i1 %109 to i64
  %111 = shl i64 %108, %110
  %112 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  store i64 %111, ptr %112, align 8, !tbaa !33
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = load ptr, ptr %114, align 8, !tbaa !13
  %116 = tail call ptr %115(ptr noundef %0, i32 noundef 1, i64 noundef %111) #3
  %117 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  store ptr %116, ptr %117, align 8, !tbaa !34
  br label %118

118:                                              ; preds = %103, %99
  br i1 %100, label %123, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !34
  %122 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 2
  store ptr %121, ptr %122, align 8, !tbaa !35
  br label %132

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !36
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %129 = load i32, ptr %128, align 8, !tbaa !28
  %130 = mul i32 %129, %15
  %131 = tail call ptr %127(ptr noundef %0, i32 noundef 1, i32 noundef %130, i32 noundef 1) #3
  br label %132

132:                                              ; preds = %123, %119
  %133 = phi ptr [ %131, %123 ], [ %122, %119 ]
  %134 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %133, ptr %134, align 8, !tbaa !37
  %135 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %135, align 8, !tbaa !38
  br i1 %101, label %156, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = load ptr, ptr %138, align 8, !tbaa !13
  %140 = zext i32 %19 to i64
  %141 = add nuw nsw i64 %140, 1
  %142 = tail call ptr %139(ptr noundef %0, i32 noundef 1, i64 noundef %141) #3
  %143 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  store ptr %142, ptr %143, align 8, !tbaa !39
  %144 = lshr i32 %19, 1
  %145 = zext nneg i32 %144 to i64
  br label %146

146:                                              ; preds = %136, %146
  %147 = phi i64 [ 0, %136 ], [ %154, %146 ]
  %148 = mul nuw nsw i64 %147, 255
  %149 = add nuw nsw i64 %148, %145
  %150 = udiv i64 %149, %140
  %151 = trunc i64 %150 to i8
  %152 = load ptr, ptr %143, align 8, !tbaa !39
  %153 = getelementptr inbounds i8, ptr %152, i64 %147
  store i8 %151, ptr %153, align 1, !tbaa !30
  %154 = add nuw nsw i64 %147, 1
  %155 = icmp eq i64 %147, %140
  br i1 %155, label %156, label %146, !llvm.loop !40

156:                                              ; preds = %146, %132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_ppm(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = tail call i32 @getc(ptr noundef %1)
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %6
  %7 = tail call i32 @getc(ptr noundef %1)
  switch i32 %7, label %6 [
    i32 -1, label %8
    i32 10, label %8
  ]

8:                                                ; preds = %6, %6, %3
  %9 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %7, %6 ]
  switch i32 %9, label %15 [
    i32 -1, label %11
    i32 32, label %10
    i32 13, label %10
    i32 10, label %10
    i32 9, label %10
  ]

10:                                               ; preds = %8, %8, %8, %8
  br label %3

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 42, ptr %13, align 8, !tbaa !22
  %14 = load ptr, ptr %12, align 8, !tbaa !24
  tail call void %14(ptr noundef nonnull %0) #3
  br label %15

15:                                               ; preds = %8, %11
  %16 = add i32 %9, -58
  %17 = icmp ult i32 %16, -10
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 1026, ptr %20, align 8, !tbaa !22
  %21 = load ptr, ptr %19, align 8, !tbaa !24
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %15, %18
  %23 = add nsw i32 %9, -48
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi i32 [ %23, %22 ], [ %36, %34 ]
  %26 = tail call i32 @getc(ptr noundef %1)
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %28
  %29 = tail call i32 @getc(ptr noundef %1)
  switch i32 %29, label %28 [
    i32 -1, label %30
    i32 10, label %30
  ]

30:                                               ; preds = %28, %28, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %28 ], [ %29, %28 ]
  %32 = add i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = mul i32 %25, 10
  %36 = add i32 %32, %35
  br label %24, !llvm.loop !42

37:                                               ; preds = %30
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_text_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %22, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %21, %14 ], [ %13, %10 ]
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !30
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !30
  %22 = add i32 %15, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14, !llvm.loop !44

24:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_text_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %32, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %31, %14 ], [ %13, %10 ]
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !30
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !30
  %22 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !30
  %26 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %25, ptr %21, align 1, !tbaa !30
  %27 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4)
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !30
  %31 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %30, ptr %26, align 1, !tbaa !30
  %32 = add i32 %15, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %14, !llvm.loop !45

34:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_word_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !33
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !24
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %41, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %42, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %34, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !30
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 2
  %35 = load i8, ptr %31, align 1, !tbaa !30
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 8
  %38 = or disjoint i64 %37, %33
  %39 = getelementptr inbounds i8, ptr %4, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %40, ptr %28, align 1, !tbaa !30
  %42 = add i32 %29, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %27, !llvm.loop !46

44:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_raw_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = tail call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8)
  %10 = load i64, ptr %5, align 8, !tbaa !33
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 42, ptr %14, align 8, !tbaa !22
  %15 = load ptr, ptr %13, align 8, !tbaa !24
  tail call void %15(ptr noundef nonnull %0) #3
  br label %16

16:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_scaled_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !33
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !24
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %37, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %36, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %31, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !30
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !30
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !30
  %37 = add i32 %28, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27, !llvm.loop !47

39:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_word_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !33
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !24
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %63, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %64, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %56, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !30
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 2
  %35 = load i8, ptr %31, align 1, !tbaa !30
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 8
  %38 = or disjoint i64 %37, %33
  %39 = getelementptr inbounds i8, ptr %4, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %40, ptr %28, align 1, !tbaa !30
  %42 = getelementptr inbounds i8, ptr %30, i64 3
  %43 = load i8, ptr %34, align 1, !tbaa !30
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %30, i64 4
  %46 = load i8, ptr %42, align 1, !tbaa !30
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 8
  %49 = or disjoint i64 %48, %44
  %50 = getelementptr inbounds i8, ptr %4, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !30
  %52 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %51, ptr %41, align 1, !tbaa !30
  %53 = getelementptr inbounds i8, ptr %30, i64 5
  %54 = load i8, ptr %45, align 1, !tbaa !30
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, ptr %30, i64 6
  %57 = load i8, ptr %53, align 1, !tbaa !30
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 8
  %60 = or disjoint i64 %59, %55
  %61 = getelementptr inbounds i8, ptr %4, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !30
  %63 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %62, ptr %52, align 1, !tbaa !30
  %64 = add i32 %29, -1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %27, !llvm.loop !48

66:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_scaled_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10)
  %12 = load i64, ptr %7, align 8, !tbaa !33
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !24
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %49, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %48, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %43, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !30
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !30
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !30
  %37 = getelementptr inbounds i8, ptr %30, i64 2
  %38 = load i8, ptr %31, align 1, !tbaa !30
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %4, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !30
  %42 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %41, ptr %36, align 1, !tbaa !30
  %43 = getelementptr inbounds i8, ptr %30, i64 3
  %44 = load i8, ptr %37, align 1, !tbaa !30
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i8, ptr %4, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !30
  %48 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %47, ptr %42, align 1, !tbaa !30
  %49 = add i32 %28, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27, !llvm.loop !49

51:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = !{!17, !7, i64 0}
!17 = !{!"", !18, i64 0, !7, i64 48, !7, i64 56, !15, i64 64, !7, i64 72}
!18 = !{!"cjpeg_source_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 16}
!20 = !{!17, !7, i64 24}
!21 = !{!6, !7, i64 0}
!22 = !{!23, !10, i64 40}
!23 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!24 = !{!23, !7, i64 0}
!25 = !{!6, !10, i64 64}
!26 = !{!6, !10, i64 40}
!27 = !{!6, !10, i64 44}
!28 = !{!6, !10, i64 48}
!29 = !{!6, !10, i64 52}
!30 = !{!8, !8, i64 0}
!31 = !{!23, !7, i64 8}
!32 = !{!17, !7, i64 8}
!33 = !{!17, !15, i64 64}
!34 = !{!17, !7, i64 48}
!35 = !{!17, !7, i64 56}
!36 = !{!14, !7, i64 16}
!37 = !{!17, !7, i64 32}
!38 = !{!17, !10, i64 40}
!39 = !{!17, !7, i64 72}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !41}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
