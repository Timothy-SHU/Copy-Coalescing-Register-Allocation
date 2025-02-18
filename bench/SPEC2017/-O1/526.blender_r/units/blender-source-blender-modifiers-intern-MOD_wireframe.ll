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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 1
  %6 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %5) #5
  %7 = tail call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext 1) #5
  %8 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 4
  %13 = load float, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 6
  %15 = load i16, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 4, !tbaa !46
  %18 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 7
  %19 = load i16, ptr %18, align 2, !tbaa !47
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = icmp sgt i32 %21, 1
  %23 = trunc i32 %21 to i16
  %24 = add i16 %23, -1
  %25 = select i1 %22, i16 %24, i16 0
  %26 = trunc i16 %15 to i8
  %27 = and i8 %26, 1
  %28 = lshr i8 %26, 5
  %29 = and i8 %28, 1
  %30 = lshr i8 %26, 4
  %31 = and i8 %30, 1
  %32 = lshr i8 %26, 3
  %33 = and i8 %32, 1
  %34 = lshr i8 %26, 2
  %35 = and i8 %34, 1
  %36 = lshr i8 %26, 1
  %37 = and i8 %36, 1
  tail call void @BM_mesh_wireframe(ptr noundef %7, float noundef %9, float noundef %11, float noundef %13, i8 noundef zeroext %37, i8 noundef zeroext %35, i8 noundef zeroext %33, i8 noundef zeroext %31, i8 noundef zeroext %29, float noundef %17, i32 noundef %6, i8 noundef zeroext %27, i16 noundef signext %19, i16 noundef signext %25, i8 noundef zeroext 0) #5
  %38 = tail call ptr @CDDM_from_bmesh(ptr noundef %7, i8 noundef zeroext 1) #5
  tail call void @BM_mesh_free(ptr noundef %7) #5
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %38, i64 0, i32 16
  %40 = load i32, ptr %39, align 8, !tbaa !54
  %41 = or i32 %40, 4
  store i32 %41, ptr %39, align 8, !tbaa !54
  ret ptr %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 2
  store float 0x3F947AE140000000, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 6
  store i16 10, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %4, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.WireframeModifierData, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !57
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @isDisabled(ptr nocapture readnone %0, i32 %1) #3 {
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnNormals(ptr nocapture readnone %0) #3 {
  ret i8 1
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @BM_mesh_wireframe(ptr noundef, float noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, float noundef, i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !41, i64 176}
!35 = !{!"WireframeModifierData", !36, i64 0, !38, i64 112, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !42, i64 192, !42, i64 194, !38, i64 196}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!35, !41, i64 180}
!44 = !{!35, !41, i64 184}
!45 = !{!35, !42, i64 192}
!46 = !{!35, !41, i64 188}
!47 = !{!35, !42, i64 194}
!48 = !{!49, !40, i64 456}
!49 = !{!"Object", !50, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !51, i64 312, !37, i64 360, !52, i64 368, !52, i64 384, !52, i64 400, !52, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !38, i64 1042, !38, i64 1043, !42, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !52, i64 1056, !52, i64 1072, !52, i64 1088, !52, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !42, i64 1162, !38, i64 1164, !52, i64 1176, !52, i64 1192, !52, i64 1208, !52, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !42, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !53, i64 1304, !53, i64 1312, !40, i64 1320, !40, i64 1324, !52, i64 1328, !52, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !52, i64 1400, !37, i64 1416}
!50 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!51 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!52 = !{!"ListBase", !37, i64 0, !37, i64 8}
!53 = !{!"long", !38, i64 0}
!54 = !{!55, !40, i64 1056}
!55 = !{!"DerivedMesh", !56, i64 0, !56, i64 200, !56, i64 400, !56, i64 600, !56, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!56 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!57 = !{!38, !38, i64 0}
