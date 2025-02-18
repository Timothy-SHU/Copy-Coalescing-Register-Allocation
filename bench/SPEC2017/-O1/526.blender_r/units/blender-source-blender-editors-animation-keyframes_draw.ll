; ModuleID = 'blender/source/blender/editors/animation/keyframes_draw.c'
source_filename = "blender/source/blender/editors/animation/keyframes_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.ActKeyBlock = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, float, float, i16, i16 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }

@draw_keyframe_shape.displist1 = internal unnamed_addr global i32 0, align 4
@draw_keyframe_shape.displist2 = internal unnamed_addr global i32 0, align 4
@_unit_diamond_shape = internal constant [4 x [2 x float]] [[2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00]], align 16
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"ActKeyColumn\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ActKeyBlock\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ActKeyColumnGPF\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext i16 @compare_ak_cfraPtr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !38
  %6 = fcmp ogt float %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = fsub float %3, %5
  %9 = fcmp ugt float %8, 0x3F847AE140000000
  br i1 %9, label %13, label %17

10:                                               ; preds = %2
  %11 = fsub float %5, %3
  %12 = fcmp ugt float %11, 0x3F847AE140000000
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %7
  %14 = fcmp olt float %3, %5
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = zext i1 %6 to i16
  br label %17

17:                                               ; preds = %15, %13, %7, %10
  %18 = phi i16 [ 0, %10 ], [ 0, %7 ], [ -1, %13 ], [ %16, %15 ]
  ret i16 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @compare_ab_cfraPtr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.ActKeyBlock, ptr %0, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !42
  %6 = fcmp olt float %3, %5
  %7 = fcmp ogt float %3, %5
  %8 = zext i1 %7 to i16
  %9 = select i1 %6, i16 -1, i16 %8
  ret i16 %9
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @actkeyblock_is_valid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ActKeyBlock, ptr %0, i64 0, i32 9
  %6 = tail call ptr @BLI_dlrbTree_search_exact(ptr noundef %1, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ActKeyColumn, ptr %6, i64 0, i32 10
  %10 = load i16, ptr %9, align 2, !tbaa !44
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi i16 [ %10, %8 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.ActKeyBlock, ptr %0, i64 0, i32 10
  %14 = tail call ptr @BLI_dlrbTree_search_exact(ptr noundef %1, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ActKeyColumn, ptr %14, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !44
  br label %19

19:                                               ; preds = %11, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %11 ]
  %21 = icmp ne i16 %12, 0
  %22 = icmp ne i16 %20, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = tail call i16 @llvm.smin.i16(i16 %12, i16 %20)
  %26 = getelementptr inbounds %struct.ActKeyBlock, ptr %0, i64 0, i32 12
  %27 = load i16, ptr %26, align 2, !tbaa !45
  %28 = icmp sge i16 %27, %25
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %19, %2, %24
  %31 = phi i8 [ %29, %24 ], [ 0, %2 ], [ 0, %19 ]
  ret i8 %31
}

declare ptr @BLI_dlrbTree_search_exact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_keyframe_shape(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, float noundef %7) local_unnamed_addr #2 {
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = load i32, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !46
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %14, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !46
  tail call void @glNewList(i32 noundef %14, i32 noundef 4864) #9
  tail call void @glBegin(i32 noundef 2) #9
  tail call void @glVertex2fv(ptr noundef nonnull @_unit_diamond_shape) #9
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @_unit_diamond_shape, i64 0, i64 1)) #9
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @_unit_diamond_shape, i64 0, i64 2)) #9
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @_unit_diamond_shape, i64 0, i64 3)) #9
  tail call void @glEnd() #9
  tail call void @glEndList() #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @glGenLists(i32 noundef 1) #9
  store i32 %19, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !46
  tail call void @glNewList(i32 noundef %19, i32 noundef 4864) #9
  tail call void @glBegin(i32 noundef 7) #9
  tail call void @glVertex2fv(ptr noundef nonnull @_unit_diamond_shape) #9
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @_unit_diamond_shape, i64 0, i64 1)) #9
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @_unit_diamond_shape, i64 0, i64 2)) #9
  tail call void @glVertex2fv(ptr noundef nonnull getelementptr inbounds ([4 x [2 x float]], ptr @_unit_diamond_shape, i64 0, i64 3)) #9
  tail call void @glEnd() #9
  tail call void @glEndList() #9
  br label %20

20:                                               ; preds = %18, %15
  %21 = sitofp i16 %5 to float
  %22 = tail call float @llvm.fmuladd.f32(float %21, float -5.000000e-01, float %3)
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #9
  %23 = fdiv float 1.000000e+00, %2
  %24 = fmul float %23, %22
  tail call void @glScalef(float noundef %24, float noundef %22, float noundef 1.000000e+00) #9
  tail call void @glEnable(i32 noundef 2848) #9
  %25 = add i16 %6, -1
  %26 = icmp ult i16 %25, 2
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  %28 = icmp eq i16 %4, 0
  switch i16 %5, label %35 [
    i16 2, label %29
    i16 1, label %31
    i16 3, label %33
  ]

29:                                               ; preds = %27
  %30 = select i1 %28, i32 83, i32 84
  br label %37

31:                                               ; preds = %27
  %32 = select i1 %28, i32 81, i32 82
  br label %37

33:                                               ; preds = %27
  %34 = select i1 %28, i32 85, i32 86
  br label %37

35:                                               ; preds = %27
  %36 = select i1 %28, i32 79, i32 80
  br label %37

37:                                               ; preds = %35, %33, %31, %29
  %38 = phi i32 [ %30, %29 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ]
  call void @UI_GetThemeColor4fv(i32 noundef %38, ptr noundef nonnull %9) #9
  %39 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fmul float %40, %7
  store float %41, ptr %39, align 4, !tbaa !34
  call void @glColor4fv(ptr noundef nonnull %9) #9
  %42 = load i32, ptr @draw_keyframe_shape.displist2, align 4, !tbaa !46
  call void @glCallList(i32 noundef %42) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  br label %43

43:                                               ; preds = %20, %37
  %44 = and i16 %6, -3
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %47 = icmp eq i16 %4, 0
  %48 = select i1 %47, i32 87, i32 88
  call void @UI_GetThemeColor4fv(i32 noundef %48, ptr noundef nonnull %10) #9
  %49 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fmul float %50, %7
  store float %51, ptr %49, align 4, !tbaa !34
  call void @glColor4fv(ptr noundef nonnull %10) #9
  %52 = load i32, ptr @draw_keyframe_shape.displist1, align 4, !tbaa !46
  call void @glCallList(i32 noundef %52) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  br label %53

53:                                               ; preds = %43, %46
  call void @glDisable(i32 noundef 2848) #9
  %54 = fdiv float %2, %22
  %55 = fdiv float 1.000000e+00, %22
  call void @glScalef(float noundef %54, float noundef %55, float noundef 1.000000e+00) #9
  %56 = fneg float %0
  %57 = fneg float %1
  call void @glTranslatef(float noundef %56, float noundef %57, float noundef 0.000000e+00) #9
  ret void
}

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #3

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @glEndList() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare void @UI_GetThemeColor4fv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @glColor4fv(ptr noundef) local_unnamed_addr #3

declare void @glCallList(i32 noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_summary_channel(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.DLRBT_Tree, align 8
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %4) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @summary_to_keylist(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %4) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %2, i16 noundef signext 0)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %4) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @summary_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = sext i16 %9 to i32
  %11 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %7, i32 noundef %10) #9
  %12 = load ptr, ptr %4, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %6
  %15 = icmp ne ptr %1, null
  %16 = icmp ne ptr %1, null
  br label %17

17:                                               ; preds = %14, %54
  %18 = phi ptr [ %12, %14 ], [ %55, %54 ]
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 7
  %20 = load i16, ptr %19, align 2, !tbaa !52
  switch i16 %20, label %54 [
    i16 1, label %21
    i16 3, label %26
    i16 2, label %40
  ]

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %23, ptr noundef %25, ptr noundef %1, ptr noundef %2)
  br label %54

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = icmp ne ptr %28, null
  %30 = and i1 %16, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.MaskLayer, ptr %28, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %38, %35 ], [ %33, %31 ]
  %37 = call ptr @BLI_dlrbTree_add(ptr noundef nonnull %1, ptr noundef nonnull @compare_ak_masklayshape, ptr noundef nonnull @nalloc_ak_masklayshape, ptr noundef nonnull @nupdate_ak_masklayshape, ptr noundef nonnull %36) #9
  %38 = load ptr, ptr %36, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %35, !llvm.loop !56

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %18, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = icmp ne ptr %42, null
  %44 = and i1 %15, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.bGPDlayer, ptr %42, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45, %49
  %50 = phi ptr [ %52, %49 ], [ %47, %45 ]
  %51 = call ptr @BLI_dlrbTree_add(ptr noundef nonnull %1, ptr noundef nonnull @compare_ak_gpframe, ptr noundef nonnull @nalloc_ak_gpframe, ptr noundef nonnull @nupdate_ak_gpframe, ptr noundef nonnull %50) #9
  %52 = load ptr, ptr %50, align 8, !tbaa !51
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !llvm.loop !59

54:                                               ; preds = %49, %35, %45, %31, %40, %26, %21, %17
  %55 = load ptr, ptr %18, align 8, !tbaa !51
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %17, !llvm.loop !60

57:                                               ; preds = %54, %6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %58

58:                                               ; preds = %57, %3
  ret void
}

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_keylist(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, float noundef %3, i16 noundef signext %4) unnamed_addr #2 {
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 2.500000e-01
  tail call void @glEnable(i32 noundef 3042) #9
  call void @UI_view2d_scale_get(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #9
  %12 = icmp eq i16 %4, 0
  %13 = select i1 %12, float 1.000000e+00, float 2.500000e-01
  %14 = icmp eq ptr %2, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  call void @UI_GetThemeColor4fv(i32 noundef 78, ptr noundef nonnull %7) #9
  call void @UI_GetThemeColor4fv(i32 noundef 77, ptr noundef nonnull %8) #9
  %16 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %13, %17
  store float %18, ptr %16, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %13, %20
  store float %21, ptr %19, align 4, !tbaa !34
  %22 = load ptr, ptr %2, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %69, label %24

24:                                               ; preds = %15
  %25 = fsub float %3, %11
  %26 = fadd float %11, %3
  br label %27

27:                                               ; preds = %24, %66
  %28 = phi ptr [ %22, %24 ], [ %67, %66 ]
  %29 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 9
  %30 = call ptr @BLI_dlrbTree_search_exact(ptr noundef %1, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %29) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ActKeyColumn, ptr %30, i64 0, i32 10
  %34 = load i16, ptr %33, align 2, !tbaa !44
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i16 [ %34, %32 ], [ 0, %27 ]
  %37 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 10
  %38 = call ptr @BLI_dlrbTree_search_exact(ptr noundef %1, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %37) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ActKeyColumn, ptr %38, i64 0, i32 10
  %42 = load i16, ptr %41, align 2, !tbaa !44
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i16 [ %42, %40 ], [ 0, %35 ]
  %45 = icmp ne i16 %36, 0
  %46 = icmp ne i16 %44, 0
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = call i16 @llvm.smin.i16(i16 %36, i16 %44)
  %50 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 12
  %51 = load i16, ptr %50, align 2, !tbaa !45
  %52 = icmp sge i16 %51, %49
  %53 = zext i1 %52 to i8
  br label %54

54:                                               ; preds = %43, %48
  %55 = phi i8 [ %53, %48 ], [ 0, %43 ]
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 6
  %59 = load i8, ptr %58, align 1, !tbaa !66
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, ptr %8, ptr %7
  call void @glColor4fv(ptr noundef nonnull %61) #9
  %62 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 9
  %63 = load float, ptr %62, align 8, !tbaa !42
  %64 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 10
  %65 = load float, ptr %64, align 4, !tbaa !67
  call void @glRectf(float noundef %63, float noundef %25, float noundef %65, float noundef %26) #9
  br label %66

66:                                               ; preds = %54, %57
  %67 = load ptr, ptr %28, align 8, !tbaa !51
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %27, !llvm.loop !68

69:                                               ; preds = %66, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %70

70:                                               ; preds = %69, %5
  %71 = icmp eq ptr %1, null
  br i1 %71, label %103, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %1, align 8, !tbaa !51
  %74 = icmp eq ptr %73, null
  br i1 %74, label %103, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %77 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  br label %78

78:                                               ; preds = %75, %100
  %79 = phi ptr [ %73, %75 ], [ %101, %100 ]
  %80 = load float, ptr %76, align 8, !tbaa !69
  %81 = load float, ptr %77, align 4, !tbaa !73
  %82 = fcmp olt float %80, %81
  %83 = getelementptr inbounds %struct.ActKeyColumn, ptr %79, i64 0, i32 8
  %84 = load float, ptr %83, align 4, !tbaa !38
  %85 = select i1 %82, float %80, float %81
  %86 = select i1 %82, float %81, float %80
  %87 = fcmp ole float %85, %84
  %88 = fcmp ole float %84, %86
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.ActKeyColumn, ptr %79, i64 0, i32 8
  %92 = load float, ptr %91, align 4, !tbaa !38
  %93 = load float, ptr %6, align 4, !tbaa !34
  %94 = getelementptr inbounds %struct.ActKeyColumn, ptr %79, i64 0, i32 7
  %95 = load i16, ptr %94, align 2, !tbaa !74
  %96 = and i16 %95, 1
  %97 = getelementptr inbounds %struct.ActKeyColumn, ptr %79, i64 0, i32 6
  %98 = load i8, ptr %97, align 1, !tbaa !75
  %99 = zext i8 %98 to i16
  call void @draw_keyframe_shape(float noundef %92, float noundef %3, float noundef %93, float noundef %11, i16 noundef signext %96, i16 noundef signext %99, i16 noundef signext 2, float noundef %13)
  br label %100

100:                                              ; preds = %78, %90
  %101 = load ptr, ptr %79, align 8, !tbaa !51
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %78, !llvm.loop !76

103:                                              ; preds = %100, %72, %70
  call void @glDisable(i32 noundef 3042) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret void
}

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_scene_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimListElem, align 8
  %8 = alloca %struct.DLRBT_Tree, align 8
  %9 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %8) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %10 = icmp eq ptr %2, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 4, ptr %12, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %2, ptr %13, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %2, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %16, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  store ptr %1, ptr %18, align 8, !tbaa !98
  store ptr %7, ptr %5, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  store i16 8, ptr %19, align 8, !tbaa !50
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 8) #9
  %21 = load ptr, ptr %6, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %11, %23
  %24 = phi ptr [ %29, %23 ], [ %21, %11 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %26, ptr noundef %28, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %29 = load ptr, ptr %24, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23, !llvm.loop !99

31:                                               ; preds = %23, %11
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  br label %32

32:                                               ; preds = %4, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %8) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %9) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %3, i16 noundef signext 0)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %8) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @scene_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimListElem, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %8 = icmp eq ptr %1, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 4, ptr %10, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %1, ptr %12, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %14, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  store ptr %0, ptr %16, align 8, !tbaa !98
  store ptr %7, ptr %5, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  store i16 8, ptr %17, align 8, !tbaa !50
  %18 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 8) #9
  %19 = load ptr, ptr %6, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %9, %21
  %22 = phi ptr [ %27, %21 ], [ %19, %9 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %24, ptr noundef %26, ptr noundef %2, ptr noundef %3)
  %27 = load ptr, ptr %22, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21, !llvm.loop !99

29:                                               ; preds = %21, %9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  br label %30

30:                                               ; preds = %4, %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_object_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @ob_to_keylist(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext 0)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ob_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimListElem, align 8
  %8 = alloca %struct.Base, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  %9 = icmp eq ptr %1, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  store ptr %1, ptr %11, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 5, ptr %12, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %8, ptr %13, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %1, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %16, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  store ptr %0, ptr %18, align 8, !tbaa !98
  store ptr %7, ptr %5, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  store i16 8, ptr %19, align 8, !tbaa !50
  %20 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 8) #9
  %21 = load ptr, ptr %6, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %10, %23
  %24 = phi ptr [ %29, %23 ], [ %21, %10 ]
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %26, ptr noundef %28, ptr noundef %2, ptr noundef %3)
  %29 = load ptr, ptr %24, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23, !llvm.loop !105

31:                                               ; preds = %23, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  br label %32

32:                                               ; preds = %4, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_fcurve_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !106
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !109
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15, %11
  %21 = icmp eq ptr %1, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 8, !tbaa !112
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  %28 = icmp ne ptr %27, null
  %29 = zext i1 %28 to i16
  br label %30

30:                                               ; preds = %20, %22, %25, %15, %4
  %31 = phi i16 [ 1, %15 ], [ 1, %4 ], [ 0, %22 ], [ 0, %20 ], [ %29, %25 ]
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @fcurve_to_keylist(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext %31)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fcurve_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %217, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %217, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %217, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %0, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %17

17:                                               ; preds = %16, %14
  %18 = load i32, ptr %7, align 8, !tbaa !116
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %205, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %11, align 8, !tbaa !117
  %22 = icmp eq ptr %2, null
  %23 = icmp eq ptr %3, null
  %24 = getelementptr inbounds %struct.DLRBT_Tree, ptr %3, i64 0, i32 2
  br label %25

25:                                               ; preds = %20, %200
  %26 = phi i32 [ 0, %20 ], [ %201, %200 ]
  %27 = phi ptr [ %21, %20 ], [ %202, %200 ]
  %28 = icmp eq ptr %27, null
  %29 = or i1 %22, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @BLI_dlrbTree_add(ptr noundef %2, ptr noundef nonnull @compare_ak_bezt, ptr noundef nonnull @nalloc_ak_bezt, ptr noundef nonnull @nupdate_ak_bezt, ptr noundef %27) #9
  br label %32

32:                                               ; preds = %25, %30
  br i1 %23, label %200, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %11, align 8, !tbaa !117
  %35 = icmp eq ptr %27, %34
  %36 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 -1
  %37 = select i1 %35, ptr null, ptr %36
  br i1 %35, label %200, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fsub float %40, %43
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ult float %45, 0x3E80000000000000
  br i1 %46, label %47, label %200

47:                                               ; preds = %38
  %48 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fsub float %40, %49
  %51 = tail call float @llvm.fabs.f32(float %50)
  %52 = fcmp ult float %51, 0x3E80000000000000
  br i1 %52, label %53, label %200

53:                                               ; preds = %47
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 2, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fsub float %43, %55
  %57 = tail call float @llvm.fabs.f32(float %56)
  %58 = fcmp ult float %57, 0x3E80000000000000
  br i1 %58, label %59, label %200

59:                                               ; preds = %53
  %60 = load ptr, ptr %24, align 8, !tbaa !118
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1
  %64 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 8
  %65 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 7
  %66 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 9
  %67 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 8
  %68 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 7
  %69 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 9
  br label %112

70:                                               ; preds = %59
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %72 = tail call ptr %71(i64 noundef 64, ptr noundef nonnull @.str.1) #9
  %73 = load float, ptr %41, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.ActKeyBlock, ptr %72, i64 0, i32 9
  store float %73, ptr %74, align 8, !tbaa !42
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %27, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.ActKeyBlock, ptr %72, i64 0, i32 10
  store float %76, ptr %77, align 4, !tbaa !67
  %78 = load float, ptr %39, align 4, !tbaa !34
  %79 = getelementptr inbounds %struct.ActKeyBlock, ptr %72, i64 0, i32 8
  store float %78, ptr %79, align 4, !tbaa !120
  %80 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 8
  %81 = load i8, ptr %80, align 4, !tbaa !121
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 7
  %86 = load i8, ptr %85, align 1, !tbaa !123
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 9
  %91 = load i8, ptr %90, align 1, !tbaa !124
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 8
  %96 = load i8, ptr %95, align 4, !tbaa !121
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 7
  %101 = load i8, ptr %100, align 1, !tbaa !123
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 9
  %106 = load i8, ptr %105, align 1, !tbaa !124
  %107 = and i8 %106, 1
  br label %108

108:                                              ; preds = %70, %84, %89, %94, %99, %104
  %109 = phi i8 [ 1, %89 ], [ 1, %84 ], [ 1, %70 ], [ 1, %99 ], [ 1, %94 ], [ %107, %104 ]
  %110 = getelementptr inbounds %struct.ActKeyBlock, ptr %72, i64 0, i32 6
  store i8 %109, ptr %110, align 1, !tbaa !66
  %111 = getelementptr inbounds %struct.ActKeyBlock, ptr %72, i64 0, i32 11
  store i16 1, ptr %111, align 8, !tbaa !125
  store ptr %72, ptr %24, align 8, !tbaa !118
  br label %198

112:                                              ; preds = %62, %192
  %113 = phi ptr [ %193, %192 ], [ null, %62 ]
  %114 = phi ptr [ %194, %192 ], [ %60, %62 ]
  %115 = phi ptr [ %194, %192 ], [ null, %62 ]
  %116 = icmp eq ptr %114, null
  br i1 %116, label %195, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ActKeyBlock, ptr %114, i64 0, i32 9
  %119 = load float, ptr %118, align 8, !tbaa !42
  %120 = load float, ptr %41, align 4, !tbaa !34
  %121 = fcmp ogt float %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = fsub float %119, %120
  %124 = fcmp ugt float %123, 0x3F847AE140000000
  br i1 %124, label %149, label %128

125:                                              ; preds = %117
  %126 = fsub float %120, %119
  %127 = fcmp ugt float %126, 0x3F847AE140000000
  br i1 %127, label %149, label %128

128:                                              ; preds = %125, %122
  %129 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 8
  %130 = load i8, ptr %129, align 4, !tbaa !121
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 7
  %135 = load i8, ptr %134, align 1, !tbaa !123
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 9
  %140 = load i8, ptr %139, align 1, !tbaa !124
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138, %133, %128
  %144 = getelementptr inbounds %struct.ActKeyBlock, ptr %114, i64 0, i32 6
  store i8 1, ptr %144, align 1, !tbaa !66
  br label %145

145:                                              ; preds = %143, %138
  %146 = getelementptr inbounds %struct.ActKeyBlock, ptr %114, i64 0, i32 11
  %147 = load i16, ptr %146, align 8, !tbaa !125
  %148 = add i16 %147, 1
  store i16 %148, ptr %146, align 8, !tbaa !125
  br label %195

149:                                              ; preds = %125, %122
  %150 = fcmp olt float %119, %120
  %151 = getelementptr inbounds %struct.ActKeyBlock, ptr %114, i64 0, i32 3
  %152 = getelementptr inbounds %struct.ActKeyBlock, ptr %114, i64 0, i32 2
  %153 = select i1 %150, ptr %151, ptr %152
  %154 = load ptr, ptr %153, align 8, !tbaa !51
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %192

156:                                              ; preds = %149
  %157 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %158 = tail call ptr %157(i64 noundef 64, ptr noundef nonnull @.str.1) #9
  %159 = load float, ptr %41, align 4, !tbaa !34
  %160 = getelementptr inbounds %struct.ActKeyBlock, ptr %158, i64 0, i32 9
  store float %159, ptr %160, align 8, !tbaa !42
  %161 = load float, ptr %63, align 4, !tbaa !34
  %162 = getelementptr inbounds %struct.ActKeyBlock, ptr %158, i64 0, i32 10
  store float %161, ptr %162, align 4, !tbaa !67
  %163 = load float, ptr %39, align 4, !tbaa !34
  %164 = getelementptr inbounds %struct.ActKeyBlock, ptr %158, i64 0, i32 8
  store float %163, ptr %164, align 4, !tbaa !120
  %165 = load i8, ptr %64, align 4, !tbaa !121
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %156
  %169 = load i8, ptr %65, align 1, !tbaa !123
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %168
  %173 = load i8, ptr %66, align 1, !tbaa !124
  %174 = and i8 %173, 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i8, ptr %67, align 4, !tbaa !121
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i8, ptr %68, align 1, !tbaa !123
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8, ptr %69, align 1, !tbaa !124
  %186 = and i8 %185, 1
  br label %187

187:                                              ; preds = %156, %168, %172, %176, %180, %184
  %188 = phi i8 [ 1, %172 ], [ 1, %168 ], [ 1, %156 ], [ 1, %180 ], [ 1, %176 ], [ %186, %184 ]
  %189 = getelementptr inbounds %struct.ActKeyBlock, ptr %158, i64 0, i32 6
  store i8 %188, ptr %189, align 1, !tbaa !66
  %190 = getelementptr inbounds %struct.ActKeyBlock, ptr %158, i64 0, i32 11
  store i16 1, ptr %190, align 8, !tbaa !125
  %191 = getelementptr inbounds %struct.ActKeyBlock, ptr %158, i64 0, i32 4
  store ptr %114, ptr %191, align 8, !tbaa !126
  store ptr %158, ptr %153, align 8, !tbaa !51
  br label %192

192:                                              ; preds = %187, %149
  %193 = phi ptr [ %158, %187 ], [ %113, %149 ]
  %194 = phi ptr [ %115, %187 ], [ %154, %149 ]
  br i1 %155, label %195, label %112, !llvm.loop !127

195:                                              ; preds = %192, %112, %145
  %196 = phi ptr [ %113, %145 ], [ %193, %192 ], [ %113, %112 ]
  %197 = phi i1 [ false, %145 ], [ true, %112 ], [ true, %192 ]
  br i1 %197, label %198, label %200

198:                                              ; preds = %195, %108
  %199 = phi ptr [ %72, %108 ], [ %196, %195 ]
  tail call void @BLI_dlrbTree_insert(ptr noundef nonnull %3, ptr noundef %199) #9
  br label %200

200:                                              ; preds = %198, %195, %53, %47, %38, %33, %32
  %201 = add nuw i32 %26, 1
  %202 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 1
  %203 = load i32, ptr %7, align 8, !tbaa !116
  %204 = icmp ult i32 %201, %203
  br i1 %204, label %25, label %205, !llvm.loop !128

205:                                              ; preds = %200, %17
  %206 = icmp eq ptr %2, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.DLRBT_Tree, ptr %2, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !118
  tail call fastcc void @set_touched_actkeycolumn(ptr noundef %209)
  br label %210

210:                                              ; preds = %207, %205
  %211 = icmp eq ptr %3, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.DLRBT_Tree, ptr %3, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !118
  tail call fastcc void @set_touched_actkeyblock(ptr noundef %214)
  br label %215

215:                                              ; preds = %212, %210
  br i1 %15, label %217, label %216

216:                                              ; preds = %215
  tail call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %217

217:                                              ; preds = %215, %216, %10, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_agroup_channel(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !109
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %1, align 8, !tbaa !112
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i16
  br label %21

21:                                               ; preds = %11, %13, %16, %4
  %22 = phi i16 [ 1, %4 ], [ 0, %13 ], [ 0, %11 ], [ %20, %16 ]
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  %23 = icmp eq ptr %2, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %33
  %29 = phi ptr [ %34, %33 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  call void @fcurve_to_keylist(ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %34 = load ptr, ptr %29, align 8, !tbaa !51
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28, !llvm.loop !129

36:                                               ; preds = %28, %33, %24, %21
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext %22)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @agroup_to_keylist(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %15
  %11 = phi ptr [ %16, %15 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  tail call void @fcurve_to_keylist(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3)
  %16 = load ptr, ptr %11, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !129

18:                                               ; preds = %15, %10, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_action_channel(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i16
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i16 [ 0, %4 ], [ %12, %8 ]
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  br i1 %7, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bAction, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %15 ]
  call void @fcurve_to_keylist(ptr noundef %1, ptr noundef nonnull %20, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19, !llvm.loop !130

23:                                               ; preds = %19, %15, %13
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext %14)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @action_to_keylist(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  tail call void @fcurve_to_keylist(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3)
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !130

14:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_gpl_channel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  %6 = icmp eq ptr %2, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = call ptr @BLI_dlrbTree_add(ptr noundef nonnull %5, ptr noundef nonnull @compare_ak_gpframe, ptr noundef nonnull @nalloc_ak_gpframe, ptr noundef nonnull @nupdate_ak_gpframe, ptr noundef nonnull %12) #9
  %14 = load ptr, ptr %12, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !59

16:                                               ; preds = %11, %7, %4
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  %17 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !131
  %19 = trunc i32 %18 to i16
  %20 = and i16 %19, 2
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, float noundef %3, i16 noundef signext %20)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gpl_to_keylist(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = tail call ptr @BLI_dlrbTree_add(ptr noundef nonnull %2, ptr noundef nonnull @compare_ak_gpframe, ptr noundef nonnull @nalloc_ak_gpframe, ptr noundef nonnull @nupdate_ak_gpframe, ptr noundef nonnull %12) #9
  %14 = load ptr, ptr %12, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !59

16:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_masklay_channel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  %6 = icmp eq ptr %2, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %2, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = call ptr @BLI_dlrbTree_add(ptr noundef nonnull %5, ptr noundef nonnull @compare_ak_masklayshape, ptr noundef nonnull @nalloc_ak_masklayshape, ptr noundef nonnull @nupdate_ak_masklayshape, ptr noundef nonnull %12) #9
  %14 = load ptr, ptr %12, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !56

16:                                               ; preds = %11, %7, %4
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  %17 = getelementptr inbounds %struct.MaskLayer, ptr %2, i64 0, i32 12
  %18 = load i8, ptr %17, align 2, !tbaa !133
  %19 = and i8 %18, 16
  %20 = zext nneg i8 %19 to i16
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, float noundef %3, i16 noundef signext %20)
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mask_to_keylist(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = tail call ptr @BLI_dlrbTree_add(ptr noundef nonnull %2, ptr noundef nonnull @compare_ak_masklayshape, ptr noundef nonnull @nalloc_ak_masklayshape, ptr noundef nonnull @nupdate_ak_masklayshape, ptr noundef nonnull %12) #9
  %14 = load ptr, ptr %12, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !56

16:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_touched_actkeycolumn(ptr noundef %0) unnamed_addr #6 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !135
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  store i16 0, ptr %6, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !44
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 2, !tbaa !44
  br label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  tail call fastcc void @set_touched_actkeycolumn(ptr noundef %15)
  %16 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  br label %2

18:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_touched_actkeyblock(ptr noundef %0) unnamed_addr #6 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ActKeyBlock, ptr %3, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !125
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  store i16 0, ptr %6, align 8, !tbaa !125
  %10 = getelementptr inbounds %struct.ActKeyBlock, ptr %3, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !45
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 2, !tbaa !45
  br label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.ActKeyBlock, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  tail call fastcc void @set_touched_actkeyblock(ptr noundef %15)
  %16 = getelementptr inbounds %struct.ActKeyBlock, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  br label %2

18:                                               ; preds = %2
  ret void
}

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @BLI_dlrbTree_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @compare_ak_bezt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !38
  %7 = fcmp olt float %4, %6
  %8 = fcmp ogt float %4, %6
  %9 = zext i1 %8 to i16
  %10 = select i1 %7, i16 -1, i16 %9
  ret i16 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @nalloc_ak_bezt(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str) #9
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 8
  store float %5, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 4, !tbaa !121
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !123
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %18 = load i8, ptr %17, align 1, !tbaa !124
  %19 = and i8 %18, 1
  %20 = zext nneg i8 %19 to i16
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = phi i16 [ 1, %11 ], [ 1, %1 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 7
  store i16 %22, ptr %23, align 2, !tbaa !74
  %24 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !140
  %26 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 6
  store i8 %25, ptr %26, align 1, !tbaa !75
  %27 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  store i16 1, ptr %27, align 8, !tbaa !135
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @nupdate_ak_bezt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !121
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !123
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !124
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %7, %2
  %18 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 7
  store i16 1, ptr %18, align 2, !tbaa !74
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 9
  %21 = load i16, ptr %20, align 8, !tbaa !135
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 8, !tbaa !135
  %23 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  %24 = load i8, ptr %23, align 2, !tbaa !140
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 6
  store i8 0, ptr %27, align 1, !tbaa !75
  br label %28

28:                                               ; preds = %26, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @BLI_dlrbTree_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @compare_ak_gpframe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !141
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = fcmp ogt float %7, %5
  %9 = fcmp olt float %7, %5
  %10 = zext i1 %9 to i16
  %11 = select i1 %8, i16 -1, i16 %10
  ret i16 %11
}

; Function Attrs: nounwind uwtable
define internal ptr @nalloc_ak_gpframe(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str.2) #9
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !141
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 8
  store float %6, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !143
  %10 = trunc i32 %9 to i16
  %11 = lshr i16 %10, 1
  %12 = and i16 %11, 1
  %13 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 7
  store i16 %12, ptr %13, align 2, !tbaa !74
  %14 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  store i16 1, ptr %14, align 8, !tbaa !135
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @nupdate_ak_gpframe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !143
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 7
  store i16 1, ptr %8, align 2, !tbaa !74
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !135
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @compare_ak_masklayshape(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = fcmp ogt float %7, %5
  %9 = fcmp olt float %7, %5
  %10 = zext i1 %9 to i16
  %11 = select i1 %8, i16 -1, i16 %10
  ret i16 %11
}

; Function Attrs: nounwind uwtable
define internal ptr @nalloc_ak_masklayshape(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str.2) #9
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 8
  store float %6, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !146
  %10 = and i8 %9, 1
  %11 = zext nneg i8 %10 to i16
  %12 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 7
  store i16 %11, ptr %12, align 2, !tbaa !74
  %13 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  store i16 1, ptr %13, align 8, !tbaa !135
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @nupdate_ak_masklayshape(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !146
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 7
  store i16 1, ptr %8, align 2, !tbaa !74
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !135
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 8, !tbaa !135
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 44}
!39 = !{!"ActKeyColumn", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !36, i64 40, !36, i64 41, !41, i64 42, !35, i64 44, !41, i64 48, !41, i64 50}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!43, !35, i64 48}
!43 = !{!"ActKeyBlock", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !36, i64 40, !36, i64 41, !41, i64 42, !35, i64 44, !35, i64 48, !35, i64 52, !41, i64 56, !41, i64 58}
!44 = !{!39, !41, i64 50}
!45 = !{!43, !41, i64 58}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !36, i64 0}
!48 = !{!49, !40, i64 0}
!49 = !{!"bAnimContext", !40, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72}
!50 = !{!49, !41, i64 8}
!51 = !{!40, !40, i64 0}
!52 = !{!53, !41, i64 38}
!53 = !{!"bAnimListElem", !40, i64 0, !40, i64 8, !40, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !41, i64 36, !41, i64 38, !40, i64 40, !40, i64 48, !40, i64 56}
!54 = !{!53, !40, i64 56}
!55 = !{!53, !40, i64 16}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !57, !58}
!60 = distinct !{!60, !57, !58}
!61 = !{!62, !41, i64 8948}
!62 = !{!"UserDef", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !47, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !47, i64 8484, !47, i64 8488, !47, i64 8492, !41, i64 8496, !41, i64 8498, !47, i64 8500, !47, i64 8504, !47, i64 8508, !47, i64 8512, !47, i64 8516, !47, i64 8520, !47, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !63, i64 8536, !63, i64 8552, !63, i64 8568, !63, i64 8584, !63, i64 8600, !63, i64 8616, !63, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !47, i64 8912, !47, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !35, i64 8956, !35, i64 8960, !47, i64 8964, !41, i64 8968, !41, i64 8970, !35, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !64, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !47, i64 10896, !47, i64 10900, !35, i64 10904, !35, i64 10908, !47, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !65, i64 10928}
!63 = !{!"ListBase", !40, i64 0, !40, i64 8}
!64 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!65 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !41, i64 24, !36, i64 26}
!66 = !{!43, !36, i64 41}
!67 = !{!43, !35, i64 52}
!68 = distinct !{!68, !57, !58}
!69 = !{!70, !35, i64 16}
!70 = !{!"View2D", !71, i64 0, !71, i64 16, !72, i64 32, !72, i64 48, !72, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !40, i64 128, !47, i64 136, !47, i64 140, !40, i64 144, !40, i64 152}
!71 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!72 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!73 = !{!70, !35, i64 20}
!74 = !{!39, !41, i64 42}
!75 = !{!39, !36, i64 41}
!76 = distinct !{!76, !57, !58}
!77 = !{!53, !47, i64 24}
!78 = !{!53, !40, i64 48}
!79 = !{!80, !40, i64 120}
!80 = !{!"Scene", !81, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !63, i64 152, !40, i64 168, !40, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !47, i64 232, !47, i64 236, !47, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !82, i64 280, !89, i64 4264, !63, i64 4296, !63, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !41, i64 4376, !41, i64 4378, !47, i64 4380, !63, i64 4384, !90, i64 4400, !91, i64 4416, !94, i64 4600, !40, i64 4608, !95, i64 4616, !40, i64 4640, !96, i64 4648, !96, i64 4656, !84, i64 4664, !85, i64 4824, !97, i64 4888, !40, i64 4952}
!81 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !41, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !40, i64 112}
!82 = !{!"RenderData", !83, i64 0, !40, i64 248, !40, i64 256, !86, i64 264, !87, i64 328, !47, i64 400, !47, i64 404, !47, i64 408, !35, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !41, i64 432, !41, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !47, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !47, i64 484, !47, i64 488, !41, i64 492, !41, i64 494, !47, i64 496, !47, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !47, i64 516, !47, i64 520, !47, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !71, i64 544, !71, i64 560, !72, i64 576, !63, i64 592, !41, i64 608, !41, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !47, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !35, i64 660, !35, i64 664, !41, i64 668, !41, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !47, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !47, i64 2520, !41, i64 2524, !41, i64 2526, !35, i64 2528, !35, i64 2532, !41, i64 2536, !41, i64 2538, !35, i64 2540, !41, i64 2544, !41, i64 2546, !47, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !35, i64 2560, !35, i64 2564, !40, i64 2568, !47, i64 2576, !35, i64 2580, !36, i64 2584, !88, i64 2616, !47, i64 3976, !47, i64 3980}
!83 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !47, i64 0, !47, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !40, i64 144, !40, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!86 = !{!"QuicktimeCodecSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !41, i64 48, !41, i64 50, !47, i64 52, !47, i64 56, !47, i64 60}
!87 = !{!"FFMpegCodecData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !35, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !40, i64 64}
!88 = !{!"BakeData", !83, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!89 = !{!"AudioData", !47, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !47, i64 16, !41, i64 20, !41, i64 22, !35, i64 24, !35, i64 28}
!90 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!91 = !{!"GameData", !90, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !92, i64 40, !41, i64 64, !41, i64 66, !35, i64 68, !93, i64 72, !35, i64 128, !35, i64 132, !47, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!92 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 12, !40, i64 16}
!93 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !47, i64 40, !35, i64 44, !35, i64 48, !41, i64 52, !41, i64 54}
!94 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!95 = !{!"PhysicsSettings", !36, i64 0, !47, i64 12, !47, i64 16, !47, i64 20}
!96 = !{!"long", !36, i64 0}
!97 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!98 = !{!49, !40, i64 40}
!99 = distinct !{!99, !57, !58}
!100 = !{!101, !40, i64 32}
!101 = !{!"Base", !40, i64 0, !40, i64 8, !47, i64 16, !47, i64 20, !47, i64 24, !41, i64 28, !41, i64 30, !40, i64 32}
!102 = !{!103, !40, i64 120}
!103 = !{!"Object", !81, i64 0, !40, i64 120, !40, i64 128, !41, i64 136, !41, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !36, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !104, i64 312, !40, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !47, i64 432, !47, i64 436, !40, i64 440, !40, i64 448, !47, i64 456, !47, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !47, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !35, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !47, i64 1144, !47, i64 1148, !40, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !35, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !96, i64 1304, !96, i64 1312, !47, i64 1320, !47, i64 1324, !63, i64 1328, !63, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !36, i64 1384, !40, i64 1392, !63, i64 1400, !40, i64 1416}
!104 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!105 = distinct !{!105, !57, !58}
!106 = !{!107, !41, i64 72}
!107 = !{!"FCurve", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !63, i64 32, !40, i64 48, !40, i64 56, !47, i64 64, !35, i64 68, !41, i64 72, !41, i64 74, !47, i64 76, !40, i64 80, !47, i64 88, !36, i64 92, !35, i64 104, !35, i64 108}
!108 = !{!107, !40, i64 16}
!109 = !{!110, !47, i64 32}
!110 = !{!"bActionGroup", !40, i64 0, !40, i64 8, !63, i64 16, !47, i64 32, !47, i64 36, !36, i64 40, !111, i64 104}
!111 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 12, !41, i64 14}
!112 = !{!113, !40, i64 0}
!113 = !{!"AnimData", !40, i64 0, !40, i64 8, !40, i64 16, !63, i64 24, !40, i64 40, !63, i64 48, !63, i64 64, !47, i64 80, !47, i64 84, !41, i64 88, !41, i64 90, !35, i64 92}
!114 = !{!115, !40, i64 24}
!115 = !{!"bAction", !81, i64 0, !63, i64 120, !63, i64 136, !63, i64 152, !63, i64 168, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196}
!116 = !{!107, !47, i64 64}
!117 = !{!107, !40, i64 48}
!118 = !{!119, !40, i64 16}
!119 = !{!"DLRBT_Tree", !40, i64 0, !40, i64 8, !40, i64 16}
!120 = !{!43, !35, i64 44}
!121 = !{!122, !36, i64 52}
!122 = !{!"BezTriple", !36, i64 0, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !35, i64 56, !35, i64 60, !35, i64 64, !36, i64 68}
!123 = !{!122, !36, i64 51}
!124 = !{!122, !36, i64 53}
!125 = !{!43, !41, i64 56}
!126 = !{!43, !40, i64 32}
!127 = distinct !{!127, !57, !58}
!128 = distinct !{!128, !57, !58}
!129 = distinct !{!129, !57, !58}
!130 = distinct !{!130, !57, !58}
!131 = !{!132, !47, i64 40}
!132 = !{!"bGPDlayer", !40, i64 0, !40, i64 8, !63, i64 16, !40, i64 32, !47, i64 40, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 64}
!133 = !{!134, !36, i64 142}
!134 = !{!"MaskLayer", !40, i64 0, !40, i64 8, !36, i64 16, !63, i64 80, !63, i64 96, !40, i64 112, !40, i64 120, !35, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!135 = !{!39, !41, i64 48}
!136 = !{!39, !40, i64 16}
!137 = !{!39, !40, i64 24}
!138 = !{!43, !40, i64 16}
!139 = !{!43, !40, i64 24}
!140 = !{!122, !36, i64 54}
!141 = !{!142, !47, i64 32}
!142 = !{!"bGPDframe", !40, i64 0, !40, i64 8, !63, i64 16, !47, i64 32, !47, i64 36}
!143 = !{!142, !47, i64 36}
!144 = !{!145, !47, i64 28}
!145 = !{!"MaskLayerShape", !40, i64 0, !40, i64 8, !40, i64 16, !47, i64 24, !47, i64 28, !36, i64 32, !36, i64 33}
!146 = !{!145, !36, i64 32}
