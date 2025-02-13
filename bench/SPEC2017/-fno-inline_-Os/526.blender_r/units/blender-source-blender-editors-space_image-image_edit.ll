; ModuleID = 'blender/source/blender/editors/space_image/image_edit.c'
source_filename = "blender/source/blender/editors/space_image/image_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_space_image(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @G, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @ED_uvedit_assign_image(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %7) #6
  store ptr %3, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %3, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !49
  %12 = and i16 %11, -2
  %13 = icmp eq i16 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 17
  %16 = load i8, ptr %15, align 4, !tbaa !53
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8 0, ptr %15, align 4, !tbaa !53
  br label %19

19:                                               ; preds = %14, %18
  br i1 %8, label %23, label %20

20:                                               ; preds = %9, %19
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 6
  tail call void @BKE_image_signal(ptr noundef nonnull %3, ptr noundef nonnull %21, i32 noundef 6) #6
  %22 = load ptr, ptr %6, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %22, %20 ], [ null, %19 ]
  tail call void @id_us_ensure_real(ptr noundef %24) #6
  %25 = icmp eq ptr %2, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %28) #6
  br label %29

29:                                               ; preds = %26, %23
  tail call void @WM_main_add_notifier(i32 noundef 251920384, ptr noundef null) #6
  ret void
}

; Function Attrs: optsize
declare void @ED_uvedit_assign_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_ensure_real(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_space_image_get_mask(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_set_mask(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 26
  store ptr %2, ptr %4, align 8, !tbaa !58
  tail call void @id_us_ensure_real(ptr noundef %2) #6
  %5 = icmp eq ptr %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 352321542, ptr noundef %2) #6
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_space_image_acquire_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 6
  %10 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %1) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BKE_image_release_ibuf(ptr noundef %21, ptr noundef nonnull %10, ptr noundef null) #6
  br label %23

22:                                               ; preds = %4, %2
  store ptr null, ptr %1, align 8, !tbaa !64
  br label %23

23:                                               ; preds = %22, %20, %8, %12, %16
  %24 = phi ptr [ %10, %16 ], [ %10, %12 ], [ null, %8 ], [ null, %20 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_release_buffer(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #6
  br label %10

10:                                               ; preds = %9, %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_space_image_has_buffer(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = call ptr @ED_space_image_acquire_buffer(ptr noundef %0, ptr noundef nonnull %2) #8
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  %6 = load ptr, ptr %2, align 8, !tbaa !64
  call void @ED_space_image_release_buffer(ptr noundef %0, ptr noundef %3, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_size(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = call ptr @ED_space_image_acquire_buffer(ptr noundef %0, ptr noundef nonnull %4) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  store i32 %11, ptr %1, align 4, !tbaa !68
  %18 = load i32, ptr %14, align 4, !tbaa !67
  br label %58

19:                                               ; preds = %13, %9, %3
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 12
  %25 = load i16, ptr %24, align 2, !tbaa !49
  %26 = icmp eq i16 %25, 4
  %27 = icmp ne ptr %6, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %31 = load i32, ptr %30, align 4, !tbaa !69
  %32 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 30
  %33 = load i16, ptr %32, align 2, !tbaa !86
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %31, %34
  %36 = sdiv i32 %35, 100
  store i32 %36, ptr %1, align 4, !tbaa !68
  %37 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 34
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = mul nsw i32 %38, %34
  %40 = sdiv i32 %39, 100
  store i32 %40, ptr %2, align 4, !tbaa !68
  %41 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 47
  %42 = load i32, ptr %41, align 8, !tbaa !88
  %43 = and i32 %42, 2560
  %44 = icmp eq i32 %43, 2560
  br i1 %44, label %45, label %60

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 58
  %47 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %46) #8
  %48 = load i32, ptr %1, align 4, !tbaa !68
  %49 = sitofp i32 %48 to float
  %50 = fmul float %47, %49
  %51 = fptosi float %50 to i32
  store i32 %51, ptr %1, align 4, !tbaa !68
  %52 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %46) #8
  %53 = load i32, ptr %2, align 4, !tbaa !68
  %54 = sitofp i32 %53 to float
  %55 = fmul float %52, %54
  %56 = fptosi float %55 to i32
  br label %58

57:                                               ; preds = %23, %19
  store i32 256, ptr %1, align 4, !tbaa !68
  br label %58

58:                                               ; preds = %17, %45, %57
  %59 = phi i32 [ 256, %57 ], [ %56, %45 ], [ %18, %17 ]
  store i32 %59, ptr %2, align 4, !tbaa !68
  br label %60

60:                                               ; preds = %58, %29
  %61 = load ptr, ptr %4, align 8, !tbaa !64
  call void @ED_space_image_release_buffer(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %61) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !90
  %4 = load float, ptr %0, align 4, !tbaa !91
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !93
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !94
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_size_fl(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %5 = load <2 x i32>, ptr %3, align 8, !tbaa !68
  %6 = sitofp <2 x i32> %5 to <2 x float>
  store <2 x float> %6, ptr %1, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_aspect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 34
  %9 = load float, ptr %8, align 8, !tbaa !96
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 35
  %13 = load float, ptr %12, align 4, !tbaa !97
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !95
  store float 1.000000e+00, ptr %1, align 4, !tbaa !95
  br label %17

16:                                               ; preds = %11
  tail call void @BKE_image_get_aspect(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #6
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_zoom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %7) #8
  %9 = add nsw i32 %8, 1
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %12 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %11) #8
  %13 = load i32, ptr %5, align 4, !tbaa !68
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = fdiv float %10, %15
  store float %16, ptr %2, align 4, !tbaa !95
  %17 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #8
  %18 = add nsw i32 %17, 1
  %19 = sitofp i32 %18 to float
  %20 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %11) #8
  %21 = load i32, ptr %6, align 4, !tbaa !68
  %22 = sitofp i32 %21 to float
  %23 = fmul float %20, %22
  %24 = fdiv float %19, %23
  store float %24, ptr %3, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = load i32, ptr %0, align 4, !tbaa !100
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !101 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !102
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_uv_aspect(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  tail call void @ED_space_image_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %6 = load i32, ptr %4, align 4, !tbaa !68
  %7 = sitofp i32 %6 to float
  %8 = load float, ptr %1, align 4, !tbaa !95
  %9 = fmul float %8, %7
  store float %9, ptr %1, align 4, !tbaa !95
  %10 = load i32, ptr %5, align 4, !tbaa !68
  %11 = sitofp i32 %10 to float
  %12 = load float, ptr %2, align 4, !tbaa !95
  %13 = fmul float %12, %11
  store float %13, ptr %2, align 4, !tbaa !95
  %14 = load float, ptr %1, align 4, !tbaa !95
  %15 = fcmp olt float %14, %13
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = fdiv float %13, %14
  store float %17, ptr %2, align 4, !tbaa !95
  br label %20

18:                                               ; preds = %3
  %19 = fdiv float %14, %13
  store float %19, ptr %1, align 4, !tbaa !95
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %2, %18 ], [ %1, %16 ]
  store float 1.000000e+00, ptr %21, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_get_uv_aspect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  tail call void @BKE_image_get_aspect(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #6
  call void @BKE_image_get_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %9 = load i32, ptr %5, align 4, !tbaa !68
  %10 = sitofp i32 %9 to float
  %11 = load float, ptr %2, align 4, !tbaa !95
  %12 = fmul float %11, %10
  store float %12, ptr %2, align 4, !tbaa !95
  %13 = load i32, ptr %6, align 4, !tbaa !68
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %3, align 4, !tbaa !95
  %16 = fmul float %15, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %18

17:                                               ; preds = %4
  store float 1.000000e+00, ptr %2, align 4, !tbaa !95
  br label %18

18:                                               ; preds = %17, %8
  %19 = phi float [ 1.000000e+00, %17 ], [ %16, %8 ]
  store float %19, ptr %3, align 4
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_mouse_pos(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @ED_space_image_get_zoom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %11, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %12 = load i32, ptr %5, align 4, !tbaa !68
  %13 = load float, ptr %9, align 4, !tbaa !95
  %14 = load i32, ptr %7, align 4, !tbaa !68
  %15 = load i32, ptr %6, align 4, !tbaa !68
  %16 = load float, ptr %10, align 4, !tbaa !95
  %17 = load i32, ptr %8, align 4, !tbaa !68
  %18 = load <2 x i32>, ptr %2, align 4, !tbaa !68
  %19 = insertelement <2 x i32> poison, i32 %12, i64 0
  %20 = insertelement <2 x i32> %19, i32 %15, i64 1
  %21 = sub nsw <2 x i32> %18, %20
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = insertelement <2 x float> poison, float %13, i64 0
  %24 = insertelement <2 x float> %23, float %16, i64 1
  %25 = fdiv <2 x float> %22, %24
  %26 = insertelement <2 x i32> poison, i32 %14, i64 0
  %27 = insertelement <2 x i32> %26, i32 %17, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x float>
  %29 = fdiv <2 x float> %25, %28
  store <2 x float> %29, ptr %3, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_point_pos(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  call void @ED_space_image_get_zoom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %13, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %14 = load i32, ptr %7, align 4, !tbaa !68
  %15 = sitofp i32 %14 to float
  %16 = fsub float %2, %15
  %17 = load float, ptr %11, align 4, !tbaa !95
  %18 = fdiv float %16, %17
  %19 = load i32, ptr %9, align 4, !tbaa !68
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %18, %20
  store float %21, ptr %4, align 4, !tbaa !95
  %22 = load i32, ptr %8, align 4, !tbaa !68
  %23 = sitofp i32 %22 to float
  %24 = fsub float %3, %23
  %25 = load float, ptr %12, align 4, !tbaa !95
  %26 = fdiv float %24, %25
  %27 = load i32, ptr %10, align 4, !tbaa !68
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  store float %29, ptr %5, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_image_point_pos__reverse(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %11, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  call void @ED_space_image_get_zoom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %12 = load float, ptr %2, align 4, !tbaa !95
  %13 = load i32, ptr %7, align 4, !tbaa !68
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = load float, ptr %5, align 4, !tbaa !95
  %17 = load i32, ptr %9, align 4, !tbaa !68
  %18 = sitofp i32 %17 to float
  %19 = call float @llvm.fmuladd.f32(float %15, float %16, float %18)
  store float %19, ptr %3, align 4, !tbaa !95
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !95
  %22 = load i32, ptr %8, align 4, !tbaa !68
  %23 = sitofp i32 %22 to float
  %24 = fmul float %21, %23
  %25 = load float, ptr %6, align 4, !tbaa !95
  %26 = load i32, ptr %10, align 4, !tbaa !68
  %27 = sitofp i32 %26 to float
  %28 = call float @llvm.fmuladd.f32(float %24, float %25, float %27)
  %29 = getelementptr inbounds float, ptr %3, i64 1
  store float %28, ptr %29, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_space_image_show_render(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !49
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp eq i16 %7, 5
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %5, %9, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %5 ], [ %11, %9 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_space_image_show_paint(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef %0) #8, !range !104
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 17
  %6 = load i8, ptr %5, align 4, !tbaa !53
  %7 = icmp eq i8 %6, 1
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_space_image_show_uvedit(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef nonnull %0) #8, !range !104
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @ED_space_image_show_paint(ptr noundef nonnull %0) #8, !range !104
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %21, label %14

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7, %12
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !105
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %1) #6
  %20 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %19) #6
  br label %21

21:                                               ; preds = %12, %14, %4, %7, %18
  %22 = phi i8 [ %20, %18 ], [ 0, %7 ], [ 0, %4 ], [ 0, %14 ], [ 0, %12 ]
  ret i8 %22
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_space_image_check_show_maskedit(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %1, ptr noundef nonnull %8) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2, %15, %10, %6
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 17
  %20 = load i8, ptr %19, align 4, !tbaa !53
  %21 = icmp eq i8 %20, 2
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %15, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %15 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_image_maskedit_poll(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = tail call zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef %5, ptr noundef nonnull %2) #8, !range !104
  %7 = zext nneg i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_space_image_paint_curve(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %2, i64 0, i32 17
  %6 = load i8, ptr %5, align 4, !tbaa !53
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !117
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %8
  br label %18

18:                                               ; preds = %1, %4, %17, %13
  %19 = phi i8 [ 1, %13 ], [ 0, %17 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %19
}

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_space_image_maskedit_mask_poll(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @ED_space_image_maskedit_poll(ptr noundef %0) #8, !range !121
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !41, i64 48, !36, i64 88, !43, i64 96, !45, i64 5360, !36, i64 10520, !37, i64 10528, !44, i64 10536, !44, i64 10540, !44, i64 10544, !44, i64 10548, !44, i64 10552, !37, i64 10556, !37, i64 10557, !42, i64 10558, !42, i64 10560, !42, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !46, i64 10568}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !40, i64 36}
!42 = !{!"short", !37, i64 0}
!43 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !44, i64 12, !40, i64 16, !44, i64 20, !44, i64 24, !40, i64 28, !44, i64 32, !40, i64 36, !37, i64 40, !45, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!44 = !{!"float", !37, i64 0}
!45 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !44, i64 5128, !44, i64 5132, !42, i64 5136, !42, i64 5138, !40, i64 5140, !37, i64 5144}
!46 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!47 = !{!48, !36, i64 0}
!48 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!49 = !{!50, !42, i64 1250}
!50 = !{!"Image", !51, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !42, i64 1240, !42, i64 1242, !42, i64 1244, !42, i64 1246, !42, i64 1248, !42, i64 1250, !40, i64 1252, !42, i64 1256, !42, i64 1258, !42, i64 1260, !42, i64 1262, !42, i64 1264, !42, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !44, i64 1296, !40, i64 1300, !42, i64 1304, !42, i64 1306, !40, i64 1308, !40, i64 1312, !37, i64 1316, !37, i64 1317, !42, i64 1318, !37, i64 1320, !44, i64 1336, !44, i64 1340, !52, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!52 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!53 = !{!35, !37, i64 10556}
!54 = !{!55, !36, i64 296}
!55 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !56, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !44, i64 616, !44, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !44, i64 1048, !44, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !44, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !44, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !57, i64 1304, !57, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!56 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!57 = !{!"long", !37, i64 0}
!58 = !{!35, !36, i64 10568}
!59 = !{!60, !36, i64 40}
!60 = !{!"ImBuf", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !44, i64 112, !37, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !36, i64 296, !36, i64 304, !40, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !40, i64 2376, !36, i64 2384, !40, i64 2392, !40, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !40, i64 2432, !61, i64 2436, !62, i64 2456}
!61 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!62 = !{!"DDSData", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16}
!63 = !{!60, !36, i64 48}
!64 = !{!36, !36, i64 0}
!65 = !{!35, !36, i64 48}
!66 = !{!60, !40, i64 16}
!67 = !{!60, !40, i64 20}
!68 = !{!40, !40, i64 0}
!69 = !{!70, !40, i64 764}
!70 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !71, i64 280, !79, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !39, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !36, i64 4608, !85, i64 4616, !36, i64 4640, !57, i64 4648, !57, i64 4656, !73, i64 4664, !74, i64 4824, !52, i64 4888, !36, i64 4952}
!71 = !{!"RenderData", !72, i64 0, !36, i64 248, !36, i64 256, !75, i64 264, !76, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !44, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !77, i64 544, !77, i64 560, !61, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !40, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !44, i64 660, !44, i64 664, !42, i64 668, !42, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !44, i64 2528, !44, i64 2532, !42, i64 2536, !42, i64 2538, !44, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !40, i64 2576, !44, i64 2580, !37, i64 2584, !78, i64 2616, !40, i64 3976, !40, i64 3980}
!72 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!75 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!76 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !44, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!77 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!78 = !{!"BakeData", !72, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!79 = !{!"AudioData", !40, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !44, i64 24, !44, i64 28}
!80 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!81 = !{!"GameData", !80, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !82, i64 40, !42, i64 64, !42, i64 66, !44, i64 68, !83, i64 72, !44, i64 128, !44, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!82 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !44, i64 8, !44, i64 12, !36, i64 16}
!83 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !40, i64 40, !44, i64 44, !44, i64 48, !42, i64 52, !42, i64 54}
!84 = !{!"UnitSettings", !44, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!85 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!86 = !{!70, !42, i64 758}
!87 = !{!70, !40, i64 768}
!88 = !{!70, !40, i64 800}
!89 = !{!"image_edit.c:BLI_rctf_size_x"}
!90 = !{!77, !44, i64 4}
!91 = !{!77, !44, i64 0}
!92 = !{!"image_edit.c:BLI_rctf_size_y"}
!93 = !{!77, !44, i64 12}
!94 = !{!77, !44, i64 8}
!95 = !{!44, !44, i64 0}
!96 = !{!50, !44, i64 1336}
!97 = !{!50, !44, i64 1340}
!98 = !{!"image_edit.c:BLI_rcti_size_x"}
!99 = !{!61, !40, i64 4}
!100 = !{!61, !40, i64 0}
!101 = !{!"image_edit.c:BLI_rcti_size_y"}
!102 = !{!61, !40, i64 12}
!103 = !{!61, !40, i64 8}
!104 = !{i8 0, i8 2}
!105 = !{!55, !42, i64 136}
!106 = !{!70, !36, i64 168}
!107 = !{!108, !36, i64 32}
!108 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!109 = !{!55, !40, i64 432}
!110 = !{!111, !36, i64 64}
!111 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !42, i64 44, !42, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !44, i64 52, !42, i64 56, !37, i64 58, !37, i64 59, !112, i64 64, !114, i64 168, !44, i64 336, !44, i64 340, !42, i64 344, !42, i64 346, !37, i64 348, !37, i64 349, !42, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !42, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !42, i64 464, !42, i64 466, !40, i64 468, !44, i64 472, !44, i64 476, !115, i64 480, !116, i64 608}
!112 = !{!"ImagePaintSettings", !113, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !37, i64 48, !40, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !44, i64 100}
!113 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!114 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !37, i64 8, !36, i64 120, !44, i64 128, !44, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !36, i64 160}
!115 = !{!"UnifiedPaintSettings", !40, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16, !37, i64 28, !40, i64 40, !37, i64 44, !44, i64 52, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 65, !44, i64 72, !37, i64 76, !40, i64 84, !44, i64 88, !37, i64 92, !37, i64 100, !40, i64 108, !36, i64 112, !44, i64 120, !40, i64 124}
!116 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !37, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!117 = !{!118, !40, i64 1856}
!118 = !{!"Brush", !51, i64 0, !119, i64 120, !36, i64 144, !120, i64 152, !120, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !44, i64 1840, !42, i64 1844, !42, i64 1846, !44, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !44, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !44, i64 1884, !44, i64 1888, !37, i64 1892, !44, i64 1904, !37, i64 1908, !40, i64 1920, !44, i64 1924, !44, i64 1928, !40, i64 1932, !40, i64 1936, !40, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !40, i64 1968, !40, i64 1972, !40, i64 1976, !44, i64 1980, !44, i64 1984, !40, i64 1988, !40, i64 1992, !44, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!119 = !{!"BrushClone", !36, i64 0, !37, i64 8, !44, i64 16, !44, i64 20}
!120 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !44, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !37, i64 132, !37, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!121 = !{i32 0, i32 2}
