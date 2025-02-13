; ModuleID = 'blender/source/blender/modifiers/intern/MOD_fluidsim.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_fluidsim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }

@modifierType_Fluidsim = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Fluidsim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FluidsimModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, i32 3, i32 161, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr @freeData, ptr null, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Fluidsim Object\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.FluidsimModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %7(ptr noundef nonnull %4) #3
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.FluidsimModifierData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = tail call ptr %9(ptr noundef %11) #3
  store ptr %12, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !43 {
  %5 = getelementptr inbounds %struct.FluidsimModifierData, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  tail call void @initData(ptr noundef nonnull %0) #4
  %9 = load ptr, ptr %5, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = and i32 %3, 1
  %15 = and i32 %3, 2
  %16 = tail call ptr @fluidsimModifier_do(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef %14, i32 noundef %15) #3
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %2, ptr %16
  br label %19

19:                                               ; preds = %8, %11
  %20 = phi ptr [ %18, %11 ], [ %2, %8 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @initData(ptr noundef %0) #0 !PGOFuncName !45 {
  tail call void @fluidsim_init(ptr noundef %0) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr noundef %0) #0 !PGOFuncName !46 {
  tail call void @fluidsim_free(ptr noundef %0) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3, ptr noundef %4) #0 !PGOFuncName !47 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.FluidsimModifierData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FluidsimSettings, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !48
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %15, %37
  %20 = phi ptr [ %38, %37 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = tail call ptr @modifiers_findByType(ptr noundef %22, i32 noundef 26) #3
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.FluidsimModifierData, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.FluidsimSettings, ptr %29, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !48
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %22) #3
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %36, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #3
  br label %37

37:                                               ; preds = %24, %27, %31, %35, %19
  %38 = load ptr, ptr %20, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !54

40:                                               ; preds = %37, %15, %11, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #1 !PGOFuncName !56 {
  ret i8 1
}

; Function Attrs: optsize
declare ptr @fluidsimModifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fluidsim_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fluidsim_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!34 = !{!"MOD_fluidsim.c:copyData"}
!35 = !{!36, !38, i64 112}
!36 = !{!"FluidsimModifierData", !37, i64 0, !38, i64 112, !38, i64 120}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!38, !38, i64 0}
!43 = !{!"MOD_fluidsim.c:applyModifier"}
!44 = !{!37, !38, i64 96}
!45 = !{!"MOD_fluidsim.c:initData"}
!46 = !{!"MOD_fluidsim.c:freeData"}
!47 = !{!"MOD_fluidsim.c:updateDepgraph"}
!48 = !{!49, !50, i64 16}
!49 = !{!"FluidsimSettings", !38, i64 0, !41, i64 8, !41, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !51, i64 24, !50, i64 28, !50, i64 30, !51, i64 32, !50, i64 36, !50, i64 38, !39, i64 40, !51, i64 52, !51, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !51, i64 76, !41, i64 80, !51, i64 84, !51, i64 88, !51, i64 92, !38, i64 96, !38, i64 104, !39, i64 112, !39, i64 1136, !39, i64 1148, !38, i64 1160, !50, i64 1168, !39, i64 1170, !39, i64 1171, !51, i64 1172, !41, i64 1176, !51, i64 1180, !51, i64 1184, !41, i64 1188, !41, i64 1192, !51, i64 1196, !51, i64 1200, !51, i64 1204, !38, i64 1208, !41, i64 1216, !51, i64 1220, !51, i64 1224, !51, i64 1228, !51, i64 1232, !51, i64 1236, !51, i64 1240, !51, i64 1244, !41, i64 1248, !51, i64 1252}
!50 = !{!"short", !39, i64 0}
!51 = !{!"float", !39, i64 0}
!52 = !{!53, !38, i64 32}
!53 = !{!"Base", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !50, i64 28, !50, i64 30, !38, i64 32}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"MOD_fluidsim.c:dependsOnTime"}
