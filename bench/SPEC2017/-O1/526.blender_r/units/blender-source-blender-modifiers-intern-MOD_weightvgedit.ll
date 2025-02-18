; ModuleID = 'blender/source/blender/modifiers/intern/MOD_weightvgedit.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_weightvgedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WeightVGEditModifierData = type { %struct.ModifierData, [64 x i8], i16, i16, float, ptr, float, float, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }

@modifierType_WeightVGEdit = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"VertexWeightEdit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WeightVGEditModifierData\00\00\00\00\00\00\00\00", i32 360, i32 5, i32 525, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"WeightVGEdit Modifier, org_w\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WeightVGEdit Modifier, new_w\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"WeightVGEdit Modifier, dw\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"WeightVGEdit Modifier\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mask_texture\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #3
  %3 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @curvemapping_copy(ptr noundef %4) #3
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %8) #3
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !44
  %7 = trunc i16 %6 to i8
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 1
  %10 = lshr i8 %7, 4
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = tail call i32 %13(ptr noundef %2) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %96, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %96, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 1
  %22 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %21) #3
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %96, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef %2, i32 noundef 2, i32 noundef %14) #3
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = icmp eq i8 %9, 0
  br i1 %28, label %96, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @CustomData_add_layer_named(ptr noundef %2, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14, ptr noundef nonnull %21) #3
  %31 = icmp eq ptr %30, null
  br i1 %31, label %96, label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %25, %24 ], [ %30, %29 ]
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %35 = sext i32 %14 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str) #3
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %39 = tail call ptr %38(i64 noundef %36, ptr noundef nonnull @.str.1) #3
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %41 = shl nsw i64 %35, 3
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @.str.2) #3
  %43 = icmp sgt i32 %14, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 4
  %46 = zext nneg i32 %14 to i64
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi i64 [ 0, %44 ], [ %58, %47 ]
  %49 = getelementptr inbounds %struct.MDeformVert, ptr %33, i64 %48
  %50 = tail call ptr @defvert_find_index(ptr noundef nonnull %49, i32 noundef %22) #3
  %51 = getelementptr inbounds ptr, ptr %42, i64 %48
  store ptr %50, ptr %51, align 8, !tbaa !50
  %52 = icmp eq ptr %50, null
  %53 = getelementptr inbounds %struct.MDeformWeight, ptr %50, i64 0, i32 1
  %54 = select i1 %52, ptr %45, ptr %53
  %55 = load float, ptr %54, align 4, !tbaa !51
  %56 = getelementptr inbounds float, ptr %39, i64 %48
  store float %55, ptr %56, align 4, !tbaa !51
  %57 = getelementptr inbounds float, ptr %37, i64 %48
  store float %55, ptr %57, align 4, !tbaa !51
  %58 = add nuw nsw i64 %48, 1
  %59 = icmp eq i64 %58, %46
  br i1 %59, label %60, label %47, !llvm.loop !52

60:                                               ; preds = %47, %32
  %61 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !55
  switch i16 %62, label %67 [
    i16 0, label %74
    i16 8, label %63
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %65 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef nonnull %64) #3
  %66 = tail call ptr @BLI_rng_new_srandom(i32 noundef %65) #3
  br label %67

67:                                               ; preds = %60, %63
  %68 = phi ptr [ %66, %63 ], [ null, %60 ]
  %69 = load i16, ptr %61, align 2, !tbaa !55
  %70 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  tail call void @weightvg_do_map(i32 noundef %14, ptr noundef %39, i16 noundef signext %69, ptr noundef %71, ptr noundef %68) #3
  %72 = icmp eq ptr %68, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  tail call void @BLI_rng_free(ptr noundef nonnull %68) #3
  br label %74

74:                                               ; preds = %67, %73, %60
  %75 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 8
  %76 = load float, ptr %75, align 8, !tbaa !56
  %77 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 9
  %78 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 10
  %83 = load i32, ptr %82, align 4, !tbaa !58
  %84 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 13
  %85 = load i32, ptr %84, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !60
  %88 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 14
  tail call void @weightvg_do_mask(i32 noundef %14, ptr noundef null, ptr noundef %37, ptr noundef %39, ptr noundef %1, ptr noundef %2, float noundef %76, ptr noundef nonnull %77, ptr noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef %85, ptr noundef %87, ptr noundef nonnull %88) #3
  %89 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 6
  %90 = load float, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 7
  %92 = load float, ptr %91, align 4, !tbaa !62
  tail call void @weightvg_update_vg(ptr noundef nonnull %33, i32 noundef %22, ptr noundef %42, i32 noundef %14, ptr noundef null, ptr noundef %37, i8 noundef zeroext %9, float noundef %90, i8 noundef zeroext %11, float noundef %92) #3
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %93(ptr noundef %37) #3
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %94(ptr noundef %39) #3
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %95(ptr noundef %42) #3
  br label %96

96:                                               ; preds = %29, %27, %20, %4, %16, %74
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 2
  store i64 0, ptr %2, align 8
  %3 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !34
  tail call void @curvemapping_initialize(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 7
  store float 0x3F847AE140000000, ptr %5, align 4, !tbaa !62
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 6
  store float 0x3F847AE140000000, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 10
  store i32 1, ptr %8, align 4, !tbaa !58
  %9 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 13
  store i32 0, ptr %9, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @curvemapping_free(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %5) #3
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !59
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #3
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %14, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.3) #3
  br label %15

15:                                               ; preds = %13, %9, %5
  %16 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.3) #3
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #3
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #3
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.4) #3
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

declare i32 @BLI_ghashutil_strhash_p(ptr noundef) local_unnamed_addr #2

declare void @weightvg_do_map(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

declare void @weightvg_do_mask(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @weightvg_update_vg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 184}
!35 = !{!"WeightVGEditModifierData", !36, i64 0, !38, i64 112, !41, i64 176, !41, i64 178, !42, i64 180, !37, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !38, i64 204, !40, i64 268, !37, i64 272, !37, i64 280, !40, i64 288, !38, i64 292, !40, i64 356}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !37, i64 272}
!44 = !{!35, !41, i64 176}
!45 = !{!46, !37, i64 1104}
!46 = !{!"DerivedMesh", !47, i64 0, !47, i64 200, !47, i64 400, !47, i64 600, !47, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!47 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!48 = !{!49, !37, i64 0}
!49 = !{!"ListBase", !37, i64 0, !37, i64 8}
!50 = !{!37, !37, i64 0}
!51 = !{!42, !42, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!35, !41, i64 178}
!56 = !{!35, !42, i64 200}
!57 = !{!35, !37, i64 96}
!58 = !{!35, !40, i64 268}
!59 = !{!35, !40, i64 288}
!60 = !{!35, !37, i64 280}
!61 = !{!35, !42, i64 192}
!62 = !{!35, !42, i64 196}
!63 = !{!38, !38, i64 0}
