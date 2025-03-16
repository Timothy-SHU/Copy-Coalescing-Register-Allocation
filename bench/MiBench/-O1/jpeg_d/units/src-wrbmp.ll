; ModuleID = 'src/wrbmp.c'
source_filename = "src/wrbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bmp_dest_struct = type { %struct.djpeg_dest_struct, i32, ptr, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_write_bmp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 80) #7
  store ptr @start_output_bmp, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 2
  store ptr @finish_output_bmp, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !21
  switch i32 %10, label %20 [
    i32 1, label %11
    i32 2, label %13
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 1
  store ptr @put_gray_rows, ptr %12, align 8, !tbaa !22
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %15 = load i32, ptr %14, align 4, !tbaa !23
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 1
  br i1 %16, label %19, label %18

18:                                               ; preds = %13
  store ptr @put_gray_rows, ptr %17, align 8, !tbaa !22
  br label %24

19:                                               ; preds = %13
  store ptr @put_pixel_rows, ptr %17, align 8, !tbaa !22
  br label %24

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 1005, ptr %22, align 8, !tbaa !25
  %23 = load ptr, ptr %21, align 8, !tbaa !27
  tail call void %23(ptr noundef nonnull %0) #7
  br label %24

24:                                               ; preds = %20, %19, %18, %11
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0) #7
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !28
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  %28 = load i32, ptr %27, align 4, !tbaa !29
  %29 = mul i32 %28, %26
  %30 = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i64 0, i32 3
  store i32 %29, ptr %30, align 8, !tbaa !30
  %31 = sub i32 0, %29
  %32 = and i32 %31, 3
  %33 = add i32 %29, %32
  %34 = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i64 0, i32 4
  store i32 %33, ptr %34, align 4, !tbaa !31
  %35 = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i64 0, i32 5
  store i32 %32, ptr %35, align 8, !tbaa !32
  %36 = load ptr, ptr %3, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %40 = load i32, ptr %39, align 4, !tbaa !34
  %41 = tail call ptr %38(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %33, i32 noundef %40, i32 noundef 1) #7
  %42 = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i64 0, i32 6
  store i32 0, ptr %43, align 4, !tbaa !36
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !37
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !38
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !38
  br label %51

51:                                               ; preds = %47, %24
  %52 = load ptr, ptr %3, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = tail call ptr %54(ptr noundef %0, i32 noundef 1, i32 noundef %33, i32 noundef 1) #7
  %56 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 4
  store ptr %55, ptr %56, align 8, !tbaa !42
  %57 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 5
  store i32 1, ptr %57, align 8, !tbaa !43
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @start_output_bmp(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_bmp(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [14 x i8], align 1
  %4 = alloca [40 x i8], align 16
  %5 = alloca [14 x i8], align 1
  %6 = alloca [12 x i8], align 1
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !20
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  br i1 %13, label %91, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %16 = load i32, ptr %14, align 8, !tbaa !21
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %20 = load i32, ptr %19, align 4, !tbaa !23
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i8 8, i8 24
  %23 = select i1 %21, i32 256, i32 0
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i8 [ %22, %18 ], [ 8, %15 ]
  %26 = phi i1 [ %21, %18 ], [ true, %15 ]
  %27 = phi i32 [ %23, %18 ], [ 256, %15 ]
  %28 = mul nuw nsw i32 %27, 3
  %29 = or disjoint i32 %28, 26
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = zext i32 %35 to i64
  %37 = mul nuw nsw i64 %36, %33
  %38 = add nuw nsw i64 %37, %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store i8 66, ptr %5, align 1, !tbaa !45
  %39 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 1
  store i8 77, ptr %39, align 1, !tbaa !45
  %40 = trunc i64 %38 to i8
  %41 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 2
  store i8 %40, ptr %41, align 1, !tbaa !45
  %42 = lshr i64 %38, 8
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 3
  store i8 %43, ptr %44, align 1, !tbaa !45
  %45 = lshr i64 %38, 16
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 4
  store i8 %46, ptr %47, align 1, !tbaa !45
  %48 = lshr i64 %38, 24
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 5
  store i8 %49, ptr %50, align 1, !tbaa !45
  %51 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 10
  store i8 26, ptr %51, align 1, !tbaa !45
  %52 = lshr i64 %30, 8
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 11
  store i8 %53, ptr %54, align 1, !tbaa !45
  %55 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 12
  store i8 0, ptr %55, align 1, !tbaa !45
  %56 = getelementptr inbounds [14 x i8], ptr %5, i64 0, i64 13
  store i8 0, ptr %56, align 1, !tbaa !45
  store i8 12, ptr %6, align 1, !tbaa !45
  %57 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 1
  store i8 0, ptr %57, align 1, !tbaa !45
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %59 = load i32, ptr %58, align 8, !tbaa !28
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 4
  store i8 %60, ptr %61, align 1, !tbaa !45
  %62 = lshr i32 %59, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 5
  store i8 %63, ptr %64, align 1, !tbaa !45
  %65 = trunc i32 %35 to i8
  %66 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 6
  store i8 %65, ptr %66, align 1, !tbaa !45
  %67 = lshr i32 %35, 8
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 7
  store i8 %68, ptr %69, align 1, !tbaa !45
  %70 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 8
  store i8 1, ptr %70, align 1, !tbaa !45
  %71 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 9
  store i8 0, ptr %71, align 1, !tbaa !45
  %72 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 10
  store i8 %25, ptr %72, align 1, !tbaa !45
  %73 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 11
  store i8 0, ptr %73, align 1, !tbaa !45
  %74 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 14, ptr noundef %8)
  %75 = icmp eq i64 %74, 14
  br i1 %75, label %80, label %76

76:                                               ; preds = %24
  %77 = load ptr, ptr %0, align 8, !tbaa !24
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 5
  store i32 36, ptr %78, align 8, !tbaa !25
  %79 = load ptr, ptr %77, align 8, !tbaa !27
  tail call void %79(ptr noundef nonnull %0) #7
  br label %80

80:                                               ; preds = %76, %24
  %81 = load ptr, ptr %7, align 8, !tbaa !44
  %82 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 12, ptr noundef %81)
  %83 = icmp eq i64 %82, 12
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %0, align 8, !tbaa !24
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 5
  store i32 36, ptr %86, align 8, !tbaa !25
  %87 = load ptr, ptr %85, align 8, !tbaa !27
  tail call void %87(ptr noundef nonnull %0) #7
  br label %88

88:                                               ; preds = %84, %80
  br i1 %26, label %89, label %90

89:                                               ; preds = %88
  tail call fastcc void @write_colormap(ptr noundef %0, ptr noundef %1, i32 noundef %27, i32 noundef 3)
  br label %90

90:                                               ; preds = %88, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #7
  br label %216

91:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %92 = load i32, ptr %14, align 8, !tbaa !21
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %96 = load i32, ptr %95, align 4, !tbaa !23
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %97, i8 8, i8 24
  %99 = select i1 %97, i32 256, i32 0
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi i8 [ %98, %94 ], [ 8, %91 ]
  %102 = phi i1 [ %97, %94 ], [ true, %91 ]
  %103 = phi i32 [ %99, %94 ], [ 256, %91 ]
  %104 = shl nuw nsw i32 %103, 2
  %105 = or disjoint i32 %104, 54
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !31
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %111 = load i32, ptr %110, align 4, !tbaa !34
  %112 = zext i32 %111 to i64
  %113 = mul nuw nsw i64 %112, %109
  %114 = add nuw nsw i64 %113, %106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store i8 66, ptr %3, align 1, !tbaa !45
  %115 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 1
  store i8 77, ptr %115, align 1, !tbaa !45
  %116 = trunc i64 %114 to i8
  %117 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 2
  store i8 %116, ptr %117, align 1, !tbaa !45
  %118 = lshr i64 %114, 8
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 3
  store i8 %119, ptr %120, align 1, !tbaa !45
  %121 = lshr i64 %114, 16
  %122 = trunc i64 %121 to i8
  %123 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 4
  store i8 %122, ptr %123, align 1, !tbaa !45
  %124 = lshr i64 %114, 24
  %125 = trunc i64 %124 to i8
  %126 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 5
  store i8 %125, ptr %126, align 1, !tbaa !45
  %127 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 10
  store i8 54, ptr %127, align 1, !tbaa !45
  %128 = lshr i64 %106, 8
  %129 = trunc i64 %128 to i8
  %130 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 11
  store i8 %129, ptr %130, align 1, !tbaa !45
  %131 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 12
  store i8 0, ptr %131, align 1, !tbaa !45
  %132 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 13
  store i8 0, ptr %132, align 1, !tbaa !45
  store i8 40, ptr %4, align 16, !tbaa !45
  %133 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 1
  store i8 0, ptr %133, align 1, !tbaa !45
  %134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %135 = load i32, ptr %134, align 8, !tbaa !28
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 4
  store i8 %136, ptr %137, align 4, !tbaa !45
  %138 = lshr i32 %135, 8
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 5
  store i8 %139, ptr %140, align 1, !tbaa !45
  %141 = lshr i32 %135, 16
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 6
  store i8 %142, ptr %143, align 2, !tbaa !45
  %144 = lshr i32 %135, 24
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 7
  store i8 %145, ptr %146, align 1, !tbaa !45
  %147 = trunc i32 %111 to i8
  %148 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 8
  store i8 %147, ptr %148, align 8, !tbaa !45
  %149 = lshr i32 %111, 8
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 9
  store i8 %150, ptr %151, align 1, !tbaa !45
  %152 = lshr i32 %111, 16
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 10
  store i8 %153, ptr %154, align 2, !tbaa !45
  %155 = lshr i32 %111, 24
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 11
  store i8 %156, ptr %157, align 1, !tbaa !45
  %158 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 12
  store i8 1, ptr %158, align 4, !tbaa !45
  %159 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 13
  store i8 0, ptr %159, align 1, !tbaa !45
  %160 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 14
  store i8 %101, ptr %160, align 2, !tbaa !45
  %161 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 15
  store i8 0, ptr %161, align 1, !tbaa !45
  %162 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 51
  %163 = load i8, ptr %162, align 8, !tbaa !46
  %164 = icmp eq i8 %163, 2
  br i1 %164, label %165, label %194

165:                                              ; preds = %100
  %166 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 52
  %167 = load i16, ptr %166, align 2, !tbaa !47
  %168 = trunc i16 %167 to i8
  %169 = mul i8 %168, 100
  %170 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 24
  store i8 %169, ptr %170, align 8, !tbaa !45
  %171 = zext i16 %167 to i64
  %172 = mul nuw nsw i64 %171, 100
  %173 = lshr i64 %172, 8
  %174 = trunc i64 %173 to i8
  %175 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 25
  store i8 %174, ptr %175, align 1, !tbaa !45
  %176 = lshr i64 %172, 16
  %177 = trunc i64 %176 to i8
  %178 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 26
  store i8 %177, ptr %178, align 2, !tbaa !45
  %179 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 27
  store i8 0, ptr %179, align 1, !tbaa !45
  %180 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 53
  %181 = load i16, ptr %180, align 4, !tbaa !48
  %182 = trunc i16 %181 to i8
  %183 = mul i8 %182, 100
  %184 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 28
  store i8 %183, ptr %184, align 4, !tbaa !45
  %185 = zext i16 %181 to i64
  %186 = mul nuw nsw i64 %185, 100
  %187 = lshr i64 %186, 8
  %188 = trunc i64 %187 to i8
  %189 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 29
  store i8 %188, ptr %189, align 1, !tbaa !45
  %190 = lshr i64 %186, 16
  %191 = trunc i64 %190 to i8
  %192 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 30
  store i8 %191, ptr %192, align 2, !tbaa !45
  %193 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 31
  store i8 0, ptr %193, align 1, !tbaa !45
  br label %194

194:                                              ; preds = %165, %100
  %195 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 32
  store i8 0, ptr %195, align 16, !tbaa !45
  %196 = lshr exact i32 %103, 8
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 33
  store i8 %197, ptr %198, align 1, !tbaa !45
  %199 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 14, ptr noundef %8)
  %200 = icmp eq i64 %199, 14
  br i1 %200, label %205, label %201

201:                                              ; preds = %194
  %202 = load ptr, ptr %0, align 8, !tbaa !24
  %203 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %202, i64 0, i32 5
  store i32 36, ptr %203, align 8, !tbaa !25
  %204 = load ptr, ptr %202, align 8, !tbaa !27
  tail call void %204(ptr noundef nonnull %0) #7
  br label %205

205:                                              ; preds = %201, %194
  %206 = load ptr, ptr %7, align 8, !tbaa !44
  %207 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 40, ptr noundef %206)
  %208 = icmp eq i64 %207, 40
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %0, align 8, !tbaa !24
  %211 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %210, i64 0, i32 5
  store i32 36, ptr %211, align 8, !tbaa !25
  %212 = load ptr, ptr %210, align 8, !tbaa !27
  tail call void %212(ptr noundef nonnull %0) #7
  br label %213

213:                                              ; preds = %209, %205
  br i1 %102, label %214, label %215

214:                                              ; preds = %213
  tail call fastcc void @write_colormap(ptr noundef %0, ptr noundef %1, i32 noundef %103, i32 noundef 4)
  br label %215

215:                                              ; preds = %213, %214
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #7
  br label %216

216:                                              ; preds = %215, %90
  %217 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %218 = load i32, ptr %217, align 4, !tbaa !34
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %257, label %220

220:                                              ; preds = %216
  %221 = icmp eq ptr %10, null
  %222 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %10, i64 0, i32 1
  %223 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %10, i64 0, i32 2
  %224 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %225 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 2
  %226 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 4
  br label %229

227:                                              ; preds = %248, %237
  %228 = icmp eq i32 %242, 0
  br i1 %228, label %257, label %229, !llvm.loop !49

229:                                              ; preds = %220, %227
  %230 = phi i32 [ %218, %220 ], [ %242, %227 ]
  br i1 %221, label %237, label %231

231:                                              ; preds = %229
  %232 = load i32, ptr %217, align 4, !tbaa !34
  %233 = sub i32 %232, %230
  %234 = zext i32 %233 to i64
  store i64 %234, ptr %222, align 8, !tbaa !51
  %235 = zext i32 %232 to i64
  store i64 %235, ptr %223, align 8, !tbaa !52
  %236 = load ptr, ptr %10, align 8, !tbaa !53
  tail call void %236(ptr noundef %0) #7
  br label %237

237:                                              ; preds = %231, %229
  %238 = load ptr, ptr %224, align 8, !tbaa !5
  %239 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %238, i64 0, i32 7
  %240 = load ptr, ptr %239, align 8, !tbaa !54
  %241 = load ptr, ptr %225, align 8, !tbaa !35
  %242 = add i32 %230, -1
  %243 = tail call ptr %240(ptr noundef %0, ptr noundef %241, i32 noundef %242, i32 noundef 1, i32 noundef 0) #7
  %244 = load i32, ptr %226, align 4, !tbaa !31
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %227, label %246

246:                                              ; preds = %237
  %247 = load ptr, ptr %243, align 8, !tbaa !55
  br label %248

248:                                              ; preds = %246, %248
  %249 = phi ptr [ %254, %248 ], [ %247, %246 ]
  %250 = phi i32 [ %255, %248 ], [ %244, %246 ]
  %251 = load i8, ptr %249, align 1, !tbaa !45
  %252 = zext i8 %251 to i32
  %253 = tail call i32 @putc(i32 noundef %252, ptr noundef %8)
  %254 = getelementptr inbounds i8, ptr %249, i64 1
  %255 = add i32 %250, -1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %227, label %248, !llvm.loop !56

257:                                              ; preds = %227, %216
  %258 = icmp eq ptr %10, null
  br i1 %258, label %263, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %10, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !57
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %260, align 8, !tbaa !57
  br label %263

263:                                              ; preds = %259, %257
  %264 = tail call i32 @fflush(ptr noundef %8)
  %265 = tail call i32 @ferror(ptr noundef %8) #7
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr %0, align 8, !tbaa !24
  %269 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %268, i64 0, i32 5
  store i32 36, ptr %269, align 8, !tbaa !25
  %270 = load ptr, ptr %268, align 8, !tbaa !27
  tail call void %270(ptr noundef nonnull %0) #7
  br label %271

271:                                              ; preds = %267, %263
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray_rows(ptr noundef %0, ptr nocapture noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !36
  %12 = tail call ptr %7(ptr noundef %0, ptr noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 1) #7
  %13 = load i32, ptr %10, align 4, !tbaa !36
  %14 = add i32 %13, 1
  store i32 %14, ptr %10, align 4, !tbaa !36
  %15 = load ptr, ptr %12, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %30, %23 ], [ %17, %19 ]
  %25 = phi ptr [ %29, %23 ], [ %15, %19 ]
  %26 = phi ptr [ %27, %23 ], [ %22, %19 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !45
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %28, ptr %25, align 1, !tbaa !45
  %30 = add i32 %24, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %23, !llvm.loop !58

32:                                               ; preds = %23, %3
  %33 = phi ptr [ %15, %3 ], [ %29, %23 ]
  %34 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %38, i1 false), !tbaa !45
  br label %39

39:                                               ; preds = %37, %32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(ptr noundef %0, ptr nocapture noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !36
  %12 = tail call ptr %7(ptr noundef %0, ptr noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 1) #7
  %13 = load i32, ptr %10, align 4, !tbaa !36
  %14 = add i32 %13, 1
  store i32 %14, ptr %10, align 4, !tbaa !36
  %15 = load ptr, ptr %12, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %36, %23 ], [ %17, %19 ]
  %25 = phi ptr [ %35, %23 ], [ %15, %19 ]
  %26 = phi ptr [ %33, %23 ], [ %22, %19 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !45
  %29 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %28, ptr %29, align 1, !tbaa !45
  %30 = getelementptr inbounds i8, ptr %26, i64 2
  %31 = load i8, ptr %27, align 1, !tbaa !45
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !45
  %33 = getelementptr inbounds i8, ptr %26, i64 3
  %34 = load i8, ptr %30, align 1, !tbaa !45
  store i8 %34, ptr %25, align 1, !tbaa !45
  %35 = getelementptr inbounds i8, ptr %25, i64 3
  %36 = add i32 %24, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %23, !llvm.loop !59

38:                                               ; preds = %23, %3
  %39 = phi ptr [ %15, %3 ], [ %35, %23 ]
  %40 = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !32
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = zext nneg i32 %41 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %39, i8 0, i64 %44, i1 false), !tbaa !45
  br label %45

45:                                               ; preds = %43, %38
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @write_colormap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  %8 = load i32, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %6, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 4
  br label %73

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %16 = load i32, ptr %15, align 8, !tbaa !62
  %17 = icmp eq i32 %16, 3
  %18 = icmp sgt i32 %8, 0
  br i1 %17, label %23, label %19

19:                                               ; preds = %14
  br i1 %18, label %20, label %87

20:                                               ; preds = %19
  %21 = icmp eq i32 %3, 4
  %22 = zext nneg i32 %8 to i64
  br label %51

23:                                               ; preds = %14
  br i1 %18, label %24, label %87

24:                                               ; preds = %23
  %25 = getelementptr inbounds ptr, ptr %6, i64 2
  %26 = getelementptr inbounds ptr, ptr %6, i64 1
  %27 = icmp eq i32 %3, 4
  %28 = zext nneg i32 %8 to i64
  br label %29

29:                                               ; preds = %24, %48
  %30 = phi i64 [ 0, %24 ], [ %49, %48 ]
  %31 = load ptr, ptr %25, align 8, !tbaa !55
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  %33 = load i8, ptr %32, align 1, !tbaa !45
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @putc(i32 noundef %34, ptr noundef %10)
  %36 = load ptr, ptr %26, align 8, !tbaa !55
  %37 = getelementptr inbounds i8, ptr %36, i64 %30
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = zext i8 %38 to i32
  %40 = tail call i32 @putc(i32 noundef %39, ptr noundef %10)
  %41 = load ptr, ptr %6, align 8, !tbaa !55
  %42 = getelementptr inbounds i8, ptr %41, i64 %30
  %43 = load i8, ptr %42, align 1, !tbaa !45
  %44 = zext i8 %43 to i32
  %45 = tail call i32 @putc(i32 noundef %44, ptr noundef %10)
  br i1 %27, label %46, label %48

46:                                               ; preds = %29
  %47 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  br label %48

48:                                               ; preds = %29, %46
  %49 = add nuw nsw i64 %30, 1
  %50 = icmp eq i64 %49, %28
  br i1 %50, label %83, label %29, !llvm.loop !63

51:                                               ; preds = %20, %70
  %52 = phi i64 [ 0, %20 ], [ %71, %70 ]
  %53 = load ptr, ptr %6, align 8, !tbaa !55
  %54 = getelementptr inbounds i8, ptr %53, i64 %52
  %55 = load i8, ptr %54, align 1, !tbaa !45
  %56 = zext i8 %55 to i32
  %57 = tail call i32 @putc(i32 noundef %56, ptr noundef %10)
  %58 = load ptr, ptr %6, align 8, !tbaa !55
  %59 = getelementptr inbounds i8, ptr %58, i64 %52
  %60 = load i8, ptr %59, align 1, !tbaa !45
  %61 = zext i8 %60 to i32
  %62 = tail call i32 @putc(i32 noundef %61, ptr noundef %10)
  %63 = load ptr, ptr %6, align 8, !tbaa !55
  %64 = getelementptr inbounds i8, ptr %63, i64 %52
  %65 = load i8, ptr %64, align 1, !tbaa !45
  %66 = zext i8 %65 to i32
  %67 = tail call i32 @putc(i32 noundef %66, ptr noundef %10)
  br i1 %21, label %68, label %70

68:                                               ; preds = %51
  %69 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  br label %70

70:                                               ; preds = %51, %68
  %71 = add nuw nsw i64 %52, 1
  %72 = icmp eq i64 %71, %22
  br i1 %72, label %85, label %51, !llvm.loop !64

73:                                               ; preds = %12, %80
  %74 = phi i32 [ 0, %12 ], [ %81, %80 ]
  %75 = tail call i32 @putc(i32 noundef %74, ptr noundef %10)
  %76 = tail call i32 @putc(i32 noundef %74, ptr noundef %10)
  %77 = tail call i32 @putc(i32 noundef %74, ptr noundef %10)
  br i1 %13, label %78, label %80

78:                                               ; preds = %73
  %79 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  br label %80

80:                                               ; preds = %73, %78
  %81 = add nuw nsw i32 %74, 1
  %82 = icmp eq i32 %81, 256
  br i1 %82, label %87, label %73, !llvm.loop !65

83:                                               ; preds = %48
  %84 = trunc i64 %49 to i32
  br label %87

85:                                               ; preds = %70
  %86 = trunc i64 %71 to i32
  br label %87

87:                                               ; preds = %80, %85, %83, %19, %23
  %88 = phi i32 [ 0, %23 ], [ 0, %19 ], [ %84, %83 ], [ %86, %85 ], [ 256, %80 ]
  %89 = icmp sgt i32 %88, %2
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load ptr, ptr %0, align 8, !tbaa !24
  %92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i64 0, i32 5
  store i32 1039, ptr %92, align 8, !tbaa !25
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i64 0, i32 6
  store i32 %88, ptr %93, align 4, !tbaa !45
  %94 = load ptr, ptr %0, align 8, !tbaa !24
  %95 = load ptr, ptr %94, align 8, !tbaa !27
  tail call void %95(ptr noundef nonnull %0) #7
  br label %96

96:                                               ; preds = %90, %87
  %97 = icmp slt i32 %88, %2
  br i1 %97, label %98, label %110

98:                                               ; preds = %96
  %99 = icmp eq i32 %3, 4
  br label %100

100:                                              ; preds = %98, %107
  %101 = phi i32 [ %88, %98 ], [ %108, %107 ]
  %102 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  %103 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  %104 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  br i1 %99, label %105, label %107

105:                                              ; preds = %100
  %106 = tail call i32 @putc(i32 noundef 0, ptr noundef %10)
  br label %107

107:                                              ; preds = %100, %105
  %108 = add nuw i32 %101, 1
  %109 = icmp eq i32 %108, %2
  br i1 %109, label %110, label %100, !llvm.loop !66

110:                                              ; preds = %107, %96
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!17 = !{!"", !18, i64 0, !10, i64 48, !7, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76}
!18 = !{!"djpeg_dest_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 16}
!20 = !{!17, !10, i64 48}
!21 = !{!6, !10, i64 56}
!22 = !{!17, !7, i64 8}
!23 = !{!6, !10, i64 100}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!26, !7, i64 0}
!28 = !{!6, !10, i64 128}
!29 = !{!6, !10, i64 140}
!30 = !{!17, !10, i64 64}
!31 = !{!17, !10, i64 68}
!32 = !{!17, !10, i64 72}
!33 = !{!14, !7, i64 32}
!34 = !{!6, !10, i64 132}
!35 = !{!17, !7, i64 56}
!36 = !{!17, !10, i64 76}
!37 = !{!6, !7, i64 16}
!38 = !{!39, !10, i64 36}
!39 = !{!"cdjpeg_progress_mgr", !40, i64 0, !10, i64 32, !10, i64 36, !10, i64 40}
!40 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!41 = !{!14, !7, i64 16}
!42 = !{!17, !7, i64 32}
!43 = !{!17, !10, i64 40}
!44 = !{!17, !7, i64 24}
!45 = !{!8, !8, i64 0}
!46 = !{!6, !8, i64 368}
!47 = !{!6, !12, i64 370}
!48 = !{!6, !12, i64 372}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!39, !15, i64 8}
!52 = !{!39, !15, i64 16}
!53 = !{!39, !7, i64 0}
!54 = !{!14, !7, i64 56}
!55 = !{!7, !7, i64 0}
!56 = distinct !{!56, !50}
!57 = !{!39, !10, i64 32}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = !{!6, !7, i64 152}
!61 = !{!6, !10, i64 148}
!62 = !{!6, !10, i64 136}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
