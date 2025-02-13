; ModuleID = 'pstart.c'
source_filename = "pstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @primal_start_artificial(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.node, ptr %3, i64 1
  %5 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !48
  %11 = add nsw i64 %10, 1
  %12 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 11
  store i64 %11, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !50
  store i64 -100000000, ptr %3, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 10
  store i64 0, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !54
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %29, !prof !55

20:                                               ; preds = %1, %26
  %21 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %22 = getelementptr inbounds %struct.arc, ptr %16, i64 %21, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !56
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %26, label %25, !prof !59

25:                                               ; preds = %20
  store i16 1, ptr %22, align 8, !tbaa !56
  br label %26

26:                                               ; preds = %20, %25
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %20, !prof !60, !llvm.loop !61

29:                                               ; preds = %26, %1
  %30 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = icmp sgt i64 %10, 0
  br i1 %32, label %33, label %53, !prof !55

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %40, %33 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.arc, ptr %31, i64 %34
  %36 = getelementptr inbounds %struct.node, ptr %4, i64 %34
  %37 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 6
  store ptr %35, ptr %37, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 3
  store ptr %3, ptr %38, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 2
  store ptr null, ptr %39, align 8, !tbaa !47
  %40 = add nuw nsw i64 %34, 1
  %41 = getelementptr inbounds %struct.node, ptr %4, i64 %40
  %42 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 4
  store ptr %41, ptr %42, align 8, !tbaa !64
  %43 = getelementptr %struct.node, ptr %36, i64 -1
  %44 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 5
  store ptr %43, ptr %44, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 11
  store i64 1, ptr %45, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 1
  store i64 100000000, ptr %46, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 4
  store i16 0, ptr %47, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 1
  store i32 1, ptr %48, align 8, !tbaa !50
  store i64 0, ptr %36, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 2
  store ptr %36, ptr %49, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 3
  store ptr %3, ptr %50, align 8, !tbaa !68
  store i32 -2, ptr %35, align 8, !tbaa !69
  %51 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 10
  store i64 0, ptr %51, align 8, !tbaa !52
  %52 = icmp eq i64 %40, %10
  br i1 %52, label %53, label %33, !prof !70, !llvm.loop !71

53:                                               ; preds = %33, %29
  %54 = getelementptr inbounds %struct.node, ptr %3, i64 %10, i32 4
  store ptr null, ptr %54, align 8, !tbaa !64
  %55 = getelementptr inbounds %struct.node, ptr %3, i64 1, i32 5
  store ptr null, ptr %55, align 8, !tbaa !65
  ret i64 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 142077978206}
!4 = !{!"MaxCount", i64 28590381975}
!5 = !{!"MaxInternalCount", i64 14978154134}
!6 = !{!"MaxFunctionCount", i64 28590381975}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 28590381975, i32 1}
!14 = !{i32 100000, i64 28590381975, i32 1}
!15 = !{i32 200000, i64 28590381975, i32 1}
!16 = !{i32 300000, i64 17552692142, i32 2}
!17 = !{i32 400000, i64 14978154134, i32 3}
!18 = !{i32 500000, i64 12636872640, i32 4}
!19 = !{i32 600000, i64 11748475564, i32 5}
!20 = !{i32 700000, i64 9740370976, i32 7}
!21 = !{i32 800000, i64 2641604201, i32 10}
!22 = !{i32 900000, i64 1154233495, i32 16}
!23 = !{i32 950000, i64 353949924, i32 30}
!24 = !{i32 990000, i64 202655375, i32 46}
!25 = !{i32 999000, i64 28900000, i32 57}
!26 = !{i32 999900, i64 1101517, i32 82}
!27 = !{i32 999990, i64 864162, i32 94}
!28 = !{i32 999999, i64 50268, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 1}
!36 = !{!37, !42, i64 552}
!37 = !{!"network", !38, i64 0, !38, i64 200, !40, i64 400, !40, i64 408, !40, i64 416, !40, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !40, i64 480, !40, i64 488, !40, i64 496, !40, i64 504, !40, i64 512, !40, i64 520, !40, i64 528, !41, i64 536, !40, i64 544, !42, i64 552, !42, i64 560, !42, i64 568, !42, i64 576, !42, i64 584, !42, i64 592, !42, i64 600, !40, i64 608, !40, i64 616, !40, i64 624, !40, i64 632, !40, i64 640}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"double", !38, i64 0}
!42 = !{!"any pointer", !38, i64 0}
!43 = !{!44, !42, i64 48}
!44 = !{!"node", !40, i64 0, !45, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !40, i64 80, !40, i64 88, !45, i64 96, !45, i64 100}
!45 = !{!"int", !38, i64 0}
!46 = !{!44, !42, i64 24}
!47 = !{!44, !42, i64 16}
!48 = !{!37, !40, i64 400}
!49 = !{!44, !40, i64 88}
!50 = !{!44, !45, i64 8}
!51 = !{!44, !40, i64 0}
!52 = !{!44, !40, i64 80}
!53 = !{!37, !42, i64 568}
!54 = !{!37, !40, i64 424}
!55 = !{!"branch_weights", i32 127, i32 1}
!56 = !{!57, !58, i64 32}
!57 = !{!"arc", !45, i64 0, !40, i64 8, !42, i64 16, !42, i64 24, !58, i64 32, !42, i64 40, !42, i64 48, !40, i64 56, !40, i64 64}
!58 = !{!"short", !38, i64 0}
!59 = !{!"branch_weights", i32 1, i32 260768}
!60 = !{!"branch_weights", i32 127, i32 16689025}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!37, !42, i64 592}
!64 = !{!44, !42, i64 32}
!65 = !{!44, !42, i64 40}
!66 = !{!57, !40, i64 8}
!67 = !{!57, !42, i64 16}
!68 = !{!57, !42, i64 24}
!69 = !{!57, !45, i64 0}
!70 = !{!"branch_weights", i32 127, i32 3217537}
!71 = distinct !{!71, !62}
