; ModuleID = 'blender/source/blender/modifiers/intern/MOD_laplaciandeform.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_laplaciandeform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LaplacianDeformModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, ptr, i16, [3 x i16] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@modifierType_LaplacianDeform = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"LaplacianDeform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LaplacianDeformModifierData\00\00\00\00\00", i32 208, i32 1, i32 9, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = tail call ptr %3(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %1, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, i32 %4, i32 %5) #0 !PGOFuncName !45 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void %11(ptr noundef %7) #5
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, i32 %5) #0 !PGOFuncName !50 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void %11(ptr noundef %7) #5
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !51 {
  %2 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %5, i8 0, i64 18, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef %0) #0 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %6(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!"MOD_laplaciandeform.c:copyData"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 184}
!40 = !{!"LaplacianDeformModifierData", !41, i64 0, !37, i64 112, !42, i64 176, !42, i64 180, !36, i64 184, !36, i64 192, !43, i64 200, !37, i64 202}
!41 = !{!"ModifierData", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!42 = !{!"int", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 192}
!45 = !{!"MOD_laplaciandeform.c:deformVerts"}
!46 = !{!47, !36, i64 1680}
!47 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !36, i64 1032, !36, i64 1040, !42, i64 1048, !49, i64 1052, !42, i64 1056, !42, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!48 = !{!"CustomData", !36, i64 0, !37, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !36, i64 184, !36, i64 192}
!49 = !{!"float", !37, i64 0}
!50 = !{!"MOD_laplaciandeform.c:deformVertsEM"}
!51 = !{!"MOD_laplaciandeform.c:initData"}
!52 = !{!37, !37, i64 0}
!53 = !{!40, !42, i64 176}
!54 = !{!40, !42, i64 180}
!55 = !{!"MOD_laplaciandeform.c:requiredDataMask"}
!56 = !{!"MOD_laplaciandeform.c:freeData"}
!57 = !{!"MOD_laplaciandeform.c:isDisabled"}
