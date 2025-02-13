; ModuleID = 'blender/source/blender/modifiers/intern/MOD_shrinkwrap.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_shrinkwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ShrinkwrapModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], float, i16, i8, i8, float, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@modifierType_Shrinkwrap = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Shrinkwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ShrinkwrapModifierData\00\00\00\00\00\00\00\00\00\00", i32 208, i32 1, i32 27, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr @dependsOnNormals, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"Shrinkwrap Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 !PGOFuncName !35 {
  %7 = tail call i64 @requiredDataMask(ptr poison, ptr noundef %0) #6
  %8 = trunc i32 %5 to i8
  %9 = and i8 %8, 1
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %9) #5
  br label %19

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @dependsOnNormals(ptr noundef %0) #6, !range !36
  %14 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %13) #5
  tail call void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %9) #5
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 95
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  tail call void %18(ptr noundef %14) #5
  br label %19

19:                                               ; preds = %11, %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !45 {
  %7 = tail call i64 @requiredDataMask(ptr poison, ptr noundef %0) #6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext 0) #5
  br label %17

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @dependsOnNormals(ptr noundef %0) #6, !range !36
  %12 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %11) #5
  tail call void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %12, ptr noundef %4, i32 noundef %5, i8 noundef zeroext 0) #5
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  tail call void %16(ptr noundef %12) #5
  br label %17

17:                                               ; preds = %9, %14, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !46 {
  %2 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  store i16 0, ptr %2, align 4, !tbaa !47
  %3 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 6
  store i8 1, ptr %3, align 2, !tbaa !51
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  %7 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 4, !tbaa !47
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %1, i64 0, i32 9
  %12 = load i8, ptr %11, align 4, !tbaa !55
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i64
  %15 = or disjoint i64 %6, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i64 [ %6, %2 ], [ %15, %10 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !58 {
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #5
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #5
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @dependsOnNormals(ptr nocapture noundef readonly %0) #2 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !47
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !55
  %12 = icmp eq i8 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %1, %5, %9
  %15 = phi i8 [ %13, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !61 {
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #5
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shrinkwrapModifier_deform(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!34 = !{!"MOD_shrinkwrap.c:copyData"}
!35 = !{!"MOD_shrinkwrap.c:deformVerts"}
!36 = !{i8 0, i8 2}
!37 = !{!38, !40, i64 1680}
!38 = !{!"DerivedMesh", !39, i64 0, !39, i64 200, !39, i64 400, !39, i64 600, !39, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !40, i64 1032, !40, i64 1040, !43, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1060, !40, i64 1064, !41, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!39 = !{!"CustomData", !40, i64 0, !41, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !40, i64 184, !40, i64 192}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"float", !41, i64 0}
!45 = !{!"MOD_shrinkwrap.c:deformVertsEM"}
!46 = !{!"MOD_shrinkwrap.c:initData"}
!47 = !{!48, !50, i64 196}
!48 = !{!"ShrinkwrapModifierData", !49, i64 0, !40, i64 112, !40, i64 120, !41, i64 128, !44, i64 192, !50, i64 196, !41, i64 198, !41, i64 199, !44, i64 200, !41, i64 204, !41, i64 205, !41, i64 206}
!49 = !{!"ModifierData", !40, i64 0, !40, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !40, i64 96, !40, i64 104}
!50 = !{!"short", !41, i64 0}
!51 = !{!48, !41, i64 198}
!52 = !{!48, !44, i64 192}
!53 = !{!"MOD_shrinkwrap.c:requiredDataMask"}
!54 = !{!41, !41, i64 0}
!55 = !{!48, !41, i64 204}
!56 = !{!"MOD_shrinkwrap.c:isDisabled"}
!57 = !{!48, !40, i64 112}
!58 = !{!"MOD_shrinkwrap.c:updateDepgraph"}
!59 = !{!48, !40, i64 120}
!60 = !{!"MOD_shrinkwrap.c:dependsOnNormals"}
!61 = !{!"MOD_shrinkwrap.c:foreachObjectLink"}
