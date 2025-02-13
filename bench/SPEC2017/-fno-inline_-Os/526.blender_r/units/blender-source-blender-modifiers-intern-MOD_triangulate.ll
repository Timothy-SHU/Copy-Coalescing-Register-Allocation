; ModuleID = 'blender/source/blender/modifiers/intern/MOD_triangulate.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_triangulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriangulateModifierData = type { %struct.ModifierData, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }

@modifierType_Triangulate = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Triangulate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TriangulateModifierData\00\00\00\00\00\00\00\00\00", i32 128, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !36
  %7 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = tail call fastcc ptr @triangulate_dm(ptr noundef %2, i32 noundef %6, i32 noundef %8) #4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %2, ptr %9
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 !PGOFuncName !44 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !45
  %4 = or i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 2
  store i32 3, ptr %5, align 4, !tbaa !36
  %6 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @triangulate_dm(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !46 {
  %4 = tail call ptr @DM_to_bmesh(ptr noundef %0, i8 noundef zeroext 1) #3
  tail call void @BM_mesh_triangulate(ptr noundef %4, i32 noundef %1, i32 noundef %2, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #3
  %5 = tail call ptr @CDDM_from_bmesh(ptr noundef %4, i8 noundef zeroext 0) #3
  tail call void @BM_mesh_free(ptr noundef %4) #3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call i32 %7(ptr noundef %5) #3
  %9 = tail call ptr @CDDM_get_edges(ptr noundef %5) #3
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %3 ]
  %13 = phi i32 [ %17, %11 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.MEdge, ptr %12, i64 0, i32 4
  %15 = load i16, ptr %14, align 2, !tbaa !51
  %16 = or i16 %15, 34
  store i16 %16, ptr %14, align 2, !tbaa !51
  %17 = add nuw nsw i32 %13, 1
  %18 = getelementptr inbounds %struct.MEdge, ptr %12, i64 1
  %19 = icmp eq i32 %17, %8
  br i1 %19, label %20, label %11, !llvm.loop !54

20:                                               ; preds = %11, %3
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 16
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = or i32 %22, 4
  store i32 %23, ptr %21, align 8, !tbaa !56
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_triangulate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!"MOD_triangulate.c:copyData"}
!35 = !{!"MOD_triangulate.c:applyModifier"}
!36 = !{!37, !42, i64 116}
!37 = !{!"TriangulateModifierData", !38, i64 0, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124}
!38 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!37, !42, i64 120}
!44 = !{!"MOD_triangulate.c:initData"}
!45 = !{!38, !42, i64 20}
!46 = !{!"MOD_triangulate.c:triangulate_dm"}
!47 = !{!48, !39, i64 1112}
!48 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !50, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!49 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!50 = !{!"float", !40, i64 0}
!51 = !{!52, !53, i64 10}
!52 = !{!"MEdge", !42, i64 0, !42, i64 4, !40, i64 8, !40, i64 9, !53, i64 10}
!53 = !{!"short", !40, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!48, !42, i64 1056}
