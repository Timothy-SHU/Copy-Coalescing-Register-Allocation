; ModuleID = 'blender/source/blender/modifiers/intern/MOD_dynamicpaint.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_dynamicpaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
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

@modifierType_DynamicPaint = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Dynamic Paint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"DynamicPaintModifierData\00\00\00\00\00\00\00\00", i32 136, i32 2, i32 705, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr null, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@.str = private unnamed_addr constant [20 x i8] c"Dynamic Paint Brush\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @dynamicPaint_Modifier_copy(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !35 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = tail call ptr @dynamicPaint_Modifier_do(ptr noundef %0, ptr noundef %9, ptr noundef %1, ptr noundef %2) #6
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %10, %7 ], [ %2, %4 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !42 {
  %2 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !45 {
  %3 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6, %33
  %11 = phi ptr [ %38, %33 ], [ %8, %6 ]
  %12 = phi i64 [ %37, %33 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %11, i64 0, i32 10
  %14 = load i16, ptr %13, align 4, !tbaa !48
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %11, i64 0, i32 16
  %18 = load i16, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %10
  %21 = or i64 %12, 32
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %21, %20 ], [ %12, %16 ]
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %11, i64 0, i32 11
  %25 = load i16, ptr %24, align 2, !tbaa !54
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %11, i64 0, i32 16
  %29 = load i16, ptr %28, align 8, !tbaa !53
  %30 = icmp eq i16 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %22
  %32 = or i64 %23, 64
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i64 [ %32, %31 ], [ %23, %27 ]
  %35 = icmp eq i16 %25, 2
  %36 = or i64 %34, 4
  %37 = select i1 %35, i64 %36, i64 %34
  %38 = load ptr, ptr %11, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %10, !llvm.loop !55

40:                                               ; preds = %33, %6, %2
  %41 = phi i64 [ 0, %2 ], [ 0, %6 ], [ %37, %33 ]
  %42 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %43, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !58
  %48 = shl i32 %47, 4
  %49 = and i32 %48, 32
  %50 = zext nneg i32 %49 to i64
  %51 = or i64 %41, %50
  br label %52

52:                                               ; preds = %45, %40
  %53 = phi i64 [ %41, %40 ], [ %51, %45 ]
  ret i64 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr noundef %0) #0 !PGOFuncName !60 {
  tail call void @dynamicPaint_Modifier_free(ptr noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3, ptr noundef %4) #0 !PGOFuncName !61 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11, %30
  %16 = phi ptr [ %31, %30 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = tail call ptr @modifiers_findByType(ptr noundef %18, i32 noundef 40) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %17, align 8, !tbaa !62
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %26) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %29, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #6
  br label %30

30:                                               ; preds = %28, %25, %21, %15
  %31 = load ptr, ptr %16, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !64

33:                                               ; preds = %30, %11, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #3 !PGOFuncName !65 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !66 {
  %5 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %13, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %14) #6
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %13, i64 0, i32 26
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %15) #6
  %16 = load ptr, ptr %13, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %12, !llvm.loop !67

18:                                               ; preds = %12, %8, %4
  %19 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %20, i64 0, i32 3
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %23) #6
  br label %24

24:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @foreachTexLink(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 !PGOFuncName !68 {
  ret void
}

; Function Attrs: optsize
declare void @dynamicPaint_Modifier_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @dynamicPaint_Modifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dynamicPaint_Modifier_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }

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
!34 = !{!"MOD_dynamicpaint.c:copyData"}
!35 = !{!"MOD_dynamicpaint.c:applyModifier"}
!36 = !{!37, !38, i64 96}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"MOD_dynamicpaint.c:initData"}
!43 = !{!44, !41, i64 128}
!44 = !{!"DynamicPaintModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !41, i64 128, !41, i64 132}
!45 = !{!"MOD_dynamicpaint.c:requiredDataMask"}
!46 = !{!44, !38, i64 112}
!47 = !{!38, !38, i64 0}
!48 = !{!49, !51, i64 140}
!49 = !{!"DynamicPaintSurface", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !50, i64 56, !41, i64 72, !39, i64 76, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !39, i64 184, !38, i64 200, !39, i64 208, !41, i64 272, !41, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !41, i64 340, !39, i64 344, !39, i64 408, !39, i64 1432, !39, i64 1496}
!50 = !{!"ListBase", !38, i64 0, !38, i64 8}
!51 = !{!"short", !39, i64 0}
!52 = !{!"float", !39, i64 0}
!53 = !{!49, !51, i64 152}
!54 = !{!49, !51, i64 142}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!44, !38, i64 120}
!58 = !{!59, !41, i64 32}
!59 = !{!"DynamicPaintBrushSettings", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !52, i64 64, !52, i64 68, !38, i64 72, !38, i64 80, !51, i64 88, !51, i64 90, !51, i64 92, !51, i64 94, !52, i64 96, !52, i64 100, !52, i64 104, !52, i64 108}
!60 = !{!"MOD_dynamicpaint.c:freeData"}
!61 = !{!"MOD_dynamicpaint.c:updateDepgraph"}
!62 = !{!63, !38, i64 32}
!63 = !{!"Base", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !51, i64 28, !51, i64 30, !38, i64 32}
!64 = distinct !{!64, !56}
!65 = !{!"MOD_dynamicpaint.c:dependsOnTime"}
!66 = !{!"MOD_dynamicpaint.c:foreachIDLink"}
!67 = distinct !{!67, !56}
!68 = !{!"MOD_dynamicpaint.c:foreachTexLink"}
