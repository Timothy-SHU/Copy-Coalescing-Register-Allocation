; ModuleID = 'blender/source/blender/modifiers/intern/MOD_decimate.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_decimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DecimateModifierData = type { %struct.ModifierData, float, i16, i8, i8, float, [64 x i8], i16, i16, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }

@modifierType_Decimate = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Decimate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"DecimateModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 200, i32 3, i32 3, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [42 x i8] c"Modifier requires more than 3 input faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.applyModifier = private unnamed_addr constant [14 x i8] c"applyModifier\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = tail call i32 %8(ptr noundef %2) #5
  %10 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 9
  store i32 %9, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !48
  switch i16 %12, label %117 [
    i16 0, label %13
    i16 1, label %17
    i16 2, label %21
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !49
  %16 = fcmp oeq float %15, 1.000000e+00
  br i1 %16, label %117, label %28

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 2
  %19 = load i16, ptr %18, align 4, !tbaa !50
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %117, label %25

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 5
  %23 = load float, ptr %22, align 8, !tbaa !51
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %117, label %25

25:                                               ; preds = %21, %17
  %26 = phi i8 [ 0, %17 ], [ 1, %21 ]
  %27 = icmp slt i32 %9, 4
  br i1 %27, label %30, label %80

28:                                               ; preds = %13
  %29 = icmp slt i32 %9, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %28, %25
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str) #5
  br label %117

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 6
  %33 = load i8, ptr %32, align 4, !tbaa !52
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %36 = load ptr, ptr %5, align 8, !tbaa !53
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = call i32 %40(ptr noundef nonnull %2) #5
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %43 = zext i32 %41 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @__func__.applyModifier) #5
  %46 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 7
  %47 = load i16, ptr %46, align 4, !tbaa !55
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  %50 = icmp eq i32 %41, 0
  br i1 %49, label %52, label %51

51:                                               ; preds = %38
  br i1 %50, label %78, label %53

52:                                               ; preds = %38
  br i1 %50, label %78, label %66

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %64, %53 ], [ 0, %51 ]
  %55 = load ptr, ptr %5, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.MDeformVert, ptr %55, i64 %54
  %57 = load i32, ptr %6, align 4, !tbaa !56
  %58 = call float @defvert_find_weight(ptr noundef %56, i32 noundef %57) #5
  %59 = fsub float 1.000000e+00, %58
  %60 = fcmp ogt float %59, 0x3EE4F8B580000000
  %61 = fdiv float 1.000000e+00, %59
  %62 = select i1 %60, float %61, float 1.000000e+05
  %63 = getelementptr inbounds float, ptr %45, i64 %54
  store float %62, ptr %63, align 4, !tbaa !57
  %64 = add nuw nsw i64 %54, 1
  %65 = icmp eq i64 %64, %43
  br i1 %65, label %78, label %53, !llvm.loop !58

66:                                               ; preds = %52, %66
  %67 = phi i64 [ %76, %66 ], [ 0, %52 ]
  %68 = load ptr, ptr %5, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct.MDeformVert, ptr %68, i64 %67
  %70 = load i32, ptr %6, align 4, !tbaa !56
  %71 = call float @defvert_find_weight(ptr noundef %69, i32 noundef %70) #5
  %72 = fcmp ogt float %71, 0x3EE4F8B580000000
  %73 = fdiv float 1.000000e+00, %71
  %74 = select i1 %72, float %73, float 1.000000e+05
  %75 = getelementptr inbounds float, ptr %45, i64 %67
  store float %74, ptr %75, align 4, !tbaa !57
  %76 = add nuw nsw i64 %67, 1
  %77 = icmp eq i64 %76, %43
  br i1 %77, label %78, label %66, !llvm.loop !60

78:                                               ; preds = %53, %66, %51, %52, %35
  %79 = phi ptr [ null, %35 ], [ %45, %52 ], [ %45, %51 ], [ %45, %66 ], [ %45, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %80

80:                                               ; preds = %25, %31, %78
  %81 = phi i8 [ 1, %78 ], [ 1, %31 ], [ %26, %25 ]
  %82 = phi ptr [ %79, %78 ], [ null, %31 ], [ null, %25 ]
  %83 = call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext %81) #5
  %84 = load i16, ptr %11, align 2, !tbaa !48
  switch i16 %84, label %108 [
    i16 0, label %85
    i16 1, label %93
    i16 2, label %97
  ]

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 7
  %87 = load i16, ptr %86, align 4, !tbaa !55
  %88 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 1
  %89 = load float, ptr %88, align 8, !tbaa !49
  %90 = trunc i16 %87 to i8
  %91 = lshr i8 %90, 1
  %92 = and i8 %91, 1
  call void @BM_mesh_decimate_collapse(ptr noundef %83, float noundef %89, ptr noundef %82, i8 noundef zeroext %92) #5
  br label %108

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 2
  %95 = load i16, ptr %94, align 4, !tbaa !50
  %96 = sext i16 %95 to i32
  call void @BM_mesh_decimate_unsubdivide(ptr noundef %83, i32 noundef %96) #5
  br label %108

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 7
  %99 = load i16, ptr %98, align 4, !tbaa !55
  %100 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 5
  %101 = load float, ptr %100, align 8, !tbaa !51
  %102 = trunc i16 %99 to i8
  %103 = lshr i8 %102, 2
  %104 = and i8 %103, 1
  %105 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 3
  %106 = load i8, ptr %105, align 2, !tbaa !61
  %107 = zext i8 %106 to i32
  call void @BM_mesh_decimate_dissolve(ptr noundef %83, float noundef %101, i8 noundef zeroext %104, i32 noundef %107) #5
  br label %108

108:                                              ; preds = %80, %97, %93, %85
  %109 = icmp eq ptr %82, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %111(ptr noundef nonnull %82) #5
  br label %112

112:                                              ; preds = %110, %108
  %113 = getelementptr inbounds %struct.BMesh, ptr %83, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !62
  store i32 %114, ptr %10, align 8, !tbaa !44
  %115 = call ptr @CDDM_from_bmesh(ptr noundef %83, i8 noundef zeroext 0) #5
  call void @BM_mesh_free(ptr noundef %83) #5
  %116 = getelementptr inbounds %struct.DerivedMesh, ptr %115, i64 0, i32 16
  store i32 4, ptr %116, align 8, !tbaa !65
  br label %117

117:                                              ; preds = %4, %21, %17, %13, %112, %30
  %118 = phi ptr [ %2, %30 ], [ %115, %112 ], [ %2, %13 ], [ %2, %17 ], [ %2, %21 ], [ %2, %4 ]
  ret ptr %118
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 5
  store float 0x3FB6571840000000, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.DecimateModifierData, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 4, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_decimate_collapse(ptr noundef, float noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_decimate_unsubdivide(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_decimate_dissolve(ptr noundef, float noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }

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
!34 = !{!"MOD_decimate.c:copyData"}
!35 = !{!"MOD_decimate.c:applyModifier"}
!36 = !{!37, !39, i64 1136}
!37 = !{!"DerivedMesh", !38, i64 0, !38, i64 200, !38, i64 400, !38, i64 600, !38, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!38 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!45, !42, i64 192}
!45 = !{!"DecimateModifierData", !46, i64 0, !43, i64 112, !47, i64 116, !40, i64 118, !40, i64 119, !43, i64 120, !40, i64 124, !47, i64 188, !47, i64 190, !42, i64 192, !42, i64 196}
!46 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!47 = !{!"short", !40, i64 0}
!48 = !{!45, !47, i64 190}
!49 = !{!45, !43, i64 112}
!50 = !{!45, !47, i64 116}
!51 = !{!45, !43, i64 120}
!52 = !{!40, !40, i64 0}
!53 = !{!39, !39, i64 0}
!54 = !{!37, !39, i64 1104}
!55 = !{!45, !47, i64 188}
!56 = !{!42, !42, i64 0}
!57 = !{!43, !43, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = !{!45, !40, i64 118}
!62 = !{!63, !42, i64 12}
!63 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !40, i64 28, !40, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 136, !38, i64 144, !38, i64 344, !38, i64 544, !38, i64 744, !47, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !64, i64 960, !39, i64 976, !64, i64 984, !39, i64 1000}
!64 = !{!"ListBase", !39, i64 0, !39, i64 8}
!65 = !{!37, !42, i64 1056}
!66 = !{!"MOD_decimate.c:initData"}
!67 = !{!"MOD_decimate.c:requiredDataMask"}
