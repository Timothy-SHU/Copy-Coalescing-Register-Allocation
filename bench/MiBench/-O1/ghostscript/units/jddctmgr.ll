; ModuleID = 'jddctmgr.c'
source_filename = "jddctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_inverse_dct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 128) #3
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 0, %10 ], [ %21, %13 ]
  %15 = phi ptr [ %12, %10 ], [ %22, %13 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !5
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 1, i64 noundef 256) #3
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 20
  store ptr %18, ptr %19, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %18, i8 0, i64 256, i1 false)
  %20 = getelementptr inbounds %struct.my_idct_controller, ptr %5, i64 0, i32 1, i64 %14
  store i32 -1, ptr %20, align 4, !tbaa !24
  %21 = add nuw nsw i64 %14, 1
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 1
  %23 = load i32, ptr %7, align 8, !tbaa !20
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %13, label %26, !llvm.loop !25

26:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  br label %11

11:                                               ; preds = %7, %57
  %12 = phi i64 [ 0, %7 ], [ %58, %57 ]
  %13 = phi ptr [ null, %7 ], [ %33, %57 ]
  %14 = phi ptr [ %9, %7 ], [ %59, %57 ]
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !27
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, ptr %10, align 8, !tbaa !28
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !29
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 47, ptr %23, align 8, !tbaa !30
  br label %29

24:                                               ; preds = %11
  %25 = load ptr, ptr %0, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 6, ptr %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 6
  store i32 %16, ptr %27, align 4, !tbaa !32
  %28 = load ptr, ptr %0, align 8, !tbaa !29
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi ptr [ %22, %21 ], [ %28, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  tail call void %31(ptr noundef nonnull %0) #3
  br label %32

32:                                               ; preds = %29, %18
  %33 = phi ptr [ @jpeg_idct_islow, %18 ], [ %13, %29 ]
  %34 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %3, i64 0, i32 1, i64 %12
  store ptr %33, ptr %34, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 12
  %36 = load i32, ptr %35, align 8, !tbaa !35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.my_idct_controller, ptr %3, i64 0, i32 1, i64 %12
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  store i32 0, ptr %39, align 4, !tbaa !24
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ 0, %46 ], [ %55, %49 ]
  %51 = getelementptr inbounds [64 x i16], ptr %44, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !37
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds i32, ptr %48, i64 %50
  store i32 %53, ptr %54, align 4, !tbaa !24
  %55 = add nuw nsw i64 %50, 1
  %56 = icmp eq i64 %55, 64
  br i1 %56, label %57, label %49, !llvm.loop !38

57:                                               ; preds = %49, %42, %32, %38
  %58 = add nuw nsw i64 %12, 1
  %59 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 1
  %60 = load i32, ptr %4, align 8, !tbaa !20
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %11, label %63, !llvm.loop !39

63:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 800}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 88}
!19 = !{!"jpeg_inverse_dct", !7, i64 0, !8, i64 8}
!20 = !{!6, !10, i64 48}
!21 = !{!6, !7, i64 296}
!22 = !{!23, !7, i64 88}
!23 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!23, !10, i64 36}
!28 = !{!6, !10, i64 88}
!29 = !{!6, !7, i64 0}
!30 = !{!31, !10, i64 40}
!31 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!32 = !{!8, !8, i64 0}
!33 = !{!31, !7, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!23, !10, i64 48}
!36 = !{!23, !7, i64 80}
!37 = !{!12, !12, i64 0}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26}
