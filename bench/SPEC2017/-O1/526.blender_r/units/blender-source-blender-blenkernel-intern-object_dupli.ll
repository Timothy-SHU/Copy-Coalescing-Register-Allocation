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
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.CharTrans = type { float, float, float, i16, i16, i8 }
%struct.FaceDupliData = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleDupliWeight = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.DupliApplyData = type { i32, ptr }
%struct.DupliExtraData = type { [4 x [4 x float]], i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MLoopUV = type { [2 x float], i32 }

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

; Function Attrs: nounwind uwtable
define internal void @make_duplis_group(ptr noundef %0) #0 {
  %2 = alloca %struct.DupliContext, align 8
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 112
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %226, label %13

13:                                               ; preds = %1
  call void @unit_m4(ptr noundef nonnull %3) #10
  %14 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3
  %15 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = load float, ptr %14, align 16, !tbaa !51
  %18 = fsub float %17, %16
  store float %18, ptr %14, align 16, !tbaa !51
  %19 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = fsub float %22, %20
  store float %23, ptr %21, align 4, !tbaa !51
  %24 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 2
  %27 = load float, ptr %26, align 8, !tbaa !51
  %28 = fsub float %27, %25
  store float %28, ptr %26, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %29, ptr noundef nonnull %3) #10
  %30 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !52
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %13
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  call void @BKE_group_handle_recalc_and_update(ptr noundef %34, ptr noundef %36, ptr noundef %9, ptr noundef nonnull %11) #10
  br label %37

37:                                               ; preds = %33, %13
  %38 = call zeroext i8 @BKE_group_is_animated(ptr noundef nonnull %11, ptr noundef %9) #10
  %39 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %226, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 2
  %44 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 12
  %45 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %47 = icmp eq i8 %38, 0
  %48 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %50 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %51 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 2
  %52 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %53 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 3
  %54 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 5
  %55 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 6
  %56 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %57 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 9
  %58 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 11
  %59 = select i1 %7, i8 4, i8 1
  br label %60

60:                                               ; preds = %42, %222
  %61 = phi ptr [ %40, %42 ], [ %224, %222 ]
  %62 = phi i32 [ 0, %42 ], [ %223, %222 ]
  %63 = getelementptr inbounds %struct.GroupObject, ptr %61, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = icmp eq ptr %64, %9
  br i1 %65, label %222, label %66

66:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  br i1 %7, label %67, label %77

67:                                               ; preds = %66
  %68 = load ptr, ptr %63, align 8, !tbaa !55
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 55
  %74 = load i16, ptr %73, align 8, !tbaa !58
  %75 = and i16 %74, 528
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %221

77:                                               ; preds = %72, %67, %66
  %78 = load ptr, ptr %63, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %79) #10
  %80 = load ptr, ptr %63, align 8, !tbaa !55
  %81 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 52
  %82 = load i32, ptr %81, align 8, !tbaa !59
  %83 = load i32, ptr %43, align 8, !tbaa !60
  %84 = and i32 %83, %82
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 102
  %88 = load i8, ptr %87, align 8, !tbaa !62
  %89 = and i8 %88, %59
  %90 = icmp ne i8 %89, 0
  br label %91

91:                                               ; preds = %86, %77
  %92 = phi i1 [ true, %77 ], [ %90, %86 ]
  %93 = load ptr, ptr %44, align 8, !tbaa !63
  %94 = icmp eq ptr %93, null
  br i1 %94, label %148, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %97 = call ptr %96(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %98 = load ptr, ptr %44, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef %98, ptr noundef %97) #10
  %99 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 2
  store ptr %80, ptr %99, align 8, !tbaa !64
  %100 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %100, ptr noundef nonnull %45, ptr noundef nonnull %4) #10
  %101 = load ptr, ptr %46, align 8, !tbaa !66
  %102 = load i16, ptr %101, align 8, !tbaa !67
  %103 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 6
  store i16 %102, ptr %103, align 4, !tbaa !69
  br i1 %47, label %104, label %108

104:                                              ; preds = %95
  %105 = load i8, ptr %48, align 1, !tbaa !70
  %106 = icmp ne i8 %105, 0
  %107 = zext i1 %106 to i8
  br label %108

108:                                              ; preds = %104, %95
  %109 = phi i8 [ 1, %95 ], [ %107, %104 ]
  %110 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 8
  store i8 %109, ptr %110, align 1, !tbaa !71
  %111 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 9
  store i32 %62, ptr %111, align 8, !tbaa !72
  %112 = load i32, ptr %49, align 4, !tbaa !73
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %116, label %121

114:                                              ; preds = %121
  %115 = trunc i64 %130 to i32
  br label %116

116:                                              ; preds = %114, %108
  %117 = phi i32 [ 1, %108 ], [ %115, %114 ]
  %118 = icmp ult i32 %117, 8
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = zext nneg i32 %117 to i64
  br label %134

121:                                              ; preds = %108, %121
  %122 = phi i64 [ %130, %121 ], [ 1, %108 ]
  %123 = phi i32 [ %131, %121 ], [ %112, %108 ]
  %124 = trunc i64 %122 to i32
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 8, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !72
  %129 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 9, i64 %122
  store i32 %128, ptr %129, align 4, !tbaa !72
  %130 = add nuw nsw i64 %122, 1
  %131 = load i32, ptr %49, align 4, !tbaa !73
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %122, %132
  br i1 %133, label %121, label %114, !llvm.loop !74

134:                                              ; preds = %134, %119
  %135 = phi i64 [ %120, %119 ], [ %137, %134 ]
  %136 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 9, i64 %135
  store i32 2147483647, ptr %136, align 4, !tbaa !72
  %137 = add nuw nsw i64 %135, 1
  %138 = icmp eq i64 %137, 8
  br i1 %138, label %139, label %134, !llvm.loop !77

139:                                              ; preds = %134, %116
  br i1 %92, label %140, label %142

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 7
  store i8 1, ptr %141, align 2, !tbaa !78
  br label %142

142:                                              ; preds = %140, %139
  %143 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 3
  %144 = load i16, ptr %143, align 8, !tbaa !79
  %145 = icmp eq i16 %144, 5
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 7
  store i8 1, ptr %147, align 2, !tbaa !78
  br label %148

148:                                              ; preds = %91, %142, %146
  %149 = load i32, ptr %50, align 4, !tbaa !73
  %150 = icmp slt i32 %149, 8
  br i1 %150, label %151, label %221

151:                                              ; preds = %148
  %152 = load ptr, ptr %63, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false), !tbaa.struct !80
  %153 = load i8, ptr %51, align 1, !tbaa !70
  %154 = or i8 %153, %38
  store i8 %154, ptr %51, align 1, !tbaa !70
  %155 = load ptr, ptr %52, align 8, !tbaa !66
  %156 = load i16, ptr %155, align 8, !tbaa !67
  %157 = icmp eq i16 %156, 256
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load ptr, ptr %8, align 8, !tbaa !42
  %160 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 112
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  store ptr %161, ptr %53, align 8, !tbaa !82
  br label %162

162:                                              ; preds = %151, %158
  store ptr %152, ptr %54, align 8, !tbaa !42
  call void @mul_m4_m4m4(ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %3) #10
  %163 = load i32, ptr %57, align 4, !tbaa !73
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.DupliContext, ptr %2, i64 0, i32 8, i64 %164
  store i32 %62, ptr %165, align 4, !tbaa !72
  %166 = load i32, ptr %57, align 4, !tbaa !73
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %57, align 4, !tbaa !73
  %168 = load ptr, ptr %54, align 8, !tbaa !42
  %169 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 55
  %170 = load i16, ptr %169, align 8, !tbaa !58
  %171 = zext i16 %170 to i32
  %172 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 102
  %173 = load i8, ptr %172, align 8, !tbaa !62
  %174 = zext i8 %173 to i32
  %175 = and i32 %171, 2840
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %162
  %178 = load ptr, ptr %2, align 8, !tbaa !34
  %179 = load i32, ptr %178, align 4, !tbaa !40
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = and i32 %174, 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %214

184:                                              ; preds = %177
  %185 = and i32 %174, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %214

187:                                              ; preds = %184, %181
  %188 = and i32 %171, 2048
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %214

190:                                              ; preds = %187
  %191 = and i32 %171, 16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 3
  %195 = load i16, ptr %194, align 8, !tbaa !79
  %196 = icmp eq i16 %195, 4
  %197 = select i1 %196, ptr @gen_dupli_verts_font, ptr null
  %198 = icmp eq i16 %195, 1
  %199 = select i1 %198, ptr @gen_dupli_verts, ptr %197
  br label %214

200:                                              ; preds = %190
  %201 = and i32 %171, 512
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 3
  %205 = load i16, ptr %204, align 8, !tbaa !79
  %206 = icmp eq i16 %205, 1
  br i1 %206, label %214, label %213

207:                                              ; preds = %200
  %208 = and i32 %171, 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = and i32 %171, 256
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210, %203
  br label %214

214:                                              ; preds = %162, %181, %184, %187, %193, %203, %207, %210, %213
  %215 = phi ptr [ null, %213 ], [ null, %162 ], [ null, %184 ], [ null, %181 ], [ @gen_dupli_particles, %187 ], [ @gen_dupli_faces, %203 ], [ @gen_dupli_frames, %207 ], [ @gen_dupli_group, %210 ], [ %199, %193 ]
  store ptr %215, ptr %58, align 8, !tbaa !66
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.DupliGenerator, ptr %215, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !83
  call void %219(ptr noundef nonnull %2) #10
  br label %220

220:                                              ; preds = %217, %214
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #10
  br label %221

221:                                              ; preds = %220, %148, %72
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %222

222:                                              ; preds = %221, %60
  %223 = add nuw nsw i32 %62, 1
  %224 = load ptr, ptr %61, align 8, !tbaa !54
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %60, !llvm.loop !84

226:                                              ; preds = %222, %37, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_duplis_frames(ptr noundef %0) #0 {
  %2 = alloca %struct.Object, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %2)
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 67
  %10 = load i32, ptr %9, align 4, !tbaa !104
  %11 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %129

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 106
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = icmp eq ptr %24, null
  br i1 %25, label %129, label %26

26:                                               ; preds = %22, %18, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %2, ptr noundef nonnull align 8 dereferenceable(1424) %6, i64 1424, i1 false), !tbaa.struct !107
  %27 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 55
  %28 = load i16, ptr %27, align 8, !tbaa !58
  %29 = and i16 %28, 64
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, ptr @enable_cu_speed, align 4, !tbaa !72
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %34 = load i16, ptr %33, align 2, !tbaa !110
  %35 = or i16 %34, 16384
  store i16 %35, ptr %33, align 2, !tbaa !110
  %36 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 66
  %37 = load i32, ptr %36, align 8, !tbaa !111
  store i32 %37, ptr %7, align 8, !tbaa !85
  %38 = icmp sgt i32 %37, %10
  br i1 %38, label %123, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 65
  %41 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 64
  %42 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %43 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 12
  %44 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %45 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %47 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  %48 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %49 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  br label %50

50:                                               ; preds = %39, %119
  %51 = phi i32 [ %37, %39 ], [ %121, %119 ]
  %52 = load i32, ptr %40, align 4, !tbaa !112
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %36, align 8, !tbaa !111
  %56 = sub nsw i32 %51, %55
  %57 = load i32, ptr %41, align 8, !tbaa !113
  %58 = add nsw i32 %57, %52
  %59 = srem i32 %56, %58
  %60 = icmp slt i32 %59, %57
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %54, %50
  %63 = phi i32 [ %61, %54 ], [ 1, %50 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %119, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %42, align 8, !tbaa !106
  %67 = sitofp i32 %51 to float
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %4, ptr noundef %6, ptr noundef %66, float noundef %67, i16 noundef signext 2) #10
  %68 = load i32, ptr %7, align 8, !tbaa !85
  %69 = sitofp i32 %68 to float
  tail call void @BKE_object_where_is_calc_time(ptr noundef %4, ptr noundef %6, float noundef %69) #10
  %70 = load ptr, ptr %43, align 8, !tbaa !63
  %71 = icmp eq ptr %70, null
  br i1 %71, label %119, label %72

72:                                               ; preds = %65
  %73 = load i32, ptr %7, align 8, !tbaa !85
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %75 = tail call ptr %74(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %76 = load ptr, ptr %43, align 8, !tbaa !63
  tail call void @BLI_addtail(ptr noundef %76, ptr noundef %75) #10
  %77 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 2
  store ptr %6, ptr %77, align 8, !tbaa !64
  %78 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 3
  tail call void @mul_m4_m4m4(ptr noundef nonnull %78, ptr noundef nonnull %45, ptr noundef nonnull %44) #10
  %79 = load ptr, ptr %46, align 8, !tbaa !66
  %80 = load i16, ptr %79, align 8, !tbaa !67
  %81 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 6
  store i16 %80, ptr %81, align 4, !tbaa !69
  %82 = load i8, ptr %47, align 1, !tbaa !70
  %83 = icmp ne i8 %82, 0
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 8
  store i8 %84, ptr %85, align 1, !tbaa !71
  %86 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 9
  store i32 %73, ptr %86, align 8, !tbaa !72
  %87 = load i32, ptr %48, align 4, !tbaa !73
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %91, label %96

89:                                               ; preds = %96
  %90 = trunc i64 %105 to i32
  br label %91

91:                                               ; preds = %89, %72
  %92 = phi i32 [ 1, %72 ], [ %90, %89 ]
  %93 = icmp ult i32 %92, 8
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = zext nneg i32 %92 to i64
  br label %109

96:                                               ; preds = %72, %96
  %97 = phi i64 [ %105, %96 ], [ 1, %72 ]
  %98 = phi i32 [ %106, %96 ], [ %87, %72 ]
  %99 = trunc i64 %97 to i32
  %100 = sub nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 8, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !72
  %104 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 9, i64 %97
  store i32 %103, ptr %104, align 4, !tbaa !72
  %105 = add nuw nsw i64 %97, 1
  %106 = load i32, ptr %48, align 4, !tbaa !73
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %97, %107
  br i1 %108, label %96, label %89, !llvm.loop !74

109:                                              ; preds = %109, %94
  %110 = phi i64 [ %95, %94 ], [ %112, %109 ]
  %111 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 9, i64 %110
  store i32 2147483647, ptr %111, align 4, !tbaa !72
  %112 = add nuw nsw i64 %110, 1
  %113 = icmp eq i64 %112, 8
  br i1 %113, label %114, label %109, !llvm.loop !77

114:                                              ; preds = %109, %91
  %115 = load i16, ptr %49, align 8, !tbaa !79
  %116 = icmp eq i16 %115, 5
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.DupliObject, ptr %75, i64 0, i32 7
  store i8 1, ptr %118, align 2, !tbaa !78
  br label %119

119:                                              ; preds = %117, %114, %65, %62
  %120 = load i32, ptr %7, align 8, !tbaa !85
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %7, align 8, !tbaa !85
  %122 = icmp slt i32 %120, %10
  br i1 %122, label %50, label %123, !llvm.loop !114

123:                                              ; preds = %119, %32
  store i32 1, ptr @enable_cu_speed, align 4, !tbaa !72
  store i32 %8, ptr %7, align 8, !tbaa !85
  %124 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !106
  %126 = sitofp i32 %8 to float
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %4, ptr noundef %6, ptr noundef %125, float noundef %126, i16 noundef signext 2) #10
  %127 = load i32, ptr %7, align 8, !tbaa !85
  %128 = sitofp i32 %127 to float
  tail call void @BKE_object_where_is_calc_time(ptr noundef %4, ptr noundef %6, float noundef %128) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %6, ptr noundef nonnull align 8 dereferenceable(1424) %2, i64 1424, i1 false), !tbaa.struct !107
  br label %129

129:                                              ; preds = %22, %1, %123
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_duplis_verts(ptr noundef %0) #0 {
  %2 = alloca %struct.VertexDupliData, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, -2
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #10
  %11 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 5
  store ptr %0, ptr %11, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 55
  %13 = load i16, ptr %12, align 8, !tbaa !58
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 32
  %16 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 4
  store i8 %15, ptr %16, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #10
  %20 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %21 = or i64 %20, 16384
  %22 = select i1 %10, i64 %20, i64 %21
  %23 = icmp eq ptr %19, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %19, i64 noundef %22) #10
  br label %28

26:                                               ; preds = %1
  %27 = tail call ptr @mesh_get_derived_final(ptr noundef %4, ptr noundef %6, i64 noundef %22) #10
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %27, %26 ], [ %25, %24 ]
  store ptr %29, ptr %2, align 8, !tbaa !119
  %30 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !120
  %32 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !123
  br i1 %10, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 50
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  %36 = tail call ptr %35(ptr noundef %29, i32 noundef 14) #10
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi ptr [ %36, %33 ], [ null, %28 ]
  %39 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !126
  %40 = load ptr, ptr %2, align 8, !tbaa !119
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 23
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = tail call i32 %42(ptr noundef %40) #10
  %44 = getelementptr inbounds %struct.VertexDupliData, ptr %2, i64 0, i32 2
  store i32 %43, ptr %44, align 8, !tbaa !128
  call fastcc void @make_child_duplis(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @make_child_duplis_verts)
  %45 = load ptr, ptr %2, align 8, !tbaa !119
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %45, i64 0, i32 95
  %47 = load ptr, ptr %46, align 8, !tbaa !129
  call void %47(ptr noundef %45) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_duplis_font(ptr noundef %0) #0 {
  %2 = alloca [7 x i8], align 1
  %3 = alloca ptr, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca [4 x [4 x float]], align 16
  %11 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store ptr null, ptr %8, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !tbaa !81
  %13 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %173

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %17) #10
  %18 = load ptr, ptr @G, align 8, !tbaa !130
  %19 = call zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef %18, ptr noundef %12, i32 noundef 4, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %3) #10
  %20 = load ptr, ptr %8, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %3, align 8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %173, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  %28 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 40
  %29 = load float, ptr %28, align 8, !tbaa !132
  %30 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 44
  %31 = load float, ptr %30, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 45
  %33 = load float, ptr %32, align 4, !tbaa !136
  %34 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 54
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #11
  %36 = call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.make_duplis_font, i32 noundef 256) #10
  %37 = load i32, ptr %7, align 4, !tbaa !72
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %164

39:                                               ; preds = %25
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %44 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %46 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %48 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 12
  %49 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %50 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  %52 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  br label %53

53:                                               ; preds = %39, %158
  %54 = phi i64 [ 0, %39 ], [ %159, %158 ]
  %55 = phi ptr [ %22, %39 ], [ %160, %158 ]
  %56 = load ptr, ptr %8, align 8, !tbaa !54
  %57 = getelementptr inbounds i32, ptr %56, i64 %54
  %58 = load i32, ptr %57, align 4, !tbaa !72
  %59 = zext i32 %58 to i64
  %60 = inttoptr i64 %59 to ptr
  %61 = call ptr @BLI_ghash_lookup_p(ptr noundef %36, ptr noundef %60) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %53
  %64 = load ptr, ptr %61, align 8, !tbaa !54
  br label %87

65:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #10
  %66 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %58, ptr noundef nonnull %2) #10
  %67 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 %66
  store i8 0, ptr %67, align 1, !tbaa !81
  %68 = add i64 %66, 1
  %69 = load ptr, ptr @G, align 8, !tbaa !130
  %70 = getelementptr inbounds %struct.Main, ptr %69, i64 0, i32 13
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %65, %82
  %74 = phi ptr [ %83, %82 ], [ %71, %65 ]
  %75 = getelementptr inbounds %struct.ID, ptr %74, i64 0, i32 4, i64 2
  %76 = getelementptr inbounds i8, ptr %75, i64 %35
  %77 = call i32 @strncmp(ptr noundef nonnull %76, ptr noundef nonnull %2, i64 noundef %68) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = call i32 @strncmp(ptr noundef nonnull %75, ptr noundef nonnull %34, i64 noundef %35) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %73
  %83 = load ptr, ptr %74, align 8, !tbaa !54
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %73, !llvm.loop !137

85:                                               ; preds = %82, %79, %65
  %86 = phi ptr [ %71, %65 ], [ %83, %82 ], [ %74, %79 ]
  call void @BLI_ghash_insert(ptr noundef %36, ptr noundef %60, ptr noundef %86) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #10
  br label %87

87:                                               ; preds = %63, %85
  %88 = phi ptr [ %64, %63 ], [ %86, %85 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %158, label %90

90:                                               ; preds = %87
  %91 = load float, ptr %55, align 4, !tbaa !138
  %92 = fsub float %91, %31
  %93 = fmul float %29, %92
  store float %93, ptr %4, align 4, !tbaa !51
  %94 = getelementptr inbounds %struct.CharTrans, ptr %55, i64 0, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !140
  %96 = fsub float %95, %33
  %97 = fmul float %29, %96
  store float %97, ptr %40, align 4, !tbaa !51
  store float 0.000000e+00, ptr %41, align 4, !tbaa !51
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #10
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %17) #10
  %98 = getelementptr inbounds %struct.CharTrans, ptr %55, i64 0, i32 2
  %99 = load float, ptr %98, align 4, !tbaa !141
  %100 = fcmp une float %99, 0.000000e+00
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  store float 0.000000e+00, ptr %42, align 16, !tbaa !51
  store float 0.000000e+00, ptr %43, align 4, !tbaa !51
  store float 0.000000e+00, ptr %44, align 8, !tbaa !51
  call void @unit_m4(ptr noundef nonnull %10) #10
  %102 = load float, ptr %98, align 4, !tbaa !141
  %103 = fneg float %102
  call void @rotate_m4(ptr noundef nonnull %10, i8 noundef zeroext 90, float noundef %103) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  br label %104

104:                                              ; preds = %101, %90
  %105 = load float, ptr %4, align 4, !tbaa !51
  store float %105, ptr %45, align 16, !tbaa !51
  %106 = load float, ptr %40, align 4, !tbaa !51
  store float %106, ptr %46, align 4, !tbaa !51
  %107 = load float, ptr %41, align 4, !tbaa !51
  store float %107, ptr %47, align 8, !tbaa !51
  %108 = load ptr, ptr %48, align 8, !tbaa !63
  %109 = icmp eq ptr %108, null
  br i1 %109, label %158, label %110

110:                                              ; preds = %104
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %112 = call ptr %111(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %113 = load ptr, ptr %48, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef %113, ptr noundef %112) #10
  %114 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 2
  store ptr %88, ptr %114, align 8, !tbaa !64
  %115 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %115, ptr noundef nonnull %49, ptr noundef nonnull %5) #10
  %116 = load ptr, ptr %50, align 8, !tbaa !66
  %117 = load i16, ptr %116, align 8, !tbaa !67
  %118 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 6
  store i16 %117, ptr %118, align 4, !tbaa !69
  %119 = load i8, ptr %51, align 1, !tbaa !70
  %120 = icmp ne i8 %119, 0
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 8
  store i8 %121, ptr %122, align 1, !tbaa !71
  %123 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 9
  %124 = trunc i64 %54 to i32
  store i32 %124, ptr %123, align 8, !tbaa !72
  %125 = load i32, ptr %52, align 4, !tbaa !73
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %129, label %134

127:                                              ; preds = %134
  %128 = trunc i64 %143 to i32
  br label %129

129:                                              ; preds = %127, %110
  %130 = phi i32 [ 1, %110 ], [ %128, %127 ]
  %131 = icmp ult i32 %130, 8
  br i1 %131, label %132, label %152

132:                                              ; preds = %129
  %133 = zext nneg i32 %130 to i64
  br label %147

134:                                              ; preds = %110, %134
  %135 = phi i64 [ %143, %134 ], [ 1, %110 ]
  %136 = phi i32 [ %144, %134 ], [ %125, %110 ]
  %137 = trunc i64 %135 to i32
  %138 = sub nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 8, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !72
  %142 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 9, i64 %135
  store i32 %141, ptr %142, align 4, !tbaa !72
  %143 = add nuw nsw i64 %135, 1
  %144 = load i32, ptr %52, align 4, !tbaa !73
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %135, %145
  br i1 %146, label %134, label %127, !llvm.loop !74

147:                                              ; preds = %147, %132
  %148 = phi i64 [ %133, %132 ], [ %150, %147 ]
  %149 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 9, i64 %148
  store i32 2147483647, ptr %149, align 4, !tbaa !72
  %150 = add nuw nsw i64 %148, 1
  %151 = icmp eq i64 %150, 8
  br i1 %151, label %152, label %147, !llvm.loop !77

152:                                              ; preds = %147, %129
  %153 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 3
  %154 = load i16, ptr %153, align 8, !tbaa !79
  %155 = icmp eq i16 %154, 5
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.DupliObject, ptr %112, i64 0, i32 7
  store i8 1, ptr %157, align 2, !tbaa !78
  br label %158

158:                                              ; preds = %156, %152, %104, %87
  %159 = add nuw nsw i64 %54, 1
  %160 = getelementptr inbounds %struct.CharTrans, ptr %55, i64 1
  %161 = load i32, ptr %7, align 4, !tbaa !72
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %53, label %164, !llvm.loop !142

164:                                              ; preds = %158, %25
  %165 = load i8, ptr %9, align 1, !tbaa !81
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %169 = load ptr, ptr %8, align 8, !tbaa !54
  call void %168(ptr noundef %169) #10
  br label %170

170:                                              ; preds = %167, %164
  call void @BLI_ghash_free(ptr noundef %36, ptr noundef null, ptr noundef null) #10
  %171 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %172 = load ptr, ptr %3, align 8, !tbaa !54
  call void %171(ptr noundef %172) #10
  br label %173

173:                                              ; preds = %16, %1, %170
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_duplis_faces(ptr noundef %0) #0 {
  %2 = alloca %struct.FaceDupliData, align 8
  %3 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, -2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  %11 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 55
  %12 = load i16, ptr %11, align 8, !tbaa !58
  %13 = lshr i16 %12, 10
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 1
  %16 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 7
  store i8 %15, ptr %16, align 8, !tbaa !143
  %17 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #10
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %19 = or i64 %18, 81920
  %20 = select i1 %10, i64 %18, i64 %19
  %21 = icmp eq ptr %17, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = tail call ptr @editbmesh_get_derived_cage(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %17, i64 noundef %20) #10
  br label %26

24:                                               ; preds = %1
  %25 = tail call ptr @mesh_get_derived_final(ptr noundef %4, ptr noundef %6, i64 noundef %20) #10
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  store ptr %27, ptr %2, align 8, !tbaa !145
  br i1 %10, label %38, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = tail call ptr %30(ptr noundef %27, i32 noundef 14) #10
  %32 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 5
  store ptr %31, ptr %32, align 8, !tbaa !146
  %33 = load ptr, ptr %2, align 8, !tbaa !145
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 53
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = tail call ptr %35(ptr noundef %33, i32 noundef 16) #10
  %37 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !148
  br label %40

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  br label %40

40:                                               ; preds = %38, %28
  %41 = load ptr, ptr %2, align 8, !tbaa !145
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 27
  %43 = load ptr, ptr %42, align 8, !tbaa !149
  %44 = tail call i32 %43(ptr noundef %41) #10
  %45 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !150
  %46 = load ptr, ptr %2, align 8, !tbaa !145
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %46, i64 0, i32 35
  %48 = load ptr, ptr %47, align 8, !tbaa !151
  %49 = tail call ptr %48(ptr noundef %46) #10
  %50 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !152
  %51 = load ptr, ptr %2, align 8, !tbaa !145
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 34
  %53 = load ptr, ptr %52, align 8, !tbaa !153
  %54 = tail call ptr %53(ptr noundef %51) #10
  %55 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !154
  %56 = load ptr, ptr %2, align 8, !tbaa !145
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %56, i64 0, i32 31
  %58 = load ptr, ptr %57, align 8, !tbaa !155
  %59 = tail call ptr %58(ptr noundef %56) #10
  %60 = getelementptr inbounds %struct.FaceDupliData, ptr %2, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !156
  call fastcc void @make_child_duplis(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @make_child_duplis_faces)
  %61 = load ptr, ptr %2, align 8, !tbaa !145
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 95
  %63 = load ptr, ptr %62, align 8, !tbaa !129
  call void %63(ptr noundef %61) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_duplis_particles(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.Object, align 8
  %3 = alloca %struct.ParticleKey, align 4
  %4 = alloca float, align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.ParticleSimulationData, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca %struct.DupliContext, align 8
  %17 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 109
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %714, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %24 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 3
  %25 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 5
  %26 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 9
  %27 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 11
  %28 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 4
  %29 = getelementptr inbounds %struct.ParticleSimulationData, ptr %8, i64 0, i32 1
  %30 = getelementptr inbounds %struct.ParticleSimulationData, ptr %8, i64 0, i32 2
  %31 = getelementptr inbounds %struct.ParticleSimulationData, ptr %8, i64 0, i32 3
  %32 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 1
  %33 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 4
  %34 = getelementptr inbounds %struct.ParticleKey, ptr %3, i64 0, i32 2
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %36 = getelementptr inbounds float, ptr %3, i64 1
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 1
  %38 = getelementptr inbounds float, ptr %3, i64 2
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 2
  %40 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 3
  %41 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 1
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 2
  %44 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 3
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %46 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %48 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 12
  %49 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 6
  %50 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 2
  %51 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %52 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %54 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %56 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 12
  %57 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 6
  %58 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 2
  %59 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 3
  br label %60

60:                                               ; preds = %22, %710
  %61 = phi ptr [ %20, %22 ], [ %712, %710 ]
  %62 = phi i32 [ 0, %22 ], [ %711, %710 ]
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %16) #10
  %63 = load ptr, ptr %17, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %16, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false), !tbaa.struct !80
  %64 = load ptr, ptr %23, align 8, !tbaa !66
  %65 = load i16, ptr %64, align 8, !tbaa !67
  %66 = icmp eq i16 %65, 256
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 112
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  store ptr %69, ptr %24, align 8, !tbaa !82
  br label %70

70:                                               ; preds = %60, %67
  store ptr %63, ptr %25, align 8, !tbaa !42
  %71 = load i32, ptr %26, align 4, !tbaa !73
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 8, i64 %72
  store i32 %62, ptr %73, align 4, !tbaa !72
  %74 = load i32, ptr %26, align 4, !tbaa !73
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %26, align 4, !tbaa !73
  %76 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 55
  %77 = load i16, ptr %76, align 8, !tbaa !58
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 102
  %80 = load i8, ptr %79, align 8, !tbaa !62
  %81 = zext i8 %80 to i32
  %82 = and i32 %78, 2840
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %121, label %84

84:                                               ; preds = %70
  %85 = load ptr, ptr %16, align 8, !tbaa !34
  %86 = load i32, ptr %85, align 4, !tbaa !40
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = and i32 %81, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %121

91:                                               ; preds = %84
  %92 = and i32 %81, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %91, %88
  %95 = and i32 %78, 2048
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  %98 = and i32 %78, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 3
  %102 = load i16, ptr %101, align 8, !tbaa !79
  %103 = icmp eq i16 %102, 4
  %104 = select i1 %103, ptr @gen_dupli_verts_font, ptr null
  %105 = icmp eq i16 %102, 1
  %106 = select i1 %105, ptr @gen_dupli_verts, ptr %104
  br label %121

107:                                              ; preds = %97
  %108 = and i32 %78, 512
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 3
  %112 = load i16, ptr %111, align 8, !tbaa !79
  %113 = icmp eq i16 %112, 1
  br i1 %113, label %121, label %120

114:                                              ; preds = %107
  %115 = and i32 %78, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = and i32 %78, 256
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %110
  br label %121

121:                                              ; preds = %70, %88, %91, %94, %100, %110, %114, %117, %120
  %122 = phi ptr [ null, %120 ], [ null, %70 ], [ null, %91 ], [ null, %88 ], [ @gen_dupli_particles, %94 ], [ @gen_dupli_faces, %110 ], [ @gen_dupli_frames, %114 ], [ @gen_dupli_group, %117 ], [ %106, %100 ]
  store ptr %122, ptr %27, align 8, !tbaa !66
  %123 = load ptr, ptr %28, align 8, !tbaa !53
  %124 = load ptr, ptr %16, align 8, !tbaa !34
  %125 = load i32, ptr %124, align 4, !tbaa !40
  %126 = icmp eq i32 %125, 2
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store float 1.000000e+00, ptr %4, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  %127 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %123) #10
  %128 = icmp ne i8 %127, 0
  %129 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !157
  %131 = icmp eq ptr %130, null
  br i1 %131, label %710, label %132

132:                                              ; preds = %121
  %133 = call i32 @psys_check_enabled(ptr noundef %63, ptr noundef nonnull %61) #10
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %710, label %135

135:                                              ; preds = %132
  %136 = select i1 %126, i32 1, i32 3
  %137 = call float @BKE_scene_frame_get(ptr noundef %123) #10
  %138 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 26
  %139 = load i32, ptr %138, align 8, !tbaa !159
  %140 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 28
  %141 = load i32, ptr %140, align 8, !tbaa !160
  %142 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 23
  %143 = load i32, ptr %142, align 4, !tbaa !161
  %144 = add nsw i32 %143, 31415926
  call void @BLI_srandom(i32 noundef %144) #10
  %145 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 39
  %146 = load ptr, ptr %145, align 8, !tbaa !162
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 17
  %150 = load i16, ptr %149, align 8, !tbaa !163
  %151 = icmp eq i16 %150, 10
  br i1 %151, label %152, label %695

152:                                              ; preds = %148, %135
  %153 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 21
  %154 = load i16, ptr %153, align 8, !tbaa !165
  %155 = add i16 %154, -7
  %156 = icmp ult i16 %155, 2
  br i1 %156, label %157, label %695

157:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  store ptr %123, ptr %8, align 8, !tbaa !166
  store ptr %63, ptr %29, align 8, !tbaa !168
  store ptr %61, ptr %30, align 8, !tbaa !169
  %158 = call ptr @psys_get_modifier(ptr noundef %63, ptr noundef nonnull %61) #10
  store ptr %158, ptr %31, align 8, !tbaa !170
  %159 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 50
  %160 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 47
  %161 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %159, ptr noundef nonnull %160) #10
  %162 = load i16, ptr %153, align 8, !tbaa !165
  %163 = icmp eq i16 %162, 7
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 125
  %166 = load ptr, ptr %165, align 8, !tbaa !171
  %167 = icmp eq ptr %166, null
  %168 = icmp eq ptr %166, %63
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %691, label %181

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 122
  %172 = load ptr, ptr %171, align 8, !tbaa !172
  %173 = icmp eq ptr %172, null
  br i1 %173, label %691, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.Group, ptr %172, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !105
  %177 = icmp eq ptr %176, null
  br i1 %177, label %691, label %178

178:                                              ; preds = %174
  %179 = call ptr @BLI_findptr(ptr noundef nonnull %175, ptr noundef %63, i32 noundef 16) #10
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %691

181:                                              ; preds = %178, %164
  %182 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 7
  %183 = load i16, ptr %182, align 8, !tbaa !173
  %184 = icmp eq i16 %183, 2
  br i1 %184, label %185, label %211

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 25
  %187 = load i32, ptr %186, align 4, !tbaa !174
  %188 = and i32 %187, 512
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %185
  %191 = icmp eq i32 %141, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 8
  %194 = load ptr, ptr %193, align 8, !tbaa !175
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %192, %190
  %197 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 7
  %198 = load ptr, ptr %197, align 8, !tbaa !176
  %199 = icmp ne ptr %198, null
  br label %200

200:                                              ; preds = %196, %192
  %201 = phi i1 [ false, %192 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  br label %203

203:                                              ; preds = %200, %185
  %204 = phi i32 [ %202, %200 ], [ 0, %185 ]
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %691, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 30
  %208 = load i32, ptr %207, align 8, !tbaa !177
  %209 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 29
  %210 = load i32, ptr %209, align 4, !tbaa !178
  br label %211

211:                                              ; preds = %206, %181
  %212 = phi i32 [ %210, %206 ], [ %139, %181 ]
  %213 = phi i32 [ %208, %206 ], [ %141, %181 ]
  call void @psys_check_group_weights(ptr noundef nonnull %130) #10
  %214 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %8) #10
  %215 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 15
  store ptr %214, ptr %215, align 8, !tbaa !179
  %216 = load i16, ptr %153, align 8, !tbaa !165
  %217 = icmp eq i16 %216, 8
  br i1 %217, label %218, label %315

218:                                              ; preds = %211
  %219 = load i8, ptr %32, align 8, !tbaa !52
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr %16, align 8, !tbaa !34
  %223 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 122
  %224 = load ptr, ptr %223, align 8, !tbaa !172
  call void @BKE_group_handle_recalc_and_update(ptr noundef %222, ptr noundef %123, ptr noundef %63, ptr noundef %224) #10
  br label %225

225:                                              ; preds = %221, %218
  %226 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 15
  %227 = load i32, ptr %226, align 8, !tbaa !180
  %228 = and i32 %227, 64
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 123
  %232 = load ptr, ptr %231, align 8, !tbaa !54
  %233 = icmp eq ptr %232, null
  br i1 %233, label %253, label %234

234:                                              ; preds = %230, %234
  %235 = phi ptr [ %241, %234 ], [ %232, %230 ]
  %236 = phi i32 [ %240, %234 ], [ 0, %230 ]
  %237 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %235, i64 0, i32 3
  %238 = load i16, ptr %237, align 8, !tbaa !181
  %239 = sext i16 %238 to i32
  %240 = add nsw i32 %236, %239
  %241 = load ptr, ptr %235, align 8, !tbaa !54
  %242 = icmp eq ptr %241, null
  br i1 %242, label %253, label %234, !llvm.loop !183

243:                                              ; preds = %225
  %244 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 122
  %245 = load ptr, ptr %244, align 8, !tbaa !172
  %246 = getelementptr inbounds %struct.Group, ptr %245, i64 0, i32 1
  br label %247

247:                                              ; preds = %247, %243
  %248 = phi i32 [ 0, %243 ], [ %252, %247 ]
  %249 = phi ptr [ %246, %243 ], [ %250, %247 ]
  %250 = load ptr, ptr %249, align 8, !tbaa !54
  %251 = icmp eq ptr %250, null
  %252 = add nuw nsw i32 %248, 1
  br i1 %251, label %253, label %247, !llvm.loop !184

253:                                              ; preds = %234, %247, %230
  %254 = phi i32 [ 0, %230 ], [ %248, %247 ], [ %240, %234 ]
  %255 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %256 = sext i32 %254 to i64
  %257 = shl nsw i64 %256, 3
  %258 = call ptr %255(i64 noundef %257, ptr noundef nonnull @.str.4) #10
  %259 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %260 = mul nsw i64 %256, 1424
  %261 = call ptr %259(i64 noundef %260, ptr noundef nonnull @.str.5) #10
  %262 = load i32, ptr %226, align 8, !tbaa !180
  %263 = and i32 %262, 64
  %264 = icmp ne i32 %263, 0
  %265 = icmp ne i32 %254, 0
  %266 = and i1 %265, %264
  %267 = icmp sgt i32 %254, 0
  br i1 %266, label %268, label %298

268:                                              ; preds = %253
  br i1 %267, label %269, label %318

269:                                              ; preds = %268
  %270 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 123
  br label %276

271:                                              ; preds = %286
  %272 = trunc i64 %294 to i32
  br label %273

273:                                              ; preds = %271, %276
  %274 = phi i32 [ %278, %276 ], [ %272, %271 ]
  %275 = icmp slt i32 %274, %254
  br i1 %275, label %276, label %318, !llvm.loop !185

276:                                              ; preds = %269, %273
  %277 = phi ptr [ %279, %273 ], [ %270, %269 ]
  %278 = phi i32 [ %274, %273 ], [ 0, %269 ]
  %279 = load ptr, ptr %277, align 8, !tbaa !54
  %280 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %279, i64 0, i32 3
  %281 = load i16, ptr %280, align 8, !tbaa !181
  %282 = icmp sgt i16 %281, 0
  br i1 %282, label %283, label %273

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %279, i64 0, i32 2
  %285 = sext i32 %278 to i64
  br label %286

286:                                              ; preds = %283, %286
  %287 = phi i64 [ %285, %283 ], [ %294, %286 ]
  %288 = phi i32 [ 0, %283 ], [ %293, %286 ]
  %289 = load ptr, ptr %284, align 8, !tbaa !186
  %290 = getelementptr inbounds ptr, ptr %258, i64 %287
  store ptr %289, ptr %290, align 8, !tbaa !54
  %291 = getelementptr inbounds %struct.Object, ptr %261, i64 %287
  %292 = load ptr, ptr %284, align 8, !tbaa !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %291, ptr noundef nonnull align 8 dereferenceable(1424) %292, i64 1424, i1 false), !tbaa.struct !107
  %293 = add nuw nsw i32 %288, 1
  %294 = add nsw i64 %287, 1
  %295 = load i16, ptr %280, align 8, !tbaa !181
  %296 = sext i16 %295 to i32
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %286, label %271, !llvm.loop !187

298:                                              ; preds = %253
  br i1 %267, label %299, label %318

299:                                              ; preds = %298
  %300 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 122
  %301 = load ptr, ptr %300, align 8, !tbaa !172
  %302 = getelementptr inbounds %struct.Group, ptr %301, i64 0, i32 1
  %303 = zext nneg i32 %254 to i64
  br label %304

304:                                              ; preds = %299, %304
  %305 = phi i64 [ 0, %299 ], [ %313, %304 ]
  %306 = phi ptr [ %302, %299 ], [ %307, %304 ]
  %307 = load ptr, ptr %306, align 8, !tbaa !54
  %308 = getelementptr inbounds %struct.GroupObject, ptr %307, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !55
  %310 = getelementptr inbounds ptr, ptr %258, i64 %305
  store ptr %309, ptr %310, align 8, !tbaa !54
  %311 = getelementptr inbounds %struct.Object, ptr %261, i64 %305
  %312 = load ptr, ptr %308, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %311, ptr noundef nonnull align 8 dereferenceable(1424) %312, i64 1424, i1 false), !tbaa.struct !107
  %313 = add nuw nsw i64 %305, 1
  %314 = icmp eq i64 %313, %303
  br i1 %314, label %318, label %304, !llvm.loop !188

315:                                              ; preds = %211
  %316 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 125
  %317 = load ptr, ptr %316, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %2, ptr noundef nonnull align 8 dereferenceable(1424) %317, i64 1424, i1 false), !tbaa.struct !107
  br label %318

318:                                              ; preds = %304, %273, %298, %268, %315
  %319 = phi ptr [ null, %315 ], [ %261, %268 ], [ %261, %298 ], [ %261, %273 ], [ %261, %304 ]
  %320 = phi ptr [ null, %315 ], [ %258, %268 ], [ %258, %298 ], [ %258, %273 ], [ %258, %304 ]
  %321 = phi ptr [ %317, %315 ], [ null, %268 ], [ null, %298 ], [ null, %273 ], [ null, %304 ]
  %322 = phi i32 [ 0, %315 ], [ %254, %268 ], [ %254, %298 ], [ %254, %273 ], [ %254, %304 ]
  %323 = icmp eq i32 %213, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 15
  %326 = load i32, ptr %325, align 8, !tbaa !180
  %327 = and i32 %326, 256
  %328 = icmp eq i32 %327, 0
  %329 = select i1 %328, i32 %212, i32 0
  br label %330

330:                                              ; preds = %324, %318
  %331 = phi i32 [ 0, %318 ], [ %329, %324 ]
  %332 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 3
  %333 = add nsw i32 %213, %212
  %334 = icmp slt i32 %331, %333
  br i1 %334, label %335, label %675

335:                                              ; preds = %330
  %336 = load ptr, ptr %332, align 8, !tbaa !189
  %337 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 4
  %338 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 8
  %339 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 7
  %340 = icmp eq i32 %322, 0
  %341 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 15
  %342 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 8
  %343 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 7
  %344 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 122
  %345 = add i32 %125, -1
  %346 = icmp ult i32 %345, 2
  %347 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 15
  %348 = add i32 %125, -1
  %349 = icmp ult i32 %348, 2
  %350 = sext i32 %331 to i64
  %351 = sext i32 %212 to i64
  %352 = sext i32 %212 to i64
  %353 = sext i32 %212 to i64
  %354 = sext i32 %212 to i64
  br label %355

355:                                              ; preds = %335, %668
  %356 = phi i64 [ %350, %335 ], [ %671, %668 ]
  %357 = phi ptr [ %321, %335 ], [ %670, %668 ]
  %358 = phi ptr [ null, %335 ], [ %669, %668 ]
  %359 = phi ptr [ %336, %335 ], [ %672, %668 ]
  %360 = icmp slt i64 %356, %354
  br i1 %360, label %361, label %372

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.ParticleData, ptr %359, i64 0, i32 17
  %363 = load i16, ptr %362, align 4, !tbaa !190
  %364 = zext i16 %363 to i32
  %365 = and i32 %136, %364
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %668

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.ParticleData, ptr %359, i64 0, i32 6
  %369 = load float, ptr %368, align 4, !tbaa !193
  %370 = getelementptr inbounds %struct.ParticleData, ptr %359, i64 0, i32 13
  %371 = load float, ptr %370, align 4, !tbaa !194
  br label %383

372:                                              ; preds = %355
  %373 = load ptr, ptr %337, align 8, !tbaa !195
  %374 = sub nsw i64 %356, %353
  %375 = getelementptr inbounds %struct.ChildParticle, ptr %373, i64 %374
  %376 = load ptr, ptr %332, align 8, !tbaa !189
  %377 = getelementptr inbounds %struct.ChildParticle, ptr %373, i64 %374, i32 1
  %378 = load i32, ptr %377, align 4, !tbaa !196
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.ParticleData, ptr %376, i64 %379, i32 6
  %381 = load float, ptr %380, align 4, !tbaa !193
  %382 = call float @psys_get_child_size(ptr noundef nonnull %61, ptr noundef %375, float noundef %137, ptr noundef null) #10
  br label %383

383:                                              ; preds = %372, %367
  %384 = phi ptr [ %358, %367 ], [ %375, %372 ]
  %385 = phi float [ %369, %367 ], [ %381, %372 ]
  %386 = phi float [ %371, %367 ], [ %382, %372 ]
  br i1 %184, label %387, label %403

387:                                              ; preds = %383
  br i1 %360, label %388, label %395

388:                                              ; preds = %387
  %389 = load ptr, ptr %339, align 8, !tbaa !176
  %390 = getelementptr inbounds ptr, ptr %389, i64 %356
  %391 = load ptr, ptr %390, align 8, !tbaa !54
  %392 = getelementptr inbounds %struct.ParticleCacheKey, ptr %391, i64 0, i32 5
  %393 = load i32, ptr %392, align 4, !tbaa !198
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %668, label %403

395:                                              ; preds = %387
  %396 = load ptr, ptr %338, align 8, !tbaa !175
  %397 = sub nsw i64 %356, %351
  %398 = getelementptr inbounds ptr, ptr %396, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !54
  %400 = getelementptr inbounds %struct.ParticleCacheKey, ptr %399, i64 0, i32 5
  %401 = load i32, ptr %400, align 4, !tbaa !198
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %668, label %403

403:                                              ; preds = %388, %395, %383
  %404 = load i16, ptr %153, align 8, !tbaa !165
  %405 = icmp eq i16 %404, 8
  br i1 %405, label %406, label %420

406:                                              ; preds = %403
  br i1 %340, label %668, label %407

407:                                              ; preds = %406
  %408 = load i32, ptr %341, align 8, !tbaa !180
  %409 = and i32 %408, 1024
  %410 = icmp eq i32 %409, 0
  %411 = trunc i64 %356 to i32
  br i1 %410, label %414, label %412

412:                                              ; preds = %407
  %413 = call i32 @BLI_rand() #10
  br label %414

414:                                              ; preds = %412, %407
  %415 = phi i32 [ %413, %412 ], [ %411, %407 ]
  %416 = srem i32 %415, %322
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds ptr, ptr %320, i64 %417
  %419 = load ptr, ptr %418, align 8, !tbaa !54
  br label %420

420:                                              ; preds = %414, %403
  %421 = phi ptr [ %419, %414 ], [ %357, %403 ]
  %422 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 47
  br i1 %184, label %423, label %440

423:                                              ; preds = %420
  br i1 %360, label %424, label %428

424:                                              ; preds = %423
  %425 = load ptr, ptr %343, align 8, !tbaa !176
  %426 = getelementptr inbounds ptr, ptr %425, i64 %356
  %427 = load ptr, ptr %426, align 8, !tbaa !54
  call void @psys_get_dupli_path_transform(ptr noundef nonnull %8, ptr noundef %359, ptr noundef null, ptr noundef %427, ptr noundef nonnull %7, ptr noundef nonnull %4) #10
  br label %433

428:                                              ; preds = %423
  %429 = load ptr, ptr %342, align 8, !tbaa !175
  %430 = sub nsw i64 %356, %352
  %431 = getelementptr inbounds ptr, ptr %429, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !54
  call void @psys_get_dupli_path_transform(ptr noundef nonnull %8, ptr noundef null, ptr noundef %384, ptr noundef %432, ptr noundef nonnull %7, ptr noundef nonnull %4) #10
  br label %433

433:                                              ; preds = %428, %424
  %434 = phi ptr [ %427, %424 ], [ %432, %428 ]
  %435 = load float, ptr %434, align 4, !tbaa !51
  store float %435, ptr %41, align 16, !tbaa !51
  %436 = getelementptr inbounds float, ptr %434, i64 1
  %437 = load float, ptr %436, align 4, !tbaa !51
  store float %437, ptr %42, align 4, !tbaa !51
  %438 = getelementptr inbounds float, ptr %434, i64 2
  %439 = load float, ptr %438, align 4, !tbaa !51
  store float %439, ptr %43, align 8, !tbaa !51
  store float 1.000000e+00, ptr %44, align 4, !tbaa !51
  br label %449

440:                                              ; preds = %420
  store float %137, ptr %33, align 4, !tbaa !200
  %441 = trunc i64 %356 to i32
  %442 = call i32 @psys_get_particle_state(ptr noundef nonnull %8, i32 noundef %441, ptr noundef nonnull %3, i32 noundef 0) #10
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %668, label %444

444:                                              ; preds = %440
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %445 = call float @normalize_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %34) #10
  call void @quat_to_mat4(ptr noundef nonnull %7, ptr noundef nonnull %9) #10
  %446 = load float, ptr %3, align 4, !tbaa !51
  store float %446, ptr %35, align 16, !tbaa !51
  %447 = load float, ptr %36, align 4, !tbaa !51
  store float %447, ptr %37, align 4, !tbaa !51
  %448 = load float, ptr %38, align 4, !tbaa !51
  store float %448, ptr %39, align 8, !tbaa !51
  store float 1.000000e+00, ptr %40, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  br label %449

449:                                              ; preds = %444, %433
  %450 = load i16, ptr %153, align 8, !tbaa !165
  %451 = icmp eq i16 %450, 8
  br i1 %451, label %452, label %566

452:                                              ; preds = %449
  %453 = load ptr, ptr %129, align 8, !tbaa !157
  %454 = getelementptr inbounds %struct.ParticleSettings, ptr %453, i64 0, i32 15
  %455 = load i32, ptr %454, align 8, !tbaa !180
  %456 = and i32 %455, 16384
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %566, label %458

458:                                              ; preds = %452
  %459 = load ptr, ptr %344, align 8, !tbaa !172
  %460 = getelementptr inbounds %struct.Group, ptr %459, i64 0, i32 1
  %461 = load ptr, ptr %460, align 8, !tbaa !54
  %462 = icmp eq ptr %461, null
  br i1 %462, label %668, label %463

463:                                              ; preds = %458
  %464 = trunc i64 %356 to i32
  br label %465

465:                                              ; preds = %463, %562
  %466 = phi i64 [ %563, %562 ], [ 0, %463 ]
  %467 = phi ptr [ %564, %562 ], [ %461, %463 ]
  %468 = getelementptr inbounds ptr, ptr %320, i64 %466
  %469 = load ptr, ptr %468, align 8, !tbaa !54
  %470 = getelementptr inbounds %struct.Object, ptr %469, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %470) #10
  %471 = load float, ptr %4, align 4, !tbaa !51
  %472 = fmul float %386, %471
  call void @mul_mat3_m4_fl(ptr noundef nonnull %5, float noundef %472) #10
  %473 = load float, ptr %4, align 4, !tbaa !51
  %474 = fmul float %386, %473
  %475 = load float, ptr %45, align 16, !tbaa !51
  %476 = fmul float %475, %474
  store float %476, ptr %45, align 16, !tbaa !51
  %477 = load float, ptr %46, align 4, !tbaa !51
  %478 = fmul float %474, %477
  store float %478, ptr %46, align 4, !tbaa !51
  %479 = load float, ptr %47, align 8, !tbaa !51
  %480 = fmul float %474, %479
  store float %480, ptr %47, align 8, !tbaa !51
  %481 = load ptr, ptr %344, align 8, !tbaa !172
  %482 = getelementptr inbounds %struct.Group, ptr %481, i64 0, i32 3
  %483 = load float, ptr %482, align 4, !tbaa !51
  %484 = fcmp oeq float %483, 0.000000e+00
  br i1 %484, label %485, label %494

485:                                              ; preds = %465
  %486 = getelementptr inbounds %struct.Group, ptr %481, i64 0, i32 3, i64 1
  %487 = load float, ptr %486, align 4, !tbaa !51
  %488 = fcmp oeq float %487, 0.000000e+00
  br i1 %488, label %489, label %494

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.Group, ptr %481, i64 0, i32 3, i64 2
  %491 = load float, ptr %490, align 4, !tbaa !51
  %492 = fcmp oeq float %491, 0.000000e+00
  %493 = zext i1 %492 to i8
  br label %494

494:                                              ; preds = %489, %485, %465
  %495 = phi i8 [ 0, %485 ], [ 0, %465 ], [ %493, %489 ]
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %494
  %498 = fsub float %476, %483
  store float %498, ptr %45, align 16, !tbaa !51
  %499 = getelementptr inbounds %struct.Group, ptr %481, i64 0, i32 3, i64 1
  %500 = load float, ptr %499, align 4, !tbaa !51
  %501 = fsub float %478, %500
  store float %501, ptr %46, align 4, !tbaa !51
  %502 = getelementptr inbounds %struct.Group, ptr %481, i64 0, i32 3, i64 2
  %503 = load float, ptr %502, align 4, !tbaa !51
  %504 = fsub float %480, %503
  store float %504, ptr %47, align 8, !tbaa !51
  br label %505

505:                                              ; preds = %497, %494
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #10
  %506 = getelementptr inbounds %struct.GroupObject, ptr %467, i64 0, i32 2
  %507 = load ptr, ptr %506, align 8, !tbaa !55
  %508 = load ptr, ptr %48, align 8, !tbaa !63
  %509 = icmp ne ptr %508, null
  call void @llvm.assume(i1 %509)
  %510 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %511 = call ptr %510(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %512 = load ptr, ptr %48, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef %512, ptr noundef %511) #10
  %513 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 2
  store ptr %507, ptr %513, align 8, !tbaa !64
  %514 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %514, ptr noundef nonnull %49, ptr noundef nonnull %6) #10
  %515 = load ptr, ptr %27, align 8, !tbaa !66
  %516 = load i16, ptr %515, align 8, !tbaa !67
  %517 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 6
  store i16 %516, ptr %517, align 4, !tbaa !69
  %518 = load i8, ptr %50, align 1, !tbaa !70
  %519 = icmp ne i8 %518, 0
  %520 = zext i1 %519 to i8
  %521 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 8
  store i8 %520, ptr %521, align 1, !tbaa !71
  %522 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 9
  store i32 %464, ptr %522, align 8, !tbaa !72
  %523 = load i32, ptr %26, align 4, !tbaa !73
  %524 = icmp slt i32 %523, 1
  br i1 %524, label %527, label %532

525:                                              ; preds = %532
  %526 = trunc i64 %541 to i32
  br label %527

527:                                              ; preds = %525, %505
  %528 = phi i32 [ 1, %505 ], [ %526, %525 ]
  %529 = icmp ult i32 %528, 8
  br i1 %529, label %530, label %550

530:                                              ; preds = %527
  %531 = zext nneg i32 %528 to i64
  br label %545

532:                                              ; preds = %505, %532
  %533 = phi i64 [ %541, %532 ], [ 1, %505 ]
  %534 = phi i32 [ %542, %532 ], [ %523, %505 ]
  %535 = trunc i64 %533 to i32
  %536 = sub nsw i32 %534, %535
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 8, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !72
  %540 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 9, i64 %533
  store i32 %539, ptr %540, align 4, !tbaa !72
  %541 = add nuw nsw i64 %533, 1
  %542 = load i32, ptr %26, align 4, !tbaa !73
  %543 = sext i32 %542 to i64
  %544 = icmp slt i64 %533, %543
  br i1 %544, label %532, label %525, !llvm.loop !74

545:                                              ; preds = %545, %530
  %546 = phi i64 [ %531, %530 ], [ %548, %545 ]
  %547 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 9, i64 %546
  store i32 2147483647, ptr %547, align 4, !tbaa !72
  %548 = add nuw nsw i64 %546, 1
  %549 = icmp eq i64 %548, 8
  br i1 %549, label %550, label %545, !llvm.loop !77

550:                                              ; preds = %545, %527
  %551 = getelementptr inbounds %struct.Object, ptr %507, i64 0, i32 3
  %552 = load i16, ptr %551, align 8, !tbaa !79
  %553 = icmp eq i16 %552, 5
  br i1 %553, label %554, label %556

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 7
  store i8 1, ptr %555, align 2, !tbaa !78
  br label %556

556:                                              ; preds = %550, %554
  %557 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 10
  store ptr %61, ptr %557, align 8, !tbaa !201
  br i1 %346, label %558, label %562

558:                                              ; preds = %556
  %559 = load ptr, ptr %31, align 8, !tbaa !170
  %560 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 5
  %561 = getelementptr inbounds %struct.DupliObject, ptr %511, i64 0, i32 4
  call void @psys_get_dupli_texture(ptr noundef nonnull %61, ptr noundef nonnull %130, ptr noundef %559, ptr noundef %359, ptr noundef %384, ptr noundef nonnull %560, ptr noundef nonnull %561) #10
  br label %562

562:                                              ; preds = %558, %556
  %563 = add nuw i64 %466, 1
  %564 = load ptr, ptr %467, align 8, !tbaa !54
  %565 = icmp eq ptr %564, null
  br i1 %565, label %668, label %465, !llvm.loop !202

566:                                              ; preds = %452, %449
  %567 = fsub float %137, %385
  call void @BKE_object_where_is_calc_time(ptr noundef %123, ptr noundef %421, float noundef %567) #10
  %568 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 47, i64 3
  %569 = load float, ptr %568, align 4, !tbaa !51
  %570 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 47, i64 3, i64 1
  %571 = load float, ptr %570, align 4, !tbaa !51
  %572 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 47, i64 3, i64 2
  %573 = load float, ptr %572, align 4, !tbaa !51
  store float 0.000000e+00, ptr %572, align 4, !tbaa !51
  store float 0.000000e+00, ptr %570, align 4, !tbaa !51
  store float 0.000000e+00, ptr %568, align 4, !tbaa !51
  %574 = load i32, ptr %347, align 8, !tbaa !180
  %575 = and i32 %574, 128
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %588

577:                                              ; preds = %566
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  call void @mat4_to_size(ptr noundef nonnull %13, ptr noundef nonnull %422) #10
  call void @size_to_mat4(ptr noundef nonnull %12, ptr noundef nonnull %13) #10
  store float -1.000000e+00, ptr %10, align 4, !tbaa !51
  store float 0.000000e+00, ptr %51, align 4, !tbaa !51
  store float 0.000000e+00, ptr %52, align 4, !tbaa !51
  %578 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 57
  %579 = load i16, ptr %578, align 4, !tbaa !203
  %580 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 58
  %581 = load i16, ptr %580, align 2, !tbaa !204
  call void @vec_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %10, i16 noundef signext %579, i16 noundef signext %581) #10
  call void @quat_to_mat4(ptr noundef nonnull %422, ptr noundef nonnull %11) #10
  %582 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 47, i64 3, i64 3
  store float 1.000000e+00, ptr %582, align 4, !tbaa !51
  %583 = load i32, ptr %347, align 8, !tbaa !180
  %584 = and i32 %583, 65536
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %577
  call void @mul_m4_m4m4(ptr noundef nonnull %422, ptr noundef nonnull %422, ptr noundef nonnull %12) #10
  br label %587

587:                                              ; preds = %586, %577
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %593

588:                                              ; preds = %566
  %589 = and i32 %574, 65536
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %593, label %591

591:                                              ; preds = %588
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  call void @mat4_to_size(ptr noundef nonnull %15, ptr noundef nonnull %422) #10
  call void @size_to_mat4(ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  %592 = call zeroext i8 @invert_m4(ptr noundef nonnull %14) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %422, ptr noundef nonnull %422, ptr noundef nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #10
  br label %593

593:                                              ; preds = %591, %588, %587
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %422) #10
  %594 = load float, ptr %4, align 4, !tbaa !51
  %595 = fmul float %386, %594
  call void @mul_mat3_m4_fl(ptr noundef nonnull %5, float noundef %595) #10
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  %596 = load i32, ptr %347, align 8, !tbaa !180
  %597 = and i32 %596, 2
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %606, label %599

599:                                              ; preds = %593
  %600 = load float, ptr %53, align 16, !tbaa !51
  %601 = fadd float %569, %600
  store float %601, ptr %53, align 16, !tbaa !51
  %602 = load float, ptr %54, align 4, !tbaa !51
  %603 = fadd float %571, %602
  store float %603, ptr %54, align 4, !tbaa !51
  %604 = load float, ptr %55, align 8, !tbaa !51
  %605 = fadd float %573, %604
  store float %605, ptr %55, align 8, !tbaa !51
  br label %606

606:                                              ; preds = %599, %593
  %607 = load ptr, ptr %56, align 8, !tbaa !63
  %608 = icmp ne ptr %607, null
  call void @llvm.assume(i1 %608)
  %609 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %610 = call ptr %609(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %611 = load ptr, ptr %56, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef %611, ptr noundef %610) #10
  %612 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 2
  store ptr %421, ptr %612, align 8, !tbaa !64
  %613 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %613, ptr noundef nonnull %57, ptr noundef nonnull %6) #10
  %614 = load ptr, ptr %27, align 8, !tbaa !66
  %615 = load i16, ptr %614, align 8, !tbaa !67
  %616 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 6
  store i16 %615, ptr %616, align 4, !tbaa !69
  %617 = load i8, ptr %58, align 1, !tbaa !70
  %618 = icmp ne i8 %617, 0
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 8
  store i8 %619, ptr %620, align 1, !tbaa !71
  %621 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 9
  %622 = trunc i64 %356 to i32
  store i32 %622, ptr %621, align 8, !tbaa !72
  %623 = load i32, ptr %26, align 4, !tbaa !73
  %624 = icmp slt i32 %623, 1
  br i1 %624, label %627, label %632

625:                                              ; preds = %632
  %626 = trunc i64 %641 to i32
  br label %627

627:                                              ; preds = %625, %606
  %628 = phi i32 [ 1, %606 ], [ %626, %625 ]
  %629 = icmp ult i32 %628, 8
  br i1 %629, label %630, label %650

630:                                              ; preds = %627
  %631 = zext nneg i32 %628 to i64
  br label %645

632:                                              ; preds = %606, %632
  %633 = phi i64 [ %641, %632 ], [ 1, %606 ]
  %634 = phi i32 [ %642, %632 ], [ %623, %606 ]
  %635 = trunc i64 %633 to i32
  %636 = sub nsw i32 %634, %635
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.DupliContext, ptr %16, i64 0, i32 8, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !72
  %640 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 9, i64 %633
  store i32 %639, ptr %640, align 4, !tbaa !72
  %641 = add nuw nsw i64 %633, 1
  %642 = load i32, ptr %26, align 4, !tbaa !73
  %643 = sext i32 %642 to i64
  %644 = icmp slt i64 %633, %643
  br i1 %644, label %632, label %625, !llvm.loop !74

645:                                              ; preds = %645, %630
  %646 = phi i64 [ %631, %630 ], [ %648, %645 ]
  %647 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 9, i64 %646
  store i32 2147483647, ptr %647, align 4, !tbaa !72
  %648 = add nuw nsw i64 %646, 1
  %649 = icmp eq i64 %648, 8
  br i1 %649, label %650, label %645, !llvm.loop !77

650:                                              ; preds = %645, %627
  %651 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 3
  %652 = load i16, ptr %651, align 8, !tbaa !79
  %653 = icmp eq i16 %652, 5
  br i1 %653, label %654, label %656

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 7
  store i8 1, ptr %655, align 2, !tbaa !78
  br label %656

656:                                              ; preds = %650, %654
  %657 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 10
  store ptr %61, ptr %657, align 8, !tbaa !201
  br i1 %349, label %658, label %662

658:                                              ; preds = %656
  %659 = load ptr, ptr %31, align 8, !tbaa !170
  %660 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 5
  %661 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 4
  call void @psys_get_dupli_texture(ptr noundef nonnull %61, ptr noundef nonnull %130, ptr noundef %659, ptr noundef %359, ptr noundef %384, ptr noundef nonnull %660, ptr noundef nonnull %661) #10
  br label %662

662:                                              ; preds = %658, %656
  %663 = load ptr, ptr %59, align 8
  %664 = icmp eq ptr %663, null
  %665 = select i1 %128, i1 true, i1 %664
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.DupliObject, ptr %610, i64 0, i32 6
  store i16 256, ptr %667, align 4, !tbaa !69
  br label %668

668:                                              ; preds = %562, %458, %666, %662, %440, %406, %395, %388, %361
  %669 = phi ptr [ %358, %361 ], [ %384, %388 ], [ %384, %395 ], [ %384, %406 ], [ %384, %666 ], [ %384, %662 ], [ %384, %440 ], [ %384, %458 ], [ %384, %562 ]
  %670 = phi ptr [ %357, %361 ], [ %357, %388 ], [ %357, %395 ], [ %357, %406 ], [ %421, %666 ], [ %421, %662 ], [ %421, %440 ], [ %421, %458 ], [ %421, %562 ]
  %671 = add nsw i64 %356, 1
  %672 = getelementptr inbounds %struct.ParticleData, ptr %359, i64 1
  %673 = trunc i64 %671 to i32
  %674 = icmp eq i32 %333, %673
  br i1 %674, label %675, label %355, !llvm.loop !205

675:                                              ; preds = %668, %330
  %676 = phi ptr [ %321, %330 ], [ %670, %668 ]
  %677 = load i16, ptr %153, align 8, !tbaa !165
  %678 = icmp eq i16 %677, 8
  br i1 %678, label %679, label %690

679:                                              ; preds = %675
  %680 = icmp sgt i32 %322, 0
  br i1 %680, label %681, label %691

681:                                              ; preds = %679
  %682 = zext nneg i32 %322 to i64
  br label %683

683:                                              ; preds = %681, %683
  %684 = phi i64 [ 0, %681 ], [ %688, %683 ]
  %685 = getelementptr inbounds ptr, ptr %320, i64 %684
  %686 = load ptr, ptr %685, align 8, !tbaa !54
  %687 = getelementptr inbounds %struct.Object, ptr %319, i64 %684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %686, ptr noundef nonnull align 8 dereferenceable(1424) %687, i64 1424, i1 false), !tbaa.struct !107
  %688 = add nuw nsw i64 %684, 1
  %689 = icmp eq i64 %688, %682
  br i1 %689, label %691, label %683, !llvm.loop !206

690:                                              ; preds = %675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %676, ptr noundef nonnull align 8 dereferenceable(1424) %2, i64 1424, i1 false), !tbaa.struct !107
  br label %691

691:                                              ; preds = %683, %679, %690, %203, %178, %174, %170, %164
  %692 = phi ptr [ null, %164 ], [ null, %174 ], [ null, %170 ], [ null, %178 ], [ null, %203 ], [ %319, %690 ], [ %319, %679 ], [ %319, %683 ]
  %693 = phi ptr [ null, %164 ], [ null, %174 ], [ null, %170 ], [ null, %178 ], [ null, %203 ], [ %320, %690 ], [ %320, %679 ], [ %320, %683 ]
  %694 = phi i1 [ false, %164 ], [ false, %174 ], [ false, %170 ], [ false, %178 ], [ false, %203 ], [ true, %690 ], [ true, %679 ], [ true, %683 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #10
  br i1 %694, label %695, label %710

695:                                              ; preds = %691, %152, %148
  %696 = phi ptr [ %692, %691 ], [ null, %148 ], [ null, %152 ]
  %697 = phi ptr [ %693, %691 ], [ null, %148 ], [ null, %152 ]
  %698 = icmp eq ptr %697, null
  br i1 %698, label %701, label %699

699:                                              ; preds = %695
  %700 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %700(ptr noundef nonnull %697) #10
  br label %701

701:                                              ; preds = %699, %695
  %702 = icmp eq ptr %696, null
  br i1 %702, label %705, label %703

703:                                              ; preds = %701
  %704 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %704(ptr noundef nonnull %696) #10
  br label %705

705:                                              ; preds = %703, %701
  %706 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 15
  %707 = load ptr, ptr %706, align 8, !tbaa !179
  %708 = icmp eq ptr %707, null
  br i1 %708, label %710, label %709

709:                                              ; preds = %705
  call void @end_latt_deform(ptr noundef nonnull %707) #10
  store ptr null, ptr %706, align 8, !tbaa !179
  br label %710

710:                                              ; preds = %121, %132, %691, %705, %709
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %16) #10
  %711 = add nuw nsw i32 %62, 1
  %712 = load ptr, ptr %61, align 8, !tbaa !54
  %713 = icmp eq ptr %712, null
  br i1 %713, label %714, label %60, !llvm.loop !207

714:                                              ; preds = %710, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @object_duplilist_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.DupliContext, align 8
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %5) #10
  store ptr %0, ptr %5, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 4
  store ptr %1, ptr %8, align 8, !tbaa !53
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !208
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %0, align 4, !tbaa !40
  %15 = icmp eq i32 %14, 2
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %4, %10, %13
  %18 = phi i8 [ 0, %4 ], [ 1, %10 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 1
  store i8 %18, ptr %19, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 2
  store i8 0, ptr %20, align 1, !tbaa !70
  %21 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 5
  store ptr %2, ptr %22, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 6
  call void @unit_m4(ptr noundef nonnull %23) #10
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 7
  store i32 %25, ptr %26, align 8, !tbaa !209
  %27 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 9
  store i32 0, ptr %27, align 4, !tbaa !73
  %28 = load ptr, ptr %22, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 55
  %30 = load i16, ptr %29, align 8, !tbaa !58
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 102
  %33 = load i8, ptr %32, align 8, !tbaa !62
  %34 = zext i8 %33 to i32
  %35 = and i32 %31, 2840
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %17
  %38 = load ptr, ptr %5, align 8, !tbaa !34
  %39 = load i32, ptr %38, align 4, !tbaa !40
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = and i32 %34, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %74

44:                                               ; preds = %37
  %45 = and i32 %34, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %44, %41
  %48 = and i32 %31, 2048
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = and i32 %31, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !79
  %56 = icmp eq i16 %55, 4
  %57 = select i1 %56, ptr @gen_dupli_verts_font, ptr null
  %58 = icmp eq i16 %55, 1
  %59 = select i1 %58, ptr @gen_dupli_verts, ptr %57
  br label %74

60:                                               ; preds = %50
  %61 = and i32 %31, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 3
  %65 = load i16, ptr %64, align 8, !tbaa !79
  %66 = icmp eq i16 %65, 1
  br i1 %66, label %74, label %73

67:                                               ; preds = %60
  %68 = and i32 %31, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = and i32 %31, 256
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %17, %41, %44, %47, %53, %63, %67, %70, %73
  %75 = phi ptr [ null, %73 ], [ null, %17 ], [ null, %44 ], [ null, %41 ], [ @gen_dupli_particles, %47 ], [ @gen_dupli_faces, %63 ], [ @gen_dupli_frames, %67 ], [ @gen_dupli_group, %70 ], [ %59, %53 ]
  %76 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 11
  store ptr %75, ptr %76, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.DupliContext, ptr %5, i64 0, i32 12
  store ptr null, ptr %77, align 8, !tbaa !63
  %78 = icmp eq ptr %75, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  store ptr %7, ptr %77, align 8, !tbaa !63
  %80 = getelementptr inbounds %struct.DupliGenerator, ptr %75, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !83
  call void %81(ptr noundef nonnull %5) #10
  br label %82

82:                                               ; preds = %79, %74
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %5) #10
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @object_duplilist(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @object_duplilist_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @free_object_duplilist(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef %0) #10
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %2(ptr noundef %0) #10
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @count_duplilist(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %3 = load i16, ptr %2, align 8, !tbaa !58
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 2840
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !79
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %14 ]
  %20 = phi i32 [ %23, %18 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !159
  %23 = add nsw i32 %22, %20
  %24 = load ptr, ptr %19, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !llvm.loop !210

26:                                               ; preds = %18, %14
  %27 = phi i32 [ 0, %14 ], [ %23, %18 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  %32 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %33 = load i32, ptr %32, align 8, !tbaa !211
  br label %50

34:                                               ; preds = %7
  %35 = and i32 %4, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 67
  %39 = load i32, ptr %38, align 4, !tbaa !104
  %40 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 66
  %41 = load i32, ptr %40, align 8, !tbaa !111
  %42 = sub nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 64
  %44 = load i32, ptr %43, align 8, !tbaa !113
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 65
  %46 = load i32, ptr %45, align 4, !tbaa !112
  %47 = add nsw i32 %46, %44
  %48 = sdiv i32 %42, %47
  %49 = mul nsw i32 %48, %44
  br label %50

50:                                               ; preds = %1, %34, %10, %29, %26, %37
  %51 = phi i32 [ %49, %37 ], [ %33, %29 ], [ %27, %26 ], [ 1, %10 ], [ 1, %34 ], [ 1, %1 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @duplilist_apply(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_countlist(ptr noundef %1) #10
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str.1) #10
  store i32 %3, ptr %7, align 8, !tbaa !212
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %9 = zext nneg i32 %3 to i64
  %10 = mul nuw nsw i64 %9, 68
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.2) #10
  %12 = getelementptr inbounds %struct.DupliApplyData, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !214
  %13 = load ptr, ptr %1, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 52
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %34, %17 ]
  %19 = phi ptr [ %13, %15 ], [ %35, %17 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !214
  %21 = getelementptr inbounds %struct.DupliExtraData, ptr %20, i64 %18
  %22 = getelementptr inbounds %struct.DupliObject, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %21, ptr noundef nonnull %24) #10
  %25 = load ptr, ptr %22, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47
  %27 = getelementptr inbounds %struct.DupliObject, ptr %19, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %27) #10
  %28 = load ptr, ptr %22, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 52
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = load ptr, ptr %12, align 8, !tbaa !214
  %32 = getelementptr inbounds %struct.DupliExtraData, ptr %31, i64 %18, i32 1
  store i32 %30, ptr %32, align 4, !tbaa !215
  %33 = load i32, ptr %16, align 8, !tbaa !59
  store i32 %33, ptr %29, align 8, !tbaa !59
  %34 = add nuw i64 %18, 1
  %35 = load ptr, ptr %19, align 8, !tbaa !54
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17, !llvm.loop !217

37:                                               ; preds = %17, %5, %2
  %38 = phi ptr [ null, %2 ], [ %7, %5 ], [ %7, %17 ]
  ret ptr %38
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @duplilist_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !212
  %8 = getelementptr inbounds %struct.DupliApplyData, ptr %1, i64 0, i32 1
  %9 = sext i32 %7 to i64
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ %9, %6 ], [ %13, %10 ]
  %12 = phi ptr [ %4, %6 ], [ %25, %10 ]
  %13 = add nsw i64 %11, -1
  %14 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  %17 = load ptr, ptr %8, align 8, !tbaa !214
  %18 = getelementptr inbounds %struct.DupliExtraData, ptr %17, i64 %13
  tail call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef %18) #10
  %19 = load ptr, ptr %8, align 8, !tbaa !214
  %20 = getelementptr inbounds %struct.DupliExtraData, ptr %19, i64 %13, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !215
  %22 = load ptr, ptr %14, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 52
  store i32 %21, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.DupliObject, ptr %12, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !218

27:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @duplilist_free_apply_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.DupliApplyData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  tail call void %2(ptr noundef %4) #10
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %5(ptr noundef %0) #10
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_group_handle_recalc_and_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_group_is_animated(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @make_child_duplis(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.Group, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %85, label %19

19:                                               ; preds = %13, %46
  %20 = phi ptr [ %47, %46 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.GroupObject, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 52
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, %15
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq ptr %22, %9
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %19, %29
  %30 = phi ptr [ %32, %29 ], [ %22, %19 ]
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  %34 = icmp eq ptr %32, %5
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %29, !llvm.loop !220

36:                                               ; preds = %29
  br i1 %33, label %46, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !79
  %40 = icmp eq i16 %39, 5
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %43 = load i16, ptr %42, align 4, !tbaa !221
  %44 = or i16 %43, 1024
  store i16 %44, ptr %42, align 4, !tbaa !221
  br label %45

45:                                               ; preds = %41, %37
  tail call void %2(ptr noundef %0, ptr noundef %1, ptr noundef %22) #10, !callees !222
  br label %46

46:                                               ; preds = %45, %36, %19
  %47 = load ptr, ptr %20, align 8, !tbaa !54
  %48 = icmp eq ptr %47, null
  br i1 %48, label %85, label %19, !llvm.loop !223

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !224
  %52 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = icmp eq ptr %53, null
  br i1 %54, label %85, label %55

55:                                               ; preds = %49, %82
  %56 = phi ptr [ %83, %82 ], [ %53, %49 ]
  %57 = getelementptr inbounds %struct.Base, ptr %56, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !225
  %59 = getelementptr inbounds %struct.Base, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !227
  %61 = and i32 %60, %51
  %62 = icmp eq i32 %61, 0
  %63 = icmp eq ptr %58, %9
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %82, label %65

65:                                               ; preds = %55, %65
  %66 = phi ptr [ %68, %65 ], [ %58, %55 ]
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = icmp eq ptr %68, null
  %70 = icmp eq ptr %68, %5
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %72, label %65, !llvm.loop !220

72:                                               ; preds = %65
  br i1 %69, label %82, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 3
  %75 = load i16, ptr %74, align 8, !tbaa !79
  %76 = icmp eq i16 %75, 5
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 53
  %79 = load i16, ptr %78, align 4, !tbaa !221
  %80 = or i16 %79, 1024
  store i16 %80, ptr %78, align 4, !tbaa !221
  br label %81

81:                                               ; preds = %77, %73
  tail call void %2(ptr noundef %0, ptr noundef %1, ptr noundef %58) #10, !callees !222
  br label %82

82:                                               ; preds = %81, %72, %55
  %83 = load ptr, ptr %56, align 8, !tbaa !54
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %55, !llvm.loop !228

85:                                               ; preds = %46, %82, %13, %49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_child_duplis_verts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = load ptr, ptr %1, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 6
  store ptr %2, ptr %7, align 8, !tbaa !229
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %10 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %11 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 7
  %12 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %14) #10
  %15 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 71
  %20 = load ptr, ptr %19, align 8, !tbaa !230
  %21 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 4
  %22 = load i8, ptr %21, align 8, !tbaa !117
  %23 = icmp ne i8 %22, 0
  %24 = zext i1 %23 to i32
  tail call void %20(ptr noundef %6, ptr noundef nonnull @vertex_dupli__mapFunc, ptr noundef nonnull %1, i32 noundef %24) #10
  br label %51

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %28 = getelementptr inbounds %struct.VertexDupliData, ptr %1, i64 0, i32 4
  %29 = load i8, ptr %28, align 8, !tbaa !117
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
  %41 = load ptr, ptr %34, align 8, !tbaa !231
  call void %41(ptr noundef %6, i32 noundef %40, ptr noundef nonnull %4) #10
  %42 = load ptr, ptr %35, align 8, !tbaa !232
  call void %42(ptr noundef %6, i32 noundef %40, ptr noundef nonnull %5) #10
  call void @vertex_dupli__mapFunc(ptr noundef nonnull %1, i32 noundef %40, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null)
  %43 = add nuw nsw i32 %40, 1
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %50, label %39, !llvm.loop !233

45:                                               ; preds = %37, %45
  %46 = phi i32 [ 0, %37 ], [ %48, %45 ]
  %47 = load ptr, ptr %38, align 8, !tbaa !231
  call void %47(ptr noundef %6, i32 noundef %46, ptr noundef nonnull %4) #10
  call void @vertex_dupli__mapFunc(ptr noundef nonnull %1, i32 noundef %46, ptr noundef nonnull %4, ptr noundef null, ptr noundef null)
  %48 = add nuw nsw i32 %46, 1
  %49 = icmp eq i32 %48, %27
  br i1 %49, label %50, label %45, !llvm.loop !234

50:                                               ; preds = %39, %45, %32, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %51

51:                                               ; preds = %50, %18
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @vertex_dupli__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef readonly %4) #0 {
  %6 = alloca %struct.DupliContext, align 8
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #10
  %14 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 57
  %17 = load i16, ptr %16, align 4, !tbaa !203
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 58
  %19 = load i16, ptr %18, align 2, !tbaa !204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.get_duplivert_transform.size, i64 12, i1 false)
  %20 = icmp eq i8 %15, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %22 = icmp eq ptr %3, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %21
  %24 = load float, ptr %3, align 4, !tbaa !51
  %25 = fneg float %24
  store float %25, ptr %9, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %3, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fneg float %27
  %29 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %28, ptr %29, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fneg float %31
  br label %51

33:                                               ; preds = %21
  %34 = icmp eq ptr %4, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %33
  %36 = load i16, ptr %4, align 2, !tbaa !108
  %37 = sext i16 %36 to i32
  %38 = sub nsw i32 0, %37
  %39 = sitofp i32 %38 to float
  store float %39, ptr %9, align 4, !tbaa !51
  %40 = getelementptr inbounds i16, ptr %4, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !108
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 0, %42
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !51
  %46 = getelementptr inbounds i16, ptr %4, i64 2
  %47 = load i16, ptr %46, align 2, !tbaa !108
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 0, %48
  %50 = sitofp i32 %49 to float
  br label %51

51:                                               ; preds = %23, %35
  %52 = phi float [ %50, %35 ], [ %32, %23 ]
  %53 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %52, ptr %53, align 4, !tbaa !51
  br label %54

54:                                               ; preds = %51, %33
  call void @vec_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %9, i16 noundef signext %17, i16 noundef signext %19) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  br label %56

55:                                               ; preds = %5
  call void @unit_qt(ptr noundef nonnull %7) #10
  br label %56

56:                                               ; preds = %54, %55
  call void @loc_quat_size_to_mat4(ptr noundef nonnull %10, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  %57 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 7
  %58 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  call void @mul_mat3_m4_v3(ptr noundef nonnull %57, ptr noundef nonnull %58) #10
  %59 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %59, ptr noundef nonnull %10) #10
  %60 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 50
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %60) #10
  %61 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !115
  %63 = load ptr, ptr %12, align 8, !tbaa !229
  %64 = getelementptr inbounds %struct.DupliContext, ptr %62, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !63
  %66 = icmp eq ptr %65, null
  br i1 %66, label %118, label %67

67:                                               ; preds = %56
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %69 = call ptr %68(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %70 = load ptr, ptr %64, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef %70, ptr noundef %69) #10
  %71 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 2
  store ptr %63, ptr %71, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 3
  %73 = getelementptr inbounds %struct.DupliContext, ptr %62, i64 0, i32 6
  call void @mul_m4_m4m4(ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %10) #10
  %74 = getelementptr inbounds %struct.DupliContext, ptr %62, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !66
  %76 = load i16, ptr %75, align 8, !tbaa !67
  %77 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 6
  store i16 %76, ptr %77, align 4, !tbaa !69
  %78 = getelementptr inbounds %struct.DupliContext, ptr %62, i64 0, i32 2
  %79 = load i8, ptr %78, align 1, !tbaa !70
  %80 = icmp ne i8 %79, 0
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 8
  store i8 %81, ptr %82, align 1, !tbaa !71
  %83 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 9
  store i32 %1, ptr %83, align 8, !tbaa !72
  %84 = getelementptr inbounds %struct.DupliContext, ptr %62, i64 0, i32 9
  %85 = load i32, ptr %84, align 4, !tbaa !73
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %89, label %94

87:                                               ; preds = %94
  %88 = trunc i64 %103 to i32
  br label %89

89:                                               ; preds = %87, %67
  %90 = phi i32 [ 1, %67 ], [ %88, %87 ]
  %91 = icmp ult i32 %90, 8
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  %93 = zext nneg i32 %90 to i64
  br label %107

94:                                               ; preds = %67, %94
  %95 = phi i64 [ %103, %94 ], [ 1, %67 ]
  %96 = phi i32 [ %104, %94 ], [ %85, %67 ]
  %97 = trunc i64 %95 to i32
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.DupliContext, ptr %62, i64 0, i32 8, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !72
  %102 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 9, i64 %95
  store i32 %101, ptr %102, align 4, !tbaa !72
  %103 = add nuw nsw i64 %95, 1
  %104 = load i32, ptr %84, align 4, !tbaa !73
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %95, %105
  br i1 %106, label %94, label %87, !llvm.loop !74

107:                                              ; preds = %107, %92
  %108 = phi i64 [ %93, %92 ], [ %110, %107 ]
  %109 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 9, i64 %108
  store i32 2147483647, ptr %109, align 4, !tbaa !72
  %110 = add nuw nsw i64 %108, 1
  %111 = icmp eq i64 %110, 8
  br i1 %111, label %112, label %107, !llvm.loop !77

112:                                              ; preds = %107, %89
  %113 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 3
  %114 = load i16, ptr %113, align 8, !tbaa !79
  %115 = icmp eq i16 %114, 5
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.DupliObject, ptr %69, i64 0, i32 7
  store i8 1, ptr %117, align 2, !tbaa !78
  br label %118

118:                                              ; preds = %56, %112, %116
  %119 = phi ptr [ null, %56 ], [ %69, %116 ], [ %69, %112 ]
  %120 = getelementptr inbounds %struct.VertexDupliData, ptr %0, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !126
  %122 = icmp eq ptr %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.DupliObject, ptr %119, i64 0, i32 4
  %125 = sext i32 %1 to i64
  %126 = getelementptr inbounds [3 x float], ptr %121, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !51
  store float %127, ptr %124, align 4, !tbaa !51
  %128 = getelementptr inbounds float, ptr %126, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !51
  %130 = getelementptr inbounds %struct.DupliObject, ptr %119, i64 0, i32 4, i64 1
  store float %129, ptr %130, align 4, !tbaa !51
  %131 = getelementptr inbounds float, ptr %126, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !51
  %133 = getelementptr inbounds %struct.DupliObject, ptr %119, i64 0, i32 4, i64 2
  store float %132, ptr %133, align 4, !tbaa !51
  br label %134

134:                                              ; preds = %123, %118
  %135 = load ptr, ptr %61, align 8, !tbaa !115
  %136 = getelementptr inbounds %struct.DupliContext, ptr %135, i64 0, i32 9
  %137 = load i32, ptr %136, align 4, !tbaa !73
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %215

139:                                              ; preds = %134
  %140 = load ptr, ptr %12, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(168) %135, i64 168, i1 false), !tbaa.struct !80
  %141 = getelementptr inbounds %struct.DupliContext, ptr %135, i64 0, i32 11
  %142 = load ptr, ptr %141, align 8, !tbaa !66
  %143 = load i16, ptr %142, align 8, !tbaa !67
  %144 = icmp eq i16 %143, 256
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.DupliContext, ptr %135, i64 0, i32 5
  %147 = load ptr, ptr %146, align 8, !tbaa !42
  %148 = getelementptr inbounds %struct.Object, ptr %147, i64 0, i32 112
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  %150 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 3
  store ptr %149, ptr %150, align 8, !tbaa !82
  br label %151

151:                                              ; preds = %139, %145
  %152 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 5
  store ptr %140, ptr %152, align 8, !tbaa !42
  %153 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 6
  %154 = getelementptr inbounds %struct.DupliContext, ptr %135, i64 0, i32 6
  call void @mul_m4_m4m4(ptr noundef nonnull %153, ptr noundef nonnull %154, ptr noundef nonnull %11) #10
  %155 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 9
  %156 = load i32, ptr %155, align 4, !tbaa !73
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 8, i64 %157
  store i32 %1, ptr %158, align 4, !tbaa !72
  %159 = load i32, ptr %155, align 4, !tbaa !73
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %155, align 4, !tbaa !73
  %161 = load ptr, ptr %152, align 8, !tbaa !42
  %162 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 55
  %163 = load i16, ptr %162, align 8, !tbaa !58
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 102
  %166 = load i8, ptr %165, align 8, !tbaa !62
  %167 = zext i8 %166 to i32
  %168 = and i32 %164, 2840
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %207, label %170

170:                                              ; preds = %151
  %171 = load ptr, ptr %6, align 8, !tbaa !34
  %172 = load i32, ptr %171, align 4, !tbaa !40
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = and i32 %167, 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %207

177:                                              ; preds = %170
  %178 = and i32 %167, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %207

180:                                              ; preds = %177, %174
  %181 = and i32 %164, 2048
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %180
  %184 = and i32 %164, 16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 3
  %188 = load i16, ptr %187, align 8, !tbaa !79
  %189 = icmp eq i16 %188, 4
  %190 = select i1 %189, ptr @gen_dupli_verts_font, ptr null
  %191 = icmp eq i16 %188, 1
  %192 = select i1 %191, ptr @gen_dupli_verts, ptr %190
  br label %207

193:                                              ; preds = %183
  %194 = and i32 %164, 512
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 3
  %198 = load i16, ptr %197, align 8, !tbaa !79
  %199 = icmp eq i16 %198, 1
  br i1 %199, label %207, label %206

200:                                              ; preds = %193
  %201 = and i32 %164, 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = and i32 %164, 256
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203, %196
  br label %207

207:                                              ; preds = %151, %174, %177, %180, %186, %196, %200, %203, %206
  %208 = phi ptr [ null, %206 ], [ null, %151 ], [ null, %177 ], [ null, %174 ], [ @gen_dupli_particles, %180 ], [ @gen_dupli_faces, %196 ], [ @gen_dupli_frames, %200 ], [ @gen_dupli_group, %203 ], [ %192, %186 ]
  %209 = getelementptr inbounds %struct.DupliContext, ptr %6, i64 0, i32 11
  store ptr %208, ptr %209, align 8, !tbaa !66
  %210 = icmp eq ptr %208, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.DupliGenerator, ptr %208, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !83
  call void %213(ptr noundef nonnull %6) #10
  br label %214

214:                                              ; preds = %211, %207
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #10
  br label %215

215:                                              ; preds = %134, %214
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  ret void
}

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @loc_quat_size_to_mat4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_vfont_to_curve_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @make_child_duplis_faces(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.DupliContext, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !146
  %21 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !148
  %23 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !150
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = add i32 %26, -3
  %28 = icmp ult i32 %27, -2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  %29 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %30 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %31 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %29, ptr noundef nonnull %30) #10
  %32 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %29, ptr noundef nonnull %34) #10
  %35 = icmp sgt i32 %24, 0
  br i1 %35, label %36, label %271

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.FaceDupliData, ptr %1, i64 0, i32 7
  %38 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %39 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %40 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  %41 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 48
  %42 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 12
  %43 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %44 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %45 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 2
  %46 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %48 = icmp ne ptr %20, null
  %49 = icmp ne ptr %22, null
  %50 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 9
  %51 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 11
  %52 = getelementptr inbounds %struct.DupliContext, ptr %4, i64 0, i32 3
  %53 = getelementptr inbounds %struct.DupliContext, ptr %4, i64 0, i32 5
  %54 = getelementptr inbounds %struct.DupliContext, ptr %4, i64 0, i32 6
  %55 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 6
  %56 = getelementptr inbounds %struct.DupliContext, ptr %4, i64 0, i32 9
  %57 = getelementptr inbounds %struct.DupliContext, ptr %4, i64 0, i32 11
  br label %58

58:                                               ; preds = %36, %267
  %59 = phi ptr [ %14, %36 ], [ %269, %267 ]
  %60 = phi i32 [ 0, %36 ], [ %268, %267 ]
  %61 = load i32, ptr %59, align 4, !tbaa !235
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.MLoop, ptr %16, i64 %62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #10
  %64 = getelementptr inbounds %struct.MPoly, ptr %59, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !237
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %267, label %67

67:                                               ; preds = %58
  %68 = load i8, ptr %37, align 8, !tbaa !143
  %69 = load ptr, ptr %32, align 8, !tbaa !42
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 90
  %71 = load float, ptr %70, align 4, !tbaa !238
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @BKE_mesh_calc_poly_center(ptr noundef nonnull %59, ptr noundef %63, ptr noundef %18, ptr noundef nonnull %5) #10
  call void @BKE_mesh_calc_poly_normal(ptr noundef nonnull %59, ptr noundef %63, ptr noundef %18, ptr noundef nonnull %8) #10
  %72 = load i32, ptr %63, align 4, !tbaa !239
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.MVert, ptr %18, i64 %73
  %75 = getelementptr inbounds %struct.MLoop, ptr %63, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !239
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.MVert, ptr %18, i64 %77
  %79 = getelementptr inbounds %struct.MLoop, ptr %63, i64 2
  %80 = load i32, ptr %79, align 4, !tbaa !239
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.MVert, ptr %18, i64 %81
  call void @tri_to_quat_ex(ptr noundef nonnull %6, ptr noundef %74, ptr noundef %78, ptr noundef %82, ptr noundef nonnull %8) #10
  %83 = icmp eq i8 %68, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %67
  %85 = call float @BKE_mesh_calc_poly_area(ptr noundef nonnull %59, ptr noundef nonnull %63, ptr noundef %18) #10
  %86 = call float @sqrtf(float noundef %85) #10
  %87 = fmul float %71, %86
  br label %88

88:                                               ; preds = %67, %84
  %89 = phi float [ %87, %84 ], [ 1.000000e+00, %67 ]
  store float %89, ptr %38, align 4, !tbaa !51
  store float %89, ptr %39, align 4, !tbaa !51
  store float %89, ptr %7, align 4, !tbaa !51
  call void @loc_quat_size_to_mat4(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @mul_mat3_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #10
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef nonnull %41) #10
  call void @mul_m4_m3m4(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %30, ptr noundef nonnull %11) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %29) #10
  %90 = load ptr, ptr %42, align 8, !tbaa !63
  %91 = icmp eq ptr %90, null
  br i1 %91, label %138, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %94 = call ptr %93(i64 noundef 152, ptr noundef nonnull @.str.3) #10
  %95 = load ptr, ptr %42, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef %95, ptr noundef %94) #10
  %96 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 2
  store ptr %2, ptr %96, align 8, !tbaa !64
  %97 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %97, ptr noundef nonnull %43, ptr noundef nonnull %11) #10
  %98 = load ptr, ptr %44, align 8, !tbaa !66
  %99 = load i16, ptr %98, align 8, !tbaa !67
  %100 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 6
  store i16 %99, ptr %100, align 4, !tbaa !69
  %101 = load i8, ptr %45, align 1, !tbaa !70
  %102 = icmp ne i8 %101, 0
  %103 = zext i1 %102 to i8
  %104 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 8
  store i8 %103, ptr %104, align 1, !tbaa !71
  %105 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 9
  store i32 %60, ptr %105, align 8, !tbaa !72
  %106 = load i32, ptr %46, align 4, !tbaa !73
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %110, label %115

108:                                              ; preds = %115
  %109 = trunc i64 %124 to i32
  br label %110

110:                                              ; preds = %108, %92
  %111 = phi i32 [ 1, %92 ], [ %109, %108 ]
  %112 = icmp ult i32 %111, 8
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = zext nneg i32 %111 to i64
  br label %128

115:                                              ; preds = %92, %115
  %116 = phi i64 [ %124, %115 ], [ 1, %92 ]
  %117 = phi i32 [ %125, %115 ], [ %106, %92 ]
  %118 = trunc i64 %116 to i32
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.DupliContext, ptr %0, i64 0, i32 8, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !72
  %123 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 9, i64 %116
  store i32 %122, ptr %123, align 4, !tbaa !72
  %124 = add nuw nsw i64 %116, 1
  %125 = load i32, ptr %46, align 4, !tbaa !73
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %116, %126
  br i1 %127, label %115, label %108, !llvm.loop !74

128:                                              ; preds = %128, %113
  %129 = phi i64 [ %114, %113 ], [ %131, %128 ]
  %130 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 9, i64 %129
  store i32 2147483647, ptr %130, align 4, !tbaa !72
  %131 = add nuw nsw i64 %129, 1
  %132 = icmp eq i64 %131, 8
  br i1 %132, label %133, label %128, !llvm.loop !77

133:                                              ; preds = %128, %110
  %134 = load i16, ptr %47, align 8, !tbaa !79
  %135 = icmp eq i16 %134, 5
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.DupliObject, ptr %94, i64 0, i32 7
  store i8 1, ptr %137, align 2, !tbaa !78
  br label %138

138:                                              ; preds = %88, %133, %136
  %139 = phi ptr [ null, %88 ], [ %94, %136 ], [ %94, %133 ]
  br i1 %28, label %197, label %140

140:                                              ; preds = %138
  %141 = load i32, ptr %64, align 4, !tbaa !237
  %142 = sitofp i32 %141 to float
  %143 = fdiv float 1.000000e+00, %142
  %144 = icmp sgt i32 %141, 0
  %145 = select i1 %48, i1 %144, i1 false
  br i1 %145, label %146, label %173

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.DupliObject, ptr %139, i64 0, i32 4
  %148 = getelementptr inbounds %struct.DupliObject, ptr %139, i64 0, i32 4, i64 1
  %149 = getelementptr inbounds %struct.DupliObject, ptr %139, i64 0, i32 4, i64 2
  %150 = load float, ptr %147, align 4, !tbaa !51
  %151 = load float, ptr %148, align 4, !tbaa !51
  %152 = load float, ptr %149, align 4, !tbaa !51
  %153 = zext i32 %141 to i64
  br label %154

154:                                              ; preds = %146, %154
  %155 = phi i64 [ 0, %146 ], [ %171, %154 ]
  %156 = phi float [ %152, %146 ], [ %170, %154 ]
  %157 = phi float [ %151, %146 ], [ %167, %154 ]
  %158 = phi float [ %150, %146 ], [ %164, %154 ]
  %159 = getelementptr inbounds %struct.MLoop, ptr %63, i64 %155
  %160 = load i32, ptr %159, align 4, !tbaa !239
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [3 x float], ptr %20, i64 %161
  %163 = load float, ptr %162, align 4, !tbaa !51
  %164 = call float @llvm.fmuladd.f32(float %163, float %143, float %158)
  store float %164, ptr %147, align 4, !tbaa !51
  %165 = getelementptr inbounds float, ptr %162, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !51
  %167 = call float @llvm.fmuladd.f32(float %166, float %143, float %157)
  store float %167, ptr %148, align 4, !tbaa !51
  %168 = getelementptr inbounds float, ptr %162, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !51
  %170 = call float @llvm.fmuladd.f32(float %169, float %143, float %156)
  store float %170, ptr %149, align 4, !tbaa !51
  %171 = add nuw nsw i64 %155, 1
  %172 = icmp eq i64 %171, %153
  br i1 %172, label %173, label %154, !llvm.loop !241

173:                                              ; preds = %154, %140
  %174 = icmp sgt i32 %141, 0
  %175 = select i1 %49, i1 %174, i1 false
  br i1 %175, label %176, label %197

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.DupliObject, ptr %139, i64 0, i32 5
  %178 = load i32, ptr %59, align 4, !tbaa !235
  %179 = getelementptr inbounds %struct.DupliObject, ptr %139, i64 0, i32 5, i64 1
  %180 = load float, ptr %177, align 4, !tbaa !51
  %181 = load float, ptr %179, align 4, !tbaa !51
  %182 = sext i32 %178 to i64
  %183 = zext i32 %141 to i64
  %184 = getelementptr %struct.MLoopUV, ptr %22, i64 %182
  br label %185

185:                                              ; preds = %176, %185
  %186 = phi i64 [ 0, %176 ], [ %195, %185 ]
  %187 = phi float [ %181, %176 ], [ %194, %185 ]
  %188 = phi float [ %180, %176 ], [ %191, %185 ]
  %189 = getelementptr %struct.MLoopUV, ptr %184, i64 %186
  %190 = load float, ptr %189, align 4, !tbaa !51
  %191 = call float @llvm.fmuladd.f32(float %190, float %143, float %188)
  store float %191, ptr %177, align 4, !tbaa !51
  %192 = getelementptr inbounds float, ptr %189, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !51
  %194 = call float @llvm.fmuladd.f32(float %193, float %143, float %187)
  store float %194, ptr %179, align 4, !tbaa !51
  %195 = add nuw nsw i64 %186, 1
  %196 = icmp eq i64 %195, %183
  br i1 %196, label %197, label %185, !llvm.loop !242

197:                                              ; preds = %185, %173, %138
  %198 = load i32, ptr %50, align 4, !tbaa !73
  %199 = icmp slt i32 %198, 8
  br i1 %199, label %200, label %267

200:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false), !tbaa.struct !80
  %201 = load ptr, ptr %51, align 8, !tbaa !66
  %202 = load i16, ptr %201, align 8, !tbaa !67
  %203 = icmp eq i16 %202, 256
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load ptr, ptr %32, align 8, !tbaa !42
  %206 = getelementptr inbounds %struct.Object, ptr %205, i64 0, i32 112
  %207 = load ptr, ptr %206, align 8, !tbaa !43
  store ptr %207, ptr %52, align 8, !tbaa !82
  br label %208

208:                                              ; preds = %200, %204
  store ptr %2, ptr %53, align 8, !tbaa !42
  call void @mul_m4_m4m4(ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %10) #10
  %209 = load i32, ptr %56, align 4, !tbaa !73
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.DupliContext, ptr %4, i64 0, i32 8, i64 %210
  store i32 %60, ptr %211, align 4, !tbaa !72
  %212 = load i32, ptr %56, align 4, !tbaa !73
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %56, align 4, !tbaa !73
  %214 = load ptr, ptr %53, align 8, !tbaa !42
  %215 = getelementptr inbounds %struct.Object, ptr %214, i64 0, i32 55
  %216 = load i16, ptr %215, align 8, !tbaa !58
  %217 = zext i16 %216 to i32
  %218 = getelementptr inbounds %struct.Object, ptr %214, i64 0, i32 102
  %219 = load i8, ptr %218, align 8, !tbaa !62
  %220 = zext i8 %219 to i32
  %221 = and i32 %217, 2840
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %260, label %223

223:                                              ; preds = %208
  %224 = load ptr, ptr %4, align 8, !tbaa !34
  %225 = load i32, ptr %224, align 4, !tbaa !40
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = and i32 %220, 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %233, label %260

230:                                              ; preds = %223
  %231 = and i32 %220, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %260

233:                                              ; preds = %230, %227
  %234 = and i32 %217, 2048
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %260

236:                                              ; preds = %233
  %237 = and i32 %217, 16
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.Object, ptr %214, i64 0, i32 3
  %241 = load i16, ptr %240, align 8, !tbaa !79
  %242 = icmp eq i16 %241, 4
  %243 = select i1 %242, ptr @gen_dupli_verts_font, ptr null
  %244 = icmp eq i16 %241, 1
  %245 = select i1 %244, ptr @gen_dupli_verts, ptr %243
  br label %260

246:                                              ; preds = %236
  %247 = and i32 %217, 512
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.Object, ptr %214, i64 0, i32 3
  %251 = load i16, ptr %250, align 8, !tbaa !79
  %252 = icmp eq i16 %251, 1
  br i1 %252, label %260, label %259

253:                                              ; preds = %246
  %254 = and i32 %217, 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = and i32 %217, 256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256, %249
  br label %260

260:                                              ; preds = %208, %227, %230, %233, %239, %249, %253, %256, %259
  %261 = phi ptr [ null, %259 ], [ null, %208 ], [ null, %230 ], [ null, %227 ], [ @gen_dupli_particles, %233 ], [ @gen_dupli_faces, %249 ], [ @gen_dupli_frames, %253 ], [ @gen_dupli_group, %256 ], [ %245, %239 ]
  store ptr %261, ptr %57, align 8, !tbaa !66
  %262 = icmp eq ptr %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.DupliGenerator, ptr %261, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !83
  call void %265(ptr noundef nonnull %4) #10
  br label %266

266:                                              ; preds = %263, %260
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #10
  br label %267

267:                                              ; preds = %266, %197, %58
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  %268 = add nuw nsw i32 %60, 1
  %269 = getelementptr inbounds %struct.MPoly, ptr %59, i64 1
  %270 = icmp eq i32 %268, %24
  br i1 %270, label %271, label %58, !llvm.loop !243

271:                                              ; preds = %267, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_poly_center(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_poly_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tri_to_quat_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_mesh_calc_poly_area(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

declare void @BLI_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @psys_check_group_weights(ptr noundef) local_unnamed_addr #2

declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #2

declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_rand() local_unnamed_addr #2

declare void @psys_get_dupli_path_transform(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #2

declare void @psys_get_dupli_texture(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"DupliContext", !36, i64 0, !37, i64 8, !37, i64 9, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !37, i64 108, !39, i64 140, !39, i64 144, !36, i64 152, !36, i64 160}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !39, i64 0}
!41 = !{!"EvaluationContext", !39, i64 0}
!42 = !{!35, !36, i64 32}
!43 = !{!44, !36, i64 1256}
!44 = !{!"Object", !45, i64 0, !36, i64 120, !36, i64 128, !46, i64 136, !46, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !47, i64 312, !36, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !37, i64 1042, !37, i64 1043, !46, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !49, i64 1120, !46, i64 1124, !46, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !46, i64 1162, !37, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !46, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !50, i64 1304, !50, i64 1312, !39, i64 1320, !39, i64 1324, !48, i64 1328, !48, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !48, i64 1400, !36, i64 1416}
!45 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !46, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!46 = !{!"short", !37, i64 0}
!47 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!48 = !{!"ListBase", !36, i64 0, !36, i64 8}
!49 = !{!"float", !37, i64 0}
!50 = !{!"long", !37, i64 0}
!51 = !{!49, !49, i64 0}
!52 = !{!35, !37, i64 8}
!53 = !{!35, !36, i64 24}
!54 = !{!36, !36, i64 0}
!55 = !{!56, !36, i64 16}
!56 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !46, i64 32, !37, i64 34}
!57 = !{!44, !36, i64 216}
!58 = !{!44, !46, i64 952}
!59 = !{!44, !39, i64 944}
!60 = !{!61, !39, i64 136}
!61 = !{!"Group", !45, i64 0, !48, i64 120, !39, i64 136, !37, i64 140}
!62 = !{!44, !37, i64 1160}
!63 = !{!35, !36, i64 160}
!64 = !{!65, !36, i64 16}
!65 = !{!"DupliObject", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !46, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !36, i64 144}
!66 = !{!35, !36, i64 152}
!67 = !{!68, !46, i64 0}
!68 = !{!"DupliGenerator", !46, i64 0, !36, i64 8}
!69 = !{!65, !46, i64 108}
!70 = !{!35, !37, i64 9}
!71 = !{!65, !37, i64 111}
!72 = !{!39, !39, i64 0}
!73 = !{!35, !39, i64 140}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !75, !76}
!78 = !{!65, !37, i64 110}
!79 = !{!44, !46, i64 136}
!80 = !{i64 0, i64 8, !54, i64 8, i64 1, !81, i64 9, i64 1, !81, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 64, !81, i64 104, i64 4, !72, i64 108, i64 32, !81, i64 140, i64 4, !72, i64 144, i64 4, !72, i64 152, i64 8, !54, i64 160, i64 8, !54}
!81 = !{!37, !37, i64 0}
!82 = !{!35, !36, i64 16}
!83 = !{!68, !36, i64 8}
!84 = distinct !{!84, !75, !76}
!85 = !{!86, !39, i64 680}
!86 = !{!"Scene", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !48, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !46, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !87, i64 280, !96, i64 4264, !48, i64 4296, !48, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !46, i64 4376, !46, i64 4378, !39, i64 4380, !48, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !36, i64 4608, !102, i64 4616, !36, i64 4640, !50, i64 4648, !50, i64 4656, !89, i64 4664, !90, i64 4824, !103, i64 4888, !36, i64 4952}
!87 = !{!"RenderData", !88, i64 0, !36, i64 248, !36, i64 256, !91, i64 264, !92, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !49, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !46, i64 432, !46, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !46, i64 456, !46, i64 458, !46, i64 460, !46, i64 462, !46, i64 464, !46, i64 466, !39, i64 468, !46, i64 472, !46, i64 474, !46, i64 476, !46, i64 478, !46, i64 480, !46, i64 482, !39, i64 484, !39, i64 488, !46, i64 492, !46, i64 494, !39, i64 496, !39, i64 500, !46, i64 504, !46, i64 506, !46, i64 508, !46, i64 510, !46, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !46, i64 528, !46, i64 530, !46, i64 532, !46, i64 534, !46, i64 536, !46, i64 538, !46, i64 540, !46, i64 542, !93, i64 544, !93, i64 560, !94, i64 576, !48, i64 592, !46, i64 608, !46, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !39, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !46, i64 648, !46, i64 650, !46, i64 652, !46, i64 654, !46, i64 656, !46, i64 658, !49, i64 660, !49, i64 664, !46, i64 668, !46, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !39, i64 1704, !46, i64 1708, !46, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !46, i64 2524, !46, i64 2526, !49, i64 2528, !49, i64 2532, !46, i64 2536, !46, i64 2538, !49, i64 2540, !46, i64 2544, !46, i64 2546, !39, i64 2548, !46, i64 2552, !46, i64 2554, !46, i64 2556, !46, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !39, i64 2576, !49, i64 2580, !37, i64 2584, !95, i64 2616, !39, i64 3976, !39, i64 3980}
!88 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !46, i64 8, !46, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !89, i64 24, !90, i64 184}
!89 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!90 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!91 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !46, i64 48, !46, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!92 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !49, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!93 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!94 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!95 = !{!"BakeData", !88, i64 0, !37, i64 248, !46, i64 1272, !46, i64 1274, !46, i64 1276, !46, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!96 = !{!"AudioData", !39, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !39, i64 16, !46, i64 20, !46, i64 22, !49, i64 24, !49, i64 28}
!97 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!98 = !{!"GameData", !97, i64 0, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !46, i64 32, !37, i64 34, !99, i64 40, !46, i64 64, !46, i64 66, !49, i64 68, !100, i64 72, !49, i64 128, !49, i64 132, !39, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!99 = !{!"GameDome", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!100 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !39, i64 40, !49, i64 44, !49, i64 48, !46, i64 52, !46, i64 54}
!101 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !46, i64 6}
!102 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!103 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!104 = !{!44, !39, i64 980}
!105 = !{!48, !36, i64 0}
!106 = !{!44, !36, i64 120}
!107 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 66, !81, i64 98, i64 2, !108, i64 100, i64 4, !72, i64 104, i64 4, !72, i64 108, i64 4, !72, i64 112, i64 8, !54, i64 120, i64 8, !54, i64 128, i64 8, !54, i64 136, i64 2, !108, i64 138, i64 2, !108, i64 140, i64 4, !72, i64 144, i64 4, !72, i64 148, i64 4, !72, i64 152, i64 64, !81, i64 216, i64 8, !54, i64 224, i64 8, !54, i64 232, i64 8, !54, i64 240, i64 8, !54, i64 248, i64 8, !54, i64 256, i64 8, !54, i64 264, i64 8, !54, i64 272, i64 8, !54, i64 280, i64 8, !54, i64 288, i64 8, !54, i64 296, i64 8, !54, i64 304, i64 8, !54, i64 312, i64 4, !72, i64 316, i64 4, !72, i64 320, i64 4, !72, i64 324, i64 4, !72, i64 328, i64 2, !108, i64 330, i64 2, !108, i64 332, i64 2, !108, i64 334, i64 2, !108, i64 336, i64 2, !108, i64 338, i64 2, !108, i64 340, i64 2, !108, i64 342, i64 2, !108, i64 344, i64 4, !72, i64 348, i64 4, !72, i64 352, i64 4, !72, i64 356, i64 4, !72, i64 360, i64 8, !54, i64 368, i64 8, !54, i64 376, i64 8, !54, i64 384, i64 8, !54, i64 392, i64 8, !54, i64 400, i64 8, !54, i64 408, i64 8, !54, i64 416, i64 8, !54, i64 424, i64 8, !54, i64 432, i64 4, !72, i64 436, i64 4, !72, i64 440, i64 8, !54, i64 448, i64 8, !54, i64 456, i64 4, !72, i64 460, i64 4, !72, i64 464, i64 12, !81, i64 476, i64 12, !81, i64 488, i64 12, !81, i64 500, i64 12, !81, i64 512, i64 12, !81, i64 524, i64 12, !81, i64 536, i64 12, !81, i64 548, i64 12, !81, i64 560, i64 16, !81, i64 576, i64 16, !81, i64 592, i64 12, !81, i64 604, i64 12, !81, i64 616, i64 4, !51, i64 620, i64 4, !51, i64 624, i64 64, !81, i64 688, i64 64, !81, i64 752, i64 64, !81, i64 816, i64 64, !81, i64 880, i64 64, !81, i64 944, i64 4, !72, i64 948, i64 2, !108, i64 950, i64 2, !108, i64 952, i64 2, !108, i64 954, i64 2, !108, i64 956, i64 2, !108, i64 958, i64 2, !108, i64 960, i64 2, !108, i64 962, i64 2, !108, i64 964, i64 2, !108, i64 966, i64 1, !81, i64 967, i64 1, !81, i64 968, i64 4, !72, i64 972, i64 4, !72, i64 976, i64 4, !72, i64 980, i64 4, !72, i64 984, i64 4, !72, i64 988, i64 4, !51, i64 992, i64 4, !51, i64 996, i64 4, !51, i64 1000, i64 4, !51, i64 1004, i64 4, !51, i64 1008, i64 4, !51, i64 1012, i64 4, !51, i64 1016, i64 4, !51, i64 1020, i64 4, !51, i64 1024, i64 4, !51, i64 1028, i64 4, !51, i64 1032, i64 4, !51, i64 1036, i64 2, !108, i64 1038, i64 2, !108, i64 1040, i64 2, !108, i64 1042, i64 1, !81, i64 1043, i64 1, !81, i64 1044, i64 2, !108, i64 1046, i64 1, !81, i64 1047, i64 1, !81, i64 1048, i64 4, !51, i64 1052, i64 4, !51, i64 1056, i64 8, !54, i64 1064, i64 8, !54, i64 1072, i64 8, !54, i64 1080, i64 8, !54, i64 1088, i64 8, !54, i64 1096, i64 8, !54, i64 1104, i64 8, !54, i64 1112, i64 8, !54, i64 1120, i64 4, !51, i64 1124, i64 2, !108, i64 1126, i64 2, !108, i64 1128, i64 16, !81, i64 1144, i64 4, !72, i64 1148, i64 4, !72, i64 1152, i64 8, !54, i64 1160, i64 1, !81, i64 1161, i64 1, !81, i64 1162, i64 2, !108, i64 1164, i64 12, !81, i64 1176, i64 8, !54, i64 1184, i64 8, !54, i64 1192, i64 8, !54, i64 1200, i64 8, !54, i64 1208, i64 8, !54, i64 1216, i64 8, !54, i64 1224, i64 8, !54, i64 1232, i64 8, !54, i64 1240, i64 8, !54, i64 1248, i64 8, !54, i64 1256, i64 8, !54, i64 1264, i64 1, !81, i64 1265, i64 1, !81, i64 1266, i64 2, !108, i64 1268, i64 4, !51, i64 1272, i64 8, !54, i64 1280, i64 8, !54, i64 1288, i64 8, !54, i64 1296, i64 8, !54, i64 1304, i64 8, !109, i64 1312, i64 8, !109, i64 1320, i64 4, !72, i64 1324, i64 4, !72, i64 1328, i64 8, !54, i64 1336, i64 8, !54, i64 1344, i64 8, !54, i64 1352, i64 8, !54, i64 1360, i64 8, !54, i64 1368, i64 8, !54, i64 1376, i64 8, !54, i64 1384, i64 8, !81, i64 1392, i64 8, !54, i64 1400, i64 8, !54, i64 1408, i64 8, !54, i64 1416, i64 8, !54}
!108 = !{!46, !46, i64 0}
!109 = !{!50, !50, i64 0}
!110 = !{!44, !46, i64 98}
!111 = !{!44, !39, i64 976}
!112 = !{!44, !39, i64 972}
!113 = !{!44, !39, i64 968}
!114 = distinct !{!114, !75, !76}
!115 = !{!116, !36, i64 40}
!116 = !{!"VertexDupliData", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !37, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!117 = !{!116, !37, i64 32}
!118 = !{!44, !36, i64 296}
!119 = !{!116, !36, i64 0}
!120 = !{!121, !36, i64 272}
!121 = !{!"Mesh", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !122, i64 280, !122, i64 480, !122, i64 680, !122, i64 880, !122, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !46, i64 1348, !46, i64 1350, !49, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !46, i64 1366, !36, i64 1368}
!122 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!123 = !{!116, !36, i64 8}
!124 = !{!125, !36, i64 1320}
!125 = !{!"DerivedMesh", !122, i64 0, !122, i64 200, !122, i64 400, !122, i64 600, !122, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !49, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!126 = !{!116, !36, i64 24}
!127 = !{!125, !36, i64 1104}
!128 = !{!116, !39, i64 16}
!129 = !{!125, !36, i64 1680}
!130 = !{!131, !36, i64 0}
!131 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !48, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !37, i64 2090, !46, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!132 = !{!133, !49, i64 320}
!133 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !46, i64 244, !46, i64 246, !46, i64 248, !46, i64 250, !49, i64 252, !49, i64 256, !39, i64 260, !46, i64 264, !46, i64 266, !39, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !46, i64 284, !46, i64 286, !46, i64 288, !46, i64 290, !39, i64 292, !39, i64 296, !37, i64 300, !46, i64 304, !37, i64 306, !37, i64 307, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !39, i64 488, !39, i64 492, !36, i64 496, !134, i64 504, !49, i64 512, !49, i64 516, !49, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!134 = !{!"CharInfo", !46, i64 0, !46, i64 2, !37, i64 4, !37, i64 5, !46, i64 6}
!135 = !{!133, !49, i64 336}
!136 = !{!133, !49, i64 340}
!137 = distinct !{!137, !75, !76}
!138 = !{!139, !49, i64 0}
!139 = !{!"CharTrans", !49, i64 0, !49, i64 4, !49, i64 8, !46, i64 12, !46, i64 14, !37, i64 16}
!140 = !{!139, !49, i64 4}
!141 = !{!139, !49, i64 8}
!142 = distinct !{!142, !75, !76}
!143 = !{!144, !37, i64 56}
!144 = !{!"FaceDupliData", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!145 = !{!144, !36, i64 0}
!146 = !{!144, !36, i64 40}
!147 = !{!125, !36, i64 1344}
!148 = !{!144, !36, i64 48}
!149 = !{!125, !36, i64 1136}
!150 = !{!144, !39, i64 8}
!151 = !{!125, !36, i64 1200}
!152 = !{!144, !36, i64 16}
!153 = !{!125, !36, i64 1192}
!154 = !{!144, !36, i64 24}
!155 = !{!125, !36, i64 1168}
!156 = !{!144, !36, i64 32}
!157 = !{!158, !36, i64 16}
!158 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !48, i64 72, !48, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !48, i64 152, !37, i64 168, !37, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !46, i64 340, !46, i64 342, !46, i64 344, !46, i64 346, !37, i64 348, !37, i64 540, !46, i64 564, !46, i64 566, !36, i64 568, !36, i64 576, !48, i64 584, !36, i64 600, !36, i64 608, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !49, i64 648, !49, i64 652}
!159 = !{!158, !39, i64 320}
!160 = !{!158, !39, i64 328}
!161 = !{!158, !39, i64 308}
!162 = !{!158, !36, i64 568}
!163 = !{!164, !46, i64 184}
!164 = !{!"ParticleSettings", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !39, i64 156, !46, i64 160, !46, i64 162, !46, i64 164, !46, i64 166, !46, i64 168, !46, i64 170, !46, i64 172, !46, i64 174, !39, i64 176, !39, i64 180, !46, i64 184, !46, i64 186, !46, i64 188, !46, i64 190, !46, i64 192, !46, i64 194, !46, i64 196, !46, i64 198, !46, i64 200, !46, i64 202, !46, i64 204, !46, i64 206, !46, i64 208, !46, i64 210, !46, i64 212, !46, i64 214, !46, i64 216, !46, i64 218, !46, i64 220, !46, i64 222, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !49, i64 232, !49, i64 236, !37, i64 240, !37, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !46, i64 268, !46, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !37, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !46, i64 340, !37, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !37, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !37, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !39, i64 444, !39, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !37, i64 552, !49, i64 560, !49, i64 564, !39, i64 568, !39, i64 572, !37, i64 576, !36, i64 720, !48, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !46, i64 792, !37, i64 794}
!165 = !{!164, !46, i64 192}
!166 = !{!167, !36, i64 0}
!167 = !{!"ParticleSimulationData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !49, i64 40}
!168 = !{!167, !36, i64 8}
!169 = !{!167, !36, i64 16}
!170 = !{!167, !36, i64 24}
!171 = !{!164, !36, i64 752}
!172 = !{!164, !36, i64 720}
!173 = !{!164, !46, i64 160}
!174 = !{!158, !39, i64 316}
!175 = !{!158, !36, i64 64}
!176 = !{!158, !36, i64 56}
!177 = !{!158, !39, i64 336}
!178 = !{!158, !39, i64 332}
!179 = !{!158, !36, i64 136}
!180 = !{!164, !39, i64 176}
!181 = !{!182, !46, i64 24}
!182 = !{!"ParticleDupliWeight", !36, i64 0, !36, i64 8, !36, i64 16, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30}
!183 = distinct !{!183, !75, !76}
!184 = distinct !{!184, !75, !76}
!185 = distinct !{!185, !75, !76}
!186 = !{!182, !36, i64 16}
!187 = distinct !{!187, !75, !76}
!188 = distinct !{!188, !75, !76}
!189 = !{!158, !36, i64 24}
!190 = !{!191, !46, i64 196}
!191 = !{!"ParticleData", !192, i64 0, !192, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !39, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !39, i64 152, !39, i64 156, !37, i64 160, !49, i64 176, !49, i64 180, !49, i64 184, !39, i64 188, !39, i64 192, !46, i64 196, !46, i64 198}
!192 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !49, i64 52}
!193 = !{!191, !49, i64 140}
!194 = !{!191, !49, i64 180}
!195 = !{!158, !36, i64 32}
!196 = !{!197, !39, i64 4}
!197 = !{!"ChildParticle", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 24, !37, i64 40, !49, i64 56, !49, i64 60}
!198 = !{!199, !39, i64 56}
!199 = !{!"ParticleCacheKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !49, i64 52, !39, i64 56}
!200 = !{!192, !49, i64 52}
!201 = !{!65, !36, i64 144}
!202 = distinct !{!202, !75, !76}
!203 = !{!44, !46, i64 956}
!204 = !{!44, !46, i64 958}
!205 = distinct !{!205, !75, !76}
!206 = distinct !{!206, !75, !76}
!207 = distinct !{!207, !75, !76}
!208 = !{!131, !37, i64 2090}
!209 = !{!35, !39, i64 104}
!210 = distinct !{!210, !75, !76}
!211 = !{!121, !39, i64 1280}
!212 = !{!213, !39, i64 0}
!213 = !{!"DupliApplyData", !39, i64 0, !36, i64 8}
!214 = !{!213, !36, i64 8}
!215 = !{!216, !39, i64 64}
!216 = !{!"DupliExtraData", !37, i64 0, !39, i64 64}
!217 = distinct !{!217, !75, !76}
!218 = distinct !{!218, !75, !76}
!219 = !{!86, !36, i64 176}
!220 = distinct !{!220, !75, !76}
!221 = !{!44, !46, i64 948}
!222 = !{ptr @make_child_duplis_faces, ptr @make_child_duplis_verts}
!223 = distinct !{!223, !75, !76}
!224 = !{!86, !39, i64 232}
!225 = !{!226, !36, i64 32}
!226 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !46, i64 28, !46, i64 30, !36, i64 32}
!227 = !{!226, !39, i64 16}
!228 = distinct !{!228, !75, !76}
!229 = !{!116, !36, i64 48}
!230 = !{!125, !36, i64 1488}
!231 = !{!125, !36, i64 1528}
!232 = !{!125, !36, i64 1544}
!233 = distinct !{!233, !75, !76}
!234 = distinct !{!234, !75, !76}
!235 = !{!236, !39, i64 0}
!236 = !{!"MPoly", !39, i64 0, !39, i64 4, !46, i64 8, !37, i64 10, !37, i64 11}
!237 = !{!236, !39, i64 4}
!238 = !{!44, !49, i64 1052}
!239 = !{!240, !39, i64 0}
!240 = !{!"MLoop", !39, i64 0, !39, i64 4}
!241 = distinct !{!241, !75, !76}
!242 = distinct !{!242, !75, !76}
!243 = distinct !{!243, !75, !76}
