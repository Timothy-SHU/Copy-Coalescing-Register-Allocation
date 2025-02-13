; ModuleID = 'blender/source/blender/modifiers/intern/MOD_subsurf.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_subsurf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }

@modifierType_Subsurf = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Subsurf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SubsurfModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 136, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr @applyModifierEM, ptr @initData, ptr null, ptr @freeData, ptr @isDisabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #4
  %3 = getelementptr inbounds %struct.SubsurfModifierData, ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !35 {
  %5 = and i32 %3, 3
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = shl i32 %7, 3
  %9 = and i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = tail call ptr @subsurf_make_derived_from_derived(ptr noundef %2, ptr noundef %0, ptr noundef null, i32 noundef %10) #4
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 19
  %13 = load i8, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 19
  store i8 %13, ptr %14, align 8, !tbaa !48
  %15 = icmp eq i32 %5, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = tail call ptr @CDDM_copy(ptr noundef nonnull %11) #4
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  tail call void %19(ptr noundef nonnull %11) #4
  br label %20

20:                                               ; preds = %4, %16
  %21 = phi ptr [ %11, %4 ], [ %17, %16 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifierEM(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4) #0 !PGOFuncName !52 {
  %6 = and i32 %4, 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 12, i32 0
  %9 = tail call ptr @subsurf_make_derived_from_derived(ptr noundef %3, ptr noundef %0, ptr noundef null, i32 noundef %8) #4
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 !PGOFuncName !53 {
  %2 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 2
  store i16 1, ptr %2, align 2, !tbaa !54
  %3 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 3
  store i16 2, ptr %3, align 4, !tbaa !57
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !58
  %6 = or i16 %5, 8
  store i16 %6, ptr %4, align 2, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ccgSubSurf_free(ptr noundef nonnull %3) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ccgSubSurf_free(ptr noundef nonnull %8) #4
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 noundef %1) #0 !PGOFuncName !62 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.SubsurfModifierData, ptr %0, i64 0, i32 2
  %6 = select i1 %3, ptr %5, ptr %4
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22
  %12 = tail call i32 @get_render_subsurf_level(ptr noundef nonnull %11, i32 noundef %8) #4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ccgSubSurf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_render_subsurf_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!"MOD_subsurf.c:copyData"}
!35 = !{!"MOD_subsurf.c:applyModifier"}
!36 = !{!37, !43, i64 432}
!37 = !{!"Object", !38, i64 0, !39, i64 120, !39, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !40, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !44, i64 312, !39, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !43, i64 432, !43, i64 436, !39, i64 440, !39, i64 448, !43, i64 456, !43, i64 460, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !40, i64 524, !40, i64 536, !40, i64 548, !40, i64 560, !40, i64 576, !40, i64 592, !40, i64 604, !46, i64 616, !46, i64 620, !40, i64 624, !40, i64 688, !40, i64 752, !40, i64 816, !40, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !40, i64 966, !40, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !40, i64 1042, !40, i64 1043, !42, i64 1044, !40, i64 1046, !40, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !42, i64 1124, !42, i64 1126, !40, i64 1128, !43, i64 1144, !43, i64 1148, !39, i64 1152, !40, i64 1160, !40, i64 1161, !42, i64 1162, !40, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !40, i64 1264, !40, i64 1265, !42, i64 1266, !46, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !47, i64 1304, !47, i64 1312, !43, i64 1320, !43, i64 1324, !45, i64 1328, !45, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !40, i64 1384, !39, i64 1392, !45, i64 1400, !39, i64 1416}
!38 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !39, i64 112}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"short", !40, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!45 = !{!"ListBase", !39, i64 0, !39, i64 8}
!46 = !{!"float", !40, i64 0}
!47 = !{!"long", !40, i64 0}
!48 = !{!49, !40, i64 1072}
!49 = !{!"DerivedMesh", !50, i64 0, !50, i64 200, !50, i64 400, !50, i64 600, !50, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !39, i64 1032, !39, i64 1040, !43, i64 1048, !46, i64 1052, !43, i64 1056, !43, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!50 = !{!"CustomData", !39, i64 0, !40, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !39, i64 184, !39, i64 192}
!51 = !{!49, !39, i64 1680}
!52 = !{!"MOD_subsurf.c:applyModifierEM"}
!53 = !{!"MOD_subsurf.c:initData"}
!54 = !{!55, !42, i64 114}
!55 = !{!"SubsurfModifierData", !56, i64 0, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !39, i64 120, !39, i64 128}
!56 = !{!"ModifierData", !39, i64 0, !39, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!57 = !{!55, !42, i64 116}
!58 = !{!55, !42, i64 118}
!59 = !{!"MOD_subsurf.c:freeData"}
!60 = !{!55, !39, i64 128}
!61 = !{!55, !39, i64 120}
!62 = !{!"MOD_subsurf.c:isDisabled"}
!63 = !{!42, !42, i64 0}
!64 = !{!56, !39, i64 96}
