; ModuleID = 'blender/source/blender/modifiers/intern/MOD_shrinkwrap.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_shrinkwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ShrinkwrapModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], float, i16, i8, i8, float, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@modifierType_Shrinkwrap = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Shrinkwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ShrinkwrapModifierData\00\00\00\00\00\00\00\00\00\00", i32 208, i32 1, i32 27, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr @dependsOnNormals, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"Shrinkwrap Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 4, !tbaa !37
  %12 = icmp ne i16 %11, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = select i1 %9, i64 0, i64 4
  %15 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 9
  %16 = load i8, ptr %15, align 4, !tbaa !44
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i64
  %19 = or disjoint i64 %14, %18
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %6, %13
  %22 = phi i1 [ %9, %6 ], [ %20, %13 ]
  %23 = trunc i32 %5 to i8
  %24 = and i8 %23, 1
  br i1 %22, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  %29 = or i1 %12, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 9
  %32 = load i8, ptr %31, align 4, !tbaa !44
  %33 = icmp eq i8 %32, 0
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %25, %30
  %36 = phi i8 [ %34, %30 ], [ 0, %25 ]
  %37 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %36) #5
  br label %38

38:                                               ; preds = %35, %21
  %39 = phi ptr [ %37, %35 ], [ %2, %21 ]
  tail call void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %39, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %24) #5
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %39, i64 0, i32 95
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  tail call void %43(ptr noundef %39) #5
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 4, !tbaa !37
  %12 = icmp ne i16 %11, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = select i1 %9, i64 0, i64 4
  %15 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 9
  %16 = load i8, ptr %15, align 4, !tbaa !44
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i64
  %19 = or disjoint i64 %14, %18
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %6, %13
  %22 = phi i1 [ %9, %6 ], [ %20, %13 ]
  br i1 %22, label %36, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  %27 = or i1 %12, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 9
  %30 = load i8, ptr %29, align 4, !tbaa !44
  %31 = icmp eq i8 %30, 0
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %23, %28
  %34 = phi i8 [ %32, %28 ], [ 0, %23 ]
  %35 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %34) #5
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi ptr [ %35, %33 ], [ %3, %21 ]
  tail call void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %37, ptr noundef %4, i32 noundef %5, i8 noundef zeroext 0) #5
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 95
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  tail call void %41(ptr noundef %37) #5
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  store i16 0, ptr %2, align 4, !tbaa !37
  %3 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 6
  store i8 1, ptr %3, align 2, !tbaa !49
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  %7 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 4, !tbaa !37
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %1, i64 0, i32 9
  %12 = load i8, ptr %11, align 4, !tbaa !44
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i64
  %15 = or disjoint i64 %6, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i64 [ %6, %2 ], [ %15, %10 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #5
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #5
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @dependsOnNormals(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !37
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !44
  %12 = icmp eq i8 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %1, %5, %9
  %15 = phi i8 [ %13, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #5
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @shrinkwrapModifier_deform(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !43, i64 196}
!38 = !{!"ShrinkwrapModifierData", !39, i64 0, !40, i64 112, !40, i64 120, !35, i64 128, !42, i64 192, !43, i64 196, !35, i64 198, !35, i64 199, !42, i64 200, !35, i64 204, !35, i64 205, !35, i64 206}
!39 = !{!"ModifierData", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !35, i64 32, !40, i64 96, !40, i64 104}
!40 = !{!"any pointer", !35, i64 0}
!41 = !{!"int", !35, i64 0}
!42 = !{!"float", !35, i64 0}
!43 = !{!"short", !35, i64 0}
!44 = !{!38, !35, i64 204}
!45 = !{!38, !40, i64 112}
!46 = !{!47, !40, i64 1680}
!47 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !40, i64 1032, !40, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !40, i64 1064, !35, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!48 = !{!"CustomData", !40, i64 0, !35, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 192}
!49 = !{!38, !35, i64 198}
!50 = !{!38, !42, i64 192}
!51 = !{!38, !40, i64 120}
