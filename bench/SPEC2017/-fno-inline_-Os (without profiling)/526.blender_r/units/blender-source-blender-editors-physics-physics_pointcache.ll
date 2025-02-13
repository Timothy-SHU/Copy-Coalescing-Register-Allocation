; ModuleID = 'blender/source/blender/editors/physics/physics_pointcache.c'
source_filename = "blender/source/blender/editors/physics/physics_pointcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PTCacheBaker = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"Bake All Physics\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Bake all physics\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PTCACHE_OT_bake_all\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bake\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Bake\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Free All Physics Bakes\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"PTCACHE_OT_free_bake_all\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Free all baked caches of all objects in the current scene\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Bake Physics\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Bake physics\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"PTCACHE_OT_bake\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Free Physics Bake\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Free physics bake\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"PTCACHE_OT_free_bake\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Bake From Cache\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Bake from cache\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"PTCACHE_OT_bake_from_cache\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Add New Cache\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Add new cache\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"PTCACHE_OT_add\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Delete Current Cache\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Delete current cache\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"PTCACHE_OT_remove\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.24 = private unnamed_addr constant [13 x i8] c"\0Dbake: %3i%%\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"point_cache\00", align 1
@RNA_PointCache = external global %struct.StructRNA, align 1
@str = private unnamed_addr constant [13 x i8] c"\0Dbake: done!\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PTCACHE_OT_bake_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_bake_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_bake_all_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_bake_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PTCacheBaker, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  store ptr %4, ptr %3, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 1
  store ptr %5, ptr %12, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.3) #8
  %17 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 3
  store i32 0, ptr %18, align 4, !tbaa !29
  %19 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 4
  store i32 0, ptr %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 5
  store i32 1, ptr %20, align 4, !tbaa !31
  %21 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 7
  store ptr @cache_break_test, ptr %21, align 8, !tbaa !32
  %22 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 8
  store ptr null, ptr %22, align 8, !tbaa !33
  %23 = icmp eq ptr %11, null
  %24 = select i1 %23, ptr @bake_console_progress, ptr @WM_cursor_time
  %25 = select i1 %23, ptr @bake_console_progress_end, ptr @WM_cursor_modal_restore
  %26 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 9
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 10
  store ptr %25, ptr %27, align 8
  %28 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 11
  store ptr %11, ptr %28, align 8
  call void @BKE_ptcache_bake(ptr noundef nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %5) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ptcache_bake_all_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PTCACHE_OT_free_bake_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_free_bake_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_bake_all_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_free_bake_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2, %20
  %9 = phi ptr [ %22, %20 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %11, ptr noundef %4, i32 noundef 8) #8
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %15, i64 0, i32 25
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  call fastcc void @ptcache_free_bake(ptr noundef %17) #10
  %18 = load ptr, ptr %15, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !39

20:                                               ; preds = %14, %8
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  %21 = load ptr, ptr %10, align 8, !tbaa !35
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef %21) #8
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !41

24:                                               ; preds = %20, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PTCACHE_OT_bake(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_bake_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PTCacheBaker, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @RNA_PointCache) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %5, ptr noundef %14, ptr noundef %7, i32 noundef 8) #8
  br label %17

17:                                               ; preds = %21, %12
  %18 = phi ptr [ %5, %12 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %19, i64 0, i32 25
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = icmp eq ptr %23, %16
  br i1 %24, label %25, label %17, !llvm.loop !46

25:                                               ; preds = %21, %17
  store ptr %6, ptr %4, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 1
  store ptr %7, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 6
  store ptr %19, ptr %27, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.3) #8
  %31 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 3
  store i32 0, ptr %32, align 4, !tbaa !29
  %33 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 4
  store i32 0, ptr %33, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 5
  store i32 1, ptr %34, align 4, !tbaa !31
  %35 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 7
  store ptr @cache_break_test, ptr %35, align 8, !tbaa !32
  %36 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 8
  store ptr null, ptr %36, align 8, !tbaa !33
  %37 = icmp eq ptr %13, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = call i32 @putchar(i32 10)
  br label %40

40:                                               ; preds = %25, %38
  %41 = phi ptr [ @bake_console_progress, %38 ], [ @WM_cursor_time, %25 ]
  %42 = phi ptr [ @bake_console_progress_end, %38 ], [ @WM_cursor_modal_restore, %25 ]
  %43 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 9
  store ptr %41, ptr %43, align 8
  %44 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 10
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %struct.PTCacheBaker, ptr %4, i64 0, i32 11
  store ptr %13, ptr %45, align 8
  call void @BKE_ptcache_bake(ptr noundef nonnull %4) #8
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %7) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef %14) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ptcache_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @RNA_PointCache) #8
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne ptr %4, null
  %6 = load ptr, ptr %2, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  %9 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PTCACHE_OT_free_bake(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_free_bake_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_free_bake_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @RNA_PointCache) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  call fastcc void @ptcache_free_bake(ptr noundef %5) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PTCACHE_OT_bake_from_cache(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_bake_from_cache_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_bake_from_cache_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @RNA_PointCache) #8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = or i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !47
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PTCACHE_OT_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_add_new_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_add_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @RNA_PointCache) #8
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %5, i32 noundef 8) #8
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %4, %2 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !49

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = call ptr @BKE_ptcache_add(ptr noundef %19) #8
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 3
  store i32 %22, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  store ptr %20, ptr %25, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %9, %17
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %5) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PTCACHE_OT_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ptcache_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ptcache_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @RNA_PointCache) #8
  %5 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %5, i32 noundef 8) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %2, %31
  %12 = phi ptr [ %32, %31 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %12, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %12, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.ListBase, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %12, i64 0, i32 25
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %12, i64 0, i32 27
  call void @BLI_remlink(ptr noundef nonnull %18, ptr noundef %8) #8
  %26 = load ptr, ptr %24, align 8, !tbaa !37
  call void @BKE_ptcache_free(ptr noundef %26) #8
  %27 = load ptr, ptr %25, align 8, !tbaa !50
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %12, i64 0, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  store ptr %28, ptr %30, align 8, !tbaa !34
  br label %34

31:                                               ; preds = %11, %16
  %32 = load ptr, ptr %12, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %11, !llvm.loop !56

34:                                               ; preds = %31, %2, %23
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @cache_break_test(ptr nocapture readnone %0) #4 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !57
  %3 = icmp eq i8 %2, 1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @WM_cursor_time(ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @bake_console_progress(ptr nocapture readnone %0, i32 noundef %1) #5 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %1) #10
  %4 = load ptr, ptr @stdout, align 8, !tbaa !34
  %5 = tail call i32 @fflush(ptr noundef %4) #10
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @bake_console_progress_end(ptr nocapture readnone %0) #5 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_bake(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_free_bake(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @PE_free_ptcache_edit(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = and i32 %8, -2
  store i32 %9, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PE_free_ptcache_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_ptcache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !8, i64 2081}
!20 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !21, i64 2096, !21, i64 2100, !8, i64 2104, !21, i64 2108, !21, i64 2112, !8, i64 2116}
!21 = !{!"int", !8, i64 0}
!22 = !{!23, !7, i64 0}
!23 = !{!"PTCacheBaker", !7, i64 0, !7, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!24 = !{!23, !7, i64 8}
!25 = !{!23, !7, i64 32}
!26 = !{!27, !7, i64 112}
!27 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!28 = !{!23, !21, i64 16}
!29 = !{!23, !21, i64 20}
!30 = !{!23, !21, i64 24}
!31 = !{!23, !21, i64 28}
!32 = !{!23, !7, i64 40}
!33 = !{!23, !7, i64 48}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !7, i64 32}
!36 = !{!"Base", !7, i64 0, !7, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!37 = !{!38, !7, i64 176}
!38 = !{!"PTCacheID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !21, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!43, !7, i64 0}
!43 = !{!"PointerRNA", !44, i64 0, !7, i64 8, !7, i64 16}
!44 = !{!"", !7, i64 0}
!45 = !{!43, !7, i64 16}
!46 = distinct !{!46, !40}
!47 = !{!48, !21, i64 16}
!48 = !{!"PointCache", !7, i64 0, !7, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !12, i64 60, !12, i64 62, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !7, i64 1280, !10, i64 1288, !7, i64 1304, !7, i64 1312}
!49 = distinct !{!49, !40}
!50 = !{!38, !7, i64 192}
!51 = !{!38, !21, i64 52}
!52 = !{!48, !21, i64 20}
!53 = !{!38, !7, i64 184}
!54 = !{!10, !7, i64 0}
!55 = !{!10, !7, i64 8}
!56 = distinct !{!56, !40}
!57 = !{!20, !8, i64 2080}
!58 = !{!48, !7, i64 1304}
