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
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Creating Environment maps\00", align 1
@R = external global %struct.Render, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Envmap\00", align 1
@str = private unnamed_addr constant [22 x i8] c"Incorrect envmap size\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @env_rotate_scene(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef %1) #15
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef %1) #15
  br label %15

13:                                               ; preds = %3
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef %1) #15
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef %1) #15
  %14 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %7) #15
  br label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %2, 1
  br label %21

21:                                               ; preds = %19, %42
  %22 = phi ptr [ %17, %19 ], [ %43, %42 ]
  %23 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %22, i64 0, i32 11
  %24 = load i16, ptr %23, align 8, !tbaa !38
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %22, i64 0, i32 8
  br i1 %26, label %29, label %28

28:                                               ; preds = %21
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %27) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %27, ptr noundef nonnull %7, ptr noundef nonnull %9) #15
  br label %32

29:                                               ; preds = %21
  br i1 %20, label %30, label %31

30:                                               ; preds = %29
  call void @copy_m4_m4(ptr noundef nonnull %27, ptr noundef nonnull %7) #15
  br label %32

31:                                               ; preds = %29
  call void @unit_m4(ptr noundef nonnull %27) #15
  br label %32

32:                                               ; preds = %30, %31, %28
  %33 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %22, i64 0, i32 8
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %33) #15
  %34 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %22, i64 0, i32 10
  %35 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %34, ptr noundef nonnull %8) #15
  call void @transpose_m3(ptr noundef nonnull %34) #15
  %36 = load i16, ptr %23, align 8, !tbaa !38
  br i1 %10, label %37, label %39

37:                                               ; preds = %32
  %38 = and i16 %36, -3
  store i16 %38, ptr %23, align 8, !tbaa !38
  br label %42

39:                                               ; preds = %32
  %40 = or i16 %36, 2
  store i16 %40, ptr %23, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %22, i64 0, i32 9
  call void @copy_m4_m4(ptr noundef nonnull %41, ptr noundef nonnull %5) #15
  br label %42

42:                                               ; preds = %37, %39
  %43 = load ptr, ptr %22, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !42

45:                                               ; preds = %42, %15
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %89, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %51

51:                                               ; preds = %49, %78
  %52 = phi ptr [ %47, %49 ], [ %87, %78 ]
  %53 = phi ptr [ null, %49 ], [ %79, %78 ]
  %54 = getelementptr inbounds %struct.ObjectRen, ptr %52, i64 0, i32 13
  %55 = load i32, ptr %54, align 4, !tbaa !44
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ObjectRen, ptr %52, i64 0, i32 21
  br label %59

59:                                               ; preds = %57, %72
  %60 = phi i32 [ 0, %57 ], [ %75, %72 ]
  %61 = phi ptr [ %53, %57 ], [ %73, %72 ]
  %62 = and i32 %60, 255
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load ptr, ptr %58, align 8, !tbaa !46
  %66 = lshr exact i32 %60, 8
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  br label %72

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.HaloRen, ptr %61, i64 1
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %69, %64 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.HaloRen, ptr %73, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %74) #15
  %75 = add nuw nsw i32 %60, 1
  %76 = load i32, ptr %54, align 4, !tbaa !44
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %59, label %78, !llvm.loop !47

78:                                               ; preds = %72, %51
  %79 = phi ptr [ %53, %51 ], [ %73, %72 ]
  %80 = getelementptr inbounds %struct.ObjectRen, ptr %52, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !48
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 51
  %83 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %82, ptr noundef nonnull %50, ptr noundef nonnull %83) #15
  %84 = load ptr, ptr %80, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 51
  %86 = call zeroext i8 @invert_m4(ptr noundef nonnull %85) #15
  %87 = load ptr, ptr %52, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %51, !llvm.loop !49

89:                                               ; preds = %78, %45
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  %91 = load ptr, ptr %90, align 8, !tbaa !34
  %92 = icmp eq ptr %91, null
  br i1 %92, label %160, label %93

93:                                               ; preds = %89
  %94 = icmp eq i32 %2, 1
  %95 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %97 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  %98 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  %99 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %100 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 1
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 2
  %102 = select i1 %94, ptr %96, ptr %95
  br label %103

103:                                              ; preds = %93, %157
  %104 = phi ptr [ %91, %93 ], [ %158, %157 ]
  %105 = getelementptr inbounds %struct.GroupObject, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !50
  %107 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 63
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %102, ptr noundef nonnull %107) #15
  %108 = getelementptr inbounds %struct.GroupObject, ptr %104, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  %110 = getelementptr inbounds %struct.Object, ptr %109, i64 0, i32 50
  %111 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %110, ptr noundef nonnull %9) #15
  %112 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 64
  call void @copy_m3_m4(ptr noundef nonnull %112, ptr noundef nonnull %9) #15
  %113 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 59
  %114 = load ptr, ptr %108, align 8, !tbaa !52
  %115 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %113, ptr noundef nonnull %115) #15
  %116 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 20
  %117 = load <2 x float>, ptr %97, align 16, !tbaa !53
  %118 = fneg <2 x float> %117
  store <2 x float> %118, ptr %116, align 8, !tbaa !53
  %119 = load float, ptr %98, align 8, !tbaa !53
  %120 = fneg float %119
  %121 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 20, i64 2
  store float %120, ptr %121, align 8, !tbaa !53
  call fastcc void @normalize_v3(ptr noundef nonnull %116) #16
  %122 = load float, ptr %99, align 16, !tbaa !53
  %123 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 5
  store float %122, ptr %123, align 4, !tbaa !53
  %124 = load float, ptr %100, align 4, !tbaa !53
  %125 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 5, i64 1
  store float %124, ptr %125, align 4, !tbaa !53
  %126 = load float, ptr %101, align 8, !tbaa !53
  %127 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 5, i64 2
  store float %126, ptr %127, align 4, !tbaa !53
  %128 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 6
  %129 = load i16, ptr %128, align 8, !tbaa !55
  switch i16 %129, label %157 [
    i16 4, label %130
    i16 2, label %131
  ]

130:                                              ; preds = %103
  call void @area_lamp_vectors(ptr noundef nonnull %106) #15
  br label %157

131:                                              ; preds = %103
  call fastcc void @normalize_v3(ptr noundef nonnull %113) #16
  %132 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 59, i64 1
  call fastcc void @normalize_v3(ptr noundef nonnull %132) #16
  %133 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 59, i64 2
  call fastcc void @normalize_v3(ptr noundef nonnull %133) #16
  %134 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 61
  %135 = load <2 x float>, ptr %123, align 4, !tbaa !53
  %136 = fneg <2 x float> %135
  store <2 x float> %136, ptr %134, align 8, !tbaa !53
  %137 = load float, ptr %127, align 4, !tbaa !53
  %138 = fneg float %137
  %139 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 61, i64 2
  store float %138, ptr %139, align 8, !tbaa !53
  call void @mul_m3_v3(ptr noundef nonnull %113, ptr noundef nonnull %134) #15
  %140 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 62
  %141 = load float, ptr %140, align 4, !tbaa !57
  %142 = load float, ptr %139, align 8, !tbaa !53
  %143 = fmul float %141, %142
  store float %143, ptr %139, align 8, !tbaa !53
  %144 = getelementptr inbounds %struct.LampRen, ptr %106, i64 0, i32 57
  %145 = load ptr, ptr %144, align 8, !tbaa !58
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %131
  br i1 %94, label %148, label %153

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.ShadBuf, ptr %145, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %149, ptr noundef nonnull %5) #15
  %150 = load ptr, ptr %144, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct.ShadBuf, ptr %150, i64 0, i32 3
  %152 = getelementptr inbounds %struct.ShadBuf, ptr %150, i64 0, i32 5
  call void @mul_m4_m4m4(ptr noundef nonnull %151, ptr noundef nonnull %152, ptr noundef nonnull %6) #15
  br label %157

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ShadBuf, ptr %145, i64 0, i32 3
  %155 = getelementptr inbounds %struct.ShadBuf, ptr %145, i64 0, i32 5
  %156 = getelementptr inbounds %struct.ShadBuf, ptr %145, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %154, ptr noundef nonnull %155, ptr noundef nonnull %156) #15
  br label %157

157:                                              ; preds = %103, %130, %131, %153, %148
  %158 = load ptr, ptr %104, align 8, !tbaa !34
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %103, !llvm.loop !59

160:                                              ; preds = %157, %89
  br i1 %10, label %162, label %161

161:                                              ; preds = %160
  call void @init_render_world(ptr noundef %0) #15
  call fastcc void @env_set_imats(ptr noundef %0) #16
  br label %162

162:                                              ; preds = %161, %160
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !60 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @area_lamp_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_render_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @env_set_imats(ptr noundef %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %6, %8 ], [ %18, %10 ]
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef nonnull %14) #15
  %15 = load ptr, ptr %12, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 50
  %17 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %2) #15
  %18 = load ptr, ptr %11, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !80

20:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_envmaps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !81
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %126, label %9

9:                                                ; preds = %1
  %10 = and i32 %6, -65537
  store i32 %10, ptr %5, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %12, align 8, !tbaa !82
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  tail call void %14(ptr noundef %16, ptr noundef nonnull %11) #15
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %21

21:                                               ; preds = %9, %104
  %22 = phi i8 [ 0, %9 ], [ %105, %104 ]
  %23 = phi i32 [ 0, %9 ], [ %106, %104 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %104, label %28

28:                                               ; preds = %21, %100
  %29 = phi ptr [ %102, %100 ], [ %26, %21 ]
  %30 = phi i8 [ %101, %100 ], [ %22, %21 ]
  %31 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !86
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %100, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Tex, ptr %29, i64 0, i32 32
  %36 = load i16, ptr %35, align 8, !tbaa !89
  %37 = icmp eq i16 %36, 10
  br i1 %37, label %38, label %100

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Tex, ptr %29, i64 0, i32 56
  %40 = load ptr, ptr %39, align 8, !tbaa !90
  %41 = icmp eq ptr %40, null
  br i1 %41, label %100, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !91
  %44 = icmp eq ptr %43, null
  br i1 %44, label %100, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 52
  %47 = load i32, ptr %46, align 8, !tbaa !93
  %48 = load i32, ptr %18, align 8, !tbaa !97
  %49 = and i32 %48, %47
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %100, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 6
  %53 = load i16, ptr %52, align 2, !tbaa !98
  %54 = icmp eq i16 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %56 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %2, ptr noundef nonnull %56) #15
  call void @normalize_m4(ptr noundef nonnull %2) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %20, ptr noundef nonnull %2) #15
  %57 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %58 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 4
  call void @copy_m3_m4(ptr noundef nonnull %58, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  br label %100

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 12
  %61 = load i16, ptr %60, align 2, !tbaa !99
  %62 = sext i16 %61 to i32
  %63 = icmp sgt i32 %23, %62
  br i1 %63, label %100, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 13
  %66 = load i32, ptr %65, align 4, !tbaa !100
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %5, align 8, !tbaa !81
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  %72 = icmp eq i32 %66, 1
  %73 = and i1 %72, %71
  br i1 %73, label %83, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 16
  %76 = load i16, ptr %75, align 2, !tbaa !101
  %77 = load i16, ptr %19, align 2, !tbaa !102
  %78 = icmp slt i16 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 15
  %81 = load i16, ptr %80, align 4, !tbaa !103
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %74, %68
  call void @BKE_free_envmapdata(ptr noundef nonnull %40) #15
  br label %84

84:                                               ; preds = %83, %79
  %85 = load i32, ptr %65, align 4, !tbaa !100
  br label %86

86:                                               ; preds = %84, %64
  %87 = phi i32 [ %85, %84 ], [ 0, %64 ]
  %88 = or i32 %87, %23
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 15
  store i16 1, ptr %91, align 4, !tbaa !103
  br label %92

92:                                               ; preds = %90, %86
  %93 = icmp eq i32 %87, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  call fastcc void @render_envmap(ptr noundef nonnull %0, ptr noundef nonnull %40) #16
  %95 = load i16, ptr %60, align 2, !tbaa !99
  %96 = sext i16 %95 to i32
  %97 = icmp eq i32 %23, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.EnvMap, ptr %40, i64 0, i32 15
  store i16 0, ptr %99, align 4, !tbaa !103
  br label %100

100:                                              ; preds = %45, %59, %94, %98, %92, %55, %38, %42, %34, %28
  %101 = phi i8 [ %30, %42 ], [ %30, %38 ], [ %30, %34 ], [ %30, %28 ], [ %30, %55 ], [ 1, %98 ], [ 1, %94 ], [ %30, %92 ], [ %30, %59 ], [ %30, %45 ]
  %102 = load ptr, ptr %29, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %28, !llvm.loop !104

104:                                              ; preds = %100, %21
  %105 = phi i8 [ %22, %21 ], [ %101, %100 ]
  %106 = add nuw nsw i32 %23, 1
  %107 = icmp eq i32 %106, 5
  br i1 %107, label %108, label %21, !llvm.loop !105

108:                                              ; preds = %104
  %109 = and i32 %6, 65536
  %110 = icmp eq i8 %105, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 82
  %113 = load ptr, ptr %112, align 8, !tbaa !106
  %114 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 83
  %115 = load ptr, ptr %114, align 8, !tbaa !107
  %116 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %117 = load ptr, ptr %116, align 8, !tbaa !108
  call void %113(ptr noundef %115, ptr noundef %117) #15
  %118 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %119 = load ptr, ptr %118, align 8, !tbaa !109
  %120 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %121 = load ptr, ptr %120, align 8, !tbaa !110
  %122 = load ptr, ptr %116, align 8, !tbaa !108
  call void %119(ptr noundef %121, ptr noundef %122) #15
  br label %123

123:                                              ; preds = %111, %108
  %124 = load i32, ptr %5, align 8, !tbaa !81
  %125 = or i32 %124, %109
  store i32 %125, ptr %5, align 8, !tbaa !81
  br label %126

126:                                              ; preds = %1, %123
  ret void
}

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_envmapdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_envmap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !111 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  %9 = call fastcc ptr @envmap_render_copy(ptr noundef %0, ptr noundef %1) #16
  %10 = load ptr, ptr %1, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %11) #15
  call void @normalize_m4(ptr noundef nonnull %3) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %3) #15
  %12 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  %13 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 4
  call void @copy_m3_m4(ptr noundef nonnull %13, ptr noundef nonnull %6) #15
  %14 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 5
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 84
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 85
  %17 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 32
  %19 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 33
  %20 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 10
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %24 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 20
  %25 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 21
  br label %26

26:                                               ; preds = %98, %2
  %27 = phi i64 [ 0, %2 ], [ %99, %98 ]
  %28 = phi i32 [ 0, %2 ], [ %100, %98 ]
  %29 = load i16, ptr %14, align 4, !tbaa !112
  %30 = icmp eq i16 %29, 1
  %31 = icmp ne i64 %27, 1
  %32 = and i1 %31, %30
  br i1 %32, label %95, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %15, align 8, !tbaa !109
  %35 = load ptr, ptr %16, align 8, !tbaa !110
  %36 = load ptr, ptr %17, align 8, !tbaa !108
  call void %34(ptr noundef %35, ptr noundef %36) #15
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %3) #15
  call fastcc void @envmap_transmatrix(ptr noundef nonnull %6, i32 noundef %28) #16
  %37 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %5) #15
  call void @copy_m4_m4(ptr noundef nonnull %19, ptr noundef nonnull %6) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef nonnull %4) #15
  %38 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %6) #15
  call void @env_rotate_scene(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 1) #16
  call void @project_renderdata(ptr noundef %9, ptr noundef nonnull @projectverto, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 1) #15
  %39 = load i32, ptr %21, align 4, !tbaa !113
  call fastcc void @env_layerflags(ptr noundef %9, i32 noundef %39) #16
  %40 = load ptr, ptr %1, align 8, !tbaa !91
  call fastcc void @env_hideobject(ptr noundef %9, ptr noundef %40) #16
  %41 = load ptr, ptr %22, align 8, !tbaa !114
  %42 = load ptr, ptr %23, align 8, !tbaa !115
  %43 = call i32 %41(ptr noundef %42) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  call void @RE_TileProcessor(ptr noundef nonnull %9) #15
  br label %46

46:                                               ; preds = %45, %33
  call fastcc void @env_showobjects(ptr noundef nonnull %9) #16
  call void @env_rotate_scene(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef 0) #16
  %47 = load ptr, ptr %22, align 8, !tbaa !114
  %48 = load ptr, ptr %23, align 8, !tbaa !115
  %49 = call i32 %47(ptr noundef %48) #15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %46
  %52 = load ptr, ptr %17, align 8, !tbaa !108
  %53 = getelementptr inbounds %struct.RenderResult, ptr %52, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = load i32, ptr %24, align 8, !tbaa !118
  %56 = load i32, ptr %25, align 4, !tbaa !119
  %57 = call ptr @IMB_allocImBuf(i32 noundef %55, i32 noundef %56, i8 noundef zeroext 24, i32 noundef 33) #15
  %58 = getelementptr inbounds %struct.ImBuf, ptr %57, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct.RenderLayer, ptr %54, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !123
  %62 = getelementptr inbounds %struct.ImBuf, ptr %57, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !125
  %64 = getelementptr inbounds %struct.ImBuf, ptr %57, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !126
  %66 = mul nsw i32 %65, %63
  %67 = getelementptr inbounds %struct.ImBuf, ptr %57, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !127
  %69 = mul nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %61, i64 %71, i1 false)
  %72 = load i32, ptr %64, align 8, !tbaa !126
  %73 = load i32, ptr %67, align 4, !tbaa !127
  %74 = mul nsw i32 %73, %72
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %51
  %77 = load ptr, ptr %58, align 8, !tbaa !120
  %78 = getelementptr inbounds float, ptr %77, i64 3
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %83, %79 ], [ %78, %76 ]
  %81 = phi i32 [ %82, %79 ], [ %74, %76 ]
  %82 = add nsw i32 %81, -1
  store float 1.000000e+00, ptr %80, align 4, !tbaa !53
  %83 = getelementptr inbounds float, ptr %80, i64 4
  %84 = icmp ugt i32 %81, 1
  br i1 %84, label %79, label %85, !llvm.loop !128

85:                                               ; preds = %79, %51
  %86 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 2, i64 %27
  store ptr %57, ptr %86, align 8, !tbaa !34
  br label %87

87:                                               ; preds = %85, %46
  %88 = load ptr, ptr %22, align 8, !tbaa !114
  %89 = load ptr, ptr %23, align 8, !tbaa !115
  %90 = call i32 %88(ptr noundef %89) #15
  %91 = icmp ne i32 %90, 0
  %92 = add nuw nsw i64 %27, 1
  %93 = icmp eq i64 %92, 6
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %101, label %98

95:                                               ; preds = %26
  %96 = add nuw nsw i64 %27, 1
  %97 = icmp eq i64 %96, 6
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %87
  %99 = phi i64 [ %96, %95 ], [ %92, %87 ]
  %100 = trunc i64 %99 to i32
  br label %26, !llvm.loop !129

101:                                              ; preds = %87, %95
  %102 = load ptr, ptr %22, align 8, !tbaa !114
  %103 = load ptr, ptr %23, align 8, !tbaa !115
  %104 = call i32 %102(ptr noundef %103) #15
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  call void @BKE_free_envmapdata(ptr noundef nonnull %1) #15
  br label %119

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 45, i32 47
  %109 = load i32, ptr %108, align 8, !tbaa !81
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 1, i32 2
  %113 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 13
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %115 = load ptr, ptr %114, align 8, !tbaa !62
  %116 = getelementptr inbounds %struct.Scene, ptr %115, i64 0, i32 22, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !130
  %118 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 14
  store i32 %117, ptr %118, align 8, !tbaa !140
  br label %119

119:                                              ; preds = %107, %106
  call fastcc void @envmap_free_render_copy(ptr noundef %9) #16
  call fastcc void @env_set_imats(ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @envmaptex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.TexResult, align 8
  %13 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  %14 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !98
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !91
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %21, %7
  store float 0.000000e+00, ptr %5, align 8, !tbaa !141
  br label %149

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !144
  %29 = icmp eq ptr %27, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Image, ptr %27, i64 0, i32 9
  %32 = load i16, ptr %31, align 4, !tbaa !145
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %27, ptr noundef null, ptr noundef %6) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call fastcc void @envmap_split_ima(ptr noundef nonnull %15, ptr noundef nonnull %39) #16
  br label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  store i32 0, ptr %43, align 4, !tbaa !100
  br label %44

44:                                               ; preds = %42, %41
  %45 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 5
  %46 = load i16, ptr %45, align 4, !tbaa !112
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  store i16 1, ptr %49, align 8, !tbaa !147
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr %28, align 8, !tbaa !144
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %51, ptr noundef %39, ptr noundef %6) #15
  br label %52

52:                                               ; preds = %21, %25, %30, %50, %34
  %53 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  %54 = load i32, ptr %53, align 4, !tbaa !100
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store float 0.000000e+00, ptr %5, align 8, !tbaa !141
  br label %149

57:                                               ; preds = %52
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #16
  %58 = load ptr, ptr %15, align 8, !tbaa !91
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %61, ptr noundef nonnull %8) #15
  br label %63

62:                                               ; preds = %57
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %8) #15
  br label %63

63:                                               ; preds = %62, %60
  %64 = call fastcc i32 @envcube_isect(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #16, !range !148
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq i32 %4, 0
  br i1 %68, label %147, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %15, align 8, !tbaa !91
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %73, ptr noundef %2) #15
  call void @mul_m3_v3(ptr noundef nonnull %73, ptr noundef %3) #15
  br label %75

74:                                               ; preds = %69
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef %2) #15
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef %3) #15
  br label %75

75:                                               ; preds = %74, %72
  call fastcc void @set_dxtdyt(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i32 noundef %64) #16
  %76 = call i32 @imagewraposa(ptr noundef nonnull %0, ptr noundef null, ptr noundef %67, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, ptr noundef %6) #15
  %77 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %78 = load float, ptr %77, align 8, !tbaa !149
  %79 = fcmp olt float %78, 1.000000e+00
  br i1 %79, label %80, label %149

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #14
  %81 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 6
  store ptr null, ptr %81, align 8, !tbaa !150
  %82 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 6
  store ptr null, ptr %82, align 8, !tbaa !150
  %83 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %84 = load i32, ptr %83, align 4, !tbaa !151
  %85 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 5
  store i32 %84, ptr %85, align 4, !tbaa !151
  %86 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 5
  store i32 %84, ptr %86, align 4, !tbaa !151
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %2) #16
  %87 = call fastcc i32 @envcube_isect(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #16, !range !148
  call fastcc void @sub_v3_v3(ptr noundef nonnull %8, ptr noundef %2) #16
  %88 = icmp eq i32 %64, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = zext nneg i32 %87 to i64
  %91 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  call fastcc void @set_dxtdyt(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i32 noundef %87) #16
  %93 = call i32 @imagewraposa(ptr noundef nonnull %0, ptr noundef null, ptr noundef %92, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6) #15
  br label %96

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %95, i8 0, i64 16, i1 false)
  br label %96

96:                                               ; preds = %94, %89
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef %3) #16
  %97 = call fastcc i32 @envcube_isect(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #16, !range !148
  call fastcc void @sub_v3_v3(ptr noundef nonnull %8, ptr noundef %3) #16
  %98 = icmp eq i32 %64, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = zext nneg i32 %97 to i64
  %101 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 2, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !34
  call fastcc void @set_dxtdyt(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i32 noundef %97) #16
  %103 = call i32 @imagewraposa(ptr noundef nonnull %0, ptr noundef null, ptr noundef %102, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef %6) #15
  %104 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 4
  %105 = load float, ptr %104, align 8, !tbaa !149
  br label %108

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %107, i8 0, i64 16, i1 false)
  br label %108

108:                                              ; preds = %106, %99
  %109 = phi float [ 0.000000e+00, %106 ], [ %105, %99 ]
  %110 = load float, ptr %77, align 8, !tbaa !149
  %111 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 4
  %112 = load float, ptr %111, align 8, !tbaa !149
  %113 = fadd float %110, %112
  %114 = fadd float %113, %109
  %115 = fcmp une float %114, 0.000000e+00
  br i1 %115, label %116, label %146

116:                                              ; preds = %108
  %117 = fdiv float 1.000000e+00, %114
  %118 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %119 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 1
  %120 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 1
  %121 = load <2 x float>, ptr %118, align 4, !tbaa !53
  %122 = load <2 x float>, ptr %119, align 4, !tbaa !53
  %123 = insertelement <2 x float> poison, float %112, i64 0
  %124 = shufflevector <2 x float> %123, <2 x float> poison, <2 x i32> zeroinitializer
  %125 = fmul <2 x float> %124, %122
  %126 = insertelement <2 x float> poison, float %110, i64 0
  %127 = shufflevector <2 x float> %126, <2 x float> poison, <2 x i32> zeroinitializer
  %128 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %127, <2 x float> %121, <2 x float> %125)
  %129 = load <2 x float>, ptr %120, align 4, !tbaa !53
  %130 = insertelement <2 x float> poison, float %109, i64 0
  %131 = shufflevector <2 x float> %130, <2 x float> poison, <2 x i32> zeroinitializer
  %132 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %131, <2 x float> %129, <2 x float> %128)
  %133 = insertelement <2 x float> poison, float %117, i64 0
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  %135 = fmul <2 x float> %134, %132
  store <2 x float> %135, ptr %118, align 4, !tbaa !53
  %136 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %137 = load float, ptr %136, align 4, !tbaa !152
  %138 = getelementptr inbounds %struct.TexResult, ptr %12, i64 0, i32 3
  %139 = load float, ptr %138, align 4, !tbaa !152
  %140 = fmul float %112, %139
  %141 = call float @llvm.fmuladd.f32(float %110, float %137, float %140)
  %142 = getelementptr inbounds %struct.TexResult, ptr %13, i64 0, i32 3
  %143 = load float, ptr %142, align 4, !tbaa !152
  %144 = call float @llvm.fmuladd.f32(float %109, float %143, float %141)
  %145 = fmul float %117, %144
  store float %145, ptr %136, align 4, !tbaa !152
  br label %146

146:                                              ; preds = %116, %108
  store float 1.000000e+00, ptr %77, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #14
  br label %149

147:                                              ; preds = %63
  %148 = call i32 @imagewrap(ptr noundef nonnull %0, ptr noundef null, ptr noundef %67, ptr noundef nonnull %9, ptr noundef %5, ptr noundef %6) #15
  br label %149

149:                                              ; preds = %147, %146, %75, %56, %24
  %150 = phi i32 [ 0, %24 ], [ 0, %56 ], [ 1, %75 ], [ 1, %146 ], [ 1, %147 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  ret i32 %150
}

; Function Attrs: optsize
declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @envmap_split_ima(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !153 {
  tail call void @BLI_lock_thread(i32 noundef 0) #15
  %3 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  tail call void @BKE_free_envmapdata(ptr noundef nonnull %0) #15
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !127
  %10 = sdiv i32 %9, 2
  %11 = mul nsw i32 %10, 3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !126
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %7
  %16 = icmp eq i32 %13, %9
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %19 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 13
  store i32 0, ptr %19, align 4, !tbaa !100
  %20 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !144
  %22 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 9
  store i16 0, ptr %22, align 4, !tbaa !145
  br label %50

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 5
  store i16 1, ptr %24, align 4, !tbaa !112
  %25 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 13
  store i32 2, ptr %25, align 4, !tbaa !100
  br i1 %14, label %29, label %48

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 5
  store i16 0, ptr %27, align 4, !tbaa !112
  %28 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 13
  store i32 2, ptr %28, align 4, !tbaa !100
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %30
  %31 = phi i64 [ %34, %30 ], [ 0, %29 ]
  %32 = tail call ptr @IMB_allocImBuf(i32 noundef %10, i32 noundef %10, i8 noundef zeroext 24, i32 noundef 33) #15
  %33 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 %31
  store ptr %32, ptr %33, align 8, !tbaa !34
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, 6
  br i1 %35, label %36, label %30, !llvm.loop !154

36:                                               ; preds = %30
  tail call void @IMB_float_from_rect(ptr noundef %1) #15
  %37 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %37, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %10) #15
  %38 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %38, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef 0, i32 noundef %10, i32 noundef %10) #15
  %39 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = shl nsw i32 %10, 1
  tail call void @IMB_rectcpy(ptr noundef %40, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %41, i32 noundef 0, i32 noundef %10, i32 noundef %10) #15
  %42 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 3
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %43, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %10, i32 noundef %10) #15
  %44 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 4
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %45, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %10, i32 noundef %10, i32 noundef %10) #15
  %46 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 5
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  tail call void @IMB_rectcpy(ptr noundef %47, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %41, i32 noundef %10, i32 noundef %10, i32 noundef %10) #15
  br label %50

48:                                               ; preds = %23
  %49 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %1) #15
  store ptr %49, ptr %4, align 8, !tbaa !34
  tail call void @IMB_float_from_rect(ptr noundef %49) #15
  br label %50

50:                                               ; preds = %17, %48, %36, %2
  tail call void @BLI_unlock_thread(i32 noundef 0) #15
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !155 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  store float %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @envcube_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !PGOFuncName !156 {
  %4 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !112
  %6 = icmp eq i16 %5, 1
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  br i1 %6, label %9, label %21

9:                                                ; preds = %3
  %10 = fdiv float 1.000000e+00, %8
  %11 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 9
  %12 = load float, ptr %11, align 8, !tbaa !157
  %13 = fmul float %12, %10
  %14 = load float, ptr %1, align 4, !tbaa !53
  %15 = fmul float %13, %14
  store float %15, ptr %2, align 4, !tbaa !53
  %16 = load float, ptr %11, align 8, !tbaa !157
  %17 = fneg float %16
  %18 = fmul float %10, %17
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !53
  br label %74

21:                                               ; preds = %3
  %22 = load float, ptr %1, align 4, !tbaa !53
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fneg float %23
  %25 = fcmp ugt float %8, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds float, ptr %1, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = fneg float %29
  %31 = fcmp ugt float %8, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = fdiv float -1.000000e+00, %8
  %34 = fmul float %33, %22
  store float %34, ptr %2, align 4, !tbaa !53
  %35 = load float, ptr %27, align 4, !tbaa !53
  br label %74

36:                                               ; preds = %26, %21
  %37 = fcmp ult float %8, %23
  %38 = getelementptr inbounds float, ptr %1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !53
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fcmp ult float %8, %40
  %42 = select i1 %37, i1 true, i1 %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = fdiv float 1.000000e+00, %8
  %45 = fmul float %44, %22
  store float %45, ptr %2, align 4, !tbaa !53
  %46 = fneg float %44
  %47 = load float, ptr %38, align 4, !tbaa !53
  br label %74

48:                                               ; preds = %36
  %49 = fcmp ult float %39, %23
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = fdiv float 1.000000e+00, %39
  %52 = fmul float %22, %51
  store float %52, ptr %2, align 4, !tbaa !53
  %53 = load float, ptr %7, align 4, !tbaa !53
  br label %74

54:                                               ; preds = %48
  %55 = tail call float @llvm.fabs.f32(float %39)
  %56 = fneg float %55
  %57 = fcmp ugt float %22, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = fdiv float -1.000000e+00, %22
  %60 = fmul float %59, %39
  store float %60, ptr %2, align 4, !tbaa !53
  %61 = load float, ptr %7, align 4, !tbaa !53
  br label %74

62:                                               ; preds = %54
  %63 = fcmp ugt float %39, %24
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  %65 = fdiv float -1.000000e+00, %39
  %66 = fneg float %65
  %67 = fmul float %22, %66
  store float %67, ptr %2, align 4, !tbaa !53
  %68 = load float, ptr %7, align 4, !tbaa !53
  br label %74

69:                                               ; preds = %62
  %70 = fdiv float 1.000000e+00, %22
  %71 = fneg float %70
  %72 = fmul float %39, %71
  store float %72, ptr %2, align 4, !tbaa !53
  %73 = load float, ptr %7, align 4, !tbaa !53
  br label %74

74:                                               ; preds = %32, %50, %64, %69, %58, %43, %9
  %75 = phi float [ %35, %32 ], [ %53, %50 ], [ %68, %64 ], [ %73, %69 ], [ %61, %58 ], [ %46, %43 ], [ %20, %9 ]
  %76 = phi float [ %33, %32 ], [ %51, %50 ], [ %65, %64 ], [ %70, %69 ], [ %59, %58 ], [ %47, %43 ], [ %18, %9 ]
  %77 = phi float [ %34, %32 ], [ %52, %50 ], [ %67, %64 ], [ %72, %69 ], [ %60, %58 ], [ %45, %43 ], [ %15, %9 ]
  %78 = phi i32 [ 0, %32 ], [ 2, %50 ], [ 4, %64 ], [ 5, %69 ], [ 3, %58 ], [ 1, %43 ], [ 1, %9 ]
  %79 = fmul float %76, %75
  %80 = insertelement <2 x float> poison, float %77, i64 0
  %81 = insertelement <2 x float> %80, float %79, i64 1
  %82 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %81, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  store <2 x float> %82, ptr %2, align 4, !tbaa !53
  ret i32 %78
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_dxtdyt(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #4 !PGOFuncName !158 {
  switch i32 %4, label %20 [
    i32 4, label %6
    i32 2, label %6
    i32 5, label %12
    i32 3, label %12
  ]

6:                                                ; preds = %5, %5
  %7 = load float, ptr %2, align 4, !tbaa !53
  store float %7, ptr %0, align 4, !tbaa !53
  %8 = load float, ptr %3, align 4, !tbaa !53
  store float %8, ptr %1, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %2, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %0, i64 1
  store float %10, ptr %11, align 4, !tbaa !53
  br label %26

12:                                               ; preds = %5, %5
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !53
  store float %14, ptr %0, align 4, !tbaa !53
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !53
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !53
  store float %19, ptr %1, align 4, !tbaa !53
  br label %26

20:                                               ; preds = %5
  %21 = load float, ptr %2, align 4, !tbaa !53
  store float %21, ptr %0, align 4, !tbaa !53
  %22 = load float, ptr %3, align 4, !tbaa !53
  store float %22, ptr %1, align 4, !tbaa !53
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !53
  %25 = getelementptr inbounds float, ptr %0, i64 1
  store float %24, ptr %25, align 4, !tbaa !53
  br label %26

26:                                               ; preds = %12, %20, %6
  %27 = phi i64 [ 2, %12 ], [ 1, %20 ], [ 2, %6 ]
  %28 = getelementptr inbounds float, ptr %3, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !53
  %30 = getelementptr inbounds float, ptr %1, i64 1
  store float %29, ptr %30, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare i32 @imagewraposa(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !159 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = load float, ptr %0, align 4, !tbaa !53
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !160 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = load float, ptr %0, align 4, !tbaa !53
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare i32 @imagewrap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !161 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
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
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !162 {
  %3 = load float, ptr %0, align 4, !tbaa !53
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !163 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !53
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !53
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !164 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !53
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @envmap_render_copy(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !165 {
  %3 = tail call ptr @RE_NewRender(ptr noundef nonnull @.str.1) #15
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  %6 = load i16, ptr %5, align 2, !tbaa !102
  %7 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 16
  store i16 %6, ptr %7, align 2, !tbaa !101
  %8 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 11
  %9 = load i16, ptr %8, align 8, !tbaa !166
  %10 = sext i16 %9 to i32
  %11 = sext i16 %6 to i32
  %12 = mul nsw i32 %10, %11
  %13 = sdiv i32 %12, 100
  %14 = and i32 %13, 65532
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !167
  %17 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 4
  store i16 %16, ptr %17, align 8, !tbaa !167
  %18 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %18, ptr noundef nonnull align 8 dereferenceable(3984) %4, i64 3984, i1 false), !tbaa.struct !168
  %19 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 47
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = and i32 %20, -17929
  store i32 %21, ptr %19, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 60
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %22) #16
  %23 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 29
  store i16 0, ptr %23, align 4, !tbaa !172
  %24 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 33
  %25 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 37
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !171
  %27 = sdiv <2 x i32> %26, <i32 2, i32 2>
  store <2 x i32> %27, ptr %25, align 8, !tbaa !171
  %28 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 30
  store i16 100, ptr %28, align 2, !tbaa !102
  %29 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 45, i32 63
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %29, align 4, !tbaa !53
  tail call void @RE_InitState(ptr noundef %3, ptr noundef null, ptr noundef nonnull %18, ptr noundef null, i32 noundef %14, i32 noundef %14, ptr noundef null) #15
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %31 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 43
  %32 = load <2 x ptr>, ptr %30, align 8, !tbaa !34
  store <2 x ptr> %32, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  %34 = load i8, ptr %33, align 8, !tbaa !173
  %35 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 8
  store i8 %34, ptr %35, align 8, !tbaa !173
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %37 = load i32, ptr %36, align 8, !tbaa !97
  %38 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 48
  store i32 %37, ptr %38, align 8, !tbaa !97
  %39 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 5
  %40 = load i16, ptr %39, align 4, !tbaa !112
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 9
  %44 = load float, ptr %43, align 8, !tbaa !157
  br label %45

45:                                               ; preds = %2, %42
  %46 = phi float [ %44, %42 ], [ 1.000000e+00, %2 ]
  %47 = load ptr, ptr %1, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 7
  %49 = load float, ptr %48, align 8, !tbaa !174
  %50 = getelementptr inbounds %struct.EnvMap, ptr %1, i64 0, i32 8
  %51 = load float, ptr %50, align 4, !tbaa !175
  tail call void @RE_SetEnvmapCamera(ptr noundef nonnull %3, ptr noundef %47, float noundef %46, float noundef %49, float noundef %51) #15
  %52 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 34
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  tail call void @copy_m4_m4(ptr noundef nonnull %52, ptr noundef nonnull %53) #15
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 86
  %55 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 86
  %56 = load <2 x ptr>, ptr %54, align 8, !tbaa !34
  store <2 x ptr> %56, ptr %55, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %58 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 96
  %59 = load <2 x ptr>, ptr %57, align 8, !tbaa !34
  store <2 x ptr> %59, ptr %58, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 88
  %61 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 88
  %62 = load <2 x ptr>, ptr %60, align 8, !tbaa !34
  store <2 x ptr> %62, ptr %61, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %64 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 60
  %65 = load <4 x i32>, ptr %63, align 8, !tbaa !171
  store <4 x i32> %65, ptr %64, align 8, !tbaa !171
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %67 = load i32, ptr %66, align 8, !tbaa !176
  %68 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 64
  store i32 %67, ptr %68, align 8, !tbaa !176
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  %70 = load ptr, ptr %69, align 8, !tbaa !177
  %71 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 65
  store ptr %70, ptr %71, align 8, !tbaa !177
  %72 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 66
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !178
  %74 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 68
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 16, i1 false), !tbaa.struct !178
  %76 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 77
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) %77, i64 16, i1 false), !tbaa.struct !178
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  %79 = load ptr, ptr %78, align 8, !tbaa !179
  %80 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 52
  store ptr %79, ptr %80, align 8, !tbaa !179
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 71
  %82 = load i32, ptr %81, align 8, !tbaa !180
  %83 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 71
  store i32 %82, ptr %83, align 8, !tbaa !180
  %84 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 70
  %85 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %85, i64 16, i1 false), !tbaa.struct !178
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %87 = load ptr, ptr %86, align 8, !tbaa !181
  %88 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 69
  store ptr %87, ptr %88, align 8, !tbaa !181
  %89 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  %90 = load ptr, ptr %89, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 41
  store ptr %90, ptr %91, align 8, !tbaa !182
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @envmap_transmatrix(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !183 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 8
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %6, align 8, !tbaa !53
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !53
  switch i32 %1, label %11 [
    i32 0, label %12
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
  ]

7:                                                ; preds = %2
  store float 0x400921FB60000000, ptr %4, align 8, !tbaa !53
  br label %12

8:                                                ; preds = %2
  store float 0x3FF921FB60000000, ptr %4, align 8, !tbaa !53
  br label %12

9:                                                ; preds = %2
  store float 0x3FF921FB60000000, ptr %4, align 8, !tbaa !53
  store float 0x3FF921FB60000000, ptr %6, align 8, !tbaa !53
  br label %12

10:                                               ; preds = %2
  store float 0x3FF921FB60000000, ptr %4, align 8, !tbaa !53
  store float 0x400921FB60000000, ptr %6, align 8, !tbaa !53
  br label %12

11:                                               ; preds = %2
  store float 0x3FF921FB60000000, ptr %4, align 8, !tbaa !53
  store float 0xBFF921FB60000000, ptr %6, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %2, %7, %9, %11, %10, %8
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef %0) #15
  call void @eul_to_mat4(ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @env_layerflags(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !184 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %2, %40
  %8 = phi ptr [ %42, %40 ], [ %5, %2 ]
  %9 = phi ptr [ %41, %40 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !185
  %12 = and i32 %11, %3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !186
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 19
  br label %20

20:                                               ; preds = %18, %33
  %21 = phi i32 [ 0, %18 ], [ %38, %33 ]
  %22 = phi ptr [ %9, %18 ], [ %34, %33 ]
  %23 = and i32 %21, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load ptr, ptr %19, align 8, !tbaa !187
  %27 = lshr exact i32 %21, 8
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.VlakTableNode, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !188
  br label %33

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 1
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.VlakRen, ptr %34, i64 0, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !190
  %37 = or i8 %36, 2
  store i8 %37, ptr %35, align 1, !tbaa !190
  %38 = add nuw nsw i32 %21, 1
  %39 = icmp eq i32 %38, %16
  br i1 %39, label %40, label %20, !llvm.loop !192

40:                                               ; preds = %33, %14, %7
  %41 = phi ptr [ %9, %7 ], [ %9, %14 ], [ %34, %33 ]
  %42 = load ptr, ptr %8, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %7, !llvm.loop !193

44:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @env_hideobject(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %10

6:                                                ; preds = %40, %10
  %7 = phi ptr [ %12, %10 ], [ %35, %40 ]
  %8 = load ptr, ptr %11, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10, !llvm.loop !195

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = phi ptr [ %7, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !186
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 19
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, %1
  br label %21

21:                                               ; preds = %16, %40
  %22 = phi i32 [ 0, %16 ], [ %41, %40 ]
  %23 = phi ptr [ %12, %16 ], [ %35, %40 ]
  %24 = and i32 %22, 255
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load ptr, ptr %17, align 8, !tbaa !187
  %28 = lshr exact i32 %22, 8
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.VlakTableNode, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  br label %34

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.VlakRen, ptr %23, i64 1
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  br i1 %20, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.VlakRen, ptr %35, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !190
  %39 = or i8 %38, 2
  store i8 %39, ptr %37, align 1, !tbaa !190
  br label %40

40:                                               ; preds = %34, %36
  %41 = add nuw nsw i32 %22, 1
  %42 = icmp eq i32 %41, %14
  br i1 %42, label %6, label %21, !llvm.loop !196

43:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @RE_TileProcessor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @env_showobjects(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !197 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %9

5:                                                ; preds = %30, %9
  %6 = phi ptr [ %11, %9 ], [ %31, %30 ]
  %7 = load ptr, ptr %10, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9, !llvm.loop !198

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = phi ptr [ %6, %5 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %10, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !186
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %10, i64 0, i32 19
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi i32 [ 0, %15 ], [ %35, %30 ]
  %19 = phi ptr [ %11, %15 ], [ %31, %30 ]
  %20 = and i32 %18, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %16, align 8, !tbaa !187
  %24 = lshr exact i32 %18, 8
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.VlakTableNode, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  br label %30

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.VlakRen, ptr %19, i64 1
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !190
  %34 = and i8 %33, -3
  store i8 %34, ptr %32, align 1, !tbaa !190
  %35 = add nuw nsw i32 %18, 1
  %36 = icmp eq i32 %35, %13
  br i1 %36, label %5, label %17, !llvm.loop !199

37:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @envmap_free_render_copy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 71
  store i32 0, ptr %3, align 8, !tbaa !180
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  store ptr null, ptr %4, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #16
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 77
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  store ptr null, ptr %8, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #16
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  store ptr null, ptr %10, align 8, !tbaa !181
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  store ptr null, ptr %11, align 8, !tbaa !182
  tail call void @RE_FreeRender(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !201 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @RE_InitState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_SetEnvmapCamera(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eul_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_FreeRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 216}
!39 = !{!"ObjectInstanceRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !41, i64 216, !36, i64 220, !36, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !40, i64 264, !35, i64 272, !40, i64 280}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !40, i64 92}
!45 = !{!"ObjectRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !36, i64 56, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !40, i64 176, !36, i64 180, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272}
!46 = !{!45, !35, i64 136}
!47 = distinct !{!47, !43}
!48 = !{!45, !35, i64 16}
!49 = distinct !{!49, !43}
!50 = !{!51, !35, i64 24}
!51 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 34}
!52 = !{!51, !35, i64 16}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !36, i64 0}
!55 = !{!56, !41, i64 40}
!56 = !{!"LampRen", !35, i64 0, !35, i64 8, !54, i64 16, !54, i64 20, !54, i64 24, !36, i64 28, !41, i64 40, !40, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !54, i64 72, !54, i64 76, !54, i64 80, !40, i64 84, !54, i64 88, !54, i64 92, !36, i64 96, !54, i64 108, !54, i64 112, !54, i64 116, !54, i64 120, !54, i64 124, !54, i64 128, !41, i64 132, !54, i64 136, !54, i64 140, !35, i64 144, !41, i64 152, !41, i64 154, !54, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !36, i64 202, !36, i64 204, !54, i64 208, !54, i64 212, !54, i64 216, !54, i64 220, !35, i64 224, !35, i64 232, !35, i64 240, !36, i64 248, !54, i64 284, !36, i64 288, !54, i64 300, !36, i64 304, !36, i64 368, !36, i64 404, !54, i64 500, !35, i64 504, !36, i64 512, !36, i64 520, !40, i64 664, !40, i64 668}
!57 = !{!56, !54, i64 300}
!58 = !{!56, !35, i64 232}
!59 = distinct !{!59, !43}
!60 = !{!"envmap.c:normalize_v3"}
!61 = !{!"envmap.c:env_set_imats"}
!62 = !{!63, !35, i64 1096}
!63 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !41, i64 96, !41, i64 98, !41, i64 100, !41, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !64, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !65, i64 156, !66, i64 172, !54, i64 188, !54, i64 192, !54, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !54, i64 544, !54, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !67, i64 1104, !74, i64 5088, !35, i64 5616, !40, i64 5624, !40, i64 5628, !64, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !54, i64 5680, !35, i64 5688, !64, i64 5696, !54, i64 5712, !54, i64 5716, !40, i64 5720, !40, i64 5724, !40, i64 5728, !40, i64 5732, !40, i64 5736, !35, i64 5744, !64, i64 5752, !64, i64 5768, !64, i64 5784, !35, i64 5800, !64, i64 5808, !40, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !64, i64 5872, !35, i64 5888, !64, i64 5896, !64, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !76, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!64 = !{!"ListBase", !35, i64 0, !35, i64 8}
!65 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!66 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!67 = !{!"RenderData", !68, i64 0, !35, i64 248, !35, i64 256, !71, i64 264, !72, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !54, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !66, i64 544, !66, i64 560, !65, i64 576, !64, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !40, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !35, i64 2568, !40, i64 2576, !54, i64 2580, !36, i64 2584, !73, i64 2616, !40, i64 3976, !40, i64 3980}
!68 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !69, i64 24, !70, i64 184}
!69 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !54, i64 136, !54, i64 140, !35, i64 144, !35, i64 152}
!70 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!71 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!72 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !54, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!73 = !{!"BakeData", !68, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!74 = !{!"World", !75, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !54, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !41, i64 504, !41, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!75 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!76 = !{!"RenderStats", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !36, i64 40, !77, i64 48, !77, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !54, i64 144, !54, i64 148}
!77 = !{!"double", !36, i64 0}
!78 = !{!79, !35, i64 32}
!79 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !35, i64 32}
!80 = distinct !{!80, !43}
!81 = !{!63, !40, i64 1624}
!82 = !{!63, !35, i64 6128}
!83 = !{!63, !35, i64 6000}
!84 = !{!63, !35, i64 6008}
!85 = !{!63, !35, i64 1088}
!86 = !{!87, !40, i64 100}
!87 = !{!"Tex", !75, i64 0, !35, i64 120, !54, i64 128, !54, i64 132, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !54, i64 200, !54, i64 204, !54, i64 208, !54, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !40, i64 252, !40, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !88, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!88 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!89 = !{!87, !41, i64 232}
!90 = !{!87, !35, i64 368}
!91 = !{!92, !35, i64 0}
!92 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !41, i64 164, !41, i64 166, !54, i64 168, !54, i64 172, !54, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!93 = !{!94, !40, i64 944}
!94 = !{!"Object", !75, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !95, i64 312, !35, i64 360, !64, i64 368, !64, i64 384, !64, i64 400, !64, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !54, i64 616, !54, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !54, i64 1048, !54, i64 1052, !64, i64 1056, !64, i64 1072, !64, i64 1088, !64, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !64, i64 1176, !64, i64 1192, !64, i64 1208, !64, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !54, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !96, i64 1304, !96, i64 1312, !40, i64 1320, !40, i64 1324, !64, i64 1328, !64, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !64, i64 1400, !35, i64 1416}
!95 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!96 = !{!"long", !36, i64 0}
!97 = !{!63, !40, i64 5624}
!98 = !{!92, !41, i64 166}
!99 = !{!92, !41, i64 186}
!100 = !{!92, !40, i64 188}
!101 = !{!92, !41, i64 198}
!102 = !{!63, !41, i64 1582}
!103 = !{!92, !41, i64 196}
!104 = distinct !{!104, !43}
!105 = distinct !{!105, !43}
!106 = !{!63, !35, i64 5936}
!107 = !{!63, !35, i64 5944}
!108 = !{!63, !35, i64 112}
!109 = !{!63, !35, i64 5952}
!110 = !{!63, !35, i64 5960}
!111 = !{!"envmap.c:render_envmap"}
!112 = !{!92, !41, i64 164}
!113 = !{!92, !40, i64 180}
!114 = !{!63, !35, i64 6048}
!115 = !{!63, !35, i64 6056}
!116 = !{!117, !35, i64 80}
!117 = !{!"RenderResult", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !41, i64 24, !41, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !65, i64 56, !40, i64 72, !40, i64 76, !64, i64 80, !65, i64 96, !35, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !35, i64 136}
!118 = !{!63, !40, i64 200}
!119 = !{!63, !40, i64 204}
!120 = !{!121, !35, i64 48}
!121 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !54, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !65, i64 2436, !122, i64 2456}
!122 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!123 = !{!124, !35, i64 136}
!124 = !{!"RenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !35, i64 176, !64, i64 184}
!125 = !{!121, !40, i64 28}
!126 = !{!121, !40, i64 16}
!127 = !{!121, !40, i64 20}
!128 = distinct !{!128, !43}
!129 = distinct !{!129, !43}
!130 = !{!131, !40, i64 680}
!131 = !{!"Scene", !75, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !64, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !67, i64 280, !132, i64 4264, !64, i64 4296, !64, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !64, i64 4384, !133, i64 4400, !134, i64 4416, !137, i64 4600, !35, i64 4608, !138, i64 4616, !35, i64 4640, !96, i64 4648, !96, i64 4656, !69, i64 4664, !70, i64 4824, !139, i64 4888, !35, i64 4952}
!132 = !{!"AudioData", !40, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!133 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!134 = !{!"GameData", !133, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !135, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !136, i64 72, !54, i64 128, !54, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!135 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !35, i64 16}
!136 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !40, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!137 = !{!"UnitSettings", !54, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!138 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!139 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!140 = !{!92, !40, i64 192}
!141 = !{!142, !54, i64 0}
!142 = !{!"TexResult", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !40, i64 20, !35, i64 24}
!143 = !{!87, !35, i64 352}
!144 = !{!92, !35, i64 8}
!145 = !{!146, !41, i64 1244}
!146 = !{!"Image", !75, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !54, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !54, i64 1336, !54, i64 1340, !139, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!147 = !{!87, !41, i64 264}
!148 = !{i32 0, i32 6}
!149 = !{!142, !54, i64 16}
!150 = !{!142, !35, i64 24}
!151 = !{!142, !40, i64 20}
!152 = !{!142, !54, i64 12}
!153 = !{!"envmap.c:envmap_split_ima"}
!154 = distinct !{!154, !43}
!155 = !{!"envmap.c:copy_v3_v3"}
!156 = !{!"envmap.c:envcube_isect"}
!157 = !{!92, !54, i64 176}
!158 = !{!"envmap.c:set_dxtdyt"}
!159 = !{!"envmap.c:add_v3_v3"}
!160 = !{!"envmap.c:sub_v3_v3"}
!161 = !{!"envmap.c:normalize_v3_v3"}
!162 = !{!"envmap.c:dot_v3v3"}
!163 = !{!"envmap.c:mul_v3_v3fl"}
!164 = !{!"envmap.c:zero_v3"}
!165 = !{!"envmap.c:envmap_render_copy"}
!166 = !{!92, !41, i64 184}
!167 = !{!63, !41, i64 96}
!168 = !{i64 0, i64 1, !169, i64 1, i64 1, !169, i64 2, i64 1, !169, i64 3, i64 1, !169, i64 4, i64 1, !169, i64 5, i64 1, !169, i64 6, i64 1, !169, i64 7, i64 1, !169, i64 8, i64 2, !170, i64 10, i64 2, !170, i64 12, i64 4, !53, i64 16, i64 1, !169, i64 17, i64 1, !169, i64 18, i64 6, !169, i64 24, i64 4, !171, i64 28, i64 4, !171, i64 32, i64 64, !169, i64 96, i64 64, !169, i64 160, i64 4, !53, i64 164, i64 4, !53, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 64, !169, i64 248, i64 8, !34, i64 256, i64 8, !34, i64 264, i64 4, !171, i64 268, i64 4, !171, i64 272, i64 4, !171, i64 276, i64 4, !171, i64 280, i64 4, !171, i64 284, i64 4, !171, i64 288, i64 4, !171, i64 292, i64 4, !171, i64 296, i64 4, !171, i64 300, i64 4, !171, i64 304, i64 4, !171, i64 308, i64 4, !171, i64 312, i64 2, !170, i64 314, i64 2, !170, i64 316, i64 4, !171, i64 320, i64 4, !171, i64 324, i64 4, !171, i64 328, i64 4, !171, i64 332, i64 4, !171, i64 336, i64 4, !171, i64 340, i64 4, !171, i64 344, i64 4, !171, i64 348, i64 4, !171, i64 352, i64 4, !171, i64 356, i64 4, !171, i64 360, i64 4, !53, i64 364, i64 4, !171, i64 368, i64 4, !171, i64 372, i64 4, !171, i64 376, i64 4, !171, i64 380, i64 4, !171, i64 384, i64 4, !171, i64 388, i64 4, !171, i64 392, i64 8, !34, i64 400, i64 4, !171, i64 404, i64 4, !171, i64 408, i64 4, !171, i64 412, i64 4, !53, i64 416, i64 4, !171, i64 420, i64 4, !171, i64 424, i64 4, !171, i64 428, i64 4, !171, i64 432, i64 2, !170, i64 434, i64 2, !170, i64 436, i64 4, !53, i64 440, i64 4, !53, i64 444, i64 4, !53, i64 448, i64 4, !53, i64 452, i64 4, !53, i64 456, i64 2, !170, i64 458, i64 2, !170, i64 460, i64 2, !170, i64 462, i64 2, !170, i64 464, i64 2, !170, i64 466, i64 2, !170, i64 468, i64 4, !171, i64 472, i64 2, !170, i64 474, i64 2, !170, i64 476, i64 2, !170, i64 478, i64 2, !170, i64 480, i64 2, !170, i64 482, i64 2, !170, i64 484, i64 4, !171, i64 488, i64 4, !171, i64 492, i64 2, !170, i64 494, i64 2, !170, i64 496, i64 4, !171, i64 500, i64 4, !171, i64 504, i64 2, !170, i64 506, i64 2, !170, i64 508, i64 2, !170, i64 510, i64 2, !170, i64 512, i64 2, !170, i64 514, i64 1, !169, i64 515, i64 1, !169, i64 516, i64 4, !171, i64 520, i64 4, !171, i64 524, i64 4, !171, i64 528, i64 2, !170, i64 530, i64 2, !170, i64 532, i64 2, !170, i64 534, i64 2, !170, i64 536, i64 2, !170, i64 538, i64 2, !170, i64 540, i64 2, !170, i64 542, i64 2, !170, i64 544, i64 4, !53, i64 548, i64 4, !53, i64 552, i64 4, !53, i64 556, i64 4, !53, i64 560, i64 4, !53, i64 564, i64 4, !53, i64 568, i64 4, !53, i64 572, i64 4, !53, i64 576, i64 4, !171, i64 580, i64 4, !171, i64 584, i64 4, !171, i64 588, i64 4, !171, i64 592, i64 8, !34, i64 600, i64 8, !34, i64 608, i64 2, !170, i64 610, i64 2, !170, i64 612, i64 4, !53, i64 616, i64 4, !53, i64 620, i64 4, !53, i64 624, i64 4, !53, i64 628, i64 4, !171, i64 632, i64 4, !53, i64 636, i64 4, !53, i64 640, i64 4, !53, i64 644, i64 4, !53, i64 648, i64 2, !170, i64 650, i64 2, !170, i64 652, i64 2, !170, i64 654, i64 2, !170, i64 656, i64 2, !170, i64 658, i64 2, !170, i64 660, i64 4, !53, i64 664, i64 4, !53, i64 668, i64 2, !170, i64 670, i64 2, !170, i64 672, i64 4, !53, i64 676, i64 4, !53, i64 680, i64 1024, !169, i64 1704, i64 4, !171, i64 1708, i64 2, !170, i64 1710, i64 2, !170, i64 1712, i64 768, !169, i64 2480, i64 16, !169, i64 2496, i64 16, !169, i64 2512, i64 1, !169, i64 2513, i64 1, !169, i64 2514, i64 1, !169, i64 2515, i64 5, !169, i64 2520, i64 4, !171, i64 2524, i64 2, !170, i64 2526, i64 2, !170, i64 2528, i64 4, !53, i64 2532, i64 4, !53, i64 2536, i64 2, !170, i64 2538, i64 2, !170, i64 2540, i64 4, !53, i64 2544, i64 2, !170, i64 2546, i64 2, !170, i64 2548, i64 4, !171, i64 2552, i64 2, !170, i64 2554, i64 2, !170, i64 2556, i64 2, !170, i64 2558, i64 2, !170, i64 2560, i64 4, !53, i64 2564, i64 4, !53, i64 2568, i64 8, !34, i64 2576, i64 4, !171, i64 2580, i64 4, !53, i64 2584, i64 32, !169, i64 2616, i64 1, !169, i64 2617, i64 1, !169, i64 2618, i64 1, !169, i64 2619, i64 1, !169, i64 2620, i64 1, !169, i64 2621, i64 1, !169, i64 2622, i64 1, !169, i64 2623, i64 1, !169, i64 2624, i64 2, !170, i64 2626, i64 2, !170, i64 2628, i64 4, !53, i64 2632, i64 1, !169, i64 2633, i64 1, !169, i64 2634, i64 6, !169, i64 2640, i64 4, !171, i64 2644, i64 4, !171, i64 2648, i64 64, !169, i64 2712, i64 64, !169, i64 2776, i64 4, !53, i64 2780, i64 4, !53, i64 2784, i64 8, !34, i64 2792, i64 8, !34, i64 2800, i64 64, !169, i64 2864, i64 1024, !169, i64 3888, i64 2, !170, i64 3890, i64 2, !170, i64 3892, i64 2, !170, i64 3894, i64 2, !170, i64 3896, i64 4, !53, i64 3900, i64 4, !53, i64 3904, i64 3, !169, i64 3907, i64 1, !169, i64 3908, i64 1, !169, i64 3909, i64 3, !169, i64 3912, i64 64, !169, i64 3976, i64 4, !171, i64 3980, i64 4, !171}
!169 = !{!36, !36, i64 0}
!170 = !{!41, !41, i64 0}
!171 = !{!40, !40, i64 0}
!172 = !{!63, !41, i64 1580}
!173 = !{!63, !36, i64 104}
!174 = !{!92, !54, i64 168}
!175 = !{!92, !54, i64 172}
!176 = !{!63, !40, i64 5736}
!177 = !{!63, !35, i64 5744}
!178 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!179 = !{!63, !35, i64 5656}
!180 = !{!63, !40, i64 5824}
!181 = !{!63, !35, i64 5800}
!182 = !{!63, !35, i64 1072}
!183 = !{!"envmap.c:envmap_transmatrix"}
!184 = !{!"envmap.c:env_layerflags"}
!185 = !{!45, !40, i64 52}
!186 = !{!45, !40, i64 84}
!187 = !{!45, !35, i64 120}
!188 = !{!189, !35, i64 0}
!189 = !{!"VlakTableNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !35, i64 56}
!190 = !{!191, !36, i64 57}
!191 = !{!"VlakRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !35, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !40, i64 60}
!192 = distinct !{!192, !43}
!193 = distinct !{!193, !43}
!194 = !{!"envmap.c:env_hideobject"}
!195 = distinct !{!195, !43}
!196 = distinct !{!196, !43}
!197 = !{!"envmap.c:env_showobjects"}
!198 = distinct !{!198, !43}
!199 = distinct !{!199, !43}
!200 = !{!"envmap.c:envmap_free_render_copy"}
!201 = !{!"envmap.c:BLI_listbase_clear"}
