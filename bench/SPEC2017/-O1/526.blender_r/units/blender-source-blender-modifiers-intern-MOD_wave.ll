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

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = and i16 %8, 16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #9
  br label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 8, !tbaa !44
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13
  %22 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %23

23:                                               ; preds = %17, %21, %11
  %24 = phi ptr [ %12, %11 ], [ %22, %21 ], [ %2, %17 ]
  %25 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  tail call fastcc void @waveModifier_do(ptr noundef %0, ptr noundef %26, ptr noundef %1, ptr noundef %24, ptr noundef %3, i32 noundef %4)
  %27 = icmp eq ptr %24, %2
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %24, i64 0, i32 95
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  tail call void %30(ptr noundef %24) #9
  br label %31

31:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = and i16 %8, 16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #9
  br label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  %19 = load i8, ptr %18, align 8, !tbaa !44
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13
  %22 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %23

23:                                               ; preds = %17, %21, %11
  %24 = phi ptr [ %12, %11 ], [ %22, %21 ], [ %3, %17 ]
  %25 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  tail call fastcc void @waveModifier_do(ptr noundef %0, ptr noundef %26, ptr noundef %1, ptr noundef %24, ptr noundef %4, i32 noundef %5)
  %27 = icmp eq ptr %24, %3
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %24, i64 0, i32 95
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  tail call void %30(ptr noundef %24) #9
  br label %31

31:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 8, !tbaa !43
  %4 = or i16 %3, 238
  store i16 %4, ptr %2, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store float 5.000000e-01, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 13
  store float 1.500000e+00, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 15
  store float 2.500000e-01, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 14
  store float 1.500000e+00, ptr %10, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 19
  store float 0.000000e+00, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 16
  store float 1.000000e+01, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 17
  store float 0.000000e+00, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 5
  store i32 0, ptr %14, align 4, !tbaa !57
  %15 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  store i8 0, ptr %15, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, i64 32, i64 0
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 0, %2 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.WaveModifierData, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i8 %14, 0
  %16 = or disjoint i64 %12, 4
  %17 = select i1 %15, i64 %12, i64 %16
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #9
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str.1) #9
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #9
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 8, ptr noundef nonnull @.str.2) #9
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #3 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #9
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #9
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #9
  %7 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @id_us_plus(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @waveModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %11 = tail call float @BKE_scene_frame_get(ptr noundef %1) #9
  %12 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 13
  %13 = load float, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 14
  %15 = load float, ptr %14, align 4, !tbaa !53
  %16 = fmul float %13, %15
  %17 = fmul float %13, %16
  %18 = fmul float %15, %17
  %19 = fpext float %18 to double
  %20 = tail call double @exp(double noundef %19) #9
  %21 = fdiv double 1.000000e+00, %20
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 12
  %24 = load float, ptr %23, align 4, !tbaa !50
  %25 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 8
  %26 = load i16, ptr %25, align 8, !tbaa !43
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 6
  %29 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 17
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = and i32 %27, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !59
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = tail call ptr %39(ptr noundef %3) #9
  br label %41

41:                                               ; preds = %37, %33, %6
  %42 = phi ptr [ %40, %37 ], [ null, %33 ], [ null, %6 ]
  %43 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %48 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %49 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %47, ptr noundef nonnull %48) #9
  %50 = load ptr, ptr %43, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %47, ptr noundef nonnull %51) #9
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %53 = load float, ptr %52, align 16, !tbaa !66
  %54 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 10
  store float %53, ptr %54, align 4, !tbaa !67
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !66
  %57 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 11
  store float %56, ptr %57, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  br label %58

58:                                               ; preds = %46, %41
  %59 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 7
  call void @modifier_get_vgroup(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %59, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %60 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 16
  %61 = load float, ptr %60, align 4, !tbaa !55
  %62 = fcmp oeq float %61, 0.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store float 1.000000e+01, ptr %60, align 4, !tbaa !55
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 19
  %66 = load float, ptr %65, align 8, !tbaa !54
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 18
  %70 = load float, ptr %69, align 4, !tbaa !69
  %71 = fsub float %11, %70
  %72 = fcmp ogt float %71, %66
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = fsub float %71, %66
  %75 = load float, ptr %60, align 4, !tbaa !55
  %76 = fcmp ogt float %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load float, ptr %23, align 4, !tbaa !50
  %79 = fdiv float %74, %75
  %80 = call float @sqrtf(float noundef %79) #9
  %81 = fsub float 1.000000e+00, %80
  %82 = fmul float %78, %81
  br label %83

83:                                               ; preds = %68, %77, %73, %64
  %84 = phi float [ %24, %64 ], [ %82, %77 ], [ %24, %68 ], [ 0.000000e+00, %73 ]
  %85 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %90 = sext i32 %5 to i64
  %91 = mul nsw i64 %90, 12
  %92 = call ptr %89(i64 noundef %91, ptr noundef nonnull @.str) #9
  call void @get_texture_coords(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %92, i32 noundef %5) #9
  %93 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !71
  %95 = load ptr, ptr %85, align 8, !tbaa !34
  call void @modifier_init_texture(ptr noundef %94, ptr noundef %95) #9
  br label %96

96:                                               ; preds = %88, %83
  %97 = phi ptr [ %92, %88 ], [ null, %83 ]
  %98 = fcmp une float %84, 0.000000e+00
  br i1 %98, label %99, label %248

99:                                               ; preds = %96
  %100 = fcmp une float %30, 0.000000e+00
  %101 = fdiv float 1.000000e+00, %30
  %102 = select i1 %100, float %101, float 1.000000e+00
  %103 = icmp sgt i32 %5, 0
  br i1 %103, label %104, label %248

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 10
  %106 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 11
  %107 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 18
  %108 = getelementptr inbounds %struct.WaveModifierData, ptr %0, i64 0, i32 15
  %109 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 6
  %110 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %111 = icmp eq ptr %42, null
  %112 = zext nneg i32 %5 to i64
  br label %113

113:                                              ; preds = %104, %244
  %114 = phi i64 [ 0, %104 ], [ %246, %244 ]
  %115 = phi float [ 1.000000e+00, %104 ], [ %245, %244 ]
  %116 = getelementptr inbounds [3 x float], ptr %4, i64 %114
  %117 = load float, ptr %116, align 4, !tbaa !66
  %118 = load float, ptr %105, align 4, !tbaa !67
  %119 = fsub float %117, %118
  %120 = getelementptr inbounds float, ptr %116, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !66
  %122 = load float, ptr %106, align 8, !tbaa !68
  %123 = fsub float %121, %122
  %124 = load ptr, ptr %7, align 8, !tbaa !70
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.MDeformVert, ptr %124, i64 %114
  %128 = load i32, ptr %8, align 4, !tbaa !72
  %129 = call float @defvert_find_weight(ptr noundef nonnull %127, i32 noundef %128) #9
  %130 = fcmp oeq float %129, 0.000000e+00
  br i1 %130, label %244, label %131

131:                                              ; preds = %126, %113
  %132 = phi float [ %129, %126 ], [ 1.000000e+00, %113 ]
  switch i32 %28, label %139 [
    i32 6, label %133
    i32 2, label %137
    i32 4, label %138
  ]

133:                                              ; preds = %131
  %134 = fmul float %123, %123
  %135 = call float @llvm.fmuladd.f32(float %119, float %119, float %134)
  %136 = call float @sqrtf(float noundef %135) #9
  br label %139

137:                                              ; preds = %131
  br label %139

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %131, %138, %137, %133
  %140 = phi float [ 0.000000e+00, %131 ], [ %123, %138 ], [ %119, %137 ], [ %136, %133 ]
  %141 = load float, ptr %107, align 4, !tbaa !69
  %142 = fsub float %11, %141
  %143 = load float, ptr %108, align 8, !tbaa !52
  %144 = fneg float %142
  %145 = call float @llvm.fmuladd.f32(float %144, float %143, float %140)
  %146 = load i16, ptr %25, align 8, !tbaa !43
  %147 = and i16 %146, 8
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %139
  %150 = load float, ptr %12, align 8, !tbaa !51
  %151 = fsub float %145, %150
  %152 = fmul float %150, 2.000000e+00
  %153 = call float @fmodf(float noundef %151, float noundef %152) #9
  %154 = load float, ptr %12, align 8, !tbaa !51
  %155 = fadd float %153, %154
  br label %156

156:                                              ; preds = %149, %139
  %157 = phi float [ %155, %149 ], [ %145, %139 ]
  br i1 %100, label %158, label %175

158:                                              ; preds = %156
  switch i32 %28, label %167 [
    i32 6, label %159
    i32 2, label %163
    i32 4, label %165
  ]

159:                                              ; preds = %158
  %160 = fmul float %123, %123
  %161 = call float @llvm.fmuladd.f32(float %119, float %119, float %160)
  %162 = call float @sqrtf(float noundef %161) #9
  br label %167

163:                                              ; preds = %158
  %164 = call float @llvm.fabs.f32(float %119)
  br label %167

165:                                              ; preds = %158
  %166 = call float @llvm.fabs.f32(float %123)
  br label %167

167:                                              ; preds = %158, %165, %163, %159
  %168 = phi float [ 0.000000e+00, %158 ], [ %166, %165 ], [ %164, %163 ], [ %162, %159 ]
  %169 = fneg float %168
  %170 = call float @llvm.fmuladd.f32(float %169, float %102, float 1.000000e+00)
  %171 = fcmp olt float %170, 0.000000e+00
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = fcmp ogt float %170, 1.000000e+00
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  br label %175

175:                                              ; preds = %174, %172, %167, %156
  %176 = phi float [ %115, %156 ], [ 1.000000e+00, %174 ], [ %170, %172 ], [ 0.000000e+00, %167 ]
  %177 = fcmp une float %176, 0.000000e+00
  br i1 %177, label %178, label %244

178:                                              ; preds = %175
  %179 = load float, ptr %12, align 8, !tbaa !51
  %180 = fneg float %179
  %181 = fcmp ogt float %157, %180
  %182 = fcmp olt float %157, %179
  %183 = and i1 %181, %182
  br i1 %183, label %184, label %244

184:                                              ; preds = %178
  %185 = load float, ptr %14, align 4, !tbaa !53
  %186 = fmul float %157, %185
  %187 = fmul float %186, %186
  %188 = call float @expf(float noundef %187) #9
  %189 = fdiv float 1.000000e+00, %188
  %190 = fsub float %189, %22
  %191 = load ptr, ptr %85, align 8, !tbaa !34
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  store ptr null, ptr %109, align 8, !tbaa !73
  %194 = load ptr, ptr %110, align 8, !tbaa !71
  %195 = getelementptr inbounds [3 x float], ptr %97, i64 %114
  call void @BKE_texture_get_value(ptr noundef %194, ptr noundef nonnull %191, ptr noundef %195, ptr noundef nonnull %10, i8 noundef zeroext 0) #9
  %196 = load float, ptr %10, align 8, !tbaa !75
  %197 = fmul float %190, %196
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  br label %198

198:                                              ; preds = %193, %184
  %199 = phi float [ %197, %193 ], [ %190, %184 ]
  %200 = fmul float %132, %176
  %201 = fmul float %200, %199
  br i1 %111, label %240, label %202

202:                                              ; preds = %198
  %203 = load i16, ptr %25, align 8, !tbaa !43
  %204 = and i16 %203, 32
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %202
  %207 = fmul float %84, %201
  %208 = getelementptr inbounds %struct.MVert, ptr %42, i64 %114, i32 1
  %209 = load i16, ptr %208, align 4, !tbaa !76
  %210 = sitofp i16 %209 to float
  %211 = fmul float %207, %210
  %212 = fdiv float %211, 3.276700e+04
  %213 = load float, ptr %116, align 4, !tbaa !66
  %214 = fadd float %213, %212
  store float %214, ptr %116, align 4, !tbaa !66
  br label %215

215:                                              ; preds = %206, %202
  %216 = and i16 %203, 64
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %215
  %219 = fmul float %84, %201
  %220 = getelementptr inbounds %struct.MVert, ptr %42, i64 %114, i32 1, i64 1
  %221 = load i16, ptr %220, align 2, !tbaa !76
  %222 = sitofp i16 %221 to float
  %223 = fmul float %219, %222
  %224 = fdiv float %223, 3.276700e+04
  %225 = load float, ptr %120, align 4, !tbaa !66
  %226 = fadd float %225, %224
  store float %226, ptr %120, align 4, !tbaa !66
  br label %227

227:                                              ; preds = %218, %215
  %228 = and i16 %203, 128
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %244, label %230

230:                                              ; preds = %227
  %231 = fmul float %84, %201
  %232 = getelementptr inbounds %struct.MVert, ptr %42, i64 %114, i32 1, i64 2
  %233 = load i16, ptr %232, align 4, !tbaa !76
  %234 = sitofp i16 %233 to float
  %235 = fmul float %231, %234
  %236 = fdiv float %235, 3.276700e+04
  %237 = getelementptr inbounds float, ptr %116, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !66
  %239 = fadd float %238, %236
  store float %239, ptr %237, align 4, !tbaa !66
  br label %244

240:                                              ; preds = %198
  %241 = getelementptr inbounds float, ptr %116, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !66
  %243 = call float @llvm.fmuladd.f32(float %84, float %201, float %242)
  store float %243, ptr %241, align 4, !tbaa !66
  br label %244

244:                                              ; preds = %175, %178, %227, %230, %240, %126
  %245 = phi float [ %115, %126 ], [ %176, %240 ], [ %176, %230 ], [ %176, %227 ], [ %176, %178 ], [ %176, %175 ]
  %246 = add nuw nsw i64 %114, 1
  %247 = icmp eq i64 %246, %112
  br i1 %247, label %248, label %113, !llvm.loop !77

248:                                              ; preds = %244, %99, %96
  %249 = load ptr, ptr %85, align 8, !tbaa !34
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %252(ptr noundef %97) #9
  br label %253

253:                                              ; preds = %251, %248
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void
}

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #5

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #6

declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @id_us_min(ptr noundef) local_unnamed_addr #5

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!34 = !{!35, !37, i64 112}
!35 = !{!"WaveModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !38, i64 128, !40, i64 192, !40, i64 196, !37, i64 200, !38, i64 208, !41, i64 272, !41, i64 274, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!35, !41, i64 272}
!44 = !{!38, !38, i64 0}
!45 = !{!36, !37, i64 96}
!46 = !{!47, !37, i64 1680}
!47 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!48 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!49 = !{!35, !37, i64 200}
!50 = !{!35, !42, i64 284}
!51 = !{!35, !42, i64 288}
!52 = !{!35, !42, i64 296}
!53 = !{!35, !42, i64 292}
!54 = !{!35, !42, i64 312}
!55 = !{!35, !42, i64 300}
!56 = !{!35, !42, i64 304}
!57 = !{!35, !40, i64 196}
!58 = !{!35, !37, i64 120}
!59 = !{!60, !41, i64 136}
!60 = !{!"Object", !61, i64 0, !37, i64 120, !37, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !62, i64 312, !37, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !38, i64 1042, !38, i64 1043, !41, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !41, i64 1162, !38, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !41, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !64, i64 1304, !64, i64 1312, !40, i64 1320, !40, i64 1324, !63, i64 1328, !63, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !63, i64 1400, !37, i64 1416}
!61 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!62 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!63 = !{!"ListBase", !37, i64 0, !37, i64 8}
!64 = !{!"long", !38, i64 0}
!65 = !{!47, !37, i64 1168}
!66 = !{!42, !42, i64 0}
!67 = !{!35, !42, i64 276}
!68 = !{!35, !42, i64 280}
!69 = !{!35, !42, i64 308}
!70 = !{!37, !37, i64 0}
!71 = !{!35, !37, i64 96}
!72 = !{!40, !40, i64 0}
!73 = !{!74, !37, i64 24}
!74 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !40, i64 20, !37, i64 24}
!75 = !{!74, !42, i64 0}
!76 = !{!41, !41, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
