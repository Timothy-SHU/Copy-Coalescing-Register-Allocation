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
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimbal_axis(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %0) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %64, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 26
  %19 = load i16, ptr %18, align 4, !tbaa !17
  %20 = tail call fastcc i32 @test_rotmode_euler(i16 noundef signext %19) #16, !range !19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 22
  call void @eulO_to_gimbal_axis(ptr noundef nonnull %3, ptr noundef nonnull %23, i16 noundef signext %19) #14
  br label %30

24:                                               ; preds = %17
  %25 = icmp eq i16 %19, -1
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 24
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 25
  %29 = load float, ptr %28, align 8, !tbaa !20
  call fastcc void @axis_angle_to_gimbal_axis(ptr noundef nonnull %3, ptr noundef nonnull %27, float noundef %29) #16
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %3) #14
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #15
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %35, i64 0, i32 29
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %38) #14
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %4) #14
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %39) #14
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  br label %42

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %41) #14
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #14
  br label %42

42:                                               ; preds = %40, %37
  call void @normalize_m3(ptr noundef %1) #14
  br label %43

43:                                               ; preds = %42, %24
  %44 = phi i8 [ 1, %42 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #15
  br label %64

45:                                               ; preds = %9
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !23
  %48 = tail call fastcc i32 @test_rotmode_euler(i16 noundef signext %47) #16, !range !19
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  tail call void @eulO_to_gimbal_axis(ptr noundef %1, ptr noundef nonnull %51, i16 noundef signext %47) #14
  br label %58

52:                                               ; preds = %45
  %53 = icmp eq i16 %47, -1
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %57 = load float, ptr %56, align 8, !tbaa !24
  tail call fastcc void @axis_angle_to_gimbal_axis(ptr noundef %1, ptr noundef nonnull %55, float noundef %57) #16
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #15
  %63 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %63) #14
  call void @normalize_m3(ptr noundef nonnull %7) #14
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #15
  br label %64

64:                                               ; preds = %14, %2, %43, %58, %62, %52
  %65 = phi i8 [ %44, %43 ], [ 0, %52 ], [ 1, %62 ], [ 1, %58 ], [ 0, %2 ], [ 0, %14 ]
  ret i8 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @test_rotmode_euler(i16 noundef signext %0) unnamed_addr #3 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, -2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @eulO_to_gimbal_axis(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @axis_angle_to_gimbal_axis(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !26
  store <2 x float> %7, ptr %4, align 8, !tbaa !26
  %8 = load float, ptr %1, align 4, !tbaa !26
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %8, ptr %9, align 8, !tbaa !26
  call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1) #16
  tail call fastcc void @normalize_v3(ptr noundef %0) #16
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef %2) #14
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef %0) #14
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef 0x3FF921FB60000000) #14
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %0) #16
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %1) #16
  call void @normalize_m3(ptr noundef %0) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_draw_manipulator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 42
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %1
  %14 = and i8 %10, -3
  store i8 %14, ptr %9, align 1, !tbaa !34
  %15 = tail call fastcc i32 @calc_manipulator_stats(ptr noundef %0) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %103, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %9, align 1, !tbaa !34
  %19 = or i8 %18, 2
  store i8 %19, ptr %9, align 1, !tbaa !34
  %20 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 27
  %21 = load i16, ptr %20, align 2, !tbaa !36
  switch i16 %21, label %52 [
    i16 1, label %49
    i16 3, label %46
    i16 2, label %46
    i16 4, label %22
    i16 0, label %42
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !5
  %37 = and i32 %36, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 16, i64 3
  %41 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #16
  br label %52

42:                                               ; preds = %17, %26, %34, %30, %22
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 16, i64 3
  %44 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 10
  %45 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 11
  tail call void @mid_v3_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45) #14
  br label %52

46:                                               ; preds = %17, %17
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 16, i64 3
  %48 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %48) #16
  br label %52

49:                                               ; preds = %17
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 16, i64 3
  %51 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef nonnull %6) #14
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %50, ptr noundef %51) #16
  br label %52

52:                                               ; preds = %17, %39, %42, %49, %46
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 16
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 16, i64 3
  %55 = tail call float @ED_view3d_pixel_size(ptr noundef %8, ptr noundef nonnull %54) #14
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !57
  %57 = sitofp i16 %56 to float
  %58 = fmul float %55, %57
  tail call void @mul_mat3_m4_fl(ptr noundef nonnull %53, float noundef %58) #14
  %59 = tail call float @mat4_to_scale(ptr noundef nonnull %53) #14
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp olt float %60, 0x3E7AD7F2A0000000
  br i1 %61, label %103, label %62

62:                                               ; preds = %52
  tail call fastcc void @test_manipulator_axis(ptr noundef %0) #16
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 31
  %64 = load i16, ptr %63, align 8, !tbaa !61
  %65 = sext i16 %64 to i32
  store i32 %65, ptr @drawflags, align 4, !tbaa !63
  %66 = load i8, ptr %9, align 1, !tbaa !34
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %62
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  tail call void @glEnable(i32 noundef 3042) #14
  %70 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 40
  %71 = load i8, ptr %70, align 1, !tbaa !64
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  %76 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !65
  %77 = icmp eq i16 %76, 3
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !67
  %80 = and i16 %79, 3
  %81 = icmp eq i16 %80, 0
  %82 = load i32, ptr @drawflags, align 4, !tbaa !63
  br i1 %81, label %84, label %83

83:                                               ; preds = %78
  tail call fastcc void @draw_manipulator_rotate_cyl(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %82, i32 noundef %72, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  br label %87

84:                                               ; preds = %78
  tail call fastcc void @draw_manipulator_rotate_cyl(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %82, i32 noundef %72, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %87

85:                                               ; preds = %75
  %86 = load i32, ptr @drawflags, align 4, !tbaa !63
  tail call fastcc void @draw_manipulator_rotate(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %86, i32 noundef %72, i8 noundef zeroext 0) #16
  br label %87

87:                                               ; preds = %85, %84, %83, %69
  %88 = load i8, ptr %70, align 1, !tbaa !64
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr @drawflags, align 4, !tbaa !63
  tail call fastcc void @draw_manipulator_scale(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %93, i32 noundef %89, i8 noundef zeroext 0) #16
  %94 = load i8, ptr %70, align 1, !tbaa !64
  %95 = zext i8 %94 to i32
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i32 [ %95, %92 ], [ %89, %87 ]
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr @drawflags, align 4, !tbaa !63
  tail call fastcc void @draw_manipulator_translate(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %101, i32 noundef %97, i8 noundef zeroext 0) #16
  br label %102

102:                                              ; preds = %100, %96
  tail call void @glDisable(i32 noundef 3042) #14
  br label %103

103:                                              ; preds = %62, %102, %52, %13, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calc_manipulator_stats(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMEditSelection, align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %18 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #14
  %19 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  %21 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %1, %26
  %30 = phi ptr [ %28, %26 ], [ null, %1 ]
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %22, i64 0, i32 16
  tail call void @unit_m4(ptr noundef nonnull %31) #14
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %22, i64 0, i32 31
  store i16 -1, ptr %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 10
  %34 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 11
  %35 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 11, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %35, align 4, !tbaa !26
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %33, align 8, !tbaa !26
  %36 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 9
  tail call fastcc void @zero_v3(ptr noundef nonnull %36) #16
  %37 = icmp eq ptr %17, null
  br i1 %37, label %404, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 52
  %40 = load i32, ptr %39, align 8, !tbaa !68
  %41 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 22
  %42 = load i32, ptr %41, align 8, !tbaa !69
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %637, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !70
  switch i16 %47, label %637 [
    i16 1, label %48
    i16 25, label %144
    i16 2, label %218
    i16 3, label %218
    i16 5, label %320
    i16 22, label %351
  ]

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %50 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %51 = load i16, ptr %50, align 2, !tbaa !36
  %52 = icmp eq i16 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load ptr, ptr %49, align 8, !tbaa !71
  %55 = call zeroext i8 @BM_select_history_active_get(ptr noundef %54, ptr noundef nonnull %2) #14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @BM_editselection_center(ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  call fastcc void @calc_tw_center(ptr noundef nonnull %16, ptr noundef nonnull %3) #16
  br label %142

58:                                               ; preds = %53, %48
  %59 = load ptr, ptr %49, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %60 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !73
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %58
  %66 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %59, i8 noundef zeroext 1, ptr noundef null) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %140, label %68

68:                                               ; preds = %65, %79
  %69 = phi i32 [ %80, %79 ], [ 0, %65 ]
  %70 = phi ptr [ %81, %79 ], [ %66, %65 ]
  %71 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %70, i8 noundef zeroext 2) #16, !range !80
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %70, i8 noundef zeroext 1) #16, !range !80
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = add nsw i32 %69, 1
  %78 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2
  call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %78) #16
  br label %79

79:                                               ; preds = %68, %76, %73
  %80 = phi i32 [ %69, %68 ], [ %77, %76 ], [ %69, %73 ]
  %81 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %140, label %68, !llvm.loop !81

83:                                               ; preds = %58
  %84 = and i32 %62, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %113, label %86

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %87 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %59, i8 noundef zeroext 1, ptr noundef null) #16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %111, label %89

89:                                               ; preds = %86, %107
  %90 = phi i32 [ %108, %107 ], [ 0, %86 ]
  %91 = phi ptr [ %109, %107 ], [ %87, %86 ]
  %92 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %91, i8 noundef zeroext 2) #16, !range !80
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %91) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %94, %104
  %98 = phi ptr [ %105, %104 ], [ %95, %94 ]
  %99 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %98, i8 noundef zeroext 1) #16, !range !80
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = add nsw i32 %90, 1
  %103 = getelementptr inbounds %struct.BMVert, ptr %91, i64 0, i32 2
  call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %103) #16
  br label %107

104:                                              ; preds = %97
  %105 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %97, !llvm.loop !83

107:                                              ; preds = %104, %94, %89, %101
  %108 = phi i32 [ %90, %89 ], [ %102, %101 ], [ %90, %94 ], [ %90, %104 ]
  %109 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %89, !llvm.loop !84

111:                                              ; preds = %107, %86
  %112 = phi i32 [ 0, %86 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %140

113:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %114 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %59, i8 noundef zeroext 1, ptr noundef null) #16
  %115 = icmp eq ptr %114, null
  br i1 %115, label %138, label %116

116:                                              ; preds = %113, %134
  %117 = phi i32 [ %135, %134 ], [ 0, %113 ]
  %118 = phi ptr [ %136, %134 ], [ %114, %113 ]
  %119 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %118, i8 noundef zeroext 2) #16, !range !80
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %118) #16
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %121, %131
  %125 = phi ptr [ %132, %131 ], [ %122, %121 ]
  %126 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %125, i8 noundef zeroext 1) #16, !range !80
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = add nsw i32 %117, 1
  %130 = getelementptr inbounds %struct.BMVert, ptr %118, i64 0, i32 2
  call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %130) #16
  br label %134

131:                                              ; preds = %124
  %132 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %124, !llvm.loop !85

134:                                              ; preds = %131, %121, %116, %128
  %135 = phi i32 [ %117, %116 ], [ %129, %128 ], [ %117, %121 ], [ %117, %131 ]
  %136 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %116, !llvm.loop !86

138:                                              ; preds = %134, %113
  %139 = phi i32 [ 0, %113 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  br label %140

140:                                              ; preds = %79, %65, %111, %138
  %141 = phi i32 [ %112, %111 ], [ %139, %138 ], [ 0, %65 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %142

142:                                              ; preds = %140, %57
  %143 = phi i32 [ 1, %57 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  br label %394

144:                                              ; preds = %45
  %145 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !87
  %147 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %148 = load i16, ptr %147, align 2, !tbaa !36
  %149 = icmp eq i16 %148, 4
  br i1 %149, label %150, label %172

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.bArmature, ptr %146, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !88
  %153 = icmp eq ptr %152, null
  br i1 %153, label %172, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.EditBone, ptr %152, i64 0, i32 9
  %156 = load i32, ptr %155, align 4, !tbaa !90
  %157 = and i32 %156, 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.EditBone, ptr %152, i64 0, i32 8
  tail call fastcc void @calc_tw_center(ptr noundef nonnull %16, ptr noundef nonnull %160) #16
  %161 = load i32, ptr %155, align 4, !tbaa !90
  br label %162

162:                                              ; preds = %159, %154
  %163 = phi i32 [ %161, %159 ], [ %156, %154 ]
  %164 = phi i32 [ 1, %159 ], [ 0, %154 ]
  %165 = and i32 %163, 6
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.EditBone, ptr %152, i64 0, i32 7
  tail call fastcc void @calc_tw_center(ptr noundef nonnull %16, ptr noundef nonnull %168) #16
  %169 = add nuw nsw i32 %164, 1
  br label %170

170:                                              ; preds = %162, %167
  %171 = phi i32 [ %169, %167 ], [ %164, %162 ]
  tail call fastcc void @stats_editbone(ptr noundef nonnull %22, ptr noundef nonnull %152) #16
  br label %394

172:                                              ; preds = %150, %144
  %173 = getelementptr inbounds %struct.bArmature, ptr %146, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !92
  %175 = load ptr, ptr %174, align 8, !tbaa !93
  %176 = icmp eq ptr %175, null
  br i1 %176, label %637, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.bArmature, ptr %146, i64 0, i32 15
  br label %179

179:                                              ; preds = %177, %214
  %180 = phi ptr [ %175, %177 ], [ %216, %214 ]
  %181 = phi i32 [ 0, %177 ], [ %215, %214 ]
  %182 = load i32, ptr %178, align 8, !tbaa !94
  %183 = getelementptr inbounds %struct.EditBone, ptr %180, i64 0, i32 10
  %184 = load i32, ptr %183, align 8, !tbaa !95
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %214, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.EditBone, ptr %180, i64 0, i32 9
  %189 = load i32, ptr %188, align 4, !tbaa !90
  %190 = and i32 %189, 1024
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %187
  %193 = and i32 %189, 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.EditBone, ptr %180, i64 0, i32 8
  tail call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %196) #16
  %197 = add nsw i32 %181, 1
  %198 = load i32, ptr %188, align 4, !tbaa !90
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %198, %195 ], [ %189, %192 ]
  %201 = phi i32 [ %197, %195 ], [ %181, %192 ]
  %202 = and i32 %200, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.EditBone, ptr %180, i64 0, i32 7
  tail call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %205) #16
  %206 = add nsw i32 %201, 1
  %207 = load i32, ptr %188, align 4, !tbaa !90
  br label %208

208:                                              ; preds = %204, %199
  %209 = phi i32 [ %207, %204 ], [ %200, %199 ]
  %210 = phi i32 [ %206, %204 ], [ %201, %199 ]
  %211 = and i32 %209, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  tail call fastcc void @stats_editbone(ptr noundef %22, ptr noundef nonnull %180) #16
  br label %214

214:                                              ; preds = %187, %213, %208, %179
  %215 = phi i32 [ %210, %213 ], [ %210, %208 ], [ %181, %187 ], [ %181, %179 ]
  %216 = load ptr, ptr %180, align 8, !tbaa !93
  %217 = icmp eq ptr %216, null
  br i1 %217, label %394, label %179, !llvm.loop !96

218:                                              ; preds = %45, %45
  %219 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %220 = load ptr, ptr %219, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %221 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %222 = load i16, ptr %221, align 2, !tbaa !36
  %223 = icmp eq i16 %222, 4
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = call zeroext i8 @ED_curve_active_center(ptr noundef %220, ptr noundef nonnull %7) #14
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  call fastcc void @calc_tw_center(ptr noundef nonnull %16, ptr noundef nonnull %7) #16
  br label %318

228:                                              ; preds = %224, %218
  %229 = call ptr @BKE_curve_editNurbs_get(ptr noundef %220) #14
  %230 = load ptr, ptr %229, align 8, !tbaa !93
  %231 = icmp eq ptr %230, null
  br i1 %231, label %318, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.Curve, ptr %220, i64 0, i32 16
  br label %234

234:                                              ; preds = %232, %314
  %235 = phi ptr [ %230, %232 ], [ %316, %314 ]
  %236 = phi i32 [ 0, %232 ], [ %315, %314 ]
  %237 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 2
  %238 = load i16, ptr %237, align 8, !tbaa !97
  %239 = icmp eq i16 %238, 1
  %240 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 6
  %241 = load i32, ptr %240, align 8, !tbaa !99
  br i1 %239, label %242, label %291

242:                                              ; preds = %234
  %243 = icmp eq i32 %241, 0
  br i1 %243, label %314, label %244

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 18
  %246 = load ptr, ptr %245, align 8, !tbaa !100
  br label %247

247:                                              ; preds = %244, %287
  %248 = phi i32 [ %251, %287 ], [ %241, %244 ]
  %249 = phi i32 [ %288, %287 ], [ %236, %244 ]
  %250 = phi ptr [ %289, %287 ], [ %246, %244 ]
  %251 = add nsw i32 %248, -1
  %252 = load i16, ptr %233, align 8, !tbaa !101
  %253 = and i16 %252, 1
  %254 = icmp eq i16 %253, 0
  %255 = getelementptr inbounds %struct.BezTriple, ptr %250, i64 0, i32 8
  %256 = load i8, ptr %255, align 4, !tbaa !104
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  br i1 %254, label %260, label %259

259:                                              ; preds = %247
  br i1 %258, label %287, label %282

260:                                              ; preds = %247
  br i1 %258, label %261, label %282

261:                                              ; preds = %260
  %262 = getelementptr inbounds %struct.BezTriple, ptr %250, i64 0, i32 7
  %263 = load i8, ptr %262, align 1, !tbaa !106
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %261
  %267 = load i16, ptr %221, align 2, !tbaa !36
  %268 = icmp eq i16 %267, 2
  %269 = zext i1 %268 to i64
  %270 = getelementptr inbounds [3 x [3 x float]], ptr %250, i64 0, i64 %269
  call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef %270) #16
  %271 = add nsw i32 %249, 1
  br label %272

272:                                              ; preds = %266, %261
  %273 = phi i32 [ %271, %266 ], [ %249, %261 ]
  %274 = getelementptr inbounds %struct.BezTriple, ptr %250, i64 0, i32 9
  %275 = load i8, ptr %274, align 1, !tbaa !107
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %287, label %278

278:                                              ; preds = %272
  %279 = load i16, ptr %221, align 2, !tbaa !36
  %280 = icmp eq i16 %279, 2
  %281 = select i1 %280, i64 1, i64 2
  br label %282

282:                                              ; preds = %260, %259, %278
  %283 = phi i64 [ %281, %278 ], [ 1, %259 ], [ 1, %260 ]
  %284 = phi i32 [ %273, %278 ], [ %249, %259 ], [ %249, %260 ]
  %285 = getelementptr inbounds [3 x [3 x float]], ptr %250, i64 0, i64 %283
  call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %285) #16
  %286 = add nsw i32 %284, 1
  br label %287

287:                                              ; preds = %282, %272, %259
  %288 = phi i32 [ %249, %259 ], [ %273, %272 ], [ %286, %282 ]
  %289 = getelementptr inbounds %struct.BezTriple, ptr %250, i64 1
  %290 = icmp eq i32 %251, 0
  br i1 %290, label %314, label %247, !llvm.loop !108

291:                                              ; preds = %234
  %292 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 7
  %293 = load i32, ptr %292, align 4, !tbaa !109
  %294 = mul nsw i32 %293, %241
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %314, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 17
  %298 = load ptr, ptr %297, align 8, !tbaa !110
  br label %299

299:                                              ; preds = %296, %310
  %300 = phi i32 [ %303, %310 ], [ %294, %296 ]
  %301 = phi i32 [ %311, %310 ], [ %236, %296 ]
  %302 = phi ptr [ %312, %310 ], [ %298, %296 ]
  %303 = add nsw i32 %300, -1
  %304 = getelementptr inbounds %struct.BPoint, ptr %302, i64 0, i32 3
  %305 = load i16, ptr %304, align 4, !tbaa !111
  %306 = and i16 %305, 1
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %299
  call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %302) #16
  %309 = add nsw i32 %301, 1
  br label %310

310:                                              ; preds = %308, %299
  %311 = phi i32 [ %309, %308 ], [ %301, %299 ]
  %312 = getelementptr inbounds %struct.BPoint, ptr %302, i64 1
  %313 = icmp eq i32 %303, 0
  br i1 %313, label %314, label %299, !llvm.loop !113

314:                                              ; preds = %310, %287, %291, %242
  %315 = phi i32 [ %236, %242 ], [ %236, %291 ], [ %288, %287 ], [ %311, %310 ]
  %316 = load ptr, ptr %235, align 8, !tbaa !93
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %234, !llvm.loop !114

318:                                              ; preds = %314, %228, %227
  %319 = phi i32 [ 1, %227 ], [ 0, %228 ], [ %315, %314 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  br label %394

320:                                              ; preds = %45
  %321 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %322 = load ptr, ptr %321, align 8, !tbaa !87
  %323 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %324 = load i16, ptr %323, align 2, !tbaa !36
  %325 = icmp eq i16 %324, 4
  br i1 %325, label %326, label %332

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.MetaBall, ptr %322, i64 0, i32 18
  %328 = load ptr, ptr %327, align 8, !tbaa !115
  %329 = icmp eq ptr %328, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.MetaElem, ptr %328, i64 0, i32 7
  br label %397

332:                                              ; preds = %326, %320
  %333 = getelementptr inbounds %struct.MetaBall, ptr %322, i64 0, i32 4
  %334 = load ptr, ptr %333, align 8, !tbaa !117
  %335 = load ptr, ptr %334, align 8, !tbaa !93
  %336 = icmp eq ptr %335, null
  br i1 %336, label %637, label %337

337:                                              ; preds = %332, %347
  %338 = phi ptr [ %349, %347 ], [ %335, %332 ]
  %339 = phi i32 [ %348, %347 ], [ 0, %332 ]
  %340 = getelementptr inbounds %struct.MetaElem, ptr %338, i64 0, i32 4
  %341 = load i16, ptr %340, align 2, !tbaa !118
  %342 = and i16 %341, 1
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.MetaElem, ptr %338, i64 0, i32 7
  tail call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %345) #16
  %346 = add nsw i32 %339, 1
  br label %347

347:                                              ; preds = %337, %344
  %348 = phi i32 [ %346, %344 ], [ %339, %337 ]
  %349 = load ptr, ptr %338, align 8, !tbaa !93
  %350 = icmp eq ptr %349, null
  br i1 %350, label %394, label %337, !llvm.loop !120

351:                                              ; preds = %45
  %352 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %353 = load ptr, ptr %352, align 8, !tbaa !87
  %354 = getelementptr inbounds %struct.Lattice, ptr %353, i64 0, i32 26
  %355 = load ptr, ptr %354, align 8, !tbaa !121
  %356 = load ptr, ptr %355, align 8, !tbaa !123
  %357 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %358 = load i16, ptr %357, align 2, !tbaa !36
  %359 = icmp eq i16 %358, 4
  br i1 %359, label %360, label %363

360:                                              ; preds = %351
  %361 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %356) #14
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %397

363:                                              ; preds = %360, %351
  %364 = getelementptr inbounds %struct.Lattice, ptr %356, i64 0, i32 2
  %365 = load i16, ptr %364, align 8, !tbaa !125
  %366 = sext i16 %365 to i32
  %367 = getelementptr inbounds %struct.Lattice, ptr %356, i64 0, i32 3
  %368 = load i16, ptr %367, align 2, !tbaa !126
  %369 = sext i16 %368 to i32
  %370 = mul nsw i32 %369, %366
  %371 = getelementptr inbounds %struct.Lattice, ptr %356, i64 0, i32 4
  %372 = load i16, ptr %371, align 4, !tbaa !127
  %373 = sext i16 %372 to i32
  %374 = mul nsw i32 %370, %373
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %637, label %376

376:                                              ; preds = %363
  %377 = getelementptr inbounds %struct.Lattice, ptr %356, i64 0, i32 21
  %378 = load ptr, ptr %377, align 8, !tbaa !128
  br label %379

379:                                              ; preds = %376, %390
  %380 = phi i32 [ %383, %390 ], [ %374, %376 ]
  %381 = phi ptr [ %392, %390 ], [ %378, %376 ]
  %382 = phi i32 [ %391, %390 ], [ 0, %376 ]
  %383 = add nsw i32 %380, -1
  %384 = getelementptr inbounds %struct.BPoint, ptr %381, i64 0, i32 3
  %385 = load i16, ptr %384, align 4, !tbaa !111
  %386 = and i16 %385, 1
  %387 = icmp eq i16 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %379
  tail call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %381) #16
  %389 = add nsw i32 %382, 1
  br label %390

390:                                              ; preds = %388, %379
  %391 = phi i32 [ %389, %388 ], [ %382, %379 ]
  %392 = getelementptr inbounds %struct.BPoint, ptr %381, i64 1
  %393 = icmp eq i32 %383, 0
  br i1 %393, label %394, label %379, !llvm.loop !129

394:                                              ; preds = %390, %347, %214, %170, %318, %142
  %395 = phi i32 [ %143, %142 ], [ %319, %318 ], [ %171, %170 ], [ %215, %214 ], [ %348, %347 ], [ %391, %390 ]
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %637, label %399

397:                                              ; preds = %360, %330
  %398 = phi ptr [ %331, %330 ], [ %361, %360 ]
  tail call fastcc void @calc_tw_center(ptr noundef nonnull %16, ptr noundef nonnull %398) #16
  br label %399

399:                                              ; preds = %397, %394
  %400 = phi i32 [ %395, %394 ], [ 1, %397 ]
  %401 = sitofp i32 %400 to float
  %402 = fdiv float 1.000000e+00, %401
  call fastcc void @mul_v3_fl(ptr noundef nonnull %36, float noundef %402) #16
  %403 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %403, ptr noundef nonnull %36) #14
  call void @mul_m4_v3(ptr noundef nonnull %403, ptr noundef nonnull %33) #14
  call void @mul_m4_v3(ptr noundef nonnull %403, ptr noundef nonnull %34) #14
  br label %593

404:                                              ; preds = %29
  %405 = icmp eq ptr %30, null
  br i1 %405, label %530, label %406

406:                                              ; preds = %404
  %407 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 27
  %408 = load i32, ptr %407, align 8, !tbaa !5
  %409 = and i32 %408, 64
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %459, label %411

411:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 2, ptr %8, align 4, !tbaa !63
  %412 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 52
  %413 = load i32, ptr %412, align 8, !tbaa !68
  %414 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 22
  %415 = load i32, ptr %414, align 8, !tbaa !69
  %416 = and i32 %415, %413
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %411
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %637

419:                                              ; preds = %411
  %420 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %421 = load i16, ptr %420, align 2, !tbaa !36
  %422 = icmp eq i16 %421, 4
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %30) #14
  %425 = icmp eq ptr %424, null
  br i1 %425, label %431, label %426

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.bPoseChannel, ptr %424, i64 0, i32 12
  %428 = load ptr, ptr %427, align 8, !tbaa !21
  %429 = icmp eq ptr %428, null
  br i1 %429, label %453, label %430

430:                                              ; preds = %426
  tail call fastcc void @stats_pose(ptr noundef nonnull %16, ptr noundef nonnull %22, ptr noundef nonnull %424) #16
  br label %454

431:                                              ; preds = %423, %419
  %432 = call i32 @count_set_pose_transflags(ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef nonnull %30) #14
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %453, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 18
  %436 = load ptr, ptr %435, align 8, !tbaa !130
  %437 = load ptr, ptr %436, align 8, !tbaa !93
  %438 = icmp eq ptr %437, null
  br i1 %438, label %454, label %439

439:                                              ; preds = %434, %450
  %440 = phi ptr [ %451, %450 ], [ %437, %434 ]
  %441 = getelementptr inbounds %struct.bPoseChannel, ptr %440, i64 0, i32 12
  %442 = load ptr, ptr %441, align 8, !tbaa !21
  %443 = icmp eq ptr %442, null
  br i1 %443, label %450, label %444

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.Bone, ptr %442, i64 0, i32 10
  %446 = load i32, ptr %445, align 8, !tbaa !131
  %447 = and i32 %446, 8
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %444
  call fastcc void @stats_pose(ptr noundef %16, ptr noundef %22, ptr noundef nonnull %440) #16
  br label %450

450:                                              ; preds = %449, %444, %439
  %451 = load ptr, ptr %440, align 8, !tbaa !93
  %452 = icmp eq ptr %451, null
  br i1 %452, label %454, label %439, !llvm.loop !133

453:                                              ; preds = %426, %431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %637

454:                                              ; preds = %450, %434, %430
  %455 = phi i32 [ 1, %430 ], [ %432, %434 ], [ %432, %450 ]
  %456 = sitofp i32 %455 to float
  %457 = fdiv float 1.000000e+00, %456
  call fastcc void @mul_v3_fl(ptr noundef nonnull %36, float noundef %457) #16
  %458 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %458, ptr noundef nonnull %36) #14
  call void @mul_m4_v3(ptr noundef nonnull %458, ptr noundef nonnull %33) #14
  call void @mul_m4_v3(ptr noundef nonnull %458, ptr noundef nonnull %34) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %593

459:                                              ; preds = %406
  %460 = and i32 %408, 30
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %637

462:                                              ; preds = %459
  %463 = and i32 %408, 32
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %530, label %465

465:                                              ; preds = %462
  %466 = tail call ptr @PE_get_current(ptr noundef nonnull %16, ptr noundef nonnull %30) #14
  %467 = icmp eq ptr %466, null
  br i1 %467, label %637, label %468

468:                                              ; preds = %465
  %469 = getelementptr inbounds %struct.PTCacheEdit, ptr %466, i64 0, i32 11
  %470 = load i32, ptr %469, align 8, !tbaa !134
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %637

472:                                              ; preds = %468
  %473 = getelementptr inbounds %struct.PTCacheEdit, ptr %466, i64 0, i32 2
  %474 = load ptr, ptr %473, align 8, !tbaa !137
  br label %475

475:                                              ; preds = %472, %519
  %476 = phi i32 [ %520, %519 ], [ %470, %472 ]
  %477 = phi ptr [ %523, %519 ], [ %474, %472 ]
  %478 = phi i32 [ %522, %519 ], [ 0, %472 ]
  %479 = phi i32 [ %521, %519 ], [ 0, %472 ]
  %480 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %477, i64 0, i32 2
  %481 = load i16, ptr %480, align 4, !tbaa !138
  %482 = and i16 %481, 8
  %483 = icmp eq i16 %482, 0
  br i1 %483, label %484, label %519

484:                                              ; preds = %475
  %485 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %477, i64 0, i32 1
  %486 = load i32, ptr %485, align 8, !tbaa !140
  %487 = icmp sgt i32 %486, 0
  br i1 %487, label %488, label %519

488:                                              ; preds = %484
  %489 = load ptr, ptr %477, align 8, !tbaa !141
  br label %490

490:                                              ; preds = %488, %511
  %491 = phi i32 [ %512, %511 ], [ %486, %488 ]
  %492 = phi i32 [ %514, %511 ], [ 0, %488 ]
  %493 = phi ptr [ %515, %511 ], [ %489, %488 ]
  %494 = phi i32 [ %513, %511 ], [ %479, %488 ]
  %495 = getelementptr inbounds %struct.PTCacheEditKey, ptr %493, i64 0, i32 7
  %496 = load i16, ptr %495, align 4, !tbaa !142
  %497 = zext i16 %496 to i32
  %498 = and i32 %497, 1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %511, label %500

500:                                              ; preds = %490
  %501 = and i32 %497, 8
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %505, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.PTCacheEditKey, ptr %493, i64 0, i32 4
  br label %507

505:                                              ; preds = %500
  %506 = load ptr, ptr %493, align 8, !tbaa !144
  br label %507

507:                                              ; preds = %505, %503
  %508 = phi ptr [ %504, %503 ], [ %506, %505 ]
  tail call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef %508) #16
  %509 = add nsw i32 %494, 1
  %510 = load i32, ptr %485, align 8, !tbaa !140
  br label %511

511:                                              ; preds = %490, %507
  %512 = phi i32 [ %510, %507 ], [ %491, %490 ]
  %513 = phi i32 [ %509, %507 ], [ %494, %490 ]
  %514 = add nuw nsw i32 %492, 1
  %515 = getelementptr inbounds %struct.PTCacheEditKey, ptr %493, i64 1
  %516 = icmp slt i32 %514, %512
  br i1 %516, label %490, label %517, !llvm.loop !145

517:                                              ; preds = %511
  %518 = load i32, ptr %469, align 8, !tbaa !134
  br label %519

519:                                              ; preds = %517, %484, %475
  %520 = phi i32 [ %476, %475 ], [ %476, %484 ], [ %518, %517 ]
  %521 = phi i32 [ %479, %475 ], [ %479, %484 ], [ %513, %517 ]
  %522 = add nuw nsw i32 %478, 1
  %523 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %477, i64 1
  %524 = icmp slt i32 %522, %520
  br i1 %524, label %475, label %525, !llvm.loop !146

525:                                              ; preds = %519
  %526 = icmp eq i32 %521, 0
  br i1 %526, label %637, label %527

527:                                              ; preds = %525
  %528 = sitofp i32 %521 to float
  %529 = fdiv float 1.000000e+00, %528
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %36, float noundef %529) #16
  br label %593

530:                                              ; preds = %404, %462
  %531 = load ptr, ptr %23, align 8, !tbaa !54
  %532 = icmp eq ptr %531, null
  br i1 %532, label %543, label %533

533:                                              ; preds = %530
  %534 = getelementptr inbounds %struct.Base, ptr %531, i64 0, i32 7
  %535 = load ptr, ptr %534, align 8, !tbaa !55
  %536 = icmp eq ptr %535, null
  br i1 %536, label %543, label %537

537:                                              ; preds = %533
  %538 = getelementptr inbounds %struct.Object, ptr %535, i64 0, i32 53
  %539 = load i16, ptr %538, align 4, !tbaa !147
  %540 = and i16 %539, 1
  %541 = icmp eq i16 %540, 0
  %542 = select i1 %541, ptr null, ptr %535
  br label %543

543:                                              ; preds = %530, %537, %533
  %544 = phi ptr [ %542, %537 ], [ null, %533 ], [ null, %530 ]
  %545 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 5
  %546 = load ptr, ptr %545, align 8, !tbaa !93
  %547 = icmp eq ptr %546, null
  br i1 %547, label %637, label %548

548:                                              ; preds = %543
  %549 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 22
  br label %550

550:                                              ; preds = %548, %583
  %551 = phi ptr [ %546, %548 ], [ %586, %583 ]
  %552 = phi ptr [ %544, %548 ], [ %585, %583 ]
  %553 = phi i32 [ 0, %548 ], [ %584, %583 ]
  %554 = getelementptr inbounds %struct.Base, ptr %551, i64 0, i32 4
  %555 = load i32, ptr %554, align 8, !tbaa !148
  %556 = and i32 %555, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %583, label %558

558:                                              ; preds = %550
  %559 = getelementptr inbounds %struct.Base, ptr %551, i64 0, i32 2
  %560 = load i32, ptr %559, align 8, !tbaa !149
  %561 = load i32, ptr %549, align 8, !tbaa !69
  %562 = and i32 %561, %560
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %583, label %564

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.Base, ptr %551, i64 0, i32 7
  %566 = load ptr, ptr %565, align 8, !tbaa !55
  %567 = getelementptr inbounds %struct.ID, ptr %566, i64 0, i32 3
  %568 = load ptr, ptr %567, align 8, !tbaa !150
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %583

570:                                              ; preds = %564
  %571 = getelementptr inbounds %struct.Object, ptr %566, i64 0, i32 102
  %572 = load i8, ptr %571, align 8, !tbaa !151
  %573 = and i8 %572, 1
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %575, label %583

575:                                              ; preds = %570
  %576 = icmp eq ptr %552, null
  %577 = select i1 %576, ptr %566, ptr %552
  %578 = getelementptr inbounds %struct.Object, ptr %566, i64 0, i32 47, i64 3
  tail call fastcc void @calc_tw_center(ptr noundef %16, ptr noundef nonnull %578) #16
  %579 = load ptr, ptr %565, align 8, !tbaa !55
  %580 = getelementptr inbounds %struct.Object, ptr %579, i64 0, i32 56
  %581 = load i16, ptr %580, align 2, !tbaa !152
  tail call fastcc void @protectflag_to_drawflags(i16 noundef signext %581, ptr noundef nonnull %32) #16
  %582 = add nsw i32 %553, 1
  br label %583

583:                                              ; preds = %550, %558, %564, %570, %575
  %584 = phi i32 [ %582, %575 ], [ %553, %570 ], [ %553, %564 ], [ %553, %558 ], [ %553, %550 ]
  %585 = phi ptr [ %577, %575 ], [ %552, %570 ], [ %552, %564 ], [ %552, %558 ], [ %552, %550 ]
  %586 = load ptr, ptr %551, align 8, !tbaa !93
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %550, !llvm.loop !153

588:                                              ; preds = %583
  %589 = icmp eq i32 %584, 0
  br i1 %589, label %637, label %590

590:                                              ; preds = %588
  %591 = sitofp i32 %584 to float
  %592 = fdiv float 1.000000e+00, %591
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %36, float noundef %592) #16
  br label %593

593:                                              ; preds = %454, %527, %590, %399
  %594 = phi i32 [ %400, %399 ], [ %455, %454 ], [ %584, %590 ], [ %521, %527 ]
  %595 = phi ptr [ %17, %399 ], [ %30, %454 ], [ %585, %590 ], [ %30, %527 ]
  %596 = icmp eq ptr %595, null
  br i1 %596, label %637, label %597

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 41
  %599 = load i8, ptr %598, align 4, !tbaa !154
  switch i8 %599, label %632 [
    i8 0, label %637
    i8 4, label %603
    i8 2, label %608
    i8 1, label %600
    i8 3, label %630
  ]

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.Object, ptr %595, i64 0, i32 27
  %602 = load i32, ptr %601, align 8, !tbaa !5
  br label %619

603:                                              ; preds = %597
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  %604 = call zeroext i8 @gimbal_axis(ptr noundef nonnull %595, ptr noundef nonnull %9) #16
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %603
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  br label %608

607:                                              ; preds = %603
  call void @copy_m4_m3(ptr noundef nonnull %31, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  br label %637

608:                                              ; preds = %606, %597
  br i1 %37, label %609, label %614

609:                                              ; preds = %608
  %610 = getelementptr inbounds %struct.Object, ptr %595, i64 0, i32 27
  %611 = load i32, ptr %610, align 8, !tbaa !5
  %612 = and i32 %611, 64
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %619, label %614

614:                                              ; preds = %609, %608
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #15
  %615 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %616 = load i16, ptr %615, align 2, !tbaa !36
  %617 = icmp eq i16 %616, 4
  %618 = zext i1 %617 to i8
  call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext %618) #14
  call void @copy_m4_m3(ptr noundef nonnull %31, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #15
  br label %637

619:                                              ; preds = %600, %609
  %620 = phi i32 [ %602, %600 ], [ %611, %609 ]
  %621 = and i32 %620, 64
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %628, label %623

623:                                              ; preds = %619
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #15
  %624 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 27
  %625 = load i16, ptr %624, align 2, !tbaa !36
  %626 = icmp eq i16 %625, 4
  %627 = zext i1 %626 to i8
  call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext %627) #14
  call void @copy_m4_m3(ptr noundef nonnull %31, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #15
  br label %637

628:                                              ; preds = %619
  %629 = getelementptr inbounds %struct.Object, ptr %595, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %31, ptr noundef nonnull %629) #14
  call void @normalize_m4(ptr noundef nonnull %31) #14
  br label %637

630:                                              ; preds = %597
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #15
  %631 = getelementptr inbounds %struct.RegionView3D, ptr %22, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef nonnull %631) #14
  call void @normalize_m3(ptr noundef nonnull %12) #14
  call void @copy_m4_m3(ptr noundef nonnull %31, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #15
  br label %637

632:                                              ; preds = %597
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #15
  %633 = call zeroext i8 @applyTransformOrientation(ptr noundef %0, ptr noundef nonnull %13, ptr noundef null) #14
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %636, label %635

635:                                              ; preds = %632
  call void @copy_m4_m3(ptr noundef nonnull %31, ptr noundef nonnull %13) #14
  br label %636

636:                                              ; preds = %635, %632
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #15
  br label %637

637:                                              ; preds = %543, %468, %363, %332, %172, %45, %453, %465, %525, %588, %459, %394, %607, %418, %593, %597, %636, %630, %628, %623, %614, %38
  %638 = phi i32 [ 0, %38 ], [ %594, %607 ], [ %594, %614 ], [ %594, %623 ], [ %594, %628 ], [ %594, %630 ], [ %594, %636 ], [ %594, %597 ], [ %594, %593 ], [ 0, %418 ], [ 0, %394 ], [ 0, %459 ], [ 0, %588 ], [ 0, %525 ], [ 0, %465 ], [ 0, %453 ], [ 0, %45 ], [ 0, %172 ], [ 0, %332 ], [ 0, %363 ], [ 0, %468 ], [ 0, %543 ]
  ret i32 %638
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !26
  store float %3, ptr %0, align 4, !tbaa !26
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !26
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !26
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !26
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !26
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @test_manipulator_axis(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 16, i64 3
  call void @ED_view3d_global_to_vector(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #14
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 31
  br label %7

7:                                                ; preds = %1, %22
  %8 = phi i64 [ 0, %1 ], [ %23, %22 ]
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 16, i64 %8
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %9) #16
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %11 = call float @llvm.fabs.f32(float %10)
  %12 = fsub float 1.000000e+00, %11
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 37, i64 %8
  store float %12, ptr %13, align 4, !tbaa !26
  %14 = fcmp olt float %12, 0x3F947AE140000000
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = getelementptr inbounds [3 x i32], ptr @__const.test_manipulator_axis.twdrawflag_axis, i64 0, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !63
  %18 = load i16, ptr %6, align 8, !tbaa !61
  %19 = trunc i32 %17 to i16
  %20 = xor i16 %19, -1
  %21 = and i16 %18, %20
  store i16 %21, ptr %6, align 8, !tbaa !61
  br label %22

22:                                               ; preds = %7, %15
  %23 = add nuw nsw i64 %8, 1
  %24 = icmp eq i64 %23, 3
  br i1 %24, label %25, label %7, !llvm.loop !155

25:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_manipulator_rotate_cyl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [3 x i32], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 8
  %11 = alloca [4 x [4 x float]], align 16
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !156
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3F847AE140000000
  %15 = fmul float %14, 2.500000e-01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_manipulator_scale.axis_order, i64 12, i1 false)
  %16 = and i32 %2, 248
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %7
  call fastcc void @manipulator_axis_order(ptr noundef %1, ptr noundef nonnull %8) #16
  call void @glPushMatrix() #14
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %20 = call fastcc float @screen_aligned(ptr noundef %1, ptr noundef nonnull %19) #16
  call void @glDisable(i32 noundef 2929) #14
  %21 = call ptr @gluNewQuadric() #14
  %22 = and i32 %2, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #15
  call void @unit_m4(ptr noundef nonnull %9) #14
  %25 = icmp eq i8 %6, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = call zeroext i8 @GPU_select_load_id(i32 noundef 64) #14
  br label %28

28:                                               ; preds = %26, %24
  call void @UI_ThemeColor(i32 noundef 32) #14
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %30 = fmul float %20, 0x3FF3333340000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %29, float noundef %30, ptr noundef nonnull %9) #14
  %31 = icmp eq i8 %5, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !26
  %33 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !26
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %30) #16
  call void @glBegin(i32 noundef 1) #14
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call void @glVertex3fv(ptr noundef nonnull %10) #14
  call void @glEnd() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %34

34:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #15
  br label %35

35:                                               ; preds = %34, %18
  call void @glPopMatrix() #14
  %36 = icmp eq i8 %5, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #15
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %19) #14
  call void @glMultMatrixf(ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #15
  br label %39

38:                                               ; preds = %35
  call void @glMultMatrixf(ptr noundef nonnull %19) #14
  br label %39

39:                                               ; preds = %38, %37
  %40 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %19) #14
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %42) #14
  %43 = icmp eq i8 %6, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = and i32 %3, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = and i32 %2, 8
  %49 = and i32 %2, 16
  %50 = and i32 %2, 32
  call fastcc void @draw_manipulator_axes(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %48, i32 noundef %49, i32 noundef %50, ptr noundef nonnull %8, i8 noundef zeroext 0) #16
  br label %51

51:                                               ; preds = %47, %44
  call void @gluQuadricDrawStyle(ptr noundef %21, i32 noundef 100012) #14
  br label %52

52:                                               ; preds = %51, %39
  %53 = and i32 %2, 32
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %2, 16
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %2, 8
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %52, %78
  %60 = phi i64 [ 0, %52 ], [ %79, %78 ]
  %61 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !63
  switch i32 %62, label %78 [
    i32 0, label %63
    i32 1, label %68
    i32 2, label %73
  ]

63:                                               ; preds = %59
  br i1 %58, label %78, label %64

64:                                               ; preds = %63
  call void @glTranslatef(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br i1 %43, label %67, label %65

65:                                               ; preds = %64
  %66 = call zeroext i8 @GPU_select_load_id(i32 noundef 8) #14
  br label %67

67:                                               ; preds = %65, %64
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef %4, i8 noundef zeroext -1) #16
  call fastcc void @draw_cylinder(ptr noundef %21, float noundef %14, float noundef %15) #16
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call void @glTranslatef(float noundef -1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br label %78

68:                                               ; preds = %59
  br i1 %56, label %78, label %69

69:                                               ; preds = %68
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  br i1 %43, label %72, label %70

70:                                               ; preds = %69
  %71 = call zeroext i8 @GPU_select_load_id(i32 noundef 16) #14
  br label %72

72:                                               ; preds = %70, %69
  call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef %4, i8 noundef zeroext -1) #16
  call fastcc void @draw_cylinder(ptr noundef %21, float noundef %14, float noundef %15) #16
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call void @glTranslatef(float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 0.000000e+00) #14
  br label %78

73:                                               ; preds = %59
  br i1 %54, label %78, label %74

74:                                               ; preds = %73
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  br i1 %43, label %77, label %75

75:                                               ; preds = %74
  %76 = call zeroext i8 @GPU_select_load_id(i32 noundef 32) #14
  br label %77

77:                                               ; preds = %75, %74
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef %4, i8 noundef zeroext -1) #16
  call fastcc void @draw_cylinder(ptr noundef %21, float noundef %14, float noundef %15) #16
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00) #14
  br label %78

78:                                               ; preds = %59, %67, %63, %72, %68, %77, %73
  %79 = add nuw nsw i64 %60, 1
  %80 = icmp eq i64 %79, 3
  br i1 %80, label %81, label %59, !llvm.loop !157

81:                                               ; preds = %78
  call void @gluDeleteQuadric(ptr noundef %21) #14
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %82) #14
  %83 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %84 = load i8, ptr %83, align 8, !tbaa !158
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  call void @glEnable(i32 noundef 2929) #14
  br label %87

87:                                               ; preds = %81, %86, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_manipulator_rotate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [4 x double], align 16
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !156
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 0x3F6B089A00000000
  %11 = fmul float %10, 0x3FE4CCCCC0000000
  %12 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !65
  %13 = icmp ne i16 %12, 2
  %14 = and i32 %2, 248
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %153, label %16

16:                                               ; preds = %5
  tail call void @glDisable(i32 noundef 2929) #14
  call void @unit_m4(ptr noundef nonnull %7) #14
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %18 = call fastcc float @len_v3(ptr noundef nonnull %17) #16
  call void @glPushMatrix() #14
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3
  %20 = load float, ptr %19, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16, i64 3, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !26
  call void @glTranslatef(float noundef %20, float noundef %22, float noundef %24) #14
  br i1 %13, label %25, label %30

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2, i64 2
  call fastcc void @copy_v3db_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %26) #16
  %27 = fmul float %18, 0xBF947AE140000000
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 3
  store double %28, ptr %29, align 8, !tbaa !159
  call void @glClipPlane(i32 noundef 12288, ptr noundef nonnull %6) #14
  br label %30

30:                                               ; preds = %25, %16
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %32 = load float, ptr %31, align 8, !tbaa !26
  %33 = call fastcc float @saacos(float noundef %32) #16
  %34 = fmul float %33, -3.600000e+02
  %35 = fdiv float %34, 0x400921FB60000000
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !26
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %39 = load float, ptr %38, align 8, !tbaa !26
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !26
  call void @glRotatef(float noundef %35, float noundef %37, float noundef %39, float noundef %41) #14
  %42 = icmp eq i8 %4, 0
  %43 = and i1 %42, %13
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -30) #14
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %45, float noundef %18, ptr noundef nonnull %7) #14
  br label %46

46:                                               ; preds = %44, %30
  %47 = and i32 %2, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  br i1 %42, label %52, label %50

50:                                               ; preds = %49
  %51 = call zeroext i8 @GPU_select_load_id(i32 noundef 128) #14
  br label %53

52:                                               ; preds = %49
  call void @UI_ThemeColor(i32 noundef 32) #14
  br label %53

53:                                               ; preds = %52, %50
  %54 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %55 = fmul float %18, 0x3FC99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %54, float noundef %55, ptr noundef nonnull %7) #14
  br label %56

56:                                               ; preds = %53, %46
  %57 = and i32 %2, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  br i1 %42, label %62, label %60

60:                                               ; preds = %59
  %61 = call zeroext i8 @GPU_select_load_id(i32 noundef 64) #14
  br label %63

62:                                               ; preds = %59
  call void @UI_ThemeColor(i32 noundef 32) #14
  br label %63

63:                                               ; preds = %62, %60
  %64 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %65 = fmul float %18, 0x3FF3333340000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %64, float noundef %65, ptr noundef nonnull %7) #14
  br label %66

66:                                               ; preds = %63, %56
  call void @glPopMatrix() #14
  %67 = call zeroext i8 @is_orthogonal_m4(ptr noundef nonnull %17) #14
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %17) #14
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %72) #14
  call void @glMultMatrixf(ptr noundef nonnull %17) #14
  br label %73

73:                                               ; preds = %66, %69
  %74 = icmp ne i8 %4, 0
  %75 = and i32 %3, 4
  %76 = icmp ne i32 %75, 0
  %77 = or i1 %76, %74
  %78 = or i1 %77, %13
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = and i32 %2, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 2) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef 0, i8 noundef zeroext -1) #16
  call void @glBegin(i32 noundef 1) #14
  call void @glVertex3f(float noundef 0x3FC99999A0000000, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call void @glVertex3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call void @glEnd() #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %83

83:                                               ; preds = %79, %82
  %84 = and i32 %2, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 0) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef 0, i8 noundef zeroext -1) #16
  call void @glBegin(i32 noundef 1) #14
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0x3FC99999A0000000, float noundef 0.000000e+00) #14
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call void @glEnd() #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %87

87:                                               ; preds = %83, %86
  %88 = and i32 %2, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %129, label %90

90:                                               ; preds = %87
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 1) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef 0, i8 noundef zeroext -1) #16
  call void @glBegin(i32 noundef 1) #14
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #14
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  call void @glEnd() #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %123

91:                                               ; preds = %73
  br i1 %13, label %92, label %120

92:                                               ; preds = %91
  call void @glEnable(i32 noundef 12288) #14
  %93 = and i32 %2, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 2) #16
  br i1 %74, label %96, label %98

96:                                               ; preds = %95
  %97 = call zeroext i8 @GPU_select_load_id(i32 noundef 32) #14
  br label %99

98:                                               ; preds = %95
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %99

99:                                               ; preds = %98, %96
  %100 = fmul float %11, 2.500000e-01
  call fastcc void @partial_doughnut(float noundef %100, i32 noundef 0, i32 noundef 48, i32 noundef 48) #16
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %101

101:                                              ; preds = %99, %92
  %102 = and i32 %2, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 0) #16
  br i1 %74, label %105, label %107

105:                                              ; preds = %104
  %106 = call zeroext i8 @GPU_select_load_id(i32 noundef 8) #14
  br label %108

107:                                              ; preds = %104
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %108

108:                                              ; preds = %107, %105
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  %109 = fmul float %11, 2.500000e-01
  call fastcc void @partial_doughnut(float noundef %109, i32 noundef 0, i32 noundef 48, i32 noundef 48) #16
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %110

110:                                              ; preds = %108, %101
  %111 = and i32 %2, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 1) #16
  br i1 %74, label %114, label %116

114:                                              ; preds = %113
  %115 = call zeroext i8 @GPU_select_load_id(i32 noundef 16) #14
  br label %117

116:                                              ; preds = %113
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %117

117:                                              ; preds = %116, %114
  call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  %118 = fmul float %11, 2.500000e-01
  call fastcc void @partial_doughnut(float noundef %118, i32 noundef 0, i32 noundef 48, i32 noundef 48) #16
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %119

119:                                              ; preds = %117, %110
  call void @glDisable(i32 noundef 12288) #14
  br label %147

120:                                              ; preds = %91
  %121 = and i32 %2, 32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %90, %120
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 2) #16
  call void @glPushMatrix() #14
  br i1 %74, label %124, label %126

124:                                              ; preds = %123
  %125 = call zeroext i8 @GPU_select_load_id(i32 noundef 32) #14
  br label %127

126:                                              ; preds = %123
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %127

127:                                              ; preds = %126, %124
  %128 = fmul float %11, 0x3FE6666660000000
  call fastcc void @partial_doughnut(float noundef %128, i32 noundef 31, i32 noundef 33, i32 noundef 64) #16
  call void @glPopMatrix() #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %129

129:                                              ; preds = %87, %127, %120
  %130 = and i32 %2, 16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 1) #16
  call void @glPushMatrix() #14
  br i1 %74, label %133, label %135

133:                                              ; preds = %132
  %134 = call zeroext i8 @GPU_select_load_id(i32 noundef 16) #14
  br label %136

135:                                              ; preds = %132
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %136

136:                                              ; preds = %135, %133
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  %137 = fmul float %11, 0x3FE6666660000000
  call fastcc void @partial_doughnut(float noundef %137, i32 noundef 31, i32 noundef 33, i32 noundef 64) #16
  call void @glPopMatrix() #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %138

138:                                              ; preds = %136, %129
  %139 = and i32 %2, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  call fastcc void @preOrthoFront(i8 noundef zeroext %67, ptr noundef nonnull %17, i32 noundef 0) #16
  call void @glPushMatrix() #14
  br i1 %74, label %142, label %144

142:                                              ; preds = %141
  %143 = call zeroext i8 @GPU_select_load_id(i32 noundef 8) #14
  br label %145

144:                                              ; preds = %141
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %145

145:                                              ; preds = %144, %142
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  %146 = fmul float %11, 0x3FE6666660000000
  call fastcc void @partial_doughnut(float noundef %146, i32 noundef 31, i32 noundef 33, i32 noundef 64) #16
  call void @glPopMatrix() #14
  call fastcc void @postOrtho(i8 noundef zeroext %67) #16
  br label %147

147:                                              ; preds = %119, %138, %145
  %148 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %148) #14
  %149 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %150 = load i8, ptr %149, align 8, !tbaa !158
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  call void @glEnable(i32 noundef 2929) #14
  br label %153

153:                                              ; preds = %147, %152, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_manipulator_scale(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [3 x i32], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !156
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 0x3F647AE140000000
  %11 = fmul float %10, 7.500000e-01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_manipulator_scale.axis_order, i64 12, i1 false)
  %12 = and i32 %2, 1792
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %5
  call fastcc void @manipulator_axis_order(ptr noundef %1, ptr noundef nonnull %6) #16
  call void @glDisable(i32 noundef 2929) #14
  %15 = and i32 %3, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = call zeroext i8 @GPU_select_load_id(i32 noundef 1792) #14
  br label %22

21:                                               ; preds = %17
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 67, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %22

22:                                               ; preds = %21, %19
  call void @glPushMatrix() #14
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %24 = call fastcc float @screen_aligned(ptr noundef %1, ptr noundef nonnull %23) #16
  call void @unit_m4(ptr noundef nonnull %7) #14
  %25 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %26 = fmul float %24, 0x3FC99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %25, float noundef %26, ptr noundef nonnull %7) #14
  call void @glPopMatrix() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  br label %29

27:                                               ; preds = %14
  %28 = call float @llvm.fmuladd.f32(float %11, float -4.000000e+00, float 1.000000e+00)
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi float [ 1.000000e+00, %22 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  call void @glMultMatrixf(ptr noundef nonnull %31) #14
  %32 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %31) #14
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %34) #14
  %35 = and i32 %2, 256
  %36 = and i32 %2, 512
  %37 = and i32 %2, 1024
  call fastcc void @draw_manipulator_axes(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %35, i32 noundef %36, i32 noundef %37, ptr noundef nonnull %6, i8 noundef zeroext %4) #16
  %38 = icmp eq i32 %37, 0
  %39 = icmp eq i8 %4, 0
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 2
  %41 = fneg float %30
  %42 = icmp eq i32 %36, 0
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 1
  %44 = icmp eq i32 %35, 0
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37
  br label %46

46:                                               ; preds = %29, %74
  %47 = phi i64 [ 0, %29 ], [ %75, %74 ]
  %48 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !63
  switch i32 %49, label %74 [
    i32 0, label %50
    i32 1, label %58
    i32 2, label %66
  ]

50:                                               ; preds = %46
  br i1 %44, label %74, label %51

51:                                               ; preds = %50
  call void @glTranslatef(float noundef %30, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br i1 %39, label %54, label %52

52:                                               ; preds = %51
  %53 = call zeroext i8 @GPU_select_load_id(i32 noundef 256) #14
  br label %57

54:                                               ; preds = %51
  %55 = load float, ptr %45, align 4, !tbaa !26
  %56 = call fastcc zeroext i8 @axisBlendAngle(float noundef %55) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef 0, i8 noundef zeroext %56) #16
  br label %57

57:                                               ; preds = %54, %52
  call fastcc void @drawsolidcube(float noundef %11) #16
  call void @glTranslatef(float noundef %41, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br label %74

58:                                               ; preds = %46
  br i1 %42, label %74, label %59

59:                                               ; preds = %58
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %30, float noundef 0.000000e+00) #14
  br i1 %39, label %62, label %60

60:                                               ; preds = %59
  %61 = call zeroext i8 @GPU_select_load_id(i32 noundef 512) #14
  br label %65

62:                                               ; preds = %59
  %63 = load float, ptr %43, align 4, !tbaa !26
  %64 = call fastcc zeroext i8 @axisBlendAngle(float noundef %63) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef 0, i8 noundef zeroext %64) #16
  br label %65

65:                                               ; preds = %62, %60
  call fastcc void @drawsolidcube(float noundef %11) #16
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %41, float noundef 0.000000e+00) #14
  br label %74

66:                                               ; preds = %46
  br i1 %38, label %74, label %67

67:                                               ; preds = %66
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %30) #14
  br i1 %39, label %70, label %68

68:                                               ; preds = %67
  %69 = call zeroext i8 @GPU_select_load_id(i32 noundef 1024) #14
  br label %73

70:                                               ; preds = %67
  %71 = load float, ptr %40, align 4, !tbaa !26
  %72 = call fastcc zeroext i8 @axisBlendAngle(float noundef %71) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef 0, i8 noundef zeroext %72) #16
  br label %73

73:                                               ; preds = %70, %68
  call fastcc void @drawsolidcube(float noundef %11) #16
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %41) #14
  br label %74

74:                                               ; preds = %46, %57, %50, %65, %58, %73, %66
  %75 = add nuw nsw i64 %47, 1
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %46, !llvm.loop !161

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %78) #14
  %79 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %80 = load i8, ptr %79, align 8, !tbaa !158
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  call void @glEnable(i32 noundef 2929) #14
  br label %83

83:                                               ; preds = %82, %77
  call void @glFrontFace(i32 noundef 2305) #14
  br label %84

84:                                               ; preds = %5, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_manipulator_translate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x i32], align 4
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !156
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 0x3F847AE140000000
  %11 = fmul float %10, 2.500000e-01
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_manipulator_translate.axis_order, i64 12, i1 false)
  %12 = and i32 %2, 7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %90, label %14

14:                                               ; preds = %5
  call fastcc void @manipulator_axis_order(ptr noundef %1, ptr noundef nonnull %7) #16
  call void @glDisable(i32 noundef 2929) #14
  %15 = icmp eq i8 %4, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = call zeroext i8 @GPU_select_load_id(i32 noundef 7) #14
  br label %19

18:                                               ; preds = %14
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 67, i32 noundef 0, i8 noundef zeroext -1) #16
  br label %19

19:                                               ; preds = %18, %16
  call void @glPushMatrix() #14
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 16
  %21 = call fastcc float @screen_aligned(ptr noundef %1, ptr noundef nonnull %20) #16
  call void @unit_m4(ptr noundef nonnull %6) #14
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %23 = fmul float %21, 0x3FC99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %22, float noundef %23, ptr noundef nonnull %6) #14
  call void @glPopMatrix() #14
  call void @glMultMatrixf(ptr noundef nonnull %20) #14
  %24 = call zeroext i8 @GPU_select_load_id(i32 noundef -1) #14
  %25 = and i32 %3, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = and i32 %2, 1
  %29 = and i32 %2, 2
  %30 = and i32 %2, 4
  call fastcc void @draw_manipulator_axes(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef nonnull %7, i8 noundef zeroext %4) #16
  %31 = and i32 %3, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %36

33:                                               ; preds = %19
  %34 = and i32 %3, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %27
  %37 = call float @llvm.fmuladd.f32(float %10, float 2.000000e+00, float 1.000000e+00)
  br label %40

38:                                               ; preds = %33
  %39 = call float @llvm.fmuladd.f32(float %10, float 5.000000e-01, float 1.000000e+00)
  br label %40

40:                                               ; preds = %27, %38, %36
  %41 = phi float [ %37, %36 ], [ %39, %38 ], [ 1.000000e+00, %27 ]
  %42 = call ptr @gluNewQuadric() #14
  call void @gluQuadricDrawStyle(ptr noundef %42, i32 noundef 100012) #14
  %43 = and i32 %2, 2
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 1
  %46 = fneg float %41
  %47 = and i32 %2, 1
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37
  %50 = and i32 %2, 4
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 2
  br label %53

53:                                               ; preds = %40, %81
  %54 = phi i64 [ 0, %40 ], [ %82, %81 ]
  %55 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !63
  switch i32 %56, label %81 [
    i32 0, label %57
    i32 1, label %65
    i32 2, label %73
  ]

57:                                               ; preds = %53
  br i1 %51, label %81, label %58

58:                                               ; preds = %57
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %41) #14
  br i1 %15, label %61, label %59

59:                                               ; preds = %58
  %60 = call zeroext i8 @GPU_select_load_id(i32 noundef 4) #14
  br label %64

61:                                               ; preds = %58
  %62 = load float, ptr %52, align 4, !tbaa !26
  %63 = call fastcc zeroext i8 @axisBlendAngle(float noundef %62) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef 0, i8 noundef zeroext %63) #16
  br label %64

64:                                               ; preds = %61, %59
  call fastcc void @draw_cone(ptr noundef %42, float noundef %10, float noundef %11) #16
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %46) #14
  br label %81

65:                                               ; preds = %53
  br i1 %48, label %81, label %66

66:                                               ; preds = %65
  call void @glTranslatef(float noundef %41, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br i1 %15, label %69, label %67

67:                                               ; preds = %66
  %68 = call zeroext i8 @GPU_select_load_id(i32 noundef 1) #14
  br label %72

69:                                               ; preds = %66
  %70 = load float, ptr %49, align 4, !tbaa !26
  %71 = call fastcc zeroext i8 @axisBlendAngle(float noundef %70) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef 0, i8 noundef zeroext %71) #16
  br label %72

72:                                               ; preds = %69, %67
  call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call fastcc void @draw_cone(ptr noundef %42, float noundef %10, float noundef %11) #16
  call void @glRotatef(float noundef -9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  call void @glTranslatef(float noundef %46, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br label %81

73:                                               ; preds = %53
  br i1 %44, label %81, label %74

74:                                               ; preds = %73
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %41, float noundef 0.000000e+00) #14
  br i1 %15, label %77, label %75

75:                                               ; preds = %74
  %76 = call zeroext i8 @GPU_select_load_id(i32 noundef 2) #14
  br label %80

77:                                               ; preds = %74
  %78 = load float, ptr %45, align 4, !tbaa !26
  %79 = call fastcc zeroext i8 @axisBlendAngle(float noundef %78) #16
  call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef 0, i8 noundef zeroext %79) #16
  br label %80

80:                                               ; preds = %77, %75
  call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call fastcc void @draw_cone(ptr noundef %42, float noundef %10, float noundef %11) #16
  call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %46, float noundef 0.000000e+00) #14
  br label %81

81:                                               ; preds = %53, %64, %57, %72, %65, %80, %73
  %82 = add nuw nsw i64 %54, 1
  %83 = icmp eq i64 %82, 3
  br i1 %83, label %84, label %53, !llvm.loop !162

84:                                               ; preds = %81
  call void @gluDeleteQuadric(ptr noundef %42) #14
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %85) #14
  %86 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %87 = load i8, ptr %86, align 8, !tbaa !158
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  call void @glEnable(i32 noundef 2929) #14
  br label %90

90:                                               ; preds = %84, %89, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BIF_do_manipulator(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !163
  %12 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 42
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = and i8 %13, 3
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %118

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  %19 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 41
  %20 = load i8, ptr %19, align 4, !tbaa !154
  %21 = zext i8 %20 to i32
  tail call void @RNA_enum_set(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %21) #14
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !167
  %24 = sitofp i16 %23 to float
  %25 = fmul float %24, 5.000000e-01
  %26 = tail call fastcc i32 @manipulator_selectbuf(ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %22, float noundef %25) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %117, label %28

28:                                               ; preds = %16
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !167
  %30 = sitofp i16 %29 to float
  %31 = fmul float %30, 0x3FC99999A0000000
  %32 = tail call fastcc i32 @manipulator_selectbuf(ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %22, float noundef %31) #16
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %26, i32 %32
  store i32 %34, ptr @drawflags, align 4, !tbaa !63
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
  store i32 1, ptr %41, align 4, !tbaa !63
  %42 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %42, align 4, !tbaa !63
  br label %56

43:                                               ; preds = %38
  store i32 1, ptr %4, align 4, !tbaa !63
  br label %56

44:                                               ; preds = %37
  %45 = icmp eq i16 %11, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  store i32 1, ptr %4, align 4, !tbaa !63
  %47 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %47, align 4, !tbaa !63
  br label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %49, align 4, !tbaa !63
  br label %56

50:                                               ; preds = %37
  %51 = icmp eq i16 %11, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  store i32 1, ptr %4, align 4, !tbaa !63
  %53 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %53, align 4, !tbaa !63
  br label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %55, align 4, !tbaa !63
  br label %56

56:                                               ; preds = %52, %54, %46, %48, %40, %43, %37
  %57 = load ptr, ptr %17, align 8, !tbaa !165
  call void @RNA_boolean_set_array(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #14
  %58 = load ptr, ptr %17, align 8, !tbaa !165
  %59 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.2, i16 noundef signext 0, ptr noundef %58) #14
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
  store i32 1, ptr %67, align 4, !tbaa !63
  %68 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %68, align 4, !tbaa !63
  br label %82

69:                                               ; preds = %64
  store i32 1, ptr %4, align 4, !tbaa !63
  br label %82

70:                                               ; preds = %63
  %71 = icmp eq i16 %11, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  store i32 1, ptr %4, align 4, !tbaa !63
  %73 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %73, align 4, !tbaa !63
  br label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %75, align 4, !tbaa !63
  br label %82

76:                                               ; preds = %63
  %77 = icmp eq i16 %11, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  store i32 1, ptr %4, align 4, !tbaa !63
  %79 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %79, align 4, !tbaa !63
  br label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %81, align 4, !tbaa !63
  br label %82

82:                                               ; preds = %78, %80, %72, %74, %66, %69, %63
  %83 = load ptr, ptr %17, align 8, !tbaa !165
  call void @RNA_boolean_set_array(ptr noundef %83, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #14
  %84 = load ptr, ptr %17, align 8, !tbaa !165
  %85 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.3, i16 noundef signext 0, ptr noundef %84) #14
  br label %117

86:                                               ; preds = %60
  %87 = icmp eq i32 %34, 128
  br i1 %87, label %88, label %104

88:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %89 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #14
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %5, ptr noundef %89) #14
  %90 = load ptr, ptr %17, align 8, !tbaa !165
  %91 = call ptr @RNA_struct_find_property(ptr noundef %90, ptr noundef nonnull @.str.5) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %17, align 8, !tbaa !165
  %95 = call zeroext i8 @RNA_property_is_set(ptr noundef %94, ptr noundef nonnull %91) #14
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %17, align 8, !tbaa !165
  %99 = call i32 @RNA_property_boolean_get(ptr noundef %98, ptr noundef nonnull %91) #14
  call void @RNA_property_boolean_set(ptr noundef nonnull %5, ptr noundef nonnull %91, i32 noundef %99) #14
  br label %100

100:                                              ; preds = %97, %93, %88
  %101 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !168
  %103 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %102, i16 noundef signext 0, ptr noundef nonnull %5) #14
  call void @WM_operator_properties_free(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
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
  store i32 1, ptr %4, align 4, !tbaa !63
  br label %113

109:                                              ; preds = %107
  %110 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %110, align 4, !tbaa !63
  br label %113

111:                                              ; preds = %107
  %112 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %112, align 4, !tbaa !63
  br label %113

113:                                              ; preds = %107, %111, %109, %108
  %114 = load ptr, ptr %17, align 8, !tbaa !165
  call void @RNA_boolean_set_array(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #14
  %115 = load ptr, ptr %17, align 8, !tbaa !165
  %116 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.6, i16 noundef signext 0, ptr noundef %115) #14
  br label %117

117:                                              ; preds = %56, %100, %113, %104, %82, %16
  store i32 65535, ptr @drawflags, align 4, !tbaa !63
  br label %118

118:                                              ; preds = %3, %117
  %119 = phi i32 [ %26, %117 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret i32 %119
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @manipulator_selectbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 16
  %6 = alloca %struct.rctf, align 4
  %7 = alloca [64 x i32], align 16
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #15
  %12 = tail call zeroext i8 @GPU_select_query_check_active() #14
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 16
  %14 = tail call float @mat4_to_scale(ptr noundef nonnull %13) #14
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, 0x3E7AD7F2A0000000
  br i1 %16, label %153, label %17

17:                                               ; preds = %4
  %18 = load <2 x i32>, ptr %2, align 4, !tbaa !63
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %21 = insertelement <4 x float> poison, float %3, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %23 = fsub <4 x float> %20, %22
  %24 = fadd <4 x float> %20, %22
  %25 = shufflevector <4 x float> %23, <4 x float> %24, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %25, ptr %5, align 16, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !171
  call void @view3d_winmatrix_set(ptr noundef nonnull %1, ptr noundef %9, ptr noundef nonnull %5) #14
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %26, ptr noundef %11, ptr noundef nonnull %27) #14
  %28 = icmp eq i8 %12, 0
  %29 = select i1 %28, i8 1, i8 2
  call void @GPU_select_begin(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull %6, i8 noundef zeroext %29, i32 noundef 0) #14
  %30 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 40
  %31 = load i8, ptr %30, align 1, !tbaa !64
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %17
  %36 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !65
  %37 = icmp eq i16 %36, 3
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %39 = load i16, ptr %38, align 8, !tbaa !61
  %40 = and i16 %39, 248
  %41 = zext nneg i16 %40 to i32
  br i1 %37, label %42, label %43

42:                                               ; preds = %35
  call fastcc void @draw_manipulator_rotate_cyl(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %41, i32 noundef %32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %44

43:                                               ; preds = %35
  call fastcc void @draw_manipulator_rotate(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %41, i32 noundef %32, i8 noundef zeroext 1) #16
  br label %44

44:                                               ; preds = %42, %43, %17
  %45 = load i8, ptr %30, align 1, !tbaa !64
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %51 = load i16, ptr %50, align 8, !tbaa !61
  %52 = and i16 %51, 1792
  %53 = zext nneg i16 %52 to i32
  call fastcc void @draw_manipulator_scale(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %53, i32 noundef %46, i8 noundef zeroext 1) #16
  %54 = load i8, ptr %30, align 1, !tbaa !64
  %55 = zext i8 %54 to i32
  br label %56

56:                                               ; preds = %49, %44
  %57 = phi i32 [ %55, %49 ], [ %46, %44 ]
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %62 = load i16, ptr %61, align 8, !tbaa !61
  %63 = and i16 %62, 7
  %64 = zext nneg i16 %63 to i32
  call fastcc void @draw_manipulator_translate(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %64, i32 noundef %57, i8 noundef zeroext 1) #16
  br label %65

65:                                               ; preds = %60, %56
  %66 = call i32 @GPU_select_end() #14
  %67 = shl i32 %66, 16
  %68 = ashr exact i32 %67, 16
  br i1 %28, label %106, label %69

69:                                               ; preds = %65
  call void @GPU_select_begin(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull %6, i8 noundef zeroext 3, i32 noundef %68) #14
  %70 = load i8, ptr %30, align 1, !tbaa !64
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !65
  %76 = icmp eq i16 %75, 3
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %78 = load i16, ptr %77, align 8, !tbaa !61
  %79 = and i16 %78, 248
  %80 = zext nneg i16 %79 to i32
  br i1 %76, label %81, label %82

81:                                               ; preds = %74
  call fastcc void @draw_manipulator_rotate_cyl(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %80, i32 noundef %71, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %83

82:                                               ; preds = %74
  call fastcc void @draw_manipulator_rotate(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %80, i32 noundef %71, i8 noundef zeroext 1) #16
  br label %83

83:                                               ; preds = %81, %82, %69
  %84 = load i8, ptr %30, align 1, !tbaa !64
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %90 = load i16, ptr %89, align 8, !tbaa !61
  %91 = and i16 %90, 1792
  %92 = zext nneg i16 %91 to i32
  call fastcc void @draw_manipulator_scale(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %92, i32 noundef %85, i8 noundef zeroext 1) #16
  %93 = load i8, ptr %30, align 1, !tbaa !64
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %88, %83
  %96 = phi i32 [ %94, %88 ], [ %85, %83 ]
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 31
  %101 = load i16, ptr %100, align 8, !tbaa !61
  %102 = and i16 %101, 7
  %103 = zext nneg i16 %102 to i32
  call fastcc void @draw_manipulator_translate(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %103, i32 noundef %96, i8 noundef zeroext 1) #16
  br label %104

104:                                              ; preds = %99, %95
  %105 = call i32 @GPU_select_end() #14
  br label %106

106:                                              ; preds = %65, %104
  call void @view3d_winmatrix_set(ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef null) #14
  call void @mul_m4_m4m4(ptr noundef nonnull %26, ptr noundef %11, ptr noundef nonnull %27) #14
  %107 = icmp eq i32 %67, 65536
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 3
  %110 = load i32, ptr %109, align 4, !tbaa !63
  br label %153

111:                                              ; preds = %106
  %112 = icmp sgt i32 %68, 1
  br i1 %112, label %113, label %153

113:                                              ; preds = %111
  %114 = zext nneg i32 %68 to i64
  br label %115

115:                                              ; preds = %113, %143
  %116 = phi i64 [ 0, %113 ], [ %148, %143 ]
  %117 = phi i32 [ 0, %113 ], [ %147, %143 ]
  %118 = phi i32 [ 0, %113 ], [ %146, %143 ]
  %119 = phi i32 [ 0, %113 ], [ %145, %143 ]
  %120 = phi i32 [ 0, %113 ], [ %144, %143 ]
  %121 = shl nsw i64 %116, 2
  %122 = or disjoint i64 %121, 1
  %123 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !63
  %125 = or disjoint i64 %121, 3
  %126 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !63
  switch i32 %127, label %128 [
    i32 7, label %153
    i32 1792, label %153
  ]

128:                                              ; preds = %115
  %129 = and i32 %127, 248
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = icmp eq i32 %117, 0
  %133 = icmp ult i32 %124, %119
  %134 = select i1 %132, i1 true, i1 %133
  %135 = select i1 %134, i32 %124, i32 %119
  %136 = select i1 %134, i32 %127, i32 %117
  br label %143

137:                                              ; preds = %128
  %138 = icmp eq i32 %118, 0
  %139 = icmp ult i32 %124, %120
  %140 = select i1 %138, i1 true, i1 %139
  %141 = select i1 %140, i32 %124, i32 %120
  %142 = select i1 %140, i32 %127, i32 %118
  br label %143

143:                                              ; preds = %137, %131
  %144 = phi i32 [ %120, %131 ], [ %141, %137 ]
  %145 = phi i32 [ %135, %131 ], [ %119, %137 ]
  %146 = phi i32 [ %118, %131 ], [ %142, %137 ]
  %147 = phi i32 [ %136, %131 ], [ %117, %137 ]
  %148 = add nuw nsw i64 %116, 1
  %149 = icmp eq i64 %148, %114
  br i1 %149, label %150, label %115, !llvm.loop !172

150:                                              ; preds = %143
  %151 = icmp eq i32 %146, 0
  %152 = select i1 %151, i32 %147, i32 %146
  br label %153

153:                                              ; preds = %115, %115, %111, %150, %4, %108
  %154 = phi i32 [ %110, %108 ], [ 0, %4 ], [ %152, %150 ], [ 0, %111 ], [ %127, %115 ], [ %127, %115 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i32 %154
}

; Function Attrs: optsize
declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !26
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !26
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !26
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !26
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !26
  %15 = load float, ptr %8, align 4, !tbaa !26
  %16 = load float, ptr %2, align 4, !tbaa !26
  %17 = load float, ptr %1, align 4, !tbaa !26
  %18 = load float, ptr %6, align 4, !tbaa !26
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !26
  %23 = load float, ptr %1, align 4, !tbaa !26
  %24 = load float, ptr %10, align 4, !tbaa !26
  %25 = load float, ptr %4, align 4, !tbaa !26
  %26 = load float, ptr %2, align 4, !tbaa !26
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = load float, ptr %0, align 4, !tbaa !26
  %4 = load float, ptr %1, align 4, !tbaa !26
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !26
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !26
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !26
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !26
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !26
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !26
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !26
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !26
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !26
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !26
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !26
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_tw_center(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 9
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 11
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1) #14
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #16
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !173
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !175
  %4 = tail call ptr %3(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @stats_editbone(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = and i32 %4, 524288
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 31
  tail call fastcc void @protectflag_to_drawflags(i16 noundef signext 511, ptr noundef nonnull %8) #16
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_curve_active_center(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !26
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !26
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !26
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !26
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stats_pose(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 31
  tail call fastcc void @calc_tw_center(ptr noundef %0, ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 7
  %10 = load i16, ptr %9, align 4, !tbaa !177
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 31
  tail call fastcc void @protectflag_to_drawflags(i16 noundef signext %10, ptr noundef nonnull %11) #16
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare i32 @count_set_pose_transflags(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @protectflag_to_drawflags(i16 noundef signext %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = zext i16 %0 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i16, ptr %1, align 2, !tbaa !178
  %8 = and i16 %7, -2
  store i16 %8, ptr %1, align 2, !tbaa !178
  br label %9

9:                                                ; preds = %6, %2
  %10 = and i32 %3, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i16, ptr %1, align 2, !tbaa !178
  %14 = and i16 %13, -3
  store i16 %14, ptr %1, align 2, !tbaa !178
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i32 %3, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr %1, align 2, !tbaa !178
  %20 = and i16 %19, -5
  store i16 %20, ptr %1, align 2, !tbaa !178
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %3, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i16, ptr %1, align 2, !tbaa !178
  %26 = and i16 %25, -9
  store i16 %26, ptr %1, align 2, !tbaa !178
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i32 %3, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr %1, align 2, !tbaa !178
  %32 = and i16 %31, -17
  store i16 %32, ptr %1, align 2, !tbaa !178
  br label %33

33:                                               ; preds = %30, %27
  %34 = and i32 %3, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %1, align 2, !tbaa !178
  %38 = and i16 %37, -33
  store i16 %38, ptr %1, align 2, !tbaa !178
  br label %39

39:                                               ; preds = %36, %33
  %40 = and i32 %3, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i16, ptr %1, align 2, !tbaa !178
  %44 = and i16 %43, -257
  store i16 %44, ptr %1, align 2, !tbaa !178
  br label %45

45:                                               ; preds = %42, %39
  %46 = and i32 %3, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i16, ptr %1, align 2, !tbaa !178
  %50 = and i16 %49, -513
  store i16 %50, ptr %1, align 2, !tbaa !178
  br label %51

51:                                               ; preds = %48, %45
  %52 = and i32 %3, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i16, ptr %1, align 2, !tbaa !178
  %56 = and i16 %55, -1025
  store i16 %56, ptr %1, align 2, !tbaa !178
  br label %57

57:                                               ; preds = %54, %51
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_getTransformOrientationMatrix(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @applyTransformOrientation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !26
  %4 = load float, ptr %0, align 4, !tbaa !26
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !26
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !26
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !26
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !26
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !26
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !26
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !179
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %19 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !180
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !180
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !175
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !180
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !175
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !180
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !175
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !180
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !175
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %14, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !186
  tail call void %22(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @ED_view3d_global_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @manipulator_axis_order(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 16, i64 3
  call void @ED_view3d_global_to_vector(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4) #14
  %7 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 16, i64 1
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %4) #16
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fneg <2 x float> %11
  store <2 x float> %12, ptr %3, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 16, i64 2
  %14 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %4) #16
  %15 = fneg float %14
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %15, ptr %16, align 8, !tbaa !26
  call void @axis_sort_v3(ptr noundef nonnull %3, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @screen_aligned(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !26
  %5 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !26
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !26
  tail call void @glTranslatef(float noundef %4, float noundef %6, float noundef %8) #14
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  %10 = load float, ptr %9, align 8, !tbaa !26
  %11 = tail call fastcc float @saacos(float noundef %10) #16
  %12 = fmul float %11, -3.600000e+02
  %13 = fdiv float %12, 0x400921FB60000000
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !26
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !26
  tail call void @glRotatef(float noundef %13, float noundef %15, float noundef %17, float noundef %19) #14
  %20 = tail call fastcc float @len_v3(ptr noundef %1) #16
  ret float %20
}

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glFrontFace(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_manipulator_axes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #0 {
  br label %9

9:                                                ; preds = %8, %9
  %10 = phi i64 [ 0, %8 ], [ %13, %9 ]
  %11 = getelementptr inbounds i32, ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !63
  tail call fastcc void @draw_manipulator_axes_single(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %12, i8 noundef zeroext %7) #16
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %9, !llvm.loop !187

15:                                               ; preds = %9
  ret void
}

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @manipulator_setcolor(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  store i8 %3, ptr %6, align 1, !tbaa !186
  switch i32 %2, label %9 [
    i32 1, label %7
    i32 2, label %8
  ]

7:                                                ; preds = %4
  store i8 70, ptr %6, align 1, !tbaa !186
  br label %40

8:                                                ; preds = %4
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %5) #14
  br label %40

9:                                                ; preds = %4
  switch i8 %1, label %40 [
    i8 67, label %10
    i8 88, label %37
    i8 89, label %38
    i8 90, label %39
  ]

10:                                               ; preds = %9
  call void @UI_GetThemeColor3ubv(i32 noundef 32, ptr noundef nonnull %5) #14
  %11 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 41
  %12 = load i8, ptr %11, align 4, !tbaa !154
  switch i8 %12, label %40 [
    i8 1, label %13
    i8 2, label %28
  ]

13:                                               ; preds = %10
  %14 = load i8, ptr %5, align 4
  %15 = icmp ugt i8 %14, -56
  %16 = add i8 %14, 55
  %17 = select i1 %15, i8 -1, i8 %16
  store i8 %17, ptr %5, align 4, !tbaa !186
  %18 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp ugt i8 %19, -56
  %21 = add i8 %19, 55
  %22 = select i1 %20, i8 -1, i8 %21
  store i8 %22, ptr %18, align 1, !tbaa !186
  %23 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %24 = load i8, ptr %23, align 2
  %25 = icmp ugt i8 %24, -56
  %26 = add i8 %24, 55
  %27 = select i1 %25, i8 -1, i8 %26
  store i8 %27, ptr %23, align 2, !tbaa !186
  br label %40

28:                                               ; preds = %10
  %29 = load i8, ptr %5, align 4
  %30 = call i8 @llvm.usub.sat.i8(i8 %29, i8 55)
  store i8 %30, ptr %5, align 4, !tbaa !186
  %31 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %32 = load i8, ptr %31, align 1
  %33 = call i8 @llvm.usub.sat.i8(i8 %32, i8 55)
  store i8 %33, ptr %31, align 1, !tbaa !186
  %34 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %35 = load i8, ptr %34, align 2
  %36 = call i8 @llvm.usub.sat.i8(i8 %35, i8 55)
  store i8 %36, ptr %34, align 2, !tbaa !186
  br label %40

37:                                               ; preds = %9
  call void @UI_GetThemeColor3ubv(i32 noundef 176, ptr noundef nonnull %5) #14
  br label %40

38:                                               ; preds = %9
  call void @UI_GetThemeColor3ubv(i32 noundef 177, ptr noundef nonnull %5) #14
  br label %40

39:                                               ; preds = %9
  call void @UI_GetThemeColor3ubv(i32 noundef 178, ptr noundef nonnull %5) #14
  br label %40

40:                                               ; preds = %10, %8, %9, %13, %28, %39, %38, %37, %7
  call void @glColor4ubv(ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_cylinder(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = fmul float %2, 0x3FE99999A0000000
  %5 = fmul float %1, -5.000000e-01
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #14
  %6 = fpext float %4 to double
  %7 = fpext float %1 to double
  tail call void @gluCylinder(ptr noundef %0, double noundef %6, double noundef %6, double noundef %7, i32 noundef 8, i32 noundef 1) #14
  tail call void @gluQuadricOrientation(ptr noundef %0, i32 noundef 100021) #14
  tail call void @gluDisk(ptr noundef %0, double noundef 0.000000e+00, double noundef %6, i32 noundef 8, i32 noundef 1) #14
  tail call void @gluQuadricOrientation(ptr noundef %0, i32 noundef 100020) #14
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %1) #14
  tail call void @gluDisk(ptr noundef %0, double noundef 0.000000e+00, double noundef %6, i32 noundef 8, i32 noundef 1) #14
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #14
  ret void
}

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_sort_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #12 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #14
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_manipulator_axes_single(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  switch i32 %6, label %67 [
    i32 0, label %9
    i32 1, label %28
    i32 2, label %47
  ]

9:                                                ; preds = %8
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %9
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = and i32 %3, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @GPU_select_load_id(i32 noundef 256) #14
  br label %27

18:                                               ; preds = %13
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call zeroext i8 @GPU_select_load_id(i32 noundef 1) #14
  br label %27

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37
  %25 = load float, ptr %24, align 4, !tbaa !26
  %26 = tail call fastcc zeroext i8 @axisBlendAngle(float noundef %25) #16
  tail call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 88, i32 noundef %2, i8 noundef zeroext %26) #16
  br label %27

27:                                               ; preds = %16, %21, %18, %23
  tail call void @glBegin(i32 noundef 1) #14
  tail call void @glVertex3f(float noundef 0x3FC99999A0000000, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  tail call void @glVertex3f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br label %66

28:                                               ; preds = %8
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %28
  %31 = icmp eq i8 %7, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %30
  %33 = and i32 %4, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call zeroext i8 @GPU_select_load_id(i32 noundef 512) #14
  br label %46

37:                                               ; preds = %32
  %38 = and i32 %4, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @GPU_select_load_id(i32 noundef 2) #14
  br label %46

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !26
  %45 = tail call fastcc zeroext i8 @axisBlendAngle(float noundef %44) #16
  tail call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 89, i32 noundef %2, i8 noundef zeroext %45) #16
  br label %46

46:                                               ; preds = %35, %40, %37, %42
  tail call void @glBegin(i32 noundef 1) #14
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0x3FC99999A0000000, float noundef 0.000000e+00) #14
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #14
  br label %66

47:                                               ; preds = %8
  %48 = icmp eq i32 %5, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %47
  %50 = icmp eq i8 %7, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %49
  %52 = and i32 %5, 1024
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call zeroext i8 @GPU_select_load_id(i32 noundef 1024) #14
  br label %65

56:                                               ; preds = %51
  %57 = and i32 %5, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @GPU_select_load_id(i32 noundef 4) #14
  br label %65

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 37, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !26
  %64 = tail call fastcc zeroext i8 @axisBlendAngle(float noundef %63) #16
  tail call fastcc void @manipulator_setcolor(ptr noundef %0, i8 noundef zeroext 90, i32 noundef %2, i8 noundef zeroext %64) #16
  br label %65

65:                                               ; preds = %54, %59, %56, %61
  tail call void @glBegin(i32 noundef 1) #14
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #14
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  br label %66

66:                                               ; preds = %27, %46, %65
  tail call void @glEnd() #14
  br label %67

67:                                               ; preds = %66, %47, %28, %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @axisBlendAngle(float noundef %0) unnamed_addr #3 {
  %2 = fcmp ogt float %0, 0x3FB99999A0000000
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0x3F947AE140000000
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = fadd float %0, 0xBF947AE140000000
  %7 = fmul float %6, 2.550000e+02
  %8 = fdiv float %7, 0x3FB47AE140000000
  %9 = fptoui float %8 to i8
  br label %10

10:                                               ; preds = %3, %1, %5
  %11 = phi i8 [ %9, %5 ], [ -1, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluQuadricOrientation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3db_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !26
  %4 = fpext <2 x float> %3 to <2 x double>
  store <2 x double> %4, ptr %0, align 8, !tbaa !159
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !26
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds double, ptr %0, i64 2
  store double %7, ptr %8, align 8, !tbaa !159
  ret void
}

; Function Attrs: optsize
declare void @glClipPlane(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_orthogonal_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @preOrthoFront(i8 noundef zeroext %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %1) #14
  call void @orthogonalize_m4(ptr noundef nonnull %4, i32 noundef %2) #14
  call void @glPushMatrix() #14
  call void @glMultMatrixf(ptr noundef nonnull %4) #14
  %7 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %4) #14
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 2305, i32 2304
  call void @glFrontFace(i32 noundef %9) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %10

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @postOrtho(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @glPopMatrix() #14
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partial_doughnut(float noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp ne i32 %1, 0
  %6 = icmp ne i32 %2, %3
  %7 = or i1 %5, %6
  %8 = sitofp i32 %3 to float
  %9 = fdiv float 0x401921FB60000000, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 5.000000e-01, float 0x400921FB60000000)
  %11 = tail call float @cosf(float noundef %10) #14
  %12 = tail call float @sinf(float noundef %10) #14
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %4, %80
  %15 = phi float [ %20, %80 ], [ %10, %4 ]
  %16 = phi float [ %21, %80 ], [ %11, %4 ]
  %17 = phi float [ %22, %80 ], [ %12, %4 ]
  %18 = phi i32 [ %19, %80 ], [ %3, %4 ]
  %19 = add nsw i32 %18, -1
  %20 = fadd float %9, %15
  %21 = tail call float @cosf(float noundef %20) #14
  %22 = tail call float @sinf(float noundef %20) #14
  %23 = icmp eq i32 %19, %1
  %24 = select i1 %7, i1 %23, i1 false
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  tail call void @glBegin(i32 noundef 9) #14
  %26 = fneg float %22
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi float [ 0.000000e+00, %25 ], [ %30, %27 ]
  %29 = phi i32 [ 8, %25 ], [ %37, %27 ]
  %30 = fadd float %28, 0x3FE921FB60000000
  %31 = tail call float @cosf(float noundef %30) #14
  %32 = tail call float @sinf(float noundef %30) #14
  %33 = tail call float @llvm.fmuladd.f32(float %0, float %31, float 1.000000e+00)
  %34 = fmul float %21, %33
  %35 = fmul float %33, %26
  %36 = fmul float %32, %0
  tail call void @glVertex3f(float noundef %34, float noundef %35, float noundef %36) #14
  %37 = add nsw i32 %29, -1
  %38 = icmp eq i32 %29, 0
  br i1 %38, label %39, label %27, !llvm.loop !188

39:                                               ; preds = %27
  tail call void @glEnd() #14
  br label %40

40:                                               ; preds = %39, %14
  %41 = icmp sle i32 %18, %1
  %42 = icmp sgt i32 %19, %2
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  tail call void @glBegin(i32 noundef 8) #14
  %45 = fneg float %22
  %46 = fneg float %17
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi float [ 0.000000e+00, %44 ], [ %50, %47 ]
  %49 = phi i32 [ 8, %44 ], [ %59, %47 ]
  %50 = fadd float %48, 0x3FE921FB60000000
  %51 = tail call float @cosf(float noundef %50) #14
  %52 = tail call float @sinf(float noundef %50) #14
  %53 = tail call float @llvm.fmuladd.f32(float %0, float %51, float 1.000000e+00)
  %54 = fmul float %21, %53
  %55 = fmul float %53, %45
  %56 = fmul float %52, %0
  tail call void @glVertex3f(float noundef %54, float noundef %55, float noundef %56) #14
  %57 = fmul float %16, %53
  %58 = fmul float %53, %46
  tail call void @glVertex3f(float noundef %57, float noundef %58, float noundef %56) #14
  %59 = add nsw i32 %49, -1
  %60 = icmp eq i32 %49, 0
  br i1 %60, label %61, label %47, !llvm.loop !189

61:                                               ; preds = %47
  tail call void @glEnd() #14
  br label %62

62:                                               ; preds = %61, %40
  %63 = icmp eq i32 %19, %2
  %64 = select i1 %7, i1 %63, i1 false
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  tail call void @glBegin(i32 noundef 9) #14
  %66 = fneg float %17
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi float [ 0.000000e+00, %65 ], [ %70, %67 ]
  %69 = phi i32 [ 8, %65 ], [ %77, %67 ]
  %70 = fadd float %68, 0xBFE921FB60000000
  %71 = tail call float @cosf(float noundef %70) #14
  %72 = tail call float @sinf(float noundef %70) #14
  %73 = tail call float @llvm.fmuladd.f32(float %0, float %71, float 1.000000e+00)
  %74 = fmul float %16, %73
  %75 = fmul float %73, %66
  %76 = fmul float %72, %0
  tail call void @glVertex3f(float noundef %74, float noundef %75, float noundef %76) #14
  %77 = add nsw i32 %69, -1
  %78 = icmp eq i32 %69, 0
  br i1 %78, label %79, label %67, !llvm.loop !190

79:                                               ; preds = %67
  tail call void @glEnd() #14
  br label %80

80:                                               ; preds = %79, %62
  %81 = icmp sgt i32 %18, 1
  br i1 %81, label %14, label %82, !llvm.loop !191

82:                                               ; preds = %80, %4
  ret void
}

; Function Attrs: optsize
declare void @orthogonalize_m4(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawsolidcube(float noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x [3 x float]], align 16
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(96) @__const.drawsolidcube.cube, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  store i64 0, ptr %4, align 4
  tail call void @glPushMatrix() #14
  tail call void @glScalef(float noundef %0, float noundef %0, float noundef %0) #14
  tail call void @glBegin(i32 noundef 7) #14
  store float -1.000000e+00, ptr %3, align 4, !tbaa !26
  call void @glNormal3fv(ptr noundef nonnull %3) #14
  call void @glVertex3fv(ptr noundef nonnull %2) #14
  %5 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1
  call void @glVertex3fv(ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2
  call void @glVertex3fv(ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3
  call void @glVertex3fv(ptr noundef nonnull %7) #14
  store float 0.000000e+00, ptr %3, align 4, !tbaa !26
  call void @glEnd() #14
  call void @glBegin(i32 noundef 7) #14
  %8 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float -1.000000e+00, ptr %8, align 4, !tbaa !26
  call void @glNormal3fv(ptr noundef nonnull %3) #14
  call void @glVertex3fv(ptr noundef nonnull %2) #14
  %9 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4
  call void @glVertex3fv(ptr noundef nonnull %9) #14
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5
  call void @glVertex3fv(ptr noundef nonnull %10) #14
  call void @glVertex3fv(ptr noundef nonnull %5) #14
  store float 0.000000e+00, ptr %8, align 4, !tbaa !26
  call void @glEnd() #14
  call void @glBegin(i32 noundef 7) #14
  store float 1.000000e+00, ptr %3, align 4, !tbaa !26
  call void @glNormal3fv(ptr noundef nonnull %3) #14
  call void @glVertex3fv(ptr noundef nonnull %9) #14
  %11 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7
  call void @glVertex3fv(ptr noundef nonnull %11) #14
  %12 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6
  call void @glVertex3fv(ptr noundef nonnull %12) #14
  call void @glVertex3fv(ptr noundef nonnull %10) #14
  store float 0.000000e+00, ptr %3, align 4, !tbaa !26
  call void @glEnd() #14
  call void @glBegin(i32 noundef 7) #14
  store float 1.000000e+00, ptr %8, align 4, !tbaa !26
  call void @glNormal3fv(ptr noundef nonnull %3) #14
  call void @glVertex3fv(ptr noundef nonnull %11) #14
  call void @glVertex3fv(ptr noundef nonnull %7) #14
  call void @glVertex3fv(ptr noundef nonnull %6) #14
  call void @glVertex3fv(ptr noundef nonnull %12) #14
  store float 0.000000e+00, ptr %8, align 4, !tbaa !26
  call void @glEnd() #14
  call void @glBegin(i32 noundef 7) #14
  %13 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 1.000000e+00, ptr %13, align 4, !tbaa !26
  call void @glNormal3fv(ptr noundef nonnull %3) #14
  call void @glVertex3fv(ptr noundef nonnull %5) #14
  call void @glVertex3fv(ptr noundef nonnull %10) #14
  call void @glVertex3fv(ptr noundef nonnull %12) #14
  call void @glVertex3fv(ptr noundef nonnull %6) #14
  store float 0.000000e+00, ptr %13, align 4, !tbaa !26
  call void @glEnd() #14
  call void @glBegin(i32 noundef 7) #14
  store float -1.000000e+00, ptr %13, align 4, !tbaa !26
  call void @glNormal3fv(ptr noundef nonnull %3) #14
  call void @glVertex3fv(ptr noundef nonnull %11) #14
  call void @glVertex3fv(ptr noundef nonnull %9) #14
  call void @glVertex3fv(ptr noundef nonnull %2) #14
  call void @glVertex3fv(ptr noundef nonnull %7) #14
  call void @glEnd() #14
  call void @glPopMatrix() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_cone(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = fmul float %1, -5.000000e-01
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %4) #14
  %5 = fpext float %2 to double
  %6 = fpext float %1 to double
  tail call void @gluCylinder(ptr noundef %0, double noundef %5, double noundef 0.000000e+00, double noundef %6, i32 noundef 8, i32 noundef 1) #14
  tail call void @gluQuadricOrientation(ptr noundef %0, i32 noundef 100021) #14
  tail call void @gluDisk(ptr noundef %0, double noundef 0.000000e+00, double noundef %5, i32 noundef 8, i32 noundef 1) #14
  tail call void @gluQuadricOrientation(ptr noundef %0, i32 noundef 100020) #14
  %7 = fmul float %1, 5.000000e-01
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %7) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_select_query_check_active() local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_winmatrix_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_select_begin(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_select_end() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 432}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !11, i64 268}
!18 = !{!"bPoseChannel", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !9, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !9, i64 112, !9, i64 113, !9, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !14, i64 144, !14, i64 160, !8, i64 176, !8, i64 184, !8, i64 192, !9, i64 200, !9, i64 212, !9, i64 224, !9, i64 236, !9, i64 252, !15, i64 264, !11, i64 268, !11, i64 270, !9, i64 272, !9, i64 336, !9, i64 400, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !15, i64 524, !15, i64 528, !15, i64 532, !8, i64 536}
!19 = !{i32 0, i32 2}
!20 = !{!18, !15, i64 264}
!21 = !{!18, !8, i64 120}
!22 = !{!18, !8, i64 128}
!23 = !{!6, !11, i64 1040}
!24 = !{!6, !15, i64 616}
!25 = !{!6, !8, i64 216}
!26 = !{!15, !15, i64 0}
!27 = !{!28, !8, i64 96}
!28 = !{!"ScrArea", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !29, i64 56, !9, i64 72, !9, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !9, i64 86, !9, i64 87, !8, i64 88, !14, i64 96, !14, i64 112, !14, i64 128, !14, i64 144}
!29 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!30 = !{!31, !8, i64 376}
!31 = !{!"ARegion", !8, i64 0, !8, i64 8, !32, i64 16, !29, i64 176, !29, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !15, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !8, i64 240, !14, i64 248, !14, i64 264, !14, i64 280, !14, i64 296, !14, i64 312, !14, i64 328, !14, i64 344, !8, i64 360, !8, i64 368, !8, i64 376}
!32 = !{!"View2D", !33, i64 0, !33, i64 16, !29, i64 32, !29, i64 48, !29, i64 64, !9, i64 80, !9, i64 88, !15, i64 96, !15, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !8, i64 128, !12, i64 136, !12, i64 140, !8, i64 144, !8, i64 152}
!33 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!34 = !{!35, !9, i64 293}
!35 = !{!"View3D", !8, i64 0, !8, i64 8, !14, i64 16, !12, i64 32, !15, i64 36, !9, i64 40, !9, i64 56, !15, i64 72, !15, i64 76, !9, i64 80, !9, i64 81, !12, i64 84, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !8, i64 104, !33, i64 112, !14, i64 128, !8, i64 144, !8, i64 152, !9, i64 160, !12, i64 224, !12, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !15, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !9, i64 260, !9, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !9, i64 290, !9, i64 291, !9, i64 292, !9, i64 293, !9, i64 294, !14, i64 296, !14, i64 312, !14, i64 328, !9, i64 344, !9, i64 345, !9, i64 346, !9, i64 347, !8, i64 352, !8, i64 360, !8, i64 368}
!36 = !{!35, !11, i64 238}
!37 = !{!38, !8, i64 176}
!38 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !39, i64 280, !46, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !47, i64 4400, !48, i64 4416, !51, i64 4600, !8, i64 4608, !52, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !41, i64 4664, !42, i64 4824, !53, i64 4888, !8, i64 4952}
!39 = !{!"RenderData", !40, i64 0, !8, i64 248, !8, i64 256, !43, i64 264, !44, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !33, i64 544, !33, i64 560, !29, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !45, i64 2616, !12, i64 3976, !12, i64 3980}
!40 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !41, i64 24, !42, i64 184}
!41 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!42 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!43 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!44 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!45 = !{!"BakeData", !40, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!46 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!47 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!48 = !{!"GameData", !47, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !49, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !50, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!49 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!50 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!51 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!52 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!53 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!54 = !{!38, !8, i64 168}
!55 = !{!56, !8, i64 32}
!56 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!57 = !{!58, !11, i64 8902}
!58 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 788, !9, i64 1556, !9, i64 2580, !9, i64 3348, !9, i64 4116, !9, i64 4884, !9, i64 5652, !9, i64 6420, !9, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !14, i64 8536, !14, i64 8552, !14, i64 8568, !14, i64 8584, !14, i64 8600, !14, i64 8616, !14, i64 8632, !9, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !9, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !9, i64 8940, !9, i64 8941, !9, i64 8942, !9, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !15, i64 8956, !15, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !15, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !59, i64 8984, !9, i64 9760, !9, i64 9772, !11, i64 9788, !9, i64 9790, !9, i64 9791, !9, i64 9792, !9, i64 9872, !12, i64 10896, !12, i64 10900, !15, i64 10904, !15, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !60, i64 10928}
!59 = !{!"ColorBand", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8}
!60 = !{!"WalkNavigation", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !11, i64 24, !9, i64 26}
!61 = !{!62, !11, i64 824}
!62 = !{!"RegionView3D", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 192, !9, i64 256, !9, i64 320, !9, i64 384, !9, i64 448, !9, i64 544, !8, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !8, i64 672, !8, i64 680, !8, i64 688, !9, i64 696, !9, i64 760, !15, i64 776, !15, i64 780, !15, i64 784, !15, i64 788, !9, i64 792, !15, i64 804, !9, i64 808, !9, i64 809, !9, i64 810, !9, i64 811, !9, i64 812, !9, i64 813, !9, i64 816, !11, i64 824, !11, i64 826, !9, i64 828, !11, i64 844, !11, i64 846, !15, i64 848, !9, i64 852, !15, i64 864, !9, i64 868}
!63 = !{!12, !12, i64 0}
!64 = !{!35, !9, i64 291}
!65 = !{!66, !11, i64 2092}
!66 = !{!"Global", !8, i64 0, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 2057, !9, i64 2058, !14, i64 2064, !9, i64 2080, !9, i64 2081, !9, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !9, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !9, i64 2104, !12, i64 2108, !12, i64 2112, !9, i64 2116}
!67 = !{!66, !11, i64 2084}
!68 = !{!6, !12, i64 944}
!69 = !{!35, !12, i64 224}
!70 = !{!6, !11, i64 136}
!71 = !{!72, !8, i64 0}
!72 = !{!"BMEditMesh", !8, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !12, i64 32, !8, i64 40, !8, i64 48, !16, i64 56, !8, i64 64, !12, i64 72, !8, i64 80, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !12, i64 104}
!73 = !{!74, !11, i64 46}
!74 = !{!"ToolSettings", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !11, i64 44, !11, i64 46, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !15, i64 52, !11, i64 56, !9, i64 58, !9, i64 59, !75, i64 64, !77, i64 168, !15, i64 336, !15, i64 340, !11, i64 344, !11, i64 346, !9, i64 348, !9, i64 349, !11, i64 350, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !11, i64 392, !9, i64 394, !9, i64 395, !9, i64 396, !9, i64 399, !8, i64 400, !9, i64 408, !9, i64 409, !9, i64 410, !9, i64 411, !9, i64 412, !9, i64 413, !9, i64 421, !9, i64 429, !9, i64 430, !9, i64 431, !9, i64 432, !9, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !9, i64 442, !9, i64 443, !9, i64 444, !9, i64 445, !9, i64 446, !9, i64 447, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !11, i64 464, !11, i64 466, !12, i64 468, !15, i64 472, !15, i64 476, !78, i64 480, !79, i64 608}
!75 = !{!"ImagePaintSettings", !76, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !9, i64 48, !12, i64 52, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !15, i64 100}
!76 = !{!"Paint", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!77 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !8, i64 120, !15, i64 128, !15, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !8, i64 160}
!78 = !{!"UnifiedPaintSettings", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !9, i64 28, !12, i64 40, !9, i64 44, !15, i64 52, !12, i64 56, !12, i64 60, !9, i64 64, !9, i64 65, !15, i64 72, !9, i64 76, !12, i64 84, !15, i64 88, !9, i64 92, !9, i64 100, !12, i64 108, !8, i64 112, !15, i64 120, !12, i64 124}
!79 = !{!"MeshStatVis", !9, i64 0, !9, i64 1, !9, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !9, i64 20, !9, i64 21, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!80 = !{i8 0, i8 3}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !82}
!86 = distinct !{!86, !82}
!87 = !{!6, !8, i64 296}
!88 = !{!89, !8, i64 176}
!89 = !{!"bArmature", !7, i64 0, !8, i64 120, !14, i64 128, !14, i64 144, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !11, i64 208, !11, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252}
!90 = !{!91, !12, i64 132}
!91 = !{!"EditBone", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !15, i64 104, !9, i64 108, !9, i64 120, !12, i64 132, !12, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !11, i64 180}
!92 = !{!89, !8, i64 160}
!93 = !{!8, !8, i64 0}
!94 = !{!89, !12, i64 216}
!95 = !{!91, !12, i64 136}
!96 = distinct !{!96, !82}
!97 = !{!98, !11, i64 16}
!98 = !{!"Nurb", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !12, i64 24, !12, i64 28, !9, i64 32, !11, i64 36, !11, i64 38, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 82, !12, i64 84}
!99 = !{!98, !12, i64 24}
!100 = !{!98, !8, i64 72}
!101 = !{!102, !11, i64 248}
!102 = !{!"Curve", !7, i64 0, !8, i64 120, !8, i64 128, !14, i64 136, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !9, i64 208, !9, i64 220, !9, i64 232, !11, i64 244, !11, i64 246, !11, i64 248, !11, i64 250, !15, i64 252, !15, i64 256, !12, i64 260, !11, i64 264, !11, i64 266, !12, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !12, i64 292, !12, i64 296, !9, i64 300, !11, i64 304, !9, i64 306, !9, i64 307, !15, i64 308, !15, i64 312, !15, i64 316, !15, i64 320, !15, i64 324, !15, i64 328, !15, i64 332, !15, i64 336, !15, i64 340, !15, i64 344, !12, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !8, i64 368, !8, i64 376, !9, i64 384, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !12, i64 488, !12, i64 492, !8, i64 496, !103, i64 504, !15, i64 512, !15, i64 516, !15, i64 520, !9, i64 524, !9, i64 525, !9, i64 526}
!103 = !{!"CharInfo", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 5, !11, i64 6}
!104 = !{!105, !9, i64 52}
!105 = !{!"BezTriple", !9, i64 0, !15, i64 36, !15, i64 40, !15, i64 44, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !15, i64 56, !15, i64 60, !15, i64 64, !9, i64 68}
!106 = !{!105, !9, i64 51}
!107 = !{!105, !9, i64 53}
!108 = distinct !{!108, !82}
!109 = !{!98, !12, i64 28}
!110 = !{!98, !8, i64 64}
!111 = !{!112, !11, i64 24}
!112 = !{!"BPoint", !9, i64 0, !15, i64 16, !15, i64 20, !11, i64 24, !11, i64 26, !15, i64 28, !15, i64 32}
!113 = distinct !{!113, !82}
!114 = distinct !{!114, !82}
!115 = !{!116, !8, i64 240}
!116 = !{!"MetaBall", !7, i64 0, !8, i64 120, !14, i64 128, !14, i64 144, !8, i64 160, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 185, !11, i64 186, !11, i64 188, !11, i64 190, !9, i64 192, !9, i64 204, !9, i64 216, !15, i64 228, !15, i64 232, !15, i64 236, !8, i64 240}
!117 = !{!116, !8, i64 160}
!118 = !{!119, !11, i64 26}
!119 = !{!"MetaElem", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !9, i64 44, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !8, i64 88, !8, i64 96}
!120 = distinct !{!120, !82}
!121 = !{!122, !8, i64 272}
!122 = !{!"Lattice", !7, i64 0, !8, i64 120, !11, i64 128, !11, i64 130, !11, i64 132, !11, i64 134, !11, i64 136, !11, i64 138, !11, i64 140, !11, i64 142, !9, i64 144, !9, i64 145, !9, i64 146, !9, i64 147, !12, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !9, i64 208, !8, i64 272}
!123 = !{!124, !8, i64 0}
!124 = !{!"EditLatt", !8, i64 0, !12, i64 8, !9, i64 12}
!125 = !{!122, !11, i64 128}
!126 = !{!122, !11, i64 130}
!127 = !{!122, !11, i64 132}
!128 = !{!122, !8, i64 176}
!129 = distinct !{!129, !82}
!130 = !{!6, !8, i64 288}
!131 = !{!132, !12, i64 176}
!132 = !{!"Bone", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !14, i64 32, !9, i64 48, !15, i64 112, !9, i64 116, !9, i64 128, !9, i64 140, !12, i64 176, !9, i64 180, !9, i64 192, !9, i64 204, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !9, i64 308, !12, i64 320, !11, i64 324, !9, i64 326}
!133 = distinct !{!133, !82}
!134 = !{!135, !12, i64 296}
!135 = !{!"PTCacheEdit", !14, i64 0, !8, i64 16, !8, i64 24, !136, i64 32, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !14, i64 280, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !9, i64 312, !9, i64 315}
!136 = !{!"PTCacheID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192}
!137 = !{!135, !8, i64 24}
!138 = !{!139, !11, i64 12}
!139 = !{!"PTCacheEditPoint", !8, i64 0, !12, i64 8, !11, i64 12}
!140 = !{!139, !12, i64 8}
!141 = !{!139, !8, i64 0}
!142 = !{!143, !11, i64 52}
!143 = !{!"PTCacheEditKey", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !15, i64 44, !15, i64 48, !11, i64 52}
!144 = !{!143, !8, i64 0}
!145 = distinct !{!145, !82}
!146 = distinct !{!146, !82}
!147 = !{!6, !11, i64 948}
!148 = !{!56, !12, i64 24}
!149 = !{!56, !12, i64 16}
!150 = !{!6, !8, i64 24}
!151 = !{!6, !9, i64 1160}
!152 = !{!6, !11, i64 954}
!153 = distinct !{!153, !82}
!154 = !{!35, !9, i64 292}
!155 = distinct !{!155, !82}
!156 = !{!58, !11, i64 8900}
!157 = distinct !{!157, !82}
!158 = !{!35, !9, i64 344}
!159 = !{!160, !160, i64 0}
!160 = !{!"double", !9, i64 0}
!161 = distinct !{!161, !82}
!162 = distinct !{!162, !82}
!163 = !{!164, !11, i64 72}
!164 = !{!"wmEvent", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 36, !9, i64 42, !9, i64 43, !11, i64 44, !11, i64 46, !12, i64 48, !12, i64 52, !160, i64 56, !12, i64 64, !12, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !8, i64 88, !8, i64 96, !11, i64 104, !11, i64 106, !12, i64 108, !8, i64 112}
!165 = !{!166, !8, i64 112}
!166 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!167 = !{!58, !11, i64 8896}
!168 = !{!169, !8, i64 8}
!169 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !170, i64 152, !11, i64 184}
!170 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!171 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26}
!172 = distinct !{!172, !82}
!173 = !{!174, !9, i64 13}
!174 = !{!"BMHeader", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!175 = !{!176, !8, i64 48}
!176 = !{!"BMIter", !9, i64 0, !8, i64 40, !8, i64 48, !12, i64 56, !9, i64 60}
!177 = !{!18, !11, i64 108}
!178 = !{!11, !11, i64 0}
!179 = !{!176, !9, i64 60}
!180 = !{!176, !8, i64 40}
!181 = !{!182, !8, i64 32}
!182 = !{!"BMesh", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 29, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !183, i64 144, !183, i64 344, !183, i64 544, !183, i64 744, !11, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !14, i64 960, !8, i64 976, !14, i64 984, !8, i64 1000}
!183 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!184 = !{!182, !8, i64 40}
!185 = !{!182, !8, i64 56}
!186 = !{!9, !9, i64 0}
!187 = distinct !{!187, !82}
!188 = distinct !{!188, !82}
!189 = distinct !{!189, !82}
!190 = distinct !{!190, !82}
!191 = distinct !{!191, !82}
