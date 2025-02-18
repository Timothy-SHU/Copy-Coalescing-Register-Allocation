; ModuleID = 'pstart.c'
source_filename = "pstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @primal_start_artificial(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.node, ptr %3, i64 1
  %5 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !47
  %11 = add nsw i64 %10, 1
  %12 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 11
  store i64 %11, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !49
  store i64 -100000000, ptr %3, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 10
  store i64 0, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !53
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %29, !prof !54

20:                                               ; preds = %1, %26
  %21 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %22 = getelementptr inbounds %struct.arc, ptr %16, i64 %21, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !55
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %26, label %25, !prof !58

25:                                               ; preds = %20
  store i16 1, ptr %22, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %20, %25
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %20, !prof !59, !llvm.loop !60

29:                                               ; preds = %26, %1
  %30 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = icmp sgt i64 %10, 0
  br i1 %32, label %33, label %53, !prof !54

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %40, %33 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.arc, ptr %31, i64 %34
  %36 = getelementptr inbounds %struct.node, ptr %4, i64 %34
  %37 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 6
  store ptr %35, ptr %37, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 3
  store ptr %3, ptr %38, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 2
  store ptr null, ptr %39, align 8, !tbaa !46
  %40 = add nuw nsw i64 %34, 1
  %41 = getelementptr inbounds %struct.node, ptr %4, i64 %40
  %42 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 4
  store ptr %41, ptr %42, align 8, !tbaa !64
  %43 = getelementptr %struct.node, ptr %36, i64 -1
  %44 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 5
  store ptr %43, ptr %44, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 11
  store i64 1, ptr %45, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 1
  store i64 100000000, ptr %46, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 4
  store i16 0, ptr %47, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 1
  store i32 1, ptr %48, align 8, !tbaa !49
  store i64 0, ptr %36, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 2
  store ptr %36, ptr %49, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.arc, ptr %31, i64 %34, i32 3
  store ptr %3, ptr %50, align 8, !tbaa !68
  store i32 -2, ptr %35, align 8, !tbaa !69
  %51 = getelementptr inbounds %struct.node, ptr %4, i64 %34, i32 10
  store i64 0, ptr %51, align 8, !tbaa !51
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

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 1}
!35 = !{!36, !41, i64 552}
!36 = !{!"network", !37, i64 0, !37, i64 200, !39, i64 400, !39, i64 408, !39, i64 416, !39, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !39, i64 480, !39, i64 488, !39, i64 496, !39, i64 504, !39, i64 512, !39, i64 520, !39, i64 528, !40, i64 536, !39, i64 544, !41, i64 552, !41, i64 560, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !39, i64 608, !39, i64 616, !39, i64 624, !39, i64 632, !39, i64 640}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!43, !41, i64 48}
!43 = !{!"node", !39, i64 0, !44, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 88, !44, i64 96, !44, i64 100}
!44 = !{!"int", !37, i64 0}
!45 = !{!43, !41, i64 24}
!46 = !{!43, !41, i64 16}
!47 = !{!36, !39, i64 400}
!48 = !{!43, !39, i64 88}
!49 = !{!43, !44, i64 8}
!50 = !{!43, !39, i64 0}
!51 = !{!43, !39, i64 80}
!52 = !{!36, !41, i64 568}
!53 = !{!36, !39, i64 424}
!54 = !{!"branch_weights", i32 127, i32 1}
!55 = !{!56, !57, i64 32}
!56 = !{!"arc", !44, i64 0, !39, i64 8, !41, i64 16, !41, i64 24, !57, i64 32, !41, i64 40, !41, i64 48, !39, i64 56, !39, i64 64}
!57 = !{!"short", !37, i64 0}
!58 = !{!"branch_weights", i32 0, i32 162202}
!59 = !{!"branch_weights", i32 127, i32 20761729}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!36, !41, i64 592}
!64 = !{!43, !41, i64 32}
!65 = !{!43, !41, i64 40}
!66 = !{!56, !39, i64 8}
!67 = !{!56, !41, i64 16}
!68 = !{!56, !41, i64 24}
!69 = !{!56, !44, i64 0}
!70 = !{!"branch_weights", i32 127, i32 3840001}
!71 = distinct !{!71, !61, !62}
