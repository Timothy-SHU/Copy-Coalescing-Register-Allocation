; ModuleID = 'src/jcapimin.c'
source_filename = "src/jcapimin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_CreateCompress(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = icmp eq i32 %1, 61
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 10, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 61, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 6, i32 0, i64 1
  store i32 %1, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %6, %3
  %15 = icmp eq i64 %2, 496
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 19, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 496, ptr %19, align 4, !tbaa !17
  %20 = trunc i64 %2 to i32
  %21 = load ptr, ptr %0, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 6, i32 0, i64 1
  store i32 %20, ptr %22, align 4, !tbaa !17
  %23 = load ptr, ptr %0, align 8, !tbaa !13
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  tail call void %24(ptr noundef nonnull %0) #4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(496) %0, i8 0, i64 496, i1 false)
  store ptr %26, ptr %0, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 3
  store i32 0, ptr %27, align 8, !tbaa !19
  tail call void @jinit_memory_mgr(ptr noundef nonnull %0) #4
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %30, i8 0, i64 40, i1 false)
  %31 = getelementptr i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %31, i8 0, i64 64, i1 false)
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 10
  store double 1.000000e+00, ptr %32, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  store i32 100, ptr %33, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jinit_memory_mgr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_destroy_compress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_destroy(ptr noundef %0) #4
  ret void
}

declare void @jpeg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_abort_compress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_abort(ptr noundef %0) #4
  ret void
}

declare void @jpeg_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_suppress_tables(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %2, %10
  %4 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.JQUANT_TBL, ptr %6, i64 0, i32 1
  store i32 %1, ptr %9, align 4, !tbaa !25
  br label %10

10:                                               ; preds = %3, %8
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %3, !llvm.loop !27

13:                                               ; preds = %10, %26
  %14 = phi i64 [ %27, %26 ], [ 0, %10 ]
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.JHUFF_TBL, ptr %16, i64 0, i32 2
  store i32 %1, ptr %19, align 4, !tbaa !29
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %14
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.JHUFF_TBL, ptr %22, i64 0, i32 2
  store i32 %1, ptr %25, align 4, !tbaa !29
  br label %26

26:                                               ; preds = %20, %24
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %13, !llvm.loop !31

29:                                               ; preds = %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_finish_compress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !23
  switch i32 %3, label %19 [
    i32 101, label %4
    i32 102, label %4
    i32 103, label %25
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 36
  %6 = load i32, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !33
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 66, ptr %12, align 8, !tbaa !14
  %13 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.jpeg_comp_master, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  tail call void %18(ptr noundef %0) #4
  br label %25

19:                                               ; preds = %1
  %20 = load ptr, ptr %0, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 18, ptr %21, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 6
  store i32 %3, ptr %22, align 4, !tbaa !17
  %23 = load ptr, ptr %0, align 8, !tbaa !13
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  tail call void %24(ptr noundef nonnull %0) #4
  br label %25

25:                                               ; preds = %1, %19, %14
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.jpeg_comp_master, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !37
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  br label %35

35:                                               ; preds = %31, %65
  %36 = phi ptr [ %27, %31 ], [ %69, %65 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !38
  tail call void %37(ptr noundef %0) #4
  %38 = load i32, ptr %32, align 8, !tbaa !39
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %35, %60
  %41 = phi i64 [ %61, %60 ], [ 0, %35 ]
  %42 = phi i32 [ %62, %60 ], [ %38, %35 ]
  %43 = load ptr, ptr %33, align 8, !tbaa !20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %43, i64 0, i32 1
  store i64 %41, ptr %46, align 8, !tbaa !40
  %47 = zext i32 %42 to i64
  %48 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %43, i64 0, i32 2
  store i64 %47, ptr %48, align 8, !tbaa !42
  %49 = load ptr, ptr %43, align 8, !tbaa !43
  tail call void %49(ptr noundef %0) #4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load ptr, ptr %34, align 8, !tbaa !44
  %52 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = tail call i32 %53(ptr noundef %0, ptr noundef null) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load ptr, ptr %0, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 22, ptr %58, align 8, !tbaa !14
  %59 = load ptr, ptr %57, align 8, !tbaa !18
  tail call void %59(ptr noundef nonnull %0) #4
  br label %60

60:                                               ; preds = %50, %56
  %61 = add nuw nsw i64 %41, 1
  %62 = load i32, ptr %32, align 8, !tbaa !39
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %40, label %65, !llvm.loop !47

65:                                               ; preds = %60, %35
  %66 = load ptr, ptr %26, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.jpeg_comp_master, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  tail call void %68(ptr noundef %0) #4
  %69 = load ptr, ptr %26, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.jpeg_comp_master, ptr %69, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !37
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %35, label %73, !llvm.loop !48

73:                                               ; preds = %65, %25
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %75 = load ptr, ptr %74, align 8, !tbaa !49
  %76 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %75, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  tail call void %77(ptr noundef %0) #4
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %79, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  tail call void %81(ptr noundef %0) #4
  tail call void @jpeg_abort(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_write_marker(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 36
  %6 = load i32, ptr %5, align 8, !tbaa !32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = add i32 %10, -101
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %21, label %13

13:                                               ; preds = %8, %4
  %14 = load ptr, ptr %0, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 18, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6
  store i32 %17, ptr %18, align 4, !tbaa !17
  %19 = load ptr, ptr %0, align 8, !tbaa !13
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  tail call void %20(ptr noundef nonnull %0) #4
  br label %21

21:                                               ; preds = %8, %13
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  tail call void %24(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_write_tables(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = icmp eq i32 %3, 100
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 18, ptr %7, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %3, ptr %8, align 4, !tbaa !17
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  tail call void %10(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %5, %1
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  tail call void %14(ptr noundef nonnull %0) #4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  tail call void %18(ptr noundef nonnull %0) #4
  tail call void @jinit_marker_writer(ptr noundef nonnull %0) #4
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  tail call void %22(ptr noundef nonnull %0) #4
  %23 = load ptr, ptr %15, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  tail call void %25(ptr noundef nonnull %0) #4
  tail call void @jpeg_abort(ptr noundef nonnull %0) #4
  ret void
}

declare void @jinit_marker_writer(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !16, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !7, i64 0}
!19 = !{!6, !10, i64 24}
!20 = !{!6, !7, i64 16}
!21 = !{!6, !7, i64 32}
!22 = !{!6, !11, i64 56}
!23 = !{!6, !10, i64 28}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !10, i64 128}
!26 = !{!"", !8, i64 0, !10, i64 128}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!30, !10, i64 276}
!30 = !{!"", !8, i64 0, !8, i64 17, !10, i64 276}
!31 = distinct !{!31, !28}
!32 = !{!6, !10, i64 296}
!33 = !{!6, !10, i64 44}
!34 = !{!6, !7, i64 424}
!35 = !{!36, !7, i64 16}
!36 = !{!"jpeg_comp_master", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!37 = !{!36, !10, i64 28}
!38 = !{!36, !7, i64 0}
!39 = !{!6, !10, i64 312}
!40 = !{!41, !16, i64 8}
!41 = !{!"jpeg_progress_mgr", !7, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !10, i64 28}
!42 = !{!41, !16, i64 16}
!43 = !{!41, !7, i64 0}
!44 = !{!6, !7, i64 448}
!45 = !{!46, !7, i64 8}
!46 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = !{!6, !7, i64 456}
!50 = !{!51, !7, i64 32}
!51 = !{!"jpeg_marker_writer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!52 = !{!53, !7, i64 32}
!53 = !{!"jpeg_destination_mgr", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!54 = !{!51, !7, i64 0}
!55 = !{!15, !7, i64 32}
!56 = !{!53, !7, i64 16}
!57 = !{!51, !7, i64 40}
