; ModuleID = 'blender/source/blender/modifiers/intern/MOD_multires.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_multires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@modifierType_Multires = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Multires\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MultiresModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 120, i32 2, i32 37, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !35 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 25
  %8 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 35) #3
  %9 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 4
  %10 = load i8, ptr %9, align 1, !tbaa !48
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 19) #3
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 31
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %7, i32 noundef 19, i32 noundef 1, ptr noundef null, i32 noundef %17) #3
  br label %19

19:                                               ; preds = %12, %15, %4
  %20 = icmp eq i8 %8, 0
  %21 = select i1 %20, i32 0, i32 4
  %22 = and i32 %3, 1
  %23 = icmp eq i32 %22, 0
  %24 = shl nuw nsw i32 %22, 1
  %25 = or disjoint i32 %21, %24
  %26 = and i32 %3, 8
  %27 = or disjoint i32 %25, %26
  %28 = tail call ptr @multires_make_derived_from_derived(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %27) #3
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %74, label %30

30:                                               ; preds = %19
  %31 = and i32 %3, 3
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %74, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @CDDM_copy(ptr noundef %28) #3
  br i1 %23, label %35, label %71

35:                                               ; preds = %33
  %36 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 19) #3
  %37 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %7, i32 noundef 35) #3
  %38 = icmp eq ptr %36, null
  br i1 %38, label %62, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 31
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = tail call ptr %43(ptr noundef %34) #3
  tail call void @subsurf_copy_grid_hidden(ptr noundef %28, ptr noundef %41, ptr noundef %44, ptr noundef nonnull %36) #3
  %45 = load ptr, ptr %42, align 8, !tbaa !55
  %46 = tail call ptr %45(ptr noundef %34) #3
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = tail call ptr %48(ptr noundef %34) #3
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 32
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = tail call ptr %51(ptr noundef %34) #3
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 24
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = tail call i32 %54(ptr noundef %34) #3
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 35
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = tail call ptr %57(ptr noundef %34) #3
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 27
  %60 = load ptr, ptr %59, align 8, !tbaa !61
  %61 = tail call i32 %60(ptr noundef %34) #3
  tail call void @BKE_mesh_flush_hidden_from_verts_ex(ptr noundef %46, ptr noundef %49, ptr noundef %52, i32 noundef %55, ptr noundef %58, i32 noundef %61) #3
  br label %62

62:                                               ; preds = %39, %35
  %63 = icmp eq ptr %37, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 23
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = tail call i32 %66(ptr noundef %34) #3
  %68 = tail call ptr @CustomData_add_layer(ptr noundef %34, i32 noundef 34, i32 noundef 1, ptr noundef null, i32 noundef %67) #3
  %69 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  tail call void @subsurf_copy_grid_paint_mask(ptr noundef %28, ptr noundef %70, ptr noundef %68, ptr noundef nonnull %37) #3
  br label %71

71:                                               ; preds = %62, %64, %33
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 95
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  tail call void %73(ptr noundef %28) #3
  br label %74

74:                                               ; preds = %71, %30, %19
  %75 = phi ptr [ %2, %19 ], [ %34, %71 ], [ %28, %30 ]
  ret ptr %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.MultiresModifierData, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @multires_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @subsurf_copy_grid_hidden(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_flush_hidden_from_verts_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @subsurf_copy_grid_paint_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }

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
!34 = !{!"MOD_multires.c:copyData"}
!35 = !{!"MOD_multires.c:applyModifier"}
!36 = !{!37, !39, i64 296}
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
!48 = !{!49, !40, i64 115}
!49 = !{!"MultiresModifierData", !50, i64 0, !40, i64 112, !40, i64 113, !40, i64 114, !40, i64 115, !40, i64 116, !40, i64 117, !40, i64 118}
!50 = !{!"ModifierData", !39, i64 0, !39, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!51 = !{!52, !43, i64 1300}
!52 = !{!"Mesh", !38, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !53, i64 280, !53, i64 480, !53, i64 680, !53, i64 880, !53, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !40, i64 1308, !40, i64 1320, !40, i64 1332, !43, i64 1344, !42, i64 1348, !42, i64 1350, !46, i64 1352, !43, i64 1356, !40, i64 1360, !40, i64 1361, !40, i64 1362, !40, i64 1363, !40, i64 1364, !40, i64 1365, !42, i64 1366, !39, i64 1368}
!53 = !{!"CustomData", !39, i64 0, !40, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !39, i64 184, !39, i64 192}
!54 = !{!52, !39, i64 168}
!55 = !{!56, !39, i64 1168}
!56 = !{!"DerivedMesh", !53, i64 0, !53, i64 200, !53, i64 400, !53, i64 600, !53, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !39, i64 1032, !39, i64 1040, !43, i64 1048, !46, i64 1052, !43, i64 1056, !43, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!57 = !{!56, !39, i64 1192}
!58 = !{!56, !39, i64 1176}
!59 = !{!56, !39, i64 1112}
!60 = !{!56, !39, i64 1200}
!61 = !{!56, !39, i64 1136}
!62 = !{!56, !39, i64 1104}
!63 = !{!56, !39, i64 1680}
!64 = !{!"MOD_multires.c:initData"}
