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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.node, ptr %3, i64 1
  %5 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !17
  %11 = add nsw i64 %10, 1
  %12 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 11
  store i64 %11, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !19
  store i64 -100000000, ptr %3, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 10
  store i64 0, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !23
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1, %26
  %21 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %22 = getelementptr inbounds %struct.arc, ptr %16, i64 %21, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !24
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i16 1, ptr %22, align 8, !tbaa !24
  br label %26

26:                                               ; preds = %20, %25
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %20, !llvm.loop !27

29:                                               ; preds = %26, %1
  %30 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = icmp sgt i64 %10, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %40, %33 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.arc, ptr %31, i64 %34
  %36 = getelementptr inbounds %struct.node, ptr %4, i64 %34
  %37 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 6
  store ptr %35, ptr %37, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 3
  store ptr %3, ptr %38, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 2
  store ptr null, ptr %39, align 8, !tbaa !16
  %40 = add nuw nsw i64 %34, 1
  %41 = getelementptr inbounds %struct.node, ptr %4, i64 %40
  %42 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 4
  store ptr %41, ptr %42, align 8, !tbaa !30
  %43 = getelementptr %struct.node, ptr %36, i64 -1
  %44 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 5
  store ptr %43, ptr %44, align 8, !tbaa !31
  %45 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 11
  store i64 1, ptr %45, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 1
  store i64 100000000, ptr %46, align 8, !tbaa !32
  %47 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 4
  store i16 0, ptr %47, align 8, !tbaa !24
  %48 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 1
  store i32 1, ptr %48, align 8, !tbaa !19
  store i64 0, ptr %36, align 8, !tbaa !20
  %49 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 2
  store ptr %36, ptr %49, align 8, !tbaa !33
  %50 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 3
  store ptr %3, ptr %50, align 8, !tbaa !34
  store i32 -2, ptr %35, align 8, !tbaa !35
  %51 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 10
  store i64 0, ptr %51, align 8, !tbaa !21
  %52 = icmp eq i64 %40, %10
  br i1 %52, label %53, label %33, !llvm.loop !36

53:                                               ; preds = %33, %29
  %54 = getelementptr inbounds %struct.node, ptr %3, i64 %10, i32 4
  store ptr null, ptr %54, align 8, !tbaa !30
  %55 = getelementptr inbounds %struct.node, ptr %3, i64 1, i32 5
  store ptr null, ptr %55, align 8, !tbaa !31
  ret i64 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 552}
!6 = !{!"network", !7, i64 0, !7, i64 200, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !10, i64 536, !9, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 48}
!13 = !{!"node", !9, i64 0, !14, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !14, i64 96, !14, i64 100}
!14 = !{!"int", !7, i64 0}
!15 = !{!13, !11, i64 24}
!16 = !{!13, !11, i64 16}
!17 = !{!6, !9, i64 400}
!18 = !{!13, !9, i64 88}
!19 = !{!13, !14, i64 8}
!20 = !{!13, !9, i64 0}
!21 = !{!13, !9, i64 80}
!22 = !{!6, !11, i64 568}
!23 = !{!6, !9, i64 424}
!24 = !{!25, !26, i64 32}
!25 = !{!"arc", !14, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !26, i64 32, !11, i64 40, !11, i64 48, !9, i64 56, !9, i64 64}
!26 = !{!"short", !7, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!6, !11, i64 592}
!30 = !{!13, !11, i64 32}
!31 = !{!13, !11, i64 40}
!32 = !{!25, !9, i64 8}
!33 = !{!25, !11, i64 16}
!34 = !{!25, !11, i64 24}
!35 = !{!25, !14, i64 0}
!36 = distinct !{!36, !28}
