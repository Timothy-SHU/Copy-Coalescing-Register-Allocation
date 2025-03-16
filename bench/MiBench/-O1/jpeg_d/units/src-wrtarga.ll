; ModuleID = 'src/wrtarga.c'
source_filename = "src/wrtarga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tga_dest_struct = type { %struct.djpeg_dest_struct, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_write_targa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 64) #7
  store ptr @start_output_tga, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 2
  store ptr @finish_output_tga, ptr %6, align 8, !tbaa !19
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds %struct.tga_dest_struct, ptr %5, i64 0, i32 2
  store i32 %11, ptr %12, align 8, !tbaa !22
  %13 = load ptr, ptr %2, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = zext i32 %11 to i64
  %16 = tail call ptr %14(ptr noundef %0, i32 noundef 1, i64 noundef %15) #7
  %17 = getelementptr inbounds %struct.tga_dest_struct, ptr %5, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !23
  %18 = load ptr, ptr %2, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = load i32, ptr %12, align 8, !tbaa !22
  %22 = tail call ptr %20(ptr noundef %0, i32 noundef 1, i32 noundef %21, i32 noundef 1) #7
  %23 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 5
  store i32 1, ptr %24, align 8, !tbaa !26
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_output_tga(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [18 x i8], align 16
  %4 = alloca [18 x i8], align 16
  %5 = alloca [18 x i8], align 16
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !27
  switch i32 %7, label %162 [
    i32 1, label %8
    i32 2, label %41
  ]

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %5, i8 0, i64 18, i1 false)
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 12
  store i8 %11, ptr %12, align 4, !tbaa !28
  %13 = lshr i32 %10, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 13
  store i8 %14, ptr %15, align 1, !tbaa !28
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %17 = load i32, ptr %16, align 4, !tbaa !29
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 14
  store i8 %18, ptr %19, align 2, !tbaa !28
  %20 = lshr i32 %17, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 15
  store i8 %21, ptr %22, align 1, !tbaa !28
  %23 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 17
  store i8 32, ptr %23, align 1, !tbaa !28
  %24 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 2
  store i8 3, ptr %24, align 2, !tbaa !28
  %25 = getelementptr inbounds [18 x i8], ptr %5, i64 0, i64 16
  store i8 8, ptr %25, align 16, !tbaa !28
  %26 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 18, ptr noundef %27)
  %29 = icmp eq i64 %28, 18
  br i1 %29, label %34, label %30

30:                                               ; preds = %8
  %31 = load ptr, ptr %0, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 36, ptr %32, align 8, !tbaa !32
  %33 = load ptr, ptr %31, align 8, !tbaa !34
  tail call void %33(ptr noundef nonnull %0) #7
  br label %34

34:                                               ; preds = %8, %30
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #7
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %36 = load i32, ptr %35, align 4, !tbaa !35
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 1
  br i1 %37, label %40, label %39

39:                                               ; preds = %34
  store ptr @put_demapped_gray, ptr %38, align 8, !tbaa !36
  br label %166

40:                                               ; preds = %34
  store ptr @put_gray_rows, ptr %38, align 8, !tbaa !36
  br label %166

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %43 = load i32, ptr %42, align 4, !tbaa !35
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %131, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  %47 = load i32, ptr %46, align 4, !tbaa !37
  %48 = icmp sgt i32 %47, 256
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 1039, ptr %51, align 8, !tbaa !32
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6
  store i32 %47, ptr %52, align 4, !tbaa !28
  %53 = load ptr, ptr %0, align 8, !tbaa !31
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  tail call void %54(ptr noundef nonnull %0) #7
  br label %55

55:                                               ; preds = %49, %45
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %4, i8 0, i64 18, i1 false)
  %56 = icmp sgt i32 %47, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %55
  %58 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 1
  store i8 1, ptr %58, align 1, !tbaa !28
  %59 = trunc i32 %47 to i8
  %60 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 5
  store i8 %59, ptr %60, align 1, !tbaa !28
  %61 = lshr i32 %47, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 6
  store i8 %62, ptr %63, align 2, !tbaa !28
  %64 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 7
  store i8 24, ptr %64, align 1, !tbaa !28
  br label %65

65:                                               ; preds = %57, %55
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %67 = load i32, ptr %66, align 8, !tbaa !20
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 12
  store i8 %68, ptr %69, align 4, !tbaa !28
  %70 = lshr i32 %67, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 13
  store i8 %71, ptr %72, align 1, !tbaa !28
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %74 = load i32, ptr %73, align 4, !tbaa !29
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 14
  store i8 %75, ptr %76, align 2, !tbaa !28
  %77 = lshr i32 %74, 8
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 15
  store i8 %78, ptr %79, align 1, !tbaa !28
  %80 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 17
  store i8 32, ptr %80, align 1, !tbaa !28
  %81 = load i32, ptr %6, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 1
  %83 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 2
  br i1 %82, label %84, label %86

84:                                               ; preds = %65
  store i8 3, ptr %83, align 2, !tbaa !28
  %85 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 16
  store i8 8, ptr %85, align 16, !tbaa !28
  br label %90

86:                                               ; preds = %65
  %87 = getelementptr inbounds [18 x i8], ptr %4, i64 0, i64 16
  br i1 %56, label %88, label %89

88:                                               ; preds = %86
  store i8 1, ptr %83, align 2, !tbaa !28
  store i8 8, ptr %87, align 16, !tbaa !28
  br label %90

89:                                               ; preds = %86
  store i8 2, ptr %83, align 2, !tbaa !28
  store i8 24, ptr %87, align 16, !tbaa !28
  br label %90

90:                                               ; preds = %89, %88, %84
  %91 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !30
  %93 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 18, ptr noundef %92)
  %94 = icmp eq i64 %93, 18
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %0, align 8, !tbaa !31
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 36, ptr %97, align 8, !tbaa !32
  %98 = load ptr, ptr %96, align 8, !tbaa !34
  tail call void %98(ptr noundef nonnull %0) #7
  br label %99

99:                                               ; preds = %90, %95
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #7
  %100 = load ptr, ptr %91, align 8, !tbaa !38
  %101 = icmp sgt i32 %47, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %104 = zext nneg i32 %47 to i64
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi i64 [ 0, %102 ], [ %127, %105 ]
  %107 = load ptr, ptr %103, align 8, !tbaa !39
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !40
  %110 = getelementptr inbounds i8, ptr %109, i64 %106
  %111 = load i8, ptr %110, align 1, !tbaa !28
  %112 = zext i8 %111 to i32
  %113 = tail call i32 @putc(i32 noundef %112, ptr noundef %100)
  %114 = load ptr, ptr %103, align 8, !tbaa !39
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !40
  %117 = getelementptr inbounds i8, ptr %116, i64 %106
  %118 = load i8, ptr %117, align 1, !tbaa !28
  %119 = zext i8 %118 to i32
  %120 = tail call i32 @putc(i32 noundef %119, ptr noundef %100)
  %121 = load ptr, ptr %103, align 8, !tbaa !39
  %122 = load ptr, ptr %121, align 8, !tbaa !40
  %123 = getelementptr inbounds i8, ptr %122, i64 %106
  %124 = load i8, ptr %123, align 1, !tbaa !28
  %125 = zext i8 %124 to i32
  %126 = tail call i32 @putc(i32 noundef %125, ptr noundef %100)
  %127 = add nuw nsw i64 %106, 1
  %128 = icmp eq i64 %127, %104
  br i1 %128, label %129, label %105, !llvm.loop !41

129:                                              ; preds = %105, %99
  %130 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 1
  store ptr @put_gray_rows, ptr %130, align 8, !tbaa !36
  br label %166

131:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %3, i8 0, i64 18, i1 false)
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %133 = load i32, ptr %132, align 8, !tbaa !20
  %134 = trunc i32 %133 to i8
  %135 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 12
  store i8 %134, ptr %135, align 4, !tbaa !28
  %136 = lshr i32 %133, 8
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 13
  store i8 %137, ptr %138, align 1, !tbaa !28
  %139 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %140 = load i32, ptr %139, align 4, !tbaa !29
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 14
  store i8 %141, ptr %142, align 2, !tbaa !28
  %143 = lshr i32 %140, 8
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 15
  store i8 %144, ptr %145, align 1, !tbaa !28
  %146 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 17
  store i8 32, ptr %146, align 1, !tbaa !28
  %147 = icmp eq i32 %7, 1
  %148 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 2
  %149 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 16
  %150 = select i1 %147, i8 3, i8 2
  %151 = select i1 %147, i8 8, i8 24
  store i8 %150, ptr %148, align 2, !tbaa !28
  store i8 %151, ptr %149, align 16, !tbaa !28
  %152 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !30
  %154 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %153)
  %155 = icmp eq i64 %154, 18
  br i1 %155, label %160, label %156

156:                                              ; preds = %131
  %157 = load ptr, ptr %0, align 8, !tbaa !31
  %158 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %157, i64 0, i32 5
  store i32 36, ptr %158, align 8, !tbaa !32
  %159 = load ptr, ptr %157, align 8, !tbaa !34
  tail call void %159(ptr noundef nonnull %0) #7
  br label %160

160:                                              ; preds = %131, %156
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #7
  %161 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 1
  store ptr @put_pixel_rows, ptr %161, align 8, !tbaa !36
  br label %166

162:                                              ; preds = %2
  %163 = load ptr, ptr %0, align 8, !tbaa !31
  %164 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %163, i64 0, i32 5
  store i32 1034, ptr %164, align 8, !tbaa !32
  %165 = load ptr, ptr %163, align 8, !tbaa !34
  tail call void %165(ptr noundef nonnull %0) #7
  br label %166

166:                                              ; preds = %162, %160, %129, %39, %40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_tga(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = tail call i32 @fflush(ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !30
  %7 = tail call i32 @ferror(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 36, ptr %11, align 8, !tbaa !32
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %0) #7
  br label %13

13:                                               ; preds = %9, %2
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) #3 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %11, %16
  %17 = phi i32 [ %26, %16 ], [ %9, %11 ]
  %18 = phi ptr [ %20, %16 ], [ %15, %11 ]
  %19 = phi ptr [ %25, %16 ], [ %12, %11 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 1
  %21 = load i8, ptr %18, align 1, !tbaa !28
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !28
  %25 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %24, ptr %19, align 1, !tbaa !28
  %26 = add i32 %17, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !43

28:                                               ; preds = %16, %3
  %29 = load ptr, ptr %7, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !22
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = tail call i64 @fwrite(ptr noundef %29, i64 noundef 1, i64 noundef %32, ptr noundef %34)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_gray_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) #3 {
  %4 = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i32 [ %20, %13 ], [ %6, %8 ]
  %15 = phi ptr [ %19, %13 ], [ %9, %8 ]
  %16 = phi ptr [ %17, %13 ], [ %12, %8 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = load i8, ptr %16, align 1, !tbaa !28
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %18, ptr %15, align 1, !tbaa !28
  %20 = add i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !44

22:                                               ; preds = %13, %3
  %23 = load ptr, ptr %4, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !22
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = tail call i64 @fwrite(ptr noundef %23, i64 noundef 1, i64 noundef %26, ptr noundef %28)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @put_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) #3 {
  %4 = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i32 [ %26, %13 ], [ %6, %8 ]
  %15 = phi ptr [ %25, %13 ], [ %9, %8 ]
  %16 = phi ptr [ %24, %13 ], [ %12, %8 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !28
  store i8 %18, ptr %15, align 1, !tbaa !28
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !28
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !28
  %22 = load i8, ptr %16, align 1, !tbaa !28
  %23 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %22, ptr %23, align 1, !tbaa !28
  %24 = getelementptr inbounds i8, ptr %16, i64 3
  %25 = getelementptr inbounds i8, ptr %15, i64 3
  %26 = add i32 %14, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !45

28:                                               ; preds = %13, %3
  %29 = load ptr, ptr %4, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !22
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = tail call i64 @fwrite(ptr noundef %29, i64 noundef 1, i64 noundef %32, ptr noundef %34)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = !{!17, !7, i64 0}
!17 = !{!"", !18, i64 0, !7, i64 48, !10, i64 56}
!18 = !{!"djpeg_dest_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 16}
!20 = !{!6, !10, i64 128}
!21 = !{!6, !10, i64 140}
!22 = !{!17, !10, i64 56}
!23 = !{!17, !7, i64 48}
!24 = !{!14, !7, i64 16}
!25 = !{!17, !7, i64 32}
!26 = !{!17, !10, i64 40}
!27 = !{!6, !10, i64 56}
!28 = !{!8, !8, i64 0}
!29 = !{!6, !10, i64 132}
!30 = !{!18, !7, i64 24}
!31 = !{!6, !7, i64 0}
!32 = !{!33, !10, i64 40}
!33 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!34 = !{!33, !7, i64 0}
!35 = !{!6, !10, i64 100}
!36 = !{!17, !7, i64 8}
!37 = !{!6, !10, i64 148}
!38 = !{!17, !7, i64 24}
!39 = !{!6, !7, i64 152}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
