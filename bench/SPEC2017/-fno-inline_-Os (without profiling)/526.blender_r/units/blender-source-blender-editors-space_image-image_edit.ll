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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @G, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void @ED_uvedit_assign_image(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %7) #6
  store ptr %3, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %3, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !20
  %12 = and i16 %11, -2
  %13 = icmp eq i16 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 17
  %16 = load i8, ptr %15, align 4, !tbaa !24
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8 0, ptr %15, align 4, !tbaa !24
  br label %19

19:                                               ; preds = %14, %18
  br i1 %8, label %23, label %20

20:                                               ; preds = %9, %19
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 6
  tail call void @BKE_image_signal(ptr noundef nonnull %3, ptr noundef nonnull %21, i32 noundef 6) #6
  %22 = load ptr, ptr %6, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %22, %20 ], [ null, %19 ]
  tail call void @id_us_ensure_real(ptr noundef %24) #6
  %25 = icmp eq ptr %2, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !25
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
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_set_mask(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 26
  store ptr %2, ptr %4, align 8, !tbaa !29
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
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 6
  %10 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %1) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @BKE_image_release_ibuf(ptr noundef %21, ptr noundef nonnull %10, ptr noundef null) #6
  br label %23

22:                                               ; preds = %4, %2
  store ptr null, ptr %1, align 8, !tbaa !35
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
  %7 = load ptr, ptr %6, align 8, !tbaa !5
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
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  call void @ED_space_image_release_buffer(ptr noundef %0, ptr noundef %3, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_size(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = call ptr @ED_space_image_acquire_buffer(ptr noundef %0, ptr noundef nonnull %4) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !37
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  store i32 %11, ptr %1, align 4, !tbaa !39
  %18 = load i32, ptr %14, align 4, !tbaa !38
  br label %58

19:                                               ; preds = %13, %9, %3
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 12
  %25 = load i16, ptr %24, align 2, !tbaa !20
  %26 = icmp eq i16 %25, 4
  %27 = icmp ne ptr %6, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %31 = load i32, ptr %30, align 4, !tbaa !40
  %32 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 30
  %33 = load i16, ptr %32, align 2, !tbaa !57
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %31, %34
  %36 = sdiv i32 %35, 100
  store i32 %36, ptr %1, align 4, !tbaa !39
  %37 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 34
  %38 = load i32, ptr %37, align 8, !tbaa !58
  %39 = mul nsw i32 %38, %34
  %40 = sdiv i32 %39, 100
  store i32 %40, ptr %2, align 4, !tbaa !39
  %41 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 47
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = and i32 %42, 2560
  %44 = icmp eq i32 %43, 2560
  br i1 %44, label %45, label %60

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 58
  %47 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %46) #8
  %48 = load i32, ptr %1, align 4, !tbaa !39
  %49 = sitofp i32 %48 to float
  %50 = fmul float %47, %49
  %51 = fptosi float %50 to i32
  store i32 %51, ptr %1, align 4, !tbaa !39
  %52 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %46) #8
  %53 = load i32, ptr %2, align 4, !tbaa !39
  %54 = sitofp i32 %53 to float
  %55 = fmul float %52, %54
  %56 = fptosi float %55 to i32
  br label %58

57:                                               ; preds = %23, %19
  store i32 256, ptr %1, align 4, !tbaa !39
  br label %58

58:                                               ; preds = %17, %45, %57
  %59 = phi i32 [ 256, %57 ], [ %56, %45 ], [ %18, %17 ]
  store i32 %59, ptr %2, align 4, !tbaa !39
  br label %60

60:                                               ; preds = %58, %29
  %61 = load ptr, ptr %4, align 8, !tbaa !35
  call void @ED_space_image_release_buffer(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %61) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !60
  %4 = load float, ptr %0, align 4, !tbaa !61
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !62
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !63
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_size_fl(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %5 = load <2 x i32>, ptr %3, align 8, !tbaa !39
  %6 = sitofp <2 x i32> %5 to <2 x float>
  store <2 x float> %6, ptr %1, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_get_aspect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 34
  %9 = load float, ptr %8, align 8, !tbaa !65
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 35
  %13 = load float, ptr %12, align 4, !tbaa !66
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !64
  store float 1.000000e+00, ptr %1, align 4, !tbaa !64
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
  %13 = load i32, ptr %5, align 4, !tbaa !39
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = fdiv float %10, %15
  store float %16, ptr %2, align 4, !tbaa !64
  %17 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #8
  %18 = add nsw i32 %17, 1
  %19 = sitofp i32 %18 to float
  %20 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %11) #8
  %21 = load i32, ptr %6, align 4, !tbaa !39
  %22 = sitofp i32 %21 to float
  %23 = fmul float %20, %22
  %24 = fdiv float %19, %23
  store float %24, ptr %3, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = load i32, ptr %0, align 4, !tbaa !68
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !69
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !70
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
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = sitofp i32 %6 to float
  %8 = load float, ptr %1, align 4, !tbaa !64
  %9 = fmul float %8, %7
  store float %9, ptr %1, align 4, !tbaa !64
  %10 = load i32, ptr %5, align 4, !tbaa !39
  %11 = sitofp i32 %10 to float
  %12 = load float, ptr %2, align 4, !tbaa !64
  %13 = fmul float %12, %11
  store float %13, ptr %2, align 4, !tbaa !64
  %14 = load float, ptr %1, align 4, !tbaa !64
  %15 = fcmp olt float %14, %13
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = fdiv float %13, %14
  store float %17, ptr %2, align 4, !tbaa !64
  br label %20

18:                                               ; preds = %3
  %19 = fdiv float %14, %13
  store float %19, ptr %1, align 4, !tbaa !64
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %2, %18 ], [ %1, %16 ]
  store float 1.000000e+00, ptr %21, align 4, !tbaa !64
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
  %9 = load i32, ptr %5, align 4, !tbaa !39
  %10 = sitofp i32 %9 to float
  %11 = load float, ptr %2, align 4, !tbaa !64
  %12 = fmul float %11, %10
  store float %12, ptr %2, align 4, !tbaa !64
  %13 = load i32, ptr %6, align 4, !tbaa !39
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %3, align 4, !tbaa !64
  %16 = fmul float %15, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %18

17:                                               ; preds = %4
  store float 1.000000e+00, ptr %2, align 4, !tbaa !64
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
  %12 = load i32, ptr %5, align 4, !tbaa !39
  %13 = load float, ptr %9, align 4, !tbaa !64
  %14 = load i32, ptr %7, align 4, !tbaa !39
  %15 = load i32, ptr %6, align 4, !tbaa !39
  %16 = load float, ptr %10, align 4, !tbaa !64
  %17 = load i32, ptr %8, align 4, !tbaa !39
  %18 = load <2 x i32>, ptr %2, align 4, !tbaa !39
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
  store <2 x float> %29, ptr %3, align 4, !tbaa !64
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
  %14 = load i32, ptr %7, align 4, !tbaa !39
  %15 = sitofp i32 %14 to float
  %16 = fsub float %2, %15
  %17 = load float, ptr %11, align 4, !tbaa !64
  %18 = fdiv float %16, %17
  %19 = load i32, ptr %9, align 4, !tbaa !39
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %18, %20
  store float %21, ptr %4, align 4, !tbaa !64
  %22 = load i32, ptr %8, align 4, !tbaa !39
  %23 = sitofp i32 %22 to float
  %24 = fsub float %3, %23
  %25 = load float, ptr %12, align 4, !tbaa !64
  %26 = fdiv float %24, %25
  %27 = load i32, ptr %10, align 4, !tbaa !39
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  store float %29, ptr %5, align 4, !tbaa !64
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
  %12 = load float, ptr %2, align 4, !tbaa !64
  %13 = load i32, ptr %7, align 4, !tbaa !39
  %14 = sitofp i32 %13 to float
  %15 = fmul float %12, %14
  %16 = load float, ptr %5, align 4, !tbaa !64
  %17 = load i32, ptr %9, align 4, !tbaa !39
  %18 = sitofp i32 %17 to float
  %19 = call float @llvm.fmuladd.f32(float %15, float %16, float %18)
  store float %19, ptr %3, align 4, !tbaa !64
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !64
  %22 = load i32, ptr %8, align 4, !tbaa !39
  %23 = sitofp i32 %22 to float
  %24 = fmul float %21, %23
  %25 = load float, ptr %6, align 4, !tbaa !64
  %26 = load i32, ptr %10, align 4, !tbaa !39
  %27 = sitofp i32 %26 to float
  %28 = call float @llvm.fmuladd.f32(float %24, float %25, float %27)
  %29 = getelementptr inbounds float, ptr %3, i64 1
  store float %28, ptr %29, align 4, !tbaa !64
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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !20
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
  %2 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef %0) #8, !range !71
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 17
  %6 = load i8, ptr %5, align 4, !tbaa !24
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
  %5 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef nonnull %0) #8, !range !71
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @ED_space_image_show_paint(ptr noundef nonnull %0) #8, !range !71
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %21, label %14

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7, %12
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !72
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
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %1, ptr noundef nonnull %8) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2, %15, %10, %6
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 17
  %20 = load i8, ptr %19, align 4, !tbaa !24
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
  %6 = tail call zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef %5, ptr noundef nonnull %2) #8, !range !71
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
  %6 = load i8, ptr %5, align 4, !tbaa !24
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !84
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
  %2 = tail call i32 @ED_space_image_maskedit_poll(ptr noundef %0) #8, !range !88
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !29
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 40}
!6 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !11, i64 36, !7, i64 40, !12, i64 48, !7, i64 88, !14, i64 96, !16, i64 5360, !7, i64 10520, !8, i64 10528, !15, i64 10536, !15, i64 10540, !15, i64 10544, !15, i64 10548, !15, i64 10552, !8, i64 10556, !8, i64 10557, !13, i64 10558, !13, i64 10560, !13, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !17, i64 10568}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"ImageUser", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !13, i64 28, !13, i64 30, !13, i64 32, !13, i64 34, !11, i64 36}
!13 = !{!"short", !8, i64 0}
!14 = !{!"Scopes", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 12, !11, i64 16, !15, i64 20, !15, i64 24, !11, i64 28, !15, i64 32, !11, i64 36, !8, i64 40, !16, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !11, i64 5256, !11, i64 5260}
!15 = !{!"float", !8, i64 0}
!16 = !{!"Histogram", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !15, i64 5128, !15, i64 5132, !13, i64 5136, !13, i64 5138, !11, i64 5140, !8, i64 5144}
!17 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!18 = !{!19, !7, i64 0}
!19 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !13, i64 2084, !13, i64 2086, !13, i64 2088, !8, i64 2090, !13, i64 2092, !11, i64 2096, !11, i64 2100, !8, i64 2104, !11, i64 2108, !11, i64 2112, !8, i64 2116}
!20 = !{!21, !13, i64 1250}
!21 = !{!"Image", !22, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !8, i64 1176, !13, i64 1240, !13, i64 1242, !13, i64 1244, !13, i64 1246, !13, i64 1248, !13, i64 1250, !11, i64 1252, !13, i64 1256, !13, i64 1258, !13, i64 1260, !13, i64 1262, !13, i64 1264, !13, i64 1266, !11, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !15, i64 1296, !11, i64 1300, !13, i64 1304, !13, i64 1306, !11, i64 1308, !11, i64 1312, !8, i64 1316, !8, i64 1317, !13, i64 1318, !8, i64 1320, !15, i64 1336, !15, i64 1340, !23, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!22 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!23 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!24 = !{!6, !8, i64 10556}
!25 = !{!26, !7, i64 296}
!26 = !{!"Object", !22, i64 0, !7, i64 120, !7, i64 128, !13, i64 136, !13, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !27, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !15, i64 616, !15, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !8, i64 1042, !8, i64 1043, !13, i64 1044, !8, i64 1046, !8, i64 1047, !15, i64 1048, !15, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !15, i64 1120, !13, i64 1124, !13, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !13, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !13, i64 1266, !15, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !28, i64 1304, !28, i64 1312, !11, i64 1320, !11, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!27 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!28 = !{!"long", !8, i64 0}
!29 = !{!6, !7, i64 10568}
!30 = !{!31, !7, i64 40}
!31 = !{!"ImBuf", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112, !8, i64 120, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !7, i64 296, !7, i64 304, !11, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !11, i64 2376, !7, i64 2384, !11, i64 2392, !11, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !11, i64 2432, !32, i64 2436, !33, i64 2456}
!32 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!33 = !{!"DDSData", !11, i64 0, !11, i64 4, !7, i64 8, !11, i64 16}
!34 = !{!31, !7, i64 48}
!35 = !{!7, !7, i64 0}
!36 = !{!6, !7, i64 48}
!37 = !{!31, !11, i64 16}
!38 = !{!31, !11, i64 20}
!39 = !{!11, !11, i64 0}
!40 = !{!41, !11, i64 764}
!41 = !{!"Scene", !22, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !13, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !42, i64 280, !50, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !13, i64 4376, !13, i64 4378, !11, i64 4380, !10, i64 4384, !51, i64 4400, !52, i64 4416, !55, i64 4600, !7, i64 4608, !56, i64 4616, !7, i64 4640, !28, i64 4648, !28, i64 4656, !44, i64 4664, !45, i64 4824, !23, i64 4888, !7, i64 4952}
!42 = !{!"RenderData", !43, i64 0, !7, i64 248, !7, i64 256, !46, i64 264, !47, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !15, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !13, i64 432, !13, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !11, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !11, i64 484, !11, i64 488, !13, i64 492, !13, i64 494, !11, i64 496, !11, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !48, i64 544, !48, i64 560, !32, i64 576, !10, i64 592, !13, i64 608, !13, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !11, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !15, i64 660, !15, i64 664, !13, i64 668, !13, i64 670, !15, i64 672, !15, i64 676, !8, i64 680, !11, i64 1704, !13, i64 1708, !13, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !13, i64 2524, !13, i64 2526, !15, i64 2528, !15, i64 2532, !13, i64 2536, !13, i64 2538, !15, i64 2540, !13, i64 2544, !13, i64 2546, !11, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !15, i64 2560, !15, i64 2564, !7, i64 2568, !11, i64 2576, !15, i64 2580, !8, i64 2584, !49, i64 2616, !11, i64 3976, !11, i64 3980}
!43 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !13, i64 10, !15, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !44, i64 24, !45, i64 184}
!44 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !15, i64 136, !15, i64 140, !7, i64 144, !7, i64 152}
!45 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!46 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !13, i64 48, !13, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!47 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !15, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!48 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!49 = !{!"BakeData", !43, i64 0, !8, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !15, i64 1280, !15, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!50 = !{!"AudioData", !11, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !11, i64 16, !13, i64 20, !13, i64 22, !15, i64 24, !15, i64 28}
!51 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!52 = !{!"GameData", !51, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !8, i64 34, !53, i64 40, !13, i64 64, !13, i64 66, !15, i64 68, !54, i64 72, !15, i64 128, !15, i64 132, !11, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!53 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !15, i64 8, !15, i64 12, !7, i64 16}
!54 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !11, i64 40, !15, i64 44, !15, i64 48, !13, i64 52, !13, i64 54}
!55 = !{!"UnitSettings", !15, i64 0, !8, i64 4, !8, i64 5, !13, i64 6}
!56 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!57 = !{!41, !13, i64 758}
!58 = !{!41, !11, i64 768}
!59 = !{!41, !11, i64 800}
!60 = !{!48, !15, i64 4}
!61 = !{!48, !15, i64 0}
!62 = !{!48, !15, i64 12}
!63 = !{!48, !15, i64 8}
!64 = !{!15, !15, i64 0}
!65 = !{!21, !15, i64 1336}
!66 = !{!21, !15, i64 1340}
!67 = !{!32, !11, i64 4}
!68 = !{!32, !11, i64 0}
!69 = !{!32, !11, i64 12}
!70 = !{!32, !11, i64 8}
!71 = !{i8 0, i8 2}
!72 = !{!26, !13, i64 136}
!73 = !{!41, !7, i64 168}
!74 = !{!75, !7, i64 32}
!75 = !{!"Base", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 28, !13, i64 30, !7, i64 32}
!76 = !{!26, !11, i64 432}
!77 = !{!78, !7, i64 64}
!78 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !13, i64 44, !13, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !15, i64 52, !13, i64 56, !8, i64 58, !8, i64 59, !79, i64 64, !81, i64 168, !15, i64 336, !15, i64 340, !13, i64 344, !13, i64 346, !8, i64 348, !8, i64 349, !13, i64 350, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !13, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !13, i64 434, !13, i64 436, !13, i64 438, !13, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !11, i64 448, !11, i64 452, !11, i64 456, !11, i64 460, !13, i64 464, !13, i64 466, !11, i64 468, !15, i64 472, !15, i64 476, !82, i64 480, !83, i64 608}
!79 = !{!"ImagePaintSettings", !80, i64 0, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !8, i64 48, !11, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !15, i64 100}
!80 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!81 = !{!"ParticleEditSettings", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !8, i64 8, !7, i64 120, !15, i64 128, !15, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !7, i64 152, !7, i64 160}
!82 = !{!"UnifiedPaintSettings", !11, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !8, i64 16, !8, i64 28, !11, i64 40, !8, i64 44, !15, i64 52, !11, i64 56, !11, i64 60, !8, i64 64, !8, i64 65, !15, i64 72, !8, i64 76, !11, i64 84, !15, i64 88, !8, i64 92, !8, i64 100, !11, i64 108, !7, i64 112, !15, i64 120, !11, i64 124}
!83 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !8, i64 20, !8, i64 21, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!84 = !{!85, !11, i64 1856}
!85 = !{!"Brush", !22, i64 0, !86, i64 120, !7, i64 144, !87, i64 152, !87, i64 464, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !8, i64 816, !15, i64 1840, !13, i64 1844, !13, i64 1846, !15, i64 1848, !11, i64 1852, !11, i64 1856, !11, i64 1860, !15, i64 1864, !11, i64 1868, !11, i64 1872, !11, i64 1876, !11, i64 1880, !15, i64 1884, !15, i64 1888, !8, i64 1892, !15, i64 1904, !8, i64 1908, !11, i64 1920, !15, i64 1924, !15, i64 1928, !11, i64 1932, !11, i64 1936, !11, i64 1940, !8, i64 1944, !8, i64 1945, !8, i64 1946, !8, i64 1947, !15, i64 1948, !15, i64 1952, !15, i64 1956, !15, i64 1960, !15, i64 1964, !11, i64 1968, !11, i64 1972, !11, i64 1976, !15, i64 1980, !15, i64 1984, !11, i64 1988, !11, i64 1992, !15, i64 1996, !8, i64 2000, !8, i64 2012, !8, i64 2024, !8, i64 2032, !8, i64 2040, !8, i64 2048}
!86 = !{!"BrushClone", !7, i64 0, !8, i64 8, !15, i64 16, !15, i64 20}
!87 = !{!"MTex", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !15, i64 116, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !13, i64 130, !8, i64 132, !8, i64 133, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308}
!88 = !{i32 0, i32 2}
