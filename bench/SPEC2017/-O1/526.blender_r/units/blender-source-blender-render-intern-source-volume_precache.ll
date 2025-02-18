; ModuleID = 'blender/source/blender/render/intern/source/volume_precache.c'
source_filename = "blender/source/blender/render/intern/source/volume_precache.c"
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
%struct.VolumePrecache = type { [3 x i32], ptr, ptr, ptr, ptr, ptr }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.VertTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.VolPrecacheState = type { double, i32 }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.VolumeOb = type { ptr, ptr, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.VolPrecachePart = type { ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x float], [3 x float], ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c"volume precache min boundbox corner\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"volume precache max boundbox corner\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Volume preprocessing\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@R = external global %struct.Render, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"volume light cache\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"volume light cache data red channel\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"volume light cache data green channel\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"volume light cache data blue channel\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"new precache part\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Precaching volume: %d%%\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"temporary multiple scattering buffer\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Simulating multiple scattering: %d%%\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @global_bounds_obi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %10 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = load float, ptr %11, align 4, !tbaa !45
  store float %18, ptr %2, align 4, !tbaa !45
  %19 = getelementptr inbounds float, ptr %11, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !45
  %21 = getelementptr inbounds float, ptr %2, i64 1
  store float %20, ptr %21, align 4, !tbaa !45
  %22 = getelementptr inbounds float, ptr %11, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !45
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float %23, ptr %24, align 4, !tbaa !45
  %25 = load float, ptr %15, align 4, !tbaa !45
  store float %25, ptr %3, align 4, !tbaa !45
  %26 = getelementptr inbounds float, ptr %15, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !45
  %28 = getelementptr inbounds float, ptr %3, i64 1
  store float %27, ptr %28, align 4, !tbaa !45
  %29 = getelementptr inbounds float, ptr %15, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !45
  %31 = getelementptr inbounds float, ptr %3, i64 2
  store float %30, ptr %31, align 4, !tbaa !45
  br label %95

32:                                               ; preds = %13, %4
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %34 = tail call ptr %33(i64 noundef 12, ptr noundef nonnull @.str) #8
  store ptr %34, ptr %10, align 8, !tbaa !42
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %36 = tail call ptr %35(i64 noundef 12, ptr noundef nonnull @.str.1) #8
  %37 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !44
  %38 = getelementptr inbounds float, ptr %2, i64 2
  store float 0x46293E5940000000, ptr %38, align 4, !tbaa !45
  %39 = getelementptr inbounds float, ptr %2, i64 1
  store float 0x46293E5940000000, ptr %39, align 4, !tbaa !45
  store float 0x46293E5940000000, ptr %2, align 4, !tbaa !45
  %40 = getelementptr inbounds float, ptr %3, i64 2
  store float 0xC6293E5940000000, ptr %40, align 4, !tbaa !45
  %41 = getelementptr inbounds float, ptr %3, i64 1
  store float 0xC6293E5940000000, ptr %41, align 4, !tbaa !45
  store float 0xC6293E5940000000, ptr %3, align 4, !tbaa !45
  %42 = getelementptr inbounds %struct.ObjectRen, ptr %7, i64 0, i32 10
  %43 = load i32, ptr %42, align 8, !tbaa !48
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.ObjectRen, ptr %7, i64 0, i32 18
  %47 = getelementptr inbounds float, ptr %5, i64 1
  %48 = getelementptr inbounds float, ptr %5, i64 2
  %49 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %50 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  br label %52

52:                                               ; preds = %45, %76
  %53 = phi i32 [ 0, %45 ], [ %79, %76 ]
  %54 = phi ptr [ null, %45 ], [ %66, %76 ]
  %55 = and i32 %53, 255
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load ptr, ptr %46, align 8, !tbaa !50
  %59 = lshr exact i32 %53, 8
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds %struct.VertTableNode, ptr %58, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !51
  br label %65

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.VertRen, ptr %54, i64 1
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi ptr [ %62, %57 ], [ %64, %63 ]
  %67 = load float, ptr %66, align 4, !tbaa !45
  store float %67, ptr %5, align 4, !tbaa !45
  %68 = getelementptr inbounds float, ptr %66, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !45
  store float %69, ptr %47, align 4, !tbaa !45
  %70 = getelementptr inbounds float, ptr %66, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !45
  store float %71, ptr %48, align 4, !tbaa !45
  %72 = load i16, ptr %49, align 8, !tbaa !53
  %73 = and i16 %72, 3
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  call void @mul_m4_v3(ptr noundef nonnull %50, ptr noundef nonnull %5) #8
  br label %76

76:                                               ; preds = %75, %65
  call void @mul_m4_v3(ptr noundef nonnull %51, ptr noundef nonnull %5) #8
  %77 = load ptr, ptr %10, align 8, !tbaa !42
  %78 = load ptr, ptr %37, align 8, !tbaa !44
  call void @minmax_v3v3_v3(ptr noundef %77, ptr noundef %78, ptr noundef nonnull %5) #8
  %79 = add nuw nsw i32 %53, 1
  %80 = load i32, ptr %42, align 8, !tbaa !48
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %52, label %82, !llvm.loop !54

82:                                               ; preds = %76, %32
  %83 = load ptr, ptr %10, align 8, !tbaa !42
  %84 = load float, ptr %83, align 4, !tbaa !45
  store float %84, ptr %2, align 4, !tbaa !45
  %85 = getelementptr inbounds float, ptr %83, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !45
  store float %86, ptr %39, align 4, !tbaa !45
  %87 = getelementptr inbounds float, ptr %83, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !45
  store float %88, ptr %38, align 4, !tbaa !45
  %89 = load ptr, ptr %37, align 8, !tbaa !44
  %90 = load float, ptr %89, align 4, !tbaa !45
  store float %90, ptr %3, align 4, !tbaa !45
  %91 = getelementptr inbounds float, ptr %89, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !45
  store float %92, ptr %41, align 4, !tbaa !45
  %93 = getelementptr inbounds float, ptr %89, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !45
  store float %94, ptr %40, align 4, !tbaa !45
  br label %95

95:                                               ; preds = %82, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @volume_precache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca %struct.VolPrecacheState, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.ShadeInput, align 8
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.2, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  tail call void %12(ptr noundef %14, ptr noundef nonnull %9) #8
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %17 = load ptr, ptr %15, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %931, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %22 = getelementptr inbounds float, ptr %7, i64 1
  %23 = getelementptr inbounds float, ptr %6, i64 1
  %24 = getelementptr inbounds float, ptr %7, i64 2
  %25 = getelementptr inbounds float, ptr %6, i64 2
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 108
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 105
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 1
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 32
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 55
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 3
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 4
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 117
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %36 = getelementptr inbounds %struct.VolPrecacheState, ptr %3, i64 0, i32 1
  %37 = getelementptr inbounds float, ptr %5, i64 1
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = getelementptr inbounds float, ptr %5, i64 2
  %40 = getelementptr inbounds float, ptr %4, i64 2
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  br label %54

54:                                               ; preds = %19, %928
  %55 = phi ptr [ %17, %19 ], [ %929, %928 ]
  %56 = getelementptr inbounds %struct.VolumeOb, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  %58 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 27, i32 11
  %59 = load i16, ptr %58, align 2, !tbaa !77
  %60 = and i16 %59, 8
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 27, i32 12
  %64 = load i16, ptr %63, align 4, !tbaa !81
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %54
  %67 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 27, i32 12
  %68 = load i16, ptr %67, align 4, !tbaa !81
  %69 = icmp eq i16 %68, 3
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = icmp eq i16 %68, 4
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %62, %66, %70
  %74 = phi i32 [ 1, %62 ], [ 1, %66 ], [ %72, %70 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %928, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %20, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %921, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.VolumeOb, ptr %55, i64 0, i32 3
  br label %81

81:                                               ; preds = %79, %918
  %82 = phi ptr [ %77, %79 ], [ %919, %918 ]
  %83 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = load ptr, ptr %80, align 8, !tbaa !82
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %87, label %918

87:                                               ; preds = %81
  %88 = load ptr, ptr %56, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %8) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !83
  %89 = call ptr @makeraytree_object(ptr noundef nonnull @R, ptr noundef nonnull %82) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %911, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %93 = call ptr %92(i64 noundef 56, ptr noundef nonnull @.str.3) #8
  %94 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %82, i64 0, i32 15
  store ptr %93, ptr %94, align 8, !tbaa !41
  %95 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 27, i32 13
  %96 = load i16, ptr %95, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @global_bounds_obi(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %97 = load float, ptr %7, align 4, !tbaa !45
  %98 = load float, ptr %6, align 4, !tbaa !45
  %99 = fsub float %97, %98
  %100 = load float, ptr %22, align 4, !tbaa !45
  %101 = load float, ptr %23, align 4, !tbaa !45
  %102 = fsub float %100, %101
  %103 = load float, ptr %24, align 4, !tbaa !45
  %104 = load float, ptr %25, align 4, !tbaa !45
  %105 = fsub float %103, %104
  %106 = fcmp ogt float %99, %102
  %107 = select i1 %106, float %99, float %102
  %108 = fcmp ogt float %107, %105
  %109 = select i1 %108, float %107, float %105
  %110 = fdiv float %99, %109
  %111 = fdiv float %102, %109
  %112 = fdiv float %105, %109
  %113 = sitofp i16 %96 to float
  %114 = fmul float %110, %113
  %115 = call float @llvm.ceil.f32(float %114)
  %116 = fptosi float %115 to i32
  store i32 %116, ptr %93, align 8, !tbaa !85
  %117 = fmul float %111, %113
  %118 = call float @llvm.ceil.f32(float %117)
  %119 = fptosi float %118 to i32
  %120 = getelementptr inbounds [3 x i32], ptr %93, i64 0, i64 1
  store i32 %119, ptr %120, align 4, !tbaa !85
  %121 = fmul float %112, %113
  %122 = call float @llvm.ceil.f32(float %121)
  %123 = fptosi float %122 to i32
  %124 = getelementptr inbounds [3 x i32], ptr %93, i64 0, i64 2
  store i32 %123, ptr %124, align 8, !tbaa !85
  %125 = icmp slt i32 %119, 1
  %126 = icmp slt i32 %123, 1
  %127 = icmp slt i32 %116, 1
  %128 = select i1 %127, i1 true, i1 %125
  %129 = select i1 %128, i1 true, i1 %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  br i1 %129, label %909, label %130

130:                                              ; preds = %91
  %131 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %132 = sext i32 %116 to i64
  %133 = shl nsw i64 %132, 2
  %134 = sext i32 %119 to i64
  %135 = mul i64 %133, %134
  %136 = sext i32 %123 to i64
  %137 = mul i64 %135, %136
  %138 = call ptr %131(i64 noundef %137, ptr noundef nonnull @.str.4) #8
  %139 = getelementptr inbounds %struct.VolumePrecache, ptr %93, i64 0, i32 3
  store ptr %138, ptr %139, align 8, !tbaa !89
  %140 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %141 = load i32, ptr %93, align 8, !tbaa !85
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 2
  %144 = load i32, ptr %120, align 4, !tbaa !85
  %145 = sext i32 %144 to i64
  %146 = mul i64 %143, %145
  %147 = load i32, ptr %124, align 8, !tbaa !85
  %148 = sext i32 %147 to i64
  %149 = mul i64 %146, %148
  %150 = call ptr %140(i64 noundef %149, ptr noundef nonnull @.str.5) #8
  %151 = getelementptr inbounds %struct.VolumePrecache, ptr %93, i64 0, i32 4
  store ptr %150, ptr %151, align 8, !tbaa !90
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %153 = load i32, ptr %93, align 8, !tbaa !85
  %154 = sext i32 %153 to i64
  %155 = shl nsw i64 %154, 2
  %156 = load i32, ptr %120, align 4, !tbaa !85
  %157 = sext i32 %156 to i64
  %158 = mul i64 %155, %157
  %159 = load i32, ptr %124, align 8, !tbaa !85
  %160 = sext i32 %159 to i64
  %161 = mul i64 %158, %160
  %162 = call ptr %152(i64 noundef %161, ptr noundef nonnull @.str.6) #8
  %163 = getelementptr inbounds %struct.VolumePrecache, ptr %93, i64 0, i32 5
  store ptr %162, ptr %163, align 8, !tbaa !91
  %164 = load ptr, ptr %139, align 8, !tbaa !89
  %165 = icmp eq ptr %164, null
  br i1 %165, label %909, label %166

166:                                              ; preds = %130
  %167 = load ptr, ptr %151, align 8, !tbaa !90
  %168 = icmp eq ptr %167, null
  %169 = icmp eq ptr %162, null
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %909, label %171

171:                                              ; preds = %166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %8, i8 0, i64 1472, i1 false)
  store i32 1, ptr %26, align 8, !tbaa !92
  store i32 1, ptr %27, align 4, !tbaa !94
  store ptr %88, ptr %8, align 8, !tbaa !95
  store ptr null, ptr %28, align 8, !tbaa !96
  %172 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %29, ptr noundef nonnull align 4 dereferenceable(92) %172, i64 92, i1 false)
  %173 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 38
  %174 = load i16, ptr %173, align 8, !tbaa !97
  %175 = sext i16 %174 to i32
  store i32 %175, ptr %30, align 8, !tbaa !98
  store ptr %82, ptr %31, align 8, !tbaa !99
  %176 = load ptr, ptr %83, align 8, !tbaa !34
  store ptr %176, ptr %32, align 8, !tbaa !100
  %177 = load i32, ptr %33, align 8, !tbaa !101
  store i32 %177, ptr %34, align 8, !tbaa !102
  %178 = load ptr, ptr %94, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %179 = load i16, ptr %35, align 2, !tbaa !103
  %180 = sext i16 %179 to i32
  %181 = icmp eq ptr %178, null
  br i1 %181, label %280, label %182

182:                                              ; preds = %171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %183 = mul nsw i32 %180, %180
  %184 = mul nsw i32 %183, %180
  store i32 %184, ptr %36, align 8, !tbaa !104
  %185 = call double @PIL_check_seconds_timer() #8
  store double %185, ptr %3, align 8, !tbaa !106
  %186 = call ptr @BLI_task_scheduler_create(i32 noundef %180) #8
  %187 = call ptr @BLI_task_pool_create(ptr noundef %186, ptr noundef nonnull %3) #8
  call void @global_bounds_obi(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %188 = load float, ptr %5, align 4, !tbaa !45
  %189 = load float, ptr %4, align 4, !tbaa !45
  %190 = fsub float %188, %189
  %191 = load float, ptr %37, align 4, !tbaa !45
  %192 = load float, ptr %38, align 4, !tbaa !45
  %193 = fsub float %191, %192
  %194 = load float, ptr %39, align 4, !tbaa !45
  %195 = load float, ptr %40, align 4, !tbaa !45
  %196 = fsub float %194, %195
  %197 = load i32, ptr %178, align 4, !tbaa !85
  %198 = sitofp i32 %197 to float
  %199 = fdiv float %190, %198
  %200 = getelementptr inbounds i32, ptr %178, i64 1
  %201 = load i32, ptr %200, align 4, !tbaa !85
  %202 = sitofp i32 %201 to float
  %203 = fdiv float %193, %202
  %204 = getelementptr inbounds i32, ptr %178, i64 2
  %205 = load i32, ptr %204, align 4, !tbaa !85
  %206 = sitofp i32 %205 to float
  %207 = fdiv float %196, %206
  %208 = icmp sgt i16 %179, 0
  br i1 %208, label %209, label %279

209:                                              ; preds = %182
  %210 = sitofp i16 %179 to float
  br label %211

211:                                              ; preds = %209, %276
  %212 = phi i32 [ 0, %209 ], [ %270, %276 ]
  %213 = phi i32 [ 0, %209 ], [ %277, %276 ]
  %214 = load i32, ptr %178, align 4, !tbaa !85
  %215 = sitofp i32 %214 to float
  %216 = fdiv float %215, %210
  %217 = call float @llvm.ceil.f32(float %216)
  %218 = fptosi float %217 to i32
  %219 = mul nsw i32 %213, %218
  %220 = add nsw i32 %219, %218
  %221 = call i32 @llvm.smin.i32(i32 %220, i32 %214)
  br label %222

222:                                              ; preds = %211, %273
  %223 = phi i32 [ %212, %211 ], [ %270, %273 ]
  %224 = phi i32 [ 0, %211 ], [ %274, %273 ]
  %225 = load i32, ptr %200, align 4, !tbaa !85
  %226 = sitofp i32 %225 to float
  %227 = fdiv float %226, %210
  %228 = call float @llvm.ceil.f32(float %227)
  %229 = fptosi float %228 to i32
  %230 = mul nsw i32 %224, %229
  %231 = add nsw i32 %230, %229
  %232 = call i32 @llvm.smin.i32(i32 %231, i32 %225)
  br label %233

233:                                              ; preds = %222, %233
  %234 = phi i32 [ %223, %222 ], [ %270, %233 ]
  %235 = phi i32 [ 0, %222 ], [ %271, %233 ]
  %236 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %237 = call ptr %236(i64 noundef 176, ptr noundef nonnull @.str.7) #8
  %238 = load i32, ptr %204, align 4, !tbaa !85
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %239, %210
  %241 = call float @llvm.ceil.f32(float %240)
  %242 = fptosi float %241 to i32
  %243 = mul nsw i32 %235, %242
  %244 = add nsw i32 %243, %242
  %245 = call i32 @llvm.smin.i32(i32 %244, i32 %238)
  %246 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 16
  store ptr %0, ptr %246, align 8, !tbaa !107
  %247 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 6
  store i32 %234, ptr %247, align 8, !tbaa !109
  %248 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 2
  store ptr %89, ptr %248, align 8, !tbaa !110
  %249 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 3
  store ptr %8, ptr %249, align 8, !tbaa !111
  %250 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 4
  store ptr %82, ptr %250, align 8, !tbaa !112
  %251 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 5
  call void @copy_m4_m4(ptr noundef nonnull %251, ptr noundef nonnull %41) #8
  %252 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 14
  store float %189, ptr %252, align 4, !tbaa !45
  %253 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 14, i64 1
  store float %192, ptr %253, align 4, !tbaa !45
  %254 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 14, i64 2
  store float %195, ptr %254, align 4, !tbaa !45
  %255 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 15
  store float %199, ptr %255, align 4, !tbaa !45
  %256 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 15, i64 1
  store float %203, ptr %256, align 4, !tbaa !45
  %257 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 15, i64 2
  store float %207, ptr %257, align 4, !tbaa !45
  %258 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 13
  %259 = load i32, ptr %178, align 4, !tbaa !85
  store i32 %259, ptr %258, align 4, !tbaa !85
  %260 = load i32, ptr %200, align 4, !tbaa !85
  %261 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 13, i64 1
  store i32 %260, ptr %261, align 4, !tbaa !85
  %262 = load i32, ptr %204, align 4, !tbaa !85
  %263 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 13, i64 2
  store i32 %262, ptr %263, align 4, !tbaa !85
  %264 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 7
  store i32 %219, ptr %264, align 4, !tbaa !113
  %265 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 8
  store i32 %221, ptr %265, align 8, !tbaa !114
  %266 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 9
  store i32 %230, ptr %266, align 4, !tbaa !115
  %267 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 10
  store i32 %232, ptr %267, align 8, !tbaa !116
  %268 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 11
  store i32 %243, ptr %268, align 4, !tbaa !117
  %269 = getelementptr inbounds %struct.VolPrecachePart, ptr %237, i64 0, i32 12
  store i32 %245, ptr %269, align 8, !tbaa !118
  call void @BLI_task_pool_push(ptr noundef %187, ptr noundef nonnull @vol_precache_part, ptr noundef %237, i8 noundef zeroext 1, i32 noundef 1) #8
  %270 = add nsw i32 %234, 1
  %271 = add nuw nsw i32 %235, 1
  %272 = icmp eq i32 %271, %180
  br i1 %272, label %273, label %233, !llvm.loop !119

273:                                              ; preds = %233
  %274 = add nuw nsw i32 %224, 1
  %275 = icmp eq i32 %274, %180
  br i1 %275, label %276, label %222, !llvm.loop !120

276:                                              ; preds = %273
  %277 = add nuw nsw i32 %213, 1
  %278 = icmp eq i32 %277, %180
  br i1 %278, label %279, label %211, !llvm.loop !121

279:                                              ; preds = %276, %182
  call void @BLI_task_pool_work_and_wait(ptr noundef %187) #8
  call void @BLI_task_pool_free(ptr noundef %187) #8
  call void @BLI_task_scheduler_free(ptr noundef %186) #8
  br label %280

280:                                              ; preds = %279, %171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %281 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 27, i32 12
  %282 = load i16, ptr %281, align 4, !tbaa !81
  %283 = add i16 %282, -3
  %284 = icmp ult i16 %283, 2
  br i1 %284, label %285, label %683

285:                                              ; preds = %280
  %286 = load ptr, ptr %94, align 8, !tbaa !41
  %287 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 27, i32 15
  %288 = load float, ptr %287, align 4, !tbaa !122
  %289 = fmul float %288, 0x3F50624DE0000000
  %290 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 27, i32 17
  %291 = load float, ptr %290, align 4, !tbaa !123
  %292 = load i32, ptr %286, align 8, !tbaa !85
  %293 = getelementptr inbounds [3 x i32], ptr %286, i64 0, i64 1
  %294 = load i32, ptr %293, align 4, !tbaa !85
  %295 = getelementptr inbounds [3 x i32], ptr %286, i64 0, i64 2
  %296 = load i32, ptr %295, align 8, !tbaa !85
  %297 = call i32 @llvm.smax.i32(i32 %294, i32 %292)
  %298 = call i32 @llvm.smax.i32(i32 %296, i32 %297)
  %299 = sitofp i32 %298 to float
  %300 = fmul float %291, %299
  %301 = fptosi float %300 to i32
  %302 = getelementptr inbounds %struct.Material, ptr %88, i64 0, i32 27, i32 16
  %303 = load float, ptr %302, align 8, !tbaa !124
  %304 = add nsw i32 %292, 2
  %305 = add nsw i32 %294, 2
  %306 = mul nsw i32 %305, %304
  %307 = add nsw i32 %296, 2
  %308 = mul nsw i32 %306, %307
  %309 = icmp sgt i32 %308, 100000
  %310 = zext i1 %309 to i32
  %311 = call double @PIL_check_seconds_timer() #8
  %312 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %313 = sext i32 %308 to i64
  %314 = shl nsw i64 %313, 2
  %315 = call ptr %312(i64 noundef %314, ptr noundef nonnull @.str.9) #8
  %316 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %317 = call ptr %316(i64 noundef %314, ptr noundef nonnull @.str.9) #8
  %318 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %319 = call ptr %318(i64 noundef %314, ptr noundef nonnull @.str.9) #8
  %320 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %321 = call ptr %320(i64 noundef %314, ptr noundef nonnull @.str.9) #8
  %322 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %323 = call ptr %322(i64 noundef %314, ptr noundef nonnull @.str.9) #8
  %324 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %325 = call ptr %324(i64 noundef %314, ptr noundef nonnull @.str.9) #8
  %326 = load i32, ptr %286, align 4, !tbaa !85
  %327 = load i32, ptr %293, align 4, !tbaa !85
  %328 = load i32, ptr %295, align 4, !tbaa !85
  %329 = mul i32 %326, %301
  %330 = mul i32 %329, %327
  %331 = mul i32 %330, %328
  %332 = sitofp i32 %331 to float
  %333 = icmp sgt i32 %328, 0
  br i1 %333, label %334, label %396

334:                                              ; preds = %285
  %335 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 3
  %336 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 4
  %337 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 5
  br label %338

338:                                              ; preds = %334, %392
  %339 = phi float [ 0.000000e+00, %334 ], [ %386, %392 ]
  %340 = phi i32 [ 0, %334 ], [ %393, %392 ]
  %341 = load i32, ptr %293, align 4, !tbaa !85
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %385

343:                                              ; preds = %338
  %344 = load i32, ptr %286, align 4, !tbaa !85
  %345 = icmp sgt i32 %344, 0
  %346 = mul nsw i32 %341, %340
  %347 = zext nneg i32 %341 to i64
  %348 = zext nneg i32 %344 to i64
  br label %349

349:                                              ; preds = %343, %381
  %350 = phi i64 [ 0, %343 ], [ %383, %381 ]
  %351 = phi float [ %339, %343 ], [ %382, %381 ]
  br i1 %345, label %352, label %381

352:                                              ; preds = %349
  %353 = trunc i64 %350 to i32
  %354 = add i32 %346, %353
  %355 = mul i32 %344, %354
  %356 = load ptr, ptr %335, align 8, !tbaa !89
  %357 = load ptr, ptr %336, align 8, !tbaa !90
  %358 = load ptr, ptr %337, align 8, !tbaa !91
  %359 = sext i32 %355 to i64
  br label %360

360:                                              ; preds = %352, %360
  %361 = phi i64 [ 0, %352 ], [ %379, %360 ]
  %362 = phi float [ %351, %352 ], [ %378, %360 ]
  %363 = add nsw i64 %361, %359
  %364 = getelementptr inbounds float, ptr %356, i64 %363
  %365 = load float, ptr %364, align 4, !tbaa !45
  %366 = fcmp ogt float %365, 0.000000e+00
  %367 = select i1 %366, float %365, float -0.000000e+00
  %368 = fadd float %362, %367
  %369 = getelementptr inbounds float, ptr %357, i64 %363
  %370 = load float, ptr %369, align 4, !tbaa !45
  %371 = fcmp ogt float %370, 0.000000e+00
  %372 = select i1 %371, float %370, float -0.000000e+00
  %373 = fadd float %368, %372
  %374 = getelementptr inbounds float, ptr %358, i64 %363
  %375 = load float, ptr %374, align 4, !tbaa !45
  %376 = fcmp ogt float %375, 0.000000e+00
  %377 = select i1 %376, float %375, float -0.000000e+00
  %378 = fadd float %373, %377
  %379 = add nuw nsw i64 %361, 1
  %380 = icmp eq i64 %379, %348
  br i1 %380, label %381, label %360, !llvm.loop !125

381:                                              ; preds = %360, %349
  %382 = phi float [ %351, %349 ], [ %378, %360 ]
  %383 = add nuw nsw i64 %350, 1
  %384 = icmp eq i64 %383, %347
  br i1 %384, label %385, label %349, !llvm.loop !126

385:                                              ; preds = %381, %338
  %386 = phi float [ %339, %338 ], [ %382, %381 ]
  br i1 %309, label %387, label %392

387:                                              ; preds = %385
  %388 = load ptr, ptr %42, align 8, !tbaa !127
  %389 = load ptr, ptr %43, align 8, !tbaa !128
  %390 = call i32 %388(ptr noundef %389) #8
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %387, %385
  %393 = add nuw nsw i32 %340, 1
  %394 = load i32, ptr %295, align 4, !tbaa !85
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %338, label %396, !llvm.loop !129

396:                                              ; preds = %392, %387, %285
  %397 = phi float [ 0.000000e+00, %285 ], [ %386, %387 ], [ %386, %392 ]
  %398 = icmp sgt i32 %301, 0
  br i1 %398, label %399, label %528

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 3
  %401 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 4
  %402 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 5
  br label %403

403:                                              ; preds = %520, %399
  %404 = phi i32 [ 0, %399 ], [ %525, %520 ]
  %405 = phi double [ %311, %399 ], [ %515, %520 ]
  %406 = phi float [ 1.000000e+00, %399 ], [ %514, %520 ]
  %407 = phi ptr [ %325, %399 ], [ %408, %520 ]
  %408 = phi ptr [ %323, %399 ], [ %407, %520 ]
  %409 = phi ptr [ %321, %399 ], [ %410, %520 ]
  %410 = phi ptr [ %319, %399 ], [ %409, %520 ]
  %411 = phi ptr [ %317, %399 ], [ %412, %520 ]
  %412 = phi ptr [ %315, %399 ], [ %411, %520 ]
  %413 = load i32, ptr %295, align 4, !tbaa !85
  %414 = icmp slt i32 %413, 1
  br i1 %414, label %513, label %415

415:                                              ; preds = %403, %509
  %416 = phi i32 [ %510, %509 ], [ 1, %403 ]
  %417 = phi double [ %503, %509 ], [ %405, %403 ]
  %418 = phi float [ %502, %509 ], [ %406, %403 ]
  %419 = load i32, ptr %293, align 4, !tbaa !85
  %420 = icmp slt i32 %419, 1
  br i1 %420, label %501, label %421

421:                                              ; preds = %415
  %422 = add nsw i32 %416, -1
  br label %423

423:                                              ; preds = %421, %495
  %424 = phi i32 [ 1, %421 ], [ %498, %495 ]
  %425 = phi double [ %417, %421 ], [ %497, %495 ]
  %426 = phi float [ %418, %421 ], [ %496, %495 ]
  %427 = load i32, ptr %286, align 4, !tbaa !85
  %428 = icmp slt i32 %427, 1
  br i1 %428, label %495, label %429

429:                                              ; preds = %423
  %430 = add nsw i32 %424, -1
  br label %431

431:                                              ; preds = %429, %490
  %432 = phi i32 [ 1, %429 ], [ %492, %490 ]
  %433 = phi double [ %425, %429 ], [ %491, %490 ]
  %434 = phi float [ %426, %429 ], [ %449, %490 ]
  %435 = add nsw i32 %432, -1
  %436 = load i32, ptr %293, align 4, !tbaa !85
  %437 = load i32, ptr %295, align 4, !tbaa !85
  %438 = mul i32 %436, %435
  %439 = add i32 %430, %438
  %440 = mul i32 %439, %437
  %441 = add i32 %422, %440
  %442 = add nsw i32 %436, 2
  %443 = mul nsw i32 %442, %432
  %444 = add nsw i32 %437, 2
  %445 = add i32 %443, %424
  %446 = mul i32 %445, %444
  %447 = add nsw i32 %446, %416
  %448 = call double @PIL_check_seconds_timer() #8
  %449 = fadd float %434, 1.000000e+00
  %450 = load ptr, ptr %400, align 8, !tbaa !89
  %451 = sext i32 %441 to i64
  %452 = getelementptr inbounds float, ptr %450, i64 %451
  %453 = load float, ptr %452, align 4, !tbaa !45
  %454 = fcmp ogt float %453, 0.000000e+00
  br i1 %454, label %455, label %460

455:                                              ; preds = %431
  %456 = sext i32 %447 to i64
  %457 = getelementptr inbounds float, ptr %411, i64 %456
  %458 = load float, ptr %457, align 4, !tbaa !45
  %459 = fadd float %453, %458
  store float %459, ptr %457, align 4, !tbaa !45
  br label %460

460:                                              ; preds = %455, %431
  %461 = load ptr, ptr %401, align 8, !tbaa !90
  %462 = getelementptr inbounds float, ptr %461, i64 %451
  %463 = load float, ptr %462, align 4, !tbaa !45
  %464 = fcmp ogt float %463, 0.000000e+00
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = sext i32 %447 to i64
  %467 = getelementptr inbounds float, ptr %409, i64 %466
  %468 = load float, ptr %467, align 4, !tbaa !45
  %469 = fadd float %463, %468
  store float %469, ptr %467, align 4, !tbaa !45
  br label %470

470:                                              ; preds = %465, %460
  %471 = load ptr, ptr %402, align 8, !tbaa !91
  %472 = getelementptr inbounds float, ptr %471, i64 %451
  %473 = load float, ptr %472, align 4, !tbaa !45
  %474 = fcmp ogt float %473, 0.000000e+00
  br i1 %474, label %475, label %480

475:                                              ; preds = %470
  %476 = sext i32 %447 to i64
  %477 = getelementptr inbounds float, ptr %407, i64 %476
  %478 = load float, ptr %477, align 4, !tbaa !45
  %479 = fadd float %473, %478
  store float %479, ptr %477, align 4, !tbaa !45
  br label %480

480:                                              ; preds = %475, %470
  %481 = fsub double %448, %433
  %482 = fcmp ogt double %481, 1.000000e+00
  br i1 %482, label %483, label %490

483:                                              ; preds = %480
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  %484 = fdiv float %449, %332
  %485 = fmul float %484, 1.000000e+02
  %486 = fptosi float %485 to i32
  %487 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.10, i32 noundef %486) #8
  store ptr %2, ptr %10, align 8, !tbaa !57
  %488 = load ptr, ptr %11, align 8, !tbaa !73
  %489 = load ptr, ptr %13, align 8, !tbaa !74
  call void %488(ptr noundef %489, ptr noundef nonnull %9) #8
  store ptr null, ptr %10, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  br label %490

490:                                              ; preds = %483, %480
  %491 = phi double [ %448, %483 ], [ %433, %480 ]
  %492 = add nuw nsw i32 %432, 1
  %493 = load i32, ptr %286, align 4, !tbaa !85
  %494 = icmp slt i32 %432, %493
  br i1 %494, label %431, label %495, !llvm.loop !130

495:                                              ; preds = %490, %423
  %496 = phi float [ %426, %423 ], [ %449, %490 ]
  %497 = phi double [ %425, %423 ], [ %491, %490 ]
  %498 = add nuw nsw i32 %424, 1
  %499 = load i32, ptr %293, align 4, !tbaa !85
  %500 = icmp slt i32 %424, %499
  br i1 %500, label %423, label %501, !llvm.loop !131

501:                                              ; preds = %495, %415
  %502 = phi float [ %418, %415 ], [ %496, %495 ]
  %503 = phi double [ %417, %415 ], [ %497, %495 ]
  br i1 %309, label %504, label %509

504:                                              ; preds = %501
  %505 = load ptr, ptr %44, align 8, !tbaa !127
  %506 = load ptr, ptr %45, align 8, !tbaa !128
  %507 = call i32 %505(ptr noundef %506) #8
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %513

509:                                              ; preds = %504, %501
  %510 = add nuw nsw i32 %416, 1
  %511 = load i32, ptr %295, align 4, !tbaa !85
  %512 = icmp slt i32 %416, %511
  br i1 %512, label %415, label %513, !llvm.loop !132

513:                                              ; preds = %509, %504, %403
  %514 = phi float [ %406, %403 ], [ %502, %504 ], [ %502, %509 ]
  %515 = phi double [ %405, %403 ], [ %503, %504 ], [ %503, %509 ]
  %516 = load ptr, ptr %46, align 8, !tbaa !127
  %517 = load ptr, ptr %47, align 8, !tbaa !128
  %518 = call i32 %516(ptr noundef %517) #8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %513
  call fastcc void @ms_diffuse(ptr noundef %0, i32 noundef %310, ptr noundef %411, ptr noundef %412, float noundef %289, ptr noundef nonnull %286)
  call fastcc void @ms_diffuse(ptr noundef %0, i32 noundef %310, ptr noundef %409, ptr noundef %410, float noundef %289, ptr noundef nonnull %286)
  call fastcc void @ms_diffuse(ptr noundef %0, i32 noundef %310, ptr noundef %407, ptr noundef %408, float noundef %289, ptr noundef nonnull %286)
  %521 = load ptr, ptr %46, align 8, !tbaa !127
  %522 = load ptr, ptr %47, align 8, !tbaa !128
  %523 = call i32 %521(ptr noundef %522) #8
  %524 = icmp eq i32 %523, 0
  %525 = add nuw nsw i32 %404, 1
  %526 = icmp slt i32 %525, %301
  %527 = select i1 %524, i1 %526, i1 false
  br i1 %527, label %403, label %528, !llvm.loop !133

528:                                              ; preds = %513, %520, %396
  %529 = phi ptr [ %315, %396 ], [ %412, %513 ], [ %411, %520 ]
  %530 = phi ptr [ %317, %396 ], [ %411, %513 ], [ %412, %520 ]
  %531 = phi ptr [ %319, %396 ], [ %410, %513 ], [ %409, %520 ]
  %532 = phi ptr [ %321, %396 ], [ %409, %513 ], [ %410, %520 ]
  %533 = phi ptr [ %323, %396 ], [ %408, %513 ], [ %407, %520 ]
  %534 = phi ptr [ %325, %396 ], [ %407, %513 ], [ %408, %520 ]
  %535 = load i32, ptr %295, align 4, !tbaa !85
  %536 = icmp slt i32 %535, 1
  br i1 %536, label %594, label %537

537:                                              ; preds = %528, %590
  %538 = phi i32 [ %592, %590 ], [ %535, %528 ]
  %539 = phi float [ %584, %590 ], [ 0.000000e+00, %528 ]
  %540 = phi i32 [ %591, %590 ], [ 1, %528 ]
  %541 = load i32, ptr %293, align 4, !tbaa !85
  %542 = icmp slt i32 %541, 1
  br i1 %542, label %583, label %543

543:                                              ; preds = %537
  %544 = load i32, ptr %286, align 4, !tbaa !85
  %545 = icmp slt i32 %544, 1
  %546 = add nuw nsw i32 %541, 2
  %547 = add nsw i32 %538, 2
  %548 = add i32 %544, 1
  %549 = zext i32 %548 to i64
  br label %550

550:                                              ; preds = %543, %579
  %551 = phi float [ %539, %543 ], [ %580, %579 ]
  %552 = phi i32 [ 1, %543 ], [ %581, %579 ]
  br i1 %545, label %579, label %553

553:                                              ; preds = %550, %553
  %554 = phi i64 [ %577, %553 ], [ 1, %550 ]
  %555 = phi float [ %576, %553 ], [ %551, %550 ]
  %556 = trunc i64 %554 to i32
  %557 = mul i32 %546, %556
  %558 = add nuw i32 %557, %552
  %559 = mul i32 %558, %547
  %560 = add nsw i32 %559, %540
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, ptr %530, i64 %561
  %563 = load float, ptr %562, align 4, !tbaa !45
  %564 = fcmp ogt float %563, 0.000000e+00
  %565 = select i1 %564, float %563, float -0.000000e+00
  %566 = fadd float %555, %565
  %567 = getelementptr inbounds float, ptr %532, i64 %561
  %568 = load float, ptr %567, align 4, !tbaa !45
  %569 = fcmp ogt float %568, 0.000000e+00
  %570 = select i1 %569, float %568, float -0.000000e+00
  %571 = fadd float %566, %570
  %572 = getelementptr inbounds float, ptr %534, i64 %561
  %573 = load float, ptr %572, align 4, !tbaa !45
  %574 = fcmp ogt float %573, 0.000000e+00
  %575 = select i1 %574, float %573, float -0.000000e+00
  %576 = fadd float %571, %575
  %577 = add nuw nsw i64 %554, 1
  %578 = icmp eq i64 %577, %549
  br i1 %578, label %579, label %553, !llvm.loop !134

579:                                              ; preds = %553, %550
  %580 = phi float [ %551, %550 ], [ %576, %553 ]
  %581 = add nuw i32 %552, 1
  %582 = icmp eq i32 %552, %541
  br i1 %582, label %583, label %550, !llvm.loop !135

583:                                              ; preds = %579, %537
  %584 = phi float [ %539, %537 ], [ %580, %579 ]
  br i1 %309, label %585, label %590

585:                                              ; preds = %583
  %586 = load ptr, ptr %48, align 8, !tbaa !127
  %587 = load ptr, ptr %49, align 8, !tbaa !128
  %588 = call i32 %586(ptr noundef %587) #8
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %585, %583
  %591 = add nuw nsw i32 %540, 1
  %592 = load i32, ptr %295, align 4, !tbaa !85
  %593 = icmp slt i32 %540, %592
  br i1 %593, label %537, label %594, !llvm.loop !136

594:                                              ; preds = %590, %585, %528
  %595 = phi float [ 0.000000e+00, %528 ], [ %584, %585 ], [ %584, %590 ]
  %596 = fdiv float %397, %595
  %597 = fmul float %303, %596
  %598 = icmp eq i16 %282, 4
  %599 = fmul float %597, 5.000000e-01
  %600 = select i1 %598, float 5.000000e-01, float 0.000000e+00
  %601 = select i1 %598, float %599, float %597
  %602 = load i32, ptr %295, align 4, !tbaa !85
  %603 = icmp slt i32 %602, 1
  br i1 %603, label %676, label %604

604:                                              ; preds = %594
  %605 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 3
  %606 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 4
  %607 = getelementptr inbounds %struct.VolumePrecache, ptr %286, i64 0, i32 5
  br label %608

608:                                              ; preds = %604, %672
  %609 = phi i32 [ %602, %604 ], [ %674, %672 ]
  %610 = phi i32 [ 1, %604 ], [ %673, %672 ]
  %611 = load i32, ptr %293, align 4, !tbaa !85
  %612 = icmp slt i32 %611, 1
  br i1 %612, label %666, label %613

613:                                              ; preds = %608
  %614 = load i32, ptr %286, align 4, !tbaa !85
  %615 = icmp slt i32 %614, 1
  %616 = add nsw i32 %610, -1
  %617 = add nuw nsw i32 %611, 2
  %618 = add nsw i32 %609, 2
  %619 = add i32 %614, 1
  %620 = zext i32 %619 to i64
  br label %621

621:                                              ; preds = %613, %663
  %622 = phi i32 [ 1, %613 ], [ %664, %663 ]
  br i1 %615, label %663, label %623

623:                                              ; preds = %621
  %624 = add nsw i32 %622, -1
  %625 = load ptr, ptr %605, align 8, !tbaa !89
  %626 = load ptr, ptr %606, align 8, !tbaa !90
  %627 = load ptr, ptr %607, align 8, !tbaa !91
  br label %628

628:                                              ; preds = %623, %628
  %629 = phi i64 [ 1, %623 ], [ %661, %628 ]
  %630 = trunc i64 %629 to i32
  %631 = add i32 %630, -1
  %632 = mul i32 %631, %611
  %633 = add i32 %624, %632
  %634 = mul i32 %633, %609
  %635 = add i32 %616, %634
  %636 = trunc i64 %629 to i32
  %637 = mul i32 %617, %636
  %638 = add nuw i32 %637, %622
  %639 = mul i32 %638, %618
  %640 = add nsw i32 %639, %610
  %641 = sext i32 %635 to i64
  %642 = getelementptr inbounds float, ptr %625, i64 %641
  %643 = load float, ptr %642, align 4, !tbaa !45
  %644 = sext i32 %640 to i64
  %645 = getelementptr inbounds float, ptr %530, i64 %644
  %646 = load float, ptr %645, align 4, !tbaa !45
  %647 = fmul float %601, %646
  %648 = call float @llvm.fmuladd.f32(float %600, float %643, float %647)
  store float %648, ptr %642, align 4, !tbaa !45
  %649 = getelementptr inbounds float, ptr %626, i64 %641
  %650 = load float, ptr %649, align 4, !tbaa !45
  %651 = getelementptr inbounds float, ptr %532, i64 %644
  %652 = load float, ptr %651, align 4, !tbaa !45
  %653 = fmul float %601, %652
  %654 = call float @llvm.fmuladd.f32(float %600, float %650, float %653)
  store float %654, ptr %649, align 4, !tbaa !45
  %655 = getelementptr inbounds float, ptr %627, i64 %641
  %656 = load float, ptr %655, align 4, !tbaa !45
  %657 = getelementptr inbounds float, ptr %534, i64 %644
  %658 = load float, ptr %657, align 4, !tbaa !45
  %659 = fmul float %601, %658
  %660 = call float @llvm.fmuladd.f32(float %600, float %656, float %659)
  store float %660, ptr %655, align 4, !tbaa !45
  %661 = add nuw nsw i64 %629, 1
  %662 = icmp eq i64 %661, %620
  br i1 %662, label %663, label %628, !llvm.loop !137

663:                                              ; preds = %628, %621
  %664 = add nuw i32 %622, 1
  %665 = icmp eq i32 %622, %611
  br i1 %665, label %666, label %621, !llvm.loop !138

666:                                              ; preds = %663, %608
  br i1 %309, label %667, label %672

667:                                              ; preds = %666
  %668 = load ptr, ptr %50, align 8, !tbaa !127
  %669 = load ptr, ptr %51, align 8, !tbaa !128
  %670 = call i32 %668(ptr noundef %669) #8
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %667, %666
  %673 = add nuw nsw i32 %610, 1
  %674 = load i32, ptr %295, align 4, !tbaa !85
  %675 = icmp slt i32 %610, %674
  br i1 %675, label %608, label %676, !llvm.loop !139

676:                                              ; preds = %672, %667, %594
  %677 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %677(ptr noundef %529) #8
  %678 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %678(ptr noundef %530) #8
  %679 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %679(ptr noundef %531) #8
  %680 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %680(ptr noundef %532) #8
  %681 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %681(ptr noundef %533) #8
  %682 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %682(ptr noundef %534) #8
  br label %683

683:                                              ; preds = %676, %280
  %684 = load ptr, ptr %94, align 8, !tbaa !41
  %685 = getelementptr inbounds [3 x i32], ptr %684, i64 0, i64 2
  %686 = load i32, ptr %685, align 8, !tbaa !85
  %687 = icmp sgt i32 %686, 0
  br i1 %687, label %688, label %911

688:                                              ; preds = %683
  %689 = getelementptr inbounds [3 x i32], ptr %684, i64 0, i64 1
  %690 = load i32, ptr %689, align 4, !tbaa !85
  %691 = icmp sgt i32 %690, 0
  %692 = getelementptr inbounds %struct.VolumePrecache, ptr %684, i64 0, i32 3
  %693 = getelementptr inbounds %struct.VolumePrecache, ptr %684, i64 0, i32 4
  %694 = getelementptr inbounds %struct.VolumePrecache, ptr %684, i64 0, i32 5
  %695 = zext nneg i32 %686 to i64
  %696 = zext nneg i32 %690 to i64
  br label %697

697:                                              ; preds = %688, %906
  %698 = phi i64 [ 0, %688 ], [ %907, %906 ]
  br i1 %691, label %699, label %906

699:                                              ; preds = %697
  %700 = load i32, ptr %684, align 8, !tbaa !85
  %701 = icmp sgt i32 %700, 0
  %702 = trunc i64 %698 to i32
  %703 = mul i32 %690, %702
  %704 = zext nneg i32 %700 to i64
  %705 = trunc i64 %698 to i32
  %706 = trunc i64 %698 to i32
  %707 = trunc i64 %698 to i32
  br label %708

708:                                              ; preds = %699, %903
  %709 = phi i64 [ 0, %699 ], [ %904, %903 ]
  br i1 %701, label %710, label %903

710:                                              ; preds = %708
  %711 = trunc i64 %709 to i32
  %712 = add i32 %703, %711
  %713 = mul i32 %700, %712
  %714 = load ptr, ptr %692, align 8, !tbaa !89
  %715 = load ptr, ptr %693, align 8, !tbaa !90
  %716 = load ptr, ptr %694, align 8, !tbaa !91
  %717 = sext i32 %713 to i64
  br label %718

718:                                              ; preds = %710, %900
  %719 = phi i64 [ 0, %710 ], [ %901, %900 ]
  %720 = add nsw i64 %719, %717
  %721 = getelementptr inbounds float, ptr %714, i64 %720
  %722 = load float, ptr %721, align 4, !tbaa !45
  %723 = fcmp olt float %722, 0.000000e+00
  br i1 %723, label %724, label %780

724:                                              ; preds = %718, %770
  %725 = phi float [ %772, %770 ], [ 0.000000e+00, %718 ]
  %726 = phi i32 [ %771, %770 ], [ 0, %718 ]
  %727 = phi i32 [ %773, %770 ], [ -1, %718 ]
  %728 = add nsw i32 %727, %705
  %729 = icmp ult i32 %728, %686
  br i1 %729, label %730, label %770

730:                                              ; preds = %724
  %731 = mul nsw i32 %728, %690
  br label %732

732:                                              ; preds = %730, %765
  %733 = phi i64 [ -1, %730 ], [ %768, %765 ]
  %734 = phi float [ %725, %730 ], [ %767, %765 ]
  %735 = phi i32 [ %726, %730 ], [ %766, %765 ]
  %736 = add nsw i64 %733, %709
  %737 = trunc i64 %736 to i32
  %738 = icmp ugt i32 %690, %737
  br i1 %738, label %739, label %765

739:                                              ; preds = %732
  %740 = trunc i64 %736 to i32
  %741 = add i32 %731, %740
  %742 = mul i32 %741, %700
  %743 = sext i32 %742 to i64
  %744 = getelementptr float, ptr %714, i64 %743
  br label %745

745:                                              ; preds = %760, %739
  %746 = phi i64 [ %763, %760 ], [ -1, %739 ]
  %747 = phi float [ %762, %760 ], [ %734, %739 ]
  %748 = phi i32 [ %761, %760 ], [ %735, %739 ]
  %749 = add nsw i64 %746, %719
  %750 = trunc i64 %749 to i32
  %751 = icmp ugt i32 %700, %750
  br i1 %751, label %752, label %760

752:                                              ; preds = %745
  %753 = getelementptr float, ptr %744, i64 %749
  %754 = load float, ptr %753, align 4, !tbaa !45
  %755 = fcmp ogt float %754, 0.000000e+00
  %756 = zext i1 %755 to i32
  %757 = add nsw i32 %748, %756
  %758 = select i1 %755, float %754, float -0.000000e+00
  %759 = fadd float %747, %758
  br label %760

760:                                              ; preds = %752, %745
  %761 = phi i32 [ %757, %752 ], [ %748, %745 ]
  %762 = phi float [ %759, %752 ], [ %747, %745 ]
  %763 = add nsw i64 %746, 1
  %764 = icmp eq i64 %763, 2
  br i1 %764, label %765, label %745, !llvm.loop !140

765:                                              ; preds = %760, %732
  %766 = phi i32 [ %735, %732 ], [ %761, %760 ]
  %767 = phi float [ %734, %732 ], [ %762, %760 ]
  %768 = add nsw i64 %733, 1
  %769 = icmp eq i64 %768, 2
  br i1 %769, label %770, label %732, !llvm.loop !141

770:                                              ; preds = %765, %724
  %771 = phi i32 [ %726, %724 ], [ %766, %765 ]
  %772 = phi float [ %725, %724 ], [ %767, %765 ]
  %773 = add nsw i32 %727, 1
  %774 = icmp eq i32 %773, 2
  br i1 %774, label %775, label %724, !llvm.loop !142

775:                                              ; preds = %770
  %776 = icmp sgt i32 %771, 0
  %777 = sitofp i32 %771 to float
  %778 = select i1 %776, float %777, float 1.000000e+00
  %779 = fdiv float %772, %778
  store float %779, ptr %721, align 4, !tbaa !45
  br label %780

780:                                              ; preds = %775, %718
  %781 = getelementptr inbounds float, ptr %715, i64 %720
  %782 = load float, ptr %781, align 4, !tbaa !45
  %783 = fcmp olt float %782, 0.000000e+00
  br i1 %783, label %784, label %840

784:                                              ; preds = %780, %830
  %785 = phi float [ %832, %830 ], [ 0.000000e+00, %780 ]
  %786 = phi i32 [ %831, %830 ], [ 0, %780 ]
  %787 = phi i32 [ %833, %830 ], [ -1, %780 ]
  %788 = add nsw i32 %787, %706
  %789 = icmp ult i32 %788, %686
  br i1 %789, label %790, label %830

790:                                              ; preds = %784
  %791 = mul nsw i32 %788, %690
  br label %792

792:                                              ; preds = %790, %825
  %793 = phi i64 [ -1, %790 ], [ %828, %825 ]
  %794 = phi float [ %785, %790 ], [ %827, %825 ]
  %795 = phi i32 [ %786, %790 ], [ %826, %825 ]
  %796 = add nsw i64 %793, %709
  %797 = trunc i64 %796 to i32
  %798 = icmp ugt i32 %690, %797
  br i1 %798, label %799, label %825

799:                                              ; preds = %792
  %800 = trunc i64 %796 to i32
  %801 = add i32 %791, %800
  %802 = mul i32 %801, %700
  %803 = sext i32 %802 to i64
  %804 = getelementptr float, ptr %715, i64 %803
  br label %805

805:                                              ; preds = %820, %799
  %806 = phi i64 [ %823, %820 ], [ -1, %799 ]
  %807 = phi float [ %822, %820 ], [ %794, %799 ]
  %808 = phi i32 [ %821, %820 ], [ %795, %799 ]
  %809 = add nsw i64 %806, %719
  %810 = trunc i64 %809 to i32
  %811 = icmp ugt i32 %700, %810
  br i1 %811, label %812, label %820

812:                                              ; preds = %805
  %813 = getelementptr float, ptr %804, i64 %809
  %814 = load float, ptr %813, align 4, !tbaa !45
  %815 = fcmp ogt float %814, 0.000000e+00
  %816 = zext i1 %815 to i32
  %817 = add nsw i32 %808, %816
  %818 = select i1 %815, float %814, float -0.000000e+00
  %819 = fadd float %807, %818
  br label %820

820:                                              ; preds = %812, %805
  %821 = phi i32 [ %817, %812 ], [ %808, %805 ]
  %822 = phi float [ %819, %812 ], [ %807, %805 ]
  %823 = add nsw i64 %806, 1
  %824 = icmp eq i64 %823, 2
  br i1 %824, label %825, label %805, !llvm.loop !140

825:                                              ; preds = %820, %792
  %826 = phi i32 [ %795, %792 ], [ %821, %820 ]
  %827 = phi float [ %794, %792 ], [ %822, %820 ]
  %828 = add nsw i64 %793, 1
  %829 = icmp eq i64 %828, 2
  br i1 %829, label %830, label %792, !llvm.loop !141

830:                                              ; preds = %825, %784
  %831 = phi i32 [ %786, %784 ], [ %826, %825 ]
  %832 = phi float [ %785, %784 ], [ %827, %825 ]
  %833 = add nsw i32 %787, 1
  %834 = icmp eq i32 %833, 2
  br i1 %834, label %835, label %784, !llvm.loop !142

835:                                              ; preds = %830
  %836 = icmp sgt i32 %831, 0
  %837 = sitofp i32 %831 to float
  %838 = select i1 %836, float %837, float 1.000000e+00
  %839 = fdiv float %832, %838
  store float %839, ptr %781, align 4, !tbaa !45
  br label %840

840:                                              ; preds = %835, %780
  %841 = getelementptr inbounds float, ptr %716, i64 %720
  %842 = load float, ptr %841, align 4, !tbaa !45
  %843 = fcmp olt float %842, 0.000000e+00
  br i1 %843, label %844, label %900

844:                                              ; preds = %840, %890
  %845 = phi float [ %892, %890 ], [ 0.000000e+00, %840 ]
  %846 = phi i32 [ %891, %890 ], [ 0, %840 ]
  %847 = phi i32 [ %893, %890 ], [ -1, %840 ]
  %848 = add nsw i32 %847, %707
  %849 = icmp ult i32 %848, %686
  br i1 %849, label %850, label %890

850:                                              ; preds = %844
  %851 = mul nsw i32 %848, %690
  br label %852

852:                                              ; preds = %850, %885
  %853 = phi i64 [ -1, %850 ], [ %888, %885 ]
  %854 = phi float [ %845, %850 ], [ %887, %885 ]
  %855 = phi i32 [ %846, %850 ], [ %886, %885 ]
  %856 = add nsw i64 %853, %709
  %857 = trunc i64 %856 to i32
  %858 = icmp ugt i32 %690, %857
  br i1 %858, label %859, label %885

859:                                              ; preds = %852
  %860 = trunc i64 %856 to i32
  %861 = add i32 %851, %860
  %862 = mul i32 %861, %700
  %863 = sext i32 %862 to i64
  %864 = getelementptr float, ptr %716, i64 %863
  br label %865

865:                                              ; preds = %880, %859
  %866 = phi i64 [ %883, %880 ], [ -1, %859 ]
  %867 = phi float [ %882, %880 ], [ %854, %859 ]
  %868 = phi i32 [ %881, %880 ], [ %855, %859 ]
  %869 = add nsw i64 %866, %719
  %870 = trunc i64 %869 to i32
  %871 = icmp ugt i32 %700, %870
  br i1 %871, label %872, label %880

872:                                              ; preds = %865
  %873 = getelementptr float, ptr %864, i64 %869
  %874 = load float, ptr %873, align 4, !tbaa !45
  %875 = fcmp ogt float %874, 0.000000e+00
  %876 = zext i1 %875 to i32
  %877 = add nsw i32 %868, %876
  %878 = select i1 %875, float %874, float -0.000000e+00
  %879 = fadd float %867, %878
  br label %880

880:                                              ; preds = %872, %865
  %881 = phi i32 [ %877, %872 ], [ %868, %865 ]
  %882 = phi float [ %879, %872 ], [ %867, %865 ]
  %883 = add nsw i64 %866, 1
  %884 = icmp eq i64 %883, 2
  br i1 %884, label %885, label %865, !llvm.loop !140

885:                                              ; preds = %880, %852
  %886 = phi i32 [ %855, %852 ], [ %881, %880 ]
  %887 = phi float [ %854, %852 ], [ %882, %880 ]
  %888 = add nsw i64 %853, 1
  %889 = icmp eq i64 %888, 2
  br i1 %889, label %890, label %852, !llvm.loop !141

890:                                              ; preds = %885, %844
  %891 = phi i32 [ %846, %844 ], [ %886, %885 ]
  %892 = phi float [ %845, %844 ], [ %887, %885 ]
  %893 = add nsw i32 %847, 1
  %894 = icmp eq i32 %893, 2
  br i1 %894, label %895, label %844, !llvm.loop !142

895:                                              ; preds = %890
  %896 = icmp sgt i32 %891, 0
  %897 = sitofp i32 %891 to float
  %898 = select i1 %896, float %897, float 1.000000e+00
  %899 = fdiv float %892, %898
  store float %899, ptr %841, align 4, !tbaa !45
  br label %900

900:                                              ; preds = %895, %840
  %901 = add nuw nsw i64 %719, 1
  %902 = icmp eq i64 %901, %704
  br i1 %902, label %903, label %718, !llvm.loop !143

903:                                              ; preds = %900, %708
  %904 = add nuw nsw i64 %709, 1
  %905 = icmp eq i64 %904, %696
  br i1 %905, label %906, label %708, !llvm.loop !144

906:                                              ; preds = %903, %697
  %907 = add nuw nsw i64 %698, 1
  %908 = icmp eq i64 %907, %695
  br i1 %908, label %911, label %697, !llvm.loop !145

909:                                              ; preds = %130, %166, %91
  %910 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %910(ptr noundef nonnull %93) #8
  br label %911

911:                                              ; preds = %906, %909, %683, %87
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %8) #8
  %912 = load ptr, ptr %52, align 8, !tbaa !127
  %913 = icmp eq ptr %912, null
  br i1 %913, label %918, label %914

914:                                              ; preds = %911
  %915 = load ptr, ptr %21, align 8, !tbaa !128
  %916 = call i32 %912(ptr noundef %915) #8
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %921

918:                                              ; preds = %81, %914, %911
  %919 = load ptr, ptr %82, align 8, !tbaa !47
  %920 = icmp eq ptr %919, null
  br i1 %920, label %921, label %81, !llvm.loop !146

921:                                              ; preds = %918, %914, %76
  %922 = load ptr, ptr %53, align 8, !tbaa !127
  %923 = icmp eq ptr %922, null
  br i1 %923, label %928, label %924

924:                                              ; preds = %921
  %925 = load ptr, ptr %16, align 8, !tbaa !128
  %926 = call i32 %922(ptr noundef %925) #8
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %931

928:                                              ; preds = %73, %924, %921
  %929 = load ptr, ptr %55, align 8, !tbaa !47
  %930 = icmp eq ptr %929, null
  br i1 %930, label %931, label %54, !llvm.loop !147

931:                                              ; preds = %928, %924, %1
  store ptr null, ptr %10, align 8, !tbaa !57
  %932 = load ptr, ptr %11, align 8, !tbaa !73
  %933 = load ptr, ptr %13, align 8, !tbaa !74
  call void %932(ptr noundef %933, ptr noundef nonnull %9) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_volume_precache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %32
  %6 = phi ptr [ %33, %32 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.VolumePrecache, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  tail call void %11(ptr noundef %13) #8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %15 = load ptr, ptr %7, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.VolumePrecache, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  tail call void %14(ptr noundef %17) #8
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %19 = load ptr, ptr %7, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.VolumePrecache, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  tail call void %18(ptr noundef %21) #8
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %23 = load ptr, ptr %7, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.VolumePrecache, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  tail call void %22(ptr noundef %25) #8
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %27 = load ptr, ptr %7, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.VolumePrecache, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  tail call void %26(ptr noundef %29) #8
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %31 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %30(ptr noundef %31) #8
  store ptr null, ptr %7, align 8, !tbaa !41
  br label %32

32:                                               ; preds = %5, %10
  %33 = load ptr, ptr %6, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !148

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  tail call void @BLI_freelistN(ptr noundef nonnull %36) #8
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @point_inside_volume_objectinstance(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Isect, align 8
  %5 = tail call ptr @makeraytree_object(ptr noundef %0, ptr noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, i8 0, i64 176, i1 false)
  %8 = load float, ptr %2, align 4, !tbaa !45
  store float %8, ptr %4, align 8, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %4, i64 1
  store float %10, ptr %11, align 4, !tbaa !45
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !45
  %14 = getelementptr inbounds float, ptr %4, i64 2
  store float %13, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !45
  %16 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %16, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  store float 1.000000e+00, ptr %17, align 4, !tbaa !45
  %18 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 1, ptr %18, align 8, !tbaa !149
  %19 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  store ptr null, ptr %19, align 8, !tbaa !152
  %20 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %20, align 4, !tbaa !153
  %21 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %21, align 8, !tbaa !154
  %22 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call void @RE_instance_rotate_ray(ptr noundef %1, ptr noundef nonnull %4) #8
  %23 = call fastcc i32 @intersect_outside_volume(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 20, i32 noundef 0)
  call void @RE_instance_rotate_ray_restore(ptr noundef %1, ptr noundef nonnull %4) #8
  %24 = and i32 %23, 1
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #8
  br label %25

25:                                               ; preds = %3, %7
  %26 = phi i32 [ %24, %7 ], [ 0, %3 ]
  ret i32 %26
}

declare ptr @makeraytree_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare ptr @BLI_task_scheduler_create(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @vol_precache_part(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
  %4 = alloca %struct.Isect, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [64 x i8], align 16
  %10 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %19 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 96
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 97
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = tail call i32 %20(ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %204

27:                                               ; preds = %22, %3
  %28 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 13
  %29 = load i32, ptr %28, align 4, !tbaa !85
  %30 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 13, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 11
  %33 = load i32, ptr %32, align 4, !tbaa !117
  %34 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !118
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %179

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 14
  %39 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 14, i64 2
  %40 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 15
  %41 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 15, i64 2
  %42 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %43 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 9
  %44 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 10
  %45 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 14, i64 1
  %46 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 15, i64 1
  %47 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %48 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 7
  %49 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 97
  %50 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 8
  %51 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 5
  %52 = getelementptr inbounds float, ptr %7, i64 1
  %53 = getelementptr inbounds float, ptr %4, i64 1
  %54 = getelementptr inbounds float, ptr %7, i64 2
  %55 = getelementptr inbounds float, ptr %4, i64 2
  %56 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %57 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  %58 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  %59 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  %60 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  %61 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  %62 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  %63 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  %64 = getelementptr inbounds float, ptr %8, i64 1
  %65 = getelementptr inbounds float, ptr %8, i64 2
  %66 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %14, i64 0, i32 15
  %67 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %68 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %69 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %14, i64 0, i32 15
  br label %70

70:                                               ; preds = %37, %175
  %71 = phi i32 [ %33, %37 ], [ %176, %175 ]
  %72 = load float, ptr %39, align 8, !tbaa !45
  %73 = load float, ptr %41, align 4, !tbaa !45
  %74 = sitofp i32 %71 to float
  %75 = fadd float %74, 5.000000e-01
  %76 = call float @llvm.fmuladd.f32(float %73, float %75, float %72)
  store float %76, ptr %42, align 4, !tbaa !45
  %77 = load i32, ptr %43, align 4, !tbaa !115
  %78 = load i32, ptr %44, align 8, !tbaa !116
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %175

80:                                               ; preds = %70
  %81 = mul nsw i32 %71, %31
  %82 = sext i32 %77 to i64
  br label %83

83:                                               ; preds = %80, %170
  %84 = phi i64 [ %82, %80 ], [ %171, %170 ]
  %85 = load float, ptr %45, align 4, !tbaa !45
  %86 = load float, ptr %46, align 4, !tbaa !45
  %87 = trunc i64 %84 to i32
  %88 = sitofp i32 %87 to float
  %89 = fadd float %88, 5.000000e-01
  %90 = call float @llvm.fmuladd.f32(float %86, float %89, float %85)
  store float %90, ptr %47, align 4, !tbaa !45
  %91 = load i32, ptr %48, align 4, !tbaa !113
  %92 = load i32, ptr %50, align 8, !tbaa !114
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %170

94:                                               ; preds = %83
  %95 = trunc i64 %84 to i32
  %96 = add i32 %81, %95
  %97 = mul i32 %96, %29
  %98 = sext i32 %91 to i64
  %99 = sext i32 %97 to i64
  br label %100

100:                                              ; preds = %94, %160
  %101 = phi i64 [ %98, %94 ], [ %166, %160 ]
  %102 = load float, ptr %38, align 8, !tbaa !45
  %103 = load float, ptr %40, align 4, !tbaa !45
  %104 = trunc i64 %101 to i32
  %105 = sitofp i32 %104 to float
  %106 = fadd float %105, 5.000000e-01
  %107 = call float @llvm.fmuladd.f32(float %103, float %106, float %102)
  store float %107, ptr %6, align 4, !tbaa !45
  %108 = load ptr, ptr %19, align 8, !tbaa !127
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %100
  %111 = load ptr, ptr %49, align 8, !tbaa !128
  %112 = call i32 %108(ptr noundef %111) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %170

114:                                              ; preds = %110, %100
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %51, ptr noundef nonnull %6) #8
  %115 = add nsw i64 %101, %99
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, i8 0, i64 176, i1 false)
  %116 = load float, ptr %7, align 4, !tbaa !45
  store float %116, ptr %4, align 8, !tbaa !45
  %117 = load float, ptr %52, align 4, !tbaa !45
  store float %117, ptr %53, align 4, !tbaa !45
  %118 = load float, ptr %54, align 4, !tbaa !45
  store float %118, ptr %55, align 8, !tbaa !45
  store float 0.000000e+00, ptr %56, align 4, !tbaa !45
  store float 0.000000e+00, ptr %57, align 8, !tbaa !45
  store float 1.000000e+00, ptr %58, align 4, !tbaa !45
  store i32 1, ptr %59, align 8, !tbaa !149
  store ptr null, ptr %60, align 8, !tbaa !152
  store i32 -1, ptr %61, align 4, !tbaa !153
  store float 0x47EFFFFFE0000000, ptr %62, align 8, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  call void @RE_instance_rotate_ray(ptr noundef %14, ptr noundef nonnull %4) #8
  %119 = call fastcc i32 @intersect_outside_volume(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 20, i32 noundef 0)
  call void @RE_instance_rotate_ray_restore(ptr noundef %14, ptr noundef nonnull %4) #8
  %120 = and i32 %119, 1
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load ptr, ptr %69, align 8, !tbaa !41
  %124 = getelementptr inbounds %struct.VolumePrecache, ptr %123, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !89
  %126 = getelementptr inbounds float, ptr %125, i64 %115
  store float -1.000000e+00, ptr %126, align 4, !tbaa !45
  %127 = getelementptr inbounds %struct.VolumePrecache, ptr %123, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !90
  %129 = getelementptr inbounds float, ptr %128, i64 %115
  store float -1.000000e+00, ptr %129, align 4, !tbaa !45
  br label %160

130:                                              ; preds = %114
  %131 = load float, ptr %7, align 4, !tbaa !45
  store float %131, ptr %8, align 4, !tbaa !45
  %132 = load float, ptr %52, align 4, !tbaa !45
  store float %132, ptr %64, align 4, !tbaa !45
  %133 = load float, ptr %54, align 4, !tbaa !45
  store float %133, ptr %65, align 4, !tbaa !45
  %134 = fmul float %132, %132
  %135 = call float @llvm.fmuladd.f32(float %131, float %131, float %134)
  %136 = call float @llvm.fmuladd.f32(float %133, float %133, float %135)
  %137 = fcmp ogt float %136, 0x38AA95A5C0000000
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = call float @sqrtf(float noundef %136) #8
  %140 = fdiv float 1.000000e+00, %139
  %141 = load float, ptr %8, align 4, !tbaa !45
  %142 = fmul float %141, %140
  store float %142, ptr %8, align 4, !tbaa !45
  %143 = load float, ptr %64, align 4, !tbaa !45
  %144 = fmul float %140, %143
  store float %144, ptr %64, align 4, !tbaa !45
  %145 = load float, ptr %65, align 4, !tbaa !45
  %146 = fmul float %140, %145
  br label %148

147:                                              ; preds = %130
  store float 0.000000e+00, ptr %8, align 4, !tbaa !45
  store float 0.000000e+00, ptr %64, align 4, !tbaa !45
  br label %148

148:                                              ; preds = %138, %147
  %149 = phi float [ 0.000000e+00, %147 ], [ %146, %138 ]
  store float %149, ptr %65, align 4, !tbaa !45
  call void @vol_get_scattering(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %150 = load float, ptr %5, align 4, !tbaa !45
  %151 = load ptr, ptr %66, align 8, !tbaa !41
  %152 = getelementptr inbounds %struct.VolumePrecache, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !89
  %154 = getelementptr inbounds float, ptr %153, i64 %115
  store float %150, ptr %154, align 4, !tbaa !45
  %155 = load float, ptr %67, align 4, !tbaa !45
  %156 = getelementptr inbounds %struct.VolumePrecache, ptr %151, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !90
  %158 = getelementptr inbounds float, ptr %157, i64 %115
  store float %155, ptr %158, align 4, !tbaa !45
  %159 = load float, ptr %68, align 4, !tbaa !45
  br label %160

160:                                              ; preds = %148, %122
  %161 = phi ptr [ %151, %148 ], [ %123, %122 ]
  %162 = phi float [ %159, %148 ], [ -1.000000e+00, %122 ]
  %163 = getelementptr inbounds %struct.VolumePrecache, ptr %161, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !91
  %165 = getelementptr inbounds float, ptr %164, i64 %115
  store float %162, ptr %165, align 4, !tbaa !45
  %166 = add nsw i64 %101, 1
  %167 = load i32, ptr %50, align 8, !tbaa !114
  %168 = sext i32 %167 to i64
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %100, label %170, !llvm.loop !155

170:                                              ; preds = %110, %160, %83
  %171 = add nsw i64 %84, 1
  %172 = load i32, ptr %44, align 8, !tbaa !116
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %83, label %175, !llvm.loop !156

175:                                              ; preds = %170, %70
  %176 = add nsw i32 %71, 1
  %177 = load i32, ptr %34, align 8, !tbaa !118
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %70, label %179, !llvm.loop !157

179:                                              ; preds = %175, %27
  %180 = call double @PIL_check_seconds_timer() #8
  %181 = load double, ptr %10, align 8, !tbaa !106
  %182 = fsub double %180, %181
  %183 = fcmp ogt double %182, 1.000000e+00
  br i1 %183, label %184, label %204

184:                                              ; preds = %179
  %185 = call ptr @BLI_task_pool_user_mutex(ptr noundef %0) #8
  %186 = call zeroext i8 @BLI_mutex_trylock(ptr noundef %185) #8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %204, label %188

188:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  %189 = call i64 @BLI_task_pool_tasks_done(ptr noundef %0) #8
  %190 = uitofp i64 %189 to float
  %191 = getelementptr inbounds %struct.VolPrecacheState, ptr %10, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !104
  %193 = sitofp i32 %192 to float
  %194 = fdiv float %190, %193
  %195 = fmul float %194, 1.000000e+02
  %196 = fptosi float %195 to i32
  %197 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %196) #8
  %198 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 98
  %199 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 98, i32 16
  store ptr %9, ptr %199, align 8, !tbaa !57
  %200 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 90
  %201 = load ptr, ptr %200, align 8, !tbaa !73
  %202 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 91
  %203 = load ptr, ptr %202, align 8, !tbaa !74
  call void %201(ptr noundef %203, ptr noundef nonnull %198) #8
  store ptr null, ptr %199, align 8, !tbaa !57
  store double %180, ptr %10, align 8, !tbaa !106
  call void @BLI_mutex_unlock(ptr noundef %185) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  br label %204

204:                                              ; preds = %179, %188, %184, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_task_scheduler_free(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @vol_get_scattering(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_user_mutex(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_mutex_trylock(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_task_pool_tasks_done(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ms_diffuse(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, float noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = load i32, ptr %5, align 4, !tbaa !85
  %8 = getelementptr inbounds i32, ptr %5, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !85
  %10 = mul nsw i32 %9, %7
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = mul nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = fmul float %4, 0x3FB99999A0000000
  %16 = uitofp i64 %14 to float
  %17 = fmul float %15, %16
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %19 = tail call float @llvm.fmuladd.f32(float %17, float 6.000000e+00, float 1.000000e+00)
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %24 = getelementptr float, ptr %2, i64 -1
  br label %25

25:                                               ; preds = %121, %6
  %26 = phi i32 [ 0, %6 ], [ %126, %121 ]
  %27 = load i32, ptr %11, align 4, !tbaa !85
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %121, label %29

29:                                               ; preds = %25, %117
  %30 = phi i32 [ %118, %117 ], [ 1, %25 ]
  %31 = load i32, ptr %8, align 4, !tbaa !85
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %111, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %5, align 4, !tbaa !85
  %35 = icmp slt i32 %34, 1
  %36 = add nuw nsw i32 %31, 2
  %37 = mul nsw i32 %36, %30
  %38 = add nsw i32 %34, 2
  %39 = add nsw i32 %30, -1
  %40 = mul nsw i32 %36, %39
  %41 = add nuw nsw i32 %30, 1
  %42 = mul nsw i32 %36, %41
  %43 = add i32 %34, 1
  %44 = add nuw i32 %31, 1
  %45 = zext i32 %44 to i64
  %46 = zext i32 %43 to i64
  br label %47

47:                                               ; preds = %33, %108
  %48 = phi i64 [ 1, %33 ], [ %109, %108 ]
  br i1 %35, label %108, label %49

49:                                               ; preds = %47
  %50 = trunc i64 %48 to i32
  %51 = add i32 %37, %50
  %52 = mul i32 %38, %51
  %53 = trunc i64 %48 to i32
  %54 = add i32 %53, -1
  %55 = add i32 %54, %37
  %56 = mul i32 %38, %55
  %57 = trunc i64 %48 to i32
  %58 = add i32 %57, 1
  %59 = add nuw i32 %58, %37
  %60 = mul i32 %38, %59
  %61 = trunc i64 %48 to i32
  %62 = add i32 %40, %61
  %63 = mul i32 %38, %62
  %64 = trunc i64 %48 to i32
  %65 = add i32 %42, %64
  %66 = mul i32 %38, %65
  %67 = sext i32 %66 to i64
  %68 = sext i32 %63 to i64
  %69 = sext i32 %60 to i64
  %70 = sext i32 %56 to i64
  %71 = sext i32 %52 to i64
  %72 = sext i32 %52 to i64
  %73 = sext i32 %52 to i64
  %74 = getelementptr float, ptr %24, i64 %72
  %75 = getelementptr float, ptr %2, i64 %73
  %76 = getelementptr float, ptr %2, i64 %70
  %77 = getelementptr float, ptr %2, i64 %69
  %78 = getelementptr float, ptr %2, i64 %68
  %79 = getelementptr float, ptr %2, i64 %67
  br label %80

80:                                               ; preds = %49, %80
  %81 = phi i64 [ 1, %49 ], [ %87, %80 ]
  %82 = add nsw i64 %81, %71
  %83 = getelementptr inbounds float, ptr %2, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !45
  %85 = getelementptr float, ptr %74, i64 %81
  %86 = load float, ptr %85, align 4, !tbaa !45
  %87 = add nuw nsw i64 %81, 1
  %88 = getelementptr float, ptr %75, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !45
  %90 = fadd float %86, %89
  %91 = getelementptr float, ptr %76, i64 %81
  %92 = load float, ptr %91, align 4, !tbaa !45
  %93 = fadd float %90, %92
  %94 = getelementptr float, ptr %77, i64 %81
  %95 = load float, ptr %94, align 4, !tbaa !45
  %96 = fadd float %93, %95
  %97 = getelementptr float, ptr %78, i64 %81
  %98 = load float, ptr %97, align 4, !tbaa !45
  %99 = fadd float %96, %98
  %100 = getelementptr float, ptr %79, i64 %81
  %101 = load float, ptr %100, align 4, !tbaa !45
  %102 = fadd float %99, %101
  %103 = fmul float %17, %102
  %104 = fdiv float %103, %19
  %105 = fadd float %84, %104
  %106 = getelementptr inbounds float, ptr %3, i64 %82
  store float %105, ptr %106, align 4, !tbaa !45
  %107 = icmp eq i64 %87, %46
  br i1 %107, label %108, label %80, !llvm.loop !158

108:                                              ; preds = %80, %47
  %109 = add nuw nsw i64 %48, 1
  %110 = icmp eq i64 %109, %45
  br i1 %110, label %111, label %47, !llvm.loop !159

111:                                              ; preds = %108, %29
  br i1 %20, label %117, label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %18, align 8, !tbaa !127
  %114 = load ptr, ptr %21, align 8, !tbaa !128
  %115 = tail call i32 %113(ptr noundef %114) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %112
  %118 = add nuw nsw i32 %30, 1
  %119 = load i32, ptr %11, align 4, !tbaa !85
  %120 = icmp slt i32 %30, %119
  br i1 %120, label %29, label %121, !llvm.loop !160

121:                                              ; preds = %117, %112, %25
  %122 = load ptr, ptr %22, align 8, !tbaa !127
  %123 = load ptr, ptr %23, align 8, !tbaa !128
  %124 = tail call i32 %122(ptr noundef %123) #8
  %125 = icmp ne i32 %124, 0
  %126 = add nuw nsw i32 %26, 1
  %127 = icmp eq i32 %126, 20
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %129, label %25, !llvm.loop !161

129:                                              ; preds = %121
  ret void
}

declare void @RE_instance_rotate_ray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @intersect_outside_volume(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %12, %4
  %6 = phi i32 [ %2, %4 ], [ %36, %12 ]
  %7 = phi i32 [ %3, %4 ], [ %37, %12 ]
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @RE_rayobject_raycast(ptr noundef %0, ptr noundef %1) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = load float, ptr %1, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !154
  %16 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !45
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %13)
  store float %18, ptr %1, align 8, !tbaa !45
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !45
  %21 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !45
  %23 = tail call float @llvm.fmuladd.f32(float %15, float %22, float %20)
  store float %23, ptr %19, align 4, !tbaa !45
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %25 = load float, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !45
  %28 = tail call float @llvm.fmuladd.f32(float %15, float %27, float %25)
  store float %28, ptr %24, align 8, !tbaa !45
  store float 0x47EFFFFFE0000000, ptr %14, align 8, !tbaa !154
  %29 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 9
  store i32 2, ptr %29, align 8, !tbaa !162
  %30 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  %31 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !163
  %33 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %34 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16, i32 1
  store ptr %32, ptr %34, align 8, !tbaa !164
  %35 = load ptr, ptr %30, align 8, !tbaa !165
  store ptr %35, ptr %33, align 8, !tbaa !166
  %36 = add nsw i32 %6, -1
  %37 = add nsw i32 %7, 1
  br label %5

38:                                               ; preds = %9, %5
  ret i32 %7
}

declare void @RE_instance_rotate_ray_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!35, !36, i64 248}
!42 = !{!43, !36, i64 16}
!43 = !{!"VolumePrecache", !37, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!44 = !{!43, !36, i64 24}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !37, i64 0}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !39, i64 80}
!49 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!50 = !{!49, !36, i64 112}
!51 = !{!52, !36, i64 0}
!52 = !{!"VertTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!53 = !{!35, !40, i64 216}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !36, i64 6128}
!58 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !59, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !60, i64 156, !61, i64 172, !46, i64 188, !46, i64 192, !46, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !46, i64 544, !46, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !62, i64 1104, !69, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !59, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !46, i64 5680, !36, i64 5688, !59, i64 5696, !46, i64 5712, !46, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !59, i64 5752, !59, i64 5768, !59, i64 5784, !36, i64 5800, !59, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !59, i64 5872, !36, i64 5888, !59, i64 5896, !59, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !71, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!59 = !{!"ListBase", !36, i64 0, !36, i64 8}
!60 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!61 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!62 = !{!"RenderData", !63, i64 0, !36, i64 248, !36, i64 256, !66, i64 264, !67, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !46, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !61, i64 544, !61, i64 560, !60, i64 576, !59, i64 592, !40, i64 608, !40, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !39, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !46, i64 660, !46, i64 664, !40, i64 668, !40, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !46, i64 2528, !46, i64 2532, !40, i64 2536, !40, i64 2538, !46, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !39, i64 2576, !46, i64 2580, !37, i64 2584, !68, i64 2616, !39, i64 3976, !39, i64 3980}
!63 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !64, i64 24, !65, i64 184}
!64 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!66 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!67 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !46, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!68 = !{!"BakeData", !63, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!69 = !{!"World", !70, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!70 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!71 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !72, i64 48, !72, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !46, i64 144, !46, i64 148}
!72 = !{!"double", !37, i64 0}
!73 = !{!58, !36, i64 6000}
!74 = !{!58, !36, i64 6008}
!75 = !{!76, !36, i64 16}
!76 = !{!"VolumeOb", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!77 = !{!78, !40, i64 290}
!78 = !{!"Material", !70, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !79, i64 224, !80, i64 312, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !46, i64 348, !46, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !46, i64 364, !46, i64 368, !40, i64 372, !40, i64 374, !46, i64 376, !46, i64 380, !46, i64 384, !46, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !46, i64 420, !46, i64 424, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !46, i64 456, !37, i64 460, !46, i64 524, !46, i64 528, !46, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !46, i64 556, !46, i64 560, !37, i64 564, !46, i64 580, !46, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !46, i64 616, !46, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !46, i64 800, !46, i64 804, !46, i64 808, !46, i64 812, !46, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !46, i64 848, !46, i64 852, !46, i64 856, !46, i64 860, !46, i64 864, !46, i64 868, !46, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !59, i64 928}
!79 = !{!"VolumeSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !46, i64 52, !46, i64 56, !46, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84}
!80 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!81 = !{!78, !40, i64 292}
!82 = !{!76, !36, i64 24}
!83 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 74, !84, i64 92, i64 4, !85, i64 96, i64 2, !86, i64 98, i64 2, !86, i64 100, i64 2, !86, i64 102, i64 2, !86, i64 104, i64 1, !84, i64 112, i64 8, !47, i64 120, i64 8, !47, i64 128, i64 8, !47, i64 136, i64 8, !47, i64 144, i64 4, !85, i64 148, i64 4, !85, i64 152, i64 4, !85, i64 156, i64 4, !85, i64 160, i64 4, !85, i64 164, i64 4, !85, i64 168, i64 4, !85, i64 172, i64 4, !45, i64 176, i64 4, !45, i64 180, i64 4, !45, i64 184, i64 4, !45, i64 188, i64 4, !45, i64 192, i64 4, !45, i64 196, i64 4, !45, i64 200, i64 4, !85, i64 204, i64 4, !85, i64 208, i64 4, !85, i64 212, i64 4, !85, i64 216, i64 4, !45, i64 220, i64 4, !45, i64 224, i64 4, !45, i64 228, i64 4, !45, i64 232, i64 4, !45, i64 236, i64 4, !45, i64 240, i64 12, !84, i64 252, i64 36, !84, i64 288, i64 64, !84, i64 352, i64 64, !84, i64 416, i64 64, !84, i64 480, i64 64, !84, i64 544, i64 4, !45, i64 548, i64 4, !45, i64 552, i64 8, !47, i64 560, i64 256, !84, i64 816, i64 256, !84, i64 1072, i64 8, !47, i64 1080, i64 4, !84, i64 1088, i64 8, !47, i64 1096, i64 8, !47, i64 1104, i64 1, !84, i64 1105, i64 1, !84, i64 1106, i64 1, !84, i64 1107, i64 1, !84, i64 1108, i64 1, !84, i64 1109, i64 1, !84, i64 1110, i64 1, !84, i64 1111, i64 1, !84, i64 1112, i64 2, !86, i64 1114, i64 2, !86, i64 1116, i64 4, !45, i64 1120, i64 1, !84, i64 1121, i64 1, !84, i64 1122, i64 6, !84, i64 1128, i64 4, !85, i64 1132, i64 4, !85, i64 1136, i64 64, !84, i64 1200, i64 64, !84, i64 1264, i64 4, !45, i64 1268, i64 4, !45, i64 1272, i64 8, !47, i64 1280, i64 8, !47, i64 1288, i64 64, !84, i64 1352, i64 8, !47, i64 1360, i64 8, !47, i64 1368, i64 4, !85, i64 1372, i64 4, !85, i64 1376, i64 4, !85, i64 1380, i64 4, !85, i64 1384, i64 4, !85, i64 1388, i64 4, !85, i64 1392, i64 4, !85, i64 1396, i64 4, !85, i64 1400, i64 4, !85, i64 1404, i64 4, !85, i64 1408, i64 4, !85, i64 1412, i64 4, !85, i64 1416, i64 2, !86, i64 1418, i64 2, !86, i64 1420, i64 4, !85, i64 1424, i64 4, !85, i64 1428, i64 4, !85, i64 1432, i64 4, !85, i64 1436, i64 4, !85, i64 1440, i64 4, !85, i64 1444, i64 4, !85, i64 1448, i64 4, !85, i64 1452, i64 4, !85, i64 1456, i64 4, !85, i64 1460, i64 4, !85, i64 1464, i64 4, !45, i64 1468, i64 4, !85, i64 1472, i64 4, !85, i64 1476, i64 4, !85, i64 1480, i64 4, !85, i64 1484, i64 4, !85, i64 1488, i64 4, !85, i64 1492, i64 4, !85, i64 1496, i64 8, !47, i64 1504, i64 4, !85, i64 1508, i64 4, !85, i64 1512, i64 4, !85, i64 1516, i64 4, !45, i64 1520, i64 4, !85, i64 1524, i64 4, !85, i64 1528, i64 4, !85, i64 1532, i64 4, !85, i64 1536, i64 2, !86, i64 1538, i64 2, !86, i64 1540, i64 4, !45, i64 1544, i64 4, !45, i64 1548, i64 4, !45, i64 1552, i64 4, !45, i64 1556, i64 4, !45, i64 1560, i64 2, !86, i64 1562, i64 2, !86, i64 1564, i64 2, !86, i64 1566, i64 2, !86, i64 1568, i64 2, !86, i64 1570, i64 2, !86, i64 1572, i64 4, !85, i64 1576, i64 2, !86, i64 1578, i64 2, !86, i64 1580, i64 2, !86, i64 1582, i64 2, !86, i64 1584, i64 2, !86, i64 1586, i64 2, !86, i64 1588, i64 4, !85, i64 1592, i64 4, !85, i64 1596, i64 2, !86, i64 1598, i64 2, !86, i64 1600, i64 4, !85, i64 1604, i64 4, !85, i64 1608, i64 2, !86, i64 1610, i64 2, !86, i64 1612, i64 2, !86, i64 1614, i64 2, !86, i64 1616, i64 2, !86, i64 1618, i64 1, !84, i64 1619, i64 1, !84, i64 1620, i64 4, !85, i64 1624, i64 4, !85, i64 1628, i64 4, !85, i64 1632, i64 2, !86, i64 1634, i64 2, !86, i64 1636, i64 2, !86, i64 1638, i64 2, !86, i64 1640, i64 2, !86, i64 1642, i64 2, !86, i64 1644, i64 2, !86, i64 1646, i64 2, !86, i64 1648, i64 4, !45, i64 1652, i64 4, !45, i64 1656, i64 4, !45, i64 1660, i64 4, !45, i64 1664, i64 4, !45, i64 1668, i64 4, !45, i64 1672, i64 4, !45, i64 1676, i64 4, !45, i64 1680, i64 4, !85, i64 1684, i64 4, !85, i64 1688, i64 4, !85, i64 1692, i64 4, !85, i64 1696, i64 8, !47, i64 1704, i64 8, !47, i64 1712, i64 2, !86, i64 1714, i64 2, !86, i64 1716, i64 4, !45, i64 1720, i64 4, !45, i64 1724, i64 4, !45, i64 1728, i64 4, !45, i64 1732, i64 4, !85, i64 1736, i64 4, !45, i64 1740, i64 4, !45, i64 1744, i64 4, !45, i64 1748, i64 4, !45, i64 1752, i64 2, !86, i64 1754, i64 2, !86, i64 1756, i64 2, !86, i64 1758, i64 2, !86, i64 1760, i64 2, !86, i64 1762, i64 2, !86, i64 1764, i64 4, !45, i64 1768, i64 4, !45, i64 1772, i64 2, !86, i64 1774, i64 2, !86, i64 1776, i64 4, !45, i64 1780, i64 4, !45, i64 1784, i64 1024, !84, i64 2808, i64 4, !85, i64 2812, i64 2, !86, i64 2814, i64 2, !86, i64 2816, i64 768, !84, i64 3584, i64 16, !84, i64 3600, i64 16, !84, i64 3616, i64 1, !84, i64 3617, i64 1, !84, i64 3618, i64 1, !84, i64 3619, i64 5, !84, i64 3624, i64 4, !85, i64 3628, i64 2, !86, i64 3630, i64 2, !86, i64 3632, i64 4, !45, i64 3636, i64 4, !45, i64 3640, i64 2, !86, i64 3642, i64 2, !86, i64 3644, i64 4, !45, i64 3648, i64 2, !86, i64 3650, i64 2, !86, i64 3652, i64 4, !85, i64 3656, i64 2, !86, i64 3658, i64 2, !86, i64 3660, i64 2, !86, i64 3662, i64 2, !86, i64 3664, i64 4, !45, i64 3668, i64 4, !45, i64 3672, i64 8, !47, i64 3680, i64 4, !85, i64 3684, i64 4, !45, i64 3688, i64 32, !84, i64 3720, i64 1, !84, i64 3721, i64 1, !84, i64 3722, i64 1, !84, i64 3723, i64 1, !84, i64 3724, i64 1, !84, i64 3725, i64 1, !84, i64 3726, i64 1, !84, i64 3727, i64 1, !84, i64 3728, i64 2, !86, i64 3730, i64 2, !86, i64 3732, i64 4, !45, i64 3736, i64 1, !84, i64 3737, i64 1, !84, i64 3738, i64 6, !84, i64 3744, i64 4, !85, i64 3748, i64 4, !85, i64 3752, i64 64, !84, i64 3816, i64 64, !84, i64 3880, i64 4, !45, i64 3884, i64 4, !45, i64 3888, i64 8, !47, i64 3896, i64 8, !47, i64 3904, i64 64, !84, i64 3968, i64 1024, !84, i64 4992, i64 2, !86, i64 4994, i64 2, !86, i64 4996, i64 2, !86, i64 4998, i64 2, !86, i64 5000, i64 4, !45, i64 5004, i64 4, !45, i64 5008, i64 3, !84, i64 5011, i64 1, !84, i64 5012, i64 1, !84, i64 5013, i64 3, !84, i64 5016, i64 64, !84, i64 5080, i64 4, !85, i64 5084, i64 4, !85, i64 5088, i64 8, !47, i64 5096, i64 8, !47, i64 5104, i64 8, !47, i64 5112, i64 8, !47, i64 5120, i64 66, !84, i64 5186, i64 2, !86, i64 5188, i64 4, !85, i64 5192, i64 4, !85, i64 5196, i64 4, !85, i64 5200, i64 8, !47, i64 5208, i64 8, !47, i64 5216, i64 2, !86, i64 5218, i64 2, !86, i64 5220, i64 2, !86, i64 5222, i64 2, !86, i64 5224, i64 4, !45, i64 5228, i64 4, !45, i64 5232, i64 4, !45, i64 5236, i64 4, !45, i64 5240, i64 4, !45, i64 5244, i64 4, !45, i64 5248, i64 4, !45, i64 5252, i64 4, !45, i64 5256, i64 4, !45, i64 5260, i64 4, !45, i64 5264, i64 4, !45, i64 5268, i64 4, !45, i64 5272, i64 4, !45, i64 5276, i64 4, !45, i64 5280, i64 4, !45, i64 5284, i64 4, !45, i64 5288, i64 2, !86, i64 5290, i64 2, !86, i64 5292, i64 2, !86, i64 5294, i64 2, !86, i64 5296, i64 2, !86, i64 5298, i64 2, !86, i64 5300, i64 2, !86, i64 5302, i64 2, !86, i64 5304, i64 4, !45, i64 5308, i64 4, !45, i64 5312, i64 4, !45, i64 5316, i64 4, !45, i64 5320, i64 4, !45, i64 5324, i64 4, !45, i64 5328, i64 4, !45, i64 5332, i64 4, !45, i64 5336, i64 4, !45, i64 5340, i64 4, !45, i64 5344, i64 4, !45, i64 5348, i64 4, !45, i64 5352, i64 2, !86, i64 5354, i64 2, !86, i64 5356, i64 2, !86, i64 5358, i64 2, !86, i64 5360, i64 4, !45, i64 5364, i64 4, !45, i64 5368, i64 4, !45, i64 5372, i64 4, !45, i64 5376, i64 2, !86, i64 5378, i64 2, !86, i64 5380, i64 2, !86, i64 5382, i64 2, !86, i64 5384, i64 4, !45, i64 5388, i64 4, !45, i64 5392, i64 4, !45, i64 5396, i64 4, !45, i64 5400, i64 4, !45, i64 5404, i64 4, !45, i64 5408, i64 4, !45, i64 5412, i64 2, !86, i64 5414, i64 2, !86, i64 5416, i64 2, !86, i64 5418, i64 2, !86, i64 5420, i64 2, !86, i64 5422, i64 2, !86, i64 5424, i64 8, !47, i64 5432, i64 8, !47, i64 5440, i64 8, !47, i64 5448, i64 144, !84, i64 5592, i64 2, !86, i64 5594, i64 2, !86, i64 5596, i64 4, !84, i64 5600, i64 8, !47, i64 5608, i64 8, !47, i64 5616, i64 8, !47, i64 5624, i64 4, !85, i64 5628, i64 4, !85, i64 5632, i64 8, !47, i64 5640, i64 8, !47, i64 5648, i64 8, !47, i64 5656, i64 8, !47, i64 5664, i64 8, !47, i64 5672, i64 8, !47, i64 5680, i64 4, !45, i64 5688, i64 8, !47, i64 5696, i64 8, !47, i64 5704, i64 8, !47, i64 5712, i64 4, !45, i64 5716, i64 4, !45, i64 5720, i64 4, !85, i64 5724, i64 4, !85, i64 5728, i64 4, !85, i64 5732, i64 4, !85, i64 5736, i64 4, !85, i64 5744, i64 8, !47, i64 5752, i64 8, !47, i64 5760, i64 8, !47, i64 5768, i64 8, !47, i64 5776, i64 8, !47, i64 5784, i64 8, !47, i64 5792, i64 8, !47, i64 5800, i64 8, !47, i64 5808, i64 8, !47, i64 5816, i64 8, !47, i64 5824, i64 4, !85, i64 5832, i64 8, !47, i64 5840, i64 8, !47, i64 5848, i64 8, !47, i64 5856, i64 8, !47, i64 5864, i64 8, !47, i64 5872, i64 8, !47, i64 5880, i64 8, !47, i64 5888, i64 8, !47, i64 5896, i64 8, !47, i64 5904, i64 8, !47, i64 5912, i64 8, !47, i64 5920, i64 8, !47, i64 5928, i64 8, !47, i64 5936, i64 8, !47, i64 5944, i64 8, !47, i64 5952, i64 8, !47, i64 5960, i64 8, !47, i64 5968, i64 8, !47, i64 5976, i64 8, !47, i64 5984, i64 8, !47, i64 5992, i64 8, !47, i64 6000, i64 8, !47, i64 6008, i64 8, !47, i64 6016, i64 8, !47, i64 6024, i64 8, !47, i64 6032, i64 8, !47, i64 6040, i64 8, !47, i64 6048, i64 8, !47, i64 6056, i64 8, !47, i64 6064, i64 4, !85, i64 6068, i64 4, !85, i64 6072, i64 4, !85, i64 6076, i64 4, !85, i64 6080, i64 4, !85, i64 6084, i64 4, !85, i64 6088, i64 4, !85, i64 6092, i64 2, !86, i64 6094, i64 2, !86, i64 6096, i64 2, !86, i64 6098, i64 2, !86, i64 6100, i64 2, !86, i64 6102, i64 2, !86, i64 6104, i64 1, !84, i64 6112, i64 8, !87, i64 6120, i64 8, !87, i64 6128, i64 8, !47, i64 6136, i64 8, !47, i64 6144, i64 64, !84, i64 6208, i64 4, !45, i64 6212, i64 4, !45, i64 6216, i64 8, !47, i64 6224, i64 8, !47, i64 6232, i64 8, !47}
!84 = !{!37, !37, i64 0}
!85 = !{!39, !39, i64 0}
!86 = !{!40, !40, i64 0}
!87 = !{!72, !72, i64 0}
!88 = !{!78, !40, i64 294}
!89 = !{!43, !36, i64 32}
!90 = !{!43, !36, i64 40}
!91 = !{!43, !36, i64 48}
!92 = !{!93, !39, i64 1408}
!93 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !46, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !46, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !46, i64 1256, !46, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !46, i64 1336, !46, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !46, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!94 = !{!93, !39, i64 1388}
!95 = !{!93, !36, i64 0}
!96 = !{!93, !36, i64 8}
!97 = !{!78, !40, i64 360}
!98 = !{!93, !39, i64 320}
!99 = !{!93, !36, i64 24}
!100 = !{!93, !36, i64 32}
!101 = !{!58, !39, i64 5624}
!102 = !{!93, !39, i64 1440}
!103 = !{!58, !40, i64 1538}
!104 = !{!105, !39, i64 8}
!105 = !{!"VolPrecacheState", !72, i64 0, !39, i64 8}
!106 = !{!105, !72, i64 0}
!107 = !{!108, !36, i64 168}
!108 = !{!"VolPrecachePart", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !37, i64 132, !37, i64 144, !37, i64 156, !36, i64 168}
!109 = !{!108, !39, i64 104}
!110 = !{!108, !36, i64 16}
!111 = !{!108, !36, i64 24}
!112 = !{!108, !36, i64 32}
!113 = !{!108, !39, i64 108}
!114 = !{!108, !39, i64 112}
!115 = !{!108, !39, i64 116}
!116 = !{!108, !39, i64 120}
!117 = !{!108, !39, i64 124}
!118 = !{!108, !39, i64 128}
!119 = distinct !{!119, !55, !56}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = !{!78, !46, i64 300}
!123 = !{!78, !46, i64 308}
!124 = !{!78, !46, i64 304}
!125 = distinct !{!125, !55, !56}
!126 = distinct !{!126, !55, !56}
!127 = !{!58, !36, i64 6048}
!128 = !{!58, !36, i64 6056}
!129 = distinct !{!129, !55, !56}
!130 = distinct !{!130, !55, !56}
!131 = distinct !{!131, !55, !56}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = distinct !{!134, !55, !56}
!135 = distinct !{!135, !55, !56}
!136 = distinct !{!136, !55, !56}
!137 = distinct !{!137, !55, !56}
!138 = distinct !{!138, !55, !56}
!139 = distinct !{!139, !55, !56}
!140 = distinct !{!140, !55, !56}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = distinct !{!143, !55, !56}
!144 = distinct !{!144, !55, !56}
!145 = distinct !{!145, !55, !56}
!146 = distinct !{!146, !55, !56}
!147 = distinct !{!147, !55, !56}
!148 = distinct !{!148, !55, !56}
!149 = !{!150, !39, i64 88}
!150 = !{!"Isect", !37, i64 0, !37, i64 12, !46, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !46, i64 112, !46, i64 116, !39, i64 120, !151, i64 128, !151, i64 144, !36, i64 160, !36, i64 168}
!151 = !{!"", !36, i64 0, !36, i64 8}
!152 = !{!150, !36, i64 160}
!153 = !{!150, !39, i64 92}
!154 = !{!150, !46, i64 24}
!155 = distinct !{!155, !55, !56}
!156 = distinct !{!156, !55, !56}
!157 = distinct !{!157, !55, !56}
!158 = distinct !{!158, !55, !56}
!159 = distinct !{!159, !55, !56}
!160 = distinct !{!160, !55, !56}
!161 = distinct !{!161, !55, !56}
!162 = !{!150, !39, i64 96}
!163 = !{!150, !36, i64 136}
!164 = !{!150, !36, i64 152}
!165 = !{!150, !36, i64 128}
!166 = !{!150, !36, i64 144}
