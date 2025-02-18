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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 4
  store ptr %4, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 1
  store i16 %7, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !43
  %11 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 2
  store i16 %10, ptr %11, align 2, !tbaa !43
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 6
  %13 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef 64) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  tail call void @modifier_vgroup_cache(ptr noundef %0, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !42
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %11, ptr noundef %13, ptr noundef nonnull %14) #5
  %15 = load ptr, ptr %12, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %18(ptr noundef nonnull %15) #5
  store ptr null, ptr %12, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %17, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformMatrices(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = tail call ptr @CDDM_from_mesh(ptr noundef %10) #5
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi ptr [ %2, %6 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !42
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %15, ptr noundef %1, ptr noundef %13, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %18, ptr noundef null, ptr noundef nonnull %19) #5
  br i1 %7, label %20, label %23

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 95
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  tail call void %22(ptr noundef %13) #5
  br label %23

23:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %3, %6 ], [ %9, %8 ]
  tail call void @modifier_vgroup_cache(ptr noundef %0, ptr noundef %4) #5
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !42
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %13, ptr noundef %1, ptr noundef %11, ptr noundef %4, ptr noundef null, i32 noundef %5, i32 noundef %16, ptr noundef %18, ptr noundef nonnull %19) #5
  %20 = load ptr, ptr %17, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %10
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %23(ptr noundef nonnull %20) #5
  store ptr null, ptr %17, align 8, !tbaa !44
  br label %24

24:                                               ; preds = %22, %10
  br i1 %7, label %25, label %28

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  tail call void %27(ptr noundef %11) #5
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformMatricesEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %3, %7 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !42
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 6
  tail call void @armature_deform_verts(ptr noundef %14, ptr noundef %1, ptr noundef %12, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %17, ptr noundef null, ptr noundef nonnull %18) #5
  br i1 %8, label %19, label %22

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  tail call void %21(ptr noundef %12) #5
  br label %22

22:                                               ; preds = %19, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i64 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #5
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @modifier_vgroup_cache(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @armature_deform_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #4

declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 120}
!35 = !{!"ArmatureModifierData", !36, i64 0, !41, i64 112, !41, i64 114, !40, i64 116, !37, i64 120, !37, i64 128, !38, i64 136}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!35, !41, i64 112}
!43 = !{!35, !41, i64 114}
!44 = !{!35, !37, i64 128}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !37, i64 296}
!47 = !{!"Object", !48, i64 0, !37, i64 120, !37, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !49, i64 312, !37, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !51, i64 616, !51, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !38, i64 1042, !38, i64 1043, !41, i64 1044, !38, i64 1046, !38, i64 1047, !51, i64 1048, !51, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !51, i64 1120, !41, i64 1124, !41, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !41, i64 1162, !38, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !41, i64 1266, !51, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !52, i64 1304, !52, i64 1312, !40, i64 1320, !40, i64 1324, !50, i64 1328, !50, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !50, i64 1400, !37, i64 1416}
!48 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!49 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!50 = !{!"ListBase", !37, i64 0, !37, i64 8}
!51 = !{!"float", !38, i64 0}
!52 = !{!"long", !38, i64 0}
!53 = !{!54, !37, i64 1680}
!54 = !{!"DerivedMesh", !55, i64 0, !55, i64 200, !55, i64 400, !55, i64 600, !55, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !51, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!55 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
