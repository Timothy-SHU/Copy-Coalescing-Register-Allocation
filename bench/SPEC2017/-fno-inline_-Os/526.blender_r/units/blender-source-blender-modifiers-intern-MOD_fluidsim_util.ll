; ModuleID = 'blender/source/blender/modifiers/intern/MOD_fluidsim_util.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_fluidsim_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @fluidsim_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fluidsim_free(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FluidsimModifierData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FluidsimSettings, ptr %5, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %12(ptr noundef nonnull %9) #2
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.FluidsimSettings, ptr %13, i64 0, i32 43
  store ptr null, ptr %14, align 8, !tbaa !41
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %13, %11 ], [ %5, %7 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %17(ptr noundef nonnull %16) #2
  br label %18

18:                                               ; preds = %15, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @fluidsimModifier_do(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  ret ptr null
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 112}
!35 = !{!"FluidsimModifierData", !36, i64 0, !37, i64 112, !37, i64 120}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !37, i64 1208}
!42 = !{!"FluidsimSettings", !37, i64 0, !40, i64 8, !40, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !44, i64 24, !43, i64 28, !43, i64 30, !44, i64 32, !43, i64 36, !43, i64 38, !38, i64 40, !44, i64 52, !44, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !44, i64 76, !40, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 1136, !38, i64 1148, !37, i64 1160, !43, i64 1168, !38, i64 1170, !38, i64 1171, !44, i64 1172, !40, i64 1176, !44, i64 1180, !44, i64 1184, !40, i64 1188, !40, i64 1192, !44, i64 1196, !44, i64 1200, !44, i64 1204, !37, i64 1208, !40, i64 1216, !44, i64 1220, !44, i64 1224, !44, i64 1228, !44, i64 1232, !44, i64 1236, !44, i64 1240, !44, i64 1244, !40, i64 1248, !44, i64 1252}
!43 = !{!"short", !38, i64 0}
!44 = !{!"float", !38, i64 0}
!45 = !{!37, !37, i64 0}
