; ModuleID = 'src/wrppm.c'
source_filename = "src/wrppm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ppm_dest_struct = type { %struct.djpeg_dest_struct, ptr, ptr, i64, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"P5\0A%ld %ld\0A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P6\0A%ld %ld\0A%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_write_ppm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 80) #5
  store ptr @start_output_ppm, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 2
  store ptr @finish_output_ppm, ptr %6, align 8, !tbaa !19
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !21
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds %struct.ppm_dest_struct, ptr %5, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !22
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds %struct.ppm_dest_struct, ptr %5, i64 0, i32 3
  store i64 %13, ptr %14, align 8, !tbaa !23
  %15 = load ptr, ptr %2, align 8, !tbaa !5
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 1, i64 noundef %13) #5
  %18 = getelementptr inbounds %struct.ppm_dest_struct, ptr %5, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr %2, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = load i32, ptr %7, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  %28 = load i32, ptr %27, align 4, !tbaa !27
  %29 = mul i32 %28, %26
  %30 = tail call ptr %25(ptr noundef %0, i32 noundef 1, i32 noundef %29, i32 noundef 1) #5
  %31 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 5
  store i32 1, ptr %32, align 8, !tbaa !29
  %33 = load i32, ptr %19, align 4, !tbaa !25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 1
  store ptr @copy_pixel_rows, ptr %36, align 8, !tbaa !30
  br label %49

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !31
  %40 = icmp eq i32 %39, 1
  %41 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 1
  br i1 %40, label %42, label %43

42:                                               ; preds = %37
  store ptr @put_demapped_gray, ptr %41, align 8, !tbaa !30
  br label %49

43:                                               ; preds = %37
  store ptr @put_demapped_rgb, ptr %41, align 8, !tbaa !30
  br label %49

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.ppm_dest_struct, ptr %5, i64 0, i32 2
  store ptr %17, ptr %45, align 8, !tbaa !32
  %46 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 4
  store ptr %45, ptr %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 5
  store i32 1, ptr %47, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 1
  store ptr @put_pixel_rows, ptr %48, align 8, !tbaa !30
  br label %49

49:                                               ; preds = %35, %43, %42, %44
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal void @start_output_ppm(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !31
  switch i32 %4, label %25 [
    i32 1, label %5
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = zext i32 %12 to i64
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i64 noundef %10, i64 noundef %13, i32 noundef 255)
  br label %29

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !20
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = zext i32 %22 to i64
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.1, i64 noundef %20, i64 noundef %23, i32 noundef 255)
  br label %29

25:                                               ; preds = %2
  %26 = load ptr, ptr %0, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 1025, ptr %27, align 8, !tbaa !36
  %28 = load ptr, ptr %26, align 8, !tbaa !38
  tail call void %28(ptr noundef nonnull %0) #5
  br label %29

29:                                               ; preds = %25, %15, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_ppm(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call i32 @fflush(ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = tail call i32 @ferror(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 36, ptr %11, align 8, !tbaa !36
  %12 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void %12(ptr noundef nonnull %0) #5
  br label %13

13:                                               ; preds = %9, %2
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal void @copy_pixel_rows(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #2 {
  %4 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i32 [ %20, %13 ], [ %6, %8 ]
  %15 = phi ptr [ %17, %13 ], [ %12, %8 ]
  %16 = phi ptr [ %19, %13 ], [ %9, %8 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  %18 = load i8, ptr %15, align 1, !tbaa !41
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !41
  %20 = add i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !42

22:                                               ; preds = %13, %3
  %23 = load ptr, ptr %4, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !33
  %28 = tail call i64 @fwrite(ptr noundef %23, i64 noundef 1, i64 noundef %25, ptr noundef %27)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) #2 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  br label %16

16:                                               ; preds = %11, %16
  %17 = phi i32 [ %26, %16 ], [ %9, %11 ]
  %18 = phi ptr [ %25, %16 ], [ %12, %11 ]
  %19 = phi ptr [ %20, %16 ], [ %15, %11 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %19, align 1, !tbaa !41
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !41
  %25 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %24, ptr %18, align 1, !tbaa !41
  %26 = add i32 %17, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !45

28:                                               ; preds = %16, %3
  %29 = load ptr, ptr %7, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !33
  %34 = tail call i64 @fwrite(ptr noundef %29, i64 noundef 1, i64 noundef %31, ptr noundef %33)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_rgb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) #2 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds ptr, ptr %5, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr %11, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  br label %20

20:                                               ; preds = %15, %20
  %21 = phi i32 [ %36, %20 ], [ %13, %15 ]
  %22 = phi ptr [ %35, %20 ], [ %16, %15 ]
  %23 = phi ptr [ %24, %20 ], [ %19, %15 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %23, align 1, !tbaa !41
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i8, ptr %6, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !41
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %28, ptr %22, align 1, !tbaa !41
  %30 = getelementptr inbounds i8, ptr %8, i64 %26
  %31 = load i8, ptr %30, align 1, !tbaa !41
  %32 = getelementptr inbounds i8, ptr %22, i64 2
  store i8 %31, ptr %29, align 1, !tbaa !41
  %33 = getelementptr inbounds i8, ptr %10, i64 %26
  %34 = load i8, ptr %33, align 1, !tbaa !41
  %35 = getelementptr inbounds i8, ptr %22, i64 3
  store i8 %34, ptr %32, align 1, !tbaa !41
  %36 = add i32 %21, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %20, !llvm.loop !46

38:                                               ; preds = %20, %3
  %39 = load ptr, ptr %11, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !33
  %44 = tail call i64 @fwrite(ptr noundef %39, i64 noundef 1, i64 noundef %41, ptr noundef %43)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_pixel_rows(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #2 {
  %4 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = tail call i64 @fwrite(ptr noundef %5, i64 noundef 1, i64 noundef %7, ptr noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!17 = !{!"", !18, i64 0, !7, i64 48, !7, i64 56, !15, i64 64, !10, i64 72}
!18 = !{!"djpeg_dest_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 16}
!20 = !{!6, !10, i64 128}
!21 = !{!6, !10, i64 136}
!22 = !{!17, !10, i64 72}
!23 = !{!17, !15, i64 64}
!24 = !{!17, !7, i64 48}
!25 = !{!6, !10, i64 100}
!26 = !{!14, !7, i64 16}
!27 = !{!6, !10, i64 140}
!28 = !{!17, !7, i64 32}
!29 = !{!17, !10, i64 40}
!30 = !{!17, !7, i64 8}
!31 = !{!6, !10, i64 56}
!32 = !{!17, !7, i64 56}
!33 = !{!17, !7, i64 24}
!34 = !{!6, !10, i64 132}
!35 = !{!6, !7, i64 0}
!36 = !{!37, !10, i64 40}
!37 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!38 = !{!37, !7, i64 0}
!39 = !{!18, !7, i64 24}
!40 = !{!7, !7, i64 0}
!41 = !{!8, !8, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!6, !7, i64 152}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
