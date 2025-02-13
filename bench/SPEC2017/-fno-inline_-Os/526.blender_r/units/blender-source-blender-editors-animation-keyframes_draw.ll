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
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_search_exact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  br label %43

43:                                               ; preds = %20, %37
  %44 = and i16 %6, -3
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
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

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_GetThemeColor4fv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_summary_channel(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.DLRBT_Tree, align 8
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @BLI_dlrbTree_init(ptr noundef nonnull %4) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @summary_to_keylist(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %4) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %2, i16 noundef signext 0) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %4) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @summary_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = sext i16 %9 to i32
  %11 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %7, i32 noundef %10) #9
  %12 = load ptr, ptr %4, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %6, %29
  %15 = phi ptr [ %30, %29 ], [ %12, %6 ]
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 7
  %17 = load i16, ptr %16, align 2, !tbaa !52
  switch i16 %17, label %29 [
    i16 1, label %18
    i16 3, label %23
    i16 2, label %26
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %20, ptr noundef %22, ptr noundef %1, ptr noundef %2) #11
  br label %29

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  call void @mask_to_keylist(ptr poison, ptr noundef %25, ptr noundef %1) #11
  br label %29

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  call void @gpl_to_keylist(ptr poison, ptr noundef %28, ptr noundef %1) #11
  br label %29

29:                                               ; preds = %18, %23, %26, %14
  %30 = load ptr, ptr %15, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %14, !llvm.loop !56

32:                                               ; preds = %29, %6
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %33

33:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_keylist(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, float noundef %3, i16 noundef signext %4) unnamed_addr #2 !PGOFuncName !58 {
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !59
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 2.500000e-01
  tail call void @glEnable(i32 noundef 3042) #9
  call void @UI_view2d_scale_get(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #9
  %12 = icmp eq i16 %4, 0
  %13 = select i1 %12, float 1.000000e+00, float 2.500000e-01
  %14 = icmp eq ptr %2, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
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
  br i1 %23, label %43, label %24

24:                                               ; preds = %15
  %25 = fsub float %3, %11
  %26 = fadd float %11, %3
  br label %27

27:                                               ; preds = %24, %40
  %28 = phi ptr [ %22, %24 ], [ %41, %40 ]
  %29 = call zeroext i8 @actkeyblock_is_valid(ptr noundef nonnull %28, ptr noundef %1) #11, !range !64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 6
  %33 = load i8, ptr %32, align 1, !tbaa !65
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr %8, ptr %7
  call void @glColor4fv(ptr noundef nonnull %35) #9
  %36 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 9
  %37 = load float, ptr %36, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.ActKeyBlock, ptr %28, i64 0, i32 10
  %39 = load float, ptr %38, align 4, !tbaa !66
  call void @glRectf(float noundef %37, float noundef %25, float noundef %39, float noundef %26) #9
  br label %40

40:                                               ; preds = %27, %31
  %41 = load ptr, ptr %28, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27, !llvm.loop !67

43:                                               ; preds = %40, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %44

44:                                               ; preds = %43, %5
  %45 = icmp eq ptr %1, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %1, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  br i1 %48, label %78, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  br label %52

52:                                               ; preds = %49, %75
  %53 = phi ptr [ %47, %49 ], [ %76, %75 ]
  %54 = load float, ptr %50, align 8, !tbaa !68
  %55 = load float, ptr %51, align 4, !tbaa !72
  %56 = fcmp olt float %54, %55
  %57 = getelementptr inbounds %struct.ActKeyColumn, ptr %53, i64 0, i32 8
  %58 = load float, ptr %57, align 4, !tbaa !38
  br i1 %56, label %59, label %63

59:                                               ; preds = %52
  %60 = fcmp ole float %54, %58
  %61 = fcmp ole float %58, %55
  %62 = and i1 %60, %61
  br i1 %62, label %67, label %75

63:                                               ; preds = %52
  %64 = fcmp ole float %55, %58
  %65 = fcmp ole float %58, %54
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59, %63
  %68 = load float, ptr %6, align 4, !tbaa !34
  %69 = getelementptr inbounds %struct.ActKeyColumn, ptr %53, i64 0, i32 7
  %70 = load i16, ptr %69, align 2, !tbaa !73
  %71 = and i16 %70, 1
  %72 = getelementptr inbounds %struct.ActKeyColumn, ptr %53, i64 0, i32 6
  %73 = load i8, ptr %72, align 1, !tbaa !74
  %74 = zext i8 %73 to i16
  call void @draw_keyframe_shape(float noundef %58, float noundef %3, float noundef %68, float noundef %11, i16 noundef signext %71, i16 noundef signext %74, i16 noundef signext 2, float noundef %13) #11
  br label %75

75:                                               ; preds = %59, %63, %67
  %76 = load ptr, ptr %53, align 8, !tbaa !51
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %52, !llvm.loop !75

78:                                               ; preds = %75, %46, %44
  call void @glDisable(i32 noundef 3042) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_scene_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @scene_to_keylist(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext 0) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scene_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimListElem, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 48, i1 false)
  %9 = icmp eq ptr %1, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 4, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %1, ptr %13, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %15, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  store ptr %0, ptr %17, align 8, !tbaa !97
  store ptr %7, ptr %5, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  store i16 8, ptr %18, align 8, !tbaa !50
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 8) #9
  %20 = load ptr, ptr %6, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %28, %22 ], [ %20, %10 ]
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %25, ptr noundef %27, ptr noundef %2, ptr noundef %3) #11
  %28 = load ptr, ptr %23, align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !98

30:                                               ; preds = %22, %10
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  br label %31

31:                                               ; preds = %4, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_object_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @ob_to_keylist(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext 0) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ob_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimListElem, align 8
  %8 = alloca %struct.Base, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #10
  %9 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 32, i1 false)
  %10 = icmp eq ptr %1, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  store ptr %1, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 5, ptr %13, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %8, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %1, ptr %15, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %17, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 8
  store ptr %0, ptr %19, align 8, !tbaa !97
  store ptr %7, ptr %5, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  store i16 8, ptr %20, align 8, !tbaa !50
  %21 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 8) #9
  %22 = load ptr, ptr %6, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %11, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %11 ]
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  call void @fcurve_to_keylist(ptr noundef %27, ptr noundef %29, ptr noundef %2, ptr noundef %3) #11
  %30 = load ptr, ptr %25, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !104

32:                                               ; preds = %24, %11
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  br label %33

33:                                               ; preds = %4, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_fcurve_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !105
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !108
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15, %11
  %21 = icmp eq ptr %1, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 8, !tbaa !111
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = icmp ne ptr %27, null
  %29 = zext i1 %28 to i16
  br label %30

30:                                               ; preds = %20, %22, %25, %15, %4
  %31 = phi i16 [ 1, %15 ], [ 1, %4 ], [ 0, %22 ], [ 0, %20 ], [ %29, %25 ]
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @fcurve_to_keylist(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext %31) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fcurve_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !115
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %0, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  tail call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %17 = load i32, ptr %7, align 8, !tbaa !115
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14, %16
  %20 = load ptr, ptr %11, align 8, !tbaa !116
  %21 = icmp eq ptr %3, null
  br label %22

22:                                               ; preds = %19, %27
  %23 = phi i32 [ 0, %19 ], [ %28, %27 ]
  %24 = phi ptr [ %20, %19 ], [ %29, %27 ]
  tail call fastcc void @add_bezt_to_keycolumns_list(ptr noundef %2, ptr noundef %24) #11
  br i1 %21, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %11, align 8, !tbaa !116
  tail call fastcc void @add_bezt_to_keyblocks_list(ptr noundef nonnull %3, ptr noundef %26, ptr noundef %24) #11
  br label %27

27:                                               ; preds = %22, %25
  %28 = add nuw i32 %23, 1
  %29 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 1
  %30 = load i32, ptr %7, align 8, !tbaa !115
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %22, label %32, !llvm.loop !117

32:                                               ; preds = %27, %16
  %33 = icmp eq ptr %2, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.DLRBT_Tree, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !118
  tail call fastcc void @set_touched_actkeycolumn(ptr noundef %36) #11
  br label %37

37:                                               ; preds = %34, %32
  %38 = icmp eq ptr %3, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.DLRBT_Tree, ptr %3, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !118
  tail call fastcc void @set_touched_actkeyblock(ptr noundef %41) #11
  br label %42

42:                                               ; preds = %39, %37
  br i1 %15, label %44, label %43

43:                                               ; preds = %42
  tail call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %44

44:                                               ; preds = %42, %43, %10, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_agroup_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !108
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %1, align 8, !tbaa !111
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i16
  br label %21

21:                                               ; preds = %11, %13, %16, %4
  %22 = phi i16 [ 1, %4 ], [ 0, %13 ], [ 0, %11 ], [ %20, %16 ]
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @agroup_to_keylist(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext %22) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  tail call void @fcurve_to_keylist(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3) #11
  %16 = load ptr, ptr %11, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !120

18:                                               ; preds = %15, %10, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_action_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i16
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i16 [ 0, %4 ], [ %12, %8 ]
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #9
  call void @action_to_keylist(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #9
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %3, i16 noundef signext %14) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @fcurve_to_keylist(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3) #11
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !121

14:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_gpl_channel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @gpl_to_keylist(ptr poison, ptr noundef %2, ptr noundef nonnull %5) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !122
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, 2
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, float noundef %3, i16 noundef signext %9) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpl_to_keylist(ptr nocapture readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  tail call fastcc void @add_gpframe_to_keycolumns_list(ptr noundef nonnull %2, ptr noundef nonnull %12) #11
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !124

15:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_masklay_channel(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  call void @mask_to_keylist(ptr poison, ptr noundef %2, ptr noundef nonnull %5) #11
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %2, i64 0, i32 12
  %7 = load i8, ptr %6, align 2, !tbaa !125
  %8 = and i8 %7, 16
  %9 = zext nneg i8 %8 to i16
  call fastcc void @draw_keylist(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, float noundef %3, i16 noundef signext %9) #11
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mask_to_keylist(ptr nocapture readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  tail call fastcc void @add_masklay_to_keycolumns_list(ptr noundef nonnull %2, ptr noundef nonnull %12) #11
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !127

15:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_bezt_to_keycolumns_list(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !128 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_dlrbTree_add(ptr noundef nonnull %0, ptr noundef nonnull @compare_ak_bezt, ptr noundef nonnull @nalloc_ak_bezt, ptr noundef nonnull @nupdate_ak_bezt, ptr noundef nonnull %1) #9
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_bezt_to_keyblocks_list(ptr noundef %0, ptr noundef readnone %1, ptr noundef readonly %2) unnamed_addr #2 !PGOFuncName !129 {
  %4 = icmp eq ptr %2, %1
  %5 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 -1
  %6 = select i1 %4, ptr null, ptr %5
  br i1 %4, label %80, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr %struct.BezTriple, ptr %2, i64 -1, i32 0, i64 1
  %11 = getelementptr %struct.BezTriple, ptr %2, i64 -1, i32 0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %9, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ult float %14, 0x3E80000000000000
  br i1 %15, label %16, label %80

16:                                               ; preds = %7
  %17 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %9, %18
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = fcmp ult float %20, 0x3E80000000000000
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = getelementptr %struct.BezTriple, ptr %2, i64 -1, i32 0, i64 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %12, %24
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ult float %26, 0x3E80000000000000
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.DLRBT_Tree, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !118
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load float, ptr %10, align 4, !tbaa !34
  br label %36

34:                                               ; preds = %28
  %35 = tail call fastcc ptr @bezts_to_new_actkeyblock(ptr noundef nonnull %5, ptr noundef nonnull %2) #11
  store ptr %35, ptr %29, align 8, !tbaa !118
  br label %78

36:                                               ; preds = %32, %64
  %37 = phi ptr [ %69, %64 ], [ %30, %32 ]
  %38 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 9
  %39 = load float, ptr %38, align 8, !tbaa !42
  %40 = fcmp ogt float %39, %33
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = fsub float %39, %33
  %43 = fcmp ugt float %42, 0x3F847AE140000000
  br i1 %43, label %64, label %47

44:                                               ; preds = %36
  %45 = fsub float %33, %39
  %46 = fcmp ugt float %45, 0x3F847AE140000000
  br i1 %46, label %64, label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !130
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !132
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 9
  %59 = load i8, ptr %58, align 1, !tbaa !133
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57, %52, %47
  %63 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 6
  store i8 1, ptr %63, align 1, !tbaa !65
  br label %74

64:                                               ; preds = %44, %41
  %65 = fcmp olt float %39, %33
  %66 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 3
  %67 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 2
  %68 = select i1 %65, ptr %66, ptr %67
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %36, !llvm.loop !134

71:                                               ; preds = %64
  %72 = tail call fastcc ptr @bezts_to_new_actkeyblock(ptr noundef nonnull %6, ptr noundef %2) #11
  %73 = getelementptr inbounds %struct.ActKeyBlock, ptr %72, i64 0, i32 4
  store ptr %37, ptr %73, align 8, !tbaa !135
  store ptr %72, ptr %68, align 8, !tbaa !51
  br label %78

74:                                               ; preds = %57, %62
  %75 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 11
  %76 = load i16, ptr %75, align 8, !tbaa !136
  %77 = add i16 %76, 1
  store i16 %77, ptr %75, align 8, !tbaa !136
  br label %80

78:                                               ; preds = %71, %34
  %79 = phi ptr [ %35, %34 ], [ %72, %71 ]
  tail call void @BLI_dlrbTree_insert(ptr noundef %0, ptr noundef %79) #9
  br label %80

80:                                               ; preds = %74, %22, %16, %7, %3, %78
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_touched_actkeycolumn(ptr noundef %0) unnamed_addr #6 !PGOFuncName !137 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %12
  %4 = phi ptr [ %16, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.ActKeyColumn, ptr %4, i64 0, i32 9
  %6 = load i16, ptr %5, align 8, !tbaa !138
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  store i16 0, ptr %5, align 8, !tbaa !138
  %9 = getelementptr inbounds %struct.ActKeyColumn, ptr %4, i64 0, i32 10
  %10 = load i16, ptr %9, align 2, !tbaa !44
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 2, !tbaa !44
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.ActKeyColumn, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  tail call fastcc void @set_touched_actkeycolumn(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.ActKeyColumn, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3

18:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_touched_actkeyblock(ptr noundef %0) unnamed_addr #6 !PGOFuncName !141 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %12
  %4 = phi ptr [ %16, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !136
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  store i16 0, ptr %5, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 12
  %10 = load i16, ptr %9, align 2, !tbaa !45
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 2, !tbaa !45
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  tail call fastcc void @set_touched_actkeyblock(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3

18:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_gpframe_to_keycolumns_list(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !144 {
  %3 = tail call ptr @BLI_dlrbTree_add(ptr noundef %0, ptr noundef nonnull @compare_ak_gpframe, ptr noundef nonnull @nalloc_ak_gpframe, ptr noundef nonnull @nupdate_ak_gpframe, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_masklay_to_keycolumns_list(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !145 {
  %3 = tail call ptr @BLI_dlrbTree_add(ptr noundef %0, ptr noundef nonnull @compare_ak_masklayshape, ptr noundef nonnull @nalloc_ak_masklayshape, ptr noundef nonnull @nupdate_ak_masklayshape, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @compare_ak_bezt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !146 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @nalloc_ak_bezt(ptr nocapture noundef readonly %0) #2 !PGOFuncName !147 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str) #9
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 8
  store float %5, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 4, !tbaa !130
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !132
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %18 = load i8, ptr %17, align 1, !tbaa !133
  %19 = and i8 %18, 1
  %20 = zext nneg i8 %19 to i16
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = phi i16 [ 1, %11 ], [ 1, %1 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 7
  store i16 %22, ptr %23, align 2, !tbaa !73
  %24 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !148
  %26 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 6
  store i8 %25, ptr %26, align 1, !tbaa !74
  %27 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  store i16 1, ptr %27, align 8, !tbaa !138
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @nupdate_ak_bezt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !149 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !130
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !132
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !133
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %7, %2
  %18 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 7
  store i16 1, ptr %18, align 2, !tbaa !73
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 9
  %21 = load i16, ptr %20, align 8, !tbaa !138
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 8, !tbaa !138
  %23 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  %24 = load i8, ptr %23, align 2, !tbaa !148
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 6
  store i8 0, ptr %27, align 1, !tbaa !74
  br label %28

28:                                               ; preds = %26, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bezts_to_new_actkeyblock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !150 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %4 = tail call ptr %3(i64 noundef 64, ptr noundef nonnull @.str.1) #9
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 9
  store float %6, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 10
  store float %9, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 8
  store float %12, ptr %13, align 4, !tbaa !151
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !130
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 1, !tbaa !132
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %25 = load i8, ptr %24, align 1, !tbaa !133
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %30 = load i8, ptr %29, align 4, !tbaa !130
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %35 = load i8, ptr %34, align 1, !tbaa !132
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !133
  %41 = and i8 %40, 1
  br label %42

42:                                               ; preds = %28, %33, %38, %23, %18, %2
  %43 = phi i8 [ 1, %23 ], [ 1, %18 ], [ 1, %2 ], [ 1, %33 ], [ 1, %28 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 6
  store i8 %43, ptr %44, align 1, !tbaa !65
  %45 = getelementptr inbounds %struct.ActKeyBlock, ptr %4, i64 0, i32 11
  store i16 1, ptr %45, align 8, !tbaa !136
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_dlrbTree_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @compare_ak_gpframe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !152 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !153
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = fcmp ogt float %7, %5
  %9 = fcmp olt float %7, %5
  %10 = zext i1 %9 to i16
  %11 = select i1 %8, i16 -1, i16 %10
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @nalloc_ak_gpframe(ptr nocapture noundef readonly %0) #2 !PGOFuncName !155 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str.2) #9
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !153
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 8
  store float %6, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !156
  %10 = trunc i32 %9 to i16
  %11 = lshr i16 %10, 1
  %12 = and i16 %11, 1
  %13 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 7
  store i16 %12, ptr %13, align 2, !tbaa !73
  %14 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  store i16 1, ptr %14, align 8, !tbaa !138
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @nupdate_ak_gpframe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !157 {
  %3 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !156
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 7
  store i16 1, ptr %8, align 2, !tbaa !73
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !138
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @compare_ak_masklayshape(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !158 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !159
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = fcmp ogt float %7, %5
  %9 = fcmp olt float %7, %5
  %10 = zext i1 %9 to i16
  %11 = select i1 %8, i16 -1, i16 %10
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @nalloc_ak_masklayshape(ptr nocapture noundef readonly %0) #2 !PGOFuncName !161 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str.2) #9
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !159
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 8
  store float %6, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !162
  %10 = and i8 %9, 1
  %11 = zext nneg i8 %10 to i16
  %12 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 7
  store i16 %11, ptr %12, align 2, !tbaa !73
  %13 = getelementptr inbounds %struct.ActKeyColumn, ptr %3, i64 0, i32 9
  store i16 1, ptr %13, align 8, !tbaa !138
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @nupdate_ak_masklayshape(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !163 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !162
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 7
  store i16 1, ptr %8, align 2, !tbaa !73
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !138
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 8, !tbaa !138
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"keyframes_draw.c:draw_keylist"}
!59 = !{!60, !41, i64 8948}
!60 = !{!"UserDef", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !47, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !47, i64 8484, !47, i64 8488, !47, i64 8492, !41, i64 8496, !41, i64 8498, !47, i64 8500, !47, i64 8504, !47, i64 8508, !47, i64 8512, !47, i64 8516, !47, i64 8520, !47, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !61, i64 8536, !61, i64 8552, !61, i64 8568, !61, i64 8584, !61, i64 8600, !61, i64 8616, !61, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !47, i64 8912, !47, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !35, i64 8956, !35, i64 8960, !47, i64 8964, !41, i64 8968, !41, i64 8970, !35, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !62, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !47, i64 10896, !47, i64 10900, !35, i64 10904, !35, i64 10908, !47, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !63, i64 10928}
!61 = !{!"ListBase", !40, i64 0, !40, i64 8}
!62 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!63 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !41, i64 24, !36, i64 26}
!64 = !{i8 0, i8 2}
!65 = !{!43, !36, i64 41}
!66 = !{!43, !35, i64 52}
!67 = distinct !{!67, !57}
!68 = !{!69, !35, i64 16}
!69 = !{!"View2D", !70, i64 0, !70, i64 16, !71, i64 32, !71, i64 48, !71, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !40, i64 128, !47, i64 136, !47, i64 140, !40, i64 144, !40, i64 152}
!70 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!71 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!72 = !{!69, !35, i64 20}
!73 = !{!39, !41, i64 42}
!74 = !{!39, !36, i64 41}
!75 = distinct !{!75, !57}
!76 = !{!53, !47, i64 24}
!77 = !{!53, !40, i64 48}
!78 = !{!79, !40, i64 120}
!79 = !{!"Scene", !80, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !61, i64 152, !40, i64 168, !40, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !47, i64 232, !47, i64 236, !47, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !81, i64 280, !88, i64 4264, !61, i64 4296, !61, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !41, i64 4376, !41, i64 4378, !47, i64 4380, !61, i64 4384, !89, i64 4400, !90, i64 4416, !93, i64 4600, !40, i64 4608, !94, i64 4616, !40, i64 4640, !95, i64 4648, !95, i64 4656, !83, i64 4664, !84, i64 4824, !96, i64 4888, !40, i64 4952}
!80 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !41, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !40, i64 112}
!81 = !{!"RenderData", !82, i64 0, !40, i64 248, !40, i64 256, !85, i64 264, !86, i64 328, !47, i64 400, !47, i64 404, !47, i64 408, !35, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !41, i64 432, !41, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !47, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !47, i64 484, !47, i64 488, !41, i64 492, !41, i64 494, !47, i64 496, !47, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !47, i64 516, !47, i64 520, !47, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !70, i64 544, !70, i64 560, !71, i64 576, !61, i64 592, !41, i64 608, !41, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !47, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !35, i64 660, !35, i64 664, !41, i64 668, !41, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !47, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !47, i64 2520, !41, i64 2524, !41, i64 2526, !35, i64 2528, !35, i64 2532, !41, i64 2536, !41, i64 2538, !35, i64 2540, !41, i64 2544, !41, i64 2546, !47, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !35, i64 2560, !35, i64 2564, !40, i64 2568, !47, i64 2576, !35, i64 2580, !36, i64 2584, !87, i64 2616, !47, i64 3976, !47, i64 3980}
!82 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !83, i64 24, !84, i64 184}
!83 = !{!"ColorManagedViewSettings", !47, i64 0, !47, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !40, i64 144, !40, i64 152}
!84 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!85 = !{!"QuicktimeCodecSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !41, i64 48, !41, i64 50, !47, i64 52, !47, i64 56, !47, i64 60}
!86 = !{!"FFMpegCodecData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !35, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !40, i64 64}
!87 = !{!"BakeData", !82, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!88 = !{!"AudioData", !47, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !47, i64 16, !41, i64 20, !41, i64 22, !35, i64 24, !35, i64 28}
!89 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!90 = !{!"GameData", !89, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !91, i64 40, !41, i64 64, !41, i64 66, !35, i64 68, !92, i64 72, !35, i64 128, !35, i64 132, !47, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!91 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 12, !40, i64 16}
!92 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !47, i64 40, !35, i64 44, !35, i64 48, !41, i64 52, !41, i64 54}
!93 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!94 = !{!"PhysicsSettings", !36, i64 0, !47, i64 12, !47, i64 16, !47, i64 20}
!95 = !{!"long", !36, i64 0}
!96 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!97 = !{!49, !40, i64 40}
!98 = distinct !{!98, !57}
!99 = !{!100, !40, i64 32}
!100 = !{!"Base", !40, i64 0, !40, i64 8, !47, i64 16, !47, i64 20, !47, i64 24, !41, i64 28, !41, i64 30, !40, i64 32}
!101 = !{!102, !40, i64 120}
!102 = !{!"Object", !80, i64 0, !40, i64 120, !40, i64 128, !41, i64 136, !41, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !36, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !103, i64 312, !40, i64 360, !61, i64 368, !61, i64 384, !61, i64 400, !61, i64 416, !47, i64 432, !47, i64 436, !40, i64 440, !40, i64 448, !47, i64 456, !47, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !47, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !61, i64 1056, !61, i64 1072, !61, i64 1088, !61, i64 1104, !35, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !47, i64 1144, !47, i64 1148, !40, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !61, i64 1176, !61, i64 1192, !61, i64 1208, !61, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !35, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !95, i64 1304, !95, i64 1312, !47, i64 1320, !47, i64 1324, !61, i64 1328, !61, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !36, i64 1384, !40, i64 1392, !61, i64 1400, !40, i64 1416}
!103 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!104 = distinct !{!104, !57}
!105 = !{!106, !41, i64 72}
!106 = !{!"FCurve", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !61, i64 32, !40, i64 48, !40, i64 56, !47, i64 64, !35, i64 68, !41, i64 72, !41, i64 74, !47, i64 76, !40, i64 80, !47, i64 88, !36, i64 92, !35, i64 104, !35, i64 108}
!107 = !{!106, !40, i64 16}
!108 = !{!109, !47, i64 32}
!109 = !{!"bActionGroup", !40, i64 0, !40, i64 8, !61, i64 16, !47, i64 32, !47, i64 36, !36, i64 40, !110, i64 104}
!110 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 12, !41, i64 14}
!111 = !{!112, !40, i64 0}
!112 = !{!"AnimData", !40, i64 0, !40, i64 8, !40, i64 16, !61, i64 24, !40, i64 40, !61, i64 48, !61, i64 64, !47, i64 80, !47, i64 84, !41, i64 88, !41, i64 90, !35, i64 92}
!113 = !{!114, !40, i64 24}
!114 = !{!"bAction", !80, i64 0, !61, i64 120, !61, i64 136, !61, i64 152, !61, i64 168, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196}
!115 = !{!106, !47, i64 64}
!116 = !{!106, !40, i64 48}
!117 = distinct !{!117, !57}
!118 = !{!119, !40, i64 16}
!119 = !{!"DLRBT_Tree", !40, i64 0, !40, i64 8, !40, i64 16}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = !{!123, !47, i64 40}
!123 = !{!"bGPDlayer", !40, i64 0, !40, i64 8, !61, i64 16, !40, i64 32, !47, i64 40, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 64}
!124 = distinct !{!124, !57}
!125 = !{!126, !36, i64 142}
!126 = !{!"MaskLayer", !40, i64 0, !40, i64 8, !36, i64 16, !61, i64 80, !61, i64 96, !40, i64 112, !40, i64 120, !35, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!127 = distinct !{!127, !57}
!128 = !{!"keyframes_draw.c:add_bezt_to_keycolumns_list"}
!129 = !{!"keyframes_draw.c:add_bezt_to_keyblocks_list"}
!130 = !{!131, !36, i64 52}
!131 = !{!"BezTriple", !36, i64 0, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !35, i64 56, !35, i64 60, !35, i64 64, !36, i64 68}
!132 = !{!131, !36, i64 51}
!133 = !{!131, !36, i64 53}
!134 = distinct !{!134, !57}
!135 = !{!43, !40, i64 32}
!136 = !{!43, !41, i64 56}
!137 = !{!"keyframes_draw.c:set_touched_actkeycolumn"}
!138 = !{!39, !41, i64 48}
!139 = !{!39, !40, i64 16}
!140 = !{!39, !40, i64 24}
!141 = !{!"keyframes_draw.c:set_touched_actkeyblock"}
!142 = !{!43, !40, i64 16}
!143 = !{!43, !40, i64 24}
!144 = !{!"keyframes_draw.c:add_gpframe_to_keycolumns_list"}
!145 = !{!"keyframes_draw.c:add_masklay_to_keycolumns_list"}
!146 = !{!"keyframes_draw.c:compare_ak_bezt"}
!147 = !{!"keyframes_draw.c:nalloc_ak_bezt"}
!148 = !{!131, !36, i64 54}
!149 = !{!"keyframes_draw.c:nupdate_ak_bezt"}
!150 = !{!"keyframes_draw.c:bezts_to_new_actkeyblock"}
!151 = !{!43, !35, i64 44}
!152 = !{!"keyframes_draw.c:compare_ak_gpframe"}
!153 = !{!154, !47, i64 32}
!154 = !{!"bGPDframe", !40, i64 0, !40, i64 8, !61, i64 16, !47, i64 32, !47, i64 36}
!155 = !{!"keyframes_draw.c:nalloc_ak_gpframe"}
!156 = !{!154, !47, i64 36}
!157 = !{!"keyframes_draw.c:nupdate_ak_gpframe"}
!158 = !{!"keyframes_draw.c:compare_ak_masklayshape"}
!159 = !{!160, !47, i64 28}
!160 = !{!"MaskLayerShape", !40, i64 0, !40, i64 8, !40, i64 16, !47, i64 24, !47, i64 28, !36, i64 32, !36, i64 33}
!161 = !{!"keyframes_draw.c:nalloc_ak_masklayshape"}
!162 = !{!160, !36, i64 32}
!163 = !{!"keyframes_draw.c:nupdate_ak_masklayshape"}
