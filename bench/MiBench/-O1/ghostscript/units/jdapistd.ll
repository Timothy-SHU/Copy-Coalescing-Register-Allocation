; ModuleID = 'jdapistd.c'
source_filename = "jdapistd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_start_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 202
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void @jinit_master_decompress(ptr noundef %0) #3
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  store i32 203, ptr %2, align 4, !tbaa !5
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr %2, align 4, !tbaa !5
  switch i32 %11, label %26 [
    i32 203, label %12
    i32 204, label %32
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.jpeg_input_controller, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 47, ptr %20, align 8, !tbaa !18
  %21 = load ptr, ptr %19, align 8, !tbaa !21
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  store i32 %24, ptr %25, align 4, !tbaa !23
  br label %32

26:                                               ; preds = %10
  %27 = load ptr, ptr %0, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 5
  store i32 18, ptr %28, align 8, !tbaa !18
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 6
  store i32 %11, ptr %29, align 4, !tbaa !24
  %30 = load ptr, ptr %0, align 8, !tbaa !17
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  tail call void %31(ptr noundef nonnull %0) #3
  br label %32

32:                                               ; preds = %10, %26, %22
  %33 = load i32, ptr %2, align 4, !tbaa !5
  %34 = icmp eq i32 %33, 204
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  %38 = load ptr, ptr %37, align 8, !tbaa !26
  tail call void %38(ptr noundef %0) #3
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  store i32 0, ptr %39, align 8, !tbaa !28
  store i32 204, ptr %2, align 4, !tbaa !5
  br label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %42 = load ptr, ptr %41, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !29
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40, %46
  %47 = load ptr, ptr %0, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 5
  store i32 47, ptr %48, align 8, !tbaa !18
  %49 = load ptr, ptr %47, align 8, !tbaa !21
  tail call void %49(ptr noundef nonnull %0) #3
  %50 = load ptr, ptr %41, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !29
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %46, !llvm.loop !30

54:                                               ; preds = %46, %40
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %56 = load i32, ptr %55, align 4, !tbaa !32
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 205, i32 206
  br label %59

59:                                               ; preds = %5, %54
  %60 = phi i32 [ %58, %54 ], [ 207, %5 ]
  store i32 %60, ptr %2, align 4, !tbaa !5
  ret i32 1
}

declare void @jinit_master_decompress(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_read_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 205
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 18, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %6, ptr %11, align 4, !tbaa !24
  %12 = load ptr, ptr %0, align 8, !tbaa !17
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  tail call void %13(ptr noundef nonnull %0) #3
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  %16 = load i32, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 4, !tbaa !33
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 119, ptr %22, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %0, i32 noundef -1) #3
  br label %43

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !36
  %32 = zext i32 %18 to i64
  %33 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 2
  store i64 %32, ptr %33, align 8, !tbaa !38
  %34 = load ptr, ptr %27, align 8, !tbaa !39
  tail call void %34(ptr noundef %0) #3
  br label %35

35:                                               ; preds = %29, %25
  store i32 0, ptr %4, align 4, !tbaa !40
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  call void %39(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %2) #3
  %40 = load i32, ptr %4, align 4, !tbaa !40
  %41 = load i32, ptr %15, align 8, !tbaa !28
  %42 = add i32 %41, %40
  store i32 %42, ptr %15, align 8, !tbaa !28
  br label %43

43:                                               ; preds = %35, %20
  %44 = phi i32 [ 0, %20 ], [ %40, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_read_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 206
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 18, ptr %9, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %5, ptr %10, align 4, !tbaa !24
  %11 = load ptr, ptr %0, align 8, !tbaa !17
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  tail call void %12(ptr noundef nonnull %0) #3
  br label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  %15 = load i32, ptr %14, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %17 = load i32, ptr %16, align 4, !tbaa !33
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 119, ptr %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %0, i32 noundef -1) #3
  br label %55

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = zext i32 %15 to i64
  %30 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !36
  %31 = zext i32 %17 to i64
  %32 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 2
  store i64 %31, ptr %32, align 8, !tbaa !38
  %33 = load ptr, ptr %26, align 8, !tbaa !39
  tail call void %33(ptr noundef %0) #3
  br label %34

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %36 = load i32, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %38 = load i32, ptr %37, align 4, !tbaa !45
  %39 = mul nsw i32 %38, %36
  %40 = icmp ugt i32 %39, %2
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 21, ptr %43, align 8, !tbaa !18
  %44 = load ptr, ptr %42, align 8, !tbaa !21
  tail call void %44(ptr noundef nonnull %0) #3
  br label %45

45:                                               ; preds = %41, %34
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = tail call i32 %49(ptr noundef %0, ptr noundef %1) #3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %14, align 8, !tbaa !28
  %54 = add i32 %53, %39
  store i32 %54, ptr %14, align 8, !tbaa !28
  br label %55

55:                                               ; preds = %45, %52, %19
  %56 = phi i32 [ 0, %19 ], [ %39, %52 ], [ 0, %45 ]
  ret i32 %56
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !10, i64 80}
!14 = !{!6, !7, i64 776}
!15 = !{!16, !10, i64 32}
!16 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!17 = !{!6, !7, i64 0}
!18 = !{!19, !10, i64 40}
!19 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !20, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!20 = !{!"long", !8, i64 0}
!21 = !{!19, !7, i64 0}
!22 = !{!6, !10, i64 164}
!23 = !{!6, !10, i64 172}
!24 = !{!8, !8, i64 0}
!25 = !{!6, !7, i64 744}
!26 = !{!27, !7, i64 0}
!27 = !{!"jpeg_decomp_master", !7, i64 0, !7, i64 8, !10, i64 16}
!28 = !{!6, !10, i64 160}
!29 = !{!27, !10, i64 16}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!6, !10, i64 84}
!33 = !{!6, !10, i64 132}
!34 = !{!19, !7, i64 8}
!35 = !{!6, !7, i64 16}
!36 = !{!37, !20, i64 8}
!37 = !{!"jpeg_progress_mgr", !7, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !10, i64 28}
!38 = !{!37, !20, i64 16}
!39 = !{!37, !7, i64 0}
!40 = !{!10, !10, i64 0}
!41 = !{!6, !7, i64 752}
!42 = !{!43, !7, i64 8}
!43 = !{!"jpeg_d_main_controller", !7, i64 0, !7, i64 8}
!44 = !{!6, !10, i64 392}
!45 = !{!6, !10, i64 396}
!46 = !{!6, !7, i64 760}
!47 = !{!48, !7, i64 24}
!48 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
