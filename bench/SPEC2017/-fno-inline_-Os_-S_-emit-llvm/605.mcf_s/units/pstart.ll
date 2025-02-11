; ModuleID = 'pstart.c'
source_filename = "pstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @primal_start_artificial(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.node, ptr %3, i64 1
  %5 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !18
  %11 = add nsw i64 %10, 1
  %12 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 11
  store i64 %11, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !20
  store i64 -100000000, ptr %3, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 10
  store i64 0, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !24
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1, %26
  %21 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %22 = getelementptr inbounds %struct.arc, ptr %16, i64 %21, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !25
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i16 1, ptr %22, align 8, !tbaa !25
  br label %26

26:                                               ; preds = %20, %25
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %20, !llvm.loop !28

29:                                               ; preds = %26, %1
  %30 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = icmp sgt i64 %10, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %40, %33 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.arc, ptr %31, i64 %34
  %36 = getelementptr inbounds %struct.node, ptr %4, i64 %34
  %37 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 6
  store ptr %35, ptr %37, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 3
  store ptr %3, ptr %38, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 2
  store ptr null, ptr %39, align 8, !tbaa !17
  %40 = add nuw nsw i64 %34, 1
  %41 = getelementptr inbounds %struct.node, ptr %4, i64 %40
  %42 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 4
  store ptr %41, ptr %42, align 8, !tbaa !31
  %43 = getelementptr %struct.node, ptr %36, i64 -1
  %44 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 5
  store ptr %43, ptr %44, align 8, !tbaa !32
  %45 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 11
  store i64 1, ptr %45, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 1
  store i64 100000000, ptr %46, align 8, !tbaa !33
  %47 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 4
  store i16 0, ptr %47, align 8, !tbaa !25
  %48 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 1
  store i32 1, ptr %48, align 8, !tbaa !20
  store i64 0, ptr %36, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 2
  store ptr %36, ptr %49, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 3
  store ptr %3, ptr %50, align 8, !tbaa !35
  store i32 -2, ptr %35, align 8, !tbaa !36
  %51 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 10
  store i64 0, ptr %51, align 8, !tbaa !22
  %52 = icmp eq i64 %40, %10
  br i1 %52, label %53, label %33, !llvm.loop !37

53:                                               ; preds = %33, %29
  %54 = getelementptr inbounds %struct.node, ptr %3, i64 %10, i32 4
  store ptr null, ptr %54, align 8, !tbaa !31
  %55 = getelementptr inbounds %struct.node, ptr %3, i64 1, i32 5
  store ptr null, ptr %55, align 8, !tbaa !32
  ret i64 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 552}
!7 = !{!"network", !8, i64 0, !8, i64 200, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !11, i64 536, !10, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !12, i64 48}
!14 = !{!"node", !10, i64 0, !15, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !10, i64 80, !10, i64 88, !15, i64 96, !15, i64 100}
!15 = !{!"int", !8, i64 0}
!16 = !{!14, !12, i64 24}
!17 = !{!14, !12, i64 16}
!18 = !{!7, !10, i64 400}
!19 = !{!14, !10, i64 88}
!20 = !{!14, !15, i64 8}
!21 = !{!14, !10, i64 0}
!22 = !{!14, !10, i64 80}
!23 = !{!7, !12, i64 568}
!24 = !{!7, !10, i64 424}
!25 = !{!26, !27, i64 32}
!26 = !{!"arc", !15, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !27, i64 32, !12, i64 40, !12, i64 48, !10, i64 56, !10, i64 64}
!27 = !{!"short", !8, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!7, !12, i64 592}
!31 = !{!14, !12, i64 32}
!32 = !{!14, !12, i64 40}
!33 = !{!26, !10, i64 8}
!34 = !{!26, !12, i64 16}
!35 = !{!26, !12, i64 24}
!36 = !{!26, !15, i64 0}
!37 = distinct !{!37, !29}
