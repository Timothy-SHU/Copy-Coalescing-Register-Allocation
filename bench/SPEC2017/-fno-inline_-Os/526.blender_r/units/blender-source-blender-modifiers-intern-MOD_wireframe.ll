; ModuleID = 'blender/source/blender/modifiers/intern/MOD_wireframe.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_wireframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WireframeModifierData = type { %struct.ModifierData, [64 x i8], float, float, float, float, i16, i16, [2 x i16] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@modifierType_Wireframe = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Wireframe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WireframeModifierData\00\00\00\00\00\00\00\00\00\00\00", i32 200, i32 2, i32 9, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr null, ptr null, ptr @dependsOnNormals, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = tail call fastcc ptr @WireframeModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !36 {
  %2 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 2
  store float 0x3F947AE140000000, ptr %2, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 6
  store i16 10, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %4, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !48 {
  %3 = getelementptr inbounds %struct.WireframeModifierData, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !49
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @isDisabled(ptr nocapture readnone %0, i32 %1) #3 !PGOFuncName !50 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnNormals(ptr nocapture readnone %0) #3 !PGOFuncName !51 {
  ret i8 1
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @WireframeModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !52 {
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 1
  %5 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %4) #5
  %6 = tail call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext 1) #5
  %7 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 4
  %12 = load float, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 6
  %14 = load i16, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 5
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 7
  %18 = load i16, ptr %17, align 2, !tbaa !55
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp sgt i32 %20, 1
  %22 = trunc i32 %20 to i16
  %23 = add i16 %22, -1
  %24 = select i1 %21, i16 %23, i16 0
  %25 = trunc i16 %14 to i8
  %26 = and i8 %25, 1
  %27 = lshr i8 %25, 5
  %28 = and i8 %27, 1
  %29 = lshr i8 %25, 4
  %30 = and i8 %29, 1
  %31 = lshr i8 %25, 3
  %32 = and i8 %31, 1
  %33 = lshr i8 %25, 2
  %34 = and i8 %33, 1
  %35 = lshr i8 %25, 1
  %36 = and i8 %35, 1
  tail call void @BM_mesh_wireframe(ptr noundef %6, float noundef %8, float noundef %10, float noundef %12, i8 noundef zeroext %36, i8 noundef zeroext %34, i8 noundef zeroext %32, i8 noundef zeroext %30, i8 noundef zeroext %28, float noundef %16, i32 noundef %5, i8 noundef zeroext %26, i16 noundef signext %18, i16 noundef signext %24, i8 noundef zeroext 0) #5
  %37 = tail call ptr @CDDM_from_bmesh(ptr noundef %6, i8 noundef zeroext 1) #5
  tail call void @BM_mesh_free(ptr noundef %6) #5
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !62
  %40 = or i32 %39, 4
  store i32 %40, ptr %38, align 8, !tbaa !62
  ret ptr %37
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_wireframe(ptr noundef, float noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, float noundef, i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!"MOD_wireframe.c:copyData"}
!35 = !{!"MOD_wireframe.c:applyModifier"}
!36 = !{!"MOD_wireframe.c:initData"}
!37 = !{!38, !44, i64 176}
!38 = !{!"WireframeModifierData", !39, i64 0, !41, i64 112, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !45, i64 192, !45, i64 194, !41, i64 196}
!39 = !{!"ModifierData", !40, i64 0, !40, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !40, i64 96, !40, i64 104}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"float", !41, i64 0}
!45 = !{!"short", !41, i64 0}
!46 = !{!38, !45, i64 192}
!47 = !{!38, !44, i64 188}
!48 = !{!"MOD_wireframe.c:requiredDataMask"}
!49 = !{!41, !41, i64 0}
!50 = !{!"MOD_wireframe.c:isDisabled"}
!51 = !{!"MOD_wireframe.c:dependsOnNormals"}
!52 = !{!"MOD_wireframe.c:WireframeModifier_do"}
!53 = !{!38, !44, i64 180}
!54 = !{!38, !44, i64 184}
!55 = !{!38, !45, i64 194}
!56 = !{!57, !43, i64 456}
!57 = !{!"Object", !58, i64 0, !40, i64 120, !40, i64 128, !45, i64 136, !45, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !41, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !59, i64 312, !40, i64 360, !60, i64 368, !60, i64 384, !60, i64 400, !60, i64 416, !43, i64 432, !43, i64 436, !40, i64 440, !40, i64 448, !43, i64 456, !43, i64 460, !41, i64 464, !41, i64 476, !41, i64 488, !41, i64 500, !41, i64 512, !41, i64 524, !41, i64 536, !41, i64 548, !41, i64 560, !41, i64 576, !41, i64 592, !41, i64 604, !44, i64 616, !44, i64 620, !41, i64 624, !41, i64 688, !41, i64 752, !41, i64 816, !41, i64 880, !43, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !41, i64 966, !41, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !41, i64 1042, !41, i64 1043, !45, i64 1044, !41, i64 1046, !41, i64 1047, !44, i64 1048, !44, i64 1052, !60, i64 1056, !60, i64 1072, !60, i64 1088, !60, i64 1104, !44, i64 1120, !45, i64 1124, !45, i64 1126, !41, i64 1128, !43, i64 1144, !43, i64 1148, !40, i64 1152, !41, i64 1160, !41, i64 1161, !45, i64 1162, !41, i64 1164, !60, i64 1176, !60, i64 1192, !60, i64 1208, !60, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !41, i64 1264, !41, i64 1265, !45, i64 1266, !44, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !61, i64 1304, !61, i64 1312, !43, i64 1320, !43, i64 1324, !60, i64 1328, !60, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !41, i64 1384, !40, i64 1392, !60, i64 1400, !40, i64 1416}
!58 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !45, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !40, i64 112}
!59 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!60 = !{!"ListBase", !40, i64 0, !40, i64 8}
!61 = !{!"long", !41, i64 0}
!62 = !{!63, !43, i64 1056}
!63 = !{!"DerivedMesh", !64, i64 0, !64, i64 200, !64, i64 400, !64, i64 600, !64, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !40, i64 1032, !40, i64 1040, !43, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1060, !40, i64 1064, !41, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!64 = !{!"CustomData", !40, i64 0, !41, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !40, i64 184, !40, i64 192}
