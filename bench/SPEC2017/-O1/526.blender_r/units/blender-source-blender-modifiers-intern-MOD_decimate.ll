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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call i32 %8(ptr noundef %2) #5
  %10 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 9
  store i32 %9, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !46
  switch i16 %12, label %120 [
    i16 0, label %13
    i16 1, label %17
    i16 2, label %21
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !47
  %16 = fcmp oeq float %15, 1.000000e+00
  br i1 %16, label %120, label %25

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 2
  %19 = load i16, ptr %18, align 4, !tbaa !48
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %120, label %25

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 5
  %23 = load float, ptr %22, align 8, !tbaa !49
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %120, label %25

25:                                               ; preds = %21, %17, %13
  %26 = phi i8 [ 1, %13 ], [ 0, %17 ], [ 1, %21 ]
  %27 = icmp slt i32 %9, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str) #5
  br label %120

29:                                               ; preds = %25
  %30 = icmp eq i16 %12, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 6
  %33 = load i8, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %36 = load ptr, ptr %5, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = call i32 %40(ptr noundef %2) #5
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %43 = zext i32 %41 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @__func__.applyModifier) #5
  %46 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 7
  %47 = load i16, ptr %46, align 4, !tbaa !53
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  %50 = icmp eq i32 %41, 0
  br i1 %49, label %54, label %51

51:                                               ; preds = %38
  br i1 %50, label %82, label %52

52:                                               ; preds = %51
  %53 = zext i32 %41 to i64
  br label %57

54:                                               ; preds = %38
  br i1 %50, label %82, label %55

55:                                               ; preds = %54
  %56 = zext i32 %41 to i64
  br label %70

57:                                               ; preds = %52, %57
  %58 = phi i64 [ 0, %52 ], [ %68, %57 ]
  %59 = load ptr, ptr %5, align 8, !tbaa !51
  %60 = getelementptr inbounds %struct.MDeformVert, ptr %59, i64 %58
  %61 = load i32, ptr %6, align 4, !tbaa !54
  %62 = call float @defvert_find_weight(ptr noundef %60, i32 noundef %61) #5
  %63 = fsub float 1.000000e+00, %62
  %64 = fcmp ogt float %63, 0x3EE4F8B580000000
  %65 = fdiv float 1.000000e+00, %63
  %66 = select i1 %64, float %65, float 1.000000e+05
  %67 = getelementptr inbounds float, ptr %45, i64 %58
  store float %66, ptr %67, align 4, !tbaa !55
  %68 = add nuw nsw i64 %58, 1
  %69 = icmp eq i64 %68, %53
  br i1 %69, label %82, label %57, !llvm.loop !56

70:                                               ; preds = %55, %70
  %71 = phi i64 [ 0, %55 ], [ %80, %70 ]
  %72 = load ptr, ptr %5, align 8, !tbaa !51
  %73 = getelementptr inbounds %struct.MDeformVert, ptr %72, i64 %71
  %74 = load i32, ptr %6, align 4, !tbaa !54
  %75 = call float @defvert_find_weight(ptr noundef %73, i32 noundef %74) #5
  %76 = fcmp ogt float %75, 0x3EE4F8B580000000
  %77 = fdiv float 1.000000e+00, %75
  %78 = select i1 %76, float %77, float 1.000000e+05
  %79 = getelementptr inbounds float, ptr %45, i64 %71
  store float %78, ptr %79, align 4, !tbaa !55
  %80 = add nuw nsw i64 %71, 1
  %81 = icmp eq i64 %80, %56
  br i1 %81, label %82, label %70, !llvm.loop !59

82:                                               ; preds = %57, %70, %51, %54, %35
  %83 = phi ptr [ null, %35 ], [ %45, %54 ], [ %45, %51 ], [ %45, %70 ], [ %45, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %84

84:                                               ; preds = %31, %82, %29
  %85 = phi ptr [ %83, %82 ], [ null, %31 ], [ null, %29 ]
  %86 = call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext %26) #5
  %87 = load i16, ptr %11, align 2, !tbaa !46
  switch i16 %87, label %111 [
    i16 0, label %88
    i16 1, label %96
    i16 2, label %100
  ]

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 7
  %90 = load i16, ptr %89, align 4, !tbaa !53
  %91 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 1
  %92 = load float, ptr %91, align 8, !tbaa !47
  %93 = trunc i16 %90 to i8
  %94 = lshr i8 %93, 1
  %95 = and i8 %94, 1
  call void @BM_mesh_decimate_collapse(ptr noundef %86, float noundef %92, ptr noundef %85, i8 noundef zeroext %95) #5
  br label %111

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 2
  %98 = load i16, ptr %97, align 4, !tbaa !48
  %99 = sext i16 %98 to i32
  call void @BM_mesh_decimate_unsubdivide(ptr noundef %86, i32 noundef %99) #5
  br label %111

100:                                              ; preds = %84
  %101 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 7
  %102 = load i16, ptr %101, align 4, !tbaa !53
  %103 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 5
  %104 = load float, ptr %103, align 8, !tbaa !49
  %105 = trunc i16 %102 to i8
  %106 = lshr i8 %105, 2
  %107 = and i8 %106, 1
  %108 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 3
  %109 = load i8, ptr %108, align 2, !tbaa !60
  %110 = zext i8 %109 to i32
  call void @BM_mesh_decimate_dissolve(ptr noundef %86, float noundef %104, i8 noundef zeroext %107, i32 noundef %110) #5
  br label %111

111:                                              ; preds = %84, %100, %96, %88
  %112 = icmp eq ptr %85, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %114(ptr noundef nonnull %85) #5
  br label %115

115:                                              ; preds = %113, %111
  %116 = getelementptr inbounds %struct.BMesh, ptr %86, i64 0, i32 3
  %117 = load i32, ptr %116, align 4, !tbaa !61
  store i32 %117, ptr %10, align 8, !tbaa !42
  %118 = call ptr @CDDM_from_bmesh(ptr noundef %86, i8 noundef zeroext 0) #5
  call void @BM_mesh_free(ptr noundef %86) #5
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %118, i64 0, i32 16
  store i32 4, ptr %119, align 8, !tbaa !64
  br label %120

120:                                              ; preds = %4, %21, %17, %13, %115, %28
  %121 = phi ptr [ %2, %28 ], [ %118, %115 ], [ %2, %13 ], [ %2, %17 ], [ %2, %21 ], [ %2, %4 ]
  ret ptr %121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.DecimateModifierData, ptr %0, i64 0, i32 5
  store float 0x3FB6571840000000, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.DecimateModifierData, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_mesh_decimate_collapse(ptr noundef, float noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_mesh_decimate_unsubdivide(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BM_mesh_decimate_dissolve(ptr noundef, float noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !37, i64 1136}
!35 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!36 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!43, !40, i64 192}
!43 = !{!"DecimateModifierData", !44, i64 0, !41, i64 112, !45, i64 116, !38, i64 118, !38, i64 119, !41, i64 120, !38, i64 124, !45, i64 188, !45, i64 190, !40, i64 192, !40, i64 196}
!44 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!45 = !{!"short", !38, i64 0}
!46 = !{!43, !45, i64 190}
!47 = !{!43, !41, i64 112}
!48 = !{!43, !45, i64 116}
!49 = !{!43, !41, i64 120}
!50 = !{!38, !38, i64 0}
!51 = !{!37, !37, i64 0}
!52 = !{!35, !37, i64 1104}
!53 = !{!43, !45, i64 188}
!54 = !{!40, !40, i64 0}
!55 = !{!41, !41, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !57, !58}
!60 = !{!43, !38, i64 118}
!61 = !{!62, !40, i64 12}
!62 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !36, i64 144, !36, i64 344, !36, i64 544, !36, i64 744, !45, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !63, i64 960, !37, i64 976, !63, i64 984, !37, i64 1000}
!63 = !{!"ListBase", !37, i64 0, !37, i64 8}
!64 = !{!35, !40, i64 1056}
