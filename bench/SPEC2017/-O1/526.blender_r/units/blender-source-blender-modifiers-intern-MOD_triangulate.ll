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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = tail call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext 1) #3
  tail call void @BM_mesh_triangulate(ptr noundef %9, i32 noundef %6, i32 noundef %8, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #3
  %10 = tail call ptr @CDDM_from_bmesh(ptr noundef %9, i8 noundef zeroext 0) #3
  tail call void @BM_mesh_free(ptr noundef %9) #3
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = tail call i32 %12(ptr noundef %10) #3
  %14 = tail call ptr @CDDM_get_edges(ptr noundef %10) #3
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %4 ]
  %18 = phi i32 [ %22, %16 ], [ 0, %4 ]
  %19 = getelementptr inbounds %struct.MEdge, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !46
  %21 = or i16 %20, 34
  store i16 %21, ptr %19, align 2, !tbaa !46
  %22 = add nuw nsw i32 %18, 1
  %23 = getelementptr inbounds %struct.MEdge, ptr %17, i64 1
  %24 = icmp eq i32 %22, %13
  br i1 %24, label %25, label %16, !llvm.loop !49

25:                                               ; preds = %16, %4
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !52
  %28 = or i32 %27, 4
  store i32 %28, ptr %26, align 8, !tbaa !52
  %29 = icmp eq ptr %10, null
  %30 = select i1 %29, ptr %2, ptr %10
  ret ptr %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = or i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 2
  store i32 3, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.TriangulateModifierData, ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !41
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_triangulate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !40, i64 116}
!35 = !{!"TriangulateModifierData", !36, i64 0, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!35, !40, i64 120}
!42 = !{!43, !37, i64 1112}
!43 = !{!"DerivedMesh", !44, i64 0, !44, i64 200, !44, i64 400, !44, i64 600, !44, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !45, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!44 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!45 = !{!"float", !38, i64 0}
!46 = !{!47, !48, i64 10}
!47 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !48, i64 10}
!48 = !{!"short", !38, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!43, !40, i64 1056}
!53 = !{!36, !40, i64 20}
