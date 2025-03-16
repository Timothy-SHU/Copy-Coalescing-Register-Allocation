; ModuleID = 'src/jdcolor.c'
source_filename = "src/jdcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_color_deconverter = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_color_deconverter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 48) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 82
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_dcolor, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 2, label %13
    i32 3, label %13
    i32 4, label %17
    i32 5, label %17
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %29, label %25

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %29, label %25

17:                                               ; preds = %1, %1
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !21
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %29, label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17, %13, %9
  %26 = load ptr, ptr %0, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 8, ptr %27, align 8, !tbaa !23
  %28 = load ptr, ptr %26, align 8, !tbaa !25
  tail call void %28(ptr noundef nonnull %0) #4
  br label %29

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %31 = load i32, ptr %30, align 8, !tbaa !26
  switch i32 %31, label %157 [
    i32 1, label %32
    i32 2, label %53
    i32 4, label %105
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 1, ptr %33, align 8, !tbaa !27
  %34 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %34, label %49 [
    i32 1, label %35
    i32 3, label %35
  ]

35:                                               ; preds = %32, %32
  %36 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %5, i64 0, i32 1
  store ptr @grayscale_convert, ptr %36, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !21
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %169

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %42 = load ptr, ptr %41, align 8, !tbaa !29
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ 1, %40 ], [ %47, %44 ]
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 %45, i32 12
  store i32 0, ptr %46, align 8, !tbaa !30
  %47 = add nuw nsw i64 %45, 1
  %48 = icmp eq i64 %47, %43
  br i1 %48, label %169, label %44, !llvm.loop !32

49:                                               ; preds = %32
  %50 = load ptr, ptr %0, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 25, ptr %51, align 8, !tbaa !23
  %52 = load ptr, ptr %50, align 8, !tbaa !25
  tail call void %52(ptr noundef nonnull %0) #4
  br label %169

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 3, ptr %54, align 8, !tbaa !27
  %55 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %55, label %101 [
    i32 3, label %56
    i32 2, label %99
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %5, i64 0, i32 1
  store ptr @ycc_rgb_convert, ptr %57, align 8, !tbaa !28
  %58 = load ptr, ptr %6, align 8, !tbaa !16
  %59 = load ptr, ptr %2, align 8, !tbaa !5
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = tail call ptr %60(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #4
  %62 = getelementptr inbounds %struct.my_color_deconverter, ptr %58, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !34
  %63 = load ptr, ptr %2, align 8, !tbaa !5
  %64 = load ptr, ptr %63, align 8, !tbaa !13
  %65 = tail call ptr %64(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #4
  %66 = getelementptr inbounds %struct.my_color_deconverter, ptr %58, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !35
  %67 = load ptr, ptr %2, align 8, !tbaa !5
  %68 = load ptr, ptr %67, align 8, !tbaa !13
  %69 = tail call ptr %68(ptr noundef %0, i32 noundef 1, i64 noundef 2048) #4
  %70 = getelementptr inbounds %struct.my_color_deconverter, ptr %58, i64 0, i32 3
  store ptr %69, ptr %70, align 8, !tbaa !36
  %71 = load ptr, ptr %2, align 8, !tbaa !5
  %72 = load ptr, ptr %71, align 8, !tbaa !13
  %73 = tail call ptr %72(ptr noundef %0, i32 noundef 1, i64 noundef 2048) #4
  %74 = getelementptr inbounds %struct.my_color_deconverter, ptr %58, i64 0, i32 4
  store ptr %73, ptr %74, align 8, !tbaa !37
  %75 = load ptr, ptr %62, align 8, !tbaa !34
  %76 = load ptr, ptr %66, align 8, !tbaa !35
  %77 = load ptr, ptr %70, align 8, !tbaa !36
  br label %78

78:                                               ; preds = %78, %56
  %79 = phi i64 [ 0, %56 ], [ %96, %78 ]
  %80 = phi i64 [ -128, %56 ], [ %97, %78 ]
  %81 = mul nsw i64 %80, 91881
  %82 = add nsw i64 %81, 32768
  %83 = lshr i64 %82, 16
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds i32, ptr %75, i64 %79
  store i32 %84, ptr %85, align 4, !tbaa !38
  %86 = mul nsw i64 %80, 116130
  %87 = add nsw i64 %86, 32768
  %88 = lshr i64 %87, 16
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds i32, ptr %76, i64 %79
  store i32 %89, ptr %90, align 4, !tbaa !38
  %91 = mul nsw i64 %80, -46802
  %92 = getelementptr inbounds i64, ptr %77, i64 %79
  store i64 %91, ptr %92, align 8, !tbaa !39
  %93 = mul nsw i64 %80, -22554
  %94 = add nsw i64 %93, 32768
  %95 = getelementptr inbounds i64, ptr %73, i64 %79
  store i64 %94, ptr %95, align 8, !tbaa !39
  %96 = add nuw nsw i64 %79, 1
  %97 = add nsw i64 %80, 1
  %98 = icmp eq i64 %96, 256
  br i1 %98, label %169, label %78, !llvm.loop !40

99:                                               ; preds = %53
  %100 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %100, align 8, !tbaa !28
  br label %169

101:                                              ; preds = %53
  %102 = load ptr, ptr %0, align 8, !tbaa !22
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 5
  store i32 25, ptr %103, align 8, !tbaa !23
  %104 = load ptr, ptr %102, align 8, !tbaa !25
  tail call void %104(ptr noundef nonnull %0) #4
  br label %169

105:                                              ; preds = %29
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 4, ptr %106, align 8, !tbaa !27
  %107 = load i32, ptr %7, align 4, !tbaa !20
  switch i32 %107, label %153 [
    i32 5, label %108
    i32 4, label %151
  ]

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %5, i64 0, i32 1
  store ptr @ycck_cmyk_convert, ptr %109, align 8, !tbaa !28
  %110 = load ptr, ptr %6, align 8, !tbaa !16
  %111 = load ptr, ptr %2, align 8, !tbaa !5
  %112 = load ptr, ptr %111, align 8, !tbaa !13
  %113 = tail call ptr %112(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #4
  %114 = getelementptr inbounds %struct.my_color_deconverter, ptr %110, i64 0, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !34
  %115 = load ptr, ptr %2, align 8, !tbaa !5
  %116 = load ptr, ptr %115, align 8, !tbaa !13
  %117 = tail call ptr %116(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #4
  %118 = getelementptr inbounds %struct.my_color_deconverter, ptr %110, i64 0, i32 2
  store ptr %117, ptr %118, align 8, !tbaa !35
  %119 = load ptr, ptr %2, align 8, !tbaa !5
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = tail call ptr %120(ptr noundef %0, i32 noundef 1, i64 noundef 2048) #4
  %122 = getelementptr inbounds %struct.my_color_deconverter, ptr %110, i64 0, i32 3
  store ptr %121, ptr %122, align 8, !tbaa !36
  %123 = load ptr, ptr %2, align 8, !tbaa !5
  %124 = load ptr, ptr %123, align 8, !tbaa !13
  %125 = tail call ptr %124(ptr noundef %0, i32 noundef 1, i64 noundef 2048) #4
  %126 = getelementptr inbounds %struct.my_color_deconverter, ptr %110, i64 0, i32 4
  store ptr %125, ptr %126, align 8, !tbaa !37
  %127 = load ptr, ptr %114, align 8, !tbaa !34
  %128 = load ptr, ptr %118, align 8, !tbaa !35
  %129 = load ptr, ptr %122, align 8, !tbaa !36
  br label %130

130:                                              ; preds = %130, %108
  %131 = phi i64 [ 0, %108 ], [ %148, %130 ]
  %132 = phi i64 [ -128, %108 ], [ %149, %130 ]
  %133 = mul nsw i64 %132, 91881
  %134 = add nsw i64 %133, 32768
  %135 = lshr i64 %134, 16
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds i32, ptr %127, i64 %131
  store i32 %136, ptr %137, align 4, !tbaa !38
  %138 = mul nsw i64 %132, 116130
  %139 = add nsw i64 %138, 32768
  %140 = lshr i64 %139, 16
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds i32, ptr %128, i64 %131
  store i32 %141, ptr %142, align 4, !tbaa !38
  %143 = mul nsw i64 %132, -46802
  %144 = getelementptr inbounds i64, ptr %129, i64 %131
  store i64 %143, ptr %144, align 8, !tbaa !39
  %145 = mul nsw i64 %132, -22554
  %146 = add nsw i64 %145, 32768
  %147 = getelementptr inbounds i64, ptr %125, i64 %131
  store i64 %146, ptr %147, align 8, !tbaa !39
  %148 = add nuw nsw i64 %131, 1
  %149 = add nsw i64 %132, 1
  %150 = icmp eq i64 %148, 256
  br i1 %150, label %169, label %130, !llvm.loop !40

151:                                              ; preds = %105
  %152 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %152, align 8, !tbaa !28
  br label %169

153:                                              ; preds = %105
  %154 = load ptr, ptr %0, align 8, !tbaa !22
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i64 0, i32 5
  store i32 25, ptr %155, align 8, !tbaa !23
  %156 = load ptr, ptr %154, align 8, !tbaa !25
  tail call void %156(ptr noundef nonnull %0) #4
  br label %169

157:                                              ; preds = %29
  %158 = load i32, ptr %7, align 4, !tbaa !20
  %159 = icmp eq i32 %31, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %162 = load i32, ptr %161, align 8, !tbaa !21
  %163 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 %162, ptr %163, align 8, !tbaa !27
  %164 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %5, i64 0, i32 1
  store ptr @null_convert, ptr %164, align 8, !tbaa !28
  br label %169

165:                                              ; preds = %157
  %166 = load ptr, ptr %0, align 8, !tbaa !22
  %167 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %166, i64 0, i32 5
  store i32 25, ptr %167, align 8, !tbaa !23
  %168 = load ptr, ptr %166, align 8, !tbaa !25
  tail call void %168(ptr noundef nonnull %0) #4
  br label %169

169:                                              ; preds = %130, %78, %44, %35, %160, %165, %153, %151, %101, %99, %49
  %170 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %171 = load i32, ptr %170, align 4, !tbaa !41
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %175 = load i32, ptr %174, align 8, !tbaa !27
  br label %176

176:                                              ; preds = %169, %173
  %177 = phi i32 [ %175, %173 ], [ 1, %169 ]
  %178 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  store i32 %177, ptr %178, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @start_pass_dcolor(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grayscale_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !44
  tail call void @jcopy_sample_rows(ptr noundef %6, i32 noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %4, i32 noundef %8) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ycc_rgb_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 82
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %5
  %22 = getelementptr inbounds ptr, ptr %1, i64 1
  %23 = getelementptr inbounds ptr, ptr %1, i64 2
  %24 = icmp eq i32 %9, 0
  %25 = zext i32 %9 to i64
  br label %28

26:                                               ; preds = %47, %28
  %27 = icmp sgt i32 %29, 1
  br i1 %27, label %28, label %87, !llvm.loop !46

28:                                               ; preds = %21, %26
  %29 = phi i32 [ %4, %21 ], [ %32, %26 ]
  %30 = phi i32 [ %2, %21 ], [ %43, %26 ]
  %31 = phi ptr [ %3, %21 ], [ %44, %26 ]
  %32 = add nsw i32 %29, -1
  %33 = load ptr, ptr %1, align 8, !tbaa !43
  %34 = zext i32 %30 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = load ptr, ptr %22, align 8, !tbaa !43
  %38 = getelementptr inbounds ptr, ptr %37, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = load ptr, ptr %23, align 8, !tbaa !43
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = add i32 %30, 1
  %44 = getelementptr inbounds ptr, ptr %31, i64 1
  br i1 %24, label %26, label %45

45:                                               ; preds = %28
  %46 = load ptr, ptr %31, align 8, !tbaa !43
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %85, %47 ]
  %49 = phi ptr [ %46, %45 ], [ %84, %47 ]
  %50 = getelementptr inbounds i8, ptr %36, i64 %48
  %51 = load i8, ptr %50, align 1, !tbaa !47
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %39, i64 %48
  %54 = load i8, ptr %53, align 1, !tbaa !47
  %55 = getelementptr inbounds i8, ptr %42, i64 %48
  %56 = load i8, ptr %55, align 1, !tbaa !47
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i32, ptr %13, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = add nsw i32 %59, %52
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %11, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !47
  store i8 %63, ptr %49, align 1, !tbaa !47
  %64 = zext i8 %54 to i64
  %65 = getelementptr inbounds i64, ptr %19, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !39
  %67 = getelementptr inbounds i64, ptr %17, i64 %57
  %68 = load i64, ptr %67, align 8, !tbaa !39
  %69 = add nsw i64 %68, %66
  %70 = lshr i64 %69, 16
  %71 = trunc i64 %70 to i32
  %72 = add nsw i32 %71, %52
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %11, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !47
  %76 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %75, ptr %76, align 1, !tbaa !47
  %77 = getelementptr inbounds i32, ptr %15, i64 %64
  %78 = load i32, ptr %77, align 4, !tbaa !38
  %79 = add nsw i32 %78, %52
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %11, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !47
  %83 = getelementptr inbounds i8, ptr %49, i64 2
  store i8 %82, ptr %83, align 1, !tbaa !47
  %84 = getelementptr inbounds i8, ptr %49, i64 3
  %85 = add nuw nsw i64 %48, 1
  %86 = icmp eq i64 %85, %25
  br i1 %86, label %26, label %47, !llvm.loop !48

87:                                               ; preds = %26, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @null_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = icmp sgt i32 %7, 0
  %13 = icmp eq i32 %9, 0
  %14 = sext i32 %7 to i64
  %15 = zext nneg i32 %7 to i64
  br label %16

16:                                               ; preds = %11, %44
  %17 = phi i32 [ %4, %11 ], [ %20, %44 ]
  %18 = phi i32 [ %2, %11 ], [ %45, %44 ]
  %19 = phi ptr [ %3, %11 ], [ %46, %44 ]
  %20 = add nsw i32 %17, -1
  br i1 %12, label %21, label %44

21:                                               ; preds = %16
  %22 = zext i32 %18 to i64
  br label %23

23:                                               ; preds = %21, %41
  %24 = phi i64 [ 0, %21 ], [ %42, %41 ]
  br i1 %13, label %41, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %19, align 8, !tbaa !43
  %27 = getelementptr inbounds i8, ptr %26, i64 %24
  %28 = getelementptr inbounds ptr, ptr %1, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds ptr, ptr %29, i64 %22
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  br label %32

32:                                               ; preds = %25, %32
  %33 = phi i32 [ %39, %32 ], [ %9, %25 ]
  %34 = phi ptr [ %38, %32 ], [ %27, %25 ]
  %35 = phi ptr [ %36, %32 ], [ %31, %25 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %35, align 1, !tbaa !47
  store i8 %37, ptr %34, align 1, !tbaa !47
  %38 = getelementptr inbounds i8, ptr %34, i64 %14
  %39 = add i32 %33, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %32, !llvm.loop !49

41:                                               ; preds = %32, %23
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %44, label %23, !llvm.loop !50

44:                                               ; preds = %41, %16
  %45 = add i32 %18, 1
  %46 = getelementptr inbounds ptr, ptr %19, i64 1
  %47 = icmp sgt i32 %17, 1
  br i1 %47, label %16, label %48, !llvm.loop !51

48:                                               ; preds = %44, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ycck_cmyk_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 82
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %97

21:                                               ; preds = %5
  %22 = getelementptr inbounds ptr, ptr %1, i64 1
  %23 = getelementptr inbounds ptr, ptr %1, i64 2
  %24 = getelementptr inbounds ptr, ptr %1, i64 3
  %25 = icmp eq i32 %9, 0
  %26 = zext i32 %9 to i64
  br label %29

27:                                               ; preds = %51, %29
  %28 = icmp sgt i32 %30, 1
  br i1 %28, label %29, label %97, !llvm.loop !52

29:                                               ; preds = %21, %27
  %30 = phi i32 [ %4, %21 ], [ %33, %27 ]
  %31 = phi i32 [ %2, %21 ], [ %47, %27 ]
  %32 = phi ptr [ %3, %21 ], [ %48, %27 ]
  %33 = add nsw i32 %30, -1
  %34 = load ptr, ptr %1, align 8, !tbaa !43
  %35 = zext i32 %31 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = load ptr, ptr %22, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = load ptr, ptr %23, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %41, i64 %35
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = load ptr, ptr %24, align 8, !tbaa !43
  %45 = getelementptr inbounds ptr, ptr %44, i64 %35
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  %47 = add i32 %31, 1
  %48 = getelementptr inbounds ptr, ptr %32, i64 1
  br i1 %25, label %27, label %49

49:                                               ; preds = %29
  %50 = load ptr, ptr %32, align 8, !tbaa !43
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %95, %51 ]
  %53 = phi ptr [ %50, %49 ], [ %94, %51 ]
  %54 = getelementptr inbounds i8, ptr %37, i64 %52
  %55 = load i8, ptr %54, align 1, !tbaa !47
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %40, i64 %52
  %58 = load i8, ptr %57, align 1, !tbaa !47
  %59 = getelementptr inbounds i8, ptr %43, i64 %52
  %60 = load i8, ptr %59, align 1, !tbaa !47
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i32, ptr %13, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !38
  %64 = xor i32 %56, 255
  %65 = sub i32 %64, %63
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %11, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !47
  store i8 %68, ptr %53, align 1, !tbaa !47
  %69 = zext i8 %58 to i64
  %70 = getelementptr inbounds i64, ptr %19, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !39
  %72 = getelementptr inbounds i64, ptr %17, i64 %61
  %73 = load i64, ptr %72, align 8, !tbaa !39
  %74 = add nsw i64 %73, %71
  %75 = lshr i64 %74, 16
  %76 = trunc i64 %75 to i32
  %77 = xor i32 %56, 255
  %78 = sub i32 %77, %76
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %11, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !47
  %82 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %81, ptr %82, align 1, !tbaa !47
  %83 = getelementptr inbounds i32, ptr %15, i64 %69
  %84 = load i32, ptr %83, align 4, !tbaa !38
  %85 = xor i32 %56, 255
  %86 = sub i32 %85, %84
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %11, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !47
  %90 = getelementptr inbounds i8, ptr %53, i64 2
  store i8 %89, ptr %90, align 1, !tbaa !47
  %91 = getelementptr inbounds i8, ptr %46, i64 %52
  %92 = load i8, ptr %91, align 1, !tbaa !47
  %93 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 %92, ptr %93, align 1, !tbaa !47
  %94 = getelementptr inbounds i8, ptr %53, i64 4
  %95 = add nuw nsw i64 %52, 1
  %96 = icmp eq i64 %95, %26
  br i1 %96, label %27, label %51, !llvm.loop !53

97:                                               ; preds = %27, %5
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!16 = !{!6, !7, i64 600}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!19 = !{!"jpeg_color_deconverter", !7, i64 0, !7, i64 8}
!20 = !{!6, !10, i64 52}
!21 = !{!6, !10, i64 48}
!22 = !{!6, !7, i64 0}
!23 = !{!24, !10, i64 40}
!24 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!25 = !{!24, !7, i64 0}
!26 = !{!6, !10, i64 56}
!27 = !{!6, !10, i64 136}
!28 = !{!18, !7, i64 8}
!29 = !{!6, !7, i64 296}
!30 = !{!31, !10, i64 48}
!31 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!18, !7, i64 16}
!35 = !{!18, !7, i64 24}
!36 = !{!18, !7, i64 32}
!37 = !{!18, !7, i64 40}
!38 = !{!10, !10, i64 0}
!39 = !{!15, !15, i64 0}
!40 = distinct !{!40, !33}
!41 = !{!6, !10, i64 100}
!42 = !{!6, !10, i64 140}
!43 = !{!7, !7, i64 0}
!44 = !{!6, !10, i64 128}
!45 = !{!6, !7, i64 408}
!46 = distinct !{!46, !33}
!47 = !{!8, !8, i64 0}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
