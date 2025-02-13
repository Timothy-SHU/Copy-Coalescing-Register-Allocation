; ModuleID = 'blender/source/blender/modifiers/intern/MOD_curve.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DagNode = type { i32, i16, float, float, float, ptr, ptr, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i16 }

@modifierType_Curve = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Curve\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CurveModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [15 x i8] c"Curve Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !35 {
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !45
  %14 = add i16 %13, -1
  tail call void @curve_deform_verts(ptr noundef %8, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %11, i16 noundef signext %14) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !46 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, i32 poison) #5
  br label %13

9:                                                ; preds = %6
  %10 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %10, ptr noundef %4, i32 noundef %5, i32 poison) #5
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 95
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  tail call void %12(ptr noundef %10) #4
  br label %13

13:                                               ; preds = %8, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 3
  store i16 1, ptr %2, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !52 {
  %3 = getelementptr inbounds %struct.CurveModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !55 {
  %6 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #4
  %11 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 21
  %12 = load i16, ptr %11, align 2, !tbaa !56
  %13 = or i16 %12, 1
  store i16 %13, ptr %11, align 2, !tbaa !56
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str) #4
  br label %14

14:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !59 {
  %5 = getelementptr inbounds %struct.CurveModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #4
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curve_deform_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!34 = !{!"MOD_curve.c:copyData"}
!35 = !{!"MOD_curve.c:deformVerts"}
!36 = !{!37, !38, i64 96}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!43, !38, i64 112}
!43 = !{!"CurveModifierData", !37, i64 0, !38, i64 112, !39, i64 120, !44, i64 184, !39, i64 186}
!44 = !{!"short", !39, i64 0}
!45 = !{!43, !44, i64 184}
!46 = !{!"MOD_curve.c:deformVertsEM"}
!47 = !{!48, !38, i64 1680}
!48 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !50, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!49 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!50 = !{!"float", !39, i64 0}
!51 = !{!"MOD_curve.c:initData"}
!52 = !{!"MOD_curve.c:requiredDataMask"}
!53 = !{!39, !39, i64 0}
!54 = !{!"MOD_curve.c:isDisabled"}
!55 = !{!"MOD_curve.c:updateDepgraph"}
!56 = !{!57, !44, i64 118}
!57 = !{!"DagNode", !41, i64 0, !44, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !58, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !41, i64 112, !39, i64 116, !44, i64 118}
!58 = !{!"long", !39, i64 0}
!59 = !{!"MOD_curve.c:foreachObjectLink"}
