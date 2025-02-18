; ModuleID = 'blender/source/blender/render/intern/source/envmap.c'
source_filename = "blender/source/blender/render/intern/source/envmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.ShadBuf = type { i16, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, float, float, float, float, float, [3 x i32], i32, i32, %struct.ListBase, [1 x ptr] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }

@.str = private unnamed_addr constant [26 x i8] c"Creating Environment maps\00", align 1
@R = external global %struct.Render, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Envmap\00", align 1
@str = private unnamed_addr constant [22 x i8] c"Incorrect envmap size\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @env_rotate_scene(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef %1) #9
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %8) #9
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef %1) #9
  br label %16

14:                                               ; preds = %3
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef %1) #9
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %1) #9
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %8) #9
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %2, 1
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi ptr [ %18, %20 ], [ %44, %43 ]
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 11
  %25 = load i16, ptr %24, align 8, !tbaa !38
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 8
  br i1 %27, label %30, label %29

29:                                               ; preds = %22
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %28) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %28, ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  br label %33

30:                                               ; preds = %22
  br i1 %21, label %31, label %32

31:                                               ; preds = %30
  call void @copy_m4_m4(ptr noundef nonnull %28, ptr noundef nonnull %8) #9
  br label %33

32:                                               ; preds = %30
  call void @unit_m4(ptr noundef nonnull %28) #9
  br label %33

33:                                               ; preds = %31, %32, %29
  %34 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 8
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %34) #9
  %35 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 10
  %36 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %35, ptr noundef nonnull %9) #9
  call void @transpose_m3(ptr noundef nonnull %35) #9
  %37 = load i16, ptr %24, align 8, !tbaa !38
  br i1 %11, label %38, label %40

38:                                               ; preds = %33
  %39 = and i16 %37, -3
  store i16 %39, ptr %24, align 8, !tbaa !38
  br label %43

40:                                               ; preds = %33
  %41 = or i16 %37, 2
  store i16 %41, ptr %24, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 9
  call void @copy_m4_m4(ptr noundef nonnull %42, ptr noundef nonnull %6) #9
  br label %43

43:                                               ; preds = %38, %40
  %44 = load ptr, ptr %23, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %22, !llvm.loop !42

46:                                               ; preds = %43, %16
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %52

52:                                               ; preds = %50, %79
  %53 = phi ptr [ %48, %50 ], [ %88, %79 ]
  %54 = phi ptr [ null, %50 ], [ %80, %79 ]
  %55 = getelementptr inbounds %struct.ObjectRen, ptr %53, i64 0, i32 13
  %56 = load i32, ptr %55, align 4, !tbaa !45
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ObjectRen, ptr %53, i64 0, i32 21
  br label %60

60:                                               ; preds = %58, %73
  %61 = phi i32 [ 0, %58 ], [ %76, %73 ]
  %62 = phi ptr [ %54, %58 ], [ %74, %73 ]
  %63 = and i32 %61, 255
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load ptr, ptr %59, align 8, !tbaa !47
  %67 = lshr exact i32 %61, 8
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  br label %73

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.HaloRen, ptr %62, i64 1
  br label %73

73:                                               ; preds = %71, %65
  %74 = phi ptr [ %70, %65 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.HaloRen, ptr %74, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %75) #9
  %76 = add nuw nsw i32 %61, 1
  %77 = load i32, ptr %55, align 4, !tbaa !45
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %60, label %79, !llvm.loop !48

79:                                               ; preds = %73, %52
  %80 = phi ptr [ %54, %52 ], [ %74, %73 ]
  %81 = getelementptr inbounds %struct.ObjectRen, ptr %53, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !49
  %83 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 51
  %84 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %83, ptr noundef nonnull %51, ptr noundef nonnull %84) #9
  %85 = load ptr, ptr %81, align 8, !tbaa !49
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 51
  %87 = call zeroext i8 @invert_m4(ptr noundef nonnull %86) #9
  %88 = load ptr, ptr %53, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %52, !llvm.loop !50

90:                                               ; preds = %79, %46
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %247, label %94

94:                                               ; preds = %90
  %95 = icmp eq i32 %2, 1
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %98 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 2
  %99 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 2, i64 1
  %100 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 2, i64 2
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %102 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 1
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 2
  %104 = select i1 %95, ptr %97, ptr %96
  br label %105

105:                                              ; preds = %94, %244
  %106 = phi ptr [ %92, %94 ], [ %245, %244 ]
  %107 = getelementptr inbounds %struct.GroupObject, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !51
  %109 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 63
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %104, ptr noundef nonnull %109) #9
  %110 = getelementptr inbounds %struct.GroupObject, ptr %106, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !53
  %112 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 50
  %113 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %112, ptr noundef nonnull %10) #9
  %114 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 64
  call void @copy_m3_m4(ptr noundef nonnull %114, ptr noundef nonnull %10) #9
  %115 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59
  %116 = load ptr, ptr %110, align 8, !tbaa !53
  %117 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %115, ptr noundef nonnull %117) #9
  %118 = load float, ptr %98, align 16, !tbaa !54
  %119 = fneg float %118
  %120 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 20
  store float %119, ptr %120, align 8, !tbaa !54
  %121 = load float, ptr %99, align 4, !tbaa !54
  %122 = fneg float %121
  %123 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 20, i64 1
  store float %122, ptr %123, align 4, !tbaa !54
  %124 = load float, ptr %100, align 8, !tbaa !54
  %125 = fneg float %124
  %126 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 20, i64 2
  store float %125, ptr %126, align 8, !tbaa !54
  %127 = fmul float %121, %121
  %128 = call float @llvm.fmuladd.f32(float %118, float %118, float %127)
  %129 = call float @llvm.fmuladd.f32(float %124, float %124, float %128)
  %130 = fcmp ogt float %129, 0x38AA95A5C0000000
  br i1 %130, label %131, label %140

131:                                              ; preds = %105
  %132 = call float @sqrtf(float noundef %129) #9
  %133 = fdiv float 1.000000e+00, %132
  %134 = load float, ptr %120, align 4, !tbaa !54
  %135 = fmul float %134, %133
  store float %135, ptr %120, align 4, !tbaa !54
  %136 = load float, ptr %123, align 4, !tbaa !54
  %137 = fmul float %133, %136
  store float %137, ptr %123, align 4, !tbaa !54
  %138 = load float, ptr %126, align 4, !tbaa !54
  %139 = fmul float %133, %138
  br label %141

140:                                              ; preds = %105
  store float 0.000000e+00, ptr %120, align 4, !tbaa !54
  store float 0.000000e+00, ptr %123, align 4, !tbaa !54
  br label %141

141:                                              ; preds = %131, %140
  %142 = phi float [ 0.000000e+00, %140 ], [ %139, %131 ]
  store float %142, ptr %126, align 4, !tbaa !54
  %143 = load float, ptr %101, align 16, !tbaa !54
  %144 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 5
  store float %143, ptr %144, align 4, !tbaa !54
  %145 = load float, ptr %102, align 4, !tbaa !54
  %146 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 5, i64 1
  store float %145, ptr %146, align 4, !tbaa !54
  %147 = load float, ptr %103, align 8, !tbaa !54
  %148 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 5, i64 2
  store float %147, ptr %148, align 4, !tbaa !54
  %149 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 6
  %150 = load i16, ptr %149, align 8, !tbaa !56
  switch i16 %150, label %244 [
    i16 4, label %151
    i16 2, label %152
  ]

151:                                              ; preds = %141
  call void @area_lamp_vectors(ptr noundef %108) #9
  br label %244

152:                                              ; preds = %141
  %153 = load float, ptr %115, align 4, !tbaa !54
  %154 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 0, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !54
  %156 = fmul float %155, %155
  %157 = call float @llvm.fmuladd.f32(float %153, float %153, float %156)
  %158 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 0, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !54
  %160 = call float @llvm.fmuladd.f32(float %159, float %159, float %157)
  %161 = fcmp ogt float %160, 0x38AA95A5C0000000
  br i1 %161, label %162, label %171

162:                                              ; preds = %152
  %163 = call float @sqrtf(float noundef %160) #9
  %164 = fdiv float 1.000000e+00, %163
  %165 = load float, ptr %115, align 4, !tbaa !54
  %166 = fmul float %165, %164
  store float %166, ptr %115, align 4, !tbaa !54
  %167 = load float, ptr %154, align 4, !tbaa !54
  %168 = fmul float %164, %167
  store float %168, ptr %154, align 4, !tbaa !54
  %169 = load float, ptr %158, align 4, !tbaa !54
  %170 = fmul float %164, %169
  br label %172

171:                                              ; preds = %152
  store float 0.000000e+00, ptr %115, align 4, !tbaa !54
  store float 0.000000e+00, ptr %154, align 4, !tbaa !54
  br label %172

172:                                              ; preds = %162, %171
  %173 = phi float [ 0.000000e+00, %171 ], [ %170, %162 ]
  store float %173, ptr %158, align 4, !tbaa !54
  %174 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !54
  %176 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 1, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !54
  %178 = fmul float %177, %177
  %179 = call float @llvm.fmuladd.f32(float %175, float %175, float %178)
  %180 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 1, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !54
  %182 = call float @llvm.fmuladd.f32(float %181, float %181, float %179)
  %183 = fcmp ogt float %182, 0x38AA95A5C0000000
  br i1 %183, label %184, label %193

184:                                              ; preds = %172
  %185 = call float @sqrtf(float noundef %182) #9
  %186 = fdiv float 1.000000e+00, %185
  %187 = load float, ptr %174, align 4, !tbaa !54
  %188 = fmul float %187, %186
  store float %188, ptr %174, align 4, !tbaa !54
  %189 = load float, ptr %176, align 4, !tbaa !54
  %190 = fmul float %186, %189
  store float %190, ptr %176, align 4, !tbaa !54
  %191 = load float, ptr %180, align 4, !tbaa !54
  %192 = fmul float %186, %191
  br label %194

193:                                              ; preds = %172
  store float 0.000000e+00, ptr %174, align 4, !tbaa !54
  store float 0.000000e+00, ptr %176, align 4, !tbaa !54
  br label %194

194:                                              ; preds = %184, %193
  %195 = phi float [ 0.000000e+00, %193 ], [ %192, %184 ]
  store float %195, ptr %180, align 4, !tbaa !54
  %196 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !54
  %198 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 2, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !54
  %200 = fmul float %199, %199
  %201 = call float @llvm.fmuladd.f32(float %197, float %197, float %200)
  %202 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 59, i64 2, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !54
  %204 = call float @llvm.fmuladd.f32(float %203, float %203, float %201)
  %205 = fcmp ogt float %204, 0x38AA95A5C0000000
  br i1 %205, label %206, label %215

206:                                              ; preds = %194
  %207 = call float @sqrtf(float noundef %204) #9
  %208 = fdiv float 1.000000e+00, %207
  %209 = load float, ptr %196, align 4, !tbaa !54
  %210 = fmul float %209, %208
  store float %210, ptr %196, align 4, !tbaa !54
  %211 = load float, ptr %198, align 4, !tbaa !54
  %212 = fmul float %208, %211
  store float %212, ptr %198, align 4, !tbaa !54
  %213 = load float, ptr %202, align 4, !tbaa !54
  %214 = fmul float %208, %213
  br label %216

215:                                              ; preds = %194
  store float 0.000000e+00, ptr %196, align 4, !tbaa !54
  store float 0.000000e+00, ptr %198, align 4, !tbaa !54
  br label %216

216:                                              ; preds = %206, %215
  %217 = phi float [ 0.000000e+00, %215 ], [ %214, %206 ]
  store float %217, ptr %202, align 4, !tbaa !54
  %218 = load float, ptr %144, align 4, !tbaa !54
  %219 = fneg float %218
  %220 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 61
  store float %219, ptr %220, align 8, !tbaa !54
  %221 = load float, ptr %146, align 4, !tbaa !54
  %222 = fneg float %221
  %223 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 61, i64 1
  store float %222, ptr %223, align 4, !tbaa !54
  %224 = load float, ptr %148, align 4, !tbaa !54
  %225 = fneg float %224
  %226 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 61, i64 2
  store float %225, ptr %226, align 8, !tbaa !54
  call void @mul_m3_v3(ptr noundef nonnull %115, ptr noundef nonnull %220) #9
  %227 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 62
  %228 = load float, ptr %227, align 4, !tbaa !58
  %229 = load float, ptr %226, align 8, !tbaa !54
  %230 = fmul float %228, %229
  store float %230, ptr %226, align 8, !tbaa !54
  %231 = getelementptr inbounds %struct.LampRen, ptr %108, i64 0, i32 57
  %232 = load ptr, ptr %231, align 8, !tbaa !59
  %233 = icmp eq ptr %232, null
  br i1 %233, label %244, label %234

234:                                              ; preds = %216
  br i1 %95, label %235, label %240

235:                                              ; preds = %234
  %236 = getelementptr inbounds %struct.ShadBuf, ptr %232, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %236, ptr noundef nonnull %6) #9
  %237 = load ptr, ptr %231, align 8, !tbaa !59
  %238 = getelementptr inbounds %struct.ShadBuf, ptr %237, i64 0, i32 3
  %239 = getelementptr inbounds %struct.ShadBuf, ptr %237, i64 0, i32 5
  call void @mul_m4_m4m4(ptr noundef nonnull %238, ptr noundef nonnull %239, ptr noundef nonnull %7) #9
  br label %244

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.ShadBuf, ptr %232, i64 0, i32 3
  %242 = getelementptr inbounds %struct.ShadBuf, ptr %232, i64 0, i32 5
  %243 = getelementptr inbounds %struct.ShadBuf, ptr %232, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %241, ptr noundef nonnull %242, ptr noundef nonnull %243) #9
  br label %244

244:                                              ; preds = %141, %151, %216, %240, %235
  %245 = load ptr, ptr %106, align 8, !tbaa !34
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %105, !llvm.loop !60

247:                                              ; preds = %244, %90
  br i1 %11, label %267, label %248

248:                                              ; preds = %247
  call void @init_render_world(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %249 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %250 = load ptr, ptr %249, align 8, !tbaa !61
  %251 = getelementptr inbounds %struct.Scene, ptr %250, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !34
  %253 = icmp eq ptr %252, null
  br i1 %253, label %266, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi ptr [ %252, %254 ], [ %264, %256 ]
  %258 = getelementptr inbounds %struct.Base, ptr %257, i64 0, i32 7
  %259 = load ptr, ptr %258, align 8, !tbaa !77
  %260 = getelementptr inbounds %struct.Object, ptr %259, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %255, ptr noundef nonnull %260) #9
  %261 = load ptr, ptr %258, align 8, !tbaa !77
  %262 = getelementptr inbounds %struct.Object, ptr %261, i64 0, i32 50
  %263 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %262, ptr noundef nonnull %4) #9
  %264 = load ptr, ptr %257, align 8, !tbaa !34
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %256, !llvm.loop !79

266:                                              ; preds = %256, %248
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %267

267:                                              ; preds = %266, %247
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

declare void @area_lamp_vectors(ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_render_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @make_envmaps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %14 = load i32, ptr %13, align 8, !tbaa !80
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %490, label %17

17:                                               ; preds = %1
  %18 = and i32 %14, -65537
  store i32 %18, ptr %13, align 8, !tbaa !80
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %20, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  tail call void %22(ptr noundef %24, ptr noundef nonnull %19) #9
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 87
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 89
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 61
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 77
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 71
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %57 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %58 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %60

60:                                               ; preds = %17, %468
  %61 = phi i8 [ 0, %17 ], [ %469, %468 ]
  %62 = phi i32 [ 0, %17 ], [ %470, %468 ]
  %63 = load ptr, ptr %25, align 8, !tbaa !84
  %64 = getelementptr inbounds %struct.Main, ptr %63, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %468, label %67

67:                                               ; preds = %60, %464
  %68 = phi ptr [ %466, %464 ], [ %65, %60 ]
  %69 = phi i8 [ %465, %464 ], [ %61, %60 ]
  %70 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 6
  %71 = load i32, ptr %70, align 4, !tbaa !85
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %464, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.Tex, ptr %68, i64 0, i32 32
  %75 = load i16, ptr %74, align 8, !tbaa !88
  %76 = icmp eq i16 %75, 10
  br i1 %76, label %77, label %464

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Tex, ptr %68, i64 0, i32 56
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  %80 = icmp eq ptr %79, null
  br i1 %80, label %464, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 8, !tbaa !90
  %83 = icmp eq ptr %82, null
  br i1 %83, label %464, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 52
  %86 = load i32, ptr %85, align 8, !tbaa !92
  %87 = load i32, ptr %26, align 8, !tbaa !96
  %88 = and i32 %87, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %464, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 6
  %92 = load i16, ptr %91, align 2, !tbaa !97
  %93 = icmp eq i16 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #9
  %95 = load ptr, ptr %79, align 8, !tbaa !90
  %96 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %96) #9
  call void @normalize_m4(ptr noundef nonnull %10) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %59, ptr noundef nonnull %10) #9
  %97 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #9
  %98 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 4
  call void @copy_m3_m4(ptr noundef nonnull %98, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %464

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 12
  %101 = load i16, ptr %100, align 2, !tbaa !98
  %102 = sext i16 %101 to i32
  %103 = icmp sgt i32 %62, %102
  br i1 %103, label %464, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 13
  %106 = load i32, ptr %105, align 4, !tbaa !99
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %104
  %109 = load i32, ptr %13, align 8, !tbaa !80
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = icmp eq i32 %106, 1
  %113 = and i1 %112, %111
  br i1 %113, label %123, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 16
  %116 = load i16, ptr %115, align 2, !tbaa !100
  %117 = load i16, ptr %27, align 2, !tbaa !101
  %118 = icmp slt i16 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 15
  %121 = load i16, ptr %120, align 4, !tbaa !102
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119, %114, %108
  call void @BKE_free_envmapdata(ptr noundef nonnull %79) #9
  br label %124

124:                                              ; preds = %123, %119, %104
  %125 = load i32, ptr %105, align 4, !tbaa !99
  %126 = or i32 %125, %62
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 15
  store i16 1, ptr %129, align 4, !tbaa !102
  br label %130

130:                                              ; preds = %128, %124
  %131 = icmp eq i32 %125, 0
  br i1 %131, label %132, label %464

132:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %133 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %28) #9
  %134 = call ptr @RE_NewRender(ptr noundef nonnull @.str.1) #9
  %135 = load i16, ptr %30, align 2, !tbaa !101
  %136 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 16
  store i16 %135, ptr %136, align 2, !tbaa !100
  %137 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 11
  %138 = load i16, ptr %137, align 8, !tbaa !103
  %139 = sext i16 %138 to i32
  %140 = sext i16 %135 to i32
  %141 = mul nsw i32 %139, %140
  %142 = sdiv i32 %141, 100
  %143 = and i32 %142, 65532
  %144 = load i16, ptr %31, align 8, !tbaa !104
  %145 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 4
  store i16 %144, ptr %145, align 8, !tbaa !104
  %146 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %146, ptr noundef nonnull align 8 dereferenceable(3984) %29, i64 3984, i1 false), !tbaa.struct !105
  %147 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 47
  %148 = load i32, ptr %147, align 8, !tbaa !80
  %149 = and i32 %148, -17929
  store i32 %149, ptr %147, align 8, !tbaa !80
  %150 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 60
  %151 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 29
  store i16 0, ptr %151, align 4, !tbaa !109
  %152 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %150, i8 0, i64 16, i1 false)
  %153 = load i32, ptr %152, align 4, !tbaa !110
  %154 = sdiv i32 %153, 2
  %155 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 37
  store i32 %154, ptr %155, align 8, !tbaa !111
  %156 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 34
  %157 = load i32, ptr %156, align 8, !tbaa !112
  %158 = sdiv i32 %157, 2
  %159 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 38
  store i32 %158, ptr %159, align 4, !tbaa !113
  %160 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 30
  store i16 100, ptr %160, align 2, !tbaa !101
  %161 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 63
  store float 1.000000e+00, ptr %161, align 4, !tbaa !114
  %162 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 45, i32 64
  store float 1.000000e+00, ptr %162, align 8, !tbaa !115
  call void @RE_InitState(ptr noundef %134, ptr noundef null, ptr noundef nonnull %146, ptr noundef null, i32 noundef %143, i32 noundef %143, ptr noundef null) #9
  %163 = load ptr, ptr %25, align 8, !tbaa !84
  %164 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 43
  store ptr %163, ptr %164, align 8, !tbaa !84
  %165 = load ptr, ptr %32, align 8, !tbaa !61
  %166 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 44
  store ptr %165, ptr %166, align 8, !tbaa !61
  %167 = load i8, ptr %33, align 8, !tbaa !116
  %168 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 8
  store i8 %167, ptr %168, align 8, !tbaa !116
  %169 = load i32, ptr %26, align 8, !tbaa !96
  %170 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 48
  store i32 %169, ptr %170, align 8, !tbaa !96
  %171 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 5
  %172 = load i16, ptr %171, align 4, !tbaa !117
  %173 = icmp eq i16 %172, 1
  br i1 %173, label %174, label %177

174:                                              ; preds = %132
  %175 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 9
  %176 = load float, ptr %175, align 8, !tbaa !118
  br label %177

177:                                              ; preds = %174, %132
  %178 = phi float [ %176, %174 ], [ 1.000000e+00, %132 ]
  %179 = load ptr, ptr %79, align 8, !tbaa !90
  %180 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 7
  %181 = load float, ptr %180, align 8, !tbaa !119
  %182 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 8
  %183 = load float, ptr %182, align 4, !tbaa !120
  call void @RE_SetEnvmapCamera(ptr noundef %134, ptr noundef %179, float noundef %178, float noundef %181, float noundef %183) #9
  %184 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 34
  call void @copy_m4_m4(ptr noundef nonnull %184, ptr noundef nonnull %34) #9
  %185 = load ptr, ptr %35, align 8, !tbaa !121
  %186 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 86
  store ptr %185, ptr %186, align 8, !tbaa !121
  %187 = load ptr, ptr %36, align 8, !tbaa !122
  %188 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 87
  store ptr %187, ptr %188, align 8, !tbaa !122
  %189 = load ptr, ptr %37, align 8, !tbaa !123
  %190 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 96
  store ptr %189, ptr %190, align 8, !tbaa !123
  %191 = load ptr, ptr %38, align 8, !tbaa !124
  %192 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 97
  store ptr %191, ptr %192, align 8, !tbaa !124
  %193 = load ptr, ptr %39, align 8, !tbaa !125
  %194 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 88
  store ptr %193, ptr %194, align 8, !tbaa !125
  %195 = load ptr, ptr %40, align 8, !tbaa !126
  %196 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 89
  store ptr %195, ptr %196, align 8, !tbaa !126
  %197 = load i32, ptr %41, align 8, !tbaa !127
  %198 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 60
  store i32 %197, ptr %198, align 8, !tbaa !127
  %199 = load i32, ptr %42, align 4, !tbaa !128
  %200 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 61
  store i32 %199, ptr %200, align 4, !tbaa !128
  %201 = load i32, ptr %43, align 8, !tbaa !129
  %202 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 62
  store i32 %201, ptr %202, align 8, !tbaa !129
  %203 = load i32, ptr %44, align 4, !tbaa !130
  %204 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 63
  store i32 %203, ptr %204, align 4, !tbaa !130
  %205 = load i32, ptr %45, align 8, !tbaa !131
  %206 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 64
  store i32 %205, ptr %206, align 8, !tbaa !131
  %207 = load ptr, ptr %46, align 8, !tbaa !132
  %208 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 65
  store ptr %207, ptr %208, align 8, !tbaa !132
  %209 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %209, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !133
  %210 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %210, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa.struct !133
  %211 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %211, ptr noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false), !tbaa.struct !133
  %212 = load ptr, ptr %50, align 8, !tbaa !134
  %213 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 52
  store ptr %212, ptr %213, align 8, !tbaa !134
  %214 = load i32, ptr %51, align 8, !tbaa !135
  %215 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 71
  store i32 %214, ptr %215, align 8, !tbaa !135
  %216 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %216, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false), !tbaa.struct !133
  %217 = load ptr, ptr %53, align 8, !tbaa !136
  %218 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 69
  store ptr %217, ptr %218, align 8, !tbaa !136
  %219 = load ptr, ptr %54, align 8, !tbaa !137
  %220 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 41
  store ptr %219, ptr %220, align 8, !tbaa !137
  %221 = load ptr, ptr %79, align 8, !tbaa !90
  %222 = getelementptr inbounds %struct.Object, ptr %221, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %222) #9
  call void @normalize_m4(ptr noundef nonnull %6) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %28, ptr noundef nonnull %6) #9
  %223 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #9
  %224 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 4
  call void @copy_m3_m4(ptr noundef nonnull %224, ptr noundef nonnull %9) #9
  %225 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 9
  %226 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 32
  %227 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 33
  %228 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 3
  %229 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 10
  %230 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 20
  %231 = getelementptr inbounds %struct.Render, ptr %134, i64 0, i32 21
  br label %232

232:                                              ; preds = %426, %177
  %233 = phi i16 [ 0, %177 ], [ %427, %426 ]
  %234 = load i16, ptr %171, align 4, !tbaa !117
  %235 = icmp eq i16 %234, 1
  %236 = icmp ne i16 %233, 1
  %237 = and i1 %236, %235
  br i1 %237, label %423, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %55, align 8, !tbaa !138
  %240 = load ptr, ptr %56, align 8, !tbaa !139
  %241 = load ptr, ptr %225, align 8, !tbaa !140
  call void %239(ptr noundef %240, ptr noundef %241) #9
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  store float 0.000000e+00, ptr %57, align 4, !tbaa !54
  store float 0.000000e+00, ptr %58, align 4, !tbaa !54
  store float 0.000000e+00, ptr %4, align 4, !tbaa !54
  switch i16 %233, label %246 [
    i16 0, label %247
    i16 1, label %242
    i16 2, label %243
    i16 3, label %244
    i16 4, label %245
  ]

242:                                              ; preds = %238
  store float 0x400921FB60000000, ptr %4, align 4, !tbaa !54
  br label %247

243:                                              ; preds = %238
  store float 0x3FF921FB60000000, ptr %4, align 4, !tbaa !54
  br label %247

244:                                              ; preds = %238
  store float 0x3FF921FB60000000, ptr %4, align 4, !tbaa !54
  store float 0x3FF921FB60000000, ptr %57, align 4, !tbaa !54
  br label %247

245:                                              ; preds = %238
  store float 0x3FF921FB60000000, ptr %4, align 4, !tbaa !54
  store float 0x400921FB60000000, ptr %57, align 4, !tbaa !54
  br label %247

246:                                              ; preds = %238
  store float 0x3FF921FB60000000, ptr %4, align 4, !tbaa !54
  store float 0xBFF921FB60000000, ptr %57, align 4, !tbaa !54
  br label %247

247:                                              ; preds = %246, %245, %244, %243, %242, %238
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %9) #9
  call void @eul_to_mat4(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  %248 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  call void @copy_m4_m4(ptr noundef nonnull %226, ptr noundef nonnull %8) #9
  call void @copy_m4_m4(ptr noundef nonnull %227, ptr noundef nonnull %9) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %226, ptr noundef nonnull %7) #9
  %249 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %228, ptr noundef nonnull %9) #9
  call void @env_rotate_scene(ptr noundef %134, ptr noundef nonnull %9, i32 noundef 1)
  call void @project_renderdata(ptr noundef %134, ptr noundef nonnull @projectverto, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 1) #9
  %250 = load i32, ptr %229, align 4, !tbaa !141
  %251 = xor i32 %250, -1
  %252 = load ptr, ptr %210, align 8, !tbaa !34
  %253 = icmp eq ptr %252, null
  br i1 %253, label %291, label %254

254:                                              ; preds = %247, %287
  %255 = phi ptr [ %289, %287 ], [ %252, %247 ]
  %256 = phi ptr [ %288, %287 ], [ null, %247 ]
  %257 = getelementptr inbounds %struct.ObjectRen, ptr %255, i64 0, i32 8
  %258 = load i32, ptr %257, align 4, !tbaa !142
  %259 = and i32 %258, %251
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %287

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.ObjectRen, ptr %255, i64 0, i32 11
  %263 = load i32, ptr %262, align 4, !tbaa !143
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %287

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.ObjectRen, ptr %255, i64 0, i32 19
  br label %267

267:                                              ; preds = %265, %280
  %268 = phi i32 [ 0, %265 ], [ %285, %280 ]
  %269 = phi ptr [ %256, %265 ], [ %281, %280 ]
  %270 = and i32 %268, 255
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load ptr, ptr %266, align 8, !tbaa !144
  %274 = lshr exact i32 %268, 8
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds %struct.VlakTableNode, ptr %273, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !145
  br label %280

278:                                              ; preds = %267
  %279 = getelementptr inbounds %struct.VlakRen, ptr %269, i64 1
  br label %280

280:                                              ; preds = %278, %272
  %281 = phi ptr [ %277, %272 ], [ %279, %278 ]
  %282 = getelementptr inbounds %struct.VlakRen, ptr %281, i64 0, i32 7
  %283 = load i8, ptr %282, align 1, !tbaa !147
  %284 = or i8 %283, 2
  store i8 %284, ptr %282, align 1, !tbaa !147
  %285 = add nuw nsw i32 %268, 1
  %286 = icmp eq i32 %285, %263
  br i1 %286, label %287, label %267, !llvm.loop !149

287:                                              ; preds = %280, %261, %254
  %288 = phi ptr [ %256, %254 ], [ %256, %261 ], [ %281, %280 ]
  %289 = load ptr, ptr %255, align 8, !tbaa !34
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %254, !llvm.loop !150

291:                                              ; preds = %287, %247
  %292 = load ptr, ptr %79, align 8, !tbaa !90
  %293 = load ptr, ptr %210, align 8, !tbaa !34
  %294 = icmp eq ptr %293, null
  br i1 %294, label %332, label %299

295:                                              ; preds = %329, %299
  %296 = phi ptr [ %301, %299 ], [ %324, %329 ]
  %297 = load ptr, ptr %300, align 8, !tbaa !34
  %298 = icmp eq ptr %297, null
  br i1 %298, label %332, label %299, !llvm.loop !151

299:                                              ; preds = %291, %295
  %300 = phi ptr [ %297, %295 ], [ %293, %291 ]
  %301 = phi ptr [ %296, %295 ], [ null, %291 ]
  %302 = getelementptr inbounds %struct.ObjectRen, ptr %300, i64 0, i32 11
  %303 = load i32, ptr %302, align 4, !tbaa !143
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %295

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.ObjectRen, ptr %300, i64 0, i32 19
  %307 = getelementptr inbounds %struct.ObjectRen, ptr %300, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !49
  %309 = icmp eq ptr %308, %292
  br label %310

310:                                              ; preds = %305, %329
  %311 = phi i32 [ 0, %305 ], [ %330, %329 ]
  %312 = phi ptr [ %301, %305 ], [ %324, %329 ]
  %313 = and i32 %311, 255
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load ptr, ptr %306, align 8, !tbaa !144
  %317 = lshr exact i32 %311, 8
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds %struct.VlakTableNode, ptr %316, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !145
  br label %323

321:                                              ; preds = %310
  %322 = getelementptr inbounds %struct.VlakRen, ptr %312, i64 1
  br label %323

323:                                              ; preds = %321, %315
  %324 = phi ptr [ %320, %315 ], [ %322, %321 ]
  br i1 %309, label %325, label %329

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.VlakRen, ptr %324, i64 0, i32 7
  %327 = load i8, ptr %326, align 1, !tbaa !147
  %328 = or i8 %327, 2
  store i8 %328, ptr %326, align 1, !tbaa !147
  br label %329

329:                                              ; preds = %325, %323
  %330 = add nuw nsw i32 %311, 1
  %331 = icmp eq i32 %330, %303
  br i1 %331, label %295, label %310, !llvm.loop !152

332:                                              ; preds = %295, %291
  %333 = load ptr, ptr %37, align 8, !tbaa !123
  %334 = load ptr, ptr %38, align 8, !tbaa !124
  %335 = call i32 %333(ptr noundef %334) #9
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  call void @RE_TileProcessor(ptr noundef %134) #9
  br label %338

338:                                              ; preds = %337, %332
  %339 = load ptr, ptr %210, align 8, !tbaa !34
  %340 = icmp eq ptr %339, null
  br i1 %340, label %373, label %345

341:                                              ; preds = %366, %345
  %342 = phi ptr [ %347, %345 ], [ %367, %366 ]
  %343 = load ptr, ptr %346, align 8, !tbaa !34
  %344 = icmp eq ptr %343, null
  br i1 %344, label %373, label %345, !llvm.loop !153

345:                                              ; preds = %338, %341
  %346 = phi ptr [ %343, %341 ], [ %339, %338 ]
  %347 = phi ptr [ %342, %341 ], [ null, %338 ]
  %348 = getelementptr inbounds %struct.ObjectRen, ptr %346, i64 0, i32 11
  %349 = load i32, ptr %348, align 4, !tbaa !143
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %341

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.ObjectRen, ptr %346, i64 0, i32 19
  br label %353

353:                                              ; preds = %351, %366
  %354 = phi i32 [ 0, %351 ], [ %371, %366 ]
  %355 = phi ptr [ %347, %351 ], [ %367, %366 ]
  %356 = and i32 %354, 255
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load ptr, ptr %352, align 8, !tbaa !144
  %360 = lshr exact i32 %354, 8
  %361 = zext nneg i32 %360 to i64
  %362 = getelementptr inbounds %struct.VlakTableNode, ptr %359, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !145
  br label %366

364:                                              ; preds = %353
  %365 = getelementptr inbounds %struct.VlakRen, ptr %355, i64 1
  br label %366

366:                                              ; preds = %364, %358
  %367 = phi ptr [ %363, %358 ], [ %365, %364 ]
  %368 = getelementptr inbounds %struct.VlakRen, ptr %367, i64 0, i32 7
  %369 = load i8, ptr %368, align 1, !tbaa !147
  %370 = and i8 %369, -3
  store i8 %370, ptr %368, align 1, !tbaa !147
  %371 = add nuw nsw i32 %354, 1
  %372 = icmp eq i32 %371, %349
  br i1 %372, label %341, label %353, !llvm.loop !154

373:                                              ; preds = %341, %338
  call void @env_rotate_scene(ptr noundef %134, ptr noundef nonnull %9, i32 noundef 0)
  %374 = load ptr, ptr %37, align 8, !tbaa !123
  %375 = load ptr, ptr %38, align 8, !tbaa !124
  %376 = call i32 %374(ptr noundef %375) #9
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %415

378:                                              ; preds = %373
  %379 = load ptr, ptr %225, align 8, !tbaa !140
  %380 = getelementptr inbounds %struct.RenderResult, ptr %379, i64 0, i32 12
  %381 = load ptr, ptr %380, align 8, !tbaa !155
  %382 = load i32, ptr %230, align 8, !tbaa !157
  %383 = load i32, ptr %231, align 4, !tbaa !158
  %384 = call ptr @IMB_allocImBuf(i32 noundef %382, i32 noundef %383, i8 noundef zeroext 24, i32 noundef 33) #9
  %385 = getelementptr inbounds %struct.ImBuf, ptr %384, i64 0, i32 9
  %386 = load ptr, ptr %385, align 8, !tbaa !159
  %387 = getelementptr inbounds %struct.RenderLayer, ptr %381, i64 0, i32 11
  %388 = load ptr, ptr %387, align 8, !tbaa !162
  %389 = getelementptr inbounds %struct.ImBuf, ptr %384, i64 0, i32 5
  %390 = load i32, ptr %389, align 4, !tbaa !164
  %391 = getelementptr inbounds %struct.ImBuf, ptr %384, i64 0, i32 2
  %392 = load i32, ptr %391, align 8, !tbaa !165
  %393 = mul nsw i32 %392, %390
  %394 = getelementptr inbounds %struct.ImBuf, ptr %384, i64 0, i32 3
  %395 = load i32, ptr %394, align 4, !tbaa !166
  %396 = mul nsw i32 %393, %395
  %397 = sext i32 %396 to i64
  %398 = shl nsw i64 %397, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %386, ptr align 4 %388, i64 %398, i1 false)
  %399 = load i32, ptr %391, align 8, !tbaa !165
  %400 = load i32, ptr %394, align 4, !tbaa !166
  %401 = mul nsw i32 %400, %399
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %378
  %404 = load ptr, ptr %385, align 8, !tbaa !159
  %405 = getelementptr inbounds float, ptr %404, i64 3
  br label %406

406:                                              ; preds = %403, %406
  %407 = phi ptr [ %410, %406 ], [ %405, %403 ]
  %408 = phi i32 [ %409, %406 ], [ %401, %403 ]
  %409 = add nsw i32 %408, -1
  store float 1.000000e+00, ptr %407, align 4, !tbaa !54
  %410 = getelementptr inbounds float, ptr %407, i64 4
  %411 = icmp sgt i32 %408, 1
  br i1 %411, label %406, label %412, !llvm.loop !167

412:                                              ; preds = %406, %378
  %413 = sext i16 %233 to i64
  %414 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 2, i64 %413
  store ptr %384, ptr %414, align 8, !tbaa !34
  br label %415

415:                                              ; preds = %412, %373
  %416 = load ptr, ptr %37, align 8, !tbaa !123
  %417 = load ptr, ptr %38, align 8, !tbaa !124
  %418 = call i32 %416(ptr noundef %417) #9
  %419 = icmp eq i32 %418, 0
  %420 = add i16 %233, 1
  %421 = icmp slt i16 %420, 6
  %422 = and i1 %419, %421
  br i1 %422, label %426, label %428

423:                                              ; preds = %232
  %424 = add i16 %233, 1
  %425 = icmp slt i16 %424, 6
  br i1 %425, label %426, label %428

426:                                              ; preds = %423, %415
  %427 = phi i16 [ %424, %423 ], [ %420, %415 ]
  br label %232, !llvm.loop !168

428:                                              ; preds = %415, %423
  %429 = load ptr, ptr %37, align 8, !tbaa !123
  %430 = load ptr, ptr %38, align 8, !tbaa !124
  %431 = call i32 %429(ptr noundef %430) #9
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %428
  call void @BKE_free_envmapdata(ptr noundef nonnull %79) #9
  br label %443

434:                                              ; preds = %428
  %435 = load i32, ptr %147, align 8, !tbaa !80
  %436 = and i32 %435, 1
  %437 = icmp eq i32 %436, 0
  %438 = select i1 %437, i32 1, i32 2
  store i32 %438, ptr %105, align 4, !tbaa !99
  %439 = load ptr, ptr %32, align 8, !tbaa !61
  %440 = getelementptr inbounds %struct.Scene, ptr %439, i64 0, i32 22, i32 5
  %441 = load i32, ptr %440, align 8, !tbaa !169
  %442 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 14
  store i32 %441, ptr %442, align 8, !tbaa !179
  br label %443

443:                                              ; preds = %433, %434
  store ptr null, ptr %213, align 8, !tbaa !134
  store ptr null, ptr %220, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %198, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %208, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %210, i8 0, i64 44, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %211, i8 0, i64 16, i1 false)
  call void @RE_FreeRender(ptr noundef %134) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  %444 = load ptr, ptr %32, align 8, !tbaa !61
  %445 = getelementptr inbounds %struct.Scene, ptr %444, i64 0, i32 5
  %446 = load ptr, ptr %445, align 8, !tbaa !34
  %447 = icmp eq ptr %446, null
  br i1 %447, label %458, label %448

448:                                              ; preds = %443, %448
  %449 = phi ptr [ %456, %448 ], [ %446, %443 ]
  %450 = getelementptr inbounds %struct.Base, ptr %449, i64 0, i32 7
  %451 = load ptr, ptr %450, align 8, !tbaa !77
  %452 = getelementptr inbounds %struct.Object, ptr %451, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %28, ptr noundef nonnull %452) #9
  %453 = load ptr, ptr %450, align 8, !tbaa !77
  %454 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 50
  %455 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %454, ptr noundef nonnull %2) #9
  %456 = load ptr, ptr %449, align 8, !tbaa !34
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %448, !llvm.loop !79

458:                                              ; preds = %448, %443
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  %459 = load i16, ptr %100, align 2, !tbaa !98
  %460 = sext i16 %459 to i32
  %461 = icmp eq i32 %62, %460
  br i1 %461, label %462, label %464

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.EnvMap, ptr %79, i64 0, i32 15
  store i16 0, ptr %463, align 4, !tbaa !102
  br label %464

464:                                              ; preds = %84, %99, %458, %462, %130, %94, %77, %81, %73, %67
  %465 = phi i8 [ %69, %81 ], [ %69, %77 ], [ %69, %73 ], [ %69, %67 ], [ %69, %94 ], [ 1, %462 ], [ 1, %458 ], [ %69, %130 ], [ %69, %99 ], [ %69, %84 ]
  %466 = load ptr, ptr %68, align 8, !tbaa !34
  %467 = icmp eq ptr %466, null
  br i1 %467, label %468, label %67, !llvm.loop !180

468:                                              ; preds = %464, %60
  %469 = phi i8 [ %61, %60 ], [ %465, %464 ]
  %470 = add nuw nsw i32 %62, 1
  %471 = icmp eq i32 %470, 5
  br i1 %471, label %472, label %60, !llvm.loop !181

472:                                              ; preds = %468
  %473 = and i32 %14, 65536
  %474 = icmp eq i8 %469, 0
  br i1 %474, label %487, label %475

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %477 = load ptr, ptr %476, align 8, !tbaa !182
  %478 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %479 = load ptr, ptr %478, align 8, !tbaa !183
  %480 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %481 = load ptr, ptr %480, align 8, !tbaa !140
  call void %477(ptr noundef %479, ptr noundef %481) #9
  %482 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %483 = load ptr, ptr %482, align 8, !tbaa !138
  %484 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %485 = load ptr, ptr %484, align 8, !tbaa !139
  %486 = load ptr, ptr %480, align 8, !tbaa !140
  call void %483(ptr noundef %485, ptr noundef %486) #9
  br label %487

487:                                              ; preds = %475, %472
  %488 = load i32, ptr %13, align 8, !tbaa !80
  %489 = or i32 %488, %473
  store i32 %489, ptr %13, align 8, !tbaa !80
  br label %490

490:                                              ; preds = %1, %487
  ret void
}

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare void @BKE_free_envmapdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @envmaptex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.TexResult, align 8
  %13 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %14 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !97
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !90
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %7
  store float 0.000000e+00, ptr %5, align 8, !tbaa !184
  br label %294

25:                                               ; preds = %21
  br i1 %20, label %26, label %106

26:                                               ; preds = %17, %25
  %27 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %28 = load ptr, ptr %27, align 8, !tbaa !186
  %29 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !187
  %30 = icmp eq ptr %28, null
  br i1 %30, label %106, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Image, ptr %28, i64 0, i32 9
  %33 = load i16, ptr %32, align 4, !tbaa !188
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %106, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %106

39:                                               ; preds = %35
  %40 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %28, ptr noundef null, ptr noundef %6) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %96, label %42

42:                                               ; preds = %39
  tail call void @BLI_lock_thread(i32 noundef 0) #9
  %43 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2
  %44 = load ptr, ptr %36, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %95

46:                                               ; preds = %42
  tail call void @BKE_free_envmapdata(ptr noundef %15) #9
  %47 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !166
  %49 = sdiv i32 %48, 2
  %50 = mul nsw i32 %49, 3
  %51 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !165
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 5
  store i16 0, ptr %55, align 4, !tbaa !117
  %56 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  store i32 2, ptr %56, align 4, !tbaa !99
  br label %67

57:                                               ; preds = %46
  %58 = icmp eq i32 %52, %48
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 5
  store i16 1, ptr %60, align 4, !tbaa !117
  %61 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  store i32 2, ptr %61, align 4, !tbaa !99
  br label %67

62:                                               ; preds = %57
  %63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %64 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  store i32 0, ptr %64, align 4, !tbaa !99
  %65 = load ptr, ptr %29, align 8, !tbaa !187
  %66 = getelementptr inbounds %struct.Image, ptr %65, i64 0, i32 9
  store i16 0, ptr %66, align 4, !tbaa !188
  br label %67

67:                                               ; preds = %62, %59, %54
  %68 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  %69 = load i32, ptr %68, align 4, !tbaa !99
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 5
  %73 = load i16, ptr %72, align 4, !tbaa !117
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %71, %75
  %76 = phi i64 [ %79, %75 ], [ 0, %71 ]
  %77 = tail call ptr @IMB_allocImBuf(i32 noundef %49, i32 noundef %49, i8 noundef zeroext 24, i32 noundef 33) #9
  %78 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %76
  store ptr %77, ptr %78, align 8, !tbaa !34
  %79 = add nuw nsw i64 %76, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %81, label %75, !llvm.loop !190

81:                                               ; preds = %75
  tail call void @IMB_float_from_rect(ptr noundef nonnull %40) #9
  %82 = load ptr, ptr %43, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %82, ptr noundef nonnull %40, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %49, i32 noundef %49) #9
  %83 = load ptr, ptr %36, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %83, ptr noundef nonnull %40, i32 noundef 0, i32 noundef 0, i32 noundef %49, i32 noundef 0, i32 noundef %49, i32 noundef %49) #9
  %84 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = shl nsw i32 %49, 1
  tail call void @IMB_rectcpy(ptr noundef %85, ptr noundef nonnull %40, i32 noundef 0, i32 noundef 0, i32 noundef %86, i32 noundef 0, i32 noundef %49, i32 noundef %49) #9
  %87 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 3
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %88, ptr noundef nonnull %40, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %49, i32 noundef %49, i32 noundef %49) #9
  %89 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 4
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %90, ptr noundef nonnull %40, i32 noundef 0, i32 noundef 0, i32 noundef %49, i32 noundef %49, i32 noundef %49, i32 noundef %49) #9
  %91 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 5
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %92, ptr noundef nonnull %40, i32 noundef 0, i32 noundef 0, i32 noundef %86, i32 noundef %49, i32 noundef %49, i32 noundef %49) #9
  br label %95

93:                                               ; preds = %71
  %94 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %40) #9
  store ptr %94, ptr %36, align 8, !tbaa !34
  tail call void @IMB_float_from_rect(ptr noundef %94) #9
  br label %95

95:                                               ; preds = %42, %67, %81, %93
  tail call void @BLI_unlock_thread(i32 noundef 0) #9
  br label %98

96:                                               ; preds = %39
  %97 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  store i32 0, ptr %97, align 4, !tbaa !99
  br label %98

98:                                               ; preds = %96, %95
  %99 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 5
  %100 = load i16, ptr %99, align 4, !tbaa !117
  %101 = icmp eq i16 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  store i16 1, ptr %103, align 8, !tbaa !191
  br label %104

104:                                              ; preds = %102, %98
  %105 = load ptr, ptr %29, align 8, !tbaa !187
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %105, ptr noundef %40, ptr noundef %6) #9
  br label %106

106:                                              ; preds = %26, %31, %104, %35, %25
  %107 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  %108 = load i32, ptr %107, align 4, !tbaa !99
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store float 0.000000e+00, ptr %5, align 8, !tbaa !184
  br label %294

111:                                              ; preds = %106
  %112 = load float, ptr %1, align 4, !tbaa !54
  store float %112, ptr %8, align 4, !tbaa !54
  %113 = getelementptr inbounds float, ptr %1, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !54
  %115 = getelementptr inbounds float, ptr %8, i64 1
  store float %114, ptr %115, align 4, !tbaa !54
  %116 = getelementptr inbounds float, ptr %1, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !54
  %118 = getelementptr inbounds float, ptr %8, i64 2
  store float %117, ptr %118, align 4, !tbaa !54
  %119 = load ptr, ptr %15, align 8, !tbaa !90
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %122, ptr noundef nonnull %8) #9
  br label %124

123:                                              ; preds = %111
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %8) #9
  br label %124

124:                                              ; preds = %123, %121
  %125 = call fastcc i32 @envcube_isect(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !192
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq i32 %4, 0
  br i1 %129, label %292, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %15, align 8, !tbaa !90
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %134, ptr noundef %2) #9
  call void @mul_m3_v3(ptr noundef nonnull %134, ptr noundef %3) #9
  br label %136

135:                                              ; preds = %130
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef %2) #9
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef %3) #9
  br label %136

136:                                              ; preds = %135, %133
  switch i32 %125, label %151 [
    i32 4, label %137
    i32 2, label %137
    i32 5, label %143
    i32 3, label %143
  ]

137:                                              ; preds = %136, %136
  %138 = load float, ptr %2, align 4, !tbaa !54
  store float %138, ptr %10, align 4, !tbaa !54
  %139 = load float, ptr %3, align 4, !tbaa !54
  store float %139, ptr %11, align 4, !tbaa !54
  %140 = getelementptr inbounds float, ptr %2, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !54
  %142 = getelementptr inbounds float, ptr %10, i64 1
  store float %141, ptr %142, align 4, !tbaa !54
  br label %157

143:                                              ; preds = %136, %136
  %144 = getelementptr inbounds float, ptr %2, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !54
  store float %145, ptr %10, align 4, !tbaa !54
  %146 = getelementptr inbounds float, ptr %2, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !54
  %148 = getelementptr inbounds float, ptr %10, i64 1
  store float %147, ptr %148, align 4, !tbaa !54
  %149 = getelementptr inbounds float, ptr %3, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !54
  store float %150, ptr %11, align 4, !tbaa !54
  br label %157

151:                                              ; preds = %136
  %152 = load float, ptr %2, align 4, !tbaa !54
  store float %152, ptr %10, align 4, !tbaa !54
  %153 = load float, ptr %3, align 4, !tbaa !54
  store float %153, ptr %11, align 4, !tbaa !54
  %154 = getelementptr inbounds float, ptr %2, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !54
  %156 = getelementptr inbounds float, ptr %10, i64 1
  store float %155, ptr %156, align 4, !tbaa !54
  br label %157

157:                                              ; preds = %137, %143, %151
  %158 = phi i64 [ 2, %137 ], [ 2, %143 ], [ 1, %151 ]
  %159 = getelementptr inbounds float, ptr %3, i64 %158
  %160 = load float, ptr %159, align 4, !tbaa !54
  %161 = getelementptr inbounds float, ptr %11, i64 1
  store float %160, ptr %161, align 4, !tbaa !54
  %162 = call i32 @imagewraposa(ptr noundef %0, ptr noundef null, ptr noundef %128, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, ptr noundef %6) #9
  %163 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %164 = load float, ptr %163, align 8, !tbaa !193
  %165 = fcmp olt float %164, 1.000000e+00
  br i1 %165, label %166, label %294

166:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #9
  %167 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 6
  store ptr null, ptr %167, align 8, !tbaa !194
  %168 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 6
  store ptr null, ptr %168, align 8, !tbaa !194
  %169 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %170 = load i32, ptr %169, align 4, !tbaa !195
  %171 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 5
  store i32 %170, ptr %171, align 4, !tbaa !195
  %172 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 5
  store i32 %170, ptr %172, align 4, !tbaa !195
  %173 = load float, ptr %2, align 4, !tbaa !54
  %174 = load float, ptr %8, align 4, !tbaa !54
  %175 = fadd float %173, %174
  store float %175, ptr %8, align 4, !tbaa !54
  %176 = getelementptr inbounds float, ptr %2, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !54
  %178 = load float, ptr %115, align 4, !tbaa !54
  %179 = fadd float %177, %178
  store float %179, ptr %115, align 4, !tbaa !54
  %180 = getelementptr inbounds float, ptr %2, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !54
  %182 = load float, ptr %118, align 4, !tbaa !54
  %183 = fadd float %181, %182
  store float %183, ptr %118, align 4, !tbaa !54
  %184 = call fastcc i32 @envcube_isect(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !192
  %185 = fsub float %175, %173
  store float %185, ptr %8, align 4, !tbaa !54
  %186 = fsub float %179, %177
  store float %186, ptr %115, align 4, !tbaa !54
  %187 = fsub float %183, %181
  store float %187, ptr %118, align 4, !tbaa !54
  %188 = icmp eq i32 %125, %184
  br i1 %188, label %209, label %189

189:                                              ; preds = %166
  %190 = zext nneg i32 %184 to i64
  %191 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !34
  switch i32 %184, label %200 [
    i32 4, label %193
    i32 2, label %193
    i32 5, label %196
    i32 3, label %196
  ]

193:                                              ; preds = %189, %189
  store float %173, ptr %10, align 4, !tbaa !54
  %194 = load float, ptr %3, align 4, !tbaa !54
  store float %194, ptr %11, align 4, !tbaa !54
  %195 = getelementptr inbounds float, ptr %10, i64 1
  store float %181, ptr %195, align 4, !tbaa !54
  br label %203

196:                                              ; preds = %189, %189
  store float %177, ptr %10, align 4, !tbaa !54
  %197 = getelementptr inbounds float, ptr %10, i64 1
  store float %181, ptr %197, align 4, !tbaa !54
  %198 = getelementptr inbounds float, ptr %3, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !54
  store float %199, ptr %11, align 4, !tbaa !54
  br label %203

200:                                              ; preds = %189
  store float %173, ptr %10, align 4, !tbaa !54
  %201 = load float, ptr %3, align 4, !tbaa !54
  store float %201, ptr %11, align 4, !tbaa !54
  %202 = getelementptr inbounds float, ptr %10, i64 1
  store float %177, ptr %202, align 4, !tbaa !54
  br label %203

203:                                              ; preds = %193, %196, %200
  %204 = phi i64 [ 2, %193 ], [ 2, %196 ], [ 1, %200 ]
  %205 = getelementptr inbounds float, ptr %3, i64 %204
  %206 = load float, ptr %205, align 4, !tbaa !54
  %207 = getelementptr inbounds float, ptr %11, i64 1
  store float %206, ptr %207, align 4, !tbaa !54
  %208 = call i32 @imagewraposa(ptr noundef %0, ptr noundef null, ptr noundef %192, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6) #9
  br label %211

209:                                              ; preds = %166
  %210 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %210, i8 0, i64 16, i1 false)
  br label %211

211:                                              ; preds = %209, %203
  %212 = load float, ptr %3, align 4, !tbaa !54
  %213 = load float, ptr %8, align 4, !tbaa !54
  %214 = fadd float %212, %213
  store float %214, ptr %8, align 4, !tbaa !54
  %215 = getelementptr inbounds float, ptr %3, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !54
  %217 = load float, ptr %115, align 4, !tbaa !54
  %218 = fadd float %216, %217
  store float %218, ptr %115, align 4, !tbaa !54
  %219 = getelementptr inbounds float, ptr %3, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !54
  %221 = load float, ptr %118, align 4, !tbaa !54
  %222 = fadd float %220, %221
  store float %222, ptr %118, align 4, !tbaa !54
  %223 = call fastcc i32 @envcube_isect(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !192
  %224 = fsub float %214, %212
  store float %224, ptr %8, align 4, !tbaa !54
  %225 = fsub float %218, %216
  store float %225, ptr %115, align 4, !tbaa !54
  %226 = fsub float %222, %220
  store float %226, ptr %118, align 4, !tbaa !54
  %227 = icmp eq i32 %125, %223
  br i1 %227, label %248, label %228

228:                                              ; preds = %211
  %229 = zext nneg i32 %223 to i64
  %230 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !34
  switch i32 %223, label %240 [
    i32 4, label %232
    i32 2, label %232
    i32 5, label %236
    i32 3, label %236
  ]

232:                                              ; preds = %228, %228
  %233 = load float, ptr %2, align 4, !tbaa !54
  store float %233, ptr %10, align 4, !tbaa !54
  store float %212, ptr %11, align 4, !tbaa !54
  %234 = load float, ptr %180, align 4, !tbaa !54
  %235 = getelementptr inbounds float, ptr %10, i64 1
  store float %234, ptr %235, align 4, !tbaa !54
  br label %244

236:                                              ; preds = %228, %228
  %237 = load float, ptr %176, align 4, !tbaa !54
  store float %237, ptr %10, align 4, !tbaa !54
  %238 = load float, ptr %180, align 4, !tbaa !54
  %239 = getelementptr inbounds float, ptr %10, i64 1
  store float %238, ptr %239, align 4, !tbaa !54
  store float %216, ptr %11, align 4, !tbaa !54
  br label %244

240:                                              ; preds = %228
  %241 = load float, ptr %2, align 4, !tbaa !54
  store float %241, ptr %10, align 4, !tbaa !54
  store float %212, ptr %11, align 4, !tbaa !54
  %242 = load float, ptr %176, align 4, !tbaa !54
  %243 = getelementptr inbounds float, ptr %10, i64 1
  store float %242, ptr %243, align 4, !tbaa !54
  br label %244

244:                                              ; preds = %232, %236, %240
  %245 = phi float [ %220, %232 ], [ %220, %236 ], [ %216, %240 ]
  %246 = getelementptr inbounds float, ptr %11, i64 1
  store float %245, ptr %246, align 4, !tbaa !54
  %247 = call i32 @imagewraposa(ptr noundef %0, ptr noundef null, ptr noundef %231, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef %6) #9
  br label %250

248:                                              ; preds = %211
  %249 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %249, i8 0, i64 16, i1 false)
  br label %250

250:                                              ; preds = %248, %244
  %251 = load float, ptr %163, align 8, !tbaa !193
  %252 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 4
  %253 = load float, ptr %252, align 8, !tbaa !193
  %254 = fadd float %251, %253
  %255 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 4
  %256 = load float, ptr %255, align 8, !tbaa !193
  %257 = fadd float %254, %256
  %258 = fcmp une float %257, 0.000000e+00
  br i1 %258, label %259, label %291

259:                                              ; preds = %250
  %260 = fdiv float 1.000000e+00, %257
  %261 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %262 = load float, ptr %261, align 4, !tbaa !196
  %263 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 1
  %264 = load float, ptr %263, align 4, !tbaa !196
  %265 = fmul float %253, %264
  %266 = call float @llvm.fmuladd.f32(float %251, float %262, float %265)
  %267 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 1
  %268 = load float, ptr %267, align 4, !tbaa !196
  %269 = call float @llvm.fmuladd.f32(float %256, float %268, float %266)
  %270 = fmul float %260, %269
  store float %270, ptr %261, align 4, !tbaa !196
  %271 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %272 = load float, ptr %271, align 8, !tbaa !197
  %273 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 2
  %274 = load float, ptr %273, align 8, !tbaa !197
  %275 = fmul float %253, %274
  %276 = call float @llvm.fmuladd.f32(float %251, float %272, float %275)
  %277 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 2
  %278 = load float, ptr %277, align 8, !tbaa !197
  %279 = call float @llvm.fmuladd.f32(float %256, float %278, float %276)
  %280 = fmul float %260, %279
  store float %280, ptr %271, align 8, !tbaa !197
  %281 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %282 = load float, ptr %281, align 4, !tbaa !198
  %283 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 3
  %284 = load float, ptr %283, align 4, !tbaa !198
  %285 = fmul float %253, %284
  %286 = call float @llvm.fmuladd.f32(float %251, float %282, float %285)
  %287 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 3
  %288 = load float, ptr %287, align 4, !tbaa !198
  %289 = call float @llvm.fmuladd.f32(float %256, float %288, float %286)
  %290 = fmul float %260, %289
  store float %290, ptr %281, align 4, !tbaa !198
  br label %291

291:                                              ; preds = %259, %250
  store float 1.000000e+00, ptr %163, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  br label %294

292:                                              ; preds = %124
  %293 = call i32 @imagewrap(ptr noundef %0, ptr noundef null, ptr noundef %128, ptr noundef nonnull %9, ptr noundef %5, ptr noundef %6) #9
  br label %294

294:                                              ; preds = %292, %291, %157, %110, %24
  %295 = phi i32 [ 0, %24 ], [ 0, %110 ], [ 1, %157 ], [ 1, %291 ], [ 1, %292 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  ret i32 %295
}

declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @envcube_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !117
  %6 = icmp eq i16 %5, 1
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  br i1 %6, label %9, label %23

9:                                                ; preds = %3
  %10 = fdiv float 1.000000e+00, %8
  %11 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 9
  %12 = load float, ptr %11, align 8, !tbaa !118
  %13 = fmul float %12, %10
  %14 = load float, ptr %1, align 4, !tbaa !54
  %15 = fmul float %13, %14
  store float %15, ptr %2, align 4, !tbaa !54
  %16 = load float, ptr %11, align 8, !tbaa !118
  %17 = fneg float %16
  %18 = fmul float %10, %17
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !54
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds float, ptr %2, i64 1
  store float %21, ptr %22, align 4, !tbaa !54
  br label %89

23:                                               ; preds = %3
  %24 = load float, ptr %1, align 4, !tbaa !54
  %25 = tail call float @llvm.fabs.f32(float %24)
  %26 = fneg float %25
  %27 = fcmp ugt float %8, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !54
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fneg float %31
  %33 = fcmp ugt float %8, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = fdiv float -1.000000e+00, %8
  %36 = fmul float %35, %24
  store float %36, ptr %2, align 4, !tbaa !54
  %37 = load float, ptr %29, align 4, !tbaa !54
  %38 = fmul float %35, %37
  %39 = getelementptr inbounds float, ptr %2, i64 1
  store float %38, ptr %39, align 4, !tbaa !54
  br label %89

40:                                               ; preds = %28, %23
  %41 = fcmp ult float %8, %25
  br i1 %41, label %54, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds float, ptr %1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ult float %8, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = fdiv float 1.000000e+00, %8
  %49 = fmul float %48, %24
  store float %49, ptr %2, align 4, !tbaa !54
  %50 = fneg float %48
  %51 = load float, ptr %43, align 4, !tbaa !54
  %52 = fmul float %51, %50
  %53 = getelementptr inbounds float, ptr %2, i64 1
  store float %52, ptr %53, align 4, !tbaa !54
  br label %89

54:                                               ; preds = %42, %40
  %55 = getelementptr inbounds float, ptr %1, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !54
  %57 = fcmp ult float %56, %25
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = fdiv float 1.000000e+00, %56
  %60 = fmul float %24, %59
  store float %60, ptr %2, align 4, !tbaa !54
  %61 = load float, ptr %7, align 4, !tbaa !54
  %62 = fmul float %59, %61
  %63 = getelementptr inbounds float, ptr %2, i64 1
  store float %62, ptr %63, align 4, !tbaa !54
  br label %89

64:                                               ; preds = %54
  %65 = tail call float @llvm.fabs.f32(float %56)
  %66 = fneg float %65
  %67 = fcmp ugt float %24, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = fdiv float -1.000000e+00, %24
  %70 = fmul float %69, %56
  store float %70, ptr %2, align 4, !tbaa !54
  %71 = load float, ptr %7, align 4, !tbaa !54
  %72 = fmul float %69, %71
  %73 = getelementptr inbounds float, ptr %2, i64 1
  store float %72, ptr %73, align 4, !tbaa !54
  br label %89

74:                                               ; preds = %64
  %75 = fcmp ugt float %56, %26
  %76 = getelementptr inbounds float, ptr %2, i64 1
  br i1 %75, label %83, label %77

77:                                               ; preds = %74
  %78 = fdiv float -1.000000e+00, %56
  %79 = fneg float %78
  %80 = fmul float %24, %79
  store float %80, ptr %2, align 4, !tbaa !54
  %81 = load float, ptr %7, align 4, !tbaa !54
  %82 = fmul float %78, %81
  store float %82, ptr %76, align 4, !tbaa !54
  br label %89

83:                                               ; preds = %74
  %84 = fdiv float 1.000000e+00, %24
  %85 = fneg float %84
  %86 = fmul float %56, %85
  store float %86, ptr %2, align 4, !tbaa !54
  %87 = load float, ptr %7, align 4, !tbaa !54
  %88 = fmul float %84, %87
  store float %88, ptr %76, align 4, !tbaa !54
  br label %89

89:                                               ; preds = %34, %58, %77, %83, %68, %47, %9
  %90 = phi i32 [ 1, %9 ], [ 0, %34 ], [ 1, %47 ], [ 2, %58 ], [ 3, %68 ], [ 4, %77 ], [ 5, %83 ]
  %91 = load float, ptr %2, align 4, !tbaa !54
  %92 = tail call float @llvm.fmuladd.f32(float %91, float 5.000000e-01, float 5.000000e-01)
  store float %92, ptr %2, align 4, !tbaa !54
  %93 = getelementptr inbounds float, ptr %2, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !54
  %95 = tail call float @llvm.fmuladd.f32(float %94, float 5.000000e-01, float 5.000000e-01)
  store float %95, ptr %93, align 4, !tbaa !54
  ret i32 %90
}

declare i32 @imagewraposa(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare i32 @imagewrap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #2

declare void @RE_TileProcessor(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

declare void @RE_InitState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_SetEnvmapCamera(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @eul_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_FreeRender(ptr noundef) local_unnamed_addr #2

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 216}
!39 = !{!"ObjectInstanceRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !41, i64 216, !36, i64 220, !36, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !40, i64 264, !35, i64 272, !40, i64 280}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !40, i64 92}
!46 = !{!"ObjectRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !36, i64 56, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !40, i64 176, !36, i64 180, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272}
!47 = !{!46, !35, i64 136}
!48 = distinct !{!48, !43, !44}
!49 = !{!46, !35, i64 16}
!50 = distinct !{!50, !43, !44}
!51 = !{!52, !35, i64 24}
!52 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 34}
!53 = !{!52, !35, i64 16}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !36, i64 0}
!56 = !{!57, !41, i64 40}
!57 = !{!"LampRen", !35, i64 0, !35, i64 8, !55, i64 16, !55, i64 20, !55, i64 24, !36, i64 28, !41, i64 40, !40, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !55, i64 64, !55, i64 68, !55, i64 72, !55, i64 76, !55, i64 80, !40, i64 84, !55, i64 88, !55, i64 92, !36, i64 96, !55, i64 108, !55, i64 112, !55, i64 116, !55, i64 120, !55, i64 124, !55, i64 128, !41, i64 132, !55, i64 136, !55, i64 140, !35, i64 144, !41, i64 152, !41, i64 154, !55, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !36, i64 202, !36, i64 204, !55, i64 208, !55, i64 212, !55, i64 216, !55, i64 220, !35, i64 224, !35, i64 232, !35, i64 240, !36, i64 248, !55, i64 284, !36, i64 288, !55, i64 300, !36, i64 304, !36, i64 368, !36, i64 404, !55, i64 500, !35, i64 504, !36, i64 512, !36, i64 520, !40, i64 664, !40, i64 668}
!58 = !{!57, !55, i64 300}
!59 = !{!57, !35, i64 232}
!60 = distinct !{!60, !43, !44}
!61 = !{!62, !35, i64 1096}
!62 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !41, i64 96, !41, i64 98, !41, i64 100, !41, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !63, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !64, i64 156, !65, i64 172, !55, i64 188, !55, i64 192, !55, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !55, i64 216, !55, i64 220, !55, i64 224, !55, i64 228, !55, i64 232, !55, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !55, i64 544, !55, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !66, i64 1104, !73, i64 5088, !35, i64 5616, !40, i64 5624, !40, i64 5628, !63, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !55, i64 5680, !35, i64 5688, !63, i64 5696, !55, i64 5712, !55, i64 5716, !40, i64 5720, !40, i64 5724, !40, i64 5728, !40, i64 5732, !40, i64 5736, !35, i64 5744, !63, i64 5752, !63, i64 5768, !63, i64 5784, !35, i64 5800, !63, i64 5808, !40, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !63, i64 5872, !35, i64 5888, !63, i64 5896, !63, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !75, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!63 = !{!"ListBase", !35, i64 0, !35, i64 8}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!66 = !{!"RenderData", !67, i64 0, !35, i64 248, !35, i64 256, !70, i64 264, !71, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !55, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !65, i64 544, !65, i64 560, !64, i64 576, !63, i64 592, !41, i64 608, !41, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !40, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !55, i64 660, !55, i64 664, !41, i64 668, !41, i64 670, !55, i64 672, !55, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !55, i64 2528, !55, i64 2532, !41, i64 2536, !41, i64 2538, !55, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !55, i64 2560, !55, i64 2564, !35, i64 2568, !40, i64 2576, !55, i64 2580, !36, i64 2584, !72, i64 2616, !40, i64 3976, !40, i64 3980}
!67 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !55, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !55, i64 136, !55, i64 140, !35, i64 144, !35, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!70 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!71 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !55, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!72 = !{!"BakeData", !67, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !55, i64 1280, !55, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!73 = !{!"World", !74, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !55, i64 216, !55, i64 220, !55, i64 224, !55, i64 228, !55, i64 232, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !55, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !55, i64 296, !55, i64 300, !55, i64 304, !55, i64 308, !55, i64 312, !55, i64 316, !55, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !41, i64 504, !41, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!74 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!75 = !{!"RenderStats", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !36, i64 40, !76, i64 48, !76, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !55, i64 144, !55, i64 148}
!76 = !{!"double", !36, i64 0}
!77 = !{!78, !35, i64 32}
!78 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !35, i64 32}
!79 = distinct !{!79, !43, !44}
!80 = !{!62, !40, i64 1624}
!81 = !{!62, !35, i64 6128}
!82 = !{!62, !35, i64 6000}
!83 = !{!62, !35, i64 6008}
!84 = !{!62, !35, i64 1088}
!85 = !{!86, !40, i64 100}
!86 = !{!"Tex", !74, i64 0, !35, i64 120, !55, i64 128, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !40, i64 252, !40, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !87, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!87 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!88 = !{!86, !41, i64 232}
!89 = !{!86, !35, i64 368}
!90 = !{!91, !35, i64 0}
!91 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !41, i64 164, !41, i64 166, !55, i64 168, !55, i64 172, !55, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!92 = !{!93, !40, i64 944}
!93 = !{!"Object", !74, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !94, i64 312, !35, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !55, i64 616, !55, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !55, i64 1048, !55, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !55, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !55, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !95, i64 1304, !95, i64 1312, !40, i64 1320, !40, i64 1324, !63, i64 1328, !63, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !63, i64 1400, !35, i64 1416}
!94 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!95 = !{!"long", !36, i64 0}
!96 = !{!62, !40, i64 5624}
!97 = !{!91, !41, i64 166}
!98 = !{!91, !41, i64 186}
!99 = !{!91, !40, i64 188}
!100 = !{!91, !41, i64 198}
!101 = !{!62, !41, i64 1582}
!102 = !{!91, !41, i64 196}
!103 = !{!91, !41, i64 184}
!104 = !{!62, !41, i64 96}
!105 = !{i64 0, i64 1, !106, i64 1, i64 1, !106, i64 2, i64 1, !106, i64 3, i64 1, !106, i64 4, i64 1, !106, i64 5, i64 1, !106, i64 6, i64 1, !106, i64 7, i64 1, !106, i64 8, i64 2, !107, i64 10, i64 2, !107, i64 12, i64 4, !54, i64 16, i64 1, !106, i64 17, i64 1, !106, i64 18, i64 6, !106, i64 24, i64 4, !108, i64 28, i64 4, !108, i64 32, i64 64, !106, i64 96, i64 64, !106, i64 160, i64 4, !54, i64 164, i64 4, !54, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 64, !106, i64 248, i64 8, !34, i64 256, i64 8, !34, i64 264, i64 4, !108, i64 268, i64 4, !108, i64 272, i64 4, !108, i64 276, i64 4, !108, i64 280, i64 4, !108, i64 284, i64 4, !108, i64 288, i64 4, !108, i64 292, i64 4, !108, i64 296, i64 4, !108, i64 300, i64 4, !108, i64 304, i64 4, !108, i64 308, i64 4, !108, i64 312, i64 2, !107, i64 314, i64 2, !107, i64 316, i64 4, !108, i64 320, i64 4, !108, i64 324, i64 4, !108, i64 328, i64 4, !108, i64 332, i64 4, !108, i64 336, i64 4, !108, i64 340, i64 4, !108, i64 344, i64 4, !108, i64 348, i64 4, !108, i64 352, i64 4, !108, i64 356, i64 4, !108, i64 360, i64 4, !54, i64 364, i64 4, !108, i64 368, i64 4, !108, i64 372, i64 4, !108, i64 376, i64 4, !108, i64 380, i64 4, !108, i64 384, i64 4, !108, i64 388, i64 4, !108, i64 392, i64 8, !34, i64 400, i64 4, !108, i64 404, i64 4, !108, i64 408, i64 4, !108, i64 412, i64 4, !54, i64 416, i64 4, !108, i64 420, i64 4, !108, i64 424, i64 4, !108, i64 428, i64 4, !108, i64 432, i64 2, !107, i64 434, i64 2, !107, i64 436, i64 4, !54, i64 440, i64 4, !54, i64 444, i64 4, !54, i64 448, i64 4, !54, i64 452, i64 4, !54, i64 456, i64 2, !107, i64 458, i64 2, !107, i64 460, i64 2, !107, i64 462, i64 2, !107, i64 464, i64 2, !107, i64 466, i64 2, !107, i64 468, i64 4, !108, i64 472, i64 2, !107, i64 474, i64 2, !107, i64 476, i64 2, !107, i64 478, i64 2, !107, i64 480, i64 2, !107, i64 482, i64 2, !107, i64 484, i64 4, !108, i64 488, i64 4, !108, i64 492, i64 2, !107, i64 494, i64 2, !107, i64 496, i64 4, !108, i64 500, i64 4, !108, i64 504, i64 2, !107, i64 506, i64 2, !107, i64 508, i64 2, !107, i64 510, i64 2, !107, i64 512, i64 2, !107, i64 514, i64 1, !106, i64 515, i64 1, !106, i64 516, i64 4, !108, i64 520, i64 4, !108, i64 524, i64 4, !108, i64 528, i64 2, !107, i64 530, i64 2, !107, i64 532, i64 2, !107, i64 534, i64 2, !107, i64 536, i64 2, !107, i64 538, i64 2, !107, i64 540, i64 2, !107, i64 542, i64 2, !107, i64 544, i64 4, !54, i64 548, i64 4, !54, i64 552, i64 4, !54, i64 556, i64 4, !54, i64 560, i64 4, !54, i64 564, i64 4, !54, i64 568, i64 4, !54, i64 572, i64 4, !54, i64 576, i64 4, !108, i64 580, i64 4, !108, i64 584, i64 4, !108, i64 588, i64 4, !108, i64 592, i64 8, !34, i64 600, i64 8, !34, i64 608, i64 2, !107, i64 610, i64 2, !107, i64 612, i64 4, !54, i64 616, i64 4, !54, i64 620, i64 4, !54, i64 624, i64 4, !54, i64 628, i64 4, !108, i64 632, i64 4, !54, i64 636, i64 4, !54, i64 640, i64 4, !54, i64 644, i64 4, !54, i64 648, i64 2, !107, i64 650, i64 2, !107, i64 652, i64 2, !107, i64 654, i64 2, !107, i64 656, i64 2, !107, i64 658, i64 2, !107, i64 660, i64 4, !54, i64 664, i64 4, !54, i64 668, i64 2, !107, i64 670, i64 2, !107, i64 672, i64 4, !54, i64 676, i64 4, !54, i64 680, i64 1024, !106, i64 1704, i64 4, !108, i64 1708, i64 2, !107, i64 1710, i64 2, !107, i64 1712, i64 768, !106, i64 2480, i64 16, !106, i64 2496, i64 16, !106, i64 2512, i64 1, !106, i64 2513, i64 1, !106, i64 2514, i64 1, !106, i64 2515, i64 5, !106, i64 2520, i64 4, !108, i64 2524, i64 2, !107, i64 2526, i64 2, !107, i64 2528, i64 4, !54, i64 2532, i64 4, !54, i64 2536, i64 2, !107, i64 2538, i64 2, !107, i64 2540, i64 4, !54, i64 2544, i64 2, !107, i64 2546, i64 2, !107, i64 2548, i64 4, !108, i64 2552, i64 2, !107, i64 2554, i64 2, !107, i64 2556, i64 2, !107, i64 2558, i64 2, !107, i64 2560, i64 4, !54, i64 2564, i64 4, !54, i64 2568, i64 8, !34, i64 2576, i64 4, !108, i64 2580, i64 4, !54, i64 2584, i64 32, !106, i64 2616, i64 1, !106, i64 2617, i64 1, !106, i64 2618, i64 1, !106, i64 2619, i64 1, !106, i64 2620, i64 1, !106, i64 2621, i64 1, !106, i64 2622, i64 1, !106, i64 2623, i64 1, !106, i64 2624, i64 2, !107, i64 2626, i64 2, !107, i64 2628, i64 4, !54, i64 2632, i64 1, !106, i64 2633, i64 1, !106, i64 2634, i64 6, !106, i64 2640, i64 4, !108, i64 2644, i64 4, !108, i64 2648, i64 64, !106, i64 2712, i64 64, !106, i64 2776, i64 4, !54, i64 2780, i64 4, !54, i64 2784, i64 8, !34, i64 2792, i64 8, !34, i64 2800, i64 64, !106, i64 2864, i64 1024, !106, i64 3888, i64 2, !107, i64 3890, i64 2, !107, i64 3892, i64 2, !107, i64 3894, i64 2, !107, i64 3896, i64 4, !54, i64 3900, i64 4, !54, i64 3904, i64 3, !106, i64 3907, i64 1, !106, i64 3908, i64 1, !106, i64 3909, i64 3, !106, i64 3912, i64 64, !106, i64 3976, i64 4, !108, i64 3980, i64 4, !108}
!106 = !{!36, !36, i64 0}
!107 = !{!41, !41, i64 0}
!108 = !{!40, !40, i64 0}
!109 = !{!62, !41, i64 1580}
!110 = !{!62, !40, i64 1588}
!111 = !{!62, !40, i64 1600}
!112 = !{!62, !40, i64 1592}
!113 = !{!62, !40, i64 1604}
!114 = !{!62, !55, i64 1716}
!115 = !{!62, !55, i64 1720}
!116 = !{!62, !36, i64 104}
!117 = !{!91, !41, i64 164}
!118 = !{!91, !55, i64 176}
!119 = !{!91, !55, i64 168}
!120 = !{!91, !55, i64 172}
!121 = !{!62, !35, i64 5968}
!122 = !{!62, !35, i64 5976}
!123 = !{!62, !35, i64 6048}
!124 = !{!62, !35, i64 6056}
!125 = !{!62, !35, i64 5984}
!126 = !{!62, !35, i64 5992}
!127 = !{!62, !40, i64 5720}
!128 = !{!62, !40, i64 5724}
!129 = !{!62, !40, i64 5728}
!130 = !{!62, !40, i64 5732}
!131 = !{!62, !40, i64 5736}
!132 = !{!62, !35, i64 5744}
!133 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!134 = !{!62, !35, i64 5656}
!135 = !{!62, !40, i64 5824}
!136 = !{!62, !35, i64 5800}
!137 = !{!62, !35, i64 1072}
!138 = !{!62, !35, i64 5952}
!139 = !{!62, !35, i64 5960}
!140 = !{!62, !35, i64 112}
!141 = !{!91, !40, i64 180}
!142 = !{!46, !40, i64 52}
!143 = !{!46, !40, i64 84}
!144 = !{!46, !35, i64 120}
!145 = !{!146, !35, i64 0}
!146 = !{!"VlakTableNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !35, i64 56}
!147 = !{!148, !36, i64 57}
!148 = !{!"VlakRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !35, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !40, i64 60}
!149 = distinct !{!149, !43, !44}
!150 = distinct !{!150, !43, !44}
!151 = distinct !{!151, !43, !44}
!152 = distinct !{!152, !43, !44}
!153 = distinct !{!153, !43, !44}
!154 = distinct !{!154, !43, !44}
!155 = !{!156, !35, i64 80}
!156 = !{!"RenderResult", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !41, i64 24, !41, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !64, i64 56, !40, i64 72, !40, i64 76, !63, i64 80, !64, i64 96, !35, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !35, i64 136}
!157 = !{!62, !40, i64 200}
!158 = !{!62, !40, i64 204}
!159 = !{!160, !35, i64 48}
!160 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !55, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !64, i64 2436, !161, i64 2456}
!161 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!162 = !{!163, !35, i64 136}
!163 = !{!"RenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !35, i64 176, !63, i64 184}
!164 = !{!160, !40, i64 28}
!165 = !{!160, !40, i64 16}
!166 = !{!160, !40, i64 20}
!167 = distinct !{!167, !43, !44}
!168 = distinct !{!168, !43, !44}
!169 = !{!170, !40, i64 680}
!170 = !{!"Scene", !74, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !63, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !66, i64 280, !171, i64 4264, !63, i64 4296, !63, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !63, i64 4384, !172, i64 4400, !173, i64 4416, !176, i64 4600, !35, i64 4608, !177, i64 4616, !35, i64 4640, !95, i64 4648, !95, i64 4656, !68, i64 4664, !69, i64 4824, !178, i64 4888, !35, i64 4952}
!171 = !{!"AudioData", !40, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !55, i64 24, !55, i64 28}
!172 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!173 = !{!"GameData", !172, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !174, i64 40, !41, i64 64, !41, i64 66, !55, i64 68, !175, i64 72, !55, i64 128, !55, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!174 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !55, i64 8, !55, i64 12, !35, i64 16}
!175 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !40, i64 40, !55, i64 44, !55, i64 48, !41, i64 52, !41, i64 54}
!176 = !{!"UnitSettings", !55, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!177 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!178 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!179 = !{!91, !40, i64 192}
!180 = distinct !{!180, !43, !44}
!181 = distinct !{!181, !43, !44}
!182 = !{!62, !35, i64 5936}
!183 = !{!62, !35, i64 5944}
!184 = !{!185, !55, i64 0}
!185 = !{!"TexResult", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !40, i64 20, !35, i64 24}
!186 = !{!86, !35, i64 352}
!187 = !{!91, !35, i64 8}
!188 = !{!189, !41, i64 1244}
!189 = !{!"Image", !74, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !55, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !55, i64 1336, !55, i64 1340, !178, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!190 = distinct !{!190, !43, !44}
!191 = !{!86, !41, i64 264}
!192 = !{i32 0, i32 6}
!193 = !{!185, !55, i64 16}
!194 = !{!185, !35, i64 24}
!195 = !{!185, !40, i64 20}
!196 = !{!185, !55, i64 4}
!197 = !{!185, !55, i64 8}
!198 = !{!185, !55, i64 12}
