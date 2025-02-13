; ModuleID = 'blender/source/blender/modifiers/intern/MOD_wave.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_wave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WaveModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, [64 x i8], i16, i16, float, float, float, float, float, float, float, float, float, float, float }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@modifierType_Wave = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Wave\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WaveModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 320, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"waveModifier_do tex_co\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Wave Modifier\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Wave Modifer\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"texture\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #10
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !44 {
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8, !tbaa !45
  %9 = and i16 %8, 16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #10
  br label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  tail call fastcc void @waveModifier_do(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #11
  br label %34

24:                                               ; preds = %17, %13
  %25 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %12, %11 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  tail call fastcc void @waveModifier_do(ptr noundef nonnull %0, ptr noundef %29, ptr noundef %1, ptr noundef %27, ptr noundef %3, i32 noundef %4) #11
  %30 = icmp eq ptr %27, %2
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 95
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  tail call void %33(ptr noundef %27) #10
  br label %34

34:                                               ; preds = %21, %31, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !51 {
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8, !tbaa !45
  %9 = and i16 %8, 16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #10
  br label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  tail call fastcc void @waveModifier_do(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  br label %34

24:                                               ; preds = %17, %13
  %25 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %12, %11 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  tail call fastcc void @waveModifier_do(ptr noundef nonnull %0, ptr noundef %29, ptr noundef %1, ptr noundef %27, ptr noundef %4, i32 noundef %5) #11
  %30 = icmp eq ptr %27, %3
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 95
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  tail call void %33(ptr noundef %27) #10
  br label %34

34:                                               ; preds = %21, %31, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 !PGOFuncName !52 {
  %2 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 8, !tbaa !45
  %4 = or i16 %3, 238
  store i16 %4, ptr %2, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store <4 x float> <float 5.000000e-01, float 1.500000e+00, float 1.500000e+00, float 2.500000e-01>, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 19
  store float 0.000000e+00, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 16
  store <2 x float> <float 1.000000e+01, float 0.000000e+00>, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  store i8 0, ptr %11, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, i64 32, i64 0
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 0, %2 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i8 %14, 0
  %16 = or disjoint i64 %12, 4
  %17 = select i1 %15, i64 %12, i64 %16
  ret i64 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !58 {
  %2 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !59 {
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str.1) #10
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #10
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str.2) #10
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #3 !PGOFuncName !61 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !62 {
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !63 {
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #10
  tail call void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !64 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @waveModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !65 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %11 = tail call float @BKE_scene_frame_get(ptr noundef %1) #10
  %12 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 13
  %13 = load float, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 14
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = fmul float %13, %15
  %17 = fmul float %13, %16
  %18 = fmul float %15, %17
  %19 = fpext float %18 to double
  %20 = tail call double @exp(double noundef %19) #10
  %21 = fdiv double 1.000000e+00, %20
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 12
  %24 = load float, ptr %23, align 4, !tbaa !68
  %25 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %26 = load i16, ptr %25, align 8, !tbaa !45
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 6
  %29 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 17
  %30 = load float, ptr %29, align 8, !tbaa !69
  %31 = and i32 %27, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !70
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = tail call ptr %39(ptr noundef %3) #10
  br label %41

41:                                               ; preds = %37, %33, %6
  %42 = phi ptr [ %40, %37 ], [ null, %33 ], [ null, %6 ]
  %43 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %48 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %49 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %47, ptr noundef nonnull %48) #10
  %50 = load ptr, ptr %43, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %47, ptr noundef nonnull %51) #10
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %53 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 10
  %54 = load <2 x float>, ptr %52, align 16, !tbaa !54
  store <2 x float> %54, ptr %53, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  br label %55

55:                                               ; preds = %46, %41
  %56 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  call void @modifier_get_vgroup(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %57 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 16
  %58 = load float, ptr %57, align 4, !tbaa !77
  %59 = fcmp oeq float %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store float 1.000000e+01, ptr %57, align 4, !tbaa !77
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi float [ 1.000000e+01, %60 ], [ %58, %55 ]
  %63 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 19
  %64 = load float, ptr %63, align 8, !tbaa !55
  %65 = fcmp une float %64, 0.000000e+00
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 18
  %68 = load float, ptr %67, align 4, !tbaa !78
  %69 = fsub float %11, %68
  %70 = fcmp ogt float %69, %64
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = fsub float %69, %64
  %73 = fcmp ogt float %72, %62
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load float, ptr %23, align 4, !tbaa !68
  %76 = fdiv float %72, %62
  %77 = call float @sqrtf(float noundef %76) #10
  %78 = fsub float 1.000000e+00, %77
  %79 = fmul float %75, %78
  br label %80

80:                                               ; preds = %66, %74, %71, %61
  %81 = phi float [ %24, %61 ], [ %79, %74 ], [ %24, %66 ], [ 0.000000e+00, %71 ]
  %82 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %87 = sext i32 %5 to i64
  %88 = mul nsw i64 %87, 12
  %89 = call ptr %86(i64 noundef %88, ptr noundef nonnull @.str) #10
  call void @get_texture_coords(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %89, i32 noundef %5) #10
  %90 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !80
  %92 = load ptr, ptr %82, align 8, !tbaa !35
  call void @modifier_init_texture(ptr noundef %91, ptr noundef %92) #10
  br label %93

93:                                               ; preds = %85, %80
  %94 = phi ptr [ %89, %85 ], [ null, %80 ]
  %95 = fcmp une float %81, 0.000000e+00
  br i1 %95, label %96, label %244

96:                                               ; preds = %93
  %97 = fcmp une float %30, 0.000000e+00
  %98 = fdiv float 1.000000e+00, %30
  %99 = icmp sgt i32 %5, 0
  br i1 %99, label %100, label %244

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 10
  %102 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 11
  %103 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 18
  %104 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 15
  %105 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 6
  %106 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %107 = icmp eq ptr %42, null
  %108 = zext nneg i32 %5 to i64
  br label %109

109:                                              ; preds = %100, %240
  %110 = phi i64 [ 0, %100 ], [ %242, %240 ]
  %111 = phi float [ 1.000000e+00, %100 ], [ %241, %240 ]
  %112 = getelementptr inbounds [3 x float], ptr %4, i64 %110
  %113 = load float, ptr %112, align 4, !tbaa !54
  %114 = load float, ptr %101, align 4, !tbaa !81
  %115 = fsub float %113, %114
  %116 = getelementptr inbounds float, ptr %112, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !54
  %118 = load float, ptr %102, align 8, !tbaa !82
  %119 = fsub float %117, %118
  %120 = load ptr, ptr %7, align 8, !tbaa !79
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.MDeformVert, ptr %120, i64 %110
  %124 = load i32, ptr %8, align 4, !tbaa !83
  %125 = call float @defvert_find_weight(ptr noundef nonnull %123, i32 noundef %124) #10
  %126 = fcmp oeq float %125, 0.000000e+00
  br i1 %126, label %240, label %127

127:                                              ; preds = %122, %109
  %128 = phi float [ %125, %122 ], [ 1.000000e+00, %109 ]
  switch i32 %28, label %135 [
    i32 6, label %129
    i32 2, label %133
    i32 4, label %134
  ]

129:                                              ; preds = %127
  %130 = fmul float %119, %119
  %131 = call float @llvm.fmuladd.f32(float %115, float %115, float %130)
  %132 = call float @llvm.sqrt.f32(float %131)
  br label %135

133:                                              ; preds = %127
  br label %135

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %127, %134, %133, %129
  %136 = phi float [ 0.000000e+00, %127 ], [ %119, %134 ], [ %115, %133 ], [ %132, %129 ]
  %137 = load float, ptr %103, align 4, !tbaa !78
  %138 = fsub float %11, %137
  %139 = load float, ptr %104, align 8, !tbaa !84
  %140 = fneg float %138
  %141 = call float @llvm.fmuladd.f32(float %140, float %139, float %136)
  %142 = load i16, ptr %25, align 8, !tbaa !45
  %143 = and i16 %142, 8
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %135
  %146 = load float, ptr %12, align 8, !tbaa !66
  %147 = fsub float %141, %146
  %148 = fmul float %146, 2.000000e+00
  %149 = call float @fmodf(float noundef %147, float noundef %148) #10
  %150 = load float, ptr %12, align 8, !tbaa !66
  %151 = fadd float %149, %150
  br label %152

152:                                              ; preds = %145, %135
  %153 = phi float [ %151, %145 ], [ %141, %135 ]
  br i1 %97, label %154, label %170

154:                                              ; preds = %152
  switch i32 %28, label %163 [
    i32 6, label %155
    i32 2, label %159
    i32 4, label %161
  ]

155:                                              ; preds = %154
  %156 = fmul float %119, %119
  %157 = call float @llvm.fmuladd.f32(float %115, float %115, float %156)
  %158 = call float @llvm.sqrt.f32(float %157)
  br label %163

159:                                              ; preds = %154
  %160 = call float @llvm.fabs.f32(float %115)
  br label %163

161:                                              ; preds = %154
  %162 = call float @llvm.fabs.f32(float %119)
  br label %163

163:                                              ; preds = %154, %161, %159, %155
  %164 = phi float [ 0.000000e+00, %154 ], [ %162, %161 ], [ %160, %159 ], [ %158, %155 ]
  %165 = fneg float %164
  %166 = call float @llvm.fmuladd.f32(float %165, float %98, float 1.000000e+00)
  %167 = fcmp olt float %166, 0.000000e+00
  br i1 %167, label %240, label %168

168:                                              ; preds = %163
  %169 = fcmp ogt float %166, 1.000000e+00
  br i1 %169, label %173, label %170

170:                                              ; preds = %168, %152
  %171 = phi float [ %111, %152 ], [ %166, %168 ]
  %172 = fcmp une float %171, 0.000000e+00
  br i1 %172, label %173, label %240

173:                                              ; preds = %168, %170
  %174 = phi float [ %171, %170 ], [ 1.000000e+00, %168 ]
  %175 = load float, ptr %12, align 8, !tbaa !66
  %176 = fneg float %175
  %177 = fcmp ogt float %153, %176
  %178 = fcmp olt float %153, %175
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %240

180:                                              ; preds = %173
  %181 = load float, ptr %14, align 4, !tbaa !67
  %182 = fmul float %153, %181
  %183 = fmul float %182, %182
  %184 = call float @expf(float noundef %183) #10
  %185 = fdiv float 1.000000e+00, %184
  %186 = fsub float %185, %22
  %187 = load ptr, ptr %82, align 8, !tbaa !35
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #12
  store ptr null, ptr %105, align 8, !tbaa !85
  %190 = load ptr, ptr %106, align 8, !tbaa !80
  %191 = getelementptr inbounds [3 x float], ptr %94, i64 %110
  call void @BKE_texture_get_value(ptr noundef %190, ptr noundef nonnull %187, ptr noundef %191, ptr noundef nonnull %10, i8 noundef zeroext 0) #10
  %192 = load float, ptr %10, align 8, !tbaa !87
  %193 = fmul float %186, %192
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #12
  br label %194

194:                                              ; preds = %189, %180
  %195 = phi float [ %193, %189 ], [ %186, %180 ]
  %196 = fmul float %128, %174
  %197 = fmul float %196, %195
  br i1 %107, label %236, label %198

198:                                              ; preds = %194
  %199 = load i16, ptr %25, align 8, !tbaa !45
  %200 = and i16 %199, 32
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %198
  %203 = fmul float %81, %197
  %204 = getelementptr inbounds %struct.MVert, ptr %42, i64 %110, i32 1
  %205 = load i16, ptr %204, align 4, !tbaa !88
  %206 = sitofp i16 %205 to float
  %207 = fmul float %203, %206
  %208 = fdiv float %207, 3.276700e+04
  %209 = load float, ptr %112, align 4, !tbaa !54
  %210 = fadd float %209, %208
  store float %210, ptr %112, align 4, !tbaa !54
  br label %211

211:                                              ; preds = %202, %198
  %212 = and i16 %199, 64
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %211
  %215 = fmul float %81, %197
  %216 = getelementptr inbounds %struct.MVert, ptr %42, i64 %110, i32 1, i64 1
  %217 = load i16, ptr %216, align 2, !tbaa !88
  %218 = sitofp i16 %217 to float
  %219 = fmul float %215, %218
  %220 = fdiv float %219, 3.276700e+04
  %221 = load float, ptr %116, align 4, !tbaa !54
  %222 = fadd float %221, %220
  store float %222, ptr %116, align 4, !tbaa !54
  br label %223

223:                                              ; preds = %214, %211
  %224 = and i16 %199, 128
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %240, label %226

226:                                              ; preds = %223
  %227 = fmul float %81, %197
  %228 = getelementptr inbounds %struct.MVert, ptr %42, i64 %110, i32 1, i64 2
  %229 = load i16, ptr %228, align 4, !tbaa !88
  %230 = sitofp i16 %229 to float
  %231 = fmul float %227, %230
  %232 = fdiv float %231, 3.276700e+04
  %233 = getelementptr inbounds float, ptr %112, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !54
  %235 = fadd float %234, %232
  store float %235, ptr %233, align 4, !tbaa !54
  br label %240

236:                                              ; preds = %194
  %237 = getelementptr inbounds float, ptr %112, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !54
  %239 = call float @llvm.fmuladd.f32(float %81, float %197, float %238)
  store float %239, ptr %237, align 4, !tbaa !54
  br label %240

240:                                              ; preds = %163, %170, %173, %223, %226, %236, %122
  %241 = phi float [ %111, %122 ], [ %174, %236 ], [ %174, %226 ], [ %174, %223 ], [ %174, %173 ], [ %171, %170 ], [ 0.000000e+00, %163 ]
  %242 = add nuw nsw i64 %110, 1
  %243 = icmp eq i64 %242, %108
  br i1 %243, label %244, label %109, !llvm.loop !89

244:                                              ; preds = %240, %96, %93
  %245 = load ptr, ptr %82, align 8, !tbaa !35
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %248(ptr noundef %94) #10
  br label %249

249:                                              ; preds = %247, %244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!34 = !{!"MOD_wave.c:copyData"}
!35 = !{!36, !38, i64 112}
!36 = !{!"WaveModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !39, i64 128, !41, i64 192, !41, i64 196, !38, i64 200, !39, i64 208, !42, i64 272, !42, i64 274, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"short", !39, i64 0}
!43 = !{!"float", !39, i64 0}
!44 = !{!"MOD_wave.c:deformVerts"}
!45 = !{!36, !42, i64 272}
!46 = !{!39, !39, i64 0}
!47 = !{!37, !38, i64 96}
!48 = !{!49, !38, i64 1680}
!49 = !{!"DerivedMesh", !50, i64 0, !50, i64 200, !50, i64 400, !50, i64 600, !50, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!50 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!51 = !{!"MOD_wave.c:deformVertsEM"}
!52 = !{!"MOD_wave.c:initData"}
!53 = !{!36, !38, i64 200}
!54 = !{!43, !43, i64 0}
!55 = !{!36, !43, i64 312}
!56 = !{!36, !41, i64 196}
!57 = !{!"MOD_wave.c:requiredDataMask"}
!58 = !{!"MOD_wave.c:freeData"}
!59 = !{!"MOD_wave.c:updateDepgraph"}
!60 = !{!36, !38, i64 120}
!61 = !{!"MOD_wave.c:dependsOnTime"}
!62 = !{!"MOD_wave.c:foreachObjectLink"}
!63 = !{!"MOD_wave.c:foreachIDLink"}
!64 = !{!"MOD_wave.c:foreachTexLink"}
!65 = !{!"MOD_wave.c:waveModifier_do"}
!66 = !{!36, !43, i64 288}
!67 = !{!36, !43, i64 292}
!68 = !{!36, !43, i64 284}
!69 = !{!36, !43, i64 304}
!70 = !{!71, !42, i64 136}
!71 = !{!"Object", !72, i64 0, !38, i64 120, !38, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !73, i64 312, !38, i64 360, !74, i64 368, !74, i64 384, !74, i64 400, !74, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !43, i64 616, !43, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !39, i64 1042, !39, i64 1043, !42, i64 1044, !39, i64 1046, !39, i64 1047, !43, i64 1048, !43, i64 1052, !74, i64 1056, !74, i64 1072, !74, i64 1088, !74, i64 1104, !43, i64 1120, !42, i64 1124, !42, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !42, i64 1162, !39, i64 1164, !74, i64 1176, !74, i64 1192, !74, i64 1208, !74, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !42, i64 1266, !43, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !75, i64 1304, !75, i64 1312, !41, i64 1320, !41, i64 1324, !74, i64 1328, !74, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !74, i64 1400, !38, i64 1416}
!72 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!73 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!74 = !{!"ListBase", !38, i64 0, !38, i64 8}
!75 = !{!"long", !39, i64 0}
!76 = !{!49, !38, i64 1168}
!77 = !{!36, !43, i64 300}
!78 = !{!36, !43, i64 308}
!79 = !{!38, !38, i64 0}
!80 = !{!36, !38, i64 96}
!81 = !{!36, !43, i64 276}
!82 = !{!36, !43, i64 280}
!83 = !{!41, !41, i64 0}
!84 = !{!36, !43, i64 296}
!85 = !{!86, !38, i64 24}
!86 = !{!"TexResult", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !41, i64 20, !38, i64 24}
!87 = !{!86, !43, i64 0}
!88 = !{!42, !42, i64 0}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
