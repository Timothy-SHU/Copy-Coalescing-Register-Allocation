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
%struct.VolumeOb = type { ptr, ptr, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.VolPrecacheState = type { double, i32 }
%struct.VolPrecachePart = type { ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x float], [3 x float], ptr }

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
@__const.point_inside_obi.dir = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @global_bounds_obi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %10 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %11) #16
  %18 = load ptr, ptr %14, align 8, !tbaa !44
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %18) #16
  br label %63

19:                                               ; preds = %13, %4
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %21 = tail call ptr %20(i64 noundef 12, ptr noundef nonnull @.str) #17
  store ptr %21, ptr %10, align 8, !tbaa !42
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = tail call ptr %22(i64 noundef 12, ptr noundef nonnull @.str.1) #17
  %24 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !44
  %25 = getelementptr inbounds float, ptr %2, i64 2
  store float 0x46293E5940000000, ptr %25, align 4, !tbaa !46
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %2, align 4, !tbaa !46
  %26 = getelementptr inbounds float, ptr %3, i64 2
  store float 0xC6293E5940000000, ptr %26, align 4, !tbaa !46
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %3, align 4, !tbaa !46
  %27 = getelementptr inbounds %struct.ObjectRen, ptr %7, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !48
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %7, i64 0, i32 18
  %32 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %33 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  br label %35

35:                                               ; preds = %30, %54
  %36 = phi i32 [ 0, %30 ], [ %57, %54 ]
  %37 = phi ptr [ null, %30 ], [ %49, %54 ]
  %38 = and i32 %36, 255
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %31, align 8, !tbaa !50
  %42 = lshr exact i32 %36, 8
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.VertTableNode, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  br label %48

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.VertRen, ptr %37, i64 1
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %45, %40 ], [ %47, %46 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %49) #16
  %50 = load i16, ptr %32, align 8, !tbaa !53
  %51 = and i16 %50, 3
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void @mul_m4_v3(ptr noundef nonnull %33, ptr noundef nonnull %5) #17
  br label %54

54:                                               ; preds = %53, %48
  call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %5) #17
  %55 = load ptr, ptr %10, align 8, !tbaa !42
  %56 = load ptr, ptr %24, align 8, !tbaa !44
  call void @minmax_v3v3_v3(ptr noundef %55, ptr noundef %56, ptr noundef nonnull %5) #17
  %57 = add nuw nsw i32 %36, 1
  %58 = load i32, ptr %27, align 8, !tbaa !48
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %35, label %60, !llvm.loop !54

60:                                               ; preds = %54, %19
  %61 = load ptr, ptr %10, align 8, !tbaa !42
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %61) #16
  %62 = load ptr, ptr %24, align 8, !tbaa !44
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %62) #16
  br label %63

63:                                               ; preds = %60, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !56 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @volume_precache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.2, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  tail call void %5(ptr noundef %7, ptr noundef nonnull %2) #17
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %10 = load ptr, ptr %8, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  br label %15

15:                                               ; preds = %12, %50
  %16 = phi ptr [ %10, %12 ], [ %51, %50 ]
  %17 = getelementptr inbounds %struct.VolumeOb, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = tail call fastcc i32 @using_lightcache(ptr noundef %18) #16, !range !77
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %13, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.VolumeOb, ptr %16, i64 0, i32 3
  br label %26

26:                                               ; preds = %24, %40
  %27 = phi ptr [ %22, %24 ], [ %41, %40 ]
  %28 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = load ptr, ptr %25, align 8, !tbaa !78
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load ptr, ptr %17, align 8, !tbaa !75
  tail call fastcc void @vol_precache_objectinstance_threads(ptr noundef %0, ptr noundef nonnull %27, ptr noundef %33) #16
  %34 = load ptr, ptr %14, align 8, !tbaa !79
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %9, align 8, !tbaa !80
  %38 = tail call i32 %34(ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26, %36, %32
  %41 = load ptr, ptr %27, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %26, !llvm.loop !81

43:                                               ; preds = %40, %36, %21
  %44 = load ptr, ptr %14, align 8, !tbaa !79
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %9, align 8, !tbaa !80
  %48 = tail call i32 %44(ptr noundef %47) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %15, %46, %43
  %51 = load ptr, ptr %16, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !llvm.loop !82

53:                                               ; preds = %50, %46, %1
  store ptr null, ptr %3, align 8, !tbaa !57
  %54 = load ptr, ptr %4, align 8, !tbaa !73
  %55 = load ptr, ptr %6, align 8, !tbaa !74
  tail call void %54(ptr noundef %55, ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @using_lightcache(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 11
  %3 = load i16, ptr %2, align 2, !tbaa !84
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 12
  %7 = load i16, ptr %6, align 4, !tbaa !88
  %8 = icmp eq i16 %7, 1
  %9 = select i1 %5, i1 %8, i1 false
  %10 = icmp eq i16 %7, 3
  %11 = select i1 %9, i1 true, i1 %10
  %12 = icmp eq i16 %7, 4
  %13 = select i1 %11, i1 true, i1 %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_precache_objectinstance_threads(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !89 {
  %4 = alloca %struct.ShadeInput, align 8
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %4) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !90
  %5 = tail call ptr @makeraytree_object(ptr noundef nonnull @R, ptr noundef %1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @.str.3) #17
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 15
  store ptr %9, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 27, i32 13
  %12 = load i16, ptr %11, align 2, !tbaa !95
  %13 = sext i16 %12 to i32
  %14 = tail call fastcc i32 @precache_resolution(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %1, i32 noundef %13) #16, !range !77
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %17(ptr noundef %9) #17
  br label %75

18:                                               ; preds = %7
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %20 = load i32, ptr %9, align 8, !tbaa !92
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !92
  %25 = sext i32 %24 to i64
  %26 = mul i64 %22, %25
  %27 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 2
  %28 = load i32, ptr %27, align 8, !tbaa !92
  %29 = sext i32 %28 to i64
  %30 = mul i64 %26, %29
  %31 = tail call ptr %19(i64 noundef %30, ptr noundef nonnull @.str.4) #17
  %32 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !96
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %34 = load i32, ptr %9, align 8, !tbaa !92
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  %37 = load i32, ptr %23, align 4, !tbaa !92
  %38 = sext i32 %37 to i64
  %39 = mul i64 %36, %38
  %40 = load i32, ptr %27, align 8, !tbaa !92
  %41 = sext i32 %40 to i64
  %42 = mul i64 %39, %41
  %43 = tail call ptr %33(i64 noundef %42, ptr noundef nonnull @.str.5) #17
  %44 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !97
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %46 = load i32, ptr %9, align 8, !tbaa !92
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = load i32, ptr %23, align 4, !tbaa !92
  %50 = sext i32 %49 to i64
  %51 = mul i64 %48, %50
  %52 = load i32, ptr %27, align 8, !tbaa !92
  %53 = sext i32 %52 to i64
  %54 = mul i64 %51, %53
  %55 = tail call ptr %45(i64 noundef %54, ptr noundef nonnull @.str.6) #17
  %56 = getelementptr inbounds %struct.VolumePrecache, ptr %9, i64 0, i32 5
  store ptr %55, ptr %56, align 8, !tbaa !98
  %57 = load ptr, ptr %32, align 8, !tbaa !96
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %18
  %60 = load ptr, ptr %44, align 8, !tbaa !97
  %61 = icmp eq ptr %60, null
  %62 = icmp eq ptr %55, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59, %18
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %65(ptr noundef nonnull %9) #17
  br label %75

66:                                               ; preds = %59
  call fastcc void @precache_setup_shadeinput(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #16
  call fastcc void @precache_launch_parts(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %1) #16
  %67 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 27, i32 12
  %68 = load i16, ptr %67, align 4, !tbaa !88
  %69 = add i16 %68, -3
  %70 = icmp ult i16 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load ptr, ptr %10, align 8, !tbaa !41
  call fastcc void @multiple_scattering_diffusion(ptr noundef nonnull %0, ptr noundef %72, ptr noundef nonnull %2) #16
  br label %73

73:                                               ; preds = %66, %71
  %74 = load ptr, ptr %10, align 8, !tbaa !41
  call fastcc void @lightcache_filter(ptr noundef %74) #16
  br label %75

75:                                               ; preds = %3, %73, %64, %16
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_volume_precache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %32
  %6 = phi ptr [ %33, %32 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.VolumePrecache, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  tail call void %11(ptr noundef %13) #17
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %15 = load ptr, ptr %7, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.VolumePrecache, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  tail call void %14(ptr noundef %17) #17
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %19 = load ptr, ptr %7, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.VolumePrecache, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  tail call void %18(ptr noundef %21) #17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %23 = load ptr, ptr %7, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.VolumePrecache, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  tail call void %22(ptr noundef %25) #17
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %27 = load ptr, ptr %7, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.VolumePrecache, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  tail call void %26(ptr noundef %29) #17
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %31 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %30(ptr noundef %31) #17
  store ptr null, ptr %7, align 8, !tbaa !41
  br label %32

32:                                               ; preds = %5, %10
  %33 = load ptr, ptr %6, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !99

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  tail call void @BLI_freelistN(ptr noundef nonnull %36) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @point_inside_volume_objectinstance(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @makeraytree_object(ptr noundef %0, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @point_inside_obi(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #16, !range !77
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @makeraytree_object(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @point_inside_obi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !100 {
  %4 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, i8 0, i64 176, i1 false)
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %2) #16
  %5 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull @__const.point_inside_obi.dir) #16
  %6 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 1, ptr %6, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  store ptr null, ptr %7, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %8, align 4, !tbaa !105
  %9 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @RE_instance_rotate_ray(ptr noundef %1, ptr noundef nonnull %4) #17
  %11 = call fastcc i32 @intersect_outside_volume(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 20, i32 noundef 0) #16
  call void @RE_instance_rotate_ray_restore(ptr noundef %1, ptr noundef nonnull %4) #17
  %12 = and i32 %11, 1
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #15
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @precache_resolution(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !107 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @global_bounds_obi(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  %8 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %9 = load float, ptr %8, align 8, !tbaa !46
  %10 = sitofp i32 %3 to float
  %11 = load <2 x float>, ptr %5, align 8, !tbaa !46
  %12 = extractelement <2 x float> %11, i64 0
  %13 = extractelement <2 x float> %11, i64 1
  %14 = tail call fastcc float @max_fff(float noundef %12, float noundef %13, float noundef %9) #16
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fdiv <2 x float> %11, %16
  %18 = fdiv float %9, %14
  %19 = insertelement <2 x float> poison, float %10, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %17, %20
  %22 = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %21)
  %23 = fptosi <2 x float> %22 to <2 x i32>
  store <2 x i32> %23, ptr %1, align 8, !tbaa !92
  %24 = fmul float %18, %10
  %25 = tail call float @llvm.ceil.f32(float %24)
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 2
  store i32 %26, ptr %27, align 8, !tbaa !92
  %28 = icmp sgt i32 %26, 0
  %29 = icmp sgt <2 x i32> %23, zeroinitializer
  %30 = extractelement <2 x i1> %29, i64 0
  %31 = extractelement <2 x i1> %29, i64 1
  %32 = select i1 %30, i1 %31, i1 false
  %33 = select i1 %32, i1 %28, i1 false
  %34 = zext i1 %33 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @precache_setup_shadeinput(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 !PGOFuncName !108 {
  %5 = getelementptr inbounds i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %5, i8 0, i64 1456, i1 false)
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 108
  store i32 1, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 105
  store i32 1, ptr %7, align 4, !tbaa !111
  store ptr %2, ptr %3, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !113
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 32
  %10 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %9, ptr noundef nonnull align 4 dereferenceable(92) %10, i64 92, i1 false)
  %11 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 38
  %12 = load i16, ptr %11, align 8, !tbaa !114
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 55
  store i32 %13, ptr %14, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 3
  store ptr %1, ptr %15, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %20 = load i32, ptr %19, align 8, !tbaa !118
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 117
  store i32 %20, ptr %21, align 8, !tbaa !119
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @precache_launch_parts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = alloca %struct.VolPrecacheState, align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %3, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %12 = load i16, ptr %11, align 2, !tbaa !121
  %13 = sext i16 %12 to i32
  %14 = icmp eq ptr %10, null
  br i1 %14, label %98, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 0, ptr %16, align 8
  %17 = mul nsw i32 %13, %13
  %18 = mul nsw i32 %17, %13
  %19 = getelementptr inbounds %struct.VolPrecacheState, ptr %5, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !122
  %20 = tail call double @PIL_check_seconds_timer() #17
  store double %20, ptr %5, align 8, !tbaa !124
  %21 = tail call ptr @BLI_task_scheduler_create(i32 noundef %13) #17
  %22 = call ptr @BLI_task_pool_create(ptr noundef %21, ptr noundef nonnull %5) #17
  call void @global_bounds_obi(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  %23 = getelementptr inbounds i32, ptr %10, i64 1
  %24 = load <2 x i32>, ptr %10, align 4, !tbaa !92
  %25 = sitofp <2 x i32> %24 to <2 x float>
  %26 = load <2 x float>, ptr %6, align 8, !tbaa !46
  %27 = fdiv <2 x float> %26, %25
  store <2 x float> %27, ptr %6, align 8, !tbaa !46
  %28 = getelementptr inbounds i32, ptr %10, i64 2
  %29 = load i32, ptr %28, align 4, !tbaa !92
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %32 = load float, ptr %31, align 8, !tbaa !46
  %33 = fdiv float %32, %30
  store float %33, ptr %31, align 8, !tbaa !46
  %34 = icmp sgt i16 %12, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %15
  %36 = sitofp i16 %12 to float
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %38

38:                                               ; preds = %94, %35
  %39 = phi i32 [ 0, %35 ], [ %88, %94 ]
  %40 = phi i32 [ 0, %35 ], [ %95, %94 ]
  %41 = load i32, ptr %10, align 4, !tbaa !92
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %42, %36
  %44 = call float @llvm.ceil.f32(float %43)
  %45 = fptosi float %44 to i32
  %46 = mul nsw i32 %40, %45
  %47 = add nsw i32 %46, %45
  %48 = call i32 @llvm.smin.i32(i32 %47, i32 %41)
  br label %49

49:                                               ; preds = %38, %91
  %50 = phi i32 [ %88, %91 ], [ %39, %38 ]
  %51 = phi i32 [ %92, %91 ], [ 0, %38 ]
  %52 = load i32, ptr %23, align 4, !tbaa !92
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, %36
  %55 = call float @llvm.ceil.f32(float %54)
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %51, %56
  %58 = add nsw i32 %57, %56
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 %52)
  br label %60

60:                                               ; preds = %49, %60
  %61 = phi i32 [ %50, %49 ], [ %88, %60 ]
  %62 = phi i32 [ 0, %49 ], [ %89, %60 ]
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %64 = call ptr %63(i64 noundef 176, ptr noundef nonnull @.str.7) #17
  %65 = load i32, ptr %28, align 4, !tbaa !92
  %66 = sitofp i32 %65 to float
  %67 = fdiv float %66, %36
  %68 = call float @llvm.ceil.f32(float %67)
  %69 = fptosi float %68 to i32
  %70 = mul nsw i32 %62, %69
  %71 = add nsw i32 %70, %69
  %72 = call i32 @llvm.smin.i32(i32 %71, i32 %65)
  %73 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 16
  store ptr %0, ptr %73, align 8, !tbaa !125
  %74 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 6
  store i32 %61, ptr %74, align 8, !tbaa !127
  %75 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 2
  store ptr %1, ptr %75, align 8, !tbaa !128
  %76 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 3
  store ptr %2, ptr %76, align 8, !tbaa !129
  %77 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 4
  store ptr %3, ptr %77, align 8, !tbaa !130
  %78 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 5
  call void @copy_m4_m4(ptr noundef nonnull %78, ptr noundef nonnull %37) #17
  %79 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %79, ptr noundef nonnull %7) #16
  %80 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %80, ptr noundef nonnull %6) #16
  %81 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 13
  call fastcc void @copy_v3_v3_int(ptr noundef nonnull %81, ptr noundef nonnull %10) #16
  %82 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 7
  store i32 %46, ptr %82, align 4, !tbaa !131
  %83 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 8
  store i32 %48, ptr %83, align 8, !tbaa !132
  %84 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 9
  store i32 %57, ptr %84, align 4, !tbaa !133
  %85 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 10
  store i32 %59, ptr %85, align 8, !tbaa !134
  %86 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 11
  store i32 %70, ptr %86, align 4, !tbaa !135
  %87 = getelementptr inbounds %struct.VolPrecachePart, ptr %64, i64 0, i32 12
  store i32 %72, ptr %87, align 8, !tbaa !136
  call void @BLI_task_pool_push(ptr noundef %22, ptr noundef nonnull @vol_precache_part, ptr noundef %64, i8 noundef zeroext 1, i32 noundef 1) #17
  %88 = add nsw i32 %61, 1
  %89 = add nuw nsw i32 %62, 1
  %90 = icmp eq i32 %89, %13
  br i1 %90, label %91, label %60, !llvm.loop !137

91:                                               ; preds = %60
  %92 = add nuw nsw i32 %51, 1
  %93 = icmp eq i32 %92, %13
  br i1 %93, label %94, label %49, !llvm.loop !138

94:                                               ; preds = %91
  %95 = add nuw nsw i32 %40, 1
  %96 = icmp eq i32 %95, %13
  br i1 %96, label %97, label %38, !llvm.loop !139

97:                                               ; preds = %94, %15
  call void @BLI_task_pool_work_and_wait(ptr noundef %22) #17
  call void @BLI_task_pool_free(ptr noundef %22) #17
  call void @BLI_task_scheduler_free(ptr noundef %21) #17
  br label %98

98:                                               ; preds = %4, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multiple_scattering_diffusion(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !140 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 27, i32 15
  %6 = load float, ptr %5, align 4, !tbaa !141
  %7 = fmul float %6, 0x3F50624DE0000000
  %8 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 27, i32 17
  %9 = load float, ptr %8, align 4, !tbaa !142
  %10 = load i32, ptr %1, align 8, !tbaa !92
  %11 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 2
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = tail call fastcc i32 @max_iii(i32 noundef %10, i32 noundef %12, i32 noundef %14) #16
  %16 = sitofp i32 %15 to float
  %17 = fmul float %9, %16
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 27, i32 12
  %20 = load i16, ptr %19, align 4, !tbaa !88
  %21 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 27, i32 16
  %22 = load float, ptr %21, align 8, !tbaa !143
  %23 = add nsw i32 %10, 2
  %24 = add nsw i32 %12, 2
  %25 = mul nsw i32 %24, %23
  %26 = add nsw i32 %14, 2
  %27 = mul nsw i32 %25, %26
  %28 = icmp sgt i32 %27, 100000
  %29 = zext i1 %28 to i32
  %30 = tail call double @PIL_check_seconds_timer() #17
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %32 = sext i32 %27 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str.9) #17
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %36 = tail call ptr %35(i64 noundef %33, ptr noundef nonnull @.str.9) #17
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %38 = tail call ptr %37(i64 noundef %33, ptr noundef nonnull @.str.9) #17
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %40 = tail call ptr %39(i64 noundef %33, ptr noundef nonnull @.str.9) #17
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %42 = tail call ptr %41(i64 noundef %33, ptr noundef nonnull @.str.9) #17
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %44 = tail call ptr %43(i64 noundef %33, ptr noundef nonnull @.str.9) #17
  %45 = load i32, ptr %1, align 4, !tbaa !92
  %46 = load i32, ptr %11, align 4, !tbaa !92
  %47 = load i32, ptr %13, align 4, !tbaa !92
  %48 = mul i32 %45, %18
  %49 = mul i32 %48, %46
  %50 = mul i32 %49, %47
  %51 = sitofp i32 %50 to float
  %52 = tail call fastcc float @total_ss_energy(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %1) #16
  %53 = icmp sgt i32 %18, 0
  br i1 %53, label %54, label %180

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %56 = getelementptr inbounds %struct.VolumePrecache, ptr %1, i64 0, i32 3
  %57 = getelementptr inbounds %struct.VolumePrecache, ptr %1, i64 0, i32 4
  %58 = getelementptr inbounds %struct.VolumePrecache, ptr %1, i64 0, i32 5
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %64

64:                                               ; preds = %172, %54
  %65 = phi i32 [ 0, %54 ], [ %177, %172 ]
  %66 = phi double [ %30, %54 ], [ %167, %172 ]
  %67 = phi float [ 1.000000e+00, %54 ], [ %166, %172 ]
  %68 = phi ptr [ %44, %54 ], [ %69, %172 ]
  %69 = phi ptr [ %42, %54 ], [ %68, %172 ]
  %70 = phi ptr [ %40, %54 ], [ %71, %172 ]
  %71 = phi ptr [ %38, %54 ], [ %70, %172 ]
  %72 = phi ptr [ %36, %54 ], [ %73, %172 ]
  %73 = phi ptr [ %34, %54 ], [ %72, %172 ]
  %74 = load i32, ptr %13, align 4, !tbaa !92
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %165, label %76

76:                                               ; preds = %64, %161
  %77 = phi i32 [ %162, %161 ], [ 1, %64 ]
  %78 = phi double [ %155, %161 ], [ %66, %64 ]
  %79 = phi float [ %154, %161 ], [ %67, %64 ]
  %80 = load i32, ptr %11, align 4, !tbaa !92
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %153, label %82

82:                                               ; preds = %76
  %83 = load i32, ptr %1, align 4, !tbaa !92
  br label %84

84:                                               ; preds = %82, %146
  %85 = phi i32 [ %147, %146 ], [ %80, %82 ]
  %86 = phi i32 [ %148, %146 ], [ %83, %82 ]
  %87 = phi i32 [ %151, %146 ], [ 1, %82 ]
  %88 = phi double [ %150, %146 ], [ %78, %82 ]
  %89 = phi float [ %149, %146 ], [ %79, %82 ]
  %90 = icmp slt i32 %86, 1
  br i1 %90, label %146, label %91

91:                                               ; preds = %84, %139
  %92 = phi i32 [ %141, %139 ], [ 1, %84 ]
  %93 = phi double [ %140, %139 ], [ %88, %84 ]
  %94 = phi float [ %98, %139 ], [ %89, %84 ]
  %95 = call fastcc i32 @lc_to_ms_I(i32 noundef %92, i32 noundef %87, i32 noundef %77, ptr noundef nonnull %1) #16
  %96 = call fastcc i32 @ms_I(i32 noundef %92, i32 noundef %87, i32 noundef %77, ptr noundef nonnull %1) #16
  %97 = call double @PIL_check_seconds_timer() #17
  %98 = fadd float %94, 1.000000e+00
  %99 = load ptr, ptr %56, align 8, !tbaa !96
  %100 = sext i32 %95 to i64
  %101 = getelementptr inbounds float, ptr %99, i64 %100
  %102 = load float, ptr %101, align 4, !tbaa !46
  %103 = fcmp ogt float %102, 0.000000e+00
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = sext i32 %96 to i64
  %106 = getelementptr inbounds float, ptr %72, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !46
  %108 = fadd float %102, %107
  store float %108, ptr %106, align 4, !tbaa !46
  br label %109

109:                                              ; preds = %104, %91
  %110 = load ptr, ptr %57, align 8, !tbaa !97
  %111 = getelementptr inbounds float, ptr %110, i64 %100
  %112 = load float, ptr %111, align 4, !tbaa !46
  %113 = fcmp ogt float %112, 0.000000e+00
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = sext i32 %96 to i64
  %116 = getelementptr inbounds float, ptr %70, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !46
  %118 = fadd float %112, %117
  store float %118, ptr %116, align 4, !tbaa !46
  br label %119

119:                                              ; preds = %114, %109
  %120 = load ptr, ptr %58, align 8, !tbaa !98
  %121 = getelementptr inbounds float, ptr %120, i64 %100
  %122 = load float, ptr %121, align 4, !tbaa !46
  %123 = fcmp ogt float %122, 0.000000e+00
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = sext i32 %96 to i64
  %126 = getelementptr inbounds float, ptr %68, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !46
  %128 = fadd float %122, %127
  store float %128, ptr %126, align 4, !tbaa !46
  br label %129

129:                                              ; preds = %124, %119
  %130 = fsub double %97, %93
  %131 = fcmp ogt double %130, 1.000000e+00
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %133 = fdiv float %98, %51
  %134 = fmul float %133, 1.000000e+02
  %135 = fptosi float %134 to i32
  %136 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.10, i32 noundef %135) #17
  store ptr %4, ptr %60, align 8, !tbaa !57
  %137 = load ptr, ptr %61, align 8, !tbaa !73
  %138 = load ptr, ptr %62, align 8, !tbaa !74
  call void %137(ptr noundef %138, ptr noundef nonnull %59) #17
  store ptr null, ptr %60, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %139

139:                                              ; preds = %132, %129
  %140 = phi double [ %97, %132 ], [ %93, %129 ]
  %141 = add nuw nsw i32 %92, 1
  %142 = load i32, ptr %1, align 4, !tbaa !92
  %143 = icmp slt i32 %92, %142
  br i1 %143, label %91, label %144, !llvm.loop !144

144:                                              ; preds = %139
  %145 = load i32, ptr %11, align 4, !tbaa !92
  br label %146

146:                                              ; preds = %144, %84
  %147 = phi i32 [ %85, %84 ], [ %145, %144 ]
  %148 = phi i32 [ %86, %84 ], [ %142, %144 ]
  %149 = phi float [ %89, %84 ], [ %98, %144 ]
  %150 = phi double [ %88, %84 ], [ %140, %144 ]
  %151 = add nuw nsw i32 %87, 1
  %152 = icmp slt i32 %87, %147
  br i1 %152, label %84, label %153, !llvm.loop !145

153:                                              ; preds = %146, %76
  %154 = phi float [ %79, %76 ], [ %149, %146 ]
  %155 = phi double [ %78, %76 ], [ %150, %146 ]
  br i1 %28, label %156, label %161

156:                                              ; preds = %153
  %157 = load ptr, ptr %55, align 8, !tbaa !79
  %158 = load ptr, ptr %63, align 8, !tbaa !80
  %159 = call i32 %157(ptr noundef %158) #17
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %153, %156
  %162 = add nuw nsw i32 %77, 1
  %163 = load i32, ptr %13, align 4, !tbaa !92
  %164 = icmp slt i32 %77, %163
  br i1 %164, label %76, label %165, !llvm.loop !146

165:                                              ; preds = %161, %156, %64
  %166 = phi float [ %67, %64 ], [ %154, %156 ], [ %154, %161 ]
  %167 = phi double [ %66, %64 ], [ %155, %156 ], [ %155, %161 ]
  %168 = load ptr, ptr %55, align 8, !tbaa !79
  %169 = load ptr, ptr %63, align 8, !tbaa !80
  %170 = call i32 %168(ptr noundef %169) #17
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  call fastcc void @ms_diffuse(ptr noundef nonnull %0, i32 noundef %29, ptr noundef %72, ptr noundef %73, float noundef %7, ptr noundef nonnull %1) #16
  call fastcc void @ms_diffuse(ptr noundef nonnull %0, i32 noundef %29, ptr noundef %70, ptr noundef %71, float noundef %7, ptr noundef nonnull %1) #16
  call fastcc void @ms_diffuse(ptr noundef nonnull %0, i32 noundef %29, ptr noundef %68, ptr noundef %69, float noundef %7, ptr noundef nonnull %1) #16
  %173 = load ptr, ptr %55, align 8, !tbaa !79
  %174 = load ptr, ptr %63, align 8, !tbaa !80
  %175 = call i32 %173(ptr noundef %174) #17
  %176 = icmp ne i32 %175, 0
  %177 = add nuw nsw i32 %65, 1
  %178 = icmp eq i32 %177, %18
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %180, label %64, !llvm.loop !147

180:                                              ; preds = %165, %172, %3
  %181 = phi ptr [ %34, %3 ], [ %72, %172 ], [ %73, %165 ]
  %182 = phi ptr [ %36, %3 ], [ %73, %172 ], [ %72, %165 ]
  %183 = phi ptr [ %38, %3 ], [ %70, %172 ], [ %71, %165 ]
  %184 = phi ptr [ %40, %3 ], [ %71, %172 ], [ %70, %165 ]
  %185 = phi ptr [ %42, %3 ], [ %68, %172 ], [ %69, %165 ]
  %186 = phi ptr [ %44, %3 ], [ %69, %172 ], [ %68, %165 ]
  %187 = call fastcc float @total_ms_energy(ptr noundef %0, i32 noundef %29, ptr noundef %182, ptr noundef %184, ptr noundef %186, ptr noundef nonnull %1) #16
  %188 = fdiv float %52, %187
  %189 = fmul float %22, %188
  %190 = icmp eq i16 %20, 4
  %191 = fmul float %189, 5.000000e-01
  %192 = select i1 %190, float 5.000000e-01, float 0.000000e+00
  %193 = select i1 %190, float %191, float %189
  %194 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %195 = load i32, ptr %13, align 4, !tbaa !92
  %196 = icmp slt i32 %195, 1
  br i1 %196, label %257, label %197

197:                                              ; preds = %180
  %198 = getelementptr inbounds %struct.VolumePrecache, ptr %1, i64 0, i32 3
  %199 = getelementptr inbounds %struct.VolumePrecache, ptr %1, i64 0, i32 4
  %200 = getelementptr inbounds %struct.VolumePrecache, ptr %1, i64 0, i32 5
  %201 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %202

202:                                              ; preds = %197, %253
  %203 = phi i32 [ %195, %197 ], [ %254, %253 ]
  %204 = phi i32 [ 1, %197 ], [ %255, %253 ]
  %205 = load i32, ptr %11, align 4, !tbaa !92
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %245, label %207

207:                                              ; preds = %202
  %208 = load i32, ptr %1, align 4, !tbaa !92
  %209 = icmp slt i32 %208, 1
  br label %210

210:                                              ; preds = %207, %242
  %211 = phi i32 [ 1, %207 ], [ %243, %242 ]
  br i1 %209, label %242, label %212

212:                                              ; preds = %210
  %213 = load ptr, ptr %198, align 8, !tbaa !96
  %214 = load ptr, ptr %199, align 8, !tbaa !97
  %215 = load ptr, ptr %200, align 8, !tbaa !98
  br label %216

216:                                              ; preds = %212, %216
  %217 = phi i32 [ 1, %212 ], [ %240, %216 ]
  %218 = call fastcc i32 @lc_to_ms_I(i32 noundef %217, i32 noundef %211, i32 noundef %204, ptr noundef nonnull %1) #16
  %219 = call fastcc i32 @ms_I(i32 noundef %217, i32 noundef %211, i32 noundef %204, ptr noundef nonnull %1) #16
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds float, ptr %213, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !46
  %223 = sext i32 %219 to i64
  %224 = getelementptr inbounds float, ptr %182, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !46
  %226 = fmul float %193, %225
  %227 = call float @llvm.fmuladd.f32(float %192, float %222, float %226)
  store float %227, ptr %221, align 4, !tbaa !46
  %228 = getelementptr inbounds float, ptr %214, i64 %220
  %229 = load float, ptr %228, align 4, !tbaa !46
  %230 = getelementptr inbounds float, ptr %184, i64 %223
  %231 = load float, ptr %230, align 4, !tbaa !46
  %232 = fmul float %193, %231
  %233 = call float @llvm.fmuladd.f32(float %192, float %229, float %232)
  store float %233, ptr %228, align 4, !tbaa !46
  %234 = getelementptr inbounds float, ptr %215, i64 %220
  %235 = load float, ptr %234, align 4, !tbaa !46
  %236 = getelementptr inbounds float, ptr %186, i64 %223
  %237 = load float, ptr %236, align 4, !tbaa !46
  %238 = fmul float %193, %237
  %239 = call float @llvm.fmuladd.f32(float %192, float %235, float %238)
  store float %239, ptr %234, align 4, !tbaa !46
  %240 = add nuw i32 %217, 1
  %241 = icmp eq i32 %217, %208
  br i1 %241, label %242, label %216, !llvm.loop !148

242:                                              ; preds = %216, %210
  %243 = add nuw i32 %211, 1
  %244 = icmp eq i32 %211, %205
  br i1 %244, label %245, label %210, !llvm.loop !149

245:                                              ; preds = %242, %202
  br i1 %28, label %246, label %253

246:                                              ; preds = %245
  %247 = load ptr, ptr %194, align 8, !tbaa !79
  %248 = load ptr, ptr %201, align 8, !tbaa !80
  %249 = call i32 %247(ptr noundef %248) #17
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load i32, ptr %13, align 4, !tbaa !92
  br label %253

253:                                              ; preds = %251, %245
  %254 = phi i32 [ %252, %251 ], [ %203, %245 ]
  %255 = add nuw nsw i32 %204, 1
  %256 = icmp slt i32 %204, %254
  br i1 %256, label %202, label %257, !llvm.loop !150

257:                                              ; preds = %253, %246, %180
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %258(ptr noundef %181) #17
  %259 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %259(ptr noundef %182) #17
  %260 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %260(ptr noundef %183) #17
  %261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %261(ptr noundef %184) #17
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %262(ptr noundef %185) #17
  %263 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %263(ptr noundef %186) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lightcache_filter(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !151 {
  %2 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 2
  %3 = load i32, ptr %2, align 8, !tbaa !92
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %70

5:                                                ; preds = %1
  %6 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = icmp sgt i32 %7, 0
  %9 = getelementptr inbounds %struct.VolumePrecache, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.VolumePrecache, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.VolumePrecache, ptr %0, i64 0, i32 5
  %12 = zext nneg i32 %3 to i64
  %13 = zext nneg i32 %7 to i64
  br label %14

14:                                               ; preds = %5, %67
  %15 = phi i64 [ 0, %5 ], [ %68, %67 ]
  br i1 %8, label %16, label %67

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8, !tbaa !92
  %18 = icmp sgt i32 %17, 0
  %19 = trunc i64 %15 to i32
  %20 = mul i32 %7, %19
  %21 = zext nneg i32 %17 to i64
  %22 = trunc i64 %15 to i32
  %23 = trunc i64 %15 to i32
  %24 = trunc i64 %15 to i32
  br label %25

25:                                               ; preds = %16, %64
  %26 = phi i64 [ 0, %16 ], [ %65, %64 ]
  br i1 %18, label %27, label %64

27:                                               ; preds = %25
  %28 = trunc i64 %26 to i32
  %29 = add i32 %20, %28
  %30 = mul i32 %17, %29
  %31 = load ptr, ptr %9, align 8, !tbaa !96
  %32 = sext i32 %30 to i64
  %33 = trunc i64 %26 to i32
  %34 = trunc i64 %26 to i32
  %35 = trunc i64 %26 to i32
  br label %36

36:                                               ; preds = %27, %61
  %37 = phi i64 [ 0, %27 ], [ %62, %61 ]
  %38 = add nsw i64 %37, %32
  %39 = getelementptr inbounds float, ptr %31, i64 %38
  %40 = load float, ptr %39, align 4, !tbaa !46
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = trunc i64 %37 to i32
  %44 = tail call fastcc float @get_avg_surrounds(ptr noundef nonnull %31, ptr noundef nonnull %0, i32 noundef %43, i32 noundef %33, i32 noundef %22) #16
  store float %44, ptr %39, align 4, !tbaa !46
  br label %45

45:                                               ; preds = %42, %36
  %46 = load ptr, ptr %10, align 8, !tbaa !97
  %47 = getelementptr inbounds float, ptr %46, i64 %38
  %48 = load float, ptr %47, align 4, !tbaa !46
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = trunc i64 %37 to i32
  %52 = tail call fastcc float @get_avg_surrounds(ptr noundef nonnull %46, ptr noundef nonnull %0, i32 noundef %51, i32 noundef %34, i32 noundef %23) #16
  store float %52, ptr %47, align 4, !tbaa !46
  br label %53

53:                                               ; preds = %50, %45
  %54 = load ptr, ptr %11, align 8, !tbaa !98
  %55 = getelementptr inbounds float, ptr %54, i64 %38
  %56 = load float, ptr %55, align 4, !tbaa !46
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = trunc i64 %37 to i32
  %60 = tail call fastcc float @get_avg_surrounds(ptr noundef nonnull %54, ptr noundef nonnull %0, i32 noundef %59, i32 noundef %35, i32 noundef %24) #16
  store float %60, ptr %55, align 4, !tbaa !46
  br label %61

61:                                               ; preds = %58, %53
  %62 = add nuw nsw i64 %37, 1
  %63 = icmp eq i64 %62, %21
  br i1 %63, label %64, label %36, !llvm.loop !152

64:                                               ; preds = %61, %25
  %65 = add nuw nsw i64 %26, 1
  %66 = icmp eq i64 %65, %13
  br i1 %66, label %67, label %25, !llvm.loop !153

67:                                               ; preds = %64, %14
  %68 = add nuw nsw i64 %15, 1
  %69 = icmp eq i64 %68, %12
  br i1 %69, label %70, label %14, !llvm.loop !154

70:                                               ; preds = %67, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !155 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = load float, ptr %2, align 4, !tbaa !46
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #7 !PGOFuncName !156 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #16
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #16
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !157 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !158 {
  %3 = load i32, ptr %1, align 4, !tbaa !92
  store i32 %3, ptr %0, align 4, !tbaa !92
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !92
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !92
  %7 = getelementptr inbounds i32, ptr %1, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %8, ptr %9, align 4, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vol_precache_part(ptr noundef %0, ptr noundef %1, i32 %2) #0 !PGOFuncName !159 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [64 x i8], align 16
  %9 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #17
  %10 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %18 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 96
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 97
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = tail call i32 %19(ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %174

26:                                               ; preds = %21, %3
  %27 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 13
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 13, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !92
  %31 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !135
  %33 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 12
  %34 = load i32, ptr %33, align 8, !tbaa !136
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %149

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 14
  %38 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 14, i64 2
  %39 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 15
  %40 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 15, i64 2
  %41 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %42 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 9
  %43 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 10
  %44 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 14, i64 1
  %45 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 15, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %47 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 7
  %48 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 97
  %49 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 8
  %50 = getelementptr inbounds %struct.VolPrecachePart, ptr %1, i64 0, i32 5
  %51 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %13, i64 0, i32 15
  %52 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %53 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %54 = load i32, ptr %43, align 8, !tbaa !134
  br label %55

55:                                               ; preds = %36, %143
  %56 = phi i32 [ %34, %36 ], [ %144, %143 ]
  %57 = phi i32 [ %54, %36 ], [ %145, %143 ]
  %58 = phi i32 [ %54, %36 ], [ %146, %143 ]
  %59 = phi i32 [ %32, %36 ], [ %147, %143 ]
  %60 = load float, ptr %38, align 8, !tbaa !46
  %61 = load float, ptr %40, align 4, !tbaa !46
  %62 = sitofp i32 %59 to float
  %63 = fadd float %62, 5.000000e-01
  %64 = call float @llvm.fmuladd.f32(float %61, float %63, float %60)
  store float %64, ptr %41, align 4, !tbaa !46
  %65 = load i32, ptr %42, align 4, !tbaa !133
  %66 = icmp slt i32 %65, %58
  br i1 %66, label %67, label %143

67:                                               ; preds = %55
  %68 = mul nsw i32 %59, %30
  %69 = sext i32 %65 to i64
  br label %70

70:                                               ; preds = %67, %136
  %71 = phi i32 [ %57, %67 ], [ %137, %136 ]
  %72 = phi i64 [ %69, %67 ], [ %138, %136 ]
  %73 = load float, ptr %44, align 4, !tbaa !46
  %74 = load float, ptr %45, align 4, !tbaa !46
  %75 = trunc i64 %72 to i32
  %76 = sitofp i32 %75 to float
  %77 = fadd float %76, 5.000000e-01
  %78 = call float @llvm.fmuladd.f32(float %74, float %77, float %73)
  store float %78, ptr %46, align 4, !tbaa !46
  %79 = load i32, ptr %47, align 4, !tbaa !131
  %80 = load i32, ptr %49, align 8, !tbaa !132
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %136

82:                                               ; preds = %70
  %83 = add i32 %68, %75
  %84 = mul i32 %83, %28
  %85 = sext i32 %79 to i64
  %86 = sext i32 %84 to i64
  br label %87

87:                                               ; preds = %82, %124
  %88 = phi i64 [ %85, %82 ], [ %130, %124 ]
  %89 = load float, ptr %37, align 8, !tbaa !46
  %90 = load float, ptr %39, align 4, !tbaa !46
  %91 = trunc i64 %88 to i32
  %92 = sitofp i32 %91 to float
  %93 = fadd float %92, 5.000000e-01
  %94 = call float @llvm.fmuladd.f32(float %90, float %93, float %89)
  store float %94, ptr %5, align 4, !tbaa !46
  %95 = load ptr, ptr %18, align 8, !tbaa !79
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %87
  %98 = load ptr, ptr %48, align 8, !tbaa !80
  %99 = call i32 %95(ptr noundef %98) #17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %97, %87
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %50, ptr noundef nonnull %5) #17
  %102 = add nsw i64 %88, %86
  %103 = call fastcc i32 @point_inside_obi(ptr noundef %15, ptr noundef %13, ptr noundef nonnull %6) #16, !range !77
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load ptr, ptr %51, align 8, !tbaa !41
  %107 = getelementptr inbounds %struct.VolumePrecache, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !96
  %109 = getelementptr inbounds float, ptr %108, i64 %102
  store float -1.000000e+00, ptr %109, align 4, !tbaa !46
  %110 = getelementptr inbounds %struct.VolumePrecache, ptr %106, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !97
  %112 = getelementptr inbounds float, ptr %111, i64 %102
  store float -1.000000e+00, ptr %112, align 4, !tbaa !46
  br label %124

113:                                              ; preds = %101
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #16
  call void @vol_get_scattering(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %114 = load float, ptr %4, align 4, !tbaa !46
  %115 = load ptr, ptr %51, align 8, !tbaa !41
  %116 = getelementptr inbounds %struct.VolumePrecache, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !96
  %118 = getelementptr inbounds float, ptr %117, i64 %102
  store float %114, ptr %118, align 4, !tbaa !46
  %119 = load float, ptr %52, align 4, !tbaa !46
  %120 = getelementptr inbounds %struct.VolumePrecache, ptr %115, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !97
  %122 = getelementptr inbounds float, ptr %121, i64 %102
  store float %119, ptr %122, align 4, !tbaa !46
  %123 = load float, ptr %53, align 4, !tbaa !46
  br label %124

124:                                              ; preds = %113, %105
  %125 = phi ptr [ %115, %113 ], [ %106, %105 ]
  %126 = phi float [ %123, %113 ], [ -1.000000e+00, %105 ]
  %127 = getelementptr inbounds %struct.VolumePrecache, ptr %125, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !98
  %129 = getelementptr inbounds float, ptr %128, i64 %102
  store float %126, ptr %129, align 4, !tbaa !46
  %130 = add nsw i64 %88, 1
  %131 = load i32, ptr %49, align 8, !tbaa !132
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %87, label %134, !llvm.loop !160

134:                                              ; preds = %124, %97
  %135 = load i32, ptr %43, align 8, !tbaa !134
  br label %136

136:                                              ; preds = %134, %70
  %137 = phi i32 [ %135, %134 ], [ %71, %70 ]
  %138 = add nsw i64 %72, 1
  %139 = sext i32 %137 to i64
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %70, label %141, !llvm.loop !161

141:                                              ; preds = %136
  %142 = load i32, ptr %33, align 8, !tbaa !136
  br label %143

143:                                              ; preds = %141, %55
  %144 = phi i32 [ %142, %141 ], [ %56, %55 ]
  %145 = phi i32 [ %137, %141 ], [ %57, %55 ]
  %146 = phi i32 [ %137, %141 ], [ %58, %55 ]
  %147 = add nsw i32 %59, 1
  %148 = icmp slt i32 %147, %144
  br i1 %148, label %55, label %149, !llvm.loop !162

149:                                              ; preds = %143, %26
  %150 = call double @PIL_check_seconds_timer() #17
  %151 = load double, ptr %9, align 8, !tbaa !124
  %152 = fsub double %150, %151
  %153 = fcmp ogt double %152, 1.000000e+00
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = call ptr @BLI_task_pool_user_mutex(ptr noundef %0) #17
  %156 = call zeroext i8 @BLI_mutex_trylock(ptr noundef %155) #17
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  %159 = call i64 @BLI_task_pool_tasks_done(ptr noundef %0) #17
  %160 = uitofp i64 %159 to float
  %161 = getelementptr inbounds %struct.VolPrecacheState, ptr %9, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !122
  %163 = sitofp i32 %162 to float
  %164 = fdiv float %160, %163
  %165 = fmul float %164, 1.000000e+02
  %166 = fptosi float %165 to i32
  %167 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %166) #17
  %168 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 98
  %169 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 98, i32 16
  store ptr %8, ptr %169, align 8, !tbaa !57
  %170 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 90
  %171 = load ptr, ptr %170, align 8, !tbaa !73
  %172 = getelementptr inbounds %struct.Render, ptr %11, i64 0, i32 91
  %173 = load ptr, ptr %172, align 8, !tbaa !74
  call void %171(ptr noundef %173, ptr noundef nonnull %168) #17
  store ptr null, ptr %169, align 8, !tbaa !57
  store double %150, ptr %9, align 8, !tbaa !124
  call void @BLI_mutex_unlock(ptr noundef %155) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  br label %174

174:                                              ; preds = %149, %158, %154, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_scheduler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !163 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @vol_get_scattering(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_pool_user_mutex(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_task_pool_tasks_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !164 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
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
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !165 {
  %3 = load float, ptr %0, align 4, !tbaa !46
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !166 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !167 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !46
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !168 {
  %4 = tail call fastcc i32 @max_ii(i32 noundef %0, i32 noundef %1) #16
  %5 = tail call fastcc i32 @max_ii(i32 noundef %4, i32 noundef %2) #16
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @total_ss_energy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !169 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, ptr %2, i64 1
  %10 = getelementptr inbounds %struct.VolumePrecache, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.VolumePrecache, ptr %2, i64 0, i32 4
  %12 = getelementptr inbounds %struct.VolumePrecache, ptr %2, i64 0, i32 5
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %15

15:                                               ; preds = %8, %72
  %16 = phi i32 [ %6, %8 ], [ %73, %72 ]
  %17 = phi float [ 0.000000e+00, %8 ], [ %64, %72 ]
  %18 = phi i32 [ 0, %8 ], [ %74, %72 ]
  %19 = load i32, ptr %9, align 4, !tbaa !92
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 4, !tbaa !92
  %23 = icmp sgt i32 %22, 0
  %24 = mul nsw i32 %19, %18
  %25 = zext nneg i32 %19 to i64
  %26 = zext nneg i32 %22 to i64
  br label %27

27:                                               ; preds = %21, %59
  %28 = phi i64 [ 0, %21 ], [ %61, %59 ]
  %29 = phi float [ %17, %21 ], [ %60, %59 ]
  br i1 %23, label %30, label %59

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32
  %32 = add i32 %24, %31
  %33 = mul i32 %22, %32
  %34 = load ptr, ptr %10, align 8, !tbaa !96
  %35 = load ptr, ptr %11, align 8, !tbaa !97
  %36 = load ptr, ptr %12, align 8, !tbaa !98
  %37 = sext i32 %33 to i64
  br label %38

38:                                               ; preds = %30, %38
  %39 = phi i64 [ 0, %30 ], [ %57, %38 ]
  %40 = phi float [ %29, %30 ], [ %56, %38 ]
  %41 = add nsw i64 %39, %37
  %42 = getelementptr inbounds float, ptr %34, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !46
  %44 = fcmp ogt float %43, 0.000000e+00
  %45 = select i1 %44, float %43, float -0.000000e+00
  %46 = fadd float %40, %45
  %47 = getelementptr inbounds float, ptr %35, i64 %41
  %48 = load float, ptr %47, align 4, !tbaa !46
  %49 = fcmp ogt float %48, 0.000000e+00
  %50 = select i1 %49, float %48, float -0.000000e+00
  %51 = fadd float %46, %50
  %52 = getelementptr inbounds float, ptr %36, i64 %41
  %53 = load float, ptr %52, align 4, !tbaa !46
  %54 = fcmp ogt float %53, 0.000000e+00
  %55 = select i1 %54, float %53, float -0.000000e+00
  %56 = fadd float %51, %55
  %57 = add nuw nsw i64 %39, 1
  %58 = icmp eq i64 %57, %26
  br i1 %58, label %59, label %38, !llvm.loop !170

59:                                               ; preds = %38, %27
  %60 = phi float [ %29, %27 ], [ %56, %38 ]
  %61 = add nuw nsw i64 %28, 1
  %62 = icmp eq i64 %61, %25
  br i1 %62, label %63, label %27, !llvm.loop !171

63:                                               ; preds = %59, %15
  %64 = phi float [ %17, %15 ], [ %60, %59 ]
  br i1 %13, label %72, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %4, align 8, !tbaa !79
  %67 = load ptr, ptr %14, align 8, !tbaa !80
  %68 = tail call i32 %66(ptr noundef %67) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, ptr %5, align 4, !tbaa !92
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ %71, %70 ], [ %16, %63 ]
  %74 = add nuw nsw i32 %18, 1
  %75 = icmp slt i32 %74, %73
  br i1 %75, label %15, label %76, !llvm.loop !172

76:                                               ; preds = %72, %65, %3
  %77 = phi float [ 0.000000e+00, %3 ], [ %64, %65 ], [ %64, %72 ]
  ret float %77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @lc_to_ms_I(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 !PGOFuncName !173 {
  %5 = add nsw i32 %0, -1
  %6 = getelementptr inbounds i32, ptr %3, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = mul i32 %7, %5
  %11 = add nsw i32 %1, -1
  %12 = add i32 %11, %10
  %13 = mul i32 %12, %9
  %14 = add i32 %2, -1
  %15 = add i32 %14, %13
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ms_I(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 !PGOFuncName !174 {
  %5 = getelementptr inbounds i32, ptr %3, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = add nsw i32 %6, 2
  %8 = mul nsw i32 %7, %0
  %9 = getelementptr inbounds i32, ptr %3, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !92
  %11 = add nsw i32 %10, 2
  %12 = add i32 %8, %1
  %13 = mul i32 %12, %11
  %14 = add nsw i32 %13, %2
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ms_diffuse(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, float noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !175 {
  %7 = load i32, ptr %5, align 4, !tbaa !92
  %8 = getelementptr inbounds i32, ptr %5, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = mul nsw i32 %9, %7
  %11 = getelementptr inbounds i32, ptr %5, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = mul nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = fmul float %4, 0x3FB99999A0000000
  %16 = uitofp i64 %14 to float
  %17 = fmul float %15, %16
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %19 = tail call float @llvm.fmuladd.f32(float %17, float 6.000000e+00, float 1.000000e+00)
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %22

22:                                               ; preds = %101, %6
  %23 = phi i32 [ 0, %6 ], [ %106, %101 ]
  %24 = load i32, ptr %11, align 4, !tbaa !92
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %101, label %26

26:                                               ; preds = %22, %97
  %27 = phi i32 [ %98, %97 ], [ %24, %22 ]
  %28 = phi i32 [ %99, %97 ], [ 1, %22 ]
  %29 = load i32, ptr %8, align 4, !tbaa !92
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %89, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %5, align 4, !tbaa !92
  %33 = icmp slt i32 %32, 1
  %34 = add nsw i32 %28, -1
  %35 = add nuw nsw i32 %28, 1
  %36 = add nuw i32 %29, 1
  br label %37

37:                                               ; preds = %31, %86
  %38 = phi i32 [ 1, %31 ], [ %87, %86 ]
  br i1 %33, label %39, label %41

39:                                               ; preds = %37
  %40 = add nuw i32 %38, 1
  br label %86

41:                                               ; preds = %37
  %42 = add nsw i32 %38, -1
  %43 = add nuw i32 %38, 1
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi i32 [ 1, %41 ], [ %55, %44 ]
  %46 = tail call fastcc i32 @v_I_pad(i32 noundef %45, i32 noundef %38, i32 noundef %28, ptr noundef nonnull %5) #16
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %2, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !46
  %50 = add nsw i32 %45, -1
  %51 = tail call fastcc i32 @v_I_pad(i32 noundef %50, i32 noundef %38, i32 noundef %28, ptr noundef nonnull %5) #16
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr %2, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !46
  %55 = add nuw nsw i32 %45, 1
  %56 = tail call fastcc i32 @v_I_pad(i32 noundef %55, i32 noundef %38, i32 noundef %28, ptr noundef nonnull %5) #16
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, ptr %2, i64 %57
  %59 = load float, ptr %58, align 4, !tbaa !46
  %60 = fadd float %54, %59
  %61 = tail call fastcc i32 @v_I_pad(i32 noundef %45, i32 noundef %42, i32 noundef %28, ptr noundef nonnull %5) #16
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %2, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !46
  %65 = fadd float %60, %64
  %66 = tail call fastcc i32 @v_I_pad(i32 noundef %45, i32 noundef %43, i32 noundef %28, ptr noundef nonnull %5) #16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %2, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !46
  %70 = fadd float %65, %69
  %71 = tail call fastcc i32 @v_I_pad(i32 noundef %45, i32 noundef %38, i32 noundef %34, ptr noundef nonnull %5) #16
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, ptr %2, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !46
  %75 = fadd float %70, %74
  %76 = tail call fastcc i32 @v_I_pad(i32 noundef %45, i32 noundef %38, i32 noundef %35, ptr noundef nonnull %5) #16
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %2, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !46
  %80 = fadd float %75, %79
  %81 = fmul float %17, %80
  %82 = fdiv float %81, %19
  %83 = fadd float %49, %82
  %84 = getelementptr inbounds float, ptr %3, i64 %47
  store float %83, ptr %84, align 4, !tbaa !46
  %85 = icmp eq i32 %45, %32
  br i1 %85, label %86, label %44, !llvm.loop !176

86:                                               ; preds = %44, %39
  %87 = phi i32 [ %40, %39 ], [ %43, %44 ]
  %88 = icmp eq i32 %87, %36
  br i1 %88, label %89, label %37, !llvm.loop !177

89:                                               ; preds = %86, %26
  br i1 %20, label %97, label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %18, align 8, !tbaa !79
  %92 = load ptr, ptr %21, align 8, !tbaa !80
  %93 = tail call i32 %91(ptr noundef %92) #17
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, ptr %11, align 4, !tbaa !92
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi i32 [ %96, %95 ], [ %27, %89 ]
  %99 = add nuw nsw i32 %28, 1
  %100 = icmp slt i32 %28, %98
  br i1 %100, label %26, label %101, !llvm.loop !178

101:                                              ; preds = %97, %90, %22
  %102 = load ptr, ptr %18, align 8, !tbaa !79
  %103 = load ptr, ptr %21, align 8, !tbaa !80
  %104 = tail call i32 %102(ptr noundef %103) #17
  %105 = icmp ne i32 %104, 0
  %106 = add nuw nsw i32 %23, 1
  %107 = icmp eq i32 %106, 20
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %109, label %22, !llvm.loop !179

109:                                              ; preds = %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @total_ms_energy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !180 {
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %8 = getelementptr inbounds i32, ptr %5, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %66, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i32, ptr %5, i64 1
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %15

15:                                               ; preds = %11, %62
  %16 = phi i32 [ %9, %11 ], [ %63, %62 ]
  %17 = phi float [ 0.000000e+00, %11 ], [ %54, %62 ]
  %18 = phi i32 [ 1, %11 ], [ %64, %62 ]
  %19 = load i32, ptr %12, align 4, !tbaa !92
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %5, align 4, !tbaa !92
  %23 = icmp slt i32 %22, 1
  br label %24

24:                                               ; preds = %21, %49
  %25 = phi float [ %17, %21 ], [ %50, %49 ]
  %26 = phi i32 [ 1, %21 ], [ %51, %49 ]
  br i1 %23, label %49, label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ %47, %27 ], [ 1, %24 ]
  %29 = phi float [ %46, %27 ], [ %25, %24 ]
  %30 = tail call fastcc i32 @ms_I(i32 noundef %28, i32 noundef %26, i32 noundef %18, ptr noundef nonnull %5) #16
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %2, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !46
  %34 = fcmp ogt float %33, 0.000000e+00
  %35 = select i1 %34, float %33, float -0.000000e+00
  %36 = fadd float %29, %35
  %37 = getelementptr inbounds float, ptr %3, i64 %31
  %38 = load float, ptr %37, align 4, !tbaa !46
  %39 = fcmp ogt float %38, 0.000000e+00
  %40 = select i1 %39, float %38, float -0.000000e+00
  %41 = fadd float %36, %40
  %42 = getelementptr inbounds float, ptr %4, i64 %31
  %43 = load float, ptr %42, align 4, !tbaa !46
  %44 = fcmp ogt float %43, 0.000000e+00
  %45 = select i1 %44, float %43, float -0.000000e+00
  %46 = fadd float %41, %45
  %47 = add nuw i32 %28, 1
  %48 = icmp eq i32 %28, %22
  br i1 %48, label %49, label %27, !llvm.loop !181

49:                                               ; preds = %27, %24
  %50 = phi float [ %25, %24 ], [ %46, %27 ]
  %51 = add nuw i32 %26, 1
  %52 = icmp eq i32 %26, %19
  br i1 %52, label %53, label %24, !llvm.loop !182

53:                                               ; preds = %49, %15
  %54 = phi float [ %17, %15 ], [ %50, %49 ]
  br i1 %13, label %62, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %7, align 8, !tbaa !79
  %57 = load ptr, ptr %14, align 8, !tbaa !80
  %58 = tail call i32 %56(ptr noundef %57) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, ptr %8, align 4, !tbaa !92
  br label %62

62:                                               ; preds = %60, %53
  %63 = phi i32 [ %61, %60 ], [ %16, %53 ]
  %64 = add nuw nsw i32 %18, 1
  %65 = icmp slt i32 %18, %63
  br i1 %65, label %15, label %66, !llvm.loop !183

66:                                               ; preds = %62, %55, %6
  %67 = phi float [ 0.000000e+00, %6 ], [ %54, %55 ], [ %54, %62 ]
  ret float %67
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !184 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @v_I_pad(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 !PGOFuncName !185 {
  %5 = getelementptr inbounds i32, ptr %3, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = add nsw i32 %6, 2
  %8 = mul nsw i32 %7, %2
  %9 = load i32, ptr %3, align 4, !tbaa !92
  %10 = add nsw i32 %9, 2
  %11 = add i32 %8, %1
  %12 = mul i32 %11, %10
  %13 = add nsw i32 %12, %0
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc float @get_avg_surrounds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #13 !PGOFuncName !186 {
  %6 = getelementptr inbounds i32, ptr %1, i64 2
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  br label %8

8:                                                ; preds = %5, %59
  %9 = phi float [ 0.000000e+00, %5 ], [ %61, %59 ]
  %10 = phi i32 [ 0, %5 ], [ %60, %59 ]
  %11 = phi i32 [ -1, %5 ], [ %62, %59 ]
  %12 = add nsw i32 %11, %4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %59

14:                                               ; preds = %8
  %15 = load i32, ptr %6, align 4, !tbaa !92
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %14, %54
  %18 = phi float [ %56, %54 ], [ %9, %14 ]
  %19 = phi i32 [ %55, %54 ], [ %10, %14 ]
  %20 = phi i32 [ %57, %54 ], [ -1, %14 ]
  %21 = add nsw i32 %20, %3
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load i32, ptr %7, align 4, !tbaa !92
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = mul nsw i32 %24, %12
  %28 = add i32 %27, %21
  br label %29

29:                                               ; preds = %26, %49
  %30 = phi i32 [ -1, %26 ], [ %52, %49 ]
  %31 = phi float [ %18, %26 ], [ %51, %49 ]
  %32 = phi i32 [ %19, %26 ], [ %50, %49 ]
  %33 = add nsw i32 %30, %2
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i32, ptr %1, align 4, !tbaa !92
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = mul i32 %36, %28
  %40 = add nsw i32 %39, %33
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !46
  %44 = fcmp ogt float %43, 0.000000e+00
  %45 = zext i1 %44 to i32
  %46 = add nsw i32 %32, %45
  %47 = select i1 %44, float %43, float -0.000000e+00
  %48 = fadd float %31, %47
  br label %49

49:                                               ; preds = %29, %35, %38
  %50 = phi i32 [ %46, %38 ], [ %32, %35 ], [ %32, %29 ]
  %51 = phi float [ %48, %38 ], [ %31, %35 ], [ %31, %29 ]
  %52 = add nsw i32 %30, 1
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %29, !llvm.loop !187

54:                                               ; preds = %49, %17, %23
  %55 = phi i32 [ %19, %23 ], [ %19, %17 ], [ %50, %49 ]
  %56 = phi float [ %18, %23 ], [ %18, %17 ], [ %51, %49 ]
  %57 = add nsw i32 %20, 1
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %17, !llvm.loop !188

59:                                               ; preds = %54, %8, %14
  %60 = phi i32 [ %10, %14 ], [ %10, %8 ], [ %55, %54 ]
  %61 = phi float [ %9, %14 ], [ %9, %8 ], [ %56, %54 ]
  %62 = add nsw i32 %11, 1
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %8, !llvm.loop !189

64:                                               ; preds = %59
  %65 = icmp sgt i32 %60, 0
  %66 = sitofp i32 %60 to float
  %67 = select i1 %65, float %66, float 1.000000e+00
  %68 = fdiv float %61, %67
  ret float %68
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @intersect_outside_volume(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !190 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %10 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 9
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 15
  %13 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 16
  %14 = add i32 %3, %2
  br label %15

15:                                               ; preds = %6, %20
  %16 = phi i32 [ %3, %6 ], [ %32, %20 ]
  %17 = phi i32 [ %2, %6 ], [ %31, %20 ]
  %18 = tail call i32 @RE_rayobject_raycast(ptr noundef %0, ptr noundef %1) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load float, ptr %7, align 8, !tbaa !106
  %22 = load <2 x float>, ptr %1, align 8, !tbaa !46
  %23 = load <2 x float>, ptr %8, align 4, !tbaa !46
  %24 = insertelement <2 x float> poison, float %21, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %23, <2 x float> %22)
  store <2 x float> %26, ptr %1, align 8, !tbaa !46
  %27 = load float, ptr %9, align 8, !tbaa !46
  %28 = load float, ptr %10, align 4, !tbaa !46
  %29 = tail call float @llvm.fmuladd.f32(float %21, float %28, float %27)
  store float %29, ptr %9, align 8, !tbaa !46
  store float 0x47EFFFFFE0000000, ptr %7, align 8, !tbaa !106
  store i32 2, ptr %11, align 8, !tbaa !191
  %30 = load <2 x ptr>, ptr %12, align 8, !tbaa !45
  store <2 x ptr> %30, ptr %13, align 8, !tbaa !45
  %31 = add nsw i32 %17, -1
  %32 = add nsw i32 %16, 1
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %15

34:                                               ; preds = %20, %15, %4
  %35 = phi i32 [ %3, %4 ], [ %16, %15 ], [ %14, %20 ]
  ret i32 %35
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

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
!45 = !{!36, !36, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = !{!49, !39, i64 80}
!49 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!50 = !{!49, !36, i64 112}
!51 = !{!52, !36, i64 0}
!52 = !{!"VertTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!53 = !{!35, !40, i64 216}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"volume_precache.c:copy_v3_v3"}
!57 = !{!58, !36, i64 6128}
!58 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !59, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !60, i64 156, !61, i64 172, !47, i64 188, !47, i64 192, !47, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !47, i64 544, !47, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !62, i64 1104, !69, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !59, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !47, i64 5680, !36, i64 5688, !59, i64 5696, !47, i64 5712, !47, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !59, i64 5752, !59, i64 5768, !59, i64 5784, !36, i64 5800, !59, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !59, i64 5872, !36, i64 5888, !59, i64 5896, !59, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !71, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!59 = !{!"ListBase", !36, i64 0, !36, i64 8}
!60 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!61 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!62 = !{!"RenderData", !63, i64 0, !36, i64 248, !36, i64 256, !66, i64 264, !67, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !47, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !61, i64 544, !61, i64 560, !60, i64 576, !59, i64 592, !40, i64 608, !40, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !39, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !47, i64 660, !47, i64 664, !40, i64 668, !40, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !47, i64 2528, !47, i64 2532, !40, i64 2536, !40, i64 2538, !47, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !39, i64 2576, !47, i64 2580, !37, i64 2584, !68, i64 2616, !39, i64 3976, !39, i64 3980}
!63 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !64, i64 24, !65, i64 184}
!64 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!66 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!67 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !47, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!68 = !{!"BakeData", !63, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!69 = !{!"World", !70, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!70 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!71 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !72, i64 48, !72, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !47, i64 144, !47, i64 148}
!72 = !{!"double", !37, i64 0}
!73 = !{!58, !36, i64 6000}
!74 = !{!58, !36, i64 6008}
!75 = !{!76, !36, i64 16}
!76 = !{!"VolumeOb", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!77 = !{i32 0, i32 2}
!78 = !{!76, !36, i64 24}
!79 = !{!58, !36, i64 6048}
!80 = !{!58, !36, i64 6056}
!81 = distinct !{!81, !55}
!82 = distinct !{!82, !55}
!83 = !{!"volume_precache.c:using_lightcache"}
!84 = !{!85, !40, i64 290}
!85 = !{!"Material", !70, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !86, i64 224, !87, i64 312, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !47, i64 348, !47, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !47, i64 364, !47, i64 368, !40, i64 372, !40, i64 374, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !47, i64 456, !37, i64 460, !47, i64 524, !47, i64 528, !47, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !47, i64 556, !47, i64 560, !37, i64 564, !47, i64 580, !47, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !47, i64 616, !47, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !47, i64 800, !47, i64 804, !47, i64 808, !47, i64 812, !47, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !47, i64 848, !47, i64 852, !47, i64 856, !47, i64 860, !47, i64 864, !47, i64 868, !47, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !59, i64 928}
!86 = !{!"VolumeSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !47, i64 52, !47, i64 56, !47, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84}
!87 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!88 = !{!85, !40, i64 292}
!89 = !{!"volume_precache.c:vol_precache_objectinstance_threads"}
!90 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 74, !91, i64 92, i64 4, !92, i64 96, i64 2, !93, i64 98, i64 2, !93, i64 100, i64 2, !93, i64 102, i64 2, !93, i64 104, i64 1, !91, i64 112, i64 8, !45, i64 120, i64 8, !45, i64 128, i64 8, !45, i64 136, i64 8, !45, i64 144, i64 4, !92, i64 148, i64 4, !92, i64 152, i64 4, !92, i64 156, i64 4, !92, i64 160, i64 4, !92, i64 164, i64 4, !92, i64 168, i64 4, !92, i64 172, i64 4, !46, i64 176, i64 4, !46, i64 180, i64 4, !46, i64 184, i64 4, !46, i64 188, i64 4, !46, i64 192, i64 4, !46, i64 196, i64 4, !46, i64 200, i64 4, !92, i64 204, i64 4, !92, i64 208, i64 4, !92, i64 212, i64 4, !92, i64 216, i64 4, !46, i64 220, i64 4, !46, i64 224, i64 4, !46, i64 228, i64 4, !46, i64 232, i64 4, !46, i64 236, i64 4, !46, i64 240, i64 12, !91, i64 252, i64 36, !91, i64 288, i64 64, !91, i64 352, i64 64, !91, i64 416, i64 64, !91, i64 480, i64 64, !91, i64 544, i64 4, !46, i64 548, i64 4, !46, i64 552, i64 8, !45, i64 560, i64 256, !91, i64 816, i64 256, !91, i64 1072, i64 8, !45, i64 1080, i64 4, !91, i64 1088, i64 8, !45, i64 1096, i64 8, !45, i64 1104, i64 1, !91, i64 1105, i64 1, !91, i64 1106, i64 1, !91, i64 1107, i64 1, !91, i64 1108, i64 1, !91, i64 1109, i64 1, !91, i64 1110, i64 1, !91, i64 1111, i64 1, !91, i64 1112, i64 2, !93, i64 1114, i64 2, !93, i64 1116, i64 4, !46, i64 1120, i64 1, !91, i64 1121, i64 1, !91, i64 1122, i64 6, !91, i64 1128, i64 4, !92, i64 1132, i64 4, !92, i64 1136, i64 64, !91, i64 1200, i64 64, !91, i64 1264, i64 4, !46, i64 1268, i64 4, !46, i64 1272, i64 8, !45, i64 1280, i64 8, !45, i64 1288, i64 64, !91, i64 1352, i64 8, !45, i64 1360, i64 8, !45, i64 1368, i64 4, !92, i64 1372, i64 4, !92, i64 1376, i64 4, !92, i64 1380, i64 4, !92, i64 1384, i64 4, !92, i64 1388, i64 4, !92, i64 1392, i64 4, !92, i64 1396, i64 4, !92, i64 1400, i64 4, !92, i64 1404, i64 4, !92, i64 1408, i64 4, !92, i64 1412, i64 4, !92, i64 1416, i64 2, !93, i64 1418, i64 2, !93, i64 1420, i64 4, !92, i64 1424, i64 4, !92, i64 1428, i64 4, !92, i64 1432, i64 4, !92, i64 1436, i64 4, !92, i64 1440, i64 4, !92, i64 1444, i64 4, !92, i64 1448, i64 4, !92, i64 1452, i64 4, !92, i64 1456, i64 4, !92, i64 1460, i64 4, !92, i64 1464, i64 4, !46, i64 1468, i64 4, !92, i64 1472, i64 4, !92, i64 1476, i64 4, !92, i64 1480, i64 4, !92, i64 1484, i64 4, !92, i64 1488, i64 4, !92, i64 1492, i64 4, !92, i64 1496, i64 8, !45, i64 1504, i64 4, !92, i64 1508, i64 4, !92, i64 1512, i64 4, !92, i64 1516, i64 4, !46, i64 1520, i64 4, !92, i64 1524, i64 4, !92, i64 1528, i64 4, !92, i64 1532, i64 4, !92, i64 1536, i64 2, !93, i64 1538, i64 2, !93, i64 1540, i64 4, !46, i64 1544, i64 4, !46, i64 1548, i64 4, !46, i64 1552, i64 4, !46, i64 1556, i64 4, !46, i64 1560, i64 2, !93, i64 1562, i64 2, !93, i64 1564, i64 2, !93, i64 1566, i64 2, !93, i64 1568, i64 2, !93, i64 1570, i64 2, !93, i64 1572, i64 4, !92, i64 1576, i64 2, !93, i64 1578, i64 2, !93, i64 1580, i64 2, !93, i64 1582, i64 2, !93, i64 1584, i64 2, !93, i64 1586, i64 2, !93, i64 1588, i64 4, !92, i64 1592, i64 4, !92, i64 1596, i64 2, !93, i64 1598, i64 2, !93, i64 1600, i64 4, !92, i64 1604, i64 4, !92, i64 1608, i64 2, !93, i64 1610, i64 2, !93, i64 1612, i64 2, !93, i64 1614, i64 2, !93, i64 1616, i64 2, !93, i64 1618, i64 1, !91, i64 1619, i64 1, !91, i64 1620, i64 4, !92, i64 1624, i64 4, !92, i64 1628, i64 4, !92, i64 1632, i64 2, !93, i64 1634, i64 2, !93, i64 1636, i64 2, !93, i64 1638, i64 2, !93, i64 1640, i64 2, !93, i64 1642, i64 2, !93, i64 1644, i64 2, !93, i64 1646, i64 2, !93, i64 1648, i64 4, !46, i64 1652, i64 4, !46, i64 1656, i64 4, !46, i64 1660, i64 4, !46, i64 1664, i64 4, !46, i64 1668, i64 4, !46, i64 1672, i64 4, !46, i64 1676, i64 4, !46, i64 1680, i64 4, !92, i64 1684, i64 4, !92, i64 1688, i64 4, !92, i64 1692, i64 4, !92, i64 1696, i64 8, !45, i64 1704, i64 8, !45, i64 1712, i64 2, !93, i64 1714, i64 2, !93, i64 1716, i64 4, !46, i64 1720, i64 4, !46, i64 1724, i64 4, !46, i64 1728, i64 4, !46, i64 1732, i64 4, !92, i64 1736, i64 4, !46, i64 1740, i64 4, !46, i64 1744, i64 4, !46, i64 1748, i64 4, !46, i64 1752, i64 2, !93, i64 1754, i64 2, !93, i64 1756, i64 2, !93, i64 1758, i64 2, !93, i64 1760, i64 2, !93, i64 1762, i64 2, !93, i64 1764, i64 4, !46, i64 1768, i64 4, !46, i64 1772, i64 2, !93, i64 1774, i64 2, !93, i64 1776, i64 4, !46, i64 1780, i64 4, !46, i64 1784, i64 1024, !91, i64 2808, i64 4, !92, i64 2812, i64 2, !93, i64 2814, i64 2, !93, i64 2816, i64 768, !91, i64 3584, i64 16, !91, i64 3600, i64 16, !91, i64 3616, i64 1, !91, i64 3617, i64 1, !91, i64 3618, i64 1, !91, i64 3619, i64 5, !91, i64 3624, i64 4, !92, i64 3628, i64 2, !93, i64 3630, i64 2, !93, i64 3632, i64 4, !46, i64 3636, i64 4, !46, i64 3640, i64 2, !93, i64 3642, i64 2, !93, i64 3644, i64 4, !46, i64 3648, i64 2, !93, i64 3650, i64 2, !93, i64 3652, i64 4, !92, i64 3656, i64 2, !93, i64 3658, i64 2, !93, i64 3660, i64 2, !93, i64 3662, i64 2, !93, i64 3664, i64 4, !46, i64 3668, i64 4, !46, i64 3672, i64 8, !45, i64 3680, i64 4, !92, i64 3684, i64 4, !46, i64 3688, i64 32, !91, i64 3720, i64 1, !91, i64 3721, i64 1, !91, i64 3722, i64 1, !91, i64 3723, i64 1, !91, i64 3724, i64 1, !91, i64 3725, i64 1, !91, i64 3726, i64 1, !91, i64 3727, i64 1, !91, i64 3728, i64 2, !93, i64 3730, i64 2, !93, i64 3732, i64 4, !46, i64 3736, i64 1, !91, i64 3737, i64 1, !91, i64 3738, i64 6, !91, i64 3744, i64 4, !92, i64 3748, i64 4, !92, i64 3752, i64 64, !91, i64 3816, i64 64, !91, i64 3880, i64 4, !46, i64 3884, i64 4, !46, i64 3888, i64 8, !45, i64 3896, i64 8, !45, i64 3904, i64 64, !91, i64 3968, i64 1024, !91, i64 4992, i64 2, !93, i64 4994, i64 2, !93, i64 4996, i64 2, !93, i64 4998, i64 2, !93, i64 5000, i64 4, !46, i64 5004, i64 4, !46, i64 5008, i64 3, !91, i64 5011, i64 1, !91, i64 5012, i64 1, !91, i64 5013, i64 3, !91, i64 5016, i64 64, !91, i64 5080, i64 4, !92, i64 5084, i64 4, !92, i64 5088, i64 8, !45, i64 5096, i64 8, !45, i64 5104, i64 8, !45, i64 5112, i64 8, !45, i64 5120, i64 66, !91, i64 5186, i64 2, !93, i64 5188, i64 4, !92, i64 5192, i64 4, !92, i64 5196, i64 4, !92, i64 5200, i64 8, !45, i64 5208, i64 8, !45, i64 5216, i64 2, !93, i64 5218, i64 2, !93, i64 5220, i64 2, !93, i64 5222, i64 2, !93, i64 5224, i64 4, !46, i64 5228, i64 4, !46, i64 5232, i64 4, !46, i64 5236, i64 4, !46, i64 5240, i64 4, !46, i64 5244, i64 4, !46, i64 5248, i64 4, !46, i64 5252, i64 4, !46, i64 5256, i64 4, !46, i64 5260, i64 4, !46, i64 5264, i64 4, !46, i64 5268, i64 4, !46, i64 5272, i64 4, !46, i64 5276, i64 4, !46, i64 5280, i64 4, !46, i64 5284, i64 4, !46, i64 5288, i64 2, !93, i64 5290, i64 2, !93, i64 5292, i64 2, !93, i64 5294, i64 2, !93, i64 5296, i64 2, !93, i64 5298, i64 2, !93, i64 5300, i64 2, !93, i64 5302, i64 2, !93, i64 5304, i64 4, !46, i64 5308, i64 4, !46, i64 5312, i64 4, !46, i64 5316, i64 4, !46, i64 5320, i64 4, !46, i64 5324, i64 4, !46, i64 5328, i64 4, !46, i64 5332, i64 4, !46, i64 5336, i64 4, !46, i64 5340, i64 4, !46, i64 5344, i64 4, !46, i64 5348, i64 4, !46, i64 5352, i64 2, !93, i64 5354, i64 2, !93, i64 5356, i64 2, !93, i64 5358, i64 2, !93, i64 5360, i64 4, !46, i64 5364, i64 4, !46, i64 5368, i64 4, !46, i64 5372, i64 4, !46, i64 5376, i64 2, !93, i64 5378, i64 2, !93, i64 5380, i64 2, !93, i64 5382, i64 2, !93, i64 5384, i64 4, !46, i64 5388, i64 4, !46, i64 5392, i64 4, !46, i64 5396, i64 4, !46, i64 5400, i64 4, !46, i64 5404, i64 4, !46, i64 5408, i64 4, !46, i64 5412, i64 2, !93, i64 5414, i64 2, !93, i64 5416, i64 2, !93, i64 5418, i64 2, !93, i64 5420, i64 2, !93, i64 5422, i64 2, !93, i64 5424, i64 8, !45, i64 5432, i64 8, !45, i64 5440, i64 8, !45, i64 5448, i64 144, !91, i64 5592, i64 2, !93, i64 5594, i64 2, !93, i64 5596, i64 4, !91, i64 5600, i64 8, !45, i64 5608, i64 8, !45, i64 5616, i64 8, !45, i64 5624, i64 4, !92, i64 5628, i64 4, !92, i64 5632, i64 8, !45, i64 5640, i64 8, !45, i64 5648, i64 8, !45, i64 5656, i64 8, !45, i64 5664, i64 8, !45, i64 5672, i64 8, !45, i64 5680, i64 4, !46, i64 5688, i64 8, !45, i64 5696, i64 8, !45, i64 5704, i64 8, !45, i64 5712, i64 4, !46, i64 5716, i64 4, !46, i64 5720, i64 4, !92, i64 5724, i64 4, !92, i64 5728, i64 4, !92, i64 5732, i64 4, !92, i64 5736, i64 4, !92, i64 5744, i64 8, !45, i64 5752, i64 8, !45, i64 5760, i64 8, !45, i64 5768, i64 8, !45, i64 5776, i64 8, !45, i64 5784, i64 8, !45, i64 5792, i64 8, !45, i64 5800, i64 8, !45, i64 5808, i64 8, !45, i64 5816, i64 8, !45, i64 5824, i64 4, !92, i64 5832, i64 8, !45, i64 5840, i64 8, !45, i64 5848, i64 8, !45, i64 5856, i64 8, !45, i64 5864, i64 8, !45, i64 5872, i64 8, !45, i64 5880, i64 8, !45, i64 5888, i64 8, !45, i64 5896, i64 8, !45, i64 5904, i64 8, !45, i64 5912, i64 8, !45, i64 5920, i64 8, !45, i64 5928, i64 8, !45, i64 5936, i64 8, !45, i64 5944, i64 8, !45, i64 5952, i64 8, !45, i64 5960, i64 8, !45, i64 5968, i64 8, !45, i64 5976, i64 8, !45, i64 5984, i64 8, !45, i64 5992, i64 8, !45, i64 6000, i64 8, !45, i64 6008, i64 8, !45, i64 6016, i64 8, !45, i64 6024, i64 8, !45, i64 6032, i64 8, !45, i64 6040, i64 8, !45, i64 6048, i64 8, !45, i64 6056, i64 8, !45, i64 6064, i64 4, !92, i64 6068, i64 4, !92, i64 6072, i64 4, !92, i64 6076, i64 4, !92, i64 6080, i64 4, !92, i64 6084, i64 4, !92, i64 6088, i64 4, !92, i64 6092, i64 2, !93, i64 6094, i64 2, !93, i64 6096, i64 2, !93, i64 6098, i64 2, !93, i64 6100, i64 2, !93, i64 6102, i64 2, !93, i64 6104, i64 1, !91, i64 6112, i64 8, !94, i64 6120, i64 8, !94, i64 6128, i64 8, !45, i64 6136, i64 8, !45, i64 6144, i64 64, !91, i64 6208, i64 4, !46, i64 6212, i64 4, !46, i64 6216, i64 8, !45, i64 6224, i64 8, !45, i64 6232, i64 8, !45}
!91 = !{!37, !37, i64 0}
!92 = !{!39, !39, i64 0}
!93 = !{!40, !40, i64 0}
!94 = !{!72, !72, i64 0}
!95 = !{!85, !40, i64 294}
!96 = !{!43, !36, i64 32}
!97 = !{!43, !36, i64 40}
!98 = !{!43, !36, i64 48}
!99 = distinct !{!99, !55}
!100 = !{!"volume_precache.c:point_inside_obi"}
!101 = !{!102, !39, i64 88}
!102 = !{!"Isect", !37, i64 0, !37, i64 12, !47, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !47, i64 112, !47, i64 116, !39, i64 120, !103, i64 128, !103, i64 144, !36, i64 160, !36, i64 168}
!103 = !{!"", !36, i64 0, !36, i64 8}
!104 = !{!102, !36, i64 160}
!105 = !{!102, !39, i64 92}
!106 = !{!102, !47, i64 24}
!107 = !{!"volume_precache.c:precache_resolution"}
!108 = !{!"volume_precache.c:precache_setup_shadeinput"}
!109 = !{!110, !39, i64 1408}
!110 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !47, i64 264, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !47, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !47, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !47, i64 1256, !47, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !47, i64 1336, !47, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !47, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!111 = !{!110, !39, i64 1388}
!112 = !{!110, !36, i64 0}
!113 = !{!110, !36, i64 8}
!114 = !{!85, !40, i64 360}
!115 = !{!110, !39, i64 320}
!116 = !{!110, !36, i64 24}
!117 = !{!110, !36, i64 32}
!118 = !{!58, !39, i64 5624}
!119 = !{!110, !39, i64 1440}
!120 = !{!"volume_precache.c:precache_launch_parts"}
!121 = !{!58, !40, i64 1538}
!122 = !{!123, !39, i64 8}
!123 = !{!"VolPrecacheState", !72, i64 0, !39, i64 8}
!124 = !{!123, !72, i64 0}
!125 = !{!126, !36, i64 168}
!126 = !{!"VolPrecachePart", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !37, i64 132, !37, i64 144, !37, i64 156, !36, i64 168}
!127 = !{!126, !39, i64 104}
!128 = !{!126, !36, i64 16}
!129 = !{!126, !36, i64 24}
!130 = !{!126, !36, i64 32}
!131 = !{!126, !39, i64 108}
!132 = !{!126, !39, i64 112}
!133 = !{!126, !39, i64 116}
!134 = !{!126, !39, i64 120}
!135 = !{!126, !39, i64 124}
!136 = !{!126, !39, i64 128}
!137 = distinct !{!137, !55}
!138 = distinct !{!138, !55}
!139 = distinct !{!139, !55}
!140 = !{!"volume_precache.c:multiple_scattering_diffusion"}
!141 = !{!85, !47, i64 300}
!142 = !{!85, !47, i64 308}
!143 = !{!85, !47, i64 304}
!144 = distinct !{!144, !55}
!145 = distinct !{!145, !55}
!146 = distinct !{!146, !55}
!147 = distinct !{!147, !55}
!148 = distinct !{!148, !55}
!149 = distinct !{!149, !55}
!150 = distinct !{!150, !55}
!151 = !{!"volume_precache.c:lightcache_filter"}
!152 = distinct !{!152, !55}
!153 = distinct !{!153, !55}
!154 = distinct !{!154, !55}
!155 = !{!"volume_precache.c:sub_v3_v3v3"}
!156 = !{!"volume_precache.c:max_fff"}
!157 = !{!"volume_precache.c:max_ff"}
!158 = !{!"volume_precache.c:copy_v3_v3_int"}
!159 = !{!"volume_precache.c:vol_precache_part"}
!160 = distinct !{!160, !55}
!161 = distinct !{!161, !55}
!162 = distinct !{!162, !55}
!163 = !{!"volume_precache.c:normalize_v3"}
!164 = !{!"volume_precache.c:normalize_v3_v3"}
!165 = !{!"volume_precache.c:dot_v3v3"}
!166 = !{!"volume_precache.c:mul_v3_v3fl"}
!167 = !{!"volume_precache.c:zero_v3"}
!168 = !{!"volume_precache.c:max_iii"}
!169 = !{!"volume_precache.c:total_ss_energy"}
!170 = distinct !{!170, !55}
!171 = distinct !{!171, !55}
!172 = distinct !{!172, !55}
!173 = !{!"volume_precache.c:lc_to_ms_I"}
!174 = !{!"volume_precache.c:ms_I"}
!175 = !{!"volume_precache.c:ms_diffuse"}
!176 = distinct !{!176, !55}
!177 = distinct !{!177, !55}
!178 = distinct !{!178, !55}
!179 = distinct !{!179, !55}
!180 = !{!"volume_precache.c:total_ms_energy"}
!181 = distinct !{!181, !55}
!182 = distinct !{!182, !55}
!183 = distinct !{!183, !55}
!184 = !{!"volume_precache.c:max_ii"}
!185 = !{!"volume_precache.c:v_I_pad"}
!186 = !{!"volume_precache.c:get_avg_surrounds"}
!187 = distinct !{!187, !55}
!188 = distinct !{!188, !55}
!189 = distinct !{!189, !55}
!190 = !{!"volume_precache.c:intersect_outside_volume"}
!191 = !{!102, !39, i64 96}
