; ModuleID = 'blender/source/blender/editors/transform/transform_manipulator.c'
source_filename = "blender/source/blender/editors/transform/transform_manipulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
%struct.PTCacheEditKey = type { ptr, ptr, ptr, ptr, [3 x float], float, float, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@drawflags = internal unnamed_addr global i32 65535, align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [23 x i8] c"constraint_orientation\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"constraint_axis\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_resize\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_trackball\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_rotate\00", align 1
@__const.test_manipulator_axis.twdrawflag_axis = private unnamed_addr constant [3 x i32] [i32 257, i32 514, i32 1028], align 4
@__const.draw_manipulator_scale.axis_order = private unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@__const.drawsolidcube.cube = private unnamed_addr constant [8 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00]], align 16
@__const.draw_manipulator_translate.axis_order = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimbal_axis(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %0) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #9
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 26
  %19 = load i16, ptr %18, align 4, !tbaa !46
  %20 = add i16 %19, 1
  %21 = icmp ult i16 %20, 2
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 22
  call void @eulO_to_gimbal_axis(ptr noundef nonnull %3, ptr noundef nonnull %23, i16 noundef signext %19) #9
  br label %30

24:                                               ; preds = %17
  %25 = icmp eq i16 %19, -1
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 24
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 25
  %29 = load float, ptr %28, align 8, !tbaa !48
  call fastcc void @axis_angle_to_gimbal_axis(ptr noundef nonnull %3, ptr noundef nonnull %27, float noundef %29)
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %3) #9
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %35, i64 0, i32 29
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %38) #9
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %4) #9
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %39) #9
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  br label %42

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %41) #9
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  br label %42

42:                                               ; preds = %40, %37
  call void @normalize_m3(ptr noundef %1) #9
  br label %43

43:                                               ; preds = %24, %42
  %44 = phi i8 [ 1, %42 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  br label %45

45:                                               ; preds = %14, %43
  %46 = phi i8 [ %44, %43 ], [ undef, %14 ]
  br i1 %16, label %66, label %67

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %49 = load i16, ptr %48, align 8, !tbaa !51
  %50 = add i16 %49, 1
  %51 = icmp ult i16 %50, 2
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  tail call void @eulO_to_gimbal_axis(ptr noundef %1, ptr noundef nonnull %53, i16 noundef signext %49) #9
  br label %60

54:                                               ; preds = %47
  %55 = icmp eq i16 %49, -1
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %59 = load float, ptr %58, align 8, !tbaa !52
  tail call fastcc void @axis_angle_to_gimbal_axis(ptr noundef %1, ptr noundef nonnull %57, float noundef %59)
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !53
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #9
  %65 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %65) #9
  call void @normalize_m3(ptr noundef nonnull %7) #9
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #9
  br label %67

66:                                               ; preds = %45, %2
  br label %67

67:                                               ; preds = %60, %64, %54, %45, %66
  %68 = phi i8 [ %46, %45 ], [ 0, %66 ], [ 0, %54 ], [ 1, %64 ], [ 1, %60 ]
  ret i8 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

declare void @eulO_to_gimbal_axis(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @axis_angle_to_gimbal_axis(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = load float, ptr %1, align 4, !tbaa !54
  %10 = fneg float %9
  %11 = fmul float %6, %10
  %12 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %11)
  store float %12, ptr %0, align 4, !tbaa !54
  %13 = load float, ptr %1, align 4, !tbaa !54
  %14 = load float, ptr %7, align 4, !tbaa !54
  %15 = fneg float %6
  %16 = fmul float %14, %15
  %17 = tail call float @llvm.fmuladd.f32(float %9, float %13, float %16)
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !54
  %19 = load float, ptr %5, align 4, !tbaa !54
  %20 = load float, ptr %1, align 4, !tbaa !54
  %21 = fneg float %8
  %22 = fmul float %20, %21
  %23 = tail call float @llvm.fmuladd.f32(float %6, float %19, float %22)
  %24 = getelementptr inbounds float, ptr %0, i64 2
  store float %23, ptr %24, align 4, !tbaa !54
  %25 = fmul float %17, %17
  %26 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %26)
  %28 = fcmp ogt float %27, 0x38AA95A5C0000000
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = tail call float @sqrtf(float noundef %27) #9
  %31 = fdiv float 1.000000e+00, %30
  %32 = load float, ptr %0, align 4, !tbaa !54
  %33 = fmul float %32, %31
  store float %33, ptr %0, align 4, !tbaa !54
  %34 = load float, ptr %18, align 4, !tbaa !54
  %35 = fmul float %31, %34
  store float %35, ptr %18, align 4, !tbaa !54
  %36 = load float, ptr %24, align 4, !tbaa !54
  %37 = fmul float %31, %36
  br label %39

38:                                               ; preds = %3
  store float 0.000000e+00, ptr %0, align 4, !tbaa !54
  store float 0.000000e+00, ptr %18, align 4, !tbaa !54
  br label %39

39:                                               ; preds = %29, %38
  %40 = phi float [ 0.000000e+00, %38 ], [ %37, %29 ]
  store float %40, ptr %24, align 4, !tbaa !54
  call void @axis_angle_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %1, float noundef %2) #9
  call void @mul_qt_v3(ptr noundef nonnull %4, ptr noundef nonnull %0) #9
  call void @axis_angle_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %1, float noundef 0x3FF921FB60000000) #9
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %42 = load float, ptr %0, align 4, !tbaa !54
  store float %42, ptr %41, align 4, !tbaa !54
  %43 = load float, ptr %18, align 4, !tbaa !54
  %44 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %43, ptr %44, align 4, !tbaa !54
  %45 = load float, ptr %24, align 4, !tbaa !54
  %46 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %45, ptr %46, align 4, !tbaa !54
  call void @mul_qt_v3(ptr noundef nonnull %4, ptr noundef nonnull %41) #9
  %47 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %48 = load float, ptr %1, align 4, !tbaa !54
  store float %48, ptr %47, align 4, !tbaa !54
  %49 = load float, ptr %5, align 4, !tbaa !54
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %49, ptr %50, align 4, !tbaa !54
  %51 = load float, ptr %7, align 4, !tbaa !54
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %51, ptr %52, align 4, !tbaa !54
  call void @normalize_m3(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_draw_manipulator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca %struct.BMEditSelection, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %18 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 42
  %23 = load i8, ptr %22, align 1, !tbaa !62
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %1128, label %26

26:                                               ; preds = %1
  %27 = and i8 %23, -3
  store i8 %27, ptr %22, align 1, !tbaa !62
  %28 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %30 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %31 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %32 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #9
  %33 = getelementptr inbounds %struct.ScrArea, ptr %28, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 30
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !81
  br label %43

43:                                               ; preds = %40, %26
  %44 = phi ptr [ %42, %40 ], [ null, %26 ]
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 16
  tail call void @unit_m4(ptr noundef nonnull %45) #9
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 31
  store i16 -1, ptr %46, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 10
  %48 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 10, i64 2
  store float 0x46293E5940000000, ptr %48, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 10, i64 1
  store float 0x46293E5940000000, ptr %49, align 4, !tbaa !54
  store float 0x46293E5940000000, ptr %47, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 11
  %51 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 11, i64 2
  store float 0xC6293E5940000000, ptr %51, align 4, !tbaa !54
  %52 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 11, i64 1
  store float 0xC6293E5940000000, ptr %52, align 4, !tbaa !54
  store float 0xC6293E5940000000, ptr %50, align 4, !tbaa !54
  %53 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 9
  store float 0.000000e+00, ptr %53, align 4, !tbaa !54
  %54 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 9, i64 1
  store float 0.000000e+00, ptr %54, align 4, !tbaa !54
  %55 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 9, i64 2
  store float 0.000000e+00, ptr %55, align 4, !tbaa !54
  %56 = icmp eq ptr %31, null
  br i1 %56, label %663, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 52
  %59 = load i32, ptr %58, align 8, !tbaa !85
  %60 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 22
  %61 = load i32, ptr %60, align 8, !tbaa !86
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %966, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !87
  switch i16 %66, label %650 [
    i16 1, label %67
    i16 25, label %242
    i16 2, label %365
    i16 3, label %365
    i16 5, label %531
    i16 22, label %584
  ]

67:                                               ; preds = %64
  %68 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %31) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %69 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %70 = load i16, ptr %69, align 2, !tbaa !88
  %71 = icmp eq i16 %70, 4
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 8, !tbaa !89
  %74 = call zeroext i8 @BM_select_history_active_get(ptr noundef %73, ptr noundef nonnull %3) #9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  call void @BM_editselection_center(ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %4) #9
  %77 = load float, ptr %4, align 4, !tbaa !54
  %78 = load float, ptr %53, align 4, !tbaa !54
  %79 = fadd float %77, %78
  store float %79, ptr %53, align 4, !tbaa !54
  %80 = getelementptr inbounds float, ptr %4, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !54
  %82 = load float, ptr %54, align 4, !tbaa !54
  %83 = fadd float %81, %82
  store float %83, ptr %54, align 4, !tbaa !54
  %84 = getelementptr inbounds float, ptr %4, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !54
  %86 = load float, ptr %55, align 4, !tbaa !54
  %87 = fadd float %85, %86
  store float %87, ptr %55, align 4, !tbaa !54
  br label %240

88:                                               ; preds = %72, %67
  %89 = load ptr, ptr %68, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %90 = getelementptr inbounds %struct.ToolSettings, ptr %32, i64 0, i32 8
  %91 = load i16, ptr %90, align 2, !tbaa !91
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br i1 %94, label %130, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %97, align 4, !tbaa !98
  %98 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %98, align 8, !tbaa !100
  store ptr @bmiter__elem_of_mesh_step, ptr %95, align 8, !tbaa !101
  %99 = getelementptr inbounds %struct.BMesh, ptr %89, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  store ptr %100, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %101 = load ptr, ptr %95, align 8, !tbaa !101
  %102 = call ptr %101(ptr noundef nonnull %5) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %238, label %104

104:                                              ; preds = %96, %125
  %105 = phi i32 [ %126, %125 ], [ 0, %96 ]
  %106 = phi ptr [ %128, %125 ], [ %102, %96 ]
  %107 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !106
  %109 = and i8 %108, 3
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  %112 = add nsw i32 %105, 1
  %113 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %113) #9
  %114 = load float, ptr %113, align 4, !tbaa !54
  %115 = load float, ptr %53, align 4, !tbaa !54
  %116 = fadd float %114, %115
  store float %116, ptr %53, align 4, !tbaa !54
  %117 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !54
  %119 = load float, ptr %54, align 4, !tbaa !54
  %120 = fadd float %118, %119
  store float %120, ptr %54, align 4, !tbaa !54
  %121 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !54
  %123 = load float, ptr %55, align 4, !tbaa !54
  %124 = fadd float %122, %123
  store float %124, ptr %55, align 4, !tbaa !54
  br label %125

125:                                              ; preds = %111, %104
  %126 = phi i32 [ %105, %104 ], [ %112, %111 ]
  %127 = load ptr, ptr %95, align 8, !tbaa !101
  %128 = call ptr %127(ptr noundef nonnull %5) #9
  %129 = icmp eq ptr %128, null
  br i1 %129, label %238, label %104, !llvm.loop !108

130:                                              ; preds = %88
  %131 = and i32 %92, 2
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %134 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %135 = getelementptr inbounds %struct.BMesh, ptr %89, i64 0, i32 9
  br i1 %132, label %187, label %136

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  store i8 1, ptr %133, align 4, !tbaa !98
  store ptr @bmiter__elem_of_mesh_begin, ptr %134, align 8, !tbaa !100
  store ptr @bmiter__elem_of_mesh_step, ptr %95, align 8, !tbaa !101
  %137 = load ptr, ptr %135, align 8, !tbaa !102
  store ptr %137, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %138 = load ptr, ptr %95, align 8, !tbaa !101
  %139 = call ptr %138(ptr noundef nonnull %5) #9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %185, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %143 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %144 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %145

145:                                              ; preds = %141, %180
  %146 = phi i32 [ 0, %141 ], [ %181, %180 ]
  %147 = phi ptr [ %139, %141 ], [ %183, %180 ]
  %148 = getelementptr inbounds %struct.BMHeader, ptr %147, i64 0, i32 3
  %149 = load i8, ptr %148, align 1, !tbaa !106
  %150 = and i8 %149, 2
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %145
  store i8 4, ptr %142, align 4, !tbaa !98
  store ptr @bmiter__edge_of_vert_begin, ptr %143, align 8, !tbaa !100
  store ptr @bmiter__edge_of_vert_step, ptr %144, align 8, !tbaa !101
  store ptr %147, ptr %6, align 8, !tbaa !105
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #9
  %153 = load ptr, ptr %144, align 8, !tbaa !101
  %154 = call ptr %153(ptr noundef nonnull %6) #9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %180, label %156

156:                                              ; preds = %152, %176
  %157 = phi ptr [ %178, %176 ], [ %154, %152 ]
  %158 = getelementptr inbounds %struct.BMHeader, ptr %157, i64 0, i32 3
  %159 = load i8, ptr %158, align 1, !tbaa !106
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %156
  %163 = add nsw i32 %146, 1
  %164 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %164) #9
  %165 = load float, ptr %164, align 4, !tbaa !54
  %166 = load float, ptr %53, align 4, !tbaa !54
  %167 = fadd float %165, %166
  store float %167, ptr %53, align 4, !tbaa !54
  %168 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !54
  %170 = load float, ptr %54, align 4, !tbaa !54
  %171 = fadd float %169, %170
  store float %171, ptr %54, align 4, !tbaa !54
  %172 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !54
  %174 = load float, ptr %55, align 4, !tbaa !54
  %175 = fadd float %173, %174
  store float %175, ptr %55, align 4, !tbaa !54
  br label %180

176:                                              ; preds = %156
  %177 = load ptr, ptr %144, align 8, !tbaa !101
  %178 = call ptr %177(ptr noundef nonnull %6) #9
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %156, !llvm.loop !111

180:                                              ; preds = %176, %152, %162, %145
  %181 = phi i32 [ %146, %145 ], [ %163, %162 ], [ %146, %152 ], [ %146, %176 ]
  %182 = load ptr, ptr %95, align 8, !tbaa !101
  %183 = call ptr %182(ptr noundef nonnull %5) #9
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %145, !llvm.loop !112

185:                                              ; preds = %180, %136
  %186 = phi i32 [ 0, %136 ], [ %181, %180 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %238

187:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  store i8 1, ptr %133, align 4, !tbaa !98
  store ptr @bmiter__elem_of_mesh_begin, ptr %134, align 8, !tbaa !100
  store ptr @bmiter__elem_of_mesh_step, ptr %95, align 8, !tbaa !101
  %188 = load ptr, ptr %135, align 8, !tbaa !102
  store ptr %188, ptr %5, align 8, !tbaa !105
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %189 = load ptr, ptr %95, align 8, !tbaa !101
  %190 = call ptr %189(ptr noundef nonnull %5) #9
  %191 = icmp eq ptr %190, null
  br i1 %191, label %236, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %194 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %195 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  br label %196

196:                                              ; preds = %192, %231
  %197 = phi i32 [ 0, %192 ], [ %232, %231 ]
  %198 = phi ptr [ %190, %192 ], [ %234, %231 ]
  %199 = getelementptr inbounds %struct.BMHeader, ptr %198, i64 0, i32 3
  %200 = load i8, ptr %199, align 1, !tbaa !106
  %201 = and i8 %200, 2
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %231

203:                                              ; preds = %196
  store i8 5, ptr %193, align 4, !tbaa !98
  store ptr @bmiter__face_of_vert_begin, ptr %194, align 8, !tbaa !100
  store ptr @bmiter__face_of_vert_step, ptr %195, align 8, !tbaa !101
  store ptr %198, ptr %7, align 8, !tbaa !105
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %7) #9
  %204 = load ptr, ptr %195, align 8, !tbaa !101
  %205 = call ptr %204(ptr noundef nonnull %7) #9
  %206 = icmp eq ptr %205, null
  br i1 %206, label %231, label %207

207:                                              ; preds = %203, %227
  %208 = phi ptr [ %229, %227 ], [ %205, %203 ]
  %209 = getelementptr inbounds %struct.BMHeader, ptr %208, i64 0, i32 3
  %210 = load i8, ptr %209, align 1, !tbaa !106
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %227, label %213

213:                                              ; preds = %207
  %214 = add nsw i32 %197, 1
  %215 = getelementptr inbounds %struct.BMVert, ptr %198, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %215) #9
  %216 = load float, ptr %215, align 4, !tbaa !54
  %217 = load float, ptr %53, align 4, !tbaa !54
  %218 = fadd float %216, %217
  store float %218, ptr %53, align 4, !tbaa !54
  %219 = getelementptr inbounds %struct.BMVert, ptr %198, i64 0, i32 2, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !54
  %221 = load float, ptr %54, align 4, !tbaa !54
  %222 = fadd float %220, %221
  store float %222, ptr %54, align 4, !tbaa !54
  %223 = getelementptr inbounds %struct.BMVert, ptr %198, i64 0, i32 2, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !54
  %225 = load float, ptr %55, align 4, !tbaa !54
  %226 = fadd float %224, %225
  store float %226, ptr %55, align 4, !tbaa !54
  br label %231

227:                                              ; preds = %207
  %228 = load ptr, ptr %195, align 8, !tbaa !101
  %229 = call ptr %228(ptr noundef nonnull %7) #9
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %207, !llvm.loop !113

231:                                              ; preds = %227, %203, %213, %196
  %232 = phi i32 [ %197, %196 ], [ %214, %213 ], [ %197, %203 ], [ %197, %227 ]
  %233 = load ptr, ptr %95, align 8, !tbaa !101
  %234 = call ptr %233(ptr noundef nonnull %5) #9
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %196, !llvm.loop !114

236:                                              ; preds = %231, %187
  %237 = phi i32 [ 0, %187 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %238

238:                                              ; preds = %125, %96, %236, %185
  %239 = phi i32 [ %186, %185 ], [ %237, %236 ], [ 0, %96 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %240

240:                                              ; preds = %238, %76
  %241 = phi i32 [ 1, %76 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %650

242:                                              ; preds = %64
  %243 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %244 = load ptr, ptr %243, align 8, !tbaa !115
  %245 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %246 = load i16, ptr %245, align 2, !tbaa !88
  %247 = icmp eq i16 %246, 4
  br i1 %247, label %248, label %297

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.bArmature, ptr %244, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !116
  %251 = icmp eq ptr %250, null
  br i1 %251, label %297, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 9
  %254 = load i32, ptr %253, align 4, !tbaa !118
  %255 = and i32 %254, 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 8
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %258) #9
  %259 = load float, ptr %258, align 4, !tbaa !54
  %260 = load float, ptr %53, align 4, !tbaa !54
  %261 = fadd float %259, %260
  store float %261, ptr %53, align 4, !tbaa !54
  %262 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 8, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !54
  %264 = load float, ptr %54, align 4, !tbaa !54
  %265 = fadd float %263, %264
  store float %265, ptr %54, align 4, !tbaa !54
  %266 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 8, i64 2
  %267 = load float, ptr %266, align 4, !tbaa !54
  %268 = load float, ptr %55, align 4, !tbaa !54
  %269 = fadd float %267, %268
  store float %269, ptr %55, align 4, !tbaa !54
  br label %270

270:                                              ; preds = %257, %252
  %271 = phi i32 [ 1, %257 ], [ 0, %252 ]
  %272 = load i32, ptr %253, align 4, !tbaa !118
  %273 = and i32 %272, 6
  %274 = icmp eq i32 %273, 4
  br i1 %274, label %289, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 7
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %276) #9
  %277 = load float, ptr %276, align 4, !tbaa !54
  %278 = load float, ptr %53, align 4, !tbaa !54
  %279 = fadd float %277, %278
  store float %279, ptr %53, align 4, !tbaa !54
  %280 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 7, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !54
  %282 = load float, ptr %54, align 4, !tbaa !54
  %283 = fadd float %281, %282
  store float %283, ptr %54, align 4, !tbaa !54
  %284 = getelementptr inbounds %struct.EditBone, ptr %250, i64 0, i32 7, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !54
  %286 = load float, ptr %55, align 4, !tbaa !54
  %287 = fadd float %285, %286
  store float %287, ptr %55, align 4, !tbaa !54
  %288 = add nuw nsw i32 %271, 1
  br label %289

289:                                              ; preds = %275, %270
  %290 = phi i32 [ %288, %275 ], [ %271, %270 ]
  %291 = load i32, ptr %253, align 4, !tbaa !118
  %292 = and i32 %291, 524288
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %650, label %294

294:                                              ; preds = %289
  %295 = load i16, ptr %46, align 2, !tbaa !120
  %296 = and i16 %295, -1856
  store i16 %296, ptr %46, align 2, !tbaa !120
  br label %650

297:                                              ; preds = %248, %242
  %298 = getelementptr inbounds %struct.bArmature, ptr %244, i64 0, i32 4
  %299 = load ptr, ptr %298, align 8, !tbaa !121
  %300 = load ptr, ptr %299, align 8, !tbaa !122
  %301 = icmp eq ptr %300, null
  br i1 %301, label %650, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.bArmature, ptr %244, i64 0, i32 15
  br label %304

304:                                              ; preds = %302, %361
  %305 = phi ptr [ %300, %302 ], [ %363, %361 ]
  %306 = phi i32 [ 0, %302 ], [ %362, %361 ]
  %307 = load i32, ptr %303, align 8, !tbaa !123
  %308 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 10
  %309 = load i32, ptr %308, align 8, !tbaa !124
  %310 = and i32 %309, %307
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %361, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 9
  %314 = load i32, ptr %313, align 4, !tbaa !118
  %315 = and i32 %314, 1024
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %361

317:                                              ; preds = %312
  %318 = and i32 %314, 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %334, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 8
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %321) #9
  %322 = load float, ptr %321, align 4, !tbaa !54
  %323 = load float, ptr %53, align 4, !tbaa !54
  %324 = fadd float %322, %323
  store float %324, ptr %53, align 4, !tbaa !54
  %325 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 8, i64 1
  %326 = load float, ptr %325, align 4, !tbaa !54
  %327 = load float, ptr %54, align 4, !tbaa !54
  %328 = fadd float %326, %327
  store float %328, ptr %54, align 4, !tbaa !54
  %329 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 8, i64 2
  %330 = load float, ptr %329, align 4, !tbaa !54
  %331 = load float, ptr %55, align 4, !tbaa !54
  %332 = fadd float %330, %331
  store float %332, ptr %55, align 4, !tbaa !54
  %333 = add nsw i32 %306, 1
  br label %334

334:                                              ; preds = %320, %317
  %335 = phi i32 [ %333, %320 ], [ %306, %317 ]
  %336 = load i32, ptr %313, align 4, !tbaa !118
  %337 = and i32 %336, 2
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %353, label %339

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 7
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %340) #9
  %341 = load float, ptr %340, align 4, !tbaa !54
  %342 = load float, ptr %53, align 4, !tbaa !54
  %343 = fadd float %341, %342
  store float %343, ptr %53, align 4, !tbaa !54
  %344 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 7, i64 1
  %345 = load float, ptr %344, align 4, !tbaa !54
  %346 = load float, ptr %54, align 4, !tbaa !54
  %347 = fadd float %345, %346
  store float %347, ptr %54, align 4, !tbaa !54
  %348 = getelementptr inbounds %struct.EditBone, ptr %305, i64 0, i32 7, i64 2
  %349 = load float, ptr %348, align 4, !tbaa !54
  %350 = load float, ptr %55, align 4, !tbaa !54
  %351 = fadd float %349, %350
  store float %351, ptr %55, align 4, !tbaa !54
  %352 = add nsw i32 %335, 1
  br label %353

353:                                              ; preds = %339, %334
  %354 = phi i32 [ %352, %339 ], [ %335, %334 ]
  %355 = load i32, ptr %313, align 4, !tbaa !118
  %356 = and i32 %355, 524289
  %357 = icmp eq i32 %356, 524289
  br i1 %357, label %358, label %361

358:                                              ; preds = %353
  %359 = load i16, ptr %46, align 2, !tbaa !120
  %360 = and i16 %359, -1856
  store i16 %360, ptr %46, align 2, !tbaa !120
  br label %361

361:                                              ; preds = %358, %353, %312, %304
  %362 = phi i32 [ %354, %353 ], [ %306, %312 ], [ %306, %304 ], [ %354, %358 ]
  %363 = load ptr, ptr %305, align 8, !tbaa !122
  %364 = icmp eq ptr %363, null
  br i1 %364, label %650, label %304, !llvm.loop !125

365:                                              ; preds = %64, %64
  %366 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %367 = load ptr, ptr %366, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %368 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %369 = load i16, ptr %368, align 2, !tbaa !88
  %370 = icmp eq i16 %369, 4
  br i1 %370, label %371, label %386

371:                                              ; preds = %365
  %372 = call zeroext i8 @ED_curve_active_center(ptr noundef %367, ptr noundef nonnull %8) #9
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %386, label %374

374:                                              ; preds = %371
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %8) #9
  %375 = load float, ptr %8, align 4, !tbaa !54
  %376 = load float, ptr %53, align 4, !tbaa !54
  %377 = fadd float %375, %376
  store float %377, ptr %53, align 4, !tbaa !54
  %378 = getelementptr inbounds float, ptr %8, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !54
  %380 = load float, ptr %54, align 4, !tbaa !54
  %381 = fadd float %379, %380
  store float %381, ptr %54, align 4, !tbaa !54
  %382 = getelementptr inbounds float, ptr %8, i64 2
  %383 = load float, ptr %382, align 4, !tbaa !54
  %384 = load float, ptr %55, align 4, !tbaa !54
  %385 = fadd float %383, %384
  store float %385, ptr %55, align 4, !tbaa !54
  br label %529

386:                                              ; preds = %371, %365
  %387 = call ptr @BKE_curve_editNurbs_get(ptr noundef %367) #9
  %388 = load ptr, ptr %387, align 8, !tbaa !122
  %389 = icmp eq ptr %388, null
  br i1 %389, label %529, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.Curve, ptr %367, i64 0, i32 16
  br label %392

392:                                              ; preds = %390, %525
  %393 = phi ptr [ %388, %390 ], [ %527, %525 ]
  %394 = phi i32 [ 0, %390 ], [ %526, %525 ]
  %395 = getelementptr inbounds %struct.Nurb, ptr %393, i64 0, i32 2
  %396 = load i16, ptr %395, align 8, !tbaa !126
  %397 = icmp eq i16 %396, 1
  %398 = getelementptr inbounds %struct.Nurb, ptr %393, i64 0, i32 6
  %399 = load i32, ptr %398, align 8, !tbaa !128
  br i1 %397, label %400, label %491

400:                                              ; preds = %392
  %401 = icmp eq i32 %399, 0
  br i1 %401, label %525, label %402

402:                                              ; preds = %400
  %403 = getelementptr inbounds %struct.Nurb, ptr %393, i64 0, i32 18
  %404 = load ptr, ptr %403, align 8, !tbaa !129
  br label %405

405:                                              ; preds = %402, %487
  %406 = phi i32 [ %409, %487 ], [ %399, %402 ]
  %407 = phi i32 [ %488, %487 ], [ %394, %402 ]
  %408 = phi ptr [ %489, %487 ], [ %404, %402 ]
  %409 = add nsw i32 %406, -1
  %410 = load i16, ptr %391, align 8, !tbaa !130
  %411 = and i16 %410, 1
  %412 = icmp eq i16 %411, 0
  %413 = getelementptr inbounds %struct.BezTriple, ptr %408, i64 0, i32 8
  %414 = load i8, ptr %413, align 4, !tbaa !133
  %415 = and i8 %414, 1
  %416 = icmp eq i8 %415, 0
  br i1 %412, label %428, label %417

417:                                              ; preds = %405
  br i1 %416, label %487, label %418

418:                                              ; preds = %417
  %419 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 1
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %419) #9
  %420 = load float, ptr %419, align 4, !tbaa !54
  %421 = load float, ptr %53, align 4, !tbaa !54
  %422 = fadd float %420, %421
  store float %422, ptr %53, align 4, !tbaa !54
  %423 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 1, i64 1
  %424 = load float, ptr %423, align 4, !tbaa !54
  %425 = load float, ptr %54, align 4, !tbaa !54
  %426 = fadd float %424, %425
  store float %426, ptr %54, align 4, !tbaa !54
  %427 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 1, i64 2
  br label %480

428:                                              ; preds = %405
  br i1 %416, label %439, label %429

429:                                              ; preds = %428
  %430 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 1
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %430) #9
  %431 = load float, ptr %430, align 4, !tbaa !54
  %432 = load float, ptr %53, align 4, !tbaa !54
  %433 = fadd float %431, %432
  store float %433, ptr %53, align 4, !tbaa !54
  %434 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 1, i64 1
  %435 = load float, ptr %434, align 4, !tbaa !54
  %436 = load float, ptr %54, align 4, !tbaa !54
  %437 = fadd float %435, %436
  store float %437, ptr %54, align 4, !tbaa !54
  %438 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 1, i64 2
  br label %480

439:                                              ; preds = %428
  %440 = getelementptr inbounds %struct.BezTriple, ptr %408, i64 0, i32 7
  %441 = load i8, ptr %440, align 1, !tbaa !135
  %442 = and i8 %441, 1
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %461, label %444

444:                                              ; preds = %439
  %445 = load i16, ptr %368, align 2, !tbaa !88
  %446 = icmp eq i16 %445, 2
  %447 = zext i1 %446 to i64
  %448 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 %447
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef %448) #9
  %449 = load float, ptr %448, align 4, !tbaa !54
  %450 = load float, ptr %53, align 4, !tbaa !54
  %451 = fadd float %449, %450
  store float %451, ptr %53, align 4, !tbaa !54
  %452 = getelementptr inbounds float, ptr %448, i64 1
  %453 = load float, ptr %452, align 4, !tbaa !54
  %454 = load float, ptr %54, align 4, !tbaa !54
  %455 = fadd float %453, %454
  store float %455, ptr %54, align 4, !tbaa !54
  %456 = getelementptr inbounds float, ptr %448, i64 2
  %457 = load float, ptr %456, align 4, !tbaa !54
  %458 = load float, ptr %55, align 4, !tbaa !54
  %459 = fadd float %457, %458
  store float %459, ptr %55, align 4, !tbaa !54
  %460 = add nsw i32 %407, 1
  br label %461

461:                                              ; preds = %444, %439
  %462 = phi i32 [ %460, %444 ], [ %407, %439 ]
  %463 = getelementptr inbounds %struct.BezTriple, ptr %408, i64 0, i32 9
  %464 = load i8, ptr %463, align 1, !tbaa !136
  %465 = and i8 %464, 1
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %487, label %467

467:                                              ; preds = %461
  %468 = load i16, ptr %368, align 2, !tbaa !88
  %469 = icmp eq i16 %468, 2
  %470 = select i1 %469, i64 1, i64 2
  %471 = getelementptr inbounds [3 x [3 x float]], ptr %408, i64 0, i64 %470
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %471) #9
  %472 = load float, ptr %471, align 4, !tbaa !54
  %473 = load float, ptr %53, align 4, !tbaa !54
  %474 = fadd float %472, %473
  store float %474, ptr %53, align 4, !tbaa !54
  %475 = getelementptr inbounds float, ptr %471, i64 1
  %476 = load float, ptr %475, align 4, !tbaa !54
  %477 = load float, ptr %54, align 4, !tbaa !54
  %478 = fadd float %476, %477
  store float %478, ptr %54, align 4, !tbaa !54
  %479 = getelementptr inbounds float, ptr %471, i64 2
  br label %480

480:                                              ; preds = %418, %429, %467
  %481 = phi ptr [ %479, %467 ], [ %438, %429 ], [ %427, %418 ]
  %482 = phi i32 [ %462, %467 ], [ %407, %429 ], [ %407, %418 ]
  %483 = load float, ptr %481, align 4, !tbaa !54
  %484 = load float, ptr %55, align 4, !tbaa !54
  %485 = fadd float %483, %484
  store float %485, ptr %55, align 4, !tbaa !54
  %486 = add nsw i32 %482, 1
  br label %487

487:                                              ; preds = %480, %461, %417
  %488 = phi i32 [ %407, %417 ], [ %462, %461 ], [ %486, %480 ]
  %489 = getelementptr inbounds %struct.BezTriple, ptr %408, i64 1
  %490 = icmp eq i32 %409, 0
  br i1 %490, label %525, label %405, !llvm.loop !137

491:                                              ; preds = %392
  %492 = getelementptr inbounds %struct.Nurb, ptr %393, i64 0, i32 7
  %493 = load i32, ptr %492, align 4, !tbaa !138
  %494 = mul nsw i32 %493, %399
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %525, label %496

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.Nurb, ptr %393, i64 0, i32 17
  %498 = load ptr, ptr %497, align 8, !tbaa !139
  br label %499

499:                                              ; preds = %496, %521
  %500 = phi i32 [ %503, %521 ], [ %494, %496 ]
  %501 = phi i32 [ %522, %521 ], [ %394, %496 ]
  %502 = phi ptr [ %523, %521 ], [ %498, %496 ]
  %503 = add nsw i32 %500, -1
  %504 = getelementptr inbounds %struct.BPoint, ptr %502, i64 0, i32 3
  %505 = load i16, ptr %504, align 4, !tbaa !140
  %506 = and i16 %505, 1
  %507 = icmp eq i16 %506, 0
  br i1 %507, label %521, label %508

508:                                              ; preds = %499
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef %502) #9
  %509 = load float, ptr %502, align 4, !tbaa !54
  %510 = load float, ptr %53, align 4, !tbaa !54
  %511 = fadd float %509, %510
  store float %511, ptr %53, align 4, !tbaa !54
  %512 = getelementptr inbounds float, ptr %502, i64 1
  %513 = load float, ptr %512, align 4, !tbaa !54
  %514 = load float, ptr %54, align 4, !tbaa !54
  %515 = fadd float %513, %514
  store float %515, ptr %54, align 4, !tbaa !54
  %516 = getelementptr inbounds float, ptr %502, i64 2
  %517 = load float, ptr %516, align 4, !tbaa !54
  %518 = load float, ptr %55, align 4, !tbaa !54
  %519 = fadd float %517, %518
  store float %519, ptr %55, align 4, !tbaa !54
  %520 = add nsw i32 %501, 1
  br label %521

521:                                              ; preds = %508, %499
  %522 = phi i32 [ %520, %508 ], [ %501, %499 ]
  %523 = getelementptr inbounds %struct.BPoint, ptr %502, i64 1
  %524 = icmp eq i32 %503, 0
  br i1 %524, label %525, label %499, !llvm.loop !142

525:                                              ; preds = %521, %487, %491, %400
  %526 = phi i32 [ %394, %400 ], [ %394, %491 ], [ %488, %487 ], [ %522, %521 ]
  %527 = load ptr, ptr %393, align 8, !tbaa !122
  %528 = icmp eq ptr %527, null
  br i1 %528, label %529, label %392, !llvm.loop !143

529:                                              ; preds = %525, %386, %374
  %530 = phi i32 [ 1, %374 ], [ 0, %386 ], [ %526, %525 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %650

531:                                              ; preds = %64
  %532 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %533 = load ptr, ptr %532, align 8, !tbaa !115
  %534 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %535 = load i16, ptr %534, align 2, !tbaa !88
  %536 = icmp eq i16 %535, 4
  br i1 %536, label %537, label %554

537:                                              ; preds = %531
  %538 = getelementptr inbounds %struct.MetaBall, ptr %533, i64 0, i32 18
  %539 = load ptr, ptr %538, align 8, !tbaa !144
  %540 = icmp eq ptr %539, null
  br i1 %540, label %554, label %541

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.MetaElem, ptr %539, i64 0, i32 7
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %542) #9
  %543 = load float, ptr %542, align 4, !tbaa !54
  %544 = load float, ptr %53, align 4, !tbaa !54
  %545 = fadd float %543, %544
  store float %545, ptr %53, align 4, !tbaa !54
  %546 = getelementptr inbounds %struct.MetaElem, ptr %539, i64 0, i32 8
  %547 = load float, ptr %546, align 4, !tbaa !54
  %548 = load float, ptr %54, align 4, !tbaa !54
  %549 = fadd float %547, %548
  store float %549, ptr %54, align 4, !tbaa !54
  %550 = getelementptr inbounds %struct.MetaElem, ptr %539, i64 0, i32 9
  %551 = load float, ptr %550, align 4, !tbaa !54
  %552 = load float, ptr %55, align 4, !tbaa !54
  %553 = fadd float %551, %552
  store float %553, ptr %55, align 4, !tbaa !54
  br label %650

554:                                              ; preds = %537, %531
  %555 = getelementptr inbounds %struct.MetaBall, ptr %533, i64 0, i32 4
  %556 = load ptr, ptr %555, align 8, !tbaa !146
  %557 = load ptr, ptr %556, align 8, !tbaa !122
  %558 = icmp eq ptr %557, null
  br i1 %558, label %650, label %559

559:                                              ; preds = %554, %580
  %560 = phi ptr [ %582, %580 ], [ %557, %554 ]
  %561 = phi i32 [ %581, %580 ], [ 0, %554 ]
  %562 = getelementptr inbounds %struct.MetaElem, ptr %560, i64 0, i32 4
  %563 = load i16, ptr %562, align 2, !tbaa !147
  %564 = and i16 %563, 1
  %565 = icmp eq i16 %564, 0
  br i1 %565, label %580, label %566

566:                                              ; preds = %559
  %567 = getelementptr inbounds %struct.MetaElem, ptr %560, i64 0, i32 7
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %567) #9
  %568 = load float, ptr %567, align 4, !tbaa !54
  %569 = load float, ptr %53, align 4, !tbaa !54
  %570 = fadd float %568, %569
  store float %570, ptr %53, align 4, !tbaa !54
  %571 = getelementptr inbounds %struct.MetaElem, ptr %560, i64 0, i32 8
  %572 = load float, ptr %571, align 4, !tbaa !54
  %573 = load float, ptr %54, align 4, !tbaa !54
  %574 = fadd float %572, %573
  store float %574, ptr %54, align 4, !tbaa !54
  %575 = getelementptr inbounds %struct.MetaElem, ptr %560, i64 0, i32 9
  %576 = load float, ptr %575, align 4, !tbaa !54
  %577 = load float, ptr %55, align 4, !tbaa !54
  %578 = fadd float %576, %577
  store float %578, ptr %55, align 4, !tbaa !54
  %579 = add nsw i32 %561, 1
  br label %580

580:                                              ; preds = %566, %559
  %581 = phi i32 [ %579, %566 ], [ %561, %559 ]
  %582 = load ptr, ptr %560, align 8, !tbaa !122
  %583 = icmp eq ptr %582, null
  br i1 %583, label %650, label %559, !llvm.loop !149

584:                                              ; preds = %64
  %585 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %586 = load ptr, ptr %585, align 8, !tbaa !115
  %587 = getelementptr inbounds %struct.Lattice, ptr %586, i64 0, i32 26
  %588 = load ptr, ptr %587, align 8, !tbaa !150
  %589 = load ptr, ptr %588, align 8, !tbaa !152
  %590 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %591 = load i16, ptr %590, align 2, !tbaa !88
  %592 = icmp eq i16 %591, 4
  br i1 %592, label %593, label %608

593:                                              ; preds = %584
  %594 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %589) #9
  %595 = icmp eq ptr %594, null
  br i1 %595, label %608, label %596

596:                                              ; preds = %593
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %594) #9
  %597 = load float, ptr %594, align 4, !tbaa !54
  %598 = load float, ptr %53, align 4, !tbaa !54
  %599 = fadd float %597, %598
  store float %599, ptr %53, align 4, !tbaa !54
  %600 = getelementptr inbounds float, ptr %594, i64 1
  %601 = load float, ptr %600, align 4, !tbaa !54
  %602 = load float, ptr %54, align 4, !tbaa !54
  %603 = fadd float %601, %602
  store float %603, ptr %54, align 4, !tbaa !54
  %604 = getelementptr inbounds float, ptr %594, i64 2
  %605 = load float, ptr %604, align 4, !tbaa !54
  %606 = load float, ptr %55, align 4, !tbaa !54
  %607 = fadd float %605, %606
  store float %607, ptr %55, align 4, !tbaa !54
  br label %650

608:                                              ; preds = %593, %584
  %609 = getelementptr inbounds %struct.Lattice, ptr %589, i64 0, i32 2
  %610 = load i16, ptr %609, align 8, !tbaa !154
  %611 = sext i16 %610 to i32
  %612 = getelementptr inbounds %struct.Lattice, ptr %589, i64 0, i32 3
  %613 = load i16, ptr %612, align 2, !tbaa !155
  %614 = sext i16 %613 to i32
  %615 = mul nsw i32 %614, %611
  %616 = getelementptr inbounds %struct.Lattice, ptr %589, i64 0, i32 4
  %617 = load i16, ptr %616, align 4, !tbaa !156
  %618 = sext i16 %617 to i32
  %619 = mul nsw i32 %615, %618
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %650, label %621

621:                                              ; preds = %608
  %622 = getelementptr inbounds %struct.Lattice, ptr %589, i64 0, i32 21
  %623 = load ptr, ptr %622, align 8, !tbaa !157
  br label %624

624:                                              ; preds = %621, %646
  %625 = phi i32 [ %628, %646 ], [ %619, %621 ]
  %626 = phi ptr [ %648, %646 ], [ %623, %621 ]
  %627 = phi i32 [ %647, %646 ], [ 0, %621 ]
  %628 = add nsw i32 %625, -1
  %629 = getelementptr inbounds %struct.BPoint, ptr %626, i64 0, i32 3
  %630 = load i16, ptr %629, align 4, !tbaa !140
  %631 = and i16 %630, 1
  %632 = icmp eq i16 %631, 0
  br i1 %632, label %646, label %633

633:                                              ; preds = %624
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef %626) #9
  %634 = load float, ptr %626, align 4, !tbaa !54
  %635 = load float, ptr %53, align 4, !tbaa !54
  %636 = fadd float %634, %635
  store float %636, ptr %53, align 4, !tbaa !54
  %637 = getelementptr inbounds float, ptr %626, i64 1
  %638 = load float, ptr %637, align 4, !tbaa !54
  %639 = load float, ptr %54, align 4, !tbaa !54
  %640 = fadd float %638, %639
  store float %640, ptr %54, align 4, !tbaa !54
  %641 = getelementptr inbounds float, ptr %626, i64 2
  %642 = load float, ptr %641, align 4, !tbaa !54
  %643 = load float, ptr %55, align 4, !tbaa !54
  %644 = fadd float %642, %643
  store float %644, ptr %55, align 4, !tbaa !54
  %645 = add nsw i32 %627, 1
  br label %646

646:                                              ; preds = %633, %624
  %647 = phi i32 [ %645, %633 ], [ %627, %624 ]
  %648 = getelementptr inbounds %struct.BPoint, ptr %626, i64 1
  %649 = icmp eq i32 %628, 0
  br i1 %649, label %650, label %624, !llvm.loop !158

650:                                              ; preds = %646, %580, %361, %608, %554, %297, %596, %541, %529, %294, %289, %240, %64
  %651 = phi i32 [ %241, %240 ], [ %530, %529 ], [ 1, %541 ], [ 0, %64 ], [ 1, %596 ], [ %290, %289 ], [ %290, %294 ], [ 0, %297 ], [ 0, %554 ], [ 0, %608 ], [ %362, %361 ], [ %581, %580 ], [ %647, %646 ]
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %922, label %653

653:                                              ; preds = %650
  %654 = sitofp i32 %651 to float
  %655 = fdiv float 1.000000e+00, %654
  %656 = load float, ptr %53, align 4, !tbaa !54
  %657 = fmul float %655, %656
  store float %657, ptr %53, align 4, !tbaa !54
  %658 = load float, ptr %54, align 4, !tbaa !54
  %659 = fmul float %655, %658
  store float %659, ptr %54, align 4, !tbaa !54
  %660 = load float, ptr %55, align 4, !tbaa !54
  %661 = fmul float %655, %660
  store float %661, ptr %55, align 4, !tbaa !54
  %662 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %662, ptr noundef nonnull %53) #9
  call void @mul_m4_v3(ptr noundef nonnull %662, ptr noundef nonnull %47) #9
  call void @mul_m4_v3(ptr noundef nonnull %662, ptr noundef nonnull %50) #9
  br label %922

663:                                              ; preds = %43
  %664 = icmp eq ptr %44, null
  br i1 %664, label %838, label %665

665:                                              ; preds = %663
  %666 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 27
  %667 = load i32, ptr %666, align 8, !tbaa !34
  %668 = and i32 %667, 64
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %754, label %670

670:                                              ; preds = %665
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 2, ptr %9, align 4, !tbaa !159
  %671 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 52
  %672 = load i32, ptr %671, align 8, !tbaa !85
  %673 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 22
  %674 = load i32, ptr %673, align 8, !tbaa !86
  %675 = and i32 %674, %672
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %752, label %677

677:                                              ; preds = %670
  %678 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %679 = load i16, ptr %678, align 2, !tbaa !88
  %680 = icmp eq i16 %679, 4
  br i1 %680, label %681, label %703

681:                                              ; preds = %677
  %682 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %44) #9
  %683 = icmp eq ptr %682, null
  br i1 %683, label %703, label %684

684:                                              ; preds = %681
  %685 = getelementptr inbounds %struct.bPoseChannel, ptr %682, i64 0, i32 12
  %686 = load ptr, ptr %685, align 8, !tbaa !49
  %687 = icmp eq ptr %686, null
  br i1 %687, label %739, label %688

688:                                              ; preds = %684
  %689 = getelementptr inbounds %struct.bPoseChannel, ptr %682, i64 0, i32 31
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %689) #9
  %690 = load float, ptr %689, align 4, !tbaa !54
  %691 = load float, ptr %53, align 4, !tbaa !54
  %692 = fadd float %690, %691
  store float %692, ptr %53, align 4, !tbaa !54
  %693 = getelementptr inbounds %struct.bPoseChannel, ptr %682, i64 0, i32 31, i64 1
  %694 = load float, ptr %693, align 4, !tbaa !54
  %695 = load float, ptr %54, align 4, !tbaa !54
  %696 = fadd float %694, %695
  store float %696, ptr %54, align 4, !tbaa !54
  %697 = getelementptr inbounds %struct.bPoseChannel, ptr %682, i64 0, i32 31, i64 2
  %698 = load float, ptr %697, align 4, !tbaa !54
  %699 = load float, ptr %55, align 4, !tbaa !54
  %700 = fadd float %698, %699
  store float %700, ptr %55, align 4, !tbaa !54
  %701 = getelementptr inbounds %struct.bPoseChannel, ptr %682, i64 0, i32 7
  %702 = load i16, ptr %701, align 4, !tbaa !160
  tail call fastcc void @protectflag_to_drawflags(i16 noundef signext %702, ptr noundef nonnull %46)
  br label %739

703:                                              ; preds = %681, %677
  %704 = call i32 @count_set_pose_transflags(ptr noundef nonnull %9, i16 noundef signext 0, ptr noundef nonnull %44) #9
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %739, label %706

706:                                              ; preds = %703
  %707 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 18
  %708 = load ptr, ptr %707, align 8, !tbaa !161
  %709 = load ptr, ptr %708, align 8, !tbaa !122
  %710 = icmp eq ptr %709, null
  br i1 %710, label %739, label %711

711:                                              ; preds = %706, %736
  %712 = phi ptr [ %737, %736 ], [ %709, %706 ]
  %713 = getelementptr inbounds %struct.bPoseChannel, ptr %712, i64 0, i32 12
  %714 = load ptr, ptr %713, align 8, !tbaa !49
  %715 = icmp eq ptr %714, null
  br i1 %715, label %736, label %716

716:                                              ; preds = %711
  %717 = getelementptr inbounds %struct.Bone, ptr %714, i64 0, i32 10
  %718 = load i32, ptr %717, align 8, !tbaa !162
  %719 = and i32 %718, 8
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %736, label %721

721:                                              ; preds = %716
  %722 = getelementptr inbounds %struct.bPoseChannel, ptr %712, i64 0, i32 31
  call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %722) #9
  %723 = load float, ptr %722, align 4, !tbaa !54
  %724 = load float, ptr %53, align 4, !tbaa !54
  %725 = fadd float %723, %724
  store float %725, ptr %53, align 4, !tbaa !54
  %726 = getelementptr inbounds %struct.bPoseChannel, ptr %712, i64 0, i32 31, i64 1
  %727 = load float, ptr %726, align 4, !tbaa !54
  %728 = load float, ptr %54, align 4, !tbaa !54
  %729 = fadd float %727, %728
  store float %729, ptr %54, align 4, !tbaa !54
  %730 = getelementptr inbounds %struct.bPoseChannel, ptr %712, i64 0, i32 31, i64 2
  %731 = load float, ptr %730, align 4, !tbaa !54
  %732 = load float, ptr %55, align 4, !tbaa !54
  %733 = fadd float %731, %732
  store float %733, ptr %55, align 4, !tbaa !54
  %734 = getelementptr inbounds %struct.bPoseChannel, ptr %712, i64 0, i32 7
  %735 = load i16, ptr %734, align 4, !tbaa !160
  call fastcc void @protectflag_to_drawflags(i16 noundef signext %735, ptr noundef nonnull %46)
  br label %736

736:                                              ; preds = %721, %716, %711
  %737 = load ptr, ptr %712, align 8, !tbaa !122
  %738 = icmp eq ptr %737, null
  br i1 %738, label %739, label %711, !llvm.loop !164

739:                                              ; preds = %736, %706, %703, %688, %684
  %740 = phi i32 [ 0, %703 ], [ 1, %688 ], [ 0, %684 ], [ %704, %706 ], [ %704, %736 ]
  %741 = phi i1 [ true, %703 ], [ false, %688 ], [ %687, %684 ], [ false, %706 ], [ false, %736 ]
  br i1 %741, label %752, label %742

742:                                              ; preds = %739
  %743 = sitofp i32 %740 to float
  %744 = fdiv float 1.000000e+00, %743
  %745 = load float, ptr %53, align 4, !tbaa !54
  %746 = fmul float %744, %745
  store float %746, ptr %53, align 4, !tbaa !54
  %747 = load float, ptr %54, align 4, !tbaa !54
  %748 = fmul float %744, %747
  store float %748, ptr %54, align 4, !tbaa !54
  %749 = load float, ptr %55, align 4, !tbaa !54
  %750 = fmul float %744, %749
  store float %750, ptr %55, align 4, !tbaa !54
  %751 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %751, ptr noundef nonnull %53) #9
  call void @mul_m4_v3(ptr noundef nonnull %751, ptr noundef nonnull %47) #9
  call void @mul_m4_v3(ptr noundef nonnull %751, ptr noundef nonnull %50) #9
  br label %752

752:                                              ; preds = %742, %739, %670
  %753 = phi i32 [ 0, %670 ], [ %740, %742 ], [ %740, %739 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br i1 %676, label %966, label %922

754:                                              ; preds = %665
  %755 = and i32 %667, 30
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %922

757:                                              ; preds = %754
  %758 = and i32 %667, 32
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %838, label %760

760:                                              ; preds = %757
  %761 = tail call ptr @PE_get_current(ptr noundef %30, ptr noundef nonnull %44) #9
  %762 = icmp eq ptr %761, null
  br i1 %762, label %922, label %763

763:                                              ; preds = %760
  %764 = getelementptr inbounds %struct.PTCacheEdit, ptr %761, i64 0, i32 11
  %765 = load i32, ptr %764, align 8, !tbaa !165
  %766 = icmp sgt i32 %765, 0
  br i1 %766, label %767, label %826

767:                                              ; preds = %763
  %768 = getelementptr inbounds %struct.PTCacheEdit, ptr %761, i64 0, i32 2
  %769 = load ptr, ptr %768, align 8, !tbaa !168
  br label %770

770:                                              ; preds = %767, %820
  %771 = phi ptr [ %823, %820 ], [ %769, %767 ]
  %772 = phi i32 [ %822, %820 ], [ 0, %767 ]
  %773 = phi i32 [ %821, %820 ], [ 0, %767 ]
  %774 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %771, i64 0, i32 2
  %775 = load i16, ptr %774, align 4, !tbaa !169
  %776 = and i16 %775, 8
  %777 = icmp eq i16 %776, 0
  br i1 %777, label %778, label %820

778:                                              ; preds = %770
  %779 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %771, i64 0, i32 1
  %780 = load i32, ptr %779, align 8, !tbaa !171
  %781 = icmp sgt i32 %780, 0
  br i1 %781, label %782, label %820

782:                                              ; preds = %778
  %783 = load ptr, ptr %771, align 8, !tbaa !172
  br label %784

784:                                              ; preds = %782, %814
  %785 = phi i32 [ %816, %814 ], [ 0, %782 ]
  %786 = phi ptr [ %817, %814 ], [ %783, %782 ]
  %787 = phi i32 [ %815, %814 ], [ %773, %782 ]
  %788 = getelementptr inbounds %struct.PTCacheEditKey, ptr %786, i64 0, i32 7
  %789 = load i16, ptr %788, align 4, !tbaa !173
  %790 = zext i16 %789 to i32
  %791 = and i32 %790, 1
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %814, label %793

793:                                              ; preds = %784
  %794 = and i32 %790, 8
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %798, label %796

796:                                              ; preds = %793
  %797 = getelementptr inbounds %struct.PTCacheEditKey, ptr %786, i64 0, i32 4
  br label %800

798:                                              ; preds = %793
  %799 = load ptr, ptr %786, align 8, !tbaa !175
  br label %800

800:                                              ; preds = %798, %796
  %801 = phi ptr [ %797, %796 ], [ %799, %798 ]
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef %801) #9
  %802 = load float, ptr %801, align 4, !tbaa !54
  %803 = load float, ptr %53, align 4, !tbaa !54
  %804 = fadd float %802, %803
  store float %804, ptr %53, align 4, !tbaa !54
  %805 = getelementptr inbounds float, ptr %801, i64 1
  %806 = load float, ptr %805, align 4, !tbaa !54
  %807 = load float, ptr %54, align 4, !tbaa !54
  %808 = fadd float %806, %807
  store float %808, ptr %54, align 4, !tbaa !54
  %809 = getelementptr inbounds float, ptr %801, i64 2
  %810 = load float, ptr %809, align 4, !tbaa !54
  %811 = load float, ptr %55, align 4, !tbaa !54
  %812 = fadd float %810, %811
  store float %812, ptr %55, align 4, !tbaa !54
  %813 = add nsw i32 %787, 1
  br label %814

814:                                              ; preds = %800, %784
  %815 = phi i32 [ %813, %800 ], [ %787, %784 ]
  %816 = add nuw nsw i32 %785, 1
  %817 = getelementptr inbounds %struct.PTCacheEditKey, ptr %786, i64 1
  %818 = load i32, ptr %779, align 8, !tbaa !171
  %819 = icmp slt i32 %816, %818
  br i1 %819, label %784, label %820, !llvm.loop !176

820:                                              ; preds = %814, %778, %770
  %821 = phi i32 [ %773, %770 ], [ %773, %778 ], [ %815, %814 ]
  %822 = add nuw nsw i32 %772, 1
  %823 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %771, i64 1
  %824 = load i32, ptr %764, align 8, !tbaa !165
  %825 = icmp slt i32 %822, %824
  br i1 %825, label %770, label %826, !llvm.loop !177

826:                                              ; preds = %820, %763
  %827 = phi i32 [ 0, %763 ], [ %821, %820 ]
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %922, label %829

829:                                              ; preds = %826
  %830 = sitofp i32 %827 to float
  %831 = fdiv float 1.000000e+00, %830
  %832 = load float, ptr %53, align 4, !tbaa !54
  %833 = fmul float %831, %832
  store float %833, ptr %53, align 4, !tbaa !54
  %834 = load float, ptr %54, align 4, !tbaa !54
  %835 = fmul float %831, %834
  store float %835, ptr %54, align 4, !tbaa !54
  %836 = load float, ptr %55, align 4, !tbaa !54
  %837 = fmul float %831, %836
  store float %837, ptr %55, align 4, !tbaa !54
  br label %922

838:                                              ; preds = %757, %663
  %839 = load ptr, ptr %37, align 8, !tbaa !64
  %840 = icmp eq ptr %839, null
  br i1 %840, label %844, label %841

841:                                              ; preds = %838
  %842 = getelementptr inbounds %struct.Base, ptr %839, i64 0, i32 7
  %843 = load ptr, ptr %842, align 8, !tbaa !81
  br label %844

844:                                              ; preds = %841, %838
  %845 = phi ptr [ %843, %841 ], [ null, %838 ]
  %846 = icmp eq ptr %845, null
  br i1 %846, label %853, label %847

847:                                              ; preds = %844
  %848 = getelementptr inbounds %struct.Object, ptr %845, i64 0, i32 53
  %849 = load i16, ptr %848, align 4, !tbaa !178
  %850 = and i16 %849, 1
  %851 = icmp eq i16 %850, 0
  %852 = select i1 %851, ptr null, ptr %845
  br label %853

853:                                              ; preds = %847, %844
  %854 = phi ptr [ %852, %847 ], [ null, %844 ]
  %855 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 5
  %856 = load ptr, ptr %855, align 8, !tbaa !122
  %857 = icmp eq ptr %856, null
  br i1 %857, label %909, label %858

858:                                              ; preds = %853
  %859 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 22
  br label %860

860:                                              ; preds = %858, %904
  %861 = phi ptr [ %856, %858 ], [ %907, %904 ]
  %862 = phi ptr [ %854, %858 ], [ %906, %904 ]
  %863 = phi i32 [ 0, %858 ], [ %905, %904 ]
  %864 = getelementptr inbounds %struct.Base, ptr %861, i64 0, i32 4
  %865 = load i32, ptr %864, align 8, !tbaa !179
  %866 = and i32 %865, 1
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %904, label %868

868:                                              ; preds = %860
  %869 = getelementptr inbounds %struct.Base, ptr %861, i64 0, i32 2
  %870 = load i32, ptr %869, align 8, !tbaa !180
  %871 = load i32, ptr %859, align 8, !tbaa !86
  %872 = and i32 %871, %870
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %904, label %874

874:                                              ; preds = %868
  %875 = getelementptr inbounds %struct.Base, ptr %861, i64 0, i32 7
  %876 = load ptr, ptr %875, align 8, !tbaa !81
  %877 = getelementptr inbounds %struct.ID, ptr %876, i64 0, i32 3
  %878 = load ptr, ptr %877, align 8, !tbaa !181
  %879 = icmp eq ptr %878, null
  br i1 %879, label %880, label %904

880:                                              ; preds = %874
  %881 = getelementptr inbounds %struct.Object, ptr %876, i64 0, i32 102
  %882 = load i8, ptr %881, align 8, !tbaa !182
  %883 = and i8 %882, 1
  %884 = icmp eq i8 %883, 0
  br i1 %884, label %885, label %904

885:                                              ; preds = %880
  %886 = icmp eq ptr %862, null
  %887 = select i1 %886, ptr %876, ptr %862
  %888 = getelementptr inbounds %struct.Object, ptr %876, i64 0, i32 47, i64 3
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef nonnull %888) #9
  %889 = load float, ptr %888, align 4, !tbaa !54
  %890 = load float, ptr %53, align 4, !tbaa !54
  %891 = fadd float %889, %890
  store float %891, ptr %53, align 4, !tbaa !54
  %892 = getelementptr inbounds %struct.Object, ptr %876, i64 0, i32 47, i64 3, i64 1
  %893 = load float, ptr %892, align 4, !tbaa !54
  %894 = load float, ptr %54, align 4, !tbaa !54
  %895 = fadd float %893, %894
  store float %895, ptr %54, align 4, !tbaa !54
  %896 = getelementptr inbounds %struct.Object, ptr %876, i64 0, i32 47, i64 3, i64 2
  %897 = load float, ptr %896, align 4, !tbaa !54
  %898 = load float, ptr %55, align 4, !tbaa !54
  %899 = fadd float %897, %898
  store float %899, ptr %55, align 4, !tbaa !54
  %900 = load ptr, ptr %875, align 8, !tbaa !81
  %901 = getelementptr inbounds %struct.Object, ptr %900, i64 0, i32 56
  %902 = load i16, ptr %901, align 2, !tbaa !183
  tail call fastcc void @protectflag_to_drawflags(i16 noundef signext %902, ptr noundef nonnull %46)
  %903 = add nsw i32 %863, 1
  br label %904

904:                                              ; preds = %885, %880, %874, %868, %860
  %905 = phi i32 [ %903, %885 ], [ %863, %880 ], [ %863, %874 ], [ %863, %868 ], [ %863, %860 ]
  %906 = phi ptr [ %887, %885 ], [ %862, %880 ], [ %862, %874 ], [ %862, %868 ], [ %862, %860 ]
  %907 = load ptr, ptr %861, align 8, !tbaa !122
  %908 = icmp eq ptr %907, null
  br i1 %908, label %909, label %860, !llvm.loop !184

909:                                              ; preds = %904, %853
  %910 = phi i32 [ 0, %853 ], [ %905, %904 ]
  %911 = phi ptr [ %854, %853 ], [ %906, %904 ]
  %912 = icmp eq i32 %910, 0
  br i1 %912, label %922, label %913

913:                                              ; preds = %909
  %914 = sitofp i32 %910 to float
  %915 = fdiv float 1.000000e+00, %914
  %916 = load float, ptr %53, align 4, !tbaa !54
  %917 = fmul float %915, %916
  store float %917, ptr %53, align 4, !tbaa !54
  %918 = load float, ptr %54, align 4, !tbaa !54
  %919 = fmul float %915, %918
  store float %919, ptr %54, align 4, !tbaa !54
  %920 = load float, ptr %55, align 4, !tbaa !54
  %921 = fmul float %915, %920
  store float %921, ptr %55, align 4, !tbaa !54
  br label %922

922:                                              ; preds = %913, %909, %829, %826, %760, %754, %752, %653, %650
  %923 = phi i32 [ %651, %653 ], [ 0, %650 ], [ %753, %752 ], [ 0, %754 ], [ %910, %913 ], [ 0, %909 ], [ %827, %829 ], [ 0, %826 ], [ 0, %760 ]
  %924 = phi ptr [ %31, %653 ], [ %31, %650 ], [ %44, %752 ], [ %44, %754 ], [ %911, %913 ], [ %911, %909 ], [ %44, %829 ], [ %44, %826 ], [ %44, %760 ]
  %925 = icmp ne ptr %924, null
  %926 = icmp ne i32 %923, 0
  %927 = and i1 %925, %926
  br i1 %927, label %928, label %966

928:                                              ; preds = %922
  %929 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 41
  %930 = load i8, ptr %929, align 4, !tbaa !185
  switch i8 %930, label %961 [
    i8 0, label %966
    i8 4, label %931
    i8 2, label %936
    i8 1, label %947
    i8 3, label %959
  ]

931:                                              ; preds = %928
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #9
  %932 = call zeroext i8 @gimbal_axis(ptr noundef nonnull %924, ptr noundef nonnull %10)
  %933 = icmp eq i8 %932, 0
  br i1 %933, label %935, label %934

934:                                              ; preds = %931
  call void @copy_m4_m3(ptr noundef nonnull %45, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  br label %966

935:                                              ; preds = %931
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  br label %936

936:                                              ; preds = %935, %928
  br i1 %56, label %937, label %942

937:                                              ; preds = %936
  %938 = getelementptr inbounds %struct.Object, ptr %924, i64 0, i32 27
  %939 = load i32, ptr %938, align 8, !tbaa !34
  %940 = and i32 %939, 64
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %947, label %942

942:                                              ; preds = %937, %936
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #9
  %943 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %944 = load i16, ptr %943, align 2, !tbaa !88
  %945 = icmp eq i16 %944, 4
  %946 = zext i1 %945 to i8
  call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext %946) #9
  call void @copy_m4_m3(ptr noundef nonnull %45, ptr noundef nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #9
  br label %966

947:                                              ; preds = %937, %928
  %948 = getelementptr inbounds %struct.Object, ptr %924, i64 0, i32 27
  %949 = load i32, ptr %948, align 8, !tbaa !34
  %950 = and i32 %949, 64
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %957, label %952

952:                                              ; preds = %947
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #9
  %953 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 27
  %954 = load i16, ptr %953, align 2, !tbaa !88
  %955 = icmp eq i16 %954, 4
  %956 = zext i1 %955 to i8
  call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %12, i8 noundef zeroext %956) #9
  call void @copy_m4_m3(ptr noundef nonnull %45, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #9
  br label %966

957:                                              ; preds = %947
  %958 = getelementptr inbounds %struct.Object, ptr %924, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %45, ptr noundef nonnull %958) #9
  call void @normalize_m4(ptr noundef nonnull %45) #9
  br label %966

959:                                              ; preds = %928
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #9
  %960 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %13, ptr noundef nonnull %960) #9
  call void @normalize_m3(ptr noundef nonnull %13) #9
  call void @copy_m4_m3(ptr noundef nonnull %45, ptr noundef nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  br label %966

961:                                              ; preds = %928
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #9
  %962 = call zeroext i8 @applyTransformOrientation(ptr noundef %0, ptr noundef nonnull %14, ptr noundef null) #9
  %963 = icmp eq i8 %962, 0
  br i1 %963, label %965, label %964

964:                                              ; preds = %961
  call void @copy_m4_m3(ptr noundef nonnull %45, ptr noundef nonnull %14) #9
  br label %965

965:                                              ; preds = %964, %961
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #9
  br label %966

966:                                              ; preds = %934, %57, %752, %922, %928, %942, %952, %957, %959, %965
  %967 = phi i32 [ 0, %752 ], [ 0, %57 ], [ 1, %934 ], [ 1, %942 ], [ 1, %952 ], [ 1, %957 ], [ 1, %959 ], [ 1, %965 ], [ 1, %928 ], [ %923, %922 ]
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %1128, label %969

969:                                              ; preds = %966
  %970 = load i8, ptr %22, align 1, !tbaa !62
  %971 = or i8 %970, 2
  store i8 %971, ptr %22, align 1, !tbaa !62
  %972 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 27
  %973 = load i16, ptr %972, align 2, !tbaa !88
  switch i16 %973, label %1027 [
    i16 1, label %1017
    i16 3, label %1007
    i16 2, label %1007
    i16 4, label %974
    i16 0, label %1003
  ]

974:                                              ; preds = %969
  %975 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 7
  %976 = load ptr, ptr %975, align 8, !tbaa !186
  %977 = icmp eq ptr %976, null
  br i1 %977, label %978, label %1003

978:                                              ; preds = %974
  %979 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 6
  %980 = load ptr, ptr %979, align 8, !tbaa !64
  %981 = icmp eq ptr %980, null
  br i1 %981, label %985, label %982

982:                                              ; preds = %978
  %983 = getelementptr inbounds %struct.Base, ptr %980, i64 0, i32 7
  %984 = load ptr, ptr %983, align 8, !tbaa !81
  br label %985

985:                                              ; preds = %978, %982
  %986 = phi ptr [ %984, %982 ], [ null, %978 ]
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1003, label %988

988:                                              ; preds = %985
  %989 = getelementptr inbounds %struct.Object, ptr %986, i64 0, i32 27
  %990 = load i32, ptr %989, align 8, !tbaa !34
  %991 = and i32 %990, 64
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %1003

993:                                              ; preds = %988
  %994 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3
  %995 = getelementptr inbounds %struct.Object, ptr %986, i64 0, i32 47, i64 3
  %996 = load float, ptr %995, align 4, !tbaa !54
  store float %996, ptr %994, align 4, !tbaa !54
  %997 = getelementptr inbounds %struct.Object, ptr %986, i64 0, i32 47, i64 3, i64 1
  %998 = load float, ptr %997, align 4, !tbaa !54
  %999 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3, i64 1
  store float %998, ptr %999, align 4, !tbaa !54
  %1000 = getelementptr inbounds %struct.Object, ptr %986, i64 0, i32 47, i64 3, i64 2
  %1001 = load float, ptr %1000, align 4, !tbaa !54
  %1002 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3, i64 2
  store float %1001, ptr %1002, align 4, !tbaa !54
  br label %1027

1003:                                             ; preds = %969, %988, %985, %974
  %1004 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3
  %1005 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 10
  %1006 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 11
  call void @mid_v3_v3v3(ptr noundef nonnull %1004, ptr noundef nonnull %1005, ptr noundef nonnull %1006) #9
  br label %1027

1007:                                             ; preds = %969, %969
  %1008 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3
  %1009 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 9
  %1010 = load float, ptr %1009, align 4, !tbaa !54
  store float %1010, ptr %1008, align 4, !tbaa !54
  %1011 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 9, i64 1
  %1012 = load float, ptr %1011, align 4, !tbaa !54
  %1013 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3, i64 1
  store float %1012, ptr %1013, align 4, !tbaa !54
  %1014 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 9, i64 2
  %1015 = load float, ptr %1014, align 4, !tbaa !54
  %1016 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3, i64 2
  store float %1015, ptr %1016, align 4, !tbaa !54
  br label %1027

1017:                                             ; preds = %969
  %1018 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3
  %1019 = call ptr @ED_view3d_cursor3d_get(ptr noundef %17, ptr noundef %19) #9
  %1020 = load float, ptr %1019, align 4, !tbaa !54
  store float %1020, ptr %1018, align 4, !tbaa !54
  %1021 = getelementptr inbounds float, ptr %1019, i64 1
  %1022 = load float, ptr %1021, align 4, !tbaa !54
  %1023 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3, i64 1
  store float %1022, ptr %1023, align 4, !tbaa !54
  %1024 = getelementptr inbounds float, ptr %1019, i64 2
  %1025 = load float, ptr %1024, align 4, !tbaa !54
  %1026 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3, i64 2
  store float %1025, ptr %1026, align 4, !tbaa !54
  br label %1027

1027:                                             ; preds = %969, %993, %1003, %1017, %1007
  %1028 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16
  %1029 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 16, i64 3
  %1030 = call float @ED_view3d_pixel_size(ptr noundef %21, ptr noundef nonnull %1029) #9
  %1031 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !187
  %1032 = sitofp i16 %1031 to float
  %1033 = fmul float %1030, %1032
  call void @mul_mat3_m4_fl(ptr noundef nonnull %1028, float noundef %1033) #9
  %1034 = call float @mat4_to_scale(ptr noundef nonnull %1028) #9
  %1035 = call float @llvm.fabs.f32(float %1034)
  %1036 = fcmp olt float %1035, 0x3E7AD7F2A0000000
  br i1 %1036, label %1128, label %1037

1037:                                             ; preds = %1027
  %1038 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %1039 = getelementptr inbounds %struct.RegionView3D, ptr %1038, i64 0, i32 16, i64 3
  call void @ED_view3d_global_to_vector(ptr noundef %1038, ptr noundef nonnull %1039, ptr noundef nonnull %2) #9
  %1040 = getelementptr inbounds float, ptr %2, i64 1
  %1041 = getelementptr inbounds float, ptr %2, i64 2
  %1042 = getelementptr inbounds %struct.RegionView3D, ptr %1038, i64 0, i32 31
  br label %1043

1043:                                             ; preds = %1037, %1085
  %1044 = phi i64 [ 0, %1037 ], [ %1086, %1085 ]
  %1045 = getelementptr inbounds %struct.RegionView3D, ptr %1038, i64 0, i32 16, i64 %1044
  %1046 = load float, ptr %1045, align 4, !tbaa !54
  %1047 = getelementptr inbounds float, ptr %1045, i64 1
  %1048 = load float, ptr %1047, align 4, !tbaa !54
  %1049 = fmul float %1048, %1048
  %1050 = call float @llvm.fmuladd.f32(float %1046, float %1046, float %1049)
  %1051 = getelementptr inbounds float, ptr %1045, i64 2
  %1052 = load float, ptr %1051, align 4, !tbaa !54
  %1053 = call float @llvm.fmuladd.f32(float %1052, float %1052, float %1050)
  %1054 = fcmp ogt float %1053, 0x38AA95A5C0000000
  br i1 %1054, label %1055, label %1064

1055:                                             ; preds = %1043
  %1056 = call float @sqrtf(float noundef %1053) #9
  %1057 = fdiv float 1.000000e+00, %1056
  %1058 = load float, ptr %1045, align 4, !tbaa !54
  %1059 = fmul float %1058, %1057
  %1060 = load float, ptr %1047, align 4, !tbaa !54
  %1061 = fmul float %1057, %1060
  %1062 = load float, ptr %1051, align 4, !tbaa !54
  %1063 = fmul float %1057, %1062
  br label %1064

1064:                                             ; preds = %1055, %1043
  %1065 = phi float [ %1063, %1055 ], [ 0.000000e+00, %1043 ]
  %1066 = phi float [ %1061, %1055 ], [ 0.000000e+00, %1043 ]
  %1067 = phi float [ %1059, %1055 ], [ 0.000000e+00, %1043 ]
  %1068 = load float, ptr %2, align 4, !tbaa !54
  %1069 = load float, ptr %1040, align 4, !tbaa !54
  %1070 = fmul float %1066, %1069
  %1071 = call float @llvm.fmuladd.f32(float %1068, float %1067, float %1070)
  %1072 = load float, ptr %1041, align 4, !tbaa !54
  %1073 = call float @llvm.fmuladd.f32(float %1072, float %1065, float %1071)
  %1074 = call float @llvm.fabs.f32(float %1073)
  %1075 = fsub float 1.000000e+00, %1074
  %1076 = getelementptr inbounds %struct.RegionView3D, ptr %1038, i64 0, i32 37, i64 %1044
  store float %1075, ptr %1076, align 4, !tbaa !54
  %1077 = fcmp olt float %1075, 0x3F947AE140000000
  br i1 %1077, label %1078, label %1085

1078:                                             ; preds = %1064
  %1079 = getelementptr inbounds [3 x i32], ptr @__const.test_manipulator_axis.twdrawflag_axis, i64 0, i64 %1044
  %1080 = load i32, ptr %1079, align 4, !tbaa !159
  %1081 = load i16, ptr %1042, align 8, !tbaa !83
  %1082 = trunc i32 %1080 to i16
  %1083 = xor i16 %1082, -1
  %1084 = and i16 %1081, %1083
  store i16 %1084, ptr %1042, align 8, !tbaa !83
  br label %1085

1085:                                             ; preds = %1078, %1064
  %1086 = add nuw nsw i64 %1044, 1
  %1087 = icmp eq i64 %1086, 3
  br i1 %1087, label %1088, label %1043, !llvm.loop !191

1088:                                             ; preds = %1085
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  %1089 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 31
  %1090 = load i16, ptr %1089, align 8, !tbaa !83
  %1091 = sext i16 %1090 to i32
  store i32 %1091, ptr @drawflags, align 4, !tbaa !159
  %1092 = load i8, ptr %22, align 1, !tbaa !62
  %1093 = and i8 %1092, 2
  %1094 = icmp eq i8 %1093, 0
  br i1 %1094, label %1128, label %1095

1095:                                             ; preds = %1088
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  call void @glEnable(i32 noundef 3042) #9
  %1096 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 40
  %1097 = load i8, ptr %1096, align 1, !tbaa !192
  %1098 = zext i8 %1097 to i32
  %1099 = and i32 %1098, 2
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1113, label %1101

1101:                                             ; preds = %1095
  %1102 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !193
  %1103 = icmp eq i16 %1102, 3
  br i1 %1103, label %1104, label %1111

1104:                                             ; preds = %1101
  %1105 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !195
  %1106 = and i16 %1105, 3
  %1107 = icmp eq i16 %1106, 0
  %1108 = load i32, ptr @drawflags, align 4, !tbaa !159
  br i1 %1107, label %1110, label %1109

1109:                                             ; preds = %1104
  call fastcc void @draw_manipulator_rotate_cyl(ptr noundef %19, ptr noundef %21, i32 noundef %1108, i32 noundef %1098, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %1113

1110:                                             ; preds = %1104
  call fastcc void @draw_manipulator_rotate_cyl(ptr noundef %19, ptr noundef %21, i32 noundef %1108, i32 noundef %1098, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %1113

1111:                                             ; preds = %1101
  %1112 = load i32, ptr @drawflags, align 4, !tbaa !159
  call fastcc void @draw_manipulator_rotate(ptr noundef %19, ptr noundef %21, i32 noundef %1112, i32 noundef %1098, i8 noundef zeroext 0)
  br label %1113

1113:                                             ; preds = %1111, %1110, %1109, %1095
  %1114 = load i8, ptr %1096, align 1, !tbaa !192
  %1115 = zext i8 %1114 to i32
  %1116 = and i32 %1115, 4
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1120, label %1118

1118:                                             ; preds = %1113
  %1119 = load i32, ptr @drawflags, align 4, !tbaa !159
  call fastcc void @draw_manipulator_scale(ptr noundef %19, ptr noundef %21, i32 noundef %1119, i32 noundef %1115, i8 noundef zeroext 0)
  br label %1120

1120:                                             ; preds = %1118, %1113
  %1121 = load i8, ptr %1096, align 1, !tbaa !192
  %1122 = zext i8 %1121 to i32
  %1123 = and i32 %1122, 1
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1120
  %1126 = load i32, ptr @drawflags, align 4, !tbaa !159
  call fastcc void @draw_manipulator_translate(ptr noundef %19, ptr noundef %21, i32 noundef %1126, i32 noundef %1122, i8 noundef zeroext 0)
  br label %1127

1127:                                             ; preds = %1125, %1120
  call void @glDisable(i32 noundef 3042) #9
  br label %1128

1128:                                             ; preds = %1088, %1127, %1027, %966, %1
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #2

declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_manipulator_rotate_cyl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [4 x float]], align 16
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !196
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3F847AE140000000
  %20 = fmul float %19, 2.500000e-01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_manipulator_scale.axis_order, i64 12, i1 false)
  %21 = and i32 %2, 248
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %179, label %23

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  call void @ED_view3d_global_to_vector(ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull %12) #9
  %26 = load float, ptr %24, align 4, !tbaa !54
  %27 = load float, ptr %12, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !54
  %30 = getelementptr inbounds float, ptr %12, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !54
  %32 = fmul float %29, %31
  %33 = call float @llvm.fmuladd.f32(float %26, float %27, float %32)
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = getelementptr inbounds float, ptr %12, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !54
  %38 = call float @llvm.fmuladd.f32(float %35, float %37, float %33)
  %39 = fneg float %38
  store float %39, ptr %11, align 4, !tbaa !54
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !54
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !54
  %44 = fmul float %31, %43
  %45 = call float @llvm.fmuladd.f32(float %41, float %27, float %44)
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !54
  %48 = call float @llvm.fmuladd.f32(float %47, float %37, float %45)
  %49 = fneg float %48
  %50 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !54
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !54
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !54
  %55 = fmul float %31, %54
  %56 = call float @llvm.fmuladd.f32(float %52, float %27, float %55)
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !54
  %59 = call float @llvm.fmuladd.f32(float %58, float %37, float %56)
  %60 = fneg float %59
  %61 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %60, ptr %61, align 4, !tbaa !54
  call void @axis_sort_v3(ptr noundef nonnull %11, ptr noundef nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @glPushMatrix() #9
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !54
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !54
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !54
  call void @glTranslatef(float noundef %63, float noundef %65, float noundef %67) #9
  %68 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %69 = load float, ptr %68, align 8, !tbaa !54
  %70 = fcmp ugt float %69, -1.000000e+00
  br i1 %70, label %71, label %76

71:                                               ; preds = %23
  %72 = fcmp ult float %69, 1.000000e+00
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = call float @acosf(float noundef %69) #9
  %75 = fmul float %74, -3.600000e+02
  br label %76

76:                                               ; preds = %23, %71, %73
  %77 = phi float [ %75, %73 ], [ 0xC091ABE4C0000000, %23 ], [ -0.000000e+00, %71 ]
  %78 = fdiv float %77, 0x400921FB60000000
  %79 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !54
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %82 = load float, ptr %81, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %84 = load float, ptr %83, align 4, !tbaa !54
  call void @glRotatef(float noundef %78, float noundef %80, float noundef %82, float noundef %84) #9
  %85 = load float, ptr %24, align 4, !tbaa !54
  %86 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !54
  %88 = fmul float %87, %87
  %89 = call float @llvm.fmuladd.f32(float %85, float %85, float %88)
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !54
  %92 = call float @llvm.fmuladd.f32(float %91, float %91, float %89)
  %93 = call float @sqrtf(float noundef %92) #9
  call void @glDisable(i32 noundef 2929) #9
  %94 = call ptr @gluNewQuadric() #9
  %95 = and i32 %2, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #9
  call void @unit_m4(ptr noundef nonnull %14) #9
  %98 = icmp eq i8 %6, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = call zeroext i8 @GPU_select_load_id(i32 noundef 64) #9
  br label %101

101:                                              ; preds = %99, %97
  call void @UI_ThemeColor(i32 noundef 32) #9
  %102 = getelementptr inbounds [4 x [4 x float]], ptr %14, i64 0, i64 3
  %103 = fmul float %93, 0x3FF3333340000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %102, float noundef %103, ptr noundef nonnull %14) #9
  %104 = icmp eq i8 %5, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %106 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %107 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %108 = fmul float %103, 0.000000e+00
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  store float %108, ptr %15, align 4, !tbaa !54
  %109 = fmul float %103, 0.000000e+00
  store float %109, ptr %106, align 4, !tbaa !54
  %110 = fmul float %103, 0.000000e+00
  store float %110, ptr %107, align 4, !tbaa !54
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glVertex3fv(ptr noundef nonnull %15) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  br label %111

111:                                              ; preds = %105, %101
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #9
  br label %112

112:                                              ; preds = %111, %76
  call void @glPopMatrix() #9
  %113 = icmp eq i8 %5, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #9
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %24) #9
  call void @glMultMatrixf(ptr noundef nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #9
  br label %116

115:                                              ; preds = %112
  call void @glMultMatrixf(ptr noundef nonnull %24) #9
  br label %116

116:                                              ; preds = %115, %114
  %117 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %24) #9
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %119) #9
  %120 = icmp eq i8 %6, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = and i32 %3, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = and i32 %2, 8
  %126 = and i32 %2, 16
  %127 = and i32 %2, 32
  call fastcc void @draw_manipulator_axes(ptr noundef %1, i32 noundef %4, i32 noundef %125, i32 noundef %126, i32 noundef %127, ptr noundef nonnull %13, i8 noundef zeroext %6)
  br label %128

128:                                              ; preds = %124, %121
  call void @gluQuadricDrawStyle(ptr noundef %94, i32 noundef 100012) #9
  br label %129

129:                                              ; preds = %128, %116
  %130 = and i32 %2, 32
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %133 = and i32 %2, 16
  %134 = icmp eq i32 %133, 0
  %135 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %136 = and i32 %2, 8
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  br label %139

139:                                              ; preds = %129, %170
  %140 = phi i64 [ 0, %129 ], [ %171, %170 ]
  %141 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !159
  switch i32 %142, label %170 [
    i32 0, label %143
    i32 1, label %152
    i32 2, label %161
  ]

143:                                              ; preds = %139
  br i1 %137, label %170, label %144

144:                                              ; preds = %143
  call void @glTranslatef(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br i1 %120, label %147, label %145

145:                                              ; preds = %144
  %146 = call zeroext i8 @GPU_select_load_id(i32 noundef 8) #9
  br label %147

147:                                              ; preds = %145, %144
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  store i8 -1, ptr %138, align 1, !tbaa !105
  switch i32 %4, label %150 [
    i32 1, label %148
    i32 2, label %149
  ]

148:                                              ; preds = %147
  store i8 70, ptr %138, align 1, !tbaa !105
  br label %151

149:                                              ; preds = %147
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %10) #9
  br label %151

150:                                              ; preds = %147
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %10) #9
  br label %151

151:                                              ; preds = %148, %149, %150
  call void @glColor4ubv(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call fastcc void @draw_cylinder(ptr noundef %94, float noundef %19, float noundef %20)
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  call void @glTranslatef(float noundef -1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br label %170

152:                                              ; preds = %139
  br i1 %134, label %170, label %153

153:                                              ; preds = %152
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  br i1 %120, label %156, label %154

154:                                              ; preds = %153
  %155 = call zeroext i8 @GPU_select_load_id(i32 noundef 16) #9
  br label %156

156:                                              ; preds = %154, %153
  call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  store i8 -1, ptr %135, align 1, !tbaa !105
  switch i32 %4, label %159 [
    i32 1, label %157
    i32 2, label %158
  ]

157:                                              ; preds = %156
  store i8 70, ptr %135, align 1, !tbaa !105
  br label %160

158:                                              ; preds = %156
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %9) #9
  br label %160

159:                                              ; preds = %156
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %9) #9
  br label %160

160:                                              ; preds = %157, %158, %159
  call void @glColor4ubv(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call fastcc void @draw_cylinder(ptr noundef %94, float noundef %19, float noundef %20)
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 0.000000e+00) #9
  br label %170

161:                                              ; preds = %139
  br i1 %131, label %170, label %162

162:                                              ; preds = %161
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  br i1 %120, label %165, label %163

163:                                              ; preds = %162
  %164 = call zeroext i8 @GPU_select_load_id(i32 noundef 32) #9
  br label %165

165:                                              ; preds = %163, %162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4
  store i8 -1, ptr %132, align 1, !tbaa !105
  switch i32 %4, label %168 [
    i32 1, label %166
    i32 2, label %167
  ]

166:                                              ; preds = %165
  store i8 70, ptr %132, align 1, !tbaa !105
  br label %169

167:                                              ; preds = %165
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %8) #9
  br label %169

168:                                              ; preds = %165
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %8) #9
  br label %169

169:                                              ; preds = %166, %167, %168
  call void @glColor4ubv(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call fastcc void @draw_cylinder(ptr noundef %94, float noundef %19, float noundef %20)
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00) #9
  br label %170

170:                                              ; preds = %139, %151, %143, %160, %152, %169, %161
  %171 = add nuw nsw i64 %140, 1
  %172 = icmp eq i64 %171, 3
  br i1 %172, label %173, label %139, !llvm.loop !197

173:                                              ; preds = %170
  call void @gluDeleteQuadric(ptr noundef %94) #9
  %174 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %174) #9
  %175 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %176 = load i8, ptr %175, align 8, !tbaa !198
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  call void @glEnable(i32 noundef 2929) #9
  br label %179

179:                                              ; preds = %173, %178, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_manipulator_rotate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x i8], align 4
  %16 = alloca [4 x i8], align 4
  %17 = alloca [4 x i8], align 4
  %18 = alloca [4 x i8], align 4
  %19 = alloca [4 x i8], align 4
  %20 = alloca [4 x i8], align 4
  %21 = alloca [4 x i8], align 4
  %22 = alloca [4 x i8], align 4
  %23 = alloca [4 x i8], align 4
  %24 = alloca [4 x double], align 16
  %25 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #9
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !196
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 0x3F6B089A00000000
  %29 = fmul float %28, 0x3FE4CCCCC0000000
  %30 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !193
  %31 = icmp ne i16 %30, 2
  %32 = and i32 %2, 248
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %258, label %34

34:                                               ; preds = %5
  tail call void @glDisable(i32 noundef 2929) #9
  call void @unit_m4(ptr noundef nonnull %25) #9
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %36 = load float, ptr %35, align 4, !tbaa !54
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = fmul float %38, %38
  %40 = call float @llvm.fmuladd.f32(float %36, float %36, float %39)
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = call float @llvm.fmuladd.f32(float %42, float %42, float %40)
  %44 = call float @sqrtf(float noundef %43) #9
  call void @glPushMatrix() #9
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  %46 = load float, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !54
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 2
  %50 = load float, ptr %49, align 8, !tbaa !54
  call void @glTranslatef(float noundef %46, float noundef %48, float noundef %50) #9
  br i1 %31, label %51, label %66

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !54
  %54 = fpext float %53 to double
  store double %54, ptr %24, align 16, !tbaa !199
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2, i64 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !54
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds double, ptr %24, i64 1
  store double %57, ptr %58, align 8, !tbaa !199
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2, i64 2, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !54
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds double, ptr %24, i64 2
  store double %61, ptr %62, align 16, !tbaa !199
  %63 = fmul float %44, 0xBF947AE140000000
  %64 = fpext float %63 to double
  %65 = getelementptr inbounds [4 x double], ptr %24, i64 0, i64 3
  store double %64, ptr %65, align 8, !tbaa !199
  call void @glClipPlane(i32 noundef 12288, ptr noundef nonnull %24) #9
  br label %66

66:                                               ; preds = %51, %34
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %68 = load float, ptr %67, align 8, !tbaa !54
  %69 = fcmp ugt float %68, -1.000000e+00
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = fcmp ult float %68, 1.000000e+00
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = call float @acosf(float noundef %68) #9
  br label %74

74:                                               ; preds = %66, %70, %72
  %75 = phi float [ %73, %72 ], [ 0x400921FB60000000, %66 ], [ 0.000000e+00, %70 ]
  %76 = fmul float %75, -3.600000e+02
  %77 = fdiv float %76, 0x400921FB60000000
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !54
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %81 = load float, ptr %80, align 8, !tbaa !54
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %83 = load float, ptr %82, align 4, !tbaa !54
  call void @glRotatef(float noundef %77, float noundef %79, float noundef %81, float noundef %83) #9
  %84 = icmp eq i8 %4, 0
  %85 = and i1 %84, %31
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -30) #9
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %25, i64 0, i64 3
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %87, float noundef %44, ptr noundef nonnull %25) #9
  br label %88

88:                                               ; preds = %86, %74
  %89 = and i32 %2, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  br i1 %84, label %94, label %92

92:                                               ; preds = %91
  %93 = call zeroext i8 @GPU_select_load_id(i32 noundef 128) #9
  br label %95

94:                                               ; preds = %91
  call void @UI_ThemeColor(i32 noundef 32) #9
  br label %95

95:                                               ; preds = %94, %92
  %96 = getelementptr inbounds [4 x [4 x float]], ptr %25, i64 0, i64 3
  %97 = fmul float %44, 0x3FC99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %96, float noundef %97, ptr noundef nonnull %25) #9
  br label %98

98:                                               ; preds = %95, %88
  %99 = and i32 %2, 64
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  br i1 %84, label %104, label %102

102:                                              ; preds = %101
  %103 = call zeroext i8 @GPU_select_load_id(i32 noundef 64) #9
  br label %105

104:                                              ; preds = %101
  call void @UI_ThemeColor(i32 noundef 32) #9
  br label %105

105:                                              ; preds = %104, %102
  %106 = getelementptr inbounds [4 x [4 x float]], ptr %25, i64 0, i64 3
  %107 = fmul float %44, 0x3FF3333340000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %106, float noundef %107, ptr noundef nonnull %25) #9
  br label %108

108:                                              ; preds = %105, %98
  call void @glPopMatrix() #9
  %109 = call zeroext i8 @is_orthogonal_m4(ptr noundef nonnull %35) #9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %35) #9
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %114) #9
  call void @glMultMatrixf(ptr noundef nonnull %35) #9
  br label %115

115:                                              ; preds = %108, %111
  %116 = icmp ne i8 %4, 0
  %117 = and i32 %3, 4
  %118 = icmp ne i32 %117, 0
  %119 = or i1 %118, %116
  %120 = or i1 %119, %31
  br i1 %120, label %154, label %121

121:                                              ; preds = %115
  %122 = and i32 %2, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  br i1 %110, label %125, label %129

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #9
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %14, i32 noundef 2) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %14) #9
  %126 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %14) #9
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %127, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %128) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #9
  br label %129

129:                                              ; preds = %124, %125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #9
  store i32 0, ptr %23, align 4
  %130 = getelementptr inbounds [4 x i8], ptr %23, i64 0, i64 3
  store i8 -1, ptr %130, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %23) #9
  call void @glColor4ubv(ptr noundef nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #9
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0x3FC99999A0000000, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glVertex3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glEnd() #9
  br i1 %110, label %131, label %132

131:                                              ; preds = %129
  call void @glPopMatrix() #9
  br label %132

132:                                              ; preds = %131, %129, %121
  %133 = and i32 %2, 16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %132
  br i1 %110, label %136, label %140

136:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %13, i32 noundef 0) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %13) #9
  %137 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %13) #9
  %138 = icmp eq i8 %137, 0
  %139 = select i1 %138, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %139) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  br label %140

140:                                              ; preds = %135, %136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #9
  store i32 0, ptr %22, align 4
  %141 = getelementptr inbounds [4 x i8], ptr %22, i64 0, i64 3
  store i8 -1, ptr %141, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %22) #9
  call void @glColor4ubv(ptr noundef nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #9
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0x3FC99999A0000000, float noundef 0.000000e+00) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  call void @glEnd() #9
  br i1 %110, label %142, label %143

142:                                              ; preds = %140
  call void @glPopMatrix() #9
  br label %143

143:                                              ; preds = %142, %140, %132
  %144 = and i32 %2, 32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  br i1 %110, label %147, label %151

147:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #9
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %12, i32 noundef 1) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %12) #9
  %148 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %12) #9
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %150) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #9
  br label %151

151:                                              ; preds = %146, %147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #9
  store i32 0, ptr %21, align 4
  %152 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 3
  store i8 -1, ptr %152, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %21) #9
  call void @glColor4ubv(ptr noundef nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #9
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  call void @glEnd() #9
  br i1 %110, label %153, label %154

153:                                              ; preds = %151
  call void @glPopMatrix() #9
  br label %154

154:                                              ; preds = %153, %151, %115, %143
  br i1 %31, label %155, label %204

155:                                              ; preds = %154
  call void @glEnable(i32 noundef 12288) #9
  %156 = and i32 %2, 32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %155
  br i1 %110, label %159, label %163

159:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %11, i32 noundef 2) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %11) #9
  %160 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %11) #9
  %161 = icmp eq i8 %160, 0
  %162 = select i1 %161, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %162) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  br label %163

163:                                              ; preds = %158, %159
  br i1 %116, label %164, label %166

164:                                              ; preds = %163
  %165 = call zeroext i8 @GPU_select_load_id(i32 noundef 32) #9
  br label %168

166:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #9
  store i32 0, ptr %20, align 4
  %167 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 3
  store i8 -1, ptr %167, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %20) #9
  call void @glColor4ubv(ptr noundef nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #9
  br label %168

168:                                              ; preds = %166, %164
  %169 = fmul float %29, 2.500000e-01
  call fastcc void @partial_doughnut(float noundef %169, i32 noundef 0, i32 noundef 48, i32 noundef 48)
  br i1 %110, label %170, label %171

170:                                              ; preds = %168
  call void @glPopMatrix() #9
  br label %171

171:                                              ; preds = %170, %168, %155
  %172 = and i32 %2, 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %171
  br i1 %110, label %175, label %179

175:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %10, i32 noundef 0) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %10) #9
  %176 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %10) #9
  %177 = icmp eq i8 %176, 0
  %178 = select i1 %177, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %178) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %179

179:                                              ; preds = %174, %175
  br i1 %116, label %180, label %182

180:                                              ; preds = %179
  %181 = call zeroext i8 @GPU_select_load_id(i32 noundef 8) #9
  br label %184

182:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #9
  store i32 0, ptr %19, align 4
  %183 = getelementptr inbounds [4 x i8], ptr %19, i64 0, i64 3
  store i8 -1, ptr %183, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %19) #9
  call void @glColor4ubv(ptr noundef nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #9
  br label %184

184:                                              ; preds = %182, %180
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  %185 = fmul float %29, 2.500000e-01
  call fastcc void @partial_doughnut(float noundef %185, i32 noundef 0, i32 noundef 48, i32 noundef 48)
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  br i1 %110, label %186, label %187

186:                                              ; preds = %184
  call void @glPopMatrix() #9
  br label %187

187:                                              ; preds = %186, %184, %171
  %188 = and i32 %2, 16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %187
  br i1 %110, label %191, label %195

191:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %9, i32 noundef 1) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %9) #9
  %192 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %9) #9
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %193, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %194) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  br label %195

195:                                              ; preds = %190, %191
  br i1 %116, label %196, label %198

196:                                              ; preds = %195
  %197 = call zeroext i8 @GPU_select_load_id(i32 noundef 16) #9
  br label %200

198:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #9
  store i32 0, ptr %18, align 4
  %199 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  store i8 -1, ptr %199, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %18) #9
  call void @glColor4ubv(ptr noundef nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #9
  br label %200

200:                                              ; preds = %198, %196
  call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  %201 = fmul float %29, 2.500000e-01
  call fastcc void @partial_doughnut(float noundef %201, i32 noundef 0, i32 noundef 48, i32 noundef 48)
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br i1 %110, label %202, label %203

202:                                              ; preds = %200
  call void @glPopMatrix() #9
  br label %203

203:                                              ; preds = %202, %200, %187
  call void @glDisable(i32 noundef 12288) #9
  br label %252

204:                                              ; preds = %154
  %205 = and i32 %2, 32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %204
  br i1 %110, label %208, label %212

208:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %8, i32 noundef 2) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %8) #9
  %209 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %8) #9
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %211) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %212

212:                                              ; preds = %207, %208
  call void @glPushMatrix() #9
  br i1 %116, label %213, label %215

213:                                              ; preds = %212
  %214 = call zeroext i8 @GPU_select_load_id(i32 noundef 32) #9
  br label %217

215:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  store i32 0, ptr %17, align 4
  %216 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 3
  store i8 -1, ptr %216, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %17) #9
  call void @glColor4ubv(ptr noundef nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  br label %217

217:                                              ; preds = %215, %213
  %218 = fmul float %29, 0x3FE6666660000000
  call fastcc void @partial_doughnut(float noundef %218, i32 noundef 31, i32 noundef 33, i32 noundef 64)
  call void @glPopMatrix() #9
  br i1 %110, label %219, label %220

219:                                              ; preds = %217
  call void @glPopMatrix() #9
  br label %220

220:                                              ; preds = %219, %217, %204
  %221 = and i32 %2, 16
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %220
  br i1 %110, label %224, label %228

224:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %7, i32 noundef 1) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %7) #9
  %225 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %7) #9
  %226 = icmp eq i8 %225, 0
  %227 = select i1 %226, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %227) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %228

228:                                              ; preds = %223, %224
  call void @glPushMatrix() #9
  br i1 %116, label %229, label %231

229:                                              ; preds = %228
  %230 = call zeroext i8 @GPU_select_load_id(i32 noundef 16) #9
  br label %233

231:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  store i32 0, ptr %16, align 4
  %232 = getelementptr inbounds [4 x i8], ptr %16, i64 0, i64 3
  store i8 -1, ptr %232, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %16) #9
  call void @glColor4ubv(ptr noundef nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  br label %233

233:                                              ; preds = %231, %229
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  %234 = fmul float %29, 0x3FE6666660000000
  call fastcc void @partial_doughnut(float noundef %234, i32 noundef 31, i32 noundef 33, i32 noundef 64)
  call void @glPopMatrix() #9
  br i1 %110, label %235, label %236

235:                                              ; preds = %233
  call void @glPopMatrix() #9
  br label %236

236:                                              ; preds = %235, %233, %220
  %237 = and i32 %2, 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %252, label %239

239:                                              ; preds = %236
  br i1 %110, label %240, label %244

240:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %35) #9
  call void @orthogonalize_m4(ptr noundef nonnull %6, i32 noundef 0) #9
  call void @glPushMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %6) #9
  %241 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %6) #9
  %242 = icmp eq i8 %241, 0
  %243 = select i1 %242, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %243) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %244

244:                                              ; preds = %239, %240
  call void @glPushMatrix() #9
  br i1 %116, label %245, label %247

245:                                              ; preds = %244
  %246 = call zeroext i8 @GPU_select_load_id(i32 noundef 8) #9
  br label %249

247:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 0, ptr %15, align 4
  %248 = getelementptr inbounds [4 x i8], ptr %15, i64 0, i64 3
  store i8 -1, ptr %248, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %15) #9
  call void @glColor4ubv(ptr noundef nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  br label %249

249:                                              ; preds = %247, %245
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  %250 = fmul float %29, 0x3FE6666660000000
  call fastcc void @partial_doughnut(float noundef %250, i32 noundef 31, i32 noundef 33, i32 noundef 64)
  call void @glPopMatrix() #9
  br i1 %110, label %251, label %252

251:                                              ; preds = %249
  call void @glPopMatrix() #9
  br label %252

252:                                              ; preds = %251, %249, %203, %236
  %253 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %253) #9
  %254 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %255 = load i8, ptr %254, align 8, !tbaa !198
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %252
  call void @glEnable(i32 noundef 2929) #9
  br label %258

258:                                              ; preds = %252, %257, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_manipulator_scale(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [4 x i8], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [4 x [4 x float]], align 16
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !196
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 0x3F647AE140000000
  %17 = fmul float %16, 7.500000e-01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_manipulator_scale.axis_order, i64 12, i1 false)
  %18 = and i32 %2, 1792
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %219, label %20

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  call void @ED_view3d_global_to_vector(ptr noundef %1, ptr noundef nonnull %22, ptr noundef nonnull %8) #9
  %23 = load float, ptr %21, align 4, !tbaa !54
  %24 = load float, ptr %8, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !54
  %27 = getelementptr inbounds float, ptr %8, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !54
  %29 = fmul float %26, %28
  %30 = call float @llvm.fmuladd.f32(float %23, float %24, float %29)
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !54
  %33 = getelementptr inbounds float, ptr %8, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !54
  %35 = call float @llvm.fmuladd.f32(float %32, float %34, float %30)
  %36 = fneg float %35
  store float %36, ptr %7, align 4, !tbaa !54
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  %41 = fmul float %28, %40
  %42 = call float @llvm.fmuladd.f32(float %38, float %24, float %41)
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = call float @llvm.fmuladd.f32(float %44, float %34, float %42)
  %46 = fneg float %45
  %47 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !54
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !54
  %52 = fmul float %28, %51
  %53 = call float @llvm.fmuladd.f32(float %49, float %24, float %52)
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !54
  %56 = call float @llvm.fmuladd.f32(float %55, float %34, float %53)
  %57 = fneg float %56
  %58 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %57, ptr %58, align 4, !tbaa !54
  call void @axis_sort_v3(ptr noundef nonnull %7, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @glDisable(i32 noundef 2929) #9
  %59 = and i32 %3, 3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %129

61:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %62 = icmp eq i8 %4, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = call zeroext i8 @GPU_select_load_id(i32 noundef 1792) #9
  br label %94

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  %66 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  store i8 -1, ptr %66, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %6) #9
  %67 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 41
  %68 = load i8, ptr %67, align 4, !tbaa !185
  switch i8 %68, label %93 [
    i8 1, label %69
    i8 2, label %84
  ]

69:                                               ; preds = %65
  %70 = load i8, ptr %6, align 4
  %71 = icmp ugt i8 %70, -56
  %72 = add i8 %70, 55
  %73 = select i1 %71, i8 -1, i8 %72
  store i8 %73, ptr %6, align 4, !tbaa !105
  %74 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %75 = load i8, ptr %74, align 1
  %76 = icmp ugt i8 %75, -56
  %77 = add i8 %75, 55
  %78 = select i1 %76, i8 -1, i8 %77
  store i8 %78, ptr %74, align 1, !tbaa !105
  %79 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %80 = load i8, ptr %79, align 2
  %81 = icmp ugt i8 %80, -56
  %82 = add i8 %80, 55
  %83 = select i1 %81, i8 -1, i8 %82
  store i8 %83, ptr %79, align 2, !tbaa !105
  br label %93

84:                                               ; preds = %65
  %85 = load i8, ptr %6, align 4
  %86 = call i8 @llvm.usub.sat.i8(i8 %85, i8 55)
  store i8 %86, ptr %6, align 4, !tbaa !105
  %87 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %88 = load i8, ptr %87, align 1
  %89 = call i8 @llvm.usub.sat.i8(i8 %88, i8 55)
  store i8 %89, ptr %87, align 1, !tbaa !105
  %90 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %91 = load i8, ptr %90, align 2
  %92 = call i8 @llvm.usub.sat.i8(i8 %91, i8 55)
  store i8 %92, ptr %90, align 2, !tbaa !105
  br label %93

93:                                               ; preds = %65, %69, %84
  call void @glColor4ubv(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %94

94:                                               ; preds = %93, %63
  call void @glPushMatrix() #9
  %95 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  %96 = load float, ptr %95, align 4, !tbaa !54
  %97 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !54
  %99 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !54
  call void @glTranslatef(float noundef %96, float noundef %98, float noundef %100) #9
  %101 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %102 = load float, ptr %101, align 8, !tbaa !54
  %103 = fcmp ugt float %102, -1.000000e+00
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = fcmp ult float %102, 1.000000e+00
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = call float @acosf(float noundef %102) #9
  %108 = fmul float %107, -3.600000e+02
  br label %109

109:                                              ; preds = %94, %104, %106
  %110 = phi float [ %108, %106 ], [ 0xC091ABE4C0000000, %94 ], [ -0.000000e+00, %104 ]
  %111 = fdiv float %110, 0x400921FB60000000
  %112 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !54
  %114 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %115 = load float, ptr %114, align 8, !tbaa !54
  %116 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %117 = load float, ptr %116, align 4, !tbaa !54
  call void @glRotatef(float noundef %111, float noundef %113, float noundef %115, float noundef %117) #9
  %118 = load float, ptr %21, align 4, !tbaa !54
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !54
  %121 = fmul float %120, %120
  %122 = call float @llvm.fmuladd.f32(float %118, float %118, float %121)
  %123 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !54
  %125 = call float @llvm.fmuladd.f32(float %124, float %124, float %122)
  %126 = call float @sqrtf(float noundef %125) #9
  call void @unit_m4(ptr noundef nonnull %13) #9
  %127 = getelementptr inbounds [4 x [4 x float]], ptr %13, i64 0, i64 3
  %128 = fmul float %126, 0x3FC99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %127, float noundef %128, ptr noundef nonnull %13) #9
  call void @glPopMatrix() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  br label %131

129:                                              ; preds = %20
  %130 = call float @llvm.fmuladd.f32(float %17, float -4.000000e+00, float 1.000000e+00)
  br label %131

131:                                              ; preds = %109, %129
  %132 = phi float [ 1.000000e+00, %109 ], [ %130, %129 ]
  call void @glMultMatrixf(ptr noundef nonnull %21) #9
  %133 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %21) #9
  %134 = icmp eq i8 %133, 0
  %135 = select i1 %134, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %135) #9
  %136 = and i32 %2, 256
  %137 = and i32 %2, 512
  %138 = and i32 %2, 1024
  call fastcc void @draw_manipulator_axes(ptr noundef %1, i32 noundef 0, i32 noundef %136, i32 noundef %137, i32 noundef %138, ptr noundef nonnull %12, i8 noundef zeroext %4)
  %139 = icmp eq i32 %138, 0
  %140 = icmp eq i8 %4, 0
  %141 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 2
  %142 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %143 = fneg float %132
  %144 = icmp eq i32 %137, 0
  %145 = icmp eq i8 %4, 0
  %146 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 1
  %147 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %148 = fneg float %132
  %149 = icmp eq i32 %136, 0
  %150 = icmp eq i8 %4, 0
  %151 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37
  %152 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %153 = fneg float %132
  br label %154

154:                                              ; preds = %131, %209
  %155 = phi i64 [ 0, %131 ], [ %210, %209 ]
  %156 = getelementptr inbounds [3 x i32], ptr %12, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !159
  switch i32 %157, label %209 [
    i32 0, label %158
    i32 1, label %175
    i32 2, label %192
  ]

158:                                              ; preds = %154
  br i1 %149, label %209, label %159

159:                                              ; preds = %158
  call void @glTranslatef(float noundef %132, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br i1 %150, label %162, label %160

160:                                              ; preds = %159
  %161 = call zeroext i8 @GPU_select_load_id(i32 noundef 256) #9
  br label %174

162:                                              ; preds = %159
  %163 = load float, ptr %151, align 4, !tbaa !54
  %164 = fcmp ogt float %163, 0x3FB99999A0000000
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = fcmp olt float %163, 0x3F947AE140000000
  br i1 %166, label %172, label %167

167:                                              ; preds = %165
  %168 = fadd float %163, 0xBF947AE140000000
  %169 = fmul float %168, 2.550000e+02
  %170 = fdiv float %169, 0x3FB47AE140000000
  %171 = fptoui float %170 to i8
  br label %172

172:                                              ; preds = %162, %165, %167
  %173 = phi i8 [ %171, %167 ], [ -1, %162 ], [ 0, %165 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4
  store i8 %173, ptr %152, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %11) #9
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %174

174:                                              ; preds = %172, %160
  call fastcc void @drawsolidcube(float noundef %17)
  call void @glTranslatef(float noundef %153, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br label %209

175:                                              ; preds = %154
  br i1 %144, label %209, label %176

176:                                              ; preds = %175
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %132, float noundef 0.000000e+00) #9
  br i1 %145, label %179, label %177

177:                                              ; preds = %176
  %178 = call zeroext i8 @GPU_select_load_id(i32 noundef 512) #9
  br label %191

179:                                              ; preds = %176
  %180 = load float, ptr %146, align 4, !tbaa !54
  %181 = fcmp ogt float %180, 0x3FB99999A0000000
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = fcmp olt float %180, 0x3F947AE140000000
  br i1 %183, label %189, label %184

184:                                              ; preds = %182
  %185 = fadd float %180, 0xBF947AE140000000
  %186 = fmul float %185, 2.550000e+02
  %187 = fdiv float %186, 0x3FB47AE140000000
  %188 = fptoui float %187 to i8
  br label %189

189:                                              ; preds = %179, %182, %184
  %190 = phi i8 [ %188, %184 ], [ -1, %179 ], [ 0, %182 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  store i8 %190, ptr %147, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %10) #9
  call void @glColor4ubv(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  br label %191

191:                                              ; preds = %189, %177
  call fastcc void @drawsolidcube(float noundef %17)
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %148, float noundef 0.000000e+00) #9
  br label %209

192:                                              ; preds = %154
  br i1 %139, label %209, label %193

193:                                              ; preds = %192
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %132) #9
  br i1 %140, label %196, label %194

194:                                              ; preds = %193
  %195 = call zeroext i8 @GPU_select_load_id(i32 noundef 1024) #9
  br label %208

196:                                              ; preds = %193
  %197 = load float, ptr %141, align 4, !tbaa !54
  %198 = fcmp ogt float %197, 0x3FB99999A0000000
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = fcmp olt float %197, 0x3F947AE140000000
  br i1 %200, label %206, label %201

201:                                              ; preds = %199
  %202 = fadd float %197, 0xBF947AE140000000
  %203 = fmul float %202, 2.550000e+02
  %204 = fdiv float %203, 0x3FB47AE140000000
  %205 = fptoui float %204 to i8
  br label %206

206:                                              ; preds = %196, %199, %201
  %207 = phi i8 [ %205, %201 ], [ -1, %196 ], [ 0, %199 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  store i8 %207, ptr %142, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %9) #9
  call void @glColor4ubv(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %208

208:                                              ; preds = %206, %194
  call fastcc void @drawsolidcube(float noundef %17)
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %143) #9
  br label %209

209:                                              ; preds = %154, %174, %158, %191, %175, %208, %192
  %210 = add nuw nsw i64 %155, 1
  %211 = icmp eq i64 %210, 3
  br i1 %211, label %212, label %154, !llvm.loop !201

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %213) #9
  %214 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %215 = load i8, ptr %214, align 8, !tbaa !198
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %212
  call void @glEnable(i32 noundef 2929) #9
  br label %218

218:                                              ; preds = %217, %212
  call void @glFrontFace(i32 noundef 2305) #9
  br label %219

219:                                              ; preds = %5, %218
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_manipulator_translate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [4 x i8], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x i32], align 4
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !196
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 0x3F847AE140000000
  %17 = fmul float %16, 2.500000e-01
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_manipulator_translate.axis_order, i64 12, i1 false)
  %18 = and i32 %2, 7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %235, label %20

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  call void @ED_view3d_global_to_vector(ptr noundef %1, ptr noundef nonnull %22, ptr noundef nonnull %8) #9
  %23 = load float, ptr %21, align 4, !tbaa !54
  %24 = load float, ptr %8, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !54
  %27 = getelementptr inbounds float, ptr %8, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !54
  %29 = fmul float %26, %28
  %30 = call float @llvm.fmuladd.f32(float %23, float %24, float %29)
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !54
  %33 = getelementptr inbounds float, ptr %8, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !54
  %35 = call float @llvm.fmuladd.f32(float %32, float %34, float %30)
  %36 = fneg float %35
  store float %36, ptr %7, align 4, !tbaa !54
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  %41 = fmul float %28, %40
  %42 = call float @llvm.fmuladd.f32(float %38, float %24, float %41)
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = call float @llvm.fmuladd.f32(float %44, float %34, float %42)
  %46 = fneg float %45
  %47 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !54
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !54
  %52 = fmul float %28, %51
  %53 = call float @llvm.fmuladd.f32(float %49, float %24, float %52)
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 2, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !54
  %56 = call float @llvm.fmuladd.f32(float %55, float %34, float %53)
  %57 = fneg float %56
  %58 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %57, ptr %58, align 4, !tbaa !54
  call void @axis_sort_v3(ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @glDisable(i32 noundef 2929) #9
  %59 = icmp eq i8 %4, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %20
  %61 = call zeroext i8 @GPU_select_load_id(i32 noundef 7) #9
  br label %91

62:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  %63 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  store i8 -1, ptr %63, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %6) #9
  %64 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 41
  %65 = load i8, ptr %64, align 4, !tbaa !185
  switch i8 %65, label %90 [
    i8 1, label %66
    i8 2, label %81
  ]

66:                                               ; preds = %62
  %67 = load i8, ptr %6, align 4
  %68 = icmp ugt i8 %67, -56
  %69 = add i8 %67, 55
  %70 = select i1 %68, i8 -1, i8 %69
  store i8 %70, ptr %6, align 4, !tbaa !105
  %71 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %72 = load i8, ptr %71, align 1
  %73 = icmp ugt i8 %72, -56
  %74 = add i8 %72, 55
  %75 = select i1 %73, i8 -1, i8 %74
  store i8 %75, ptr %71, align 1, !tbaa !105
  %76 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %77 = load i8, ptr %76, align 2
  %78 = icmp ugt i8 %77, -56
  %79 = add i8 %77, 55
  %80 = select i1 %78, i8 -1, i8 %79
  store i8 %80, ptr %76, align 2, !tbaa !105
  br label %90

81:                                               ; preds = %62
  %82 = load i8, ptr %6, align 4
  %83 = call i8 @llvm.usub.sat.i8(i8 %82, i8 55)
  store i8 %83, ptr %6, align 4, !tbaa !105
  %84 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %85 = load i8, ptr %84, align 1
  %86 = call i8 @llvm.usub.sat.i8(i8 %85, i8 55)
  store i8 %86, ptr %84, align 1, !tbaa !105
  %87 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %88 = load i8, ptr %87, align 2
  %89 = call i8 @llvm.usub.sat.i8(i8 %88, i8 55)
  store i8 %89, ptr %87, align 2, !tbaa !105
  br label %90

90:                                               ; preds = %62, %66, %81
  call void @glColor4ubv(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %91

91:                                               ; preds = %90, %60
  call void @glPushMatrix() #9
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  %93 = load float, ptr %92, align 4, !tbaa !54
  %94 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !54
  %96 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !54
  call void @glTranslatef(float noundef %93, float noundef %95, float noundef %97) #9
  %98 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %99 = load float, ptr %98, align 8, !tbaa !54
  %100 = fcmp ugt float %99, -1.000000e+00
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = fcmp ult float %99, 1.000000e+00
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = call float @acosf(float noundef %99) #9
  %105 = fmul float %104, -3.600000e+02
  br label %106

106:                                              ; preds = %91, %101, %103
  %107 = phi float [ %105, %103 ], [ 0xC091ABE4C0000000, %91 ], [ -0.000000e+00, %101 ]
  %108 = fdiv float %107, 0x400921FB60000000
  %109 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !54
  %111 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %112 = load float, ptr %111, align 8, !tbaa !54
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %114 = load float, ptr %113, align 4, !tbaa !54
  call void @glRotatef(float noundef %108, float noundef %110, float noundef %112, float noundef %114) #9
  %115 = load float, ptr %21, align 4, !tbaa !54
  %116 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !54
  %118 = fmul float %117, %117
  %119 = call float @llvm.fmuladd.f32(float %115, float %115, float %118)
  %120 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 0, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !54
  %122 = call float @llvm.fmuladd.f32(float %121, float %121, float %119)
  %123 = call float @sqrtf(float noundef %122) #9
  call void @unit_m4(ptr noundef nonnull %12) #9
  %124 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3
  %125 = fmul float %123, 0x3FC99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %124, float noundef %125, ptr noundef nonnull %12) #9
  call void @glPopMatrix() #9
  call void @glMultMatrixf(ptr noundef nonnull %21) #9
  %126 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #9
  %127 = and i32 %3, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %106
  %130 = and i32 %2, 1
  %131 = and i32 %2, 2
  %132 = and i32 %2, 4
  call fastcc void @draw_manipulator_axes(ptr noundef %1, i32 noundef 0, i32 noundef %130, i32 noundef %131, i32 noundef %132, ptr noundef nonnull %13, i8 noundef zeroext %4)
  br label %133

133:                                              ; preds = %106, %129
  %134 = and i32 %3, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = call float @llvm.fmuladd.f32(float %16, float 2.000000e+00, float 1.000000e+00)
  br label %141

138:                                              ; preds = %133
  br i1 %128, label %141, label %139

139:                                              ; preds = %138
  %140 = call float @llvm.fmuladd.f32(float %16, float 5.000000e-01, float 1.000000e+00)
  br label %141

141:                                              ; preds = %138, %139, %136
  %142 = phi float [ %137, %136 ], [ %140, %139 ], [ 1.000000e+00, %138 ]
  %143 = call ptr @gluNewQuadric() #9
  call void @gluQuadricDrawStyle(ptr noundef %143, i32 noundef 100012) #9
  %144 = and i32 %2, 2
  %145 = icmp eq i32 %144, 0
  %146 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 1
  %147 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %148 = fmul float %16, -5.000000e-01
  %149 = fpext float %17 to double
  %150 = fpext float %16 to double
  %151 = fmul float %16, 5.000000e-01
  %152 = fneg float %142
  %153 = and i32 %2, 1
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37
  %156 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %157 = fmul float %16, -5.000000e-01
  %158 = fpext float %17 to double
  %159 = fpext float %16 to double
  %160 = fmul float %16, 5.000000e-01
  %161 = fneg float %142
  %162 = and i32 %2, 4
  %163 = icmp eq i32 %162, 0
  %164 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 2
  %165 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %166 = fmul float %16, -5.000000e-01
  %167 = fpext float %17 to double
  %168 = fpext float %16 to double
  %169 = fmul float %16, 5.000000e-01
  %170 = fneg float %142
  br label %171

171:                                              ; preds = %141, %226
  %172 = phi i64 [ 0, %141 ], [ %227, %226 ]
  %173 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !159
  switch i32 %174, label %226 [
    i32 0, label %175
    i32 1, label %192
    i32 2, label %209
  ]

175:                                              ; preds = %171
  br i1 %163, label %226, label %176

176:                                              ; preds = %175
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %142) #9
  br i1 %59, label %179, label %177

177:                                              ; preds = %176
  %178 = call zeroext i8 @GPU_select_load_id(i32 noundef 4) #9
  br label %191

179:                                              ; preds = %176
  %180 = load float, ptr %164, align 4, !tbaa !54
  %181 = fcmp ogt float %180, 0x3FB99999A0000000
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = fcmp olt float %180, 0x3F947AE140000000
  br i1 %183, label %189, label %184

184:                                              ; preds = %182
  %185 = fadd float %180, 0xBF947AE140000000
  %186 = fmul float %185, 2.550000e+02
  %187 = fdiv float %186, 0x3FB47AE140000000
  %188 = fptoui float %187 to i8
  br label %189

189:                                              ; preds = %179, %182, %184
  %190 = phi i8 [ %188, %184 ], [ -1, %179 ], [ 0, %182 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4
  store i8 %190, ptr %165, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %11) #9
  call void @glColor4ubv(ptr noundef nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %191

191:                                              ; preds = %189, %177
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %166) #9
  call void @gluCylinder(ptr noundef %143, double noundef %167, double noundef 0.000000e+00, double noundef %168, i32 noundef 8, i32 noundef 1) #9
  call void @gluQuadricOrientation(ptr noundef %143, i32 noundef 100021) #9
  call void @gluDisk(ptr noundef %143, double noundef 0.000000e+00, double noundef %167, i32 noundef 8, i32 noundef 1) #9
  call void @gluQuadricOrientation(ptr noundef %143, i32 noundef 100020) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %169) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %170) #9
  br label %226

192:                                              ; preds = %171
  br i1 %154, label %226, label %193

193:                                              ; preds = %192
  call void @glTranslatef(float noundef %142, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br i1 %59, label %196, label %194

194:                                              ; preds = %193
  %195 = call zeroext i8 @GPU_select_load_id(i32 noundef 1) #9
  br label %208

196:                                              ; preds = %193
  %197 = load float, ptr %155, align 4, !tbaa !54
  %198 = fcmp ogt float %197, 0x3FB99999A0000000
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = fcmp olt float %197, 0x3F947AE140000000
  br i1 %200, label %206, label %201

201:                                              ; preds = %199
  %202 = fadd float %197, 0xBF947AE140000000
  %203 = fmul float %202, 2.550000e+02
  %204 = fdiv float %203, 0x3FB47AE140000000
  %205 = fptoui float %204 to i8
  br label %206

206:                                              ; preds = %196, %199, %201
  %207 = phi i8 [ %205, %201 ], [ -1, %196 ], [ 0, %199 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  store i8 %207, ptr %156, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %10) #9
  call void @glColor4ubv(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  br label %208

208:                                              ; preds = %206, %194
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %157) #9
  call void @gluCylinder(ptr noundef %143, double noundef %158, double noundef 0.000000e+00, double noundef %159, i32 noundef 8, i32 noundef 1) #9
  call void @gluQuadricOrientation(ptr noundef %143, i32 noundef 100021) #9
  call void @gluDisk(ptr noundef %143, double noundef 0.000000e+00, double noundef %158, i32 noundef 8, i32 noundef 1) #9
  call void @gluQuadricOrientation(ptr noundef %143, i32 noundef 100020) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %160) #9
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  call void @glTranslatef(float noundef %161, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br label %226

209:                                              ; preds = %171
  br i1 %145, label %226, label %210

210:                                              ; preds = %209
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %142, float noundef 0.000000e+00) #9
  br i1 %59, label %213, label %211

211:                                              ; preds = %210
  %212 = call zeroext i8 @GPU_select_load_id(i32 noundef 2) #9
  br label %225

213:                                              ; preds = %210
  %214 = load float, ptr %146, align 4, !tbaa !54
  %215 = fcmp ogt float %214, 0x3FB99999A0000000
  br i1 %215, label %223, label %216

216:                                              ; preds = %213
  %217 = fcmp olt float %214, 0x3F947AE140000000
  br i1 %217, label %223, label %218

218:                                              ; preds = %216
  %219 = fadd float %214, 0xBF947AE140000000
  %220 = fmul float %219, 2.550000e+02
  %221 = fdiv float %220, 0x3FB47AE140000000
  %222 = fptoui float %221 to i8
  br label %223

223:                                              ; preds = %213, %216, %218
  %224 = phi i8 [ %222, %218 ], [ -1, %213 ], [ 0, %216 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  store i8 %224, ptr %147, align 1, !tbaa !105
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %9) #9
  call void @glColor4ubv(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %225

225:                                              ; preds = %223, %211
  call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %148) #9
  call void @gluCylinder(ptr noundef %143, double noundef %149, double noundef 0.000000e+00, double noundef %150, i32 noundef 8, i32 noundef 1) #9
  call void @gluQuadricOrientation(ptr noundef %143, i32 noundef 100021) #9
  call void @gluDisk(ptr noundef %143, double noundef 0.000000e+00, double noundef %149, i32 noundef 8, i32 noundef 1) #9
  call void @gluQuadricOrientation(ptr noundef %143, i32 noundef 100020) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %151) #9
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %152, float noundef 0.000000e+00) #9
  br label %226

226:                                              ; preds = %171, %191, %175, %208, %192, %225, %209
  %227 = add nuw nsw i64 %172, 1
  %228 = icmp eq i64 %227, 3
  br i1 %228, label %229, label %171, !llvm.loop !202

229:                                              ; preds = %226
  call void @gluDeleteQuadric(ptr noundef %143) #9
  %230 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %230) #9
  %231 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %232 = load i8, ptr %231, align 8, !tbaa !198
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %229
  call void @glEnable(i32 noundef 2929) #9
  br label %235

235:                                              ; preds = %229, %234, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #9
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BIF_do_manipulator(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !203
  %12 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 42
  %13 = load i8, ptr %12, align 1, !tbaa !62
  %14 = and i8 %13, 3
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %118

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !205
  %19 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 41
  %20 = load i8, ptr %19, align 4, !tbaa !185
  %21 = zext i8 %20 to i32
  tail call void @RNA_enum_set(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %21) #9
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !207
  %24 = sitofp i16 %23 to float
  %25 = fmul float %24, 5.000000e-01
  %26 = tail call fastcc i32 @manipulator_selectbuf(ptr noundef %6, ptr noundef %9, ptr noundef nonnull %22, float noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %117, label %28

28:                                               ; preds = %16
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !207
  %30 = sitofp i16 %29 to float
  %31 = fmul float %30, 0x3FC99999A0000000
  %32 = tail call fastcc i32 @manipulator_selectbuf(ptr noundef %6, ptr noundef %9, ptr noundef nonnull %22, float noundef %31)
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %26, i32 %32
  store i32 %34, ptr @drawflags, align 4, !tbaa !159
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %28
  switch i32 %34, label %56 [
    i32 4, label %50
    i32 1, label %38
    i32 2, label %44
  ]

38:                                               ; preds = %37
  %39 = icmp eq i16 %11, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %41, align 4, !tbaa !159
  %42 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %42, align 4, !tbaa !159
  br label %56

43:                                               ; preds = %38
  store i32 1, ptr %4, align 4, !tbaa !159
  br label %56

44:                                               ; preds = %37
  %45 = icmp eq i16 %11, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  store i32 1, ptr %4, align 4, !tbaa !159
  %47 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %47, align 4, !tbaa !159
  br label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %49, align 4, !tbaa !159
  br label %56

50:                                               ; preds = %37
  %51 = icmp eq i16 %11, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  store i32 1, ptr %4, align 4, !tbaa !159
  %53 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %53, align 4, !tbaa !159
  br label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %55, align 4, !tbaa !159
  br label %56

56:                                               ; preds = %52, %54, %46, %48, %40, %43, %37
  %57 = load ptr, ptr %17, align 8, !tbaa !205
  call void @RNA_boolean_set_array(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #9
  %58 = load ptr, ptr %17, align 8, !tbaa !205
  %59 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.2, i16 noundef signext 0, ptr noundef %58) #9
  br label %117

60:                                               ; preds = %28
  %61 = and i32 %34, 1792
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  switch i32 %34, label %82 [
    i32 256, label %64
    i32 512, label %70
    i32 1024, label %76
  ]

64:                                               ; preds = %63
  %65 = icmp eq i16 %11, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %67, align 4, !tbaa !159
  %68 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %68, align 4, !tbaa !159
  br label %82

69:                                               ; preds = %64
  store i32 1, ptr %4, align 4, !tbaa !159
  br label %82

70:                                               ; preds = %63
  %71 = icmp eq i16 %11, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  store i32 1, ptr %4, align 4, !tbaa !159
  %73 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %73, align 4, !tbaa !159
  br label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %75, align 4, !tbaa !159
  br label %82

76:                                               ; preds = %63
  %77 = icmp eq i16 %11, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  store i32 1, ptr %4, align 4, !tbaa !159
  %79 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %79, align 4, !tbaa !159
  br label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %81, align 4, !tbaa !159
  br label %82

82:                                               ; preds = %78, %80, %72, %74, %66, %69, %63
  %83 = load ptr, ptr %17, align 8, !tbaa !205
  call void @RNA_boolean_set_array(ptr noundef %83, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #9
  %84 = load ptr, ptr %17, align 8, !tbaa !205
  %85 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.3, i16 noundef signext 0, ptr noundef %84) #9
  br label %117

86:                                               ; preds = %60
  %87 = icmp eq i32 %34, 128
  br i1 %87, label %88, label %104

88:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %89 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %5, ptr noundef %89) #9
  %90 = load ptr, ptr %17, align 8, !tbaa !205
  %91 = call ptr @RNA_struct_find_property(ptr noundef %90, ptr noundef nonnull @.str.5) #9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %17, align 8, !tbaa !205
  %95 = call zeroext i8 @RNA_property_is_set(ptr noundef %94, ptr noundef nonnull %91) #9
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %17, align 8, !tbaa !205
  %99 = call i32 @RNA_property_boolean_get(ptr noundef %98, ptr noundef nonnull %91) #9
  call void @RNA_property_boolean_set(ptr noundef nonnull %5, ptr noundef nonnull %91, i32 noundef %99) #9
  br label %100

100:                                              ; preds = %97, %93, %88
  %101 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !208
  %103 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %102, i16 noundef signext 0, ptr noundef nonnull %5) #9
  call void @WM_operator_properties_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %117

104:                                              ; preds = %86
  %105 = and i32 %34, 248
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  switch i32 %34, label %113 [
    i32 8, label %108
    i32 16, label %109
    i32 32, label %111
  ]

108:                                              ; preds = %107
  store i32 1, ptr %4, align 4, !tbaa !159
  br label %113

109:                                              ; preds = %107
  %110 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %110, align 4, !tbaa !159
  br label %113

111:                                              ; preds = %107
  %112 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %112, align 4, !tbaa !159
  br label %113

113:                                              ; preds = %107, %111, %109, %108
  %114 = load ptr, ptr %17, align 8, !tbaa !205
  call void @RNA_boolean_set_array(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #9
  %115 = load ptr, ptr %17, align 8, !tbaa !205
  %116 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.6, i16 noundef signext 0, ptr noundef %115) #9
  br label %117

117:                                              ; preds = %56, %100, %113, %104, %82, %16
  store i32 65535, ptr @drawflags, align 4, !tbaa !159
  br label %118

118:                                              ; preds = %3, %117
  %119 = phi i32 [ %26, %117 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %119
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @manipulator_selectbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.rctf, align 4
  %7 = alloca [64 x i32], align 16
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #9
  %12 = tail call zeroext i8 @GPU_select_query_check_active() #9
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 16
  %14 = tail call float @mat4_to_scale(ptr noundef nonnull %13) #9
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, 0x3E7AD7F2A0000000
  br i1 %16, label %157, label %17

17:                                               ; preds = %4
  %18 = load i32, ptr %2, align 4, !tbaa !159
  %19 = sitofp i32 %18 to float
  %20 = fsub float %19, %3
  store float %20, ptr %5, align 4, !tbaa !211
  %21 = fadd float %19, %3
  %22 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  store float %21, ptr %22, align 4, !tbaa !212
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !159
  %25 = sitofp i32 %24 to float
  %26 = fsub float %25, %3
  %27 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  store float %26, ptr %27, align 4, !tbaa !213
  %28 = fadd float %25, %3
  %29 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  store float %28, ptr %29, align 4, !tbaa !214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !215
  call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %9, ptr noundef nonnull %5) #9
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %30, ptr noundef %11, ptr noundef nonnull %31) #9
  %32 = icmp eq i8 %12, 0
  %33 = select i1 %32, i8 1, i8 2
  call void @GPU_select_begin(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull %6, i8 noundef zeroext %33, i32 noundef 0) #9
  %34 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 40
  %35 = load i8, ptr %34, align 1, !tbaa !192
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %17
  %40 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !193
  %41 = icmp eq i16 %40, 3
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %43 = load i16, ptr %42, align 8, !tbaa !83
  %44 = and i16 %43, 248
  %45 = zext nneg i16 %44 to i32
  br i1 %41, label %46, label %47

46:                                               ; preds = %39
  call fastcc void @draw_manipulator_rotate_cyl(ptr noundef %9, ptr noundef %11, i32 noundef %45, i32 noundef %36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %48

47:                                               ; preds = %39
  call fastcc void @draw_manipulator_rotate(ptr noundef %9, ptr noundef %11, i32 noundef %45, i32 noundef %36, i8 noundef zeroext 1)
  br label %48

48:                                               ; preds = %46, %47, %17
  %49 = load i8, ptr %34, align 1, !tbaa !192
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %55 = load i16, ptr %54, align 8, !tbaa !83
  %56 = and i16 %55, 1792
  %57 = zext nneg i16 %56 to i32
  call fastcc void @draw_manipulator_scale(ptr noundef %9, ptr noundef %11, i32 noundef %57, i32 noundef %50, i8 noundef zeroext 1)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i8, ptr %34, align 1, !tbaa !192
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %65 = load i16, ptr %64, align 8, !tbaa !83
  %66 = and i16 %65, 7
  %67 = zext nneg i16 %66 to i32
  call fastcc void @draw_manipulator_translate(ptr noundef %9, ptr noundef %11, i32 noundef %67, i32 noundef %60, i8 noundef zeroext 1)
  br label %68

68:                                               ; preds = %63, %58
  %69 = call i32 @GPU_select_end() #9
  br i1 %32, label %108, label %70

70:                                               ; preds = %68
  %71 = shl i32 %69, 16
  %72 = ashr exact i32 %71, 16
  call void @GPU_select_begin(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull %6, i8 noundef zeroext 3, i32 noundef %72) #9
  %73 = load i8, ptr %34, align 1, !tbaa !192
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !193
  %79 = icmp eq i16 %78, 3
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %81 = load i16, ptr %80, align 8, !tbaa !83
  %82 = and i16 %81, 248
  %83 = zext nneg i16 %82 to i32
  br i1 %79, label %84, label %85

84:                                               ; preds = %77
  call fastcc void @draw_manipulator_rotate_cyl(ptr noundef %9, ptr noundef %11, i32 noundef %83, i32 noundef %74, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %86

85:                                               ; preds = %77
  call fastcc void @draw_manipulator_rotate(ptr noundef %9, ptr noundef %11, i32 noundef %83, i32 noundef %74, i8 noundef zeroext 1)
  br label %86

86:                                               ; preds = %84, %85, %70
  %87 = load i8, ptr %34, align 1, !tbaa !192
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %93 = load i16, ptr %92, align 8, !tbaa !83
  %94 = and i16 %93, 1792
  %95 = zext nneg i16 %94 to i32
  call fastcc void @draw_manipulator_scale(ptr noundef %9, ptr noundef %11, i32 noundef %95, i32 noundef %88, i8 noundef zeroext 1)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i8, ptr %34, align 1, !tbaa !192
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %103 = load i16, ptr %102, align 8, !tbaa !83
  %104 = and i16 %103, 7
  %105 = zext nneg i16 %104 to i32
  call fastcc void @draw_manipulator_translate(ptr noundef %9, ptr noundef %11, i32 noundef %105, i32 noundef %98, i8 noundef zeroext 1)
  br label %106

106:                                              ; preds = %101, %96
  %107 = call i32 @GPU_select_end() #9
  br label %108

108:                                              ; preds = %106, %68
  call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %9, ptr noundef null) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %30, ptr noundef %11, ptr noundef nonnull %31) #9
  %109 = shl i32 %69, 16
  %110 = ashr exact i32 %109, 16
  %111 = icmp eq i32 %109, 65536
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 3
  %114 = load i32, ptr %113, align 4, !tbaa !159
  br label %157

115:                                              ; preds = %108
  %116 = icmp sgt i32 %110, 1
  br i1 %116, label %117, label %157

117:                                              ; preds = %115
  %118 = zext nneg i32 %110 to i64
  br label %119

119:                                              ; preds = %117, %147
  %120 = phi i64 [ 0, %117 ], [ %152, %147 ]
  %121 = phi i32 [ 0, %117 ], [ %151, %147 ]
  %122 = phi i32 [ 0, %117 ], [ %150, %147 ]
  %123 = phi i32 [ 0, %117 ], [ %149, %147 ]
  %124 = phi i32 [ 0, %117 ], [ %148, %147 ]
  %125 = shl nsw i64 %120, 2
  %126 = or disjoint i64 %125, 1
  %127 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !159
  %129 = or disjoint i64 %125, 3
  %130 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !159
  switch i32 %131, label %132 [
    i32 7, label %157
    i32 1792, label %157
  ]

132:                                              ; preds = %119
  %133 = and i32 %131, 248
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = icmp eq i32 %121, 0
  %137 = icmp ult i32 %128, %123
  %138 = select i1 %136, i1 true, i1 %137
  %139 = select i1 %138, i32 %128, i32 %123
  %140 = select i1 %138, i32 %131, i32 %121
  br label %147

141:                                              ; preds = %132
  %142 = icmp eq i32 %122, 0
  %143 = icmp ult i32 %128, %124
  %144 = select i1 %142, i1 true, i1 %143
  %145 = select i1 %144, i32 %128, i32 %124
  %146 = select i1 %144, i32 %131, i32 %122
  br label %147

147:                                              ; preds = %141, %135
  %148 = phi i32 [ %124, %135 ], [ %145, %141 ]
  %149 = phi i32 [ %139, %135 ], [ %123, %141 ]
  %150 = phi i32 [ %122, %135 ], [ %146, %141 ]
  %151 = phi i32 [ %140, %135 ], [ %121, %141 ]
  %152 = add nuw nsw i64 %120, 1
  %153 = icmp eq i64 %152, %118
  br i1 %153, label %154, label %119, !llvm.loop !216

154:                                              ; preds = %147
  %155 = icmp eq i32 %150, 0
  %156 = select i1 %155, i32 %151, i32 %150
  br label %157

157:                                              ; preds = %119, %119, %115, %154, %4, %112
  %158 = phi i32 [ %114, %112 ], [ 0, %4 ], [ %156, %154 ], [ 0, %115 ], [ %131, %119 ], [ %131, %119 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 %158
}

declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_curve_active_center(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @count_set_pose_transflags(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @protectflag_to_drawflags(i16 noundef signext %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = zext i16 %0 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i16, ptr %1, align 2, !tbaa !120
  %8 = and i16 %7, -2
  store i16 %8, ptr %1, align 2, !tbaa !120
  br label %9

9:                                                ; preds = %6, %2
  %10 = and i32 %3, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i16, ptr %1, align 2, !tbaa !120
  %14 = and i16 %13, -3
  store i16 %14, ptr %1, align 2, !tbaa !120
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i32 %3, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %1, align 2, !tbaa !120
  %20 = and i16 %19, -5
  store i16 %20, ptr %1, align 2, !tbaa !120
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %3, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i16, ptr %1, align 2, !tbaa !120
  %26 = and i16 %25, -9
  store i16 %26, ptr %1, align 2, !tbaa !120
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i32 %3, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr %1, align 2, !tbaa !120
  %32 = and i16 %31, -17
  store i16 %32, ptr %1, align 2, !tbaa !120
  br label %33

33:                                               ; preds = %30, %27
  %34 = and i32 %3, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %1, align 2, !tbaa !120
  %38 = and i16 %37, -33
  store i16 %38, ptr %1, align 2, !tbaa !120
  br label %39

39:                                               ; preds = %36, %33
  %40 = and i32 %3, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i16, ptr %1, align 2, !tbaa !120
  %44 = and i16 %43, -257
  store i16 %44, ptr %1, align 2, !tbaa !120
  br label %45

45:                                               ; preds = %42, %39
  %46 = and i32 %3, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i16, ptr %1, align 2, !tbaa !120
  %50 = and i16 %49, -513
  store i16 %50, ptr %1, align 2, !tbaa !120
  br label %51

51:                                               ; preds = %48, %45
  %52 = and i32 %3, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i16, ptr %1, align 2, !tbaa !120
  %56 = and i16 %55, -1025
  store i16 %56, ptr %1, align 2, !tbaa !120
  br label %57

57:                                               ; preds = %54, %51
  ret void
}

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_getTransformOrientationMatrix(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @applyTransformOrientation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @ED_view3d_global_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @glFrontFace(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_manipulator_axes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = icmp eq i32 %4, 0
  %12 = icmp eq i8 %6, 0
  %13 = and i32 %4, 1024
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %4, 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 37, i64 2
  %18 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %19 = icmp eq i32 %3, 0
  %20 = icmp eq i8 %6, 0
  %21 = and i32 %3, 512
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %3, 2
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 37, i64 1
  %26 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %27 = icmp eq i32 %2, 0
  %28 = icmp eq i8 %6, 0
  %29 = and i32 %2, 256
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %2, 1
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 37
  %34 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  br label %35

35:                                               ; preds = %7, %115
  %36 = phi i64 [ 0, %7 ], [ %116, %115 ]
  %37 = getelementptr inbounds i32, ptr %5, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !159
  switch i32 %38, label %115 [
    i32 0, label %39
    i32 1, label %64
    i32 2, label %89
  ]

39:                                               ; preds = %35
  br i1 %27, label %115, label %40

40:                                               ; preds = %39
  br i1 %28, label %47, label %41

41:                                               ; preds = %40
  br i1 %30, label %44, label %42

42:                                               ; preds = %41
  %43 = call zeroext i8 @GPU_select_load_id(i32 noundef 256) #9
  br label %63

44:                                               ; preds = %41
  br i1 %32, label %63, label %45

45:                                               ; preds = %44
  %46 = call zeroext i8 @GPU_select_load_id(i32 noundef 1) #9
  br label %63

47:                                               ; preds = %40
  %48 = load float, ptr %33, align 4, !tbaa !54
  %49 = fcmp ogt float %48, 0x3FB99999A0000000
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = fcmp olt float %48, 0x3F947AE140000000
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  %53 = fadd float %48, 0xBF947AE140000000
  %54 = fmul float %53, 2.550000e+02
  %55 = fdiv float %54, 0x3FB47AE140000000
  %56 = fptoui float %55 to i8
  br label %57

57:                                               ; preds = %52, %50, %47
  %58 = phi i8 [ %56, %52 ], [ -1, %47 ], [ 0, %50 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  store i8 %58, ptr %34, align 1, !tbaa !105
  switch i32 %1, label %61 [
    i32 1, label %59
    i32 2, label %60
  ]

59:                                               ; preds = %57
  store i8 70, ptr %34, align 1, !tbaa !105
  br label %62

60:                                               ; preds = %57
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %10) #9
  br label %62

61:                                               ; preds = %57
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %10) #9
  br label %62

62:                                               ; preds = %59, %60, %61
  call void @glColor4ubv(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  br label %63

63:                                               ; preds = %62, %45, %44, %42
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0x3FC99999A0000000, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glVertex3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  br label %114

64:                                               ; preds = %35
  br i1 %19, label %115, label %65

65:                                               ; preds = %64
  br i1 %20, label %72, label %66

66:                                               ; preds = %65
  br i1 %22, label %69, label %67

67:                                               ; preds = %66
  %68 = call zeroext i8 @GPU_select_load_id(i32 noundef 512) #9
  br label %88

69:                                               ; preds = %66
  br i1 %24, label %88, label %70

70:                                               ; preds = %69
  %71 = call zeroext i8 @GPU_select_load_id(i32 noundef 2) #9
  br label %88

72:                                               ; preds = %65
  %73 = load float, ptr %25, align 4, !tbaa !54
  %74 = fcmp ogt float %73, 0x3FB99999A0000000
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = fcmp olt float %73, 0x3F947AE140000000
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = fadd float %73, 0xBF947AE140000000
  %79 = fmul float %78, 2.550000e+02
  %80 = fdiv float %79, 0x3FB47AE140000000
  %81 = fptoui float %80 to i8
  br label %82

82:                                               ; preds = %77, %75, %72
  %83 = phi i8 [ %81, %77 ], [ -1, %72 ], [ 0, %75 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  store i8 %83, ptr %26, align 1, !tbaa !105
  switch i32 %1, label %86 [
    i32 1, label %84
    i32 2, label %85
  ]

84:                                               ; preds = %82
  store i8 70, ptr %26, align 1, !tbaa !105
  br label %87

85:                                               ; preds = %82
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %9) #9
  br label %87

86:                                               ; preds = %82
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %9) #9
  br label %87

87:                                               ; preds = %84, %85, %86
  call void @glColor4ubv(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %88

88:                                               ; preds = %87, %70, %69, %67
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0x3FC99999A0000000, float noundef 0.000000e+00) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  br label %114

89:                                               ; preds = %35
  br i1 %11, label %115, label %90

90:                                               ; preds = %89
  br i1 %12, label %97, label %91

91:                                               ; preds = %90
  br i1 %14, label %94, label %92

92:                                               ; preds = %91
  %93 = call zeroext i8 @GPU_select_load_id(i32 noundef 1024) #9
  br label %113

94:                                               ; preds = %91
  br i1 %16, label %113, label %95

95:                                               ; preds = %94
  %96 = call zeroext i8 @GPU_select_load_id(i32 noundef 4) #9
  br label %113

97:                                               ; preds = %90
  %98 = load float, ptr %17, align 4, !tbaa !54
  %99 = fcmp ogt float %98, 0x3FB99999A0000000
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = fcmp olt float %98, 0x3F947AE140000000
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = fadd float %98, 0xBF947AE140000000
  %104 = fmul float %103, 2.550000e+02
  %105 = fdiv float %104, 0x3FB47AE140000000
  %106 = fptoui float %105 to i8
  br label %107

107:                                              ; preds = %102, %100, %97
  %108 = phi i8 [ %106, %102 ], [ -1, %97 ], [ 0, %100 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4
  store i8 %108, ptr %18, align 1, !tbaa !105
  switch i32 %1, label %111 [
    i32 1, label %109
    i32 2, label %110
  ]

109:                                              ; preds = %107
  store i8 70, ptr %18, align 1, !tbaa !105
  br label %112

110:                                              ; preds = %107
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %8) #9
  br label %112

111:                                              ; preds = %107
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %8) #9
  br label %112

112:                                              ; preds = %109, %110, %111
  call void @glColor4ubv(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %113

113:                                              ; preds = %112, %95, %94, %92
  call void @glBegin(i32 noundef 1) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #9
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  br label %114

114:                                              ; preds = %113, %88, %63
  call void @glEnd() #9
  br label %115

115:                                              ; preds = %114, %35, %39, %64, %89
  %116 = add nuw nsw i64 %36, 1
  %117 = icmp eq i64 %116, 3
  br i1 %117, label %118, label %35, !llvm.loop !217

118:                                              ; preds = %115
  ret void
}

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_cylinder(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = fmul float %2, 0x3FE99999A0000000
  %5 = fmul float %1, -5.000000e-01
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #9
  %6 = fpext float %4 to double
  %7 = fpext float %1 to double
  tail call void @gluCylinder(ptr noundef %0, double noundef %6, double noundef %6, double noundef %7, i32 noundef 8, i32 noundef 1) #9
  tail call void @gluQuadricOrientation(ptr noundef %0, i32 noundef 100021) #9
  tail call void @gluDisk(ptr noundef %0, double noundef 0.000000e+00, double noundef %6, i32 noundef 8, i32 noundef 1) #9
  tail call void @gluQuadricOrientation(ptr noundef %0, i32 noundef 100020) #9
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %1) #9
  tail call void @gluDisk(ptr noundef %0, double noundef 0.000000e+00, double noundef %6, i32 noundef 8, i32 noundef 1) #9
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #9
  ret void
}

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

declare void @axis_sort_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #5

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gluQuadricOrientation(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glClipPlane(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @is_orthogonal_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @partial_doughnut(float noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp ne i32 %1, 0
  %6 = icmp ne i32 %2, %3
  %7 = or i1 %5, %6
  %8 = sitofp i32 %3 to float
  %9 = fdiv float 0x401921FB60000000, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 5.000000e-01, float 0x400921FB60000000)
  %11 = tail call float @cosf(float noundef %10) #9
  %12 = tail call float @sinf(float noundef %10) #9
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %4, %80
  %15 = phi float [ %20, %80 ], [ %10, %4 ]
  %16 = phi float [ %21, %80 ], [ %11, %4 ]
  %17 = phi float [ %22, %80 ], [ %12, %4 ]
  %18 = phi i32 [ %19, %80 ], [ %3, %4 ]
  %19 = add nsw i32 %18, -1
  %20 = fadd float %9, %15
  %21 = tail call float @cosf(float noundef %20) #9
  %22 = tail call float @sinf(float noundef %20) #9
  %23 = icmp eq i32 %19, %1
  %24 = select i1 %7, i1 %23, i1 false
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  tail call void @glBegin(i32 noundef 9) #9
  %26 = fneg float %22
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi float [ 0.000000e+00, %25 ], [ %30, %27 ]
  %29 = phi i32 [ 8, %25 ], [ %37, %27 ]
  %30 = fadd float %28, 0x3FE921FB60000000
  %31 = tail call float @cosf(float noundef %30) #9
  %32 = tail call float @sinf(float noundef %30) #9
  %33 = tail call float @llvm.fmuladd.f32(float %0, float %31, float 1.000000e+00)
  %34 = fmul float %21, %33
  %35 = fmul float %33, %26
  %36 = fmul float %32, %0
  tail call void @glVertex3f(float noundef %34, float noundef %35, float noundef %36) #9
  %37 = add nsw i32 %29, -1
  %38 = icmp eq i32 %29, 0
  br i1 %38, label %39, label %27, !llvm.loop !218

39:                                               ; preds = %27
  tail call void @glEnd() #9
  br label %40

40:                                               ; preds = %39, %14
  %41 = icmp sle i32 %18, %1
  %42 = icmp sgt i32 %19, %2
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  tail call void @glBegin(i32 noundef 8) #9
  %45 = fneg float %22
  %46 = fneg float %17
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi float [ 0.000000e+00, %44 ], [ %50, %47 ]
  %49 = phi i32 [ 8, %44 ], [ %59, %47 ]
  %50 = fadd float %48, 0x3FE921FB60000000
  %51 = tail call float @cosf(float noundef %50) #9
  %52 = tail call float @sinf(float noundef %50) #9
  %53 = tail call float @llvm.fmuladd.f32(float %0, float %51, float 1.000000e+00)
  %54 = fmul float %21, %53
  %55 = fmul float %53, %45
  %56 = fmul float %52, %0
  tail call void @glVertex3f(float noundef %54, float noundef %55, float noundef %56) #9
  %57 = fmul float %16, %53
  %58 = fmul float %53, %46
  tail call void @glVertex3f(float noundef %57, float noundef %58, float noundef %56) #9
  %59 = add nsw i32 %49, -1
  %60 = icmp eq i32 %49, 0
  br i1 %60, label %61, label %47, !llvm.loop !219

61:                                               ; preds = %47
  tail call void @glEnd() #9
  br label %62

62:                                               ; preds = %61, %40
  %63 = icmp eq i32 %19, %2
  %64 = select i1 %7, i1 %63, i1 false
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  tail call void @glBegin(i32 noundef 9) #9
  %66 = fneg float %17
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi float [ 0.000000e+00, %65 ], [ %70, %67 ]
  %69 = phi i32 [ 8, %65 ], [ %77, %67 ]
  %70 = fadd float %68, 0xBFE921FB60000000
  %71 = tail call float @cosf(float noundef %70) #9
  %72 = tail call float @sinf(float noundef %70) #9
  %73 = tail call float @llvm.fmuladd.f32(float %0, float %71, float 1.000000e+00)
  %74 = fmul float %16, %73
  %75 = fmul float %73, %66
  %76 = fmul float %72, %0
  tail call void @glVertex3f(float noundef %74, float noundef %75, float noundef %76) #9
  %77 = add nsw i32 %69, -1
  %78 = icmp eq i32 %69, 0
  br i1 %78, label %79, label %67, !llvm.loop !220

79:                                               ; preds = %67
  tail call void @glEnd() #9
  br label %80

80:                                               ; preds = %79, %62
  %81 = icmp sgt i32 %18, 1
  br i1 %81, label %14, label %82, !llvm.loop !221

82:                                               ; preds = %80, %4
  ret void
}

declare void @orthogonalize_m4(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @drawsolidcube(float noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x [3 x float]], align 16
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(96) @__const.drawsolidcube.cube, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  tail call void @glPushMatrix() #9
  tail call void @glScalef(float noundef %0, float noundef %0, float noundef %0) #9
  tail call void @glBegin(i32 noundef 7) #9
  store float -1.000000e+00, ptr %3, align 4, !tbaa !54
  call void @glNormal3fv(ptr noundef nonnull %3) #9
  call void @glVertex3fv(ptr noundef nonnull %2) #9
  %4 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1
  call void @glVertex3fv(ptr noundef nonnull %4) #9
  %5 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2
  call void @glVertex3fv(ptr noundef nonnull %5) #9
  %6 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  store float 0.000000e+00, ptr %3, align 4, !tbaa !54
  call void @glEnd() #9
  call void @glBegin(i32 noundef 7) #9
  %7 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float -1.000000e+00, ptr %7, align 4, !tbaa !54
  call void @glNormal3fv(ptr noundef nonnull %3) #9
  call void @glVertex3fv(ptr noundef nonnull %2) #9
  %8 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4
  call void @glVertex3fv(ptr noundef nonnull %8) #9
  %9 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5
  call void @glVertex3fv(ptr noundef nonnull %9) #9
  call void @glVertex3fv(ptr noundef nonnull %4) #9
  store float 0.000000e+00, ptr %7, align 4, !tbaa !54
  call void @glEnd() #9
  call void @glBegin(i32 noundef 7) #9
  store float 1.000000e+00, ptr %3, align 4, !tbaa !54
  call void @glNormal3fv(ptr noundef nonnull %3) #9
  call void @glVertex3fv(ptr noundef nonnull %8) #9
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  %11 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6
  call void @glVertex3fv(ptr noundef nonnull %11) #9
  call void @glVertex3fv(ptr noundef nonnull %9) #9
  store float 0.000000e+00, ptr %3, align 4, !tbaa !54
  call void @glEnd() #9
  call void @glBegin(i32 noundef 7) #9
  store float 1.000000e+00, ptr %7, align 4, !tbaa !54
  call void @glNormal3fv(ptr noundef nonnull %3) #9
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  call void @glVertex3fv(ptr noundef nonnull %5) #9
  call void @glVertex3fv(ptr noundef nonnull %11) #9
  store float 0.000000e+00, ptr %7, align 4, !tbaa !54
  call void @glEnd() #9
  call void @glBegin(i32 noundef 7) #9
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 1.000000e+00, ptr %12, align 4, !tbaa !54
  call void @glNormal3fv(ptr noundef nonnull %3) #9
  call void @glVertex3fv(ptr noundef nonnull %4) #9
  call void @glVertex3fv(ptr noundef nonnull %9) #9
  call void @glVertex3fv(ptr noundef nonnull %11) #9
  call void @glVertex3fv(ptr noundef nonnull %5) #9
  store float 0.000000e+00, ptr %12, align 4, !tbaa !54
  call void @glEnd() #9
  call void @glBegin(i32 noundef 7) #9
  store float -1.000000e+00, ptr %12, align 4, !tbaa !54
  call void @glNormal3fv(ptr noundef nonnull %3) #9
  call void @glVertex3fv(ptr noundef nonnull %10) #9
  call void @glVertex3fv(ptr noundef nonnull %8) #9
  call void @glVertex3fv(ptr noundef nonnull %2) #9
  call void @glVertex3fv(ptr noundef nonnull %6) #9
  call void @glEnd() #9
  call void @glPopMatrix() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #9
  ret void
}

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @GPU_select_query_check_active() local_unnamed_addr #2

declare void @view3d_winmatrix_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_select_begin(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @GPU_select_end() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !41, i64 432}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !40, i64 268}
!47 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!48 = !{!47, !44, i64 264}
!49 = !{!47, !37, i64 120}
!50 = !{!47, !37, i64 128}
!51 = !{!35, !40, i64 1040}
!52 = !{!35, !44, i64 616}
!53 = !{!35, !37, i64 216}
!54 = !{!44, !44, i64 0}
!55 = !{!56, !37, i64 96}
!56 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !57, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!57 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!58 = !{!59, !37, i64 376}
!59 = !{!"ARegion", !37, i64 0, !37, i64 8, !60, i64 16, !57, i64 176, !57, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !43, i64 248, !43, i64 264, !43, i64 280, !43, i64 296, !43, i64 312, !43, i64 328, !43, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!60 = !{!"View2D", !61, i64 0, !61, i64 16, !57, i64 32, !57, i64 48, !57, i64 64, !38, i64 80, !38, i64 88, !44, i64 96, !44, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!61 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!62 = !{!63, !38, i64 293}
!63 = !{!"View3D", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 56, !44, i64 72, !44, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !61, i64 112, !43, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !43, i64 296, !43, i64 312, !43, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!64 = !{!65, !37, i64 168}
!65 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !66, i64 280, !73, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !74, i64 4400, !75, i64 4416, !78, i64 4600, !37, i64 4608, !79, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !68, i64 4664, !69, i64 4824, !80, i64 4888, !37, i64 4952}
!66 = !{!"RenderData", !67, i64 0, !37, i64 248, !37, i64 256, !70, i64 264, !71, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !61, i64 544, !61, i64 560, !57, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !72, i64 2616, !41, i64 3976, !41, i64 3980}
!67 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!70 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!71 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!72 = !{!"BakeData", !67, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!73 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!74 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!75 = !{!"GameData", !74, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !76, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !77, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!76 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!77 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!78 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!79 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!80 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!81 = !{!82, !37, i64 32}
!82 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!83 = !{!84, !40, i64 824}
!84 = !{!"RegionView3D", !38, i64 0, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !38, i64 320, !38, i64 384, !38, i64 448, !38, i64 544, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !38, i64 696, !38, i64 760, !44, i64 776, !44, i64 780, !44, i64 784, !44, i64 788, !38, i64 792, !44, i64 804, !38, i64 808, !38, i64 809, !38, i64 810, !38, i64 811, !38, i64 812, !38, i64 813, !38, i64 816, !40, i64 824, !40, i64 826, !38, i64 828, !40, i64 844, !40, i64 846, !44, i64 848, !38, i64 852, !44, i64 864, !38, i64 868}
!85 = !{!35, !41, i64 944}
!86 = !{!63, !41, i64 224}
!87 = !{!35, !40, i64 136}
!88 = !{!63, !40, i64 238}
!89 = !{!90, !37, i64 0}
!90 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!91 = !{!92, !40, i64 46}
!92 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !93, i64 64, !95, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !96, i64 480, !97, i64 608}
!93 = !{!"ImagePaintSettings", !94, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!94 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!95 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!96 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!97 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!98 = !{!99, !38, i64 60}
!99 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!100 = !{!99, !37, i64 40}
!101 = !{!99, !37, i64 48}
!102 = !{!103, !37, i64 32}
!103 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !104, i64 144, !104, i64 344, !104, i64 544, !104, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!104 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!105 = !{!38, !38, i64 0}
!106 = !{!107, !38, i64 13}
!107 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!108 = distinct !{!108, !109, !110}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !109, !110}
!112 = distinct !{!112, !109, !110}
!113 = distinct !{!113, !109, !110}
!114 = distinct !{!114, !109, !110}
!115 = !{!35, !37, i64 296}
!116 = !{!117, !37, i64 176}
!117 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!118 = !{!119, !41, i64 132}
!119 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!120 = !{!40, !40, i64 0}
!121 = !{!117, !37, i64 160}
!122 = !{!37, !37, i64 0}
!123 = !{!117, !41, i64 216}
!124 = !{!119, !41, i64 136}
!125 = distinct !{!125, !109, !110}
!126 = !{!127, !40, i64 16}
!127 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!128 = !{!127, !41, i64 24}
!129 = !{!127, !37, i64 72}
!130 = !{!131, !40, i64 248}
!131 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !132, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!132 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!133 = !{!134, !38, i64 52}
!134 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!135 = !{!134, !38, i64 51}
!136 = !{!134, !38, i64 53}
!137 = distinct !{!137, !109, !110}
!138 = !{!127, !41, i64 28}
!139 = !{!127, !37, i64 64}
!140 = !{!141, !40, i64 24}
!141 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!142 = distinct !{!142, !109, !110}
!143 = distinct !{!143, !109, !110}
!144 = !{!145, !37, i64 240}
!145 = !{!"MetaBall", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !37, i64 240}
!146 = !{!145, !37, i64 160}
!147 = !{!148, !40, i64 26}
!148 = !{!"MetaElem", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !38, i64 44, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !37, i64 88, !37, i64 96}
!149 = distinct !{!149, !109, !110}
!150 = !{!151, !37, i64 272}
!151 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!152 = !{!153, !37, i64 0}
!153 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!154 = !{!151, !40, i64 128}
!155 = !{!151, !40, i64 130}
!156 = !{!151, !40, i64 132}
!157 = !{!151, !37, i64 176}
!158 = distinct !{!158, !109, !110}
!159 = !{!41, !41, i64 0}
!160 = !{!47, !40, i64 108}
!161 = !{!35, !37, i64 288}
!162 = !{!163, !41, i64 176}
!163 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !38, i64 48, !44, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!164 = distinct !{!164, !109, !110}
!165 = !{!166, !41, i64 296}
!166 = !{!"PTCacheEdit", !43, i64 0, !37, i64 16, !37, i64 24, !167, i64 32, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !38, i64 312, !38, i64 315}
!167 = !{!"PTCacheID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192}
!168 = !{!166, !37, i64 24}
!169 = !{!170, !40, i64 12}
!170 = !{!"PTCacheEditPoint", !37, i64 0, !41, i64 8, !40, i64 12}
!171 = !{!170, !41, i64 8}
!172 = !{!170, !37, i64 0}
!173 = !{!174, !40, i64 52}
!174 = !{!"PTCacheEditKey", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !44, i64 44, !44, i64 48, !40, i64 52}
!175 = !{!174, !37, i64 0}
!176 = distinct !{!176, !109, !110}
!177 = distinct !{!177, !109, !110}
!178 = !{!35, !40, i64 948}
!179 = !{!82, !41, i64 24}
!180 = !{!82, !41, i64 16}
!181 = !{!35, !37, i64 24}
!182 = !{!35, !38, i64 1160}
!183 = !{!35, !40, i64 954}
!184 = distinct !{!184, !109, !110}
!185 = !{!63, !38, i64 292}
!186 = !{!65, !37, i64 176}
!187 = !{!188, !40, i64 8902}
!188 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !189, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !190, i64 10928}
!189 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!190 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !38, i64 26}
!191 = distinct !{!191, !109, !110}
!192 = !{!63, !38, i64 291}
!193 = !{!194, !40, i64 2092}
!194 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!195 = !{!194, !40, i64 2084}
!196 = !{!188, !40, i64 8900}
!197 = distinct !{!197, !109, !110}
!198 = !{!63, !38, i64 344}
!199 = !{!200, !200, i64 0}
!200 = !{!"double", !38, i64 0}
!201 = distinct !{!201, !109, !110}
!202 = distinct !{!202, !109, !110}
!203 = !{!204, !40, i64 72}
!204 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !200, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!205 = !{!206, !37, i64 112}
!206 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!207 = !{!188, !40, i64 8896}
!208 = !{!209, !37, i64 8}
!209 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !210, i64 152, !40, i64 184}
!210 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!211 = !{!61, !44, i64 0}
!212 = !{!61, !44, i64 4}
!213 = !{!61, !44, i64 8}
!214 = !{!61, !44, i64 12}
!215 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54}
!216 = distinct !{!216, !109, !110}
!217 = distinct !{!217, !109, !110}
!218 = distinct !{!218, !109, !110}
!219 = distinct !{!219, !109, !110}
!220 = distinct !{!220, !109, !110}
!221 = distinct !{!221, !109, !110}
