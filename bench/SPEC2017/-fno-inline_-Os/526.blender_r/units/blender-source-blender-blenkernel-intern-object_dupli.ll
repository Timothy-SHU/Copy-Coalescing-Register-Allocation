; ModuleID = 'blender/source/blender/blenkernel/intern/object_dupli.c'
source_filename = "blender/source/blender/blenkernel/intern/object_dupli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DupliGenerator = type { i16, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DupliContext = type { ptr, i8, i8, ptr, ptr, ptr, [4 x [4 x float]], i32, [8 x i32], i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.VertexDupliData = type { ptr, ptr, i32, ptr, i8, ptr, ptr, [4 x [4 x float]] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.CharTrans = type { float, float, float, i16, i16, i8 }
%struct.FaceDupliData = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.DupliApplyData = type { i32, ptr }
%struct.DupliExtraData = type { [4 x [4 x float]], i32 }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleDupliWeight = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }

@gen_dupli_group = dso_local constant %struct.DupliGenerator { i16 256, ptr @make_duplis_group }, align 8
@gen_dupli_frames = dso_local constant %struct.DupliGenerator { i16 8, ptr @make_duplis_frames }, align 8
@gen_dupli_verts = dso_local constant %struct.DupliGenerator { i16 16, ptr @make_duplis_verts }, align 8
@gen_dupli_verts_font = dso_local constant %struct.DupliGenerator { i16 16, ptr @make_duplis_font }, align 8
@gen_dupli_faces = dso_local constant %struct.DupliGenerator { i16 512, ptr @make_duplis_faces }, align 8
@gen_dupli_particles = dso_local constant %struct.DupliGenerator { i16 2048, ptr @make_duplis_particles }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"duplilist\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"DupliObject apply data\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"DupliObject apply extra data\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dupli object\00", align 1
@enable_cu_speed = external local_unnamed_addr global i32, align 4
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@__const.get_duplivert_transform.size = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@__func__.make_duplis_font = private unnamed_addr constant [17 x i8] c"make_duplis_font\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"dupgroup object list\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"dupgroup copy list\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_duplis_group(ptr noundef %0) #0 !PGOFuncName !34 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, 2
  %7 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 112
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %1
  call void @unit_m4(ptr noundef nonnull %2) #14
  %13 = getelementptr inbounds [4 x [4 x float]], ptr %2, i64 0, i64 3
  %14 = getelementptr inbounds %struct.Group, ptr %10, i64 0, i32 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %2) #14
  %16 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !52
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @BKE_group_handle_recalc_and_update(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %8, ptr noundef nonnull %10) #14
  br label %23

23:                                               ; preds = %19, %12
  %24 = call zeroext i8 @BKE_group_is_animated(ptr noundef nonnull %10, ptr noundef nonnull %8) #14
  %25 = getelementptr inbounds %struct.Group, ptr %10, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %70, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Group, ptr %10, i64 0, i32 2
  %30 = select i1 %6, i8 4, i8 1
  br label %31

31:                                               ; preds = %28, %66
  %32 = phi ptr [ %26, %28 ], [ %68, %66 ]
  %33 = phi i32 [ 0, %28 ], [ %67, %66 ]
  %34 = getelementptr inbounds %struct.GroupObject, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, %8
  br i1 %36, label %66, label %37

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  br i1 %6, label %38, label %47

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 55
  %44 = load i16, ptr %43, align 8, !tbaa !58
  %45 = and i16 %44, 528
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42, %38, %37
  %48 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %48) #14
  %49 = load ptr, ptr %34, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 52
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = load i32, ptr %29, align 8, !tbaa !60
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 102
  %57 = load i8, ptr %56, align 8, !tbaa !62
  %58 = and i8 %57, %30
  %59 = icmp ne i8 %58, 0
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i1 [ true, %47 ], [ %59, %55 ]
  %62 = zext i1 %61 to i8
  %63 = call fastcc ptr @make_dupli(ptr noundef nonnull %0, ptr noundef nonnull %49, ptr noundef nonnull %3, i32 noundef %33, i8 noundef zeroext %24, i8 noundef zeroext %62) #15
  %64 = load ptr, ptr %34, align 8, !tbaa !55
  call fastcc void @make_recursive_duplis(ptr noundef nonnull %0, ptr noundef %64, ptr noundef nonnull %2, i32 noundef %33, i8 noundef zeroext %24) #15
  br label %65

65:                                               ; preds = %42, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %66

66:                                               ; preds = %65, %31
  %67 = add nuw nsw i32 %33, 1
  %68 = load ptr, ptr %32, align 8, !tbaa !54
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %31, !llvm.loop !63

70:                                               ; preds = %66, %23, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_duplis_frames(ptr noundef %0) #0 !PGOFuncName !65 {
  %2 = alloca %struct.Object, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %2)
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 67
  %10 = load i32, ptr %9, align 4, !tbaa !85
  %11 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %73

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 106
  %20 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %19) #15, !range !87
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %22, %18, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %2, ptr noundef nonnull align 8 dereferenceable(1424) %6, i64 1424, i1 false), !tbaa.struct !89
  %27 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 55
  %28 = load i16, ptr %27, align 8, !tbaa !58
  %29 = and i16 %28, 64
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, ptr @enable_cu_speed, align 4, !tbaa !92
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %34 = load i16, ptr %33, align 2, !tbaa !95
  %35 = or i16 %34, 16384
  store i16 %35, ptr %33, align 2, !tbaa !95
  %36 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 66
  %37 = load i32, ptr %36, align 8, !tbaa !96
  store i32 %37, ptr %7, align 8, !tbaa !66
  %38 = icmp sgt i32 %37, %10
  br i1 %38, label %67, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 65
  %41 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 64
  %42 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %43 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  br label %44

44:                                               ; preds = %39, %63
  %45 = phi i32 [ %37, %39 ], [ %65, %63 ]
  %46 = load i32, ptr %40, align 4, !tbaa !97
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %36, align 8, !tbaa !96
  %50 = sub nsw i32 %45, %49
  %51 = load i32, ptr %41, align 8, !tbaa !98
  %52 = add nsw i32 %51, %46
  %53 = srem i32 %50, %52
  %54 = icmp slt i32 %53, %51
  br i1 %54, label %55, label %63

55:                                               ; preds = %44, %48
  %56 = load ptr, ptr %42, align 8, !tbaa !88
  %57 = sitofp i32 %45 to float
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %4, ptr noundef nonnull %6, ptr noundef %56, float noundef %57, i16 noundef signext 2) #14
  %58 = load i32, ptr %7, align 8, !tbaa !66
  %59 = sitofp i32 %58 to float
  tail call void @BKE_object_where_is_calc_time(ptr noundef %4, ptr noundef nonnull %6, float noundef %59) #14
  %60 = load i32, ptr %7, align 8, !tbaa !66
  %61 = tail call fastcc ptr @make_dupli(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %43, i32 noundef %60, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %62 = load i32, ptr %7, align 8, !tbaa !66
  br label %63

63:                                               ; preds = %55, %48
  %64 = phi i32 [ %62, %55 ], [ %45, %48 ]
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %7, align 8, !tbaa !66
  %66 = icmp slt i32 %64, %10
  br i1 %66, label %44, label %67, !llvm.loop !99

67:                                               ; preds = %63, %32
  store i32 1, ptr @enable_cu_speed, align 4, !tbaa !92
  store i32 %8, ptr %7, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !88
  %70 = sitofp i32 %8 to float
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %69, float noundef %70, i16 noundef signext 2) #14
  %71 = load i32, ptr %7, align 8, !tbaa !66
  %72 = sitofp i32 %71 to float
  tail call void @BKE_object_where_is_calc_time(ptr noundef nonnull %4, ptr noundef nonnull %6, float noundef %72) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %6, ptr noundef nonnull align 8 dereferenceable(1424) %2, i64 1424, i1 false), !tbaa.struct !89
  br label %73

73:                                               ; preds = %22, %1, %67
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %2)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_duplis_verts(ptr noundef %0) #0 !PGOFuncName !100 {
  %2 = alloca %struct.VertexDupliData, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, -2
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #13
  %11 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 5
  store ptr %0, ptr %11, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 55
  %13 = load i16, ptr %12, align 8, !tbaa !58
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 32
  %16 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 4
  store i8 %15, ptr %16, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #14
  %20 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %21 = or i64 %20, 16384
  %22 = select i1 %10, i64 %20, i64 %21
  %23 = icmp eq ptr %19, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %19, i64 noundef %22) #14
  br label %28

26:                                               ; preds = %1
  %27 = tail call ptr @mesh_get_derived_final(ptr noundef %4, ptr noundef nonnull %6, i64 noundef %22) #14
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %27, %26 ], [ %25, %24 ]
  store ptr %29, ptr %2, align 8, !tbaa !105
  %30 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  %32 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !109
  br i1 %10, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 50
  %35 = load ptr, ptr %34, align 8, !tbaa !110
  %36 = tail call ptr %35(ptr noundef %29, i32 noundef 14) #14
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi ptr [ %36, %33 ], [ null, %28 ]
  %39 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 3
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 23
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = tail call i32 %41(ptr noundef %29) #14
  %43 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 2
  store i32 %42, ptr %43, align 8, !tbaa !113
  call fastcc void @make_child_duplis(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @make_child_duplis_verts) #15
  %44 = load ptr, ptr %2, align 8, !tbaa !105
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %44, i64 0, i32 95
  %46 = load ptr, ptr %45, align 8, !tbaa !114
  call void %46(ptr noundef %44) #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_duplis_font(ptr noundef %0) #0 !PGOFuncName !115 {
  %2 = alloca ptr, align 8
  %3 = alloca [3 x float], align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca [4 x [4 x float]], align 16
  %10 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr null, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr null, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  store i8 0, ptr %8, align 1, !tbaa !90
  %12 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %77

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %16) #14
  %17 = load ptr, ptr @G, align 8, !tbaa !116
  %18 = call zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %17, ptr noundef %11, i32 noundef 4, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %2) #14
  %19 = load ptr, ptr %7, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %2, align 8
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %77, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  %27 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 40
  %28 = load float, ptr %27, align 8, !tbaa !118
  %29 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 44
  %30 = load <2 x float>, ptr %29, align 8, !tbaa !93
  %31 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 54
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #16
  %33 = call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.make_duplis_font, i32 noundef 256) #14
  %34 = load i32, ptr %6, align 4, !tbaa !92
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %24
  %37 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %39 = insertelement <2 x float> poison, float %28, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %36, %62
  %42 = phi i64 [ 0, %36 ], [ %63, %62 ]
  %43 = phi ptr [ %21, %36 ], [ %64, %62 ]
  %44 = load ptr, ptr %7, align 8, !tbaa !54
  %45 = getelementptr inbounds i32, ptr %44, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !92
  %47 = call fastcc ptr @find_family_object(ptr noundef nonnull %31, i64 noundef %32, i32 noundef %46, ptr noundef %33) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %41
  %50 = load <2 x float>, ptr %43, align 4, !tbaa !93
  %51 = fsub <2 x float> %50, %30
  %52 = fmul <2 x float> %40, %51
  store <2 x float> %52, ptr %3, align 8, !tbaa !93
  store float 0.000000e+00, ptr %37, align 8, !tbaa !93
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %16) #14
  %53 = getelementptr inbounds %struct.CharTrans, ptr %43, i64 0, i32 2
  %54 = load float, ptr %53, align 4, !tbaa !121
  %55 = fcmp une float %54, 0.000000e+00
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #13
  call fastcc void @zero_v3(ptr noundef nonnull %38) #15
  call void @unit_m4(ptr noundef nonnull %9) #14
  %57 = load float, ptr %53, align 4, !tbaa !121
  %58 = fneg float %57
  call void @rotate_m4(ptr noundef nonnull %9, i8 noundef zeroext 90, float noundef %58) #14
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  br label %59

59:                                               ; preds = %56, %49
  call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %3) #15
  %60 = trunc i64 %42 to i32
  %61 = call fastcc ptr @make_dupli(ptr noundef %0, ptr noundef nonnull %47, ptr noundef nonnull %4, i32 noundef %60, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %62

62:                                               ; preds = %41, %59
  %63 = add nuw nsw i64 %42, 1
  %64 = getelementptr inbounds %struct.CharTrans, ptr %43, i64 1
  %65 = load i32, ptr %6, align 4, !tbaa !92
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %41, label %68, !llvm.loop !123

68:                                               ; preds = %62, %24
  %69 = load i8, ptr %8, align 1, !tbaa !90
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %73 = load ptr, ptr %7, align 8, !tbaa !54
  call void %72(ptr noundef %73) #14
  br label %74

74:                                               ; preds = %71, %68
  call void @BLI_ghash_free(ptr noundef %33, ptr noundef null, ptr noundef null) #14
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %76 = load ptr, ptr %2, align 8, !tbaa !54
  call void %75(ptr noundef %76) #14
  br label %77

77:                                               ; preds = %15, %1, %74
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_duplis_faces(ptr noundef %0) #0 !PGOFuncName !124 {
  %2 = alloca %struct.FaceDupliData, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, -2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %11 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 55
  %12 = load i16, ptr %11, align 8, !tbaa !58
  %13 = lshr i16 %12, 10
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 1
  %16 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 7
  store i8 %15, ptr %16, align 8, !tbaa !125
  %17 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #14
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %19 = or i64 %18, 81920
  %20 = select i1 %10, i64 %18, i64 %19
  %21 = icmp eq ptr %17, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %17, i64 noundef %20) #14
  br label %26

24:                                               ; preds = %1
  %25 = tail call ptr @mesh_get_derived_final(ptr noundef %4, ptr noundef nonnull %6, i64 noundef %20) #14
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  store ptr %27, ptr %2, align 8, !tbaa !127
  br i1 %10, label %35, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = tail call ptr %30(ptr noundef %27, i32 noundef 14) #14
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 53
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = tail call ptr %33(ptr noundef %27, i32 noundef 16) #14
  br label %35

35:                                               ; preds = %26, %28
  %36 = phi ptr [ %31, %28 ], [ null, %26 ]
  %37 = phi ptr [ %34, %28 ], [ null, %26 ]
  %38 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 5
  store ptr %36, ptr %38, align 8
  %39 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 6
  store ptr %37, ptr %39, align 8
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 27
  %41 = load ptr, ptr %40, align 8, !tbaa !129
  %42 = tail call i32 %41(ptr noundef %27) #14
  %43 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 1
  store i32 %42, ptr %43, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 35
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  %46 = tail call ptr %45(ptr noundef %27) #14
  %47 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !132
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 34
  %49 = load ptr, ptr %48, align 8, !tbaa !133
  %50 = tail call ptr %49(ptr noundef %27) #14
  %51 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !134
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 31
  %53 = load ptr, ptr %52, align 8, !tbaa !135
  %54 = tail call ptr %53(ptr noundef %27) #14
  %55 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !136
  call fastcc void @make_child_duplis(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @make_child_duplis_faces) #15
  %56 = load ptr, ptr %2, align 8, !tbaa !127
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %56, i64 0, i32 95
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  call void %58(ptr noundef %56) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_duplis_particles(ptr noundef %0) #0 !PGOFuncName !137 {
  %2 = alloca %struct.DupliContext, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 109
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %1 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #13
  %11 = load ptr, ptr %3, align 8, !tbaa !43
  call fastcc void @copy_dupli_context(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef %11, ptr noundef null, i32 noundef %10, i8 noundef zeroext 0) #15
  call fastcc void @make_duplis_particle_system(ptr noundef nonnull %2, ptr noundef nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #13
  %12 = add nuw nsw i32 %10, 1
  %13 = load ptr, ptr %9, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !138

15:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @object_duplilist_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.DupliContext, align 8
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %5) #13
  call fastcc void @init_context(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #15
  %8 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 12
  store ptr %7, ptr %12, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.DupliGenerator, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  call void %14(ptr noundef nonnull %5) #14
  br label %15

15:                                               ; preds = %11, %4
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %5) #13
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !143 {
  store ptr %1, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  store ptr %2, ptr %6, align 8, !tbaa !53
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !144
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4, !tbaa !41
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %8, %11, %5
  %16 = phi i8 [ 0, %5 ], [ 1, %8 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 1
  store i8 %16, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  store i8 0, ptr %18, align 1, !tbaa !145
  %19 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  store ptr %3, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  tail call void @unit_m4(ptr noundef nonnull %21) #14
  %22 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 52
  %23 = load i32, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 7
  store i32 %23, ptr %24, align 8, !tbaa !146
  %25 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  store i32 0, ptr %25, align 4, !tbaa !147
  %26 = tail call fastcc ptr @get_dupli_generator(ptr noundef nonnull %0) #15
  %27 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  store ptr %26, ptr %27, align 8, !tbaa !139
  %28 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 12
  store ptr null, ptr %28, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @object_duplilist(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @object_duplilist_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_object_duplilist(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef %0) #14
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %2(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_duplilist(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %3 = load i16, ptr %2, align 8, !tbaa !58
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 2840
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !148
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %14 ]
  %20 = phi i32 [ %23, %18 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !149
  %23 = add nsw i32 %22, %20
  %24 = load ptr, ptr %19, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !llvm.loop !151

26:                                               ; preds = %18
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %14, %26
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 26
  %32 = load i32, ptr %31, align 8, !tbaa !152
  br label %49

33:                                               ; preds = %7
  %34 = and i32 %4, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 67
  %38 = load i32, ptr %37, align 4, !tbaa !85
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 66
  %40 = load i32, ptr %39, align 8, !tbaa !96
  %41 = sub nsw i32 %38, %40
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 64
  %43 = load i32, ptr %42, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 65
  %45 = load i32, ptr %44, align 4, !tbaa !97
  %46 = add nsw i32 %45, %43
  %47 = sdiv i32 %41, %46
  %48 = mul nsw i32 %47, %43
  br label %49

49:                                               ; preds = %1, %33, %10, %28, %26, %36
  %50 = phi i32 [ %48, %36 ], [ %32, %28 ], [ %23, %26 ], [ 1, %10 ], [ 1, %33 ], [ 1, %1 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @duplilist_apply(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_countlist(ptr noundef %1) #14
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str.1) #14
  store i32 %3, ptr %7, align 8, !tbaa !153
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %9 = zext nneg i32 %3 to i64
  %10 = mul nuw nsw i64 %9, 68
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.2) #14
  %12 = getelementptr inbounds %struct.DupliApplyData, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !155
  %13 = load ptr, ptr %1, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 52
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %11, %15 ], [ %31, %17 ]
  %19 = phi i64 [ 0, %15 ], [ %34, %17 ]
  %20 = phi ptr [ %13, %15 ], [ %35, %17 ]
  %21 = getelementptr inbounds %struct.DupliExtraData, ptr %18, i64 %19
  %22 = getelementptr inbounds %struct.DupliObject, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %21, ptr noundef nonnull %24) #14
  %25 = load ptr, ptr %22, align 8, !tbaa !156
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47
  %27 = getelementptr inbounds %struct.DupliObject, ptr %20, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %27) #14
  %28 = load ptr, ptr %22, align 8, !tbaa !156
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 52
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = load ptr, ptr %12, align 8, !tbaa !155
  %32 = getelementptr inbounds %struct.DupliExtraData, ptr %31, i64 %19, i32 1
  store i32 %30, ptr %32, align 4, !tbaa !158
  %33 = load i32, ptr %16, align 8, !tbaa !59
  store i32 %33, ptr %29, align 8, !tbaa !59
  %34 = add nuw i64 %19, 1
  %35 = load ptr, ptr %20, align 8, !tbaa !54
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17, !llvm.loop !160

37:                                               ; preds = %17, %5, %2
  %38 = phi ptr [ null, %2 ], [ %7, %5 ], [ %7, %17 ]
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @duplilist_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.DupliApplyData, ptr %1, i64 0, i32 1
  %9 = sext i32 %7 to i64
  %10 = load ptr, ptr %8, align 8, !tbaa !155
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %10, %6 ], [ %20, %11 ]
  %13 = phi i64 [ %9, %6 ], [ %15, %11 ]
  %14 = phi ptr [ %4, %6 ], [ %26, %11 ]
  %15 = add nsw i64 %13, -1
  %16 = getelementptr inbounds %struct.DupliObject, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !156
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  %19 = getelementptr inbounds %struct.DupliExtraData, ptr %12, i64 %15
  tail call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef %19) #14
  %20 = load ptr, ptr %8, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.DupliExtraData, ptr %20, i64 %15, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !158
  %23 = load ptr, ptr %16, align 8, !tbaa !156
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 52
  store i32 %22, ptr %24, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.DupliObject, ptr %14, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !161

28:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @duplilist_free_apply_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.DupliApplyData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  tail call void %2(ptr noundef %4) #14
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %5(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !162 {
  %3 = load float, ptr %1, align 4, !tbaa !93
  %4 = load float, ptr %0, align 4, !tbaa !93
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !93
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !93
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !93
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !93
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !93
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !93
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_group_handle_recalc_and_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_group_is_animated(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !163 {
  %7 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %68, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %12 = tail call ptr %11(i64 noundef 152, ptr noundef nonnull @.str.3) #14
  %13 = load ptr, ptr %7, align 8, !tbaa !140
  tail call void @BLI_addtail(ptr noundef %13, ptr noundef %12) #14
  %14 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !156
  %15 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 3
  %16 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  tail call void @mul_m4_m4m4(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %2) #14
  %17 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = load i16, ptr %18, align 8, !tbaa !164
  %20 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 6
  store i16 %19, ptr %20, align 4, !tbaa !165
  %21 = icmp eq i8 %4, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  %24 = load i8, ptr %23, align 1, !tbaa !145
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %22, %10
  %28 = phi i8 [ 1, %10 ], [ %26, %22 ]
  %29 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 8
  store i8 %28, ptr %29, align 1, !tbaa !166
  %30 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 9
  store i32 %3, ptr %30, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !147
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %37, label %40

34:                                               ; preds = %40
  %35 = and i64 %49, 4294967288
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %27, %34
  %38 = phi i64 [ %49, %34 ], [ 1, %27 ]
  %39 = and i64 %38, 4294967295
  br label %53

40:                                               ; preds = %27, %40
  %41 = phi i64 [ %49, %40 ], [ 1, %27 ]
  %42 = phi i32 [ %50, %40 ], [ %32, %27 ]
  %43 = trunc i64 %41 to i32
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 8, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !92
  %48 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 9, i64 %41
  store i32 %47, ptr %48, align 4, !tbaa !92
  %49 = add nuw nsw i64 %41, 1
  %50 = load i32, ptr %31, align 4, !tbaa !147
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %41, %51
  br i1 %52, label %40, label %34, !llvm.loop !167

53:                                               ; preds = %37, %53
  %54 = phi i64 [ %39, %37 ], [ %56, %53 ]
  %55 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 9, i64 %54
  store i32 2147483647, ptr %55, align 4, !tbaa !92
  %56 = add nuw nsw i64 %54, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %58, label %53, !llvm.loop !168

58:                                               ; preds = %53, %34
  %59 = icmp eq i8 %5, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 7
  store i8 1, ptr %61, align 2, !tbaa !169
  br label %62

62:                                               ; preds = %60, %58
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !148
  %65 = icmp eq i16 %64, 5
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 7
  store i8 1, ptr %67, align 2, !tbaa !169
  br label %68

68:                                               ; preds = %62, %66, %6
  %69 = phi ptr [ null, %6 ], [ %12, %66 ], [ %12, %62 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_recursive_duplis(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !170 {
  %6 = alloca %struct.DupliContext, align 8
  %7 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #13
  call fastcc void @copy_dupli_context(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #15
  %11 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DupliGenerator, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  call void %16(ptr noundef nonnull %6) #14
  br label %17

17:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #13
  br label %18

18:                                               ; preds = %17, %5
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_dupli_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !171 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false), !tbaa.struct !172
  %7 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !145
  %9 = or i8 %8, %5
  store i8 %9, ptr %7, align 1, !tbaa !145
  %10 = getelementptr inbounds %struct.DupliContext, ptr %1, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = load i16, ptr %11, align 8, !tbaa !164
  %13 = icmp eq i16 %12, 256
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.DupliContext, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 112
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !86
  br label %20

20:                                               ; preds = %14, %6
  %21 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  store ptr %2, ptr %21, align 8, !tbaa !43
  %22 = icmp eq ptr %3, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct.DupliContext, ptr %1, i64 0, i32 6
  tail call void @mul_m4_m4m4(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %3) #14
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !147
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 8, i64 %29
  store i32 %4, ptr %30, align 4, !tbaa !92
  %31 = load i32, ptr %27, align 4, !tbaa !147
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %27, align 4, !tbaa !147
  %33 = tail call fastcc ptr @get_dupli_generator(ptr noundef nonnull %0) #15
  %34 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  store ptr %33, ptr %34, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_dupli_generator(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !173 {
  %2 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !58
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 102
  %8 = load i8, ptr %7, align 8, !tbaa !62
  %9 = zext i8 %8 to i32
  %10 = and i32 %6, 2840
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = and i32 %9, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %49

19:                                               ; preds = %12
  %20 = and i32 %9, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19, %16
  %23 = and i32 %6, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = and i32 %6, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !148
  %31 = icmp eq i16 %30, 4
  %32 = select i1 %31, ptr @gen_dupli_verts_font, ptr null
  %33 = icmp eq i16 %30, 1
  %34 = select i1 %33, ptr @gen_dupli_verts, ptr %32
  br label %49

35:                                               ; preds = %25
  %36 = and i32 %6, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %40 = load i16, ptr %39, align 8, !tbaa !148
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %49, label %48

42:                                               ; preds = %35
  %43 = and i32 %6, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = and i32 %6, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %28, %45, %42, %38, %22, %16, %19, %1, %48
  %50 = phi ptr [ null, %48 ], [ null, %1 ], [ null, %19 ], [ null, %16 ], [ @gen_dupli_particles, %22 ], [ @gen_dupli_faces, %38 ], [ @gen_dupli_frames, %42 ], [ @gen_dupli_group, %45 ], [ %34, %28 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !174 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_child_duplis(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !176 {
  %4 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  %10 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %19

19:                                               ; preds = %13, %41
  %20 = phi ptr [ %42, %41 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.GroupObject, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 52
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, %15
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq ptr %22, %9
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %19
  %30 = tail call fastcc zeroext i8 @is_child(ptr noundef nonnull %22, ptr noundef %5) #15, !range !87
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !148
  %35 = icmp eq i16 %34, 5
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %38 = load i16, ptr %37, align 4, !tbaa !178
  %39 = or i16 %38, 1024
  store i16 %39, ptr %37, align 4, !tbaa !178
  br label %40

40:                                               ; preds = %36, %32
  tail call void %2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22) #14, !callees !179
  br label %41

41:                                               ; preds = %40, %29, %19
  %42 = load ptr, ptr %20, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %75, label %19, !llvm.loop !180

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  %46 = load i32, ptr %45, align 8, !tbaa !181
  %47 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %44, %72
  %51 = phi ptr [ %73, %72 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !182
  %54 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !184
  %56 = and i32 %55, %46
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq ptr %53, %9
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %50
  %61 = tail call fastcc zeroext i8 @is_child(ptr noundef %53, ptr noundef %5) #15, !range !87
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 3
  %65 = load i16, ptr %64, align 8, !tbaa !148
  %66 = icmp eq i16 %65, 5
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 53
  %69 = load i16, ptr %68, align 4, !tbaa !178
  %70 = or i16 %69, 1024
  store i16 %70, ptr %68, align 4, !tbaa !178
  br label %71

71:                                               ; preds = %67, %63
  tail call void %2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %53) #14, !callees !179
  br label %72

72:                                               ; preds = %71, %60, %50
  %73 = load ptr, ptr %51, align 8, !tbaa !54
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %50, !llvm.loop !185

75:                                               ; preds = %41, %72, %13, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_child_duplis_verts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !186 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = load ptr, ptr %1, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 6
  store ptr %2, ptr %7, align 8, !tbaa !187
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %10 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %11 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 7
  %12 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %14) #14
  %15 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 71
  %20 = load ptr, ptr %19, align 8, !tbaa !188
  %21 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 4
  %22 = load i8, ptr %21, align 8, !tbaa !103
  %23 = icmp ne i8 %22, 0
  %24 = zext i1 %23 to i32
  tail call void %20(ptr noundef %6, ptr noundef nonnull @vertex_dupli__mapFunc, ptr noundef nonnull %1, i32 noundef %24) #14
  br label %51

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %28 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 4
  %29 = load i8, ptr %28, align 8, !tbaa !103
  %30 = icmp eq i8 %29, 0
  %31 = icmp sgt i32 %27, 0
  br i1 %30, label %36, label %32

32:                                               ; preds = %25
  br i1 %31, label %33, label %50

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 76
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 78
  br label %39

36:                                               ; preds = %25
  br i1 %31, label %37, label %50

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 76
  br label %45

39:                                               ; preds = %33, %39
  %40 = phi i32 [ 0, %33 ], [ %43, %39 ]
  %41 = load ptr, ptr %34, align 8, !tbaa !189
  call void %41(ptr noundef %6, i32 noundef %40, ptr noundef nonnull %4) #14
  %42 = load ptr, ptr %35, align 8, !tbaa !190
  call void %42(ptr noundef %6, i32 noundef %40, ptr noundef nonnull %5) #14
  call void @vertex_dupli__mapFunc(ptr noundef nonnull %1, i32 noundef %40, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #15
  %43 = add nuw nsw i32 %40, 1
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %50, label %39, !llvm.loop !191

45:                                               ; preds = %37, %45
  %46 = phi i32 [ 0, %37 ], [ %48, %45 ]
  %47 = load ptr, ptr %38, align 8, !tbaa !189
  call void %47(ptr noundef %6, i32 noundef %46, ptr noundef nonnull %4) #14
  call void @vertex_dupli__mapFunc(ptr noundef nonnull %1, i32 noundef %46, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #15
  %48 = add nuw nsw i32 %46, 1
  %49 = icmp eq i32 %48, %27
  br i1 %49, label %50, label %45, !llvm.loop !192

50:                                               ; preds = %39, %45, %32, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %51

51:                                               ; preds = %50, %18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_child(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !193 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %3, !llvm.loop !194

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vertex_dupli__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !195 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %10 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 57
  %13 = load i16, ptr %12, align 4, !tbaa !196
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 58
  %15 = load i16, ptr %14, align 2, !tbaa !197
  call fastcc void @get_duplivert_transform(ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %11, i16 noundef signext %13, i16 noundef signext %15, ptr noundef nonnull %6) #15
  %16 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call void @mul_mat3_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  %18 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef nonnull %6) #14
  %19 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 50
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %19) #14
  %20 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = load ptr, ptr %8, align 8, !tbaa !187
  %23 = call fastcc ptr @make_dupli(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %6, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %24 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !198
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.DupliObject, ptr %23, i64 0, i32 4
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds [3 x float], ptr %25, i64 %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %30) #15
  br label %31

31:                                               ; preds = %27, %5
  %32 = load ptr, ptr %20, align 8, !tbaa !101
  %33 = load ptr, ptr %8, align 8, !tbaa !187
  call fastcc void @make_recursive_duplis(ptr noundef %32, ptr noundef %33, ptr noundef nonnull %7, i32 noundef %1, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_duplivert_transform(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !199 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) @__const.get_duplivert_transform.size, i64 12, i1 false)
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %13 = icmp eq ptr %1, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = load <2 x float>, ptr %1, align 4, !tbaa !93
  %16 = fneg <2 x float> %15
  store <2 x float> %16, ptr %10, align 8, !tbaa !93
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !93
  %19 = fneg float %18
  br label %32

20:                                               ; preds = %12
  %21 = icmp eq ptr %2, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %20
  %23 = load <2 x i16>, ptr %2, align 2, !tbaa !91
  %24 = sext <2 x i16> %23 to <2 x i32>
  %25 = sub nsw <2 x i32> zeroinitializer, %24
  %26 = sitofp <2 x i32> %25 to <2 x float>
  store <2 x float> %26, ptr %10, align 8, !tbaa !93
  %27 = getelementptr inbounds i16, ptr %2, i64 2
  %28 = load i16, ptr %27, align 2, !tbaa !91
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 0, %29
  %31 = sitofp i32 %30 to float
  br label %32

32:                                               ; preds = %14, %22
  %33 = phi float [ %31, %22 ], [ %19, %14 ]
  %34 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %33, ptr %34, align 8, !tbaa !93
  br label %35

35:                                               ; preds = %32, %20
  call void @vec_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %10, i16 noundef signext %4, i16 noundef signext %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  br label %37

36:                                               ; preds = %7
  call void @unit_qt(ptr noundef nonnull %8) #14
  br label %37

37:                                               ; preds = %36, %35
  call void @loc_quat_size_to_mat4(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !200 {
  %3 = load float, ptr %1, align 4, !tbaa !93
  store float %3, ptr %0, align 4, !tbaa !93
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !93
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !93
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !93
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @loc_quat_size_to_mat4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_family_object(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !201 {
  %5 = alloca [7 x i8], align 1
  %6 = zext i32 %2 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %3, ptr noundef %7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 8, !tbaa !54
  br label %34

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #13
  %13 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %2, ptr noundef nonnull %5) #14
  %14 = getelementptr inbounds [7 x i8], ptr %5, i64 0, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !90
  %15 = add i64 %13, 1
  %16 = load ptr, ptr @G, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %12, %29
  %21 = phi ptr [ %30, %29 ], [ %18, %12 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  %23 = getelementptr inbounds i8, ptr %22, i64 %1
  %24 = call i32 @strncmp(ptr noundef nonnull %23, ptr noundef nonnull %5, i64 noundef %15) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @strncmp(ptr noundef nonnull %22, ptr noundef %0, i64 noundef %1) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20, %26
  %30 = load ptr, ptr %21, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !202

32:                                               ; preds = %29, %26, %12
  %33 = phi ptr [ null, %12 ], [ %21, %26 ], [ null, %29 ]
  call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %7, ptr noundef %33) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #13
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi ptr [ %11, %10 ], [ %33, %32 ]
  ret ptr %35
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !203 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !93
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @make_child_duplis_faces(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !204 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !205
  %16 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !130
  %20 = load ptr, ptr %0, align 8, !tbaa !35
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = add i32 %21, -3
  %23 = icmp ult i32 %22, -2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %26 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %24, ptr noundef nonnull %25) #14
  %27 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %24, ptr noundef nonnull %29) #14
  %30 = icmp sgt i32 %19, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 7
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %34 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 48
  %35 = icmp ne ptr %15, null
  %36 = icmp ne ptr %17, null
  br label %37

37:                                               ; preds = %31, %86
  %38 = phi ptr [ %9, %31 ], [ %88, %86 ]
  %39 = phi i32 [ 0, %31 ], [ %87, %86 ]
  %40 = load i32, ptr %38, align 4, !tbaa !207
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MLoop, ptr %11, i64 %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %43 = getelementptr inbounds %struct.MPoly, ptr %38, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !209
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %86, label %46

46:                                               ; preds = %37
  %47 = load i8, ptr %32, align 8, !tbaa !125
  %48 = load ptr, ptr %27, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 90
  %50 = load float, ptr %49, align 4, !tbaa !210
  call fastcc void @get_dupliface_transform(ptr noundef nonnull %38, ptr noundef %42, ptr noundef %13, i8 noundef zeroext %47, float noundef %50, ptr noundef nonnull %6) #15
  call void @mul_mat3_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %33) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %34) #14
  call void @mul_m4_m3m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull %6) #14
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %24) #14
  %51 = call fastcc ptr @make_dupli(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br i1 %23, label %85, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %43, align 4, !tbaa !209
  %54 = sitofp i32 %53 to float
  %55 = fdiv float 1.000000e+00, %54
  %56 = icmp sgt i32 %53, 0
  %57 = select i1 %35, i1 %56, i1 false
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.DupliObject, ptr %51, i64 0, i32 4
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ 0, %58 ], [ %66, %60 ]
  %62 = getelementptr inbounds %struct.MLoop, ptr %42, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !211
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [3 x float], ptr %15, i64 %64
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %59, ptr noundef nonnull %65, float noundef %55) #15
  %66 = add nuw nsw i64 %61, 1
  %67 = load i32, ptr %43, align 4, !tbaa !209
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %60, label %70, !llvm.loop !213

70:                                               ; preds = %60, %52
  %71 = phi i32 [ %53, %52 ], [ %67, %60 ]
  %72 = icmp sgt i32 %71, 0
  %73 = select i1 %36, i1 %72, i1 false
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.DupliObject, ptr %51, i64 0, i32 5
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i32 [ 0, %74 ], [ %82, %76 ]
  %78 = load i32, ptr %38, align 4, !tbaa !207
  %79 = add nsw i32 %78, %77
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MLoopUV, ptr %17, i64 %80
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %75, ptr noundef nonnull %81, float noundef %55) #15
  %82 = add nuw nsw i32 %77, 1
  %83 = load i32, ptr %43, align 4, !tbaa !209
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %76, label %85, !llvm.loop !214

85:                                               ; preds = %76, %70, %46
  call fastcc void @make_recursive_duplis(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %39, i8 noundef zeroext 0) #15
  br label %86

86:                                               ; preds = %37, %85
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %87 = add nuw nsw i32 %39, 1
  %88 = getelementptr inbounds %struct.MPoly, ptr %38, i64 1
  %89 = icmp eq i32 %87, %19
  br i1 %89, label %90, label %37, !llvm.loop !215

90:                                               ; preds = %86, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_dupliface_transform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, float noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !216 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @BKE_mesh_calc_poly_center(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #14
  call void @BKE_mesh_calc_poly_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10) #14
  %11 = load i32, ptr %1, align 4, !tbaa !211
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MLoop, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !211
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %2, i64 %16
  %18 = getelementptr inbounds %struct.MLoop, ptr %1, i64 2
  %19 = load i32, ptr %18, align 4, !tbaa !211
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %2, i64 %20
  call void @tri_to_quat_ex(ptr noundef nonnull %8, ptr noundef %13, ptr noundef %17, ptr noundef %21, ptr noundef nonnull %10) #14
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = call float @BKE_mesh_calc_poly_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #14
  %25 = call float @sqrtf(float noundef %24) #14
  %26 = fmul float %25, %4
  br label %27

27:                                               ; preds = %6, %23
  %28 = phi float [ %26, %23 ], [ 1.000000e+00, %6 ]
  %29 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %28, ptr %29, align 4, !tbaa !93
  %30 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %28, ptr %30, align 4, !tbaa !93
  store float %28, ptr %9, align 4, !tbaa !93
  call void @loc_quat_size_to_mat4(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !217 {
  %4 = load float, ptr %1, align 4, !tbaa !93
  %5 = load float, ptr %0, align 4, !tbaa !93
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !93
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !93
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !93
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !93
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !93
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !93
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !218 {
  %4 = load float, ptr %1, align 4, !tbaa !93
  %5 = load float, ptr %0, align 4, !tbaa !93
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !93
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !93
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !93
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_poly_center(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_poly_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tri_to_quat_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_mesh_calc_poly_area(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_duplis_particle_system(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !219 {
  %3 = alloca %struct.Object, align 8
  %4 = alloca %struct.ParticleKey, align 4
  %5 = alloca float, align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.ParticleSimulationData, align 8
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 8
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x float], align 4
  %18 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = icmp eq i32 %23, 2
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store float 1.000000e+00, ptr %5, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %25 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %19) #14
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !220
  %29 = icmp eq ptr %28, null
  br i1 %29, label %459, label %30

30:                                               ; preds = %2
  %31 = tail call i32 @psys_check_enabled(ptr noundef %21, ptr noundef nonnull %1) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %459, label %33

33:                                               ; preds = %30
  %34 = select i1 %24, i32 1, i32 3
  %35 = tail call float @BKE_scene_frame_get(ptr noundef %19) #14
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !149
  %38 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 28
  %39 = load i32, ptr %38, align 8, !tbaa !221
  %40 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 23
  %41 = load i32, ptr %40, align 4, !tbaa !222
  %42 = add nsw i32 %41, 31415926
  tail call void @BLI_srandom(i32 noundef %42) #14
  %43 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 39
  %44 = load ptr, ptr %43, align 8, !tbaa !223
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 17
  %48 = load i16, ptr %47, align 8, !tbaa !224
  %49 = icmp eq i16 %48, 10
  br i1 %49, label %50, label %454

50:                                               ; preds = %46, %33
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 21
  %52 = load i16, ptr %51, align 8, !tbaa !226
  %53 = add i16 %52, -7
  %54 = icmp ult i16 %53, 2
  br i1 %54, label %55, label %454

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #13
  %56 = getelementptr inbounds i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %56, i8 0, i64 16, i1 false)
  store ptr %19, ptr %10, align 8, !tbaa !227
  %57 = getelementptr inbounds %struct.ParticleSimulationData, ptr %10, i64 0, i32 1
  store ptr %21, ptr %57, align 8, !tbaa !229
  %58 = getelementptr inbounds %struct.ParticleSimulationData, ptr %10, i64 0, i32 2
  store ptr %1, ptr %58, align 8, !tbaa !230
  %59 = tail call ptr @psys_get_modifier(ptr noundef %21, ptr noundef nonnull %1) #14
  %60 = getelementptr inbounds %struct.ParticleSimulationData, ptr %10, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !231
  %61 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 50
  %62 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  %63 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %61, ptr noundef nonnull %62) #14
  %64 = load i16, ptr %51, align 8, !tbaa !226
  %65 = icmp eq i16 %64, 7
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 125
  %68 = load ptr, ptr %67, align 8, !tbaa !232
  %69 = icmp eq ptr %68, null
  %70 = icmp eq ptr %68, %21
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %445, label %83

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 122
  %74 = load ptr, ptr %73, align 8, !tbaa !233
  %75 = icmp eq ptr %74, null
  br i1 %75, label %445, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Group, ptr %74, i64 0, i32 1
  %78 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %77) #15, !range !87
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %445

80:                                               ; preds = %76
  %81 = tail call ptr @BLI_findptr(ptr noundef nonnull %77, ptr noundef %21, i32 noundef 16) #14
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %445

83:                                               ; preds = %66, %80
  %84 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 7
  %85 = load i16, ptr %84, align 8, !tbaa !234
  %86 = icmp eq i16 %85, 2
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 25
  %89 = load i32, ptr %88, align 4, !tbaa !235
  %90 = and i32 %89, 512
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %445, label %92

92:                                               ; preds = %87
  %93 = icmp eq i32 %39, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !236
  %97 = icmp eq ptr %96, null
  br i1 %97, label %445, label %98

98:                                               ; preds = %92, %94
  %99 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !237
  %101 = icmp eq ptr %100, null
  br i1 %101, label %445, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 30
  %104 = load i32, ptr %103, align 8, !tbaa !238
  %105 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 29
  %106 = load i32, ptr %105, align 4, !tbaa !239
  br label %107

107:                                              ; preds = %102, %83
  %108 = phi i32 [ %106, %102 ], [ %37, %83 ]
  %109 = phi i32 [ %104, %102 ], [ %39, %83 ]
  tail call void @psys_check_group_weights(ptr noundef nonnull %28) #14
  %110 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %10) #14
  %111 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 15
  store ptr %110, ptr %111, align 8, !tbaa !240
  %112 = load i16, ptr %51, align 8, !tbaa !226
  %113 = icmp eq i16 %112, 8
  br i1 %113, label %114, label %210

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 1
  %116 = load i8, ptr %115, align 8, !tbaa !52
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %0, align 8, !tbaa !35
  %120 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 122
  %121 = load ptr, ptr %120, align 8, !tbaa !233
  call void @BKE_group_handle_recalc_and_update(ptr noundef %119, ptr noundef %19, ptr noundef %21, ptr noundef %121) #14
  br label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 15
  %124 = load i32, ptr %123, align 8, !tbaa !241
  %125 = and i32 %124, 64
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 123
  %129 = load ptr, ptr %128, align 8, !tbaa !54
  %130 = icmp eq ptr %129, null
  br i1 %130, label %150, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %138, %131 ], [ %129, %127 ]
  %133 = phi i32 [ %137, %131 ], [ 0, %127 ]
  %134 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %132, i64 0, i32 3
  %135 = load i16, ptr %134, align 8, !tbaa !242
  %136 = sext i16 %135 to i32
  %137 = add nsw i32 %133, %136
  %138 = load ptr, ptr %132, align 8, !tbaa !54
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %131, !llvm.loop !244

140:                                              ; preds = %122
  %141 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 122
  %142 = load ptr, ptr %141, align 8, !tbaa !233
  %143 = getelementptr inbounds %struct.Group, ptr %142, i64 0, i32 1
  br label %144

144:                                              ; preds = %144, %140
  %145 = phi i32 [ 0, %140 ], [ %149, %144 ]
  %146 = phi ptr [ %143, %140 ], [ %147, %144 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !54
  %148 = icmp eq ptr %147, null
  %149 = add nuw nsw i32 %145, 1
  br i1 %148, label %150, label %144, !llvm.loop !245

150:                                              ; preds = %131, %144, %127
  %151 = phi i32 [ 0, %127 ], [ %145, %144 ], [ %137, %131 ]
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %153 = sext i32 %151 to i64
  %154 = shl nsw i64 %153, 3
  %155 = call ptr %152(i64 noundef %154, ptr noundef nonnull @.str.4) #14
  %156 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %157 = mul nsw i64 %153, 1424
  %158 = call ptr %156(i64 noundef %157, ptr noundef nonnull @.str.5) #14
  %159 = load i32, ptr %123, align 8, !tbaa !241
  %160 = and i32 %159, 64
  %161 = icmp ne i32 %160, 0
  %162 = icmp ne i32 %151, 0
  %163 = and i1 %162, %161
  %164 = icmp sgt i32 %151, 0
  br i1 %163, label %165, label %194

165:                                              ; preds = %150
  br i1 %164, label %166, label %213

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 123
  br label %173

168:                                              ; preds = %183
  %169 = trunc i64 %190 to i32
  br label %170

170:                                              ; preds = %168, %173
  %171 = phi i32 [ %175, %173 ], [ %169, %168 ]
  %172 = icmp slt i32 %171, %151
  br i1 %172, label %173, label %213, !llvm.loop !246

173:                                              ; preds = %166, %170
  %174 = phi ptr [ %176, %170 ], [ %167, %166 ]
  %175 = phi i32 [ %171, %170 ], [ 0, %166 ]
  %176 = load ptr, ptr %174, align 8, !tbaa !54
  %177 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %176, i64 0, i32 3
  %178 = load i16, ptr %177, align 8, !tbaa !242
  %179 = icmp sgt i16 %178, 0
  br i1 %179, label %180, label %170

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %176, i64 0, i32 2
  %182 = sext i32 %175 to i64
  br label %183

183:                                              ; preds = %180, %183
  %184 = phi i64 [ %182, %180 ], [ %190, %183 ]
  %185 = phi i32 [ 0, %180 ], [ %189, %183 ]
  %186 = load ptr, ptr %181, align 8, !tbaa !247
  %187 = getelementptr inbounds ptr, ptr %155, i64 %184
  store ptr %186, ptr %187, align 8, !tbaa !54
  %188 = getelementptr inbounds %struct.Object, ptr %158, i64 %184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %188, ptr noundef nonnull align 8 dereferenceable(1424) %186, i64 1424, i1 false), !tbaa.struct !89
  %189 = add nuw nsw i32 %185, 1
  %190 = add nsw i64 %184, 1
  %191 = load i16, ptr %177, align 8, !tbaa !242
  %192 = sext i16 %191 to i32
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %183, label %168, !llvm.loop !248

194:                                              ; preds = %150
  br i1 %164, label %195, label %213

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 122
  %197 = load ptr, ptr %196, align 8, !tbaa !233
  %198 = getelementptr inbounds %struct.Group, ptr %197, i64 0, i32 1
  %199 = zext nneg i32 %151 to i64
  br label %200

200:                                              ; preds = %195, %200
  %201 = phi i64 [ 0, %195 ], [ %208, %200 ]
  %202 = phi ptr [ %198, %195 ], [ %203, %200 ]
  %203 = load ptr, ptr %202, align 8, !tbaa !54
  %204 = getelementptr inbounds %struct.GroupObject, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !55
  %206 = getelementptr inbounds ptr, ptr %155, i64 %201
  store ptr %205, ptr %206, align 8, !tbaa !54
  %207 = getelementptr inbounds %struct.Object, ptr %158, i64 %201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %207, ptr noundef nonnull align 8 dereferenceable(1424) %205, i64 1424, i1 false), !tbaa.struct !89
  %208 = add nuw nsw i64 %201, 1
  %209 = icmp eq i64 %208, %199
  br i1 %209, label %213, label %200, !llvm.loop !249

210:                                              ; preds = %107
  %211 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 125
  %212 = load ptr, ptr %211, align 8, !tbaa !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %3, ptr noundef nonnull align 8 dereferenceable(1424) %212, i64 1424, i1 false), !tbaa.struct !89
  br label %213

213:                                              ; preds = %200, %170, %194, %165, %210
  %214 = phi ptr [ null, %210 ], [ %158, %165 ], [ %158, %194 ], [ %158, %170 ], [ %158, %200 ]
  %215 = phi ptr [ null, %210 ], [ %155, %165 ], [ %155, %194 ], [ %155, %170 ], [ %155, %200 ]
  %216 = phi ptr [ %212, %210 ], [ null, %165 ], [ null, %194 ], [ null, %170 ], [ null, %200 ]
  %217 = phi i32 [ 0, %210 ], [ %151, %165 ], [ %151, %194 ], [ %151, %170 ], [ %151, %200 ]
  %218 = icmp eq i32 %109, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 15
  %221 = load i32, ptr %220, align 8, !tbaa !241
  %222 = and i32 %221, 256
  %223 = icmp eq i32 %222, 0
  %224 = select i1 %223, i32 %108, i32 0
  br label %225

225:                                              ; preds = %219, %213
  %226 = phi i32 [ 0, %213 ], [ %224, %219 ]
  %227 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %228 = add nsw i32 %109, %108
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %428

230:                                              ; preds = %225
  %231 = load ptr, ptr %227, align 8, !tbaa !250
  %232 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 4
  %233 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 8
  %234 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 7
  %235 = icmp eq i32 %217, 0
  %236 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 15
  %237 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 4
  %238 = getelementptr inbounds %struct.ParticleKey, ptr %4, i64 0, i32 2
  %239 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %240 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 3
  %241 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 122
  %242 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %243 = add i32 %23, -1
  %244 = icmp ult i32 %243, 2
  %245 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %246 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %247 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %248 = sext i32 %226 to i64
  %249 = sext i32 %108 to i64
  br label %250

250:                                              ; preds = %230, %421
  %251 = phi i64 [ %248, %230 ], [ %424, %421 ]
  %252 = phi ptr [ %216, %230 ], [ %423, %421 ]
  %253 = phi ptr [ null, %230 ], [ %422, %421 ]
  %254 = phi ptr [ %231, %230 ], [ %425, %421 ]
  %255 = icmp slt i64 %251, %249
  br i1 %255, label %256, label %267

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.ParticleData, ptr %254, i64 0, i32 17
  %258 = load i16, ptr %257, align 4, !tbaa !251
  %259 = zext i16 %258 to i32
  %260 = and i32 %34, %259
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %421

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.ParticleData, ptr %254, i64 0, i32 6
  %264 = load float, ptr %263, align 4, !tbaa !254
  %265 = getelementptr inbounds %struct.ParticleData, ptr %254, i64 0, i32 13
  %266 = load float, ptr %265, align 4, !tbaa !255
  br i1 %86, label %278, label %292

267:                                              ; preds = %250
  %268 = load ptr, ptr %232, align 8, !tbaa !256
  %269 = sub nsw i64 %251, %249
  %270 = getelementptr inbounds %struct.ChildParticle, ptr %268, i64 %269
  %271 = load ptr, ptr %227, align 8, !tbaa !250
  %272 = getelementptr inbounds %struct.ChildParticle, ptr %268, i64 %269, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !257
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.ParticleData, ptr %271, i64 %274, i32 6
  %276 = load float, ptr %275, align 4, !tbaa !254
  %277 = call float @psys_get_child_size(ptr noundef %1, ptr noundef %270, float noundef %35, ptr noundef null) #14
  br i1 %86, label %285, label %292

278:                                              ; preds = %262
  %279 = load ptr, ptr %234, align 8, !tbaa !237
  %280 = getelementptr inbounds ptr, ptr %279, i64 %251
  %281 = load ptr, ptr %280, align 8, !tbaa !54
  %282 = getelementptr inbounds %struct.ParticleCacheKey, ptr %281, i64 0, i32 5
  %283 = load i32, ptr %282, align 4, !tbaa !259
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %421, label %292

285:                                              ; preds = %267
  %286 = load ptr, ptr %233, align 8, !tbaa !236
  %287 = getelementptr inbounds ptr, ptr %286, i64 %269
  %288 = load ptr, ptr %287, align 8, !tbaa !54
  %289 = getelementptr inbounds %struct.ParticleCacheKey, ptr %288, i64 0, i32 5
  %290 = load i32, ptr %289, align 4, !tbaa !259
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %421, label %292

292:                                              ; preds = %278, %267, %285, %262
  %293 = phi float [ %277, %267 ], [ %277, %285 ], [ %266, %262 ], [ %266, %278 ]
  %294 = phi float [ %276, %267 ], [ %276, %285 ], [ %264, %262 ], [ %264, %278 ]
  %295 = phi ptr [ %270, %267 ], [ %270, %285 ], [ %253, %262 ], [ %253, %278 ]
  %296 = load i16, ptr %51, align 8, !tbaa !226
  %297 = icmp eq i16 %296, 8
  br i1 %297, label %298, label %312

298:                                              ; preds = %292
  br i1 %235, label %421, label %299

299:                                              ; preds = %298
  %300 = load i32, ptr %236, align 8, !tbaa !241
  %301 = and i32 %300, 1024
  %302 = icmp eq i32 %301, 0
  %303 = trunc i64 %251 to i32
  br i1 %302, label %306, label %304

304:                                              ; preds = %299
  %305 = call i32 @BLI_rand() #14
  br label %306

306:                                              ; preds = %299, %304
  %307 = phi i32 [ %305, %304 ], [ %303, %299 ]
  %308 = srem i32 %307, %217
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %215, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !54
  br label %312

312:                                              ; preds = %292, %306
  %313 = phi ptr [ %311, %306 ], [ %252, %292 ]
  %314 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 47
  br i1 %86, label %315, label %327

315:                                              ; preds = %312
  br i1 %255, label %316, label %320

316:                                              ; preds = %315
  %317 = load ptr, ptr %234, align 8, !tbaa !237
  %318 = getelementptr inbounds ptr, ptr %317, i64 %251
  %319 = load ptr, ptr %318, align 8, !tbaa !54
  call void @psys_get_dupli_path_transform(ptr noundef nonnull %10, ptr noundef %254, ptr noundef null, ptr noundef %319, ptr noundef nonnull %8, ptr noundef nonnull %5) #14
  br label %325

320:                                              ; preds = %315
  %321 = load ptr, ptr %233, align 8, !tbaa !236
  %322 = sub nsw i64 %251, %249
  %323 = getelementptr inbounds ptr, ptr %321, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !54
  call void @psys_get_dupli_path_transform(ptr noundef nonnull %10, ptr noundef null, ptr noundef %295, ptr noundef %324, ptr noundef nonnull %8, ptr noundef nonnull %5) #14
  br label %325

325:                                              ; preds = %320, %316
  %326 = phi ptr [ %319, %316 ], [ %324, %320 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %239, ptr noundef %326) #15
  store float 1.000000e+00, ptr %240, align 4, !tbaa !93
  br label %333

327:                                              ; preds = %312
  store float %35, ptr %237, align 4, !tbaa !261
  %328 = trunc i64 %251 to i32
  %329 = call i32 @psys_get_particle_state(ptr noundef nonnull %10, i32 noundef %328, ptr noundef nonnull %4, i32 noundef 0) #14
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %421, label %331

331:                                              ; preds = %327
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  %332 = call float @normalize_qt_qt(ptr noundef nonnull %11, ptr noundef nonnull %238) #14
  call void @quat_to_mat4(ptr noundef nonnull %8, ptr noundef nonnull %11) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %239, ptr noundef nonnull %4) #15
  store float 1.000000e+00, ptr %240, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %333

333:                                              ; preds = %331, %325
  %334 = load i16, ptr %51, align 8, !tbaa !226
  %335 = icmp eq i16 %334, 8
  br i1 %335, label %336, label %377

336:                                              ; preds = %333
  %337 = load ptr, ptr %27, align 8, !tbaa !220
  %338 = getelementptr inbounds %struct.ParticleSettings, ptr %337, i64 0, i32 15
  %339 = load i32, ptr %338, align 8, !tbaa !241
  %340 = and i32 %339, 16384
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %377, label %342

342:                                              ; preds = %336
  %343 = load ptr, ptr %241, align 8, !tbaa !233
  %344 = getelementptr inbounds %struct.Group, ptr %343, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !54
  %346 = icmp eq ptr %345, null
  br i1 %346, label %421, label %347

347:                                              ; preds = %342
  %348 = trunc i64 %251 to i32
  br label %349

349:                                              ; preds = %347, %373
  %350 = phi i64 [ 0, %347 ], [ %374, %373 ]
  %351 = phi ptr [ %345, %347 ], [ %375, %373 ]
  %352 = getelementptr inbounds ptr, ptr %215, i64 %350
  %353 = load ptr, ptr %352, align 8, !tbaa !54
  %354 = getelementptr inbounds %struct.Object, ptr %353, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %354) #14
  %355 = load float, ptr %5, align 4, !tbaa !93
  %356 = fmul float %293, %355
  call void @mul_mat3_m4_fl(ptr noundef nonnull %6, float noundef %356) #14
  %357 = load float, ptr %5, align 4, !tbaa !93
  %358 = fmul float %293, %357
  call fastcc void @mul_v3_fl(ptr noundef nonnull %242, float noundef %358) #15
  %359 = load ptr, ptr %241, align 8, !tbaa !233
  %360 = getelementptr inbounds %struct.Group, ptr %359, i64 0, i32 3
  %361 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %360) #15, !range !87
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %349
  call fastcc void @sub_v3_v3(ptr noundef nonnull %242, ptr noundef nonnull %360) #15
  br label %364

364:                                              ; preds = %363, %349
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #14
  %365 = getelementptr inbounds %struct.GroupObject, ptr %351, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !55
  %367 = call fastcc ptr @make_dupli(ptr noundef nonnull %0, ptr noundef %366, ptr noundef nonnull %7, i32 noundef %348, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %368 = getelementptr inbounds %struct.DupliObject, ptr %367, i64 0, i32 10
  store ptr %1, ptr %368, align 8, !tbaa !262
  br i1 %244, label %369, label %373

369:                                              ; preds = %364
  %370 = load ptr, ptr %60, align 8, !tbaa !231
  %371 = getelementptr inbounds %struct.DupliObject, ptr %367, i64 0, i32 5
  %372 = getelementptr inbounds %struct.DupliObject, ptr %367, i64 0, i32 4
  call void @psys_get_dupli_texture(ptr noundef %1, ptr noundef nonnull %28, ptr noundef %370, ptr noundef %254, ptr noundef %295, ptr noundef nonnull %371, ptr noundef nonnull %372) #14
  br label %373

373:                                              ; preds = %364, %369
  %374 = add nuw i64 %350, 1
  %375 = load ptr, ptr %351, align 8, !tbaa !54
  %376 = icmp eq ptr %375, null
  br i1 %376, label %421, label %349, !llvm.loop !263

377:                                              ; preds = %336, %333
  %378 = fsub float %35, %294
  call void @BKE_object_where_is_calc_time(ptr noundef %19, ptr noundef %313, float noundef %378) #14
  %379 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %379) #15
  %380 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 47, i64 3, i64 2
  store float 0.000000e+00, ptr %380, align 4, !tbaa !93
  store <2 x float> zeroinitializer, ptr %379, align 4, !tbaa !93
  %381 = load i32, ptr %236, align 8, !tbaa !241
  %382 = and i32 %381, 128
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  call void @mat4_to_size(ptr noundef nonnull %15, ptr noundef nonnull %314) #14
  call void @size_to_mat4(ptr noundef nonnull %14, ptr noundef nonnull %15) #14
  store float 0.000000e+00, ptr %245, align 8, !tbaa !93
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %12, align 8, !tbaa !93
  %385 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 57
  %386 = load i16, ptr %385, align 4, !tbaa !196
  %387 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 58
  %388 = load i16, ptr %387, align 2, !tbaa !197
  call void @vec_to_quat(ptr noundef nonnull %13, ptr noundef nonnull %12, i16 noundef signext %386, i16 noundef signext %388) #14
  call void @quat_to_mat4(ptr noundef nonnull %314, ptr noundef nonnull %13) #14
  %389 = getelementptr inbounds %struct.Object, ptr %313, i64 0, i32 47, i64 3, i64 3
  store float 1.000000e+00, ptr %389, align 4, !tbaa !93
  %390 = load i32, ptr %236, align 8, !tbaa !241
  %391 = and i32 %390, 65536
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %384
  call void @mul_m4_m4m4(ptr noundef nonnull %314, ptr noundef nonnull %314, ptr noundef nonnull %14) #14
  br label %394

394:                                              ; preds = %393, %384
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  br label %400

395:                                              ; preds = %377
  %396 = and i32 %381, 65536
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %395
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  call void @mat4_to_size(ptr noundef nonnull %17, ptr noundef nonnull %314) #14
  call void @size_to_mat4(ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  %399 = call zeroext i8 @invert_m4(ptr noundef nonnull %16) #14
  call void @mul_m4_m4m4(ptr noundef nonnull %314, ptr noundef nonnull %314, ptr noundef nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #13
  br label %400

400:                                              ; preds = %395, %398, %394
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %314) #14
  %401 = load float, ptr %5, align 4, !tbaa !93
  %402 = fmul float %293, %401
  call void @mul_mat3_m4_fl(ptr noundef nonnull %6, float noundef %402) #14
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  %403 = load i32, ptr %236, align 8, !tbaa !241
  %404 = and i32 %403, 2
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %400
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %246, ptr noundef nonnull %246, ptr noundef nonnull %9) #15
  br label %407

407:                                              ; preds = %406, %400
  %408 = trunc i64 %251 to i32
  %409 = call fastcc ptr @make_dupli(ptr noundef nonnull %0, ptr noundef nonnull %313, ptr noundef nonnull %7, i32 noundef %408, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %410 = getelementptr inbounds %struct.DupliObject, ptr %409, i64 0, i32 10
  store ptr %1, ptr %410, align 8, !tbaa !262
  br i1 %244, label %411, label %415

411:                                              ; preds = %407
  %412 = load ptr, ptr %60, align 8, !tbaa !231
  %413 = getelementptr inbounds %struct.DupliObject, ptr %409, i64 0, i32 5
  %414 = getelementptr inbounds %struct.DupliObject, ptr %409, i64 0, i32 4
  call void @psys_get_dupli_texture(ptr noundef %1, ptr noundef nonnull %28, ptr noundef %412, ptr noundef %254, ptr noundef %295, ptr noundef nonnull %413, ptr noundef nonnull %414) #14
  br label %415

415:                                              ; preds = %407, %411
  br i1 %26, label %416, label %421

416:                                              ; preds = %415
  %417 = load ptr, ptr %247, align 8, !tbaa !86
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.DupliObject, ptr %409, i64 0, i32 6
  store i16 256, ptr %420, align 4, !tbaa !165
  br label %421

421:                                              ; preds = %373, %342, %419, %416, %415, %327, %298, %278, %285, %256
  %422 = phi ptr [ %253, %256 ], [ %253, %278 ], [ %270, %285 ], [ %295, %298 ], [ %295, %419 ], [ %295, %416 ], [ %295, %415 ], [ %295, %327 ], [ %295, %342 ], [ %295, %373 ]
  %423 = phi ptr [ %252, %256 ], [ %252, %278 ], [ %252, %285 ], [ %252, %298 ], [ %313, %419 ], [ %313, %416 ], [ %313, %415 ], [ %313, %327 ], [ %313, %342 ], [ %313, %373 ]
  %424 = add nsw i64 %251, 1
  %425 = getelementptr inbounds %struct.ParticleData, ptr %254, i64 1
  %426 = trunc i64 %424 to i32
  %427 = icmp eq i32 %228, %426
  br i1 %427, label %428, label %250, !llvm.loop !264

428:                                              ; preds = %421, %225
  %429 = phi ptr [ %216, %225 ], [ %423, %421 ]
  %430 = load i16, ptr %51, align 8, !tbaa !226
  %431 = icmp eq i16 %430, 8
  br i1 %431, label %432, label %444

432:                                              ; preds = %428
  %433 = icmp sgt i32 %217, 0
  br i1 %433, label %434, label %446

434:                                              ; preds = %432
  %435 = zext nneg i32 %217 to i64
  br label %436

436:                                              ; preds = %434, %436
  %437 = phi i64 [ 0, %434 ], [ %441, %436 ]
  %438 = getelementptr inbounds ptr, ptr %215, i64 %437
  %439 = load ptr, ptr %438, align 8, !tbaa !54
  %440 = getelementptr inbounds %struct.Object, ptr %214, i64 %437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %439, ptr noundef nonnull align 8 dereferenceable(1424) %440, i64 1424, i1 false), !tbaa.struct !89
  %441 = add nuw nsw i64 %437, 1
  %442 = icmp eq i64 %441, %435
  br i1 %442, label %443, label %436, !llvm.loop !265

443:                                              ; preds = %436
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #13
  br label %448

444:                                              ; preds = %428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %429, ptr noundef nonnull align 8 dereferenceable(1424) %3, i64 1424, i1 false), !tbaa.struct !89
  br label %446

445:                                              ; preds = %66, %76, %72, %80, %98, %87, %94
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #13
  br label %459

446:                                              ; preds = %432, %444
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #13
  %447 = icmp eq ptr %215, null
  br i1 %447, label %450, label %448

448:                                              ; preds = %443, %446
  %449 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %449(ptr noundef nonnull %215) #14
  br label %450

450:                                              ; preds = %448, %446
  %451 = icmp eq ptr %214, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %450
  %453 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %453(ptr noundef nonnull %214) #14
  br label %454

454:                                              ; preds = %46, %50, %452, %450
  %455 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 15
  %456 = load ptr, ptr %455, align 8, !tbaa !240
  %457 = icmp eq ptr %456, null
  br i1 %457, label %459, label %458

458:                                              ; preds = %454
  call void @end_latt_deform(ptr noundef nonnull %456) #14
  store ptr null, ptr %455, align 8, !tbaa !240
  br label %459

459:                                              ; preds = %445, %454, %458, %30, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %3)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_check_group_weights(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_rand() local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_get_dupli_path_transform(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !266 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !93
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !93
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !93
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !267 {
  %2 = load float, ptr %0, align 4, !tbaa !93
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !93
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !93
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @psys_get_dupli_texture(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !268 {
  %4 = load float, ptr %1, align 4, !tbaa !93
  %5 = load float, ptr %2, align 4, !tbaa !93
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !93
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !93
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !93
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !93
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !93
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !93
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!"object_dupli.c:make_duplis_group"}
!35 = !{!36, !37, i64 0}
!36 = !{!"DupliContext", !37, i64 0, !38, i64 8, !38, i64 9, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !38, i64 108, !40, i64 140, !40, i64 144, !37, i64 152, !37, i64 160}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !40, i64 0}
!42 = !{!"EvaluationContext", !40, i64 0}
!43 = !{!36, !37, i64 32}
!44 = !{!45, !37, i64 1256}
!45 = !{!"Object", !46, i64 0, !37, i64 120, !37, i64 128, !47, i64 136, !47, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !48, i64 312, !37, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !50, i64 616, !50, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !38, i64 1042, !38, i64 1043, !47, i64 1044, !38, i64 1046, !38, i64 1047, !50, i64 1048, !50, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !50, i64 1120, !47, i64 1124, !47, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !47, i64 1162, !38, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !47, i64 1266, !50, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !51, i64 1304, !51, i64 1312, !40, i64 1320, !40, i64 1324, !49, i64 1328, !49, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !49, i64 1400, !37, i64 1416}
!46 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !47, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!47 = !{!"short", !38, i64 0}
!48 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!49 = !{!"ListBase", !37, i64 0, !37, i64 8}
!50 = !{!"float", !38, i64 0}
!51 = !{!"long", !38, i64 0}
!52 = !{!36, !38, i64 8}
!53 = !{!36, !37, i64 24}
!54 = !{!37, !37, i64 0}
!55 = !{!56, !37, i64 16}
!56 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !47, i64 32, !38, i64 34}
!57 = !{!45, !37, i64 216}
!58 = !{!45, !47, i64 952}
!59 = !{!45, !40, i64 944}
!60 = !{!61, !40, i64 136}
!61 = !{!"Group", !46, i64 0, !49, i64 120, !40, i64 136, !38, i64 140}
!62 = !{!45, !38, i64 1160}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"object_dupli.c:make_duplis_frames"}
!66 = !{!67, !40, i64 680}
!67 = !{!"Scene", !46, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !49, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !47, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !68, i64 280, !77, i64 4264, !49, i64 4296, !49, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !47, i64 4376, !47, i64 4378, !40, i64 4380, !49, i64 4384, !78, i64 4400, !79, i64 4416, !82, i64 4600, !37, i64 4608, !83, i64 4616, !37, i64 4640, !51, i64 4648, !51, i64 4656, !70, i64 4664, !71, i64 4824, !84, i64 4888, !37, i64 4952}
!68 = !{!"RenderData", !69, i64 0, !37, i64 248, !37, i64 256, !72, i64 264, !73, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !50, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !47, i64 432, !47, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !40, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !40, i64 484, !40, i64 488, !47, i64 492, !47, i64 494, !40, i64 496, !40, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !74, i64 544, !74, i64 560, !75, i64 576, !49, i64 592, !47, i64 608, !47, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !40, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !50, i64 660, !50, i64 664, !47, i64 668, !47, i64 670, !50, i64 672, !50, i64 676, !38, i64 680, !40, i64 1704, !47, i64 1708, !47, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !47, i64 2524, !47, i64 2526, !50, i64 2528, !50, i64 2532, !47, i64 2536, !47, i64 2538, !50, i64 2540, !47, i64 2544, !47, i64 2546, !40, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !50, i64 2560, !50, i64 2564, !37, i64 2568, !40, i64 2576, !50, i64 2580, !38, i64 2584, !76, i64 2616, !40, i64 3976, !40, i64 3980}
!69 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !47, i64 8, !47, i64 10, !50, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !70, i64 24, !71, i64 184}
!70 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !50, i64 136, !50, i64 140, !37, i64 144, !37, i64 152}
!71 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!72 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !47, i64 48, !47, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!73 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !50, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!74 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!75 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!76 = !{!"BakeData", !69, i64 0, !38, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !50, i64 1280, !50, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!77 = !{!"AudioData", !40, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !40, i64 16, !47, i64 20, !47, i64 22, !50, i64 24, !50, i64 28}
!78 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!79 = !{!"GameData", !78, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !38, i64 34, !80, i64 40, !47, i64 64, !47, i64 66, !50, i64 68, !81, i64 72, !50, i64 128, !50, i64 132, !40, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!80 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !50, i64 8, !50, i64 12, !37, i64 16}
!81 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !40, i64 40, !50, i64 44, !50, i64 48, !47, i64 52, !47, i64 54}
!82 = !{!"UnitSettings", !50, i64 0, !38, i64 4, !38, i64 5, !47, i64 6}
!83 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!84 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!85 = !{!45, !40, i64 980}
!86 = !{!36, !37, i64 16}
!87 = !{i8 0, i8 2}
!88 = !{!45, !37, i64 120}
!89 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 66, !90, i64 98, i64 2, !91, i64 100, i64 4, !92, i64 104, i64 4, !92, i64 108, i64 4, !92, i64 112, i64 8, !54, i64 120, i64 8, !54, i64 128, i64 8, !54, i64 136, i64 2, !91, i64 138, i64 2, !91, i64 140, i64 4, !92, i64 144, i64 4, !92, i64 148, i64 4, !92, i64 152, i64 64, !90, i64 216, i64 8, !54, i64 224, i64 8, !54, i64 232, i64 8, !54, i64 240, i64 8, !54, i64 248, i64 8, !54, i64 256, i64 8, !54, i64 264, i64 8, !54, i64 272, i64 8, !54, i64 280, i64 8, !54, i64 288, i64 8, !54, i64 296, i64 8, !54, i64 304, i64 8, !54, i64 312, i64 4, !92, i64 316, i64 4, !92, i64 320, i64 4, !92, i64 324, i64 4, !92, i64 328, i64 2, !91, i64 330, i64 2, !91, i64 332, i64 2, !91, i64 334, i64 2, !91, i64 336, i64 2, !91, i64 338, i64 2, !91, i64 340, i64 2, !91, i64 342, i64 2, !91, i64 344, i64 4, !92, i64 348, i64 4, !92, i64 352, i64 4, !92, i64 356, i64 4, !92, i64 360, i64 8, !54, i64 368, i64 8, !54, i64 376, i64 8, !54, i64 384, i64 8, !54, i64 392, i64 8, !54, i64 400, i64 8, !54, i64 408, i64 8, !54, i64 416, i64 8, !54, i64 424, i64 8, !54, i64 432, i64 4, !92, i64 436, i64 4, !92, i64 440, i64 8, !54, i64 448, i64 8, !54, i64 456, i64 4, !92, i64 460, i64 4, !92, i64 464, i64 12, !90, i64 476, i64 12, !90, i64 488, i64 12, !90, i64 500, i64 12, !90, i64 512, i64 12, !90, i64 524, i64 12, !90, i64 536, i64 12, !90, i64 548, i64 12, !90, i64 560, i64 16, !90, i64 576, i64 16, !90, i64 592, i64 12, !90, i64 604, i64 12, !90, i64 616, i64 4, !93, i64 620, i64 4, !93, i64 624, i64 64, !90, i64 688, i64 64, !90, i64 752, i64 64, !90, i64 816, i64 64, !90, i64 880, i64 64, !90, i64 944, i64 4, !92, i64 948, i64 2, !91, i64 950, i64 2, !91, i64 952, i64 2, !91, i64 954, i64 2, !91, i64 956, i64 2, !91, i64 958, i64 2, !91, i64 960, i64 2, !91, i64 962, i64 2, !91, i64 964, i64 2, !91, i64 966, i64 1, !90, i64 967, i64 1, !90, i64 968, i64 4, !92, i64 972, i64 4, !92, i64 976, i64 4, !92, i64 980, i64 4, !92, i64 984, i64 4, !92, i64 988, i64 4, !93, i64 992, i64 4, !93, i64 996, i64 4, !93, i64 1000, i64 4, !93, i64 1004, i64 4, !93, i64 1008, i64 4, !93, i64 1012, i64 4, !93, i64 1016, i64 4, !93, i64 1020, i64 4, !93, i64 1024, i64 4, !93, i64 1028, i64 4, !93, i64 1032, i64 4, !93, i64 1036, i64 2, !91, i64 1038, i64 2, !91, i64 1040, i64 2, !91, i64 1042, i64 1, !90, i64 1043, i64 1, !90, i64 1044, i64 2, !91, i64 1046, i64 1, !90, i64 1047, i64 1, !90, i64 1048, i64 4, !93, i64 1052, i64 4, !93, i64 1056, i64 8, !54, i64 1064, i64 8, !54, i64 1072, i64 8, !54, i64 1080, i64 8, !54, i64 1088, i64 8, !54, i64 1096, i64 8, !54, i64 1104, i64 8, !54, i64 1112, i64 8, !54, i64 1120, i64 4, !93, i64 1124, i64 2, !91, i64 1126, i64 2, !91, i64 1128, i64 16, !90, i64 1144, i64 4, !92, i64 1148, i64 4, !92, i64 1152, i64 8, !54, i64 1160, i64 1, !90, i64 1161, i64 1, !90, i64 1162, i64 2, !91, i64 1164, i64 12, !90, i64 1176, i64 8, !54, i64 1184, i64 8, !54, i64 1192, i64 8, !54, i64 1200, i64 8, !54, i64 1208, i64 8, !54, i64 1216, i64 8, !54, i64 1224, i64 8, !54, i64 1232, i64 8, !54, i64 1240, i64 8, !54, i64 1248, i64 8, !54, i64 1256, i64 8, !54, i64 1264, i64 1, !90, i64 1265, i64 1, !90, i64 1266, i64 2, !91, i64 1268, i64 4, !93, i64 1272, i64 8, !54, i64 1280, i64 8, !54, i64 1288, i64 8, !54, i64 1296, i64 8, !54, i64 1304, i64 8, !94, i64 1312, i64 8, !94, i64 1320, i64 4, !92, i64 1324, i64 4, !92, i64 1328, i64 8, !54, i64 1336, i64 8, !54, i64 1344, i64 8, !54, i64 1352, i64 8, !54, i64 1360, i64 8, !54, i64 1368, i64 8, !54, i64 1376, i64 8, !54, i64 1384, i64 8, !90, i64 1392, i64 8, !54, i64 1400, i64 8, !54, i64 1408, i64 8, !54, i64 1416, i64 8, !54}
!90 = !{!38, !38, i64 0}
!91 = !{!47, !47, i64 0}
!92 = !{!40, !40, i64 0}
!93 = !{!50, !50, i64 0}
!94 = !{!51, !51, i64 0}
!95 = !{!45, !47, i64 98}
!96 = !{!45, !40, i64 976}
!97 = !{!45, !40, i64 972}
!98 = !{!45, !40, i64 968}
!99 = distinct !{!99, !64}
!100 = !{!"object_dupli.c:make_duplis_verts"}
!101 = !{!102, !37, i64 40}
!102 = !{!"VertexDupliData", !37, i64 0, !37, i64 8, !40, i64 16, !37, i64 24, !38, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!103 = !{!102, !38, i64 32}
!104 = !{!45, !37, i64 296}
!105 = !{!102, !37, i64 0}
!106 = !{!107, !37, i64 272}
!107 = !{!"Mesh", !46, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !108, i64 280, !108, i64 480, !108, i64 680, !108, i64 880, !108, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !40, i64 1344, !47, i64 1348, !47, i64 1350, !50, i64 1352, !40, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !47, i64 1366, !37, i64 1368}
!108 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!109 = !{!102, !37, i64 8}
!110 = !{!111, !37, i64 1320}
!111 = !{!"DerivedMesh", !108, i64 0, !108, i64 200, !108, i64 400, !108, i64 600, !108, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !50, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!112 = !{!111, !37, i64 1104}
!113 = !{!102, !40, i64 16}
!114 = !{!111, !37, i64 1680}
!115 = !{!"object_dupli.c:make_duplis_font"}
!116 = !{!117, !37, i64 0}
!117 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !49, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !47, i64 2084, !47, i64 2086, !47, i64 2088, !38, i64 2090, !47, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!118 = !{!119, !50, i64 320}
!119 = !{!"Curve", !46, i64 0, !37, i64 120, !37, i64 128, !49, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !47, i64 244, !47, i64 246, !47, i64 248, !47, i64 250, !50, i64 252, !50, i64 256, !40, i64 260, !47, i64 264, !47, i64 266, !40, i64 268, !50, i64 272, !50, i64 276, !50, i64 280, !47, i64 284, !47, i64 286, !47, i64 288, !47, i64 290, !40, i64 292, !40, i64 296, !38, i64 300, !47, i64 304, !38, i64 306, !38, i64 307, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !50, i64 340, !50, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !40, i64 488, !40, i64 492, !37, i64 496, !120, i64 504, !50, i64 512, !50, i64 516, !50, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!120 = !{!"CharInfo", !47, i64 0, !47, i64 2, !38, i64 4, !38, i64 5, !47, i64 6}
!121 = !{!122, !50, i64 8}
!122 = !{!"CharTrans", !50, i64 0, !50, i64 4, !50, i64 8, !47, i64 12, !47, i64 14, !38, i64 16}
!123 = distinct !{!123, !64}
!124 = !{!"object_dupli.c:make_duplis_faces"}
!125 = !{!126, !38, i64 56}
!126 = !{!"FaceDupliData", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!127 = !{!126, !37, i64 0}
!128 = !{!111, !37, i64 1344}
!129 = !{!111, !37, i64 1136}
!130 = !{!126, !40, i64 8}
!131 = !{!111, !37, i64 1200}
!132 = !{!126, !37, i64 16}
!133 = !{!111, !37, i64 1192}
!134 = !{!126, !37, i64 24}
!135 = !{!111, !37, i64 1168}
!136 = !{!126, !37, i64 32}
!137 = !{!"object_dupli.c:make_duplis_particles"}
!138 = distinct !{!138, !64}
!139 = !{!36, !37, i64 152}
!140 = !{!36, !37, i64 160}
!141 = !{!142, !37, i64 8}
!142 = !{!"DupliGenerator", !47, i64 0, !37, i64 8}
!143 = !{!"object_dupli.c:init_context"}
!144 = !{!117, !38, i64 2090}
!145 = !{!36, !38, i64 9}
!146 = !{!36, !40, i64 104}
!147 = !{!36, !40, i64 140}
!148 = !{!45, !47, i64 136}
!149 = !{!150, !40, i64 320}
!150 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !49, i64 72, !49, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !49, i64 152, !38, i64 168, !38, i64 232, !50, i64 296, !50, i64 300, !50, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !47, i64 340, !47, i64 342, !47, i64 344, !47, i64 346, !38, i64 348, !38, i64 540, !47, i64 564, !47, i64 566, !37, i64 568, !37, i64 576, !49, i64 584, !37, i64 600, !37, i64 608, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !50, i64 648, !50, i64 652}
!151 = distinct !{!151, !64}
!152 = !{!107, !40, i64 1280}
!153 = !{!154, !40, i64 0}
!154 = !{!"DupliApplyData", !40, i64 0, !37, i64 8}
!155 = !{!154, !37, i64 8}
!156 = !{!157, !37, i64 16}
!157 = !{!"DupliObject", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 100, !47, i64 108, !38, i64 110, !38, i64 111, !38, i64 112, !37, i64 144}
!158 = !{!159, !40, i64 64}
!159 = !{!"DupliExtraData", !38, i64 0, !40, i64 64}
!160 = distinct !{!160, !64}
!161 = distinct !{!161, !64}
!162 = !{!"object_dupli.c:sub_v3_v3"}
!163 = !{!"object_dupli.c:make_dupli"}
!164 = !{!142, !47, i64 0}
!165 = !{!157, !47, i64 108}
!166 = !{!157, !38, i64 111}
!167 = distinct !{!167, !64}
!168 = distinct !{!168, !64}
!169 = !{!157, !38, i64 110}
!170 = !{!"object_dupli.c:make_recursive_duplis"}
!171 = !{!"object_dupli.c:copy_dupli_context"}
!172 = !{i64 0, i64 8, !54, i64 8, i64 1, !90, i64 9, i64 1, !90, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 64, !90, i64 104, i64 4, !92, i64 108, i64 32, !90, i64 140, i64 4, !92, i64 144, i64 4, !92, i64 152, i64 8, !54, i64 160, i64 8, !54}
!173 = !{!"object_dupli.c:get_dupli_generator"}
!174 = !{!"object_dupli.c:BLI_listbase_is_empty"}
!175 = !{!49, !37, i64 0}
!176 = !{!"object_dupli.c:make_child_duplis"}
!177 = !{!67, !37, i64 176}
!178 = !{!45, !47, i64 948}
!179 = !{ptr @make_child_duplis_faces, ptr @make_child_duplis_verts}
!180 = distinct !{!180, !64}
!181 = !{!67, !40, i64 232}
!182 = !{!183, !37, i64 32}
!183 = !{!"Base", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !47, i64 28, !47, i64 30, !37, i64 32}
!184 = !{!183, !40, i64 16}
!185 = distinct !{!185, !64}
!186 = !{!"object_dupli.c:make_child_duplis_verts"}
!187 = !{!102, !37, i64 48}
!188 = !{!111, !37, i64 1488}
!189 = !{!111, !37, i64 1528}
!190 = !{!111, !37, i64 1544}
!191 = distinct !{!191, !64}
!192 = distinct !{!192, !64}
!193 = !{!"object_dupli.c:is_child"}
!194 = distinct !{!194, !64}
!195 = !{!"object_dupli.c:vertex_dupli__mapFunc"}
!196 = !{!45, !47, i64 956}
!197 = !{!45, !47, i64 958}
!198 = !{!102, !37, i64 24}
!199 = !{!"object_dupli.c:get_duplivert_transform"}
!200 = !{!"object_dupli.c:copy_v3_v3"}
!201 = !{!"object_dupli.c:find_family_object"}
!202 = distinct !{!202, !64}
!203 = !{!"object_dupli.c:zero_v3"}
!204 = !{!"object_dupli.c:make_child_duplis_faces"}
!205 = !{!126, !37, i64 40}
!206 = !{!126, !37, i64 48}
!207 = !{!208, !40, i64 0}
!208 = !{!"MPoly", !40, i64 0, !40, i64 4, !47, i64 8, !38, i64 10, !38, i64 11}
!209 = !{!208, !40, i64 4}
!210 = !{!45, !50, i64 1052}
!211 = !{!212, !40, i64 0}
!212 = !{!"MLoop", !40, i64 0, !40, i64 4}
!213 = distinct !{!213, !64}
!214 = distinct !{!214, !64}
!215 = distinct !{!215, !64}
!216 = !{!"object_dupli.c:get_dupliface_transform"}
!217 = !{!"object_dupli.c:madd_v3_v3fl"}
!218 = !{!"object_dupli.c:madd_v2_v2fl"}
!219 = !{!"object_dupli.c:make_duplis_particle_system"}
!220 = !{!150, !37, i64 16}
!221 = !{!150, !40, i64 328}
!222 = !{!150, !40, i64 308}
!223 = !{!150, !37, i64 568}
!224 = !{!225, !47, i64 184}
!225 = !{!"ParticleSettings", !46, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !40, i64 152, !40, i64 156, !47, i64 160, !47, i64 162, !47, i64 164, !47, i64 166, !47, i64 168, !47, i64 170, !47, i64 172, !47, i64 174, !40, i64 176, !40, i64 180, !47, i64 184, !47, i64 186, !47, i64 188, !47, i64 190, !47, i64 192, !47, i64 194, !47, i64 196, !47, i64 198, !47, i64 200, !47, i64 202, !47, i64 204, !47, i64 206, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !50, i64 232, !50, i64 236, !38, i64 240, !38, i64 248, !50, i64 256, !50, i64 260, !50, i64 264, !47, i64 268, !47, i64 270, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !38, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !47, i64 340, !38, i64 342, !50, i64 348, !50, i64 352, !50, i64 356, !50, i64 360, !50, i64 364, !50, i64 368, !50, i64 372, !38, i64 376, !50, i64 388, !50, i64 392, !50, i64 396, !50, i64 400, !50, i64 404, !50, i64 408, !50, i64 412, !38, i64 416, !50, i64 428, !50, i64 432, !50, i64 436, !50, i64 440, !40, i64 444, !40, i64 448, !50, i64 452, !50, i64 456, !50, i64 460, !50, i64 464, !50, i64 468, !50, i64 472, !50, i64 476, !50, i64 480, !50, i64 484, !50, i64 488, !50, i64 492, !50, i64 496, !50, i64 500, !50, i64 504, !50, i64 508, !50, i64 512, !50, i64 516, !50, i64 520, !50, i64 524, !50, i64 528, !50, i64 532, !50, i64 536, !50, i64 540, !50, i64 544, !50, i64 548, !38, i64 552, !50, i64 560, !50, i64 564, !40, i64 568, !40, i64 572, !38, i64 576, !37, i64 720, !49, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !47, i64 792, !38, i64 794}
!226 = !{!225, !47, i64 192}
!227 = !{!228, !37, i64 0}
!228 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !50, i64 40}
!229 = !{!228, !37, i64 8}
!230 = !{!228, !37, i64 16}
!231 = !{!228, !37, i64 24}
!232 = !{!225, !37, i64 752}
!233 = !{!225, !37, i64 720}
!234 = !{!225, !47, i64 160}
!235 = !{!150, !40, i64 316}
!236 = !{!150, !37, i64 64}
!237 = !{!150, !37, i64 56}
!238 = !{!150, !40, i64 336}
!239 = !{!150, !40, i64 332}
!240 = !{!150, !37, i64 136}
!241 = !{!225, !40, i64 176}
!242 = !{!243, !47, i64 24}
!243 = !{!"ParticleDupliWeight", !37, i64 0, !37, i64 8, !37, i64 16, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30}
!244 = distinct !{!244, !64}
!245 = distinct !{!245, !64}
!246 = distinct !{!246, !64}
!247 = !{!243, !37, i64 16}
!248 = distinct !{!248, !64}
!249 = distinct !{!249, !64}
!250 = !{!150, !37, i64 24}
!251 = !{!252, !47, i64 196}
!252 = !{!"ParticleData", !253, i64 0, !253, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !40, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !40, i64 152, !40, i64 156, !38, i64 160, !50, i64 176, !50, i64 180, !50, i64 184, !40, i64 188, !40, i64 192, !47, i64 196, !47, i64 198}
!253 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !50, i64 52}
!254 = !{!252, !50, i64 140}
!255 = !{!252, !50, i64 180}
!256 = !{!150, !37, i64 32}
!257 = !{!258, !40, i64 4}
!258 = !{!"ChildParticle", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 24, !38, i64 40, !50, i64 56, !50, i64 60}
!259 = !{!260, !40, i64 56}
!260 = !{!"ParticleCacheKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !50, i64 52, !40, i64 56}
!261 = !{!253, !50, i64 52}
!262 = !{!157, !37, i64 144}
!263 = distinct !{!263, !64}
!264 = distinct !{!264, !64}
!265 = distinct !{!265, !64}
!266 = !{!"object_dupli.c:mul_v3_fl"}
!267 = !{!"object_dupli.c:is_zero_v3"}
!268 = !{!"object_dupli.c:add_v3_v3v3"}
