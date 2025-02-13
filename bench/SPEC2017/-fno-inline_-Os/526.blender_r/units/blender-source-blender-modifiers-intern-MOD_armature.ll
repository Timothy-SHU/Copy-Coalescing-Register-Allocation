; ModuleID = 'blender/source/blender/modifiers/intern/MOD_armature.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_armature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@modifierType_Armature = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Armature\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ArmatureModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 200, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr @deformMatrices, ptr @deformVertsEM, ptr @deformMatricesEM, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"Armature Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 4
  store ptr %4, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 1
  %8 = load <2 x i16>, ptr %6, align 8, !tbaa !43
  store <2 x i16> %8, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 6
  %10 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef 64) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !44 {
  tail call void @modifier_vgroup_cache(ptr noundef %0, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !45
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %11, ptr noundef %13, ptr noundef nonnull %14) #5
  %15 = load ptr, ptr %12, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %18(ptr noundef nonnull %15) #5
  store ptr null, ptr %12, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %17, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformMatrices(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !48 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !45
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %13, ptr noundef null, ptr noundef nonnull %14) #5
  br label %27

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = tail call ptr @CDDM_from_mesh(ptr noundef %17) #5
  %19 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !45
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %20, ptr noundef %1, ptr noundef %18, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %23, ptr noundef null, ptr noundef nonnull %24) #5
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 95
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  tail call void %26(ptr noundef %18) #5
  br label %27

27:                                               ; preds = %8, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !59 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %3, %6 ], [ %9, %8 ]
  tail call void @modifier_vgroup_cache(ptr noundef %0, ptr noundef %4) #5
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !45
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %13, ptr noundef %1, ptr noundef %11, ptr noundef %4, ptr noundef null, i32 noundef %5, i32 noundef %16, ptr noundef %18, ptr noundef nonnull %19) #5
  %20 = load ptr, ptr %17, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %10
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %23(ptr noundef nonnull %20) #5
  store ptr null, ptr %17, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %22, %10
  br i1 %7, label %25, label %28

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  tail call void %27(ptr noundef %11) #5
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformMatricesEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !PGOFuncName !60 {
  %8 = icmp eq ptr %3, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !45
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %14, ptr noundef null, ptr noundef nonnull %15) #5
  br label %26

16:                                               ; preds = %7
  %17 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %18 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !45
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %19, ptr noundef %1, ptr noundef %17, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %22, ptr noundef null, ptr noundef nonnull %23) #5
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 95
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  tail call void %25(ptr noundef %17) #5
  br label %26

26:                                               ; preds = %9, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !PGOFuncName !62 {
  ret i64 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #3 !PGOFuncName !63 {
  %3 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !64 {
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #5
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !65 {
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @modifier_vgroup_cache(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @armature_deform_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }

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
!34 = !{!"MOD_armature.c:copyData"}
!35 = !{!36, !38, i64 120}
!36 = !{!"ArmatureModifierData", !37, i64 0, !42, i64 112, !42, i64 114, !41, i64 116, !38, i64 120, !38, i64 128, !39, i64 136}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"short", !39, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"MOD_armature.c:deformVerts"}
!45 = !{!36, !42, i64 112}
!46 = !{!36, !38, i64 128}
!47 = !{!38, !38, i64 0}
!48 = !{!"MOD_armature.c:deformMatrices"}
!49 = !{!50, !38, i64 296}
!50 = !{!"Object", !51, i64 0, !38, i64 120, !38, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !52, i64 312, !38, i64 360, !53, i64 368, !53, i64 384, !53, i64 400, !53, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !54, i64 616, !54, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !39, i64 1042, !39, i64 1043, !42, i64 1044, !39, i64 1046, !39, i64 1047, !54, i64 1048, !54, i64 1052, !53, i64 1056, !53, i64 1072, !53, i64 1088, !53, i64 1104, !54, i64 1120, !42, i64 1124, !42, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !42, i64 1162, !39, i64 1164, !53, i64 1176, !53, i64 1192, !53, i64 1208, !53, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !42, i64 1266, !54, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !55, i64 1304, !55, i64 1312, !41, i64 1320, !41, i64 1324, !53, i64 1328, !53, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !53, i64 1400, !38, i64 1416}
!51 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!52 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!53 = !{!"ListBase", !38, i64 0, !38, i64 8}
!54 = !{!"float", !39, i64 0}
!55 = !{!"long", !39, i64 0}
!56 = !{!57, !38, i64 1680}
!57 = !{!"DerivedMesh", !58, i64 0, !58, i64 200, !58, i64 400, !58, i64 600, !58, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !54, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!58 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!59 = !{!"MOD_armature.c:deformVertsEM"}
!60 = !{!"MOD_armature.c:deformMatricesEM"}
!61 = !{!"MOD_armature.c:initData"}
!62 = !{!"MOD_armature.c:requiredDataMask"}
!63 = !{!"MOD_armature.c:isDisabled"}
!64 = !{!"MOD_armature.c:updateDepgraph"}
!65 = !{!"MOD_armature.c:foreachObjectLink"}
