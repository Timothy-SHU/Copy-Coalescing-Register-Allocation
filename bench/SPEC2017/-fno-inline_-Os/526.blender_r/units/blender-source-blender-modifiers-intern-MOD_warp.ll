; ModuleID = 'blender/source/blender/modifiers/intern/MOD_warp.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_warp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WarpModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, [64 x i8], float, float, i8, i8, [6 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_Warp = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Warp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WarpModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"warpModifier_do tex_co\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Warp Modifier1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Warp Modifier2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Warp Modifier3\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"texture\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call ptr @curvemapping_copy(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %1, i64 0, i32 8
  store ptr %5, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !43 {
  %7 = tail call fastcc i32 @warp_needs_dm(ptr noundef %0) #9, !range !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @warpModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3, i32 noundef %4) #9
  br label %16

10:                                               ; preds = %6
  %11 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #8
  tail call fastcc void @warpModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %3, i32 noundef %4) #9
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 95
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void %15(ptr noundef %11) #8
  br label %16

16:                                               ; preds = %9, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !48 {
  %7 = tail call fastcc i32 @warp_needs_dm(ptr noundef %0) #9, !range !44
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne ptr %3, null
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 poison) #9
  br label %16

12:                                               ; preds = %6
  %13 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %4, i32 noundef %5, i32 poison) #9
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 95
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void %15(ptr noundef %13) #8
  br label %16

16:                                               ; preds = %11, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #0 !PGOFuncName !49 {
  %2 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  store ptr %2, ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 10
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 13
  store i8 3, ptr %6, align 1, !tbaa !52
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 12
  store i8 0, ptr %7, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !55
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @curvemapping_free(ptr noundef %3) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #1 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !60 {
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !59
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %15) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %14, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.2) #8
  br label %17

17:                                               ; preds = %13, %9, %5
  %18 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !55
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %23) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %26, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.3) #8
  br label %27

27:                                               ; preds = %25, %21, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #8
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !63 {
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #8
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #8
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !64 {
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #8
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #8
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #8
  %8 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !65 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @warp_needs_dm(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 9
  %7 = load i8, ptr %6, align 8, !tbaa !67
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 1, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warpModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !68 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca %struct.TexResult, align 8
  %17 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #10
  %18 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 10
  %19 = load float, ptr %18, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  %20 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %157, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %157, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 9
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %28, ptr noundef nonnull %14, ptr noundef nonnull %13) #8
  %29 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  store ptr %33, ptr %29, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27, %32
  %36 = phi ptr [ %33, %32 ], [ %30, %27 ]
  call void @curvemapping_initialize(ptr noundef nonnull %36) #8
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %39 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %38) #8
  %40 = load ptr, ptr %20, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %41) #8
  %42 = load ptr, ptr %24, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %43) #8
  %44 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %7) #8
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9) #8
  %45 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #8
  call void @unit_m4(ptr noundef nonnull %10) #8
  %46 = fcmp olt float %19, 0.000000e+00
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %48 = fneg float %19
  %49 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %49) #9
  %50 = call zeroext i8 @invert_m4(ptr noundef nonnull %11) #8
  call fastcc void @negate_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi float [ %48, %47 ], [ %19, %37 ]
  %53 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %58 = sext i32 %4 to i64
  %59 = mul nsw i64 %58, 12
  %60 = call ptr %57(i64 noundef %59, ptr noundef nonnull @.str) #8
  call void @get_texture_coords(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %60, i32 noundef %4) #8
  %61 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = load ptr, ptr %53, align 8, !tbaa !50
  call void @modifier_init_texture(ptr noundef %62, ptr noundef %63) #8
  br label %64

64:                                               ; preds = %56, %51
  %65 = phi ptr [ %60, %56 ], [ null, %51 ]
  %66 = icmp sgt i32 %4, 0
  br i1 %66, label %67, label %153

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 13
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %70 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 11
  %71 = icmp eq ptr %65, null
  %72 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 6
  %73 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %74 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 12
  %75 = zext nneg i32 %4 to i64
  br label %76

76:                                               ; preds = %67, %148
  %77 = phi i64 [ 0, %67 ], [ %151, %148 ]
  %78 = phi float [ %52, %67 ], [ %150, %148 ]
  %79 = phi float [ 1.000000e+00, %67 ], [ %149, %148 ]
  %80 = getelementptr inbounds [3 x float], ptr %3, i64 %77
  %81 = load i8, ptr %68, align 1, !tbaa !52
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %76
  %84 = call fastcc float @len_v3v3(ptr noundef %80, ptr noundef nonnull %69) #9
  %85 = load float, ptr %70, align 4, !tbaa !72
  %86 = fcmp olt float %84, %85
  br i1 %86, label %87, label %148

87:                                               ; preds = %83
  %88 = fsub float %85, %84
  %89 = fdiv float %88, %85
  %90 = fcmp une float %89, 0.000000e+00
  br i1 %90, label %91, label %148

91:                                               ; preds = %87, %76
  %92 = phi float [ %79, %76 ], [ %89, %87 ]
  %93 = load ptr, ptr %14, align 8, !tbaa !70
  %94 = icmp ne ptr %93, null
  %95 = load i32, ptr %13, align 4
  %96 = icmp ne i32 %95, -1
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.MDeformVert, ptr %93, i64 %77
  %100 = call float @defvert_find_weight(ptr noundef nonnull %99, i32 noundef %95) #8
  %101 = fmul float %52, %100
  %102 = fcmp ugt float %101, 0.000000e+00
  br i1 %102, label %103, label %148

103:                                              ; preds = %98, %91
  %104 = phi float [ %101, %98 ], [ %78, %91 ]
  %105 = load i8, ptr %68, align 1, !tbaa !52
  switch i8 %105, label %126 [
    i8 0, label %106
    i8 1, label %107
    i8 2, label %110
    i8 3, label %112
    i8 4, label %118
    i8 7, label %121
    i8 6, label %120
  ]

106:                                              ; preds = %103
  br label %126

107:                                              ; preds = %103
  %108 = load ptr, ptr %29, align 8, !tbaa !35
  %109 = call float @curvemapping_evaluateF(ptr noundef %108, i32 noundef 0, float noundef %92) #8
  br label %126

110:                                              ; preds = %103
  %111 = fmul float %92, %92
  br label %126

112:                                              ; preds = %103
  %113 = fmul float %92, 3.000000e+00
  %114 = fmul float %92, -2.000000e+00
  %115 = fmul float %92, %114
  %116 = fmul float %92, %115
  %117 = call float @llvm.fmuladd.f32(float %113, float %92, float %116)
  br label %126

118:                                              ; preds = %103
  %119 = call float @sqrtf(float noundef %92) #8
  br label %126

120:                                              ; preds = %103
  br label %126

121:                                              ; preds = %103
  %122 = fneg float %92
  %123 = fmul float %92, %122
  %124 = call float @llvm.fmuladd.f32(float %92, float 2.000000e+00, float %123)
  %125 = call float @sqrtf(float noundef %124) #8
  br label %126

126:                                              ; preds = %103, %121, %120, %118, %112, %110, %107, %106
  %127 = phi float [ %92, %103 ], [ 1.000000e+00, %120 ], [ %125, %121 ], [ %119, %118 ], [ %117, %112 ], [ %111, %110 ], [ %109, %107 ], [ 1.000000e+00, %106 ]
  %128 = fmul float %104, %127
  br i1 %71, label %135, label %129

129:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #10
  store ptr null, ptr %72, align 8, !tbaa !73
  %130 = load ptr, ptr %73, align 8, !tbaa !71
  %131 = load ptr, ptr %53, align 8, !tbaa !50
  %132 = getelementptr inbounds [3 x float], ptr %65, i64 %77
  call void @BKE_texture_get_value(ptr noundef %130, ptr noundef %131, ptr noundef nonnull %132, ptr noundef nonnull %16, i8 noundef zeroext 0) #8
  %133 = load float, ptr %16, align 8, !tbaa !75
  %134 = fmul float %128, %133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #10
  br label %135

135:                                              ; preds = %129, %126
  %136 = phi float [ %134, %129 ], [ %128, %126 ]
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %80) #8
  %137 = fcmp ult float %136, 1.000000e+00
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef %80) #8
  br label %147

139:                                              ; preds = %135
  %140 = fcmp ogt float %136, 0.000000e+00
  br i1 %140, label %141, label %147

141:                                              ; preds = %139
  %142 = load i8, ptr %74, align 8, !tbaa !53
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call void @blend_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %136) #8
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef %80) #8
  br label %147

146:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  call void @mul_v3_m4v3(ptr noundef nonnull %17, ptr noundef nonnull %11, ptr noundef %80) #8
  call void @interp_v3_v3v3(ptr noundef %80, ptr noundef %80, ptr noundef nonnull %17, float noundef %136) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  br label %147

147:                                              ; preds = %139, %146, %145, %138
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %80) #8
  br label %148

148:                                              ; preds = %83, %87, %147, %98
  %149 = phi float [ %92, %98 ], [ %136, %147 ], [ %89, %87 ], [ %84, %83 ]
  %150 = phi float [ %101, %98 ], [ %104, %147 ], [ %78, %87 ], [ %78, %83 ]
  %151 = add nuw nsw i64 %77, 1
  %152 = icmp eq i64 %151, %75
  br i1 %152, label %153, label %76, !llvm.loop !76

153:                                              ; preds = %148, %64
  %154 = icmp eq ptr %65, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %153
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %156(ptr noundef nonnull %65) #8
  br label %157

157:                                              ; preds = %153, %155, %5, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  ret void
}

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !78 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  store float %3, ptr %0, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !79 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !80 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @blend_m4_m4m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !81 {
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = load float, ptr %2, align 4, !tbaa !51
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !82 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #9
  %3 = tail call float @sqrtf(float noundef %2) #8
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !83 {
  %3 = load float, ptr %0, align 4, !tbaa !51
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!"MOD_warp.c:copyData"}
!35 = !{!36, !38, i64 216}
!36 = !{!"WarpModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !39, i64 128, !41, i64 192, !41, i64 196, !38, i64 200, !38, i64 208, !38, i64 216, !39, i64 224, !42, i64 288, !42, i64 292, !39, i64 296, !39, i64 297, !39, i64 298}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!"MOD_warp.c:deformVerts"}
!44 = !{i32 0, i32 2}
!45 = !{!46, !38, i64 1680}
!46 = !{!"DerivedMesh", !47, i64 0, !47, i64 200, !47, i64 400, !47, i64 600, !47, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!47 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!48 = !{!"MOD_warp.c:deformVertsEM"}
!49 = !{!"MOD_warp.c:initData"}
!50 = !{!36, !38, i64 112}
!51 = !{!42, !42, i64 0}
!52 = !{!36, !39, i64 297}
!53 = !{!36, !39, i64 296}
!54 = !{!"MOD_warp.c:requiredDataMask"}
!55 = !{!36, !41, i64 196}
!56 = !{!"MOD_warp.c:freeData"}
!57 = !{!"MOD_warp.c:isDisabled"}
!58 = !{!36, !38, i64 200}
!59 = !{!36, !38, i64 208}
!60 = !{!"MOD_warp.c:updateDepgraph"}
!61 = !{!36, !38, i64 120}
!62 = !{!"MOD_warp.c:dependsOnTime"}
!63 = !{!"MOD_warp.c:foreachObjectLink"}
!64 = !{!"MOD_warp.c:foreachIDLink"}
!65 = !{!"MOD_warp.c:foreachTexLink"}
!66 = !{!"MOD_warp.c:warp_needs_dm"}
!67 = !{!39, !39, i64 0}
!68 = !{!"MOD_warp.c:warpModifier_do"}
!69 = !{!36, !42, i64 288}
!70 = !{!38, !38, i64 0}
!71 = !{!36, !38, i64 96}
!72 = !{!36, !42, i64 292}
!73 = !{!74, !38, i64 24}
!74 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !38, i64 24}
!75 = !{!74, !42, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"MOD_warp.c:copy_v3_v3"}
!79 = !{!"MOD_warp.c:negate_v3_v3"}
!80 = !{!"MOD_warp.c:len_v3v3"}
!81 = !{!"MOD_warp.c:sub_v3_v3v3"}
!82 = !{!"MOD_warp.c:len_v3"}
!83 = !{!"MOD_warp.c:dot_v3v3"}
