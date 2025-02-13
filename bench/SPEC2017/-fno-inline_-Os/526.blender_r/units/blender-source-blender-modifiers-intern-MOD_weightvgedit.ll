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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #3
  %3 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call ptr @curvemapping_copy(ptr noundef %4) #3
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %8) #3
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 !PGOFuncName !45 {
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !46
  %7 = trunc i16 %6 to i8
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 1
  %10 = lshr i8 %7, 4
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = tail call i32 %13(ptr noundef %2) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %18 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %17) #4, !range !50
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 1
  %22 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %21) #3
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %97, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @CustomData_duplicate_referenced_layer(ptr noundef nonnull %2, i32 noundef 2, i32 noundef %14) #3
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = icmp eq i8 %9, 0
  br i1 %28, label %97, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14, ptr noundef nonnull %21) #3
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %25, %24 ], [ %30, %29 ]
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %35 = sext i32 %14 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str) #3
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %39 = tail call ptr %38(i64 noundef %36, ptr noundef nonnull @.str.1) #3
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
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
  store ptr %50, ptr %51, align 8, !tbaa !51
  %52 = icmp eq ptr %50, null
  %53 = getelementptr inbounds %struct.MDeformWeight, ptr %50, i64 0, i32 1
  %54 = select i1 %52, ptr %45, ptr %53
  %55 = load float, ptr %54, align 4, !tbaa !52
  %56 = getelementptr inbounds float, ptr %39, i64 %48
  store float %55, ptr %56, align 4
  %57 = getelementptr inbounds float, ptr %37, i64 %48
  store float %55, ptr %57, align 4
  %58 = add nuw nsw i64 %48, 1
  %59 = icmp eq i64 %58, %46
  br i1 %59, label %60, label %47, !llvm.loop !53

60:                                               ; preds = %47, %32
  %61 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !55
  switch i16 %62, label %63 [
    i16 0, label %75
    i16 8, label %66
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  tail call void @weightvg_do_map(i32 noundef %14, ptr noundef %39, i16 noundef signext %62, ptr noundef %65, ptr noundef null) #3
  br label %75

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %68 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef nonnull %67) #3
  %69 = tail call ptr @BLI_rng_new_srandom(i32 noundef %68) #3
  %70 = load i16, ptr %61, align 2, !tbaa !55
  %71 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  tail call void @weightvg_do_map(i32 noundef %14, ptr noundef %39, i16 noundef signext %70, ptr noundef %72, ptr noundef %69) #3
  %73 = icmp eq ptr %69, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  tail call void @BLI_rng_free(ptr noundef nonnull %69) #3
  br label %75

75:                                               ; preds = %63, %66, %74, %60
  %76 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 8
  %77 = load float, ptr %76, align 8, !tbaa !56
  %78 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 9
  %79 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  %81 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 10
  %84 = load i32, ptr %83, align 4, !tbaa !58
  %85 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 13
  %86 = load i32, ptr %85, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 14
  tail call void @weightvg_do_mask(i32 noundef %14, ptr noundef null, ptr noundef %37, ptr noundef %39, ptr noundef %1, ptr noundef %2, float noundef %77, ptr noundef nonnull %78, ptr noundef %80, ptr noundef %82, i32 noundef %84, i32 noundef %86, ptr noundef %88, ptr noundef nonnull %89) #3
  %90 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 6
  %91 = load float, ptr %90, align 8, !tbaa !61
  %92 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 7
  %93 = load float, ptr %92, align 4, !tbaa !62
  tail call void @weightvg_update_vg(ptr noundef nonnull %33, i32 noundef %22, ptr noundef %42, i32 noundef %14, ptr noundef null, ptr noundef %37, i8 noundef zeroext %9, float noundef %91, i8 noundef zeroext %11, float noundef %93) #3
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %94(ptr noundef %37) #3
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %95(ptr noundef %39) #3
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %96(ptr noundef %42) #3
  br label %97

97:                                               ; preds = %29, %27, %20, %4, %16, %75
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #0 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 2
  store i64 0, ptr %2, align 8
  %3 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !35
  tail call void @curvemapping_initialize(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 6
  store <2 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000>, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 10
  store i32 1, ptr %7, align 4, !tbaa !58
  %8 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 13
  store i32 0, ptr %8, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !64 {
  %3 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !65 {
  %2 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @curvemapping_free(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %5) #3
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #1 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !68 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #3
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !70 {
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 12
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !71 {
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %0, i64 0, i32 11
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #3
  tail call void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !72 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.4) #3
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !73 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_duplicate_referenced_layer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_ghashutil_strhash_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @weightvg_do_map(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @weightvg_do_mask(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @weightvg_update_vg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!34 = !{!"MOD_weightvgedit.c:copyData"}
!35 = !{!36, !38, i64 184}
!36 = !{!"WeightVGEditModifierData", !37, i64 0, !39, i64 112, !42, i64 176, !42, i64 178, !43, i64 180, !38, i64 184, !43, i64 192, !43, i64 196, !43, i64 200, !39, i64 204, !41, i64 268, !38, i64 272, !38, i64 280, !41, i64 288, !39, i64 292, !41, i64 356}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"short", !39, i64 0}
!43 = !{!"float", !39, i64 0}
!44 = !{!36, !38, i64 272}
!45 = !{!"MOD_weightvgedit.c:applyModifier"}
!46 = !{!36, !42, i64 176}
!47 = !{!48, !38, i64 1104}
!48 = !{!"DerivedMesh", !49, i64 0, !49, i64 200, !49, i64 400, !49, i64 600, !49, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!49 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!50 = !{i8 0, i8 2}
!51 = !{!38, !38, i64 0}
!52 = !{!43, !43, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!36, !42, i64 178}
!56 = !{!36, !43, i64 200}
!57 = !{!36, !38, i64 96}
!58 = !{!36, !41, i64 268}
!59 = !{!36, !41, i64 288}
!60 = !{!36, !38, i64 280}
!61 = !{!36, !43, i64 192}
!62 = !{!36, !43, i64 196}
!63 = !{!"MOD_weightvgedit.c:initData"}
!64 = !{!"MOD_weightvgedit.c:requiredDataMask"}
!65 = !{!"MOD_weightvgedit.c:freeData"}
!66 = !{!"MOD_weightvgedit.c:isDisabled"}
!67 = !{!39, !39, i64 0}
!68 = !{!"MOD_weightvgedit.c:updateDepgraph"}
!69 = !{!"MOD_weightvgedit.c:dependsOnTime"}
!70 = !{!"MOD_weightvgedit.c:foreachObjectLink"}
!71 = !{!"MOD_weightvgedit.c:foreachIDLink"}
!72 = !{!"MOD_weightvgedit.c:foreachTexLink"}
!73 = !{!"MOD_weightvgedit.c:BLI_listbase_is_empty"}
!74 = !{!75, !38, i64 0}
!75 = !{!"ListBase", !38, i64 0, !38, i64 8}
