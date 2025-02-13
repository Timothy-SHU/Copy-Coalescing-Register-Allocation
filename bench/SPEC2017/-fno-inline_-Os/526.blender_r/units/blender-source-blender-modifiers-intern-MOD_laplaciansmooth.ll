; ModuleID = 'blender/source/blender/modifiers/intern/MOD_laplaciansmooth.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_laplaciansmooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.LaplacianSmoothModifierData = type { %struct.ModifierData, float, float, float, [64 x i8], i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@modifierType_LaplacianSmooth = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Laplacian Smooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LaplacianSmoothModifierData\00\00\00\00\00", i32 192, i32 1, i32 9, ptr @copy_data, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @init_data, ptr @required_data_mask, ptr null, ptr @is_disabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_data(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !35 {
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  tail call void %13(ptr noundef %9) #4
  br label %14

14:                                               ; preds = %8, %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, i32 noundef %5) #0 !PGOFuncName !44 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  tail call void %13(ptr noundef %9) #4
  br label %14

14:                                               ; preds = %8, %11, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @init_data(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !45 {
  %2 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %0, i64 0, i32 1
  store <2 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000>, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %0, i64 0, i32 6
  store i16 1, ptr %3, align 2, !tbaa !47
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %0, i64 0, i32 5
  store i16 62, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %0, i64 0, i32 4
  store i8 0, ptr %5, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @required_data_mask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %1, i64 0, i32 4
  %4 = load i8, ptr %3, align 4, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @is_disabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 4, !tbaa !51
  %5 = and i16 %4, 14
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }

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
!34 = !{!"MOD_laplaciansmooth.c:copy_data"}
!35 = !{!"MOD_laplaciansmooth.c:deformVerts"}
!36 = !{!37, !39, i64 1680}
!37 = !{!"DerivedMesh", !38, i64 0, !38, i64 200, !38, i64 400, !38, i64 600, !38, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!38 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!"MOD_laplaciansmooth.c:deformVertsEM"}
!45 = !{!"MOD_laplaciansmooth.c:init_data"}
!46 = !{!43, !43, i64 0}
!47 = !{!48, !50, i64 190}
!48 = !{!"LaplacianSmoothModifierData", !49, i64 0, !43, i64 112, !43, i64 116, !43, i64 120, !40, i64 124, !50, i64 188, !50, i64 190}
!49 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!50 = !{!"short", !40, i64 0}
!51 = !{!48, !50, i64 188}
!52 = !{!40, !40, i64 0}
!53 = !{!"MOD_laplaciansmooth.c:required_data_mask"}
!54 = !{!"MOD_laplaciansmooth.c:is_disabled"}
