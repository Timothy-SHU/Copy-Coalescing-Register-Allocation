; ModuleID = 'jcdctmgr.c'
source_filename = "jcdctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, ptr, [4 x ptr] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_forward_dct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 56) #4
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_fdctmgr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %5, i64 0, i32 1
  store ptr @forward_DCT, ptr %11, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.my_fdct_controller, ptr %5, i64 0, i32 1
  store ptr @jpeg_fdct_islow, ptr %12, align 8, !tbaa !22
  br label %17

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 47, ptr %15, align 8, !tbaa !24
  %16 = load ptr, ptr %14, align 8, !tbaa !26
  tail call void %16(ptr noundef nonnull %0) #4
  br label %17

17:                                               ; preds = %13, %10
  %18 = getelementptr i8, ptr %5, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false), !tbaa !27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_fdctmgr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %7, %58
  %13 = phi i32 [ 0, %7 ], [ %59, %58 ]
  %14 = phi ptr [ %9, %7 ], [ %60, %58 ]
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !30
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %12
  %24 = load ptr, ptr %0, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 51, ptr %25, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 6
  store i32 %16, ptr %26, align 4, !tbaa !32
  %27 = load ptr, ptr %0, align 8, !tbaa !23
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  tail call void %28(ptr noundef nonnull %0) #4
  br label %29

29:                                               ; preds = %23, %18
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !27
  %33 = load i32, ptr %10, align 4, !tbaa !20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %30
  %37 = load ptr, ptr %36, align 8, !tbaa !27
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr %11, align 8, !tbaa !5
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = tail call ptr %41(ptr noundef %0, i32 noundef 1, i64 noundef 256) #4
  store ptr %42, ptr %36, align 8, !tbaa !27
  br label %43

43:                                               ; preds = %39, %35
  %44 = load ptr, ptr %36, align 8, !tbaa !27
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %52, %45 ]
  %47 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !33
  %49 = zext i16 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = getelementptr inbounds i32, ptr %44, i64 %46
  store i32 %50, ptr %51, align 4, !tbaa !34
  %52 = add nuw nsw i64 %46, 1
  %53 = icmp eq i64 %52, 64
  br i1 %53, label %58, label %45, !llvm.loop !35

54:                                               ; preds = %29
  %55 = load ptr, ptr %0, align 8, !tbaa !23
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 5
  store i32 47, ptr %56, align 8, !tbaa !24
  %57 = load ptr, ptr %55, align 8, !tbaa !26
  tail call void %57(ptr noundef nonnull %0) #4
  br label %58

58:                                               ; preds = %45, %54
  %59 = add nuw nsw i32 %13, 1
  %60 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 1
  %61 = load i32, ptr %4, align 4, !tbaa !28
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %12, label %63, !llvm.loop !37

63:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x i32], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #4
  %18 = zext i32 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %107, label %21

21:                                               ; preds = %7
  %22 = zext i32 %6 to i64
  br label %23

23:                                               ; preds = %21, %103
  %24 = phi i64 [ 0, %21 ], [ %104, %103 ]
  %25 = phi i32 [ %5, %21 ], [ %105, %103 ]
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %72, %27 ]
  %29 = phi ptr [ %8, %23 ], [ %71, %27 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !27
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !32
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %36, ptr %29, align 4, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %32, i64 2
  %39 = load i8, ptr %33, align 1, !tbaa !32
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -128
  %42 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %41, ptr %37, align 4, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %32, i64 3
  %44 = load i8, ptr %38, align 1, !tbaa !32
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -128
  %47 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 %46, ptr %42, align 4, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %32, i64 4
  %49 = load i8, ptr %43, align 1, !tbaa !32
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, -128
  %52 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %51, ptr %47, align 4, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %32, i64 5
  %54 = load i8, ptr %48, align 1, !tbaa !32
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -128
  %57 = getelementptr inbounds i32, ptr %29, i64 5
  store i32 %56, ptr %52, align 4, !tbaa !34
  %58 = getelementptr inbounds i8, ptr %32, i64 6
  %59 = load i8, ptr %53, align 1, !tbaa !32
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, -128
  %62 = getelementptr inbounds i32, ptr %29, i64 6
  store i32 %61, ptr %57, align 4, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %32, i64 7
  %64 = load i8, ptr %58, align 1, !tbaa !32
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = getelementptr inbounds i32, ptr %29, i64 7
  store i32 %66, ptr %62, align 4, !tbaa !34
  %68 = load i8, ptr %63, align 1, !tbaa !32
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -128
  %71 = getelementptr inbounds i32, ptr %29, i64 8
  store i32 %70, ptr %67, align 4, !tbaa !34
  %72 = add nuw nsw i64 %28, 1
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %27, !llvm.loop !38

74:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #4
  %75 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %76

76:                                               ; preds = %74, %97
  %77 = phi i64 [ 0, %74 ], [ %101, %97 ]
  %78 = getelementptr inbounds i32, ptr %17, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !34
  %82 = icmp slt i32 %81, 0
  %83 = ashr i32 %79, 1
  br i1 %82, label %84, label %92

84:                                               ; preds = %76
  %85 = sub i32 %83, %81
  %86 = icmp slt i32 %85, %79
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = sdiv i32 %85, %79
  br label %89

89:                                               ; preds = %84, %87
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = sub nsw i32 0, %90
  br label %97

92:                                               ; preds = %76
  %93 = add nsw i32 %81, %83
  %94 = icmp slt i32 %93, %79
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = sdiv i32 %93, %79
  br label %97

97:                                               ; preds = %92, %95, %89
  %98 = phi i32 [ %91, %89 ], [ %96, %95 ], [ 0, %92 ]
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds i16, ptr %75, i64 %77
  store i16 %99, ptr %100, align 2, !tbaa !33
  %101 = add nuw nsw i64 %77, 1
  %102 = icmp eq i64 %101, 64
  br i1 %102, label %103, label %76, !llvm.loop !39

103:                                              ; preds = %97
  %104 = add nuw nsw i64 %24, 1
  %105 = add i32 %25, 8
  %106 = icmp eq i64 %104, %22
  br i1 %106, label %107, label %23, !llvm.loop !40

107:                                              ; preds = %103, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #4
  ret void
}

declare void @jpeg_fdct_islow(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 480}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 16, !8, i64 24}
!19 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!20 = !{!6, !10, i64 268}
!21 = !{!18, !7, i64 8}
!22 = !{!18, !7, i64 16}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!25, !7, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!6, !10, i64 68}
!29 = !{!6, !7, i64 80}
!30 = !{!31, !10, i64 16}
!31 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!32 = !{!8, !8, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
