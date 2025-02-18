; ModuleID = 'blender/source/blender/blenkernel/intern/sequencer.c'
source_filename = "blender/source/blender/blenkernel/intern/sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.StripProxy = type { [768 x i8], [256 x i8], ptr, i16, i16, i16, i16 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.SeqUniqueInfo = type { ptr, [64 x i8], [64 x i8], i32, i32 }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.SeqIndexBuildContext = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.RenderEffectInitData = type { ptr, ptr, ptr, float, float, float, ptr, ptr, ptr, ptr }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ColorBalanceInitData = type { ptr, ptr, float, ptr, i8 }
%struct.ColorBalanceThread = type { ptr, float, i32, i32, ptr, ptr, ptr, ptr, i8 }
%struct.StripColorBalance = type { [3 x float], [3 x float], [3 x float], i32, i32 }
%struct.MetaStack = type { ptr, ptr, ptr, ptr, [2 x i32] }
%struct.PrefetchQueueElem = type { ptr, ptr, i32, i32, float, i32, i32, i32, ptr }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.SeqLoadInfo = type { i32, i32, i32, i32, i32, i32, [1024 x i8], [64 x i8], ptr, i32, i32 }
%struct.RenderEffectThread = type { ptr, ptr, ptr, float, float, float, ptr, ptr, ptr, ptr, i32, i32 }

@sequencer_view3d_cb = dso_local local_unnamed_addr global ptr null, align 8
@seqbase_clipboard = dso_local global %struct.ListBase zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"addseq\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Effect\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"seq proxy rebuild context\00", align 1
@seq_thread_shutdown = internal global i8 1, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"prefetch_queue_elem\00", align 1
@monoton_cfra = internal unnamed_addr global i32 0, align 4
@prefetch_wait = internal global %struct.ListBase zeroinitializer, align 8
@seq_last_given_monoton_cfra = internal global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"SEQ-THREAD: Requested frame not in queue ???\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Strips must be the same length\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Strips were not compatible\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Strips must have the same number of inputs\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"sequence_editor.sequences_all\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"stripelem\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Movie\00", align 1
@seqbase_clipboard_frame = dso_local local_unnamed_addr global i32 0, align 4
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"SeqArray\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%.*s.%03d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Cross\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Gamma Cross\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Sub\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Mul\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Alpha Over\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Alpha Under\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Over Drop\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Wipe\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Glow\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Multicam\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Adjustment\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Gaussian Blur\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%s/BL_proxy\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"%s/images/%d/%s_proxy\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%s/proxy_misc/%d/####\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@__func__.seq_render_mask = private unnamed_addr constant [16 x i8] c"seq_render_mask\00", align 1
@RNA_Sequence = external global %struct.StructRNA, align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"effect_fader\00", align 1
@__const.seq_render_scene_strip.err_out = private unnamed_addr constant [256 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.42 = private unnamed_addr constant [56 x i8] c"seq_render_scene_strip failed to get opengl buffer: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"sequence_editor.sequences_all[\22%s\22]\00", align 1
@str = private unnamed_addr constant [31 x i8] c"error: negative users in strip\00", align 1
@switch.table.seq_render_strip = private unnamed_addr constant [9 x i16] [i16 0, i16 1, i16 2, i16 0, i16 3, i16 0, i16 0, i16 0, i16 4], align 2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_sequencer_base_recursive_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %17, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %17 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %1(ptr noundef nonnull %6, ptr noundef %2) #27
  switch i32 %9, label %10 [
    i32 -1, label %17
    i32 0, label %16
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %2), !range !44
  br label %17

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %8, %10, %14, %16
  %18 = phi i32 [ %9, %8 ], [ %15, %14 ], [ %9, %10 ], [ 0, %16 ]
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %4, !llvm.loop !45

20:                                               ; preds = %4, %17
  %21 = phi i32 [ -1, %17 ], [ 1, %4 ]
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_sequencer_recursive_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #27
  switch i32 %4, label %5 [
    i32 -1, label %12
    i32 0, label %11
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2), !range !44
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %5, %9, %3, %11
  %13 = phi i32 [ %4, %3 ], [ %10, %9 ], [ %4, %5 ], [ 0, %11 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @BKE_sequence_free_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BKE_sequence_free_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca [163 x i8], align 16
  %6 = alloca %struct.SeqEffectHandle, align 8
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 8, !tbaa !49
  %14 = icmp sgt i32 %12, 1
  br i1 %14, label %51, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 1
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %21) #27
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.StripProxy, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @IMB_free_anim(ptr noundef nonnull %31) #27
  br label %34

34:                                               ; preds = %33, %29
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %36 = load ptr, ptr %26, align 8, !tbaa !53
  tail call void %35(ptr noundef %36) #27
  br label %37

37:                                               ; preds = %34, %25
  %38 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %42(ptr noundef nonnull %39) #27
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %48(ptr noundef nonnull %45) #27
  br label %49

49:                                               ; preds = %47, %43
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %50(ptr noundef nonnull %8) #27
  br label %51

51:                                               ; preds = %49, %17, %10, %3
  %52 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @IMB_free_anim(ptr noundef nonnull %53) #27
  store ptr null, ptr %52, align 8, !tbaa !58
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !59
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #27
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %6, ptr noundef %1) #27
  %62 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  call void %63(ptr noundef %1) #27
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #27
  br label %64

64:                                               ; preds = %61, %56
  %65 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !63
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %69, align 4, !tbaa !63
  br label %72

72:                                               ; preds = %68, %64
  %73 = icmp ne ptr %0, null
  br i1 %73, label %74, label %118

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.Editing, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !84
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store ptr null, ptr %77, align 8, !tbaa !84
  br label %81

81:                                               ; preds = %80, %74
  %82 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %83 = load ptr, ptr %82, align 8, !tbaa !86
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %57, align 4, !tbaa !59
  switch i32 %86, label %88 [
    i32 4, label %87
    i32 2, label %87
  ]

87:                                               ; preds = %85, %85
  call void @sound_remove_scene_sound(ptr noundef nonnull %0, ptr noundef nonnull %83) #27
  br label %88

88:                                               ; preds = %85, %87, %81
  call void @llvm.lifetime.start.p0(i64 163, ptr nonnull %5) #27
  %89 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !87
  %91 = icmp eq ptr %90, null
  br i1 %91, label %117, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %90, align 8, !tbaa !88
  %94 = icmp eq ptr %93, null
  br i1 %94, label %117, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #27
  %97 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %96, i64 noundef 128) #27
  %98 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 163, ptr noundef nonnull @.str.43, ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #27
  %99 = load ptr, ptr %89, align 8, !tbaa !87
  %100 = load ptr, ptr %99, align 8, !tbaa !88
  %101 = getelementptr inbounds %struct.bAction, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !90
  %103 = icmp eq ptr %102, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %95, %115
  %105 = phi ptr [ %110, %115 ], [ %102, %95 ]
  %106 = getelementptr inbounds %struct.FCurve, ptr %105, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !92
  %108 = call i32 @strncmp(ptr noundef %107, ptr noundef nonnull %5, i64 noundef %98) #28
  %109 = icmp eq i32 %108, 0
  %110 = load ptr, ptr %105, align 8, !tbaa !94
  br i1 %109, label %111, label %115

111:                                              ; preds = %104
  %112 = load ptr, ptr %89, align 8, !tbaa !87
  %113 = load ptr, ptr %112, align 8, !tbaa !88
  %114 = getelementptr inbounds %struct.bAction, ptr %113, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %114, ptr noundef nonnull %105) #27
  call void @free_fcurve(ptr noundef nonnull %105) #27
  br label %115

115:                                              ; preds = %104, %111
  %116 = icmp eq ptr %110, null
  br i1 %116, label %117, label %104, !llvm.loop !95

117:                                              ; preds = %115, %95, %88, %92
  call void @llvm.lifetime.end.p0(i64 163, ptr nonnull %5) #27
  br label %118

118:                                              ; preds = %117, %72
  call void @BKE_sequence_modifier_clear(ptr noundef %1) #27
  %119 = icmp ne i8 %2, 0
  %120 = and i1 %73, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %123 = load ptr, ptr %122, align 8, !tbaa !65
  %124 = load ptr, ptr %52, align 8, !tbaa !58
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  call void @IMB_free_anim(ptr noundef nonnull %124) #27
  store ptr null, ptr %52, align 8, !tbaa !58
  br label %127

127:                                              ; preds = %126, %121
  call void @BKE_sequencer_cache_cleanup_sequence(ptr noundef %1) #27
  %128 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %129 = load ptr, ptr %128, align 8, !tbaa !96
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %57, align 4, !tbaa !59
  %133 = icmp eq i32 %132, 29
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 1) #27
  br label %135

135:                                              ; preds = %127, %131, %134
  call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef %1) #27
  %136 = getelementptr inbounds %struct.Editing, ptr %123, i64 0, i32 1
  call fastcc void @sequence_do_invalidate_dependent(ptr noundef %1, ptr noundef nonnull %136)
  br label %137

137:                                              ; preds = %135, %118
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %138(ptr noundef %1) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_editing_get(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 2128, ptr noundef nonnull @.str) #27
  store ptr %10, ptr %5, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.Editing, ptr %10, i64 0, i32 1
  store ptr %11, ptr %10, align 8, !tbaa !97
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_editing_ensure(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 2128, ptr noundef nonnull @.str) #27
  store ptr %7, ptr %2, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  store ptr %8, ptr %7, align 8, !tbaa !97
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_free_clipboard() local_unnamed_addr #0 {
  tail call void @BKE_sequencer_base_clipboard_pointers_free(ptr noundef nonnull @seqbase_clipboard)
  %1 = load ptr, ptr @seqbase_clipboard, align 8, !tbaa !98
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  tail call fastcc void @seq_free_sequence_recurse(ptr noundef nonnull %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !100

7:                                                ; preds = %3, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @seqbase_clipboard, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_base_clipboard_pointers_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1, %35
  %5 = phi ptr [ %37, %35 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #27
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #27
  store ptr null, ptr %12, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #27
  store ptr null, ptr %18, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 29
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %25) #27
  store ptr null, ptr %24, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 37
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %34(ptr noundef nonnull %31) #27
  store ptr null, ptr %30, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %29, %33
  %36 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  tail call void @BKE_sequencer_base_clipboard_pointers_free(ptr noundef nonnull %36)
  %37 = load ptr, ptr %5, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %4, !llvm.loop !101

39:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_free_sequence_recurse(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  tail call fastcc void @seq_free_sequence_recurse(ptr noundef nonnull %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !102

9:                                                ; preds = %5, %1
  tail call fastcc void @BKE_sequence_free_ex(ptr noundef null, ptr noundef %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_clipboard_pointers_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #27
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %5
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #27
  store ptr null, ptr %8, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %7, %11
  %14 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #27
  store ptr null, ptr %14, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %13, %17
  %20 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %21) #27
  store ptr null, ptr %20, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %19, %23
  %26 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %27) #27
  store ptr null, ptr %26, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %25, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_clipboard_pointers_store(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %7 = tail call ptr %6(ptr noundef nonnull %3) #27
  store ptr %7, ptr %2, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !103
  br label %9

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %15 = tail call ptr %14(ptr noundef nonnull %11) #27
  store ptr %15, ptr %10, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 2
  store ptr %11, ptr %16, align 8, !tbaa !103
  br label %17

17:                                               ; preds = %9, %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %23 = tail call ptr %22(ptr noundef nonnull %19) #27
  store ptr %23, ptr %18, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 2
  store ptr %19, ptr %24, align 8, !tbaa !103
  br label %25

25:                                               ; preds = %17, %21
  %26 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %31 = tail call ptr %30(ptr noundef nonnull %27) #27
  store ptr %31, ptr %26, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 2
  store ptr %27, ptr %32, align 8, !tbaa !103
  br label %33

33:                                               ; preds = %25, %29
  %34 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %39 = tail call ptr %38(ptr noundef nonnull %35) #27
  store ptr %39, ptr %34, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 2
  store ptr %35, ptr %40, align 8, !tbaa !103
  br label %41

41:                                               ; preds = %33, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_clipboard_pointers_restore(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 27
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %5)
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seqclipboard_ptr_restore(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !104
  %8 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %7) #27
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = tail call i32 @BLI_findindex(ptr noundef %8, ptr noundef %11) #27
  %13 = icmp eq i32 %12, -1
  %14 = load ptr, ptr %1, align 8, !tbaa !34
  br i1 %13, label %18, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  br label %21

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %20 = tail call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %19, i32 noundef 34) #27
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %20, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !104
  switch i16 %27, label %48 [
    i16 20307, label %28
    i16 17229, label %36
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bSound, ptr %25, i64 0, i32 1
  %30 = tail call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %29, i32 noundef 120) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load ptr, ptr %1, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.bSound, ptr %33, i64 0, i32 1
  %35 = tail call ptr @sound_new_file(ptr noundef %0, ptr noundef nonnull %34) #27
  br label %44

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.MovieClip, ptr %25, i64 0, i32 2
  %38 = tail call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %37, i32 noundef 128) #27
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load ptr, ptr %1, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.MovieClip, ptr %41, i64 0, i32 2
  %43 = tail call ptr @BKE_movieclip_file_add(ptr noundef %0, ptr noundef nonnull %42) #27
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi ptr [ %35, %32 ], [ %43, %40 ]
  %46 = load ptr, ptr %1, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 2
  store ptr %45, ptr %47, align 8, !tbaa !103
  br label %48

48:                                               ; preds = %44, %24, %28, %36, %21
  %49 = phi ptr [ null, %24 ], [ %38, %36 ], [ %30, %28 ], [ %22, %21 ], [ %45, %44 ]
  store ptr %49, ptr %1, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_base_clipboard_pointers_store(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %1, %45
  %5 = phi ptr [ %47, %45 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %11 = tail call ptr %10(ptr noundef nonnull %7) #27
  store ptr %11, ptr %6, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 2
  store ptr %7, ptr %12, align 8, !tbaa !103
  br label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 27
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %19 = tail call ptr %18(ptr noundef nonnull %15) #27
  store ptr %19, ptr %14, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 2
  store ptr %15, ptr %20, align 8, !tbaa !103
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %27 = tail call ptr %26(ptr noundef nonnull %23) #27
  store ptr %27, ptr %22, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 2
  store ptr %23, ptr %28, align 8, !tbaa !103
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %35 = tail call ptr %34(ptr noundef nonnull %31) #27
  store ptr %35, ptr %30, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 2
  store ptr %31, ptr %36, align 8, !tbaa !103
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %43 = tail call ptr %42(ptr noundef nonnull %39) #27
  store ptr %43, ptr %38, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 2
  store ptr %39, ptr %44, align 8, !tbaa !103
  br label %45

45:                                               ; preds = %37, %41
  %46 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  tail call void @BKE_sequencer_base_clipboard_pointers_store(ptr noundef nonnull %46)
  %47 = load ptr, ptr %5, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %4, !llvm.loop !105

49:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_base_clipboard_pointers_restore(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 26
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %7)
  %8 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 27
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %8)
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 28
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %9)
  %10 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 29
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %10)
  %11 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 37
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %11)
  %12 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  tail call void @BKE_sequencer_base_clipboard_pointers_restore(ptr noundef nonnull %12, ptr noundef %1)
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !106

15:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_editing_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.SeqIterator, align 8
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %1
  tail call void @BKE_sequencer_cache_cleanup() #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store ptr null, ptr %3, align 8, !tbaa !34
  store i32 0, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  call fastcc void @seq_count(ptr noundef nonnull %9, ptr noundef nonnull %8)
  %10 = load i32, ptr %8, align 8, !tbaa !107
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = sext i32 %10 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str.13) #27
  store ptr %16, ptr %2, align 8, !tbaa !34
  store ptr %16, ptr %3, align 8, !tbaa !34
  call fastcc void @seq_build_array(ptr noundef nonnull %9, ptr noundef nonnull %2, i32 noundef 0)
  br label %17

17:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  %18 = load i32, ptr %8, align 8, !tbaa !108
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 2
  store i32 0, ptr %21, align 4, !tbaa !110
  %22 = load ptr, ptr %3, align 8, !tbaa !111
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !112
  %25 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  store i32 1, ptr %25, align 8, !tbaa !113
  br label %26

26:                                               ; preds = %17, %20
  %27 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !113
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %32 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %3, align 8
  %34 = load ptr, ptr %31, align 8, !tbaa !112
  %35 = load i32, ptr %32, align 4, !tbaa !110
  %36 = sext i32 %35 to i64
  %37 = sext i32 %18 to i64
  br label %38

38:                                               ; preds = %30, %47
  %39 = phi i64 [ %36, %30 ], [ %42, %47 ]
  %40 = phi ptr [ %34, %30 ], [ %48, %47 ]
  %41 = phi i32 [ %28, %30 ], [ %49, %47 ]
  tail call fastcc void @BKE_sequence_free_ex(ptr noundef %0, ptr noundef %40, i8 noundef zeroext 0)
  %42 = add i64 %39, 1
  %43 = icmp slt i64 %42, %37
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds ptr, ptr %33, i64 %42
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  br label %47

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %46, %44 ], [ %40, %38 ]
  %49 = phi i32 [ %41, %44 ], [ 0, %38 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %38, !llvm.loop !114

51:                                               ; preds = %47
  %52 = trunc i64 %42 to i32
  store ptr %48, ptr %31, align 8, !tbaa !112
  store i32 %52, ptr %32, align 4, !tbaa !110
  br label %53

53:                                               ; preds = %51, %26
  %54 = phi i32 [ %49, %51 ], [ %28, %26 ]
  store i32 %54, ptr %27, align 8, !tbaa !113
  %55 = load ptr, ptr %3, align 8, !tbaa !111
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %58(ptr noundef nonnull %55) #27
  br label %59

59:                                               ; preds = %53, %57
  store i32 0, ptr %27, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %60 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %60) #27
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %61(ptr noundef nonnull %5) #27
  store ptr null, ptr %4, align 8, !tbaa !65
  br label %62

62:                                               ; preds = %1, %59
  ret void
}

declare void @BKE_sequencer_cache_cleanup() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_iterator_begin(ptr noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store ptr null, ptr %1, align 8, !tbaa !34
  store i32 0, ptr %5, align 4, !tbaa !107
  %6 = icmp eq ptr %0, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !97
  tail call fastcc void @seq_count(ptr noundef %10, ptr noundef nonnull %5)
  br label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  tail call fastcc void @seq_count(ptr noundef nonnull %12, ptr noundef nonnull %5)
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, ptr %5, align 4, !tbaa !107
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = sext i32 %14 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.13) #27
  store ptr %20, ptr %4, align 8, !tbaa !34
  store ptr %20, ptr %1, align 8, !tbaa !34
  br i1 %8, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 8, !tbaa !97
  call fastcc void @seq_build_array(ptr noundef %22, ptr noundef nonnull %4, i32 noundef 0)
  br label %25

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  call fastcc void @seq_build_array(ptr noundef nonnull %24, ptr noundef nonnull %4, i32 noundef 0)
  br label %25

25:                                               ; preds = %3, %13, %21, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %26 = load i32, ptr %5, align 8, !tbaa !108
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 2
  store i32 0, ptr %29, align 4, !tbaa !110
  %30 = load ptr, ptr %1, align 8, !tbaa !111
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !112
  %33 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 4
  store i32 1, ptr %33, align 8, !tbaa !113
  br label %34

34:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_sequence_iterator_next(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !110
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !110
  %5 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !111
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !112
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !113
  br label %16

16:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_iterator_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !111
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %2) #27
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !113
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #27
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %6 = tail call ptr @IMB_colormanagement_get_float_colorspace(ptr noundef %1) #27
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef %1) #27
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %15) #28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %17, %14
  tail call void @IMB_float_from_rect(ptr noundef %1) #27
  br label %21

21:                                               ; preds = %20, %3
  %22 = icmp eq ptr %4, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %4, align 1, !tbaa !119
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @imb_freerectImBuf(ptr noundef %1) #27
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %5) #28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !tbaa !115
  %36 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !120
  %38 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !121
  %40 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !122
  tail call void @IMB_colormanagement_transform_threaded(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1) #27
  %42 = load ptr, ptr %7, align 8, !tbaa !115
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef %1, ptr noundef nonnull %5) #27
  br label %45

45:                                               ; preds = %44, %34, %21, %23, %31, %10, %17
  ret void
}

declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #2

declare ptr @IMB_colormanagement_get_float_colorspace(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_transform_threaded(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %4 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #27
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load i8, ptr %4, align 1, !tbaa !119
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !120
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !121
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !122
  tail call void @IMB_colormanagement_transform_threaded(ptr noundef nonnull %6, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1) #27
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef %1, ptr noundef nonnull %4) #27
  br label %20

20:                                               ; preds = %10, %13, %2
  ret void
}

declare void @IMB_colormanagement_assign_float_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_pixel_from_sequencer_space_v4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %4 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1, !tbaa !119
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @IMB_colormanagement_transform_v4(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #27
  br label %19

10:                                               ; preds = %6, %2
  %11 = load float, ptr %1, align 4, !tbaa !123
  %12 = tail call float @srgb_to_linearrgb(float noundef %11) #27
  store float %12, ptr %1, align 4, !tbaa !123
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !123
  %15 = tail call float @srgb_to_linearrgb(float noundef %14) #27
  store float %15, ptr %13, align 4, !tbaa !123
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !123
  %18 = tail call float @srgb_to_linearrgb(float noundef %17) #27
  store float %18, ptr %16, align 4, !tbaa !123
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare void @IMB_colormanagement_transform_v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_sequencer_new_render_data(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.SeqRenderData) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  store ptr %3, ptr %9, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  store i32 %5, ptr %11, align 4, !tbaa !128
  %12 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  store i32 %6, ptr %12, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 6
  store i32 0, ptr %13, align 4, !tbaa !130
  %14 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 7
  store float 0.000000e+00, ptr %14, align 8, !tbaa !131
  store ptr %1, ptr %0, align 8, !tbaa !132
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 8
  store i8 0, ptr %15, align 4, !tbaa !133
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 1, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !135
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !136
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, ptr %7, align 8, !tbaa !136
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !137
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !138
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, ptr %16, align 4, !tbaa !138
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !139
  %23 = add nsw i32 %22, %4
  %24 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !136
  %26 = sub nsw i32 %23, %25
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  store i32 %26, ptr %27, align 8, !tbaa !140
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !141
  %30 = sub i32 %22, %13
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %33 = load i32, ptr %32, align 4, !tbaa !138
  %34 = add nsw i32 %31, %33
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  store i32 %34, ptr %35, align 4, !tbaa !142
  %36 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 19
  store float 1.000000e+01, ptr %36, align 8, !tbaa !143
  %37 = sub nsw i32 %34, %26
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = sitofp i32 %37 to double
  %41 = fmul double %40, 5.000000e-01
  %42 = fptrunc double %41 to float
  br label %48

43:                                               ; preds = %20
  %44 = icmp sgt i32 %37, 250
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = udiv i32 %37, 25
  %47 = sitofp i32 %46 to float
  br label %48

48:                                               ; preds = %39, %45
  %49 = phi float [ %47, %45 ], [ %42, %39 ]
  store float %49, ptr %36, align 8, !tbaa !143
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !59
  switch i32 %52, label %68 [
    i32 1, label %67
    i32 2, label %53
    i32 4, label %66
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %59 = load i32, ptr %58, align 8, !tbaa !144
  %60 = add nsw i32 %59, %4
  %61 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %62 = load ptr, ptr %61, align 8, !tbaa !145
  %63 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !146
  %65 = add nsw i32 %60, %64
  tail call void @sound_move_scene_sound(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %26, i32 noundef %34, i32 noundef %65) #27
  br label %68

66:                                               ; preds = %50
  tail call void @sound_move_scene_sound_defaults(ptr noundef %0, ptr noundef %1) #27
  br label %68

67:                                               ; preds = %50
  tail call fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr noundef %1, i32 noundef %23, i32 noundef %31)
  br label %68

68:                                               ; preds = %66, %57, %53, %50, %67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_update_sound_bounds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !135
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %14 = load i32, ptr %13, align 8, !tbaa !144
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !146
  %20 = add nsw i32 %15, %19
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !140
  %23 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !142
  tail call void @sound_move_scene_sound(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %22, i32 noundef %24, i32 noundef %20) #27
  br label %26

25:                                               ; preds = %2
  tail call void @sound_move_scene_sound_defaults(ptr noundef %0, ptr noundef %1) #27
  br label %26

26:                                               ; preds = %6, %10, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 36
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %7)
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr %7, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !147

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !59
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %76, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !148
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %26 = load ptr, ptr %25, align 8, !tbaa !149
  store ptr %26, ptr %21, align 8, !tbaa !148
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %33 = load ptr, ptr %32, align 8, !tbaa !149
  store ptr %33, ptr %28, align 8, !tbaa !150
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %36 = load ptr, ptr %35, align 8, !tbaa !149
  %37 = icmp eq ptr %36, null
  br i1 %37, label %75, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %40 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %41 = load i32, ptr %40, align 8, !tbaa !140
  %42 = load ptr, ptr %21, align 8, !tbaa !148
  %43 = getelementptr inbounds %struct.Sequence, ptr %42, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !140
  %45 = load ptr, ptr %28, align 8, !tbaa !150
  %46 = getelementptr inbounds %struct.Sequence, ptr %45, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !140
  %48 = tail call i32 @llvm.smax.i32(i32 %44, i32 %41)
  %49 = tail call i32 @llvm.smax.i32(i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  store i32 %49, ptr %50, align 8, !tbaa !140
  %51 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  store i32 %49, ptr %51, align 4, !tbaa !139
  %52 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 16
  %53 = load i32, ptr %52, align 4, !tbaa !142
  %54 = getelementptr inbounds %struct.Sequence, ptr %42, i64 0, i32 16
  %55 = load i32, ptr %54, align 4, !tbaa !142
  %56 = getelementptr inbounds %struct.Sequence, ptr %45, i64 0, i32 16
  %57 = load i32, ptr %56, align 4, !tbaa !142
  %58 = tail call i32 @llvm.smin.i32(i32 %53, i32 %55)
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 %57)
  %60 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  store i32 %59, ptr %60, align 4, !tbaa !142
  %61 = icmp slt i32 %59, %49
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  store i32 %59, ptr %51, align 4, !tbaa !139
  store i32 %49, ptr %60, align 4, !tbaa !142
  store i32 %59, ptr %50, align 8, !tbaa !140
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !151
  %65 = or i32 %64, -2147483648
  store i32 %65, ptr %63, align 8, !tbaa !151
  br label %70

66:                                               ; preds = %38
  %67 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !151
  %69 = and i32 %68, 2147483647
  store i32 %69, ptr %67, align 8, !tbaa !151
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, ptr %60, align 4, !tbaa !142
  %72 = load i32, ptr %50, align 8, !tbaa !140
  %73 = sub nsw i32 %71, %72
  %74 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %73, ptr %74, align 8, !tbaa !141
  br label %117

75:                                               ; preds = %34
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1)
  br label %117

76:                                               ; preds = %15
  %77 = icmp eq i32 %17, 1
  br i1 %77, label %78, label %116

78:                                               ; preds = %76
  %79 = load ptr, ptr %3, align 8, !tbaa !38
  %80 = icmp eq ptr %79, null
  br i1 %80, label %104, label %81

81:                                               ; preds = %78, %81
  %82 = phi i32 [ %90, %81 ], [ -600000, %78 ]
  %83 = phi i32 [ %87, %81 ], [ 600000, %78 ]
  %84 = phi ptr [ %91, %81 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.Sequence, ptr %84, i64 0, i32 15
  %86 = load i32, ptr %85, align 8, !tbaa !140
  %87 = tail call i32 @llvm.smin.i32(i32 %86, i32 %83)
  %88 = getelementptr inbounds %struct.Sequence, ptr %84, i64 0, i32 16
  %89 = load i32, ptr %88, align 4, !tbaa !142
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 %82)
  %91 = load ptr, ptr %84, align 8, !tbaa !99
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %81, !llvm.loop !152

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %95 = load i32, ptr %94, align 8, !tbaa !144
  %96 = add nsw i32 %95, %87
  %97 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  store i32 %96, ptr %97, align 4, !tbaa !139
  %98 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %99 = add i32 %87, %95
  %100 = sub i32 %90, %99
  store i32 %100, ptr %98, align 8, !tbaa !141
  %101 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %102 = load i32, ptr %101, align 4, !tbaa !153
  %103 = sub nsw i32 %100, %102
  store i32 %103, ptr %98, align 8, !tbaa !141
  br label %104

104:                                              ; preds = %93, %78
  %105 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !139
  %107 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !135
  %109 = add nsw i32 %108, %106
  %110 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !141
  %112 = add nsw i32 %111, %106
  %113 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %114 = load i32, ptr %113, align 4, !tbaa !137
  %115 = sub i32 %112, %114
  tail call fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr noundef %1, i32 noundef %109, i32 noundef %115)
  br label %116

116:                                              ; preds = %104, %76
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1)
  br label %117

117:                                              ; preds = %70, %75, %116
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !59
  switch i32 %6, label %206 [
    i32 3, label %7
    i32 0, label %7
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 6, label %7
    i32 7, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1)
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 4, !tbaa !142
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %16 = phi i32 [ %11, %9 ], [ 0, %7 ]
  %17 = load i32, ptr %5, align 4, !tbaa !59
  switch i32 %17, label %122 [
    i32 0, label %18
    i32 3, label %31
    i32 6, label %78
    i32 7, label %88
    i32 4, label %206
    i32 2, label %98
  ]

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.Strip, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = tail call i64 %19(ptr noundef %23) #27
  %25 = udiv i64 %24, 264
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %26, ptr %27, align 8, !tbaa !141
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %29 = load i32, ptr %28, align 8, !tbaa !144
  %30 = sub nsw i32 %26, %29
  store i32 %30, ptr %27, align 8, !tbaa !141
  br label %115

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.Strip, ptr %33, i64 0, i32 7
  %35 = getelementptr inbounds %struct.Strip, ptr %33, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %34, ptr noundef %36) #27
  %37 = load ptr, ptr @G, align 8, !tbaa !154
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 2
  %39 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %38) #27
  %40 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  call void @IMB_free_anim(ptr noundef nonnull %41) #27
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !151
  %47 = shl i32 %46, 5
  %48 = and i32 %47, 512
  %49 = or disjoint i32 %48, 1
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 21
  %51 = load i16, ptr %50, align 2, !tbaa !156
  %52 = sext i16 %51 to i32
  %53 = load ptr, ptr %32, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct.Strip, ptr %53, i64 0, i32 12
  %55 = call ptr @openanim(ptr noundef nonnull %4, i32 noundef %49, i32 noundef %52, ptr noundef nonnull %54) #27
  store ptr %55, ptr %40, align 8, !tbaa !58
  %56 = icmp eq ptr %55, null
  br i1 %56, label %206, label %57

57:                                               ; preds = %44
  %58 = load ptr, ptr %32, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.Strip, ptr %58, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.StripProxy, ptr %60, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !157
  %65 = sext i16 %64 to i32
  br label %66

66:                                               ; preds = %57, %62
  %67 = phi i32 [ %65, %62 ], [ 1, %57 ]
  %68 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %55, i32 noundef %67) #27
  %69 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %68, ptr %69, align 8, !tbaa !141
  %70 = load ptr, ptr %40, align 8, !tbaa !58
  %71 = call i32 @IMB_anim_get_preseek(ptr noundef %70) #27
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 20
  store i16 %72, ptr %73, align 4, !tbaa !158
  %74 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %75 = load i32, ptr %74, align 8, !tbaa !144
  %76 = load i32, ptr %69, align 8, !tbaa !141
  %77 = sub nsw i32 %76, %75
  store i32 %77, ptr %69, align 8, !tbaa !141
  br label %115

78:                                               ; preds = %14
  %79 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 28
  %80 = load ptr, ptr %79, align 8, !tbaa !159
  %81 = icmp eq ptr %80, null
  br i1 %81, label %206, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %80) #27
  %84 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %83, ptr %84, align 8, !tbaa !141
  %85 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %86 = load i32, ptr %85, align 8, !tbaa !144
  %87 = sub nsw i32 %83, %86
  store i32 %87, ptr %84, align 8, !tbaa !141
  br label %115

88:                                               ; preds = %14
  %89 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 29
  %90 = load ptr, ptr %89, align 8, !tbaa !160
  %91 = icmp eq ptr %90, null
  br i1 %91, label %206, label %92

92:                                               ; preds = %88
  %93 = tail call i32 @BKE_mask_get_duration(ptr noundef nonnull %90) #27
  %94 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %93, ptr %94, align 8, !tbaa !141
  %95 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %96 = load i32, ptr %95, align 8, !tbaa !144
  %97 = sub nsw i32 %93, %96
  store i32 %97, ptr %94, align 8, !tbaa !141
  br label %115

98:                                               ; preds = %14
  %99 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %100 = load ptr, ptr %99, align 8, !tbaa !145
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.Scene, ptr %100, i64 0, i32 22, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !161
  %105 = getelementptr inbounds %struct.Scene, ptr %100, i64 0, i32 22, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !146
  %107 = add i32 %104, 1
  %108 = sub i32 %107, %106
  br label %109

109:                                              ; preds = %98, %102
  %110 = phi i32 [ %108, %102 ], [ 0, %98 ]
  %111 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %110, ptr %111, align 8, !tbaa !141
  %112 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %113 = load i32, ptr %112, align 8, !tbaa !144
  %114 = sub nsw i32 %110, %113
  store i32 %114, ptr %111, align 8, !tbaa !141
  br label %115

115:                                              ; preds = %18, %66, %82, %92, %109
  %116 = phi i32 [ %114, %109 ], [ %97, %92 ], [ %87, %82 ], [ %77, %66 ], [ %30, %18 ]
  %117 = phi ptr [ %111, %109 ], [ %94, %92 ], [ %84, %82 ], [ %69, %66 ], [ %27, %18 ]
  %118 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %119 = load i32, ptr %118, align 4, !tbaa !153
  %120 = sub nsw i32 %116, %119
  %121 = call i32 @llvm.smax.i32(i32 %120, i32 0)
  store i32 %121, ptr %117, align 8
  br label %122

122:                                              ; preds = %115, %14
  %123 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !48
  %125 = icmp eq ptr %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.Strip, ptr %124, i64 0, i32 8
  %128 = load ptr, ptr %127, align 8, !tbaa !53
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.StripProxy, ptr %128, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !54
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  call void @IMB_free_anim(ptr noundef nonnull %132) #27
  %135 = load ptr, ptr %123, align 8, !tbaa !48
  %136 = getelementptr inbounds %struct.Strip, ptr %135, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !53
  %138 = getelementptr inbounds %struct.StripProxy, ptr %137, i64 0, i32 2
  store ptr null, ptr %138, align 8, !tbaa !54
  br label %139

139:                                              ; preds = %122, %126, %130, %134
  br i1 %8, label %205, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %142 = load i32, ptr %141, align 4, !tbaa !139
  %143 = icmp sgt i32 %142, %16
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = sub nsw i32 %142, %16
  %146 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  store i32 %145, ptr %146, align 8, !tbaa !136
  %147 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  br label %152

148:                                              ; preds = %140
  %149 = sub nsw i32 %16, %142
  %150 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  store i32 %149, ptr %150, align 8, !tbaa !135
  %151 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  br label %152

152:                                              ; preds = %144, %148
  %153 = phi ptr [ %147, %144 ], [ %151, %148 ]
  store i32 0, ptr %153, align 8, !tbaa !107
  %154 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !141
  %156 = add nsw i32 %155, %142
  %157 = icmp slt i32 %156, %15
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = sub nsw i32 %15, %156
  %160 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  store i32 %159, ptr %160, align 4, !tbaa !138
  %161 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  br label %166

162:                                              ; preds = %152
  %163 = sub nsw i32 %156, %15
  %164 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  store i32 %163, ptr %164, align 4, !tbaa !137
  %165 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  br label %166

166:                                              ; preds = %158, %162
  %167 = phi ptr [ %161, %158 ], [ %165, %162 ]
  store i32 0, ptr %167, align 4, !tbaa !107
  %168 = icmp eq i32 %155, 1
  br i1 %168, label %169, label %205

169:                                              ; preds = %166
  %170 = load i32, ptr %5, align 4, !tbaa !59
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = and i32 %170, 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %205, label %175

175:                                              ; preds = %172
  %176 = call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %170) #27
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %175, %169
  %179 = load i32, ptr %141, align 4, !tbaa !139
  %180 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %181 = load i32, ptr %180, align 8, !tbaa !136
  %182 = sub nsw i32 %179, %181
  %183 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !135
  %185 = add nsw i32 %182, %184
  %186 = icmp eq i32 %179, %185
  br i1 %186, label %205, label %187

187:                                              ; preds = %178
  store i32 0, ptr %183, align 8, !tbaa !135
  store i32 0, ptr %180, align 8, !tbaa !136
  %188 = load i32, ptr %154, align 8, !tbaa !141
  %189 = add nsw i32 %188, %179
  %190 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %191 = load i32, ptr %190, align 4, !tbaa !138
  %192 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %193 = load i32, ptr %192, align 4, !tbaa !137
  %194 = sub i32 %179, %185
  %195 = add i32 %194, %191
  %196 = add i32 %195, %189
  %197 = sub i32 %196, %193
  %198 = icmp slt i32 %189, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %187
  %200 = sub nsw i32 %197, %189
  store i32 %200, ptr %190, align 4, !tbaa !138
  br label %203

201:                                              ; preds = %187
  %202 = sub nsw i32 %189, %197
  store i32 %202, ptr %192, align 4, !tbaa !137
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi ptr [ %190, %201 ], [ %192, %199 ]
  store i32 0, ptr %204, align 4, !tbaa !107
  store i32 %185, ptr %141, align 4, !tbaa !139
  br label %205

205:                                              ; preds = %203, %178, %175, %172, %166, %139
  call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1)
  br label %206

206:                                              ; preds = %3, %14, %88, %78, %44, %205
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #27
  ret void
}

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #2

declare ptr @openanim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IMB_anim_get_preseek(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_mask_get_duration(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_sequence_tx_set_final_left(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !139
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = sub nsw i32 %4, %1
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  store i32 %7, ptr %8, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  br label %14

10:                                               ; preds = %2
  %11 = sub nsw i32 %1, %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  store i32 %11, ptr %12, align 8, !tbaa !135
  %13 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %13, %10 ], [ %9, %6 ]
  store i32 0, ptr %15, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_sequence_tx_set_final_right(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !139
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !141
  %7 = add nsw i32 %6, %4
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = sub nsw i32 %1, %7
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  store i32 %10, ptr %11, align 4, !tbaa !138
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  br label %17

13:                                               ; preds = %2
  %14 = sub nsw i32 %7, %1
  %15 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  store i32 %14, ptr %15, align 4, !tbaa !137
  %16 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %16, %13 ], [ %12, %9 ]
  store i32 0, ptr %18, align 4, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_single_fix(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = and i32 %7, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %7) #27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %5, %12
  %16 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !139
  %18 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !136
  %20 = sub nsw i32 %17, %19
  %21 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !135
  %23 = add nsw i32 %20, %22
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %15
  store i32 0, ptr %21, align 8, !tbaa !135
  store i32 0, ptr %18, align 8, !tbaa !136
  %26 = load i32, ptr %2, align 8, !tbaa !141
  %27 = add nsw i32 %26, %17
  %28 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %29 = load i32, ptr %28, align 4, !tbaa !138
  %30 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  %31 = load i32, ptr %30, align 4, !tbaa !137
  %32 = sub i32 %17, %23
  %33 = add i32 %32, %29
  %34 = add i32 %33, %27
  %35 = sub i32 %34, %31
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = sub nsw i32 %35, %27
  store i32 %38, ptr %28, align 4, !tbaa !138
  br label %41

39:                                               ; preds = %25
  %40 = sub nsw i32 %27, %35
  store i32 %40, ptr %30, align 4, !tbaa !137
  br label %41

41:                                               ; preds = %37, %39
  %42 = phi ptr [ %30, %37 ], [ %28, %39 ]
  store i32 0, ptr %42, align 4, !tbaa !107
  store i32 %23, ptr %16, align 4, !tbaa !139
  br label %43

43:                                               ; preds = %1, %9, %15, %41, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_sort(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %5, align 8, !tbaa !97
  %9 = tail call ptr @BLI_pophead(ptr noundef %8) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7, %40
  %12 = phi ptr [ %42, %40 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 13
  br i1 %16, label %29, label %18

18:                                               ; preds = %11, %22
  %19 = phi ptr [ %20, %22 ], [ %3, %11 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Sequence, ptr %20, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !162
  %25 = load i32, ptr %17, align 8, !tbaa !162
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %18, label %27, !llvm.loop !163

27:                                               ; preds = %22
  call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef nonnull %20, ptr noundef nonnull %12) #27
  br label %40

28:                                               ; preds = %18
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %12) #27
  br label %40

29:                                               ; preds = %11, %33
  %30 = phi ptr [ %31, %33 ], [ %2, %11 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Sequence, ptr %31, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !162
  %36 = load i32, ptr %17, align 8, !tbaa !162
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %29, label %38, !llvm.loop !164

38:                                               ; preds = %33
  call void @BLI_insertlinkbefore(ptr noundef nonnull %2, ptr noundef nonnull %31, ptr noundef nonnull %12) #27
  br label %40

39:                                               ; preds = %29
  call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef nonnull %12) #27
  br label %40

40:                                               ; preds = %38, %27, %39, %28
  %41 = load ptr, ptr %5, align 8, !tbaa !97
  %42 = call ptr @BLI_pophead(ptr noundef %41) #27
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %11, !llvm.loop !165

44:                                               ; preds = %40, %7
  call void @BLI_movelisttolist(ptr noundef nonnull %2, ptr noundef nonnull %3) #27
  %45 = load ptr, ptr %5, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !166
  br label %46

46:                                               ; preds = %1, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #27
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_clear_scene_in_allseqs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Editing, ptr %11, i64 0, i32 1
  %15 = tail call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %14, ptr noundef nonnull @clear_scene_in_allseqs_cb, ptr noundef %1), !range !44
  br label %16

16:                                               ; preds = %6, %9, %13
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !167

19:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @clear_scene_in_allseqs_cb(ptr nocapture noundef %0, ptr noundef readnone %1) #7 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !145
  br label %7

7:                                                ; preds = %6, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_base_unique_name_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SeqUniqueInfo, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 64) #27
  %7 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef 64) #27
  %9 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !170
  %10 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 4
  store i32 1, ptr %10, align 4, !tbaa !171
  %11 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  store i8 0, ptr %11, align 1, !tbaa !119
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !119
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = call i64 @strtol(ptr nocapture noundef nonnull %14, ptr noundef null, i32 noundef 10) #27
  %19 = trunc i64 %18 to i32
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %9, align 8, !tbaa !170
  br label %21

21:                                               ; preds = %13, %17, %2
  %22 = load i32, ptr %10, align 4, !tbaa !171
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %42
  store i32 0, ptr %10, align 4, !tbaa !171
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24, %39
  %28 = phi ptr [ %40, %39 ], [ %25, %24 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !168
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Sequence, ptr %28, i64 0, i32 4, i64 2
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %32) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 8, !tbaa !170
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %9, align 8, !tbaa !170
  %38 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.14, i32 noundef 57, ptr noundef nonnull %4, i32 noundef %36) #27
  store i32 1, ptr %10, align 4, !tbaa !171
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = load ptr, ptr %28, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %27, !llvm.loop !172

42:                                               ; preds = %39, %24
  %43 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %0, ptr noundef nonnull @seqbase_unique_name_recursive_cb, ptr noundef nonnull %3), !range !44
  %44 = load i32, ptr %10, align 4, !tbaa !171
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %24, !llvm.loop !173

46:                                               ; preds = %42, %21
  %47 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %7, i64 noundef 62) #27
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #27
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @seqbase_unique_name_recursive_cb(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 4
  br label %11

11:                                               ; preds = %23, %6
  %12 = phi ptr [ %4, %6 ], [ %24, %23 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !168
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 4, i64 2
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %16) #28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, ptr %9, align 8, !tbaa !170
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %9, align 8, !tbaa !170
  %22 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.14, i32 noundef 57, ptr noundef nonnull %8, i32 noundef %20) #27
  store i32 1, ptr %10, align 4, !tbaa !171
  br label %23

23:                                               ; preds = %19, %15, %11
  %24 = load ptr, ptr %12, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !172

26:                                               ; preds = %23, %2
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_sequence_give_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !59
  switch i32 %3, label %26 [
    i32 1, label %27
    i32 0, label %4
    i32 2, label %5
    i32 3, label %6
    i32 6, label %7
    i32 7, label %8
    i32 4, label %9
    i32 8, label %10
    i32 13, label %11
    i32 9, label %12
    i32 10, label %13
    i32 14, label %14
    i32 11, label %15
    i32 12, label %16
    i32 15, label %17
    i32 25, label %18
    i32 26, label %19
    i32 27, label %20
    i32 28, label %21
    i32 30, label %22
    i32 31, label %23
    i32 29, label %24
    i32 40, label %25
  ]

4:                                                ; preds = %1
  br label %27

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  br label %27

15:                                               ; preds = %1
  br label %27

16:                                               ; preds = %1
  br label %27

17:                                               ; preds = %1
  br label %27

18:                                               ; preds = %1
  br label %27

19:                                               ; preds = %1
  br label %27

20:                                               ; preds = %1
  br label %27

21:                                               ; preds = %1
  br label %27

22:                                               ; preds = %1
  br label %27

23:                                               ; preds = %1
  br label %27

24:                                               ; preds = %1
  br label %27

25:                                               ; preds = %1
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %1, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26
  %28 = phi i1 [ true, %26 ], [ false, %25 ], [ false, %24 ], [ false, %23 ], [ false, %22 ], [ false, %21 ], [ false, %20 ], [ false, %19 ], [ false, %18 ], [ false, %17 ], [ false, %16 ], [ false, %15 ], [ false, %14 ], [ false, %13 ], [ false, %12 ], [ false, %11 ], [ false, %10 ], [ false, %9 ], [ false, %8 ], [ false, %7 ], [ false, %6 ], [ false, %5 ], [ false, %4 ], [ false, %1 ]
  %29 = phi ptr [ null, %26 ], [ @.str.36, %25 ], [ @.str.35, %24 ], [ @.str.34, %23 ], [ @.str.33, %22 ], [ @.str.32, %21 ], [ @.str.31, %20 ], [ @.str.30, %19 ], [ @.str.29, %18 ], [ @.str.28, %17 ], [ @.str.27, %16 ], [ @.str.26, %15 ], [ @.str.25, %14 ], [ @.str.24, %13 ], [ @.str.23, %12 ], [ @.str.22, %11 ], [ @.str.21, %10 ], [ @.str.20, %9 ], [ @.str.19, %8 ], [ @.str.18, %7 ], [ @.str.11, %6 ], [ @.str.17, %5 ], [ @.str.16, %4 ], [ @.str.15, %1 ]
  br i1 %28, label %30, label %36

30:                                               ; preds = %27
  %31 = icmp slt i32 %3, 8
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct.Strip, ptr %34, i64 0, i32 7
  br label %36

36:                                               ; preds = %27, %30, %32
  %37 = phi ptr [ %35, %32 ], [ @.str.1, %30 ], [ %29, %27 ]
  ret ptr %37
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local ptr @BKE_sequencer_give_stripelem(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %2
  %11 = sitofp i32 %1 to float
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !139
  %14 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !141
  %16 = add i32 %13, -1
  %17 = add i32 %16, %15
  %18 = icmp slt i32 %17, %13
  br i1 %18, label %56, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !151
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  %24 = sitofp i32 %13 to float
  %25 = fcmp ult float %24, %11
  br i1 %23, label %35, label %26

26:                                               ; preds = %19
  br i1 %25, label %30, label %27

27:                                               ; preds = %26
  %28 = sub nsw i32 %17, %13
  %29 = sitofp i32 %28 to float
  br label %44

30:                                               ; preds = %26
  %31 = sitofp i32 %17 to float
  %32 = fcmp ugt float %31, %11
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = fsub float %31, %11
  br label %44

35:                                               ; preds = %19
  br i1 %25, label %36, label %44

36:                                               ; preds = %35
  %37 = sitofp i32 %17 to float
  %38 = fcmp ugt float %37, %11
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = sub nsw i32 %17, %13
  %41 = sitofp i32 %40 to float
  br label %44

42:                                               ; preds = %36
  %43 = fsub float %11, %24
  br label %44

44:                                               ; preds = %42, %39, %35, %33, %30, %27
  %45 = phi float [ %29, %27 ], [ %34, %33 ], [ %41, %39 ], [ %43, %42 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %35 ]
  %46 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 42
  %47 = load float, ptr %46, align 4, !tbaa !174
  %48 = fcmp olt float %47, 1.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store float 1.000000e+00, ptr %46, align 4, !tbaa !174
  br label %50

50:                                               ; preds = %49, %44
  %51 = load float, ptr %46, align 4, !tbaa !174
  %52 = fcmp ogt float %51, 1.000000e+00
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call float @fmodf(float noundef %45, float noundef %51) #27
  %55 = fsub float %45, %54
  br label %56

56:                                               ; preds = %10, %50, %53
  %57 = phi float [ -1.000000e+00, %10 ], [ %55, %53 ], [ %45, %50 ]
  %58 = fptosi float %57 to i32
  %59 = icmp ne i32 %58, -1
  %60 = icmp ne ptr %6, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 44
  %64 = load i32, ptr %63, align 8, !tbaa !144
  %65 = add nsw i32 %64, %58
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.StripElem, ptr %6, i64 %66
  br label %68

68:                                               ; preds = %62, %56, %2
  %69 = phi ptr [ %6, %2 ], [ %67, %62 ], [ null, %56 ]
  ret ptr %69
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_sequencer_evaluate_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = alloca [33 x ptr], align 16
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %3) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !97
  %9 = call fastcc i32 @evaluate_seq_frame_gen(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %1, i32 noundef 0)
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %3) #27
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @evaluate_seq_frame_gen(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 {
  %5 = alloca [33 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %5) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %64, %4
  %9 = phi i32 [ 0, %4 ], [ %65, %64 ]
  %10 = phi i32 [ 0, %4 ], [ %66, %64 ]
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %8
  %13 = icmp eq i32 %3, 0
  %14 = zext nneg i32 %10 to i64
  br label %69

15:                                               ; preds = %4, %64
  %16 = phi ptr [ %67, %64 ], [ %6, %4 ]
  %17 = phi i32 [ %66, %64 ], [ 0, %4 ]
  %18 = phi i32 [ %65, %64 ], [ 0, %4 ]
  %19 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !140
  %21 = icmp sgt i32 %20, %2
  br i1 %21, label %64, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !142
  %25 = icmp sgt i32 %24, %2
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !59
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 33
  %33 = load ptr, ptr %32, align 8, !tbaa !149
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %17, 1
  %37 = sext i32 %17 to i64
  %38 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %37
  store ptr %33, ptr %38, align 8, !tbaa !34
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %36, %35 ], [ %17, %31 ]
  %41 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 34
  %42 = load ptr, ptr %41, align 8, !tbaa !148
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = add nsw i32 %40, 1
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %46
  store ptr %42, ptr %47, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i32 [ %45, %44 ], [ %40, %39 ]
  %50 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 35
  %51 = load ptr, ptr %50, align 8, !tbaa !150
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = add nsw i32 %49, 1
  %55 = sext i32 %49 to i64
  %56 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %55
  store ptr %51, ptr %56, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %48, %53, %26
  %58 = phi i32 [ %54, %53 ], [ %49, %48 ], [ %17, %26 ]
  %59 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !162
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %0, i64 %61
  store ptr %16, ptr %62, align 8, !tbaa !34
  %63 = add nsw i32 %18, 1
  br label %64

64:                                               ; preds = %57, %22, %15
  %65 = phi i32 [ %63, %57 ], [ %18, %22 ], [ %18, %15 ]
  %66 = phi i32 [ %58, %57 ], [ %17, %22 ], [ %17, %15 ]
  %67 = load ptr, ptr %16, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %8, label %15, !llvm.loop !175

69:                                               ; preds = %12, %91
  %70 = phi i64 [ 0, %12 ], [ %92, %91 ]
  %71 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.Sequence, ptr %72, i64 0, i32 13
  %74 = load i32, ptr %73, align 8, !tbaa !162
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.Sequence, ptr %77, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !59
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  %84 = icmp slt i32 %74, %3
  %85 = or i1 %13, %84
  %86 = and i1 %83, %85
  br i1 %86, label %90, label %91

87:                                               ; preds = %69
  %88 = icmp slt i32 %74, %3
  %89 = or i1 %13, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79, %87
  store ptr null, ptr %76, align 8, !tbaa !34
  br label %91

91:                                               ; preds = %87, %79, %90
  %92 = add nuw nsw i64 %70, 1
  %93 = icmp eq i64 %92, %14
  br i1 %93, label %94, label %69, !llvm.loop !176

94:                                               ; preds = %91, %8
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %5) #27
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_proxy_rebuild_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Strip, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !151
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 56, ptr noundef nonnull @.str.2) #27
  %19 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %1, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %20 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.Strip, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.StripProxy, ptr %23, i64 0, i32 6
  %25 = load i16, ptr %24, align 2, !tbaa !177
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !178
  %28 = getelementptr inbounds %struct.StripProxy, ptr %23, i64 0, i32 5
  %29 = load i16, ptr %28, align 4, !tbaa !180
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 2
  store i32 %30, ptr %31, align 4, !tbaa !181
  %32 = getelementptr inbounds %struct.StripProxy, ptr %23, i64 0, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !182
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 3
  store i32 %34, ptr %35, align 8, !tbaa !183
  %36 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 4
  store ptr %0, ptr %36, align 8, !tbaa !184
  %37 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 5
  store ptr %1, ptr %37, align 8, !tbaa !185
  %38 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 7
  store ptr %2, ptr %38, align 8, !tbaa !186
  %39 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 6
  store ptr %19, ptr %39, align 8, !tbaa !187
  %40 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %52

43:                                               ; preds = %16
  tail call fastcc void @seq_open_anim_file(ptr noundef %19)
  %44 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 30
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %27, align 8, !tbaa !178
  %49 = load i32, ptr %31, align 4, !tbaa !181
  %50 = load i32, ptr %35, align 8, !tbaa !183
  %51 = tail call ptr @IMB_anim_index_rebuild_context(ptr noundef nonnull %45, i32 noundef %48, i32 noundef %49, i32 noundef %50) #27
  store ptr %51, ptr %18, align 8, !tbaa !188
  br label %52

52:                                               ; preds = %16, %47, %43, %11, %3, %7
  %53 = phi ptr [ null, %7 ], [ null, %3 ], [ null, %11 ], [ %18, %43 ], [ %18, %47 ], [ %18, %16 ]
  ret ptr %53
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @seq_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 36
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  br label %15

15:                                               ; preds = %13, %20
  %16 = phi ptr [ %11, %13 ], [ %21, %20 ]
  %17 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16, i32 noundef %3)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef nonnull %17) #27
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %16, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !189

23:                                               ; preds = %20, %9, %4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_open_anim_file(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #27
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.Strip, ptr %9, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Strip, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %10, ptr noundef %12) #27
  %13 = load ptr, ptr @G, align 8, !tbaa !154
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %14) #27
  %16 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !151
  %18 = shl i32 %17, 5
  %19 = and i32 %18, 512
  %20 = or disjoint i32 %19, 1
  %21 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 21
  %22 = load i16, ptr %21, align 2, !tbaa !156
  %23 = sext i16 %22 to i32
  %24 = load ptr, ptr %8, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 12
  %26 = call ptr @openanim(ptr noundef nonnull %2, i32 noundef %20, i32 noundef %23, ptr noundef nonnull %25) #27
  store ptr %26, ptr %4, align 8, !tbaa !58
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %7
  %29 = load ptr, ptr %8, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.Strip, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %16, align 8, !tbaa !151
  %35 = and i32 %34, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #27
  %38 = load ptr, ptr %30, align 8, !tbaa !53
  %39 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %38, i64 noundef 1024) #27
  %40 = load ptr, ptr @G, align 8, !tbaa !154
  %41 = getelementptr inbounds %struct.Main, ptr %40, i64 0, i32 2
  %42 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %41) #27
  %43 = load ptr, ptr %4, align 8, !tbaa !58
  call void @IMB_anim_set_index_dir(ptr noundef %43, ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #27
  br label %44

44:                                               ; preds = %33, %37, %28, %7, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #27
  ret void
}

declare ptr @IMB_anim_index_rebuild_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_proxy_rebuild(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SeqRenderData, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #27
  %6 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  %8 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !184
  %12 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load ptr, ptr %0, align 8, !tbaa !188
  %17 = icmp eq ptr %16, null
  br i1 %17, label %110, label %18

18:                                               ; preds = %15
  tail call void @IMB_anim_index_rebuild(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %2, ptr noundef %3) #27
  br label %110

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !151
  %22 = and i32 %21, 2129920
  %23 = icmp eq i32 %22, 32768
  br i1 %23, label %24, label %110

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 46
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 30
  %28 = load i16, ptr %27, align 2, !tbaa !192
  %29 = sitofp i16 %28 to float
  %30 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 33
  %31 = load i32, ptr %30, align 4, !tbaa !193
  %32 = sitofp i32 %31 to float
  %33 = fmul float %29, %32
  %34 = fdiv float %33, 1.000000e+02
  %35 = fadd float %34, 5.000000e-01
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 34
  %38 = load i32, ptr %37, align 8, !tbaa !194
  %39 = sitofp i32 %38 to float
  %40 = fmul float %29, %39
  %41 = fdiv float %40, 1.000000e+02
  %42 = fadd float %41, 5.000000e-01
  %43 = fptosi float %42 to i32
  store ptr %26, ptr %5, align 8, !tbaa.struct !195
  %44 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %11, ptr %44, align 8, !tbaa.struct !196
  %45 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %9, ptr %45, align 8, !tbaa.struct !197
  %46 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 %36, ptr %46, align 8, !tbaa.struct !198
  %47 = getelementptr inbounds i8, ptr %5, i64 28
  store i32 %43, ptr %47, align 4, !tbaa.struct !199
  %48 = getelementptr inbounds i8, ptr %5, i64 32
  store i32 100, ptr %48, align 8, !tbaa.struct !200
  %49 = getelementptr inbounds i8, ptr %5, i64 36
  %50 = getelementptr inbounds i8, ptr %5, i64 44
  %51 = getelementptr inbounds i8, ptr %5, i64 45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %49, i8 0, i64 10, i1 false)
  store i8 1, ptr %50, align 4, !tbaa !133
  store i8 1, ptr %51, align 1, !tbaa !134
  %52 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !136
  %56 = add nsw i32 %55, %53
  %57 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 16
  %58 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 12
  %59 = load i32, ptr %57, align 4, !tbaa !142
  %60 = load i32, ptr %58, align 4, !tbaa !138
  %61 = sub nsw i32 %59, %60
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %110

63:                                               ; preds = %24
  %64 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 2
  br label %71

65:                                               ; preds = %92
  %66 = add nsw i32 %72, 1
  %67 = load i32, ptr %57, align 4, !tbaa !142
  %68 = load i32, ptr %58, align 4, !tbaa !138
  %69 = sub nsw i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %110, !llvm.loop !201

71:                                               ; preds = %63, %65
  %72 = phi i32 [ %56, %63 ], [ %66, %65 ]
  %73 = load i32, ptr %64, align 4, !tbaa !181
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %72, i32 noundef 25)
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32, ptr %64, align 4, !tbaa !181
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %72, i32 noundef 50)
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, ptr %64, align 4, !tbaa !181
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %72, i32 noundef 75)
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, ptr %64, align 4, !tbaa !181
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %72, i32 noundef 100)
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, ptr %52, align 8, !tbaa !140
  %94 = load i32, ptr %54, align 8, !tbaa !136
  %95 = add i32 %93, %94
  %96 = sub i32 %72, %95
  %97 = sitofp i32 %96 to float
  %98 = load i32, ptr %57, align 4, !tbaa !142
  %99 = load i32, ptr %58, align 4, !tbaa !138
  %100 = add i32 %94, %93
  %101 = add i32 %100, %99
  %102 = sub i32 %98, %101
  %103 = sitofp i32 %102 to float
  %104 = fdiv float %97, %103
  store float %104, ptr %3, align 4, !tbaa !123
  store i16 1, ptr %2, align 2, !tbaa !104
  %105 = load i16, ptr %1, align 2, !tbaa !104
  %106 = icmp ne i16 %105, 0
  %107 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %108 = icmp ne i8 %107, 0
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %110, label %65

110:                                              ; preds = %92, %65, %24, %19, %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #27
  ret void
}

declare void @IMB_anim_index_rebuild(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_proxy_build_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %5) #27
  %6 = call fastcc zeroext i8 @seq_proxy_get_fname(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5), !range !202
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = sitofp i32 %2 to float
  %10 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %1, float noundef %9)
  %11 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !120
  %13 = mul nsw i32 %12, %3
  %14 = sdiv i32 %13, 100
  %15 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !121
  %17 = mul nsw i32 %16, %3
  %18 = sdiv i32 %17, 100
  %19 = icmp eq i32 %12, %14
  %20 = icmp eq i32 %16, %18
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %28, label %22

22:                                               ; preds = %8
  %23 = shl i32 %14, 16
  %24 = ashr exact i32 %23, 16
  %25 = shl i32 %18, 16
  %26 = ashr exact i32 %25, 16
  %27 = call ptr @IMB_scalefastImBuf(ptr noundef %10, i32 noundef %24, i32 noundef %26) #27
  br label %28

28:                                               ; preds = %8, %22
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.Strip, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.StripProxy, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 2, !tbaa !182
  %35 = sext i16 %34 to i32
  %36 = or i32 %35, 134217728
  %37 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 26
  store i32 %36, ptr %37, align 8, !tbaa !203
  %38 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 4
  %39 = load i8, ptr %38, align 8, !tbaa !204
  %40 = icmp eq i8 %39, 32
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i8 24, ptr %38, align 8, !tbaa !204
  br label %42

42:                                               ; preds = %41, %28
  call void @BLI_make_existing_file(ptr noundef nonnull %5) #27
  %43 = call signext i16 @IMB_saveiff(ptr noundef %10, ptr noundef nonnull %5, i32 noundef 73) #27
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @perror(ptr noundef nonnull %5) #29
  br label %46

46:                                               ; preds = %45, %42
  call void @IMB_freeImBuf(ptr noundef %10) #27
  br label %47

47:                                               ; preds = %4, %46
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %5) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_proxy_rebuild_finish(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  %8 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @IMB_close_anim_proxies(ptr noundef %9) #27
  %10 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !186
  %12 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  tail call void @IMB_close_anim_proxies(ptr noundef %13) #27
  %14 = load ptr, ptr %0, align 8, !tbaa !188
  %15 = zext i8 %1 to i16
  tail call void @IMB_anim_index_rebuild_finish(ptr noundef %14, i16 noundef signext %15) #27
  br label %16

16:                                               ; preds = %5, %2
  %17 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  tail call fastcc void @seq_free_sequence_recurse(ptr noundef %18)
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %0) #27
  ret void
}

declare void @IMB_close_anim_proxies(ptr noundef) local_unnamed_addr #2

declare void @IMB_anim_index_rebuild_finish(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_render_mask_input(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  switch i32 %1, label %26 [
    i32 0, label %7
    i32 1, label %23
  ]

7:                                                ; preds = %6
  %8 = icmp eq ptr %2, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %7
  %10 = sitofp i32 %4 to float
  %11 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %2, float noundef %10)
  %12 = icmp eq i8 %5, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  tail call void @IMB_float_from_rect(ptr noundef %11) #27
  br label %26

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !118
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  tail call void @IMB_rect_from_float(ptr noundef %11) #27
  br label %26

23:                                               ; preds = %6
  %24 = sitofp i32 %4 to float
  %25 = tail call fastcc ptr @seq_render_mask(ptr noundef %0, ptr noundef %3, float noundef %24, i8 noundef zeroext %5)
  br label %26

26:                                               ; preds = %6, %23, %7, %18, %22, %13, %17
  %27 = phi ptr [ %11, %13 ], [ %11, %17 ], [ %11, %18 ], [ %11, %22 ], [ null, %7 ], [ %25, %23 ], [ null, %6 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @seq_render_strip(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.RenderEffectInitData, align 8
  %5 = alloca %struct.MovieClipUser, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca %struct.RenderResult, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.SeqEffectHandle, align 8
  %15 = alloca [3 x ptr], align 16
  %16 = alloca [3 x ptr], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1792 x i8], align 16
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !139
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !141
  %23 = add i32 %20, -1
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %31 = load i32, ptr %30, align 4, !tbaa !142
  br label %32

32:                                               ; preds = %29, %3
  %33 = phi i32 [ %31, %29 ], [ %24, %3 ]
  %34 = icmp slt i32 %33, %20
  br i1 %34, label %72, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !151
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  %40 = sitofp i32 %20 to float
  %41 = fcmp ult float %40, %2
  br i1 %39, label %51, label %42

42:                                               ; preds = %35
  br i1 %41, label %46, label %43

43:                                               ; preds = %42
  %44 = sub nsw i32 %33, %20
  %45 = sitofp i32 %44 to float
  br label %60

46:                                               ; preds = %42
  %47 = sitofp i32 %33 to float
  %48 = fcmp ugt float %47, %2
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = fsub float %47, %2
  br label %60

51:                                               ; preds = %35
  br i1 %41, label %52, label %60

52:                                               ; preds = %51
  %53 = sitofp i32 %33 to float
  %54 = fcmp ugt float %53, %2
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = sub nsw i32 %33, %20
  %57 = sitofp i32 %56 to float
  br label %60

58:                                               ; preds = %52
  %59 = fsub float %2, %40
  br label %60

60:                                               ; preds = %58, %55, %51, %49, %46, %43
  %61 = phi float [ %45, %43 ], [ %50, %49 ], [ %57, %55 ], [ %59, %58 ], [ 0.000000e+00, %46 ], [ 0.000000e+00, %51 ]
  %62 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 42
  %63 = load float, ptr %62, align 4, !tbaa !174
  %64 = fcmp olt float %63, 1.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store float 1.000000e+00, ptr %62, align 4, !tbaa !174
  br label %66

66:                                               ; preds = %65, %60
  %67 = load float, ptr %62, align 4, !tbaa !174
  %68 = fcmp ogt float %67, 1.000000e+00
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = tail call float @fmodf(float noundef %61, float noundef %67) #27
  %71 = fsub float %61, %70
  br label %72

72:                                               ; preds = %32, %66, %69
  %73 = phi float [ -1.000000e+00, %32 ], [ %71, %69 ], [ %61, %66 ]
  %74 = load i32, ptr %25, align 4, !tbaa !59
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  %77 = icmp eq i32 %74, 29
  %78 = or i1 %77, %76
  %79 = select i1 %78, i32 %74, i32 8
  switch i32 %79, label %80 [
    i32 3, label %83
    i32 0, label %83
  ]

80:                                               ; preds = %72
  %81 = icmp ne i32 %79, 2
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %72, %72, %80
  %84 = phi i8 [ 0, %72 ], [ %82, %80 ], [ 0, %72 ]
  %85 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef 0) #27
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %1039

87:                                               ; preds = %83
  %88 = fcmp oeq float %73, 0.000000e+00
  br i1 %88, label %94, label %89

89:                                               ; preds = %87
  %90 = load i32, ptr %21, align 8, !tbaa !141
  %91 = add nsw i32 %90, -1
  %92 = sitofp i32 %91 to float
  %93 = fcmp oeq float %73, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89, %87
  %95 = phi i32 [ 2, %87 ], [ 3, %89 ]
  %96 = load i32, ptr %19, align 4, !tbaa !139
  %97 = sitofp i32 %96 to float
  %98 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %1, float noundef %97, i32 noundef %95) #27
  br label %99

99:                                               ; preds = %94, %89
  %100 = phi ptr [ null, %89 ], [ %98, %94 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %100) #27
  tail call void @IMB_freeImBuf(ptr noundef nonnull %100) #27
  br label %104

104:                                              ; preds = %99, %102
  %105 = phi ptr [ %103, %102 ], [ null, %99 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %1003

107:                                              ; preds = %104
  %108 = tail call ptr @BKE_sequencer_preprocessed_cache_get(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef 0) #27
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %1003

110:                                              ; preds = %107
  %111 = load i32, ptr %25, align 4, !tbaa !59
  %112 = icmp eq i32 %111, 6
  br i1 %112, label %262, label %113

113:                                              ; preds = %110
  %114 = fptosi float %2 to i32
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %18) #27
  %115 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %116 = load i32, ptr %115, align 8, !tbaa !129
  %117 = icmp sgt i32 %116, 99
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = icmp eq i32 %116, 99
  br i1 %119, label %125, label %120

120:                                              ; preds = %118
  %121 = icmp sgt i32 %116, 74
  br i1 %121, label %125, label %122

122:                                              ; preds = %120
  %123 = icmp sgt i32 %116, 49
  %124 = select i1 %123, i32 2, i32 1
  br label %125

125:                                              ; preds = %122, %120, %118, %113
  %126 = phi i32 [ 0, %113 ], [ 8, %118 ], [ 4, %120 ], [ %124, %122 ]
  %127 = icmp eq i32 %116, 99
  %128 = select i1 %127, i32 100, i32 %116
  %129 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %130 = load i32, ptr %129, align 8, !tbaa !151
  %131 = and i32 %130, 32768
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %258, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %135 = icmp eq i32 %126, 0
  br i1 %135, label %258, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %134, align 8, !tbaa !48
  %138 = getelementptr inbounds %struct.Strip, ptr %137, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !53
  %140 = getelementptr inbounds %struct.StripProxy, ptr %139, i64 0, i32 5
  %141 = load i16, ptr %140, align 4, !tbaa !180
  %142 = zext i16 %141 to i32
  %143 = and i32 %126, %142
  %144 = icmp eq i32 %143, %126
  br i1 %144, label %145, label %258

145:                                              ; preds = %136
  %146 = and i32 %130, 2097152
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %241, label %148

148:                                              ; preds = %145
  %149 = sitofp i32 %114 to float
  %150 = load i32, ptr %19, align 4, !tbaa !139
  %151 = load i32, ptr %21, align 8, !tbaa !141
  %152 = add i32 %150, -1
  %153 = add i32 %152, %151
  %154 = and i32 %111, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %158 = load i32, ptr %157, align 4, !tbaa !142
  br label %159

159:                                              ; preds = %156, %148
  %160 = phi i32 [ %158, %156 ], [ %153, %148 ]
  %161 = icmp slt i32 %160, %150
  br i1 %161, label %197, label %162

162:                                              ; preds = %159
  %163 = and i32 %130, 128
  %164 = icmp eq i32 %163, 0
  %165 = sitofp i32 %150 to float
  %166 = fcmp ult float %165, %149
  br i1 %164, label %176, label %167

167:                                              ; preds = %162
  br i1 %166, label %171, label %168

168:                                              ; preds = %167
  %169 = sub nsw i32 %160, %150
  %170 = sitofp i32 %169 to float
  br label %185

171:                                              ; preds = %167
  %172 = sitofp i32 %160 to float
  %173 = fcmp ugt float %172, %149
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = fsub float %172, %149
  br label %185

176:                                              ; preds = %162
  br i1 %166, label %177, label %185

177:                                              ; preds = %176
  %178 = sitofp i32 %160 to float
  %179 = fcmp ugt float %178, %149
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = sub nsw i32 %160, %150
  %182 = sitofp i32 %181 to float
  br label %185

183:                                              ; preds = %177
  %184 = fsub float %149, %165
  br label %185

185:                                              ; preds = %183, %180, %176, %174, %171, %168
  %186 = phi float [ %170, %168 ], [ %175, %174 ], [ %182, %180 ], [ %184, %183 ], [ 0.000000e+00, %171 ], [ 0.000000e+00, %176 ]
  %187 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 42
  %188 = load float, ptr %187, align 4, !tbaa !174
  %189 = fcmp olt float %188, 1.000000e+00
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store float 1.000000e+00, ptr %187, align 4, !tbaa !174
  br label %191

191:                                              ; preds = %190, %185
  %192 = load float, ptr %187, align 4, !tbaa !174
  %193 = fcmp ogt float %192, 1.000000e+00
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = tail call float @fmodf(float noundef %186, float noundef %192) #27
  %196 = fsub float %186, %195
  br label %197

197:                                              ; preds = %159, %191, %194
  %198 = phi float [ -1.000000e+00, %159 ], [ %196, %194 ], [ %186, %191 ]
  %199 = fptosi float %198 to i32
  %200 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %201 = load i32, ptr %200, align 8, !tbaa !144
  %202 = add nsw i32 %201, %199
  %203 = load ptr, ptr %134, align 8, !tbaa !48
  %204 = getelementptr inbounds %struct.Strip, ptr %203, i64 0, i32 8
  %205 = load ptr, ptr %204, align 8, !tbaa !53
  %206 = getelementptr inbounds %struct.StripProxy, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !54
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %218

209:                                              ; preds = %197
  %210 = call fastcc zeroext i8 @seq_proxy_get_fname(ptr noundef %1, i32 noundef %114, i32 noundef %128, ptr noundef nonnull %18), !range !202
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %258, label %212

212:                                              ; preds = %209
  %213 = call ptr @openanim(ptr noundef nonnull %18, i32 noundef 1, i32 noundef 0, ptr noundef null) #27
  %214 = load ptr, ptr %134, align 8, !tbaa !48
  %215 = getelementptr inbounds %struct.Strip, ptr %214, i64 0, i32 8
  %216 = load ptr, ptr %215, align 8, !tbaa !53
  %217 = getelementptr inbounds %struct.StripProxy, ptr %216, i64 0, i32 2
  store ptr %213, ptr %217, align 8, !tbaa !54
  br label %218

218:                                              ; preds = %212, %197
  %219 = load ptr, ptr %134, align 8, !tbaa !48
  %220 = getelementptr inbounds %struct.Strip, ptr %219, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !53
  %222 = getelementptr inbounds %struct.StripProxy, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !54
  %224 = icmp eq ptr %223, null
  br i1 %224, label %258, label %225

225:                                              ; preds = %218
  call fastcc void @seq_open_anim_file(ptr noundef %1)
  %226 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %227 = load ptr, ptr %226, align 8, !tbaa !58
  %228 = load ptr, ptr %134, align 8, !tbaa !48
  %229 = getelementptr inbounds %struct.Strip, ptr %228, i64 0, i32 8
  %230 = load ptr, ptr %229, align 8, !tbaa !53
  %231 = getelementptr inbounds %struct.StripProxy, ptr %230, i64 0, i32 3
  %232 = load i16, ptr %231, align 8, !tbaa !157
  %233 = sext i16 %232 to i32
  %234 = call i32 @IMB_anim_index_get_frame_index(ptr noundef %227, i32 noundef %233, i32 noundef %202) #27
  %235 = load ptr, ptr %134, align 8, !tbaa !48
  %236 = getelementptr inbounds %struct.Strip, ptr %235, i64 0, i32 8
  %237 = load ptr, ptr %236, align 8, !tbaa !53
  %238 = getelementptr inbounds %struct.StripProxy, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !54
  %240 = call ptr @IMB_anim_absolute(ptr noundef %239, i32 noundef %234, i32 noundef 0, i32 noundef 0) #27
  br label %258

241:                                              ; preds = %145
  %242 = call fastcc zeroext i8 @seq_proxy_get_fname(ptr noundef %1, i32 noundef %114, i32 noundef %128, ptr noundef nonnull %18), !range !202
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %258, label %244

244:                                              ; preds = %241
  %245 = call i32 @BLI_exists(ptr noundef nonnull %18) #27
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %244
  %248 = call ptr @IMB_loadiffname(ptr noundef nonnull %18, i32 noundef 1, ptr noundef null) #27
  %249 = icmp eq ptr %248, null
  br i1 %249, label %258, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.ImBuf, ptr %248, i64 0, i32 9
  %252 = load ptr, ptr %251, align 8, !tbaa !115
  %253 = icmp eq ptr %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !126
  %257 = getelementptr inbounds %struct.Scene, ptr %256, i64 0, i32 46
  call void @IMB_colormanagement_assign_float_colorspace(ptr noundef nonnull %248, ptr noundef nonnull %257) #27
  br label %258

258:                                              ; preds = %125, %133, %136, %209, %218, %225, %241, %244, %247, %250, %254
  %259 = phi ptr [ null, %125 ], [ null, %136 ], [ null, %133 ], [ %240, %225 ], [ null, %209 ], [ null, %218 ], [ null, %241 ], [ %248, %247 ], [ null, %244 ], [ %248, %250 ], [ %248, %254 ]
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %18) #27
  %260 = icmp ne ptr %259, null
  %261 = zext i1 %260 to i8
  br label %262

262:                                              ; preds = %258, %110
  %263 = phi i8 [ %261, %258 ], [ 0, %110 ]
  %264 = phi ptr [ %259, %258 ], [ null, %110 ]
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %991

266:                                              ; preds = %262
  %267 = load i32, ptr %19, align 4, !tbaa !139
  %268 = load i32, ptr %21, align 8, !tbaa !141
  %269 = add i32 %267, -1
  %270 = add i32 %269, %268
  %271 = load i32, ptr %25, align 4, !tbaa !59
  %272 = and i32 %271, 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %266
  %275 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %276 = load i32, ptr %275, align 4, !tbaa !142
  br label %277

277:                                              ; preds = %274, %266
  %278 = phi i32 [ %276, %274 ], [ %270, %266 ]
  %279 = icmp slt i32 %278, %267
  br i1 %279, label %317, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %282 = load i32, ptr %281, align 8, !tbaa !151
  %283 = and i32 %282, 128
  %284 = icmp eq i32 %283, 0
  %285 = sitofp i32 %267 to float
  %286 = fcmp ult float %285, %2
  br i1 %284, label %296, label %287

287:                                              ; preds = %280
  br i1 %286, label %291, label %288

288:                                              ; preds = %287
  %289 = sub nsw i32 %278, %267
  %290 = sitofp i32 %289 to float
  br label %305

291:                                              ; preds = %287
  %292 = sitofp i32 %278 to float
  %293 = fcmp ugt float %292, %2
  br i1 %293, label %294, label %305

294:                                              ; preds = %291
  %295 = fsub float %292, %2
  br label %305

296:                                              ; preds = %280
  br i1 %286, label %297, label %305

297:                                              ; preds = %296
  %298 = sitofp i32 %278 to float
  %299 = fcmp ugt float %298, %2
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = sub nsw i32 %278, %267
  %302 = sitofp i32 %301 to float
  br label %305

303:                                              ; preds = %297
  %304 = fsub float %2, %285
  br label %305

305:                                              ; preds = %303, %300, %296, %294, %291, %288
  %306 = phi float [ %290, %288 ], [ %295, %294 ], [ %302, %300 ], [ %304, %303 ], [ 0.000000e+00, %291 ], [ 0.000000e+00, %296 ]
  %307 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 42
  %308 = load float, ptr %307, align 4, !tbaa !174
  %309 = fcmp olt float %308, 1.000000e+00
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  store float 1.000000e+00, ptr %307, align 4, !tbaa !174
  br label %311

311:                                              ; preds = %310, %305
  %312 = load float, ptr %307, align 4, !tbaa !174
  %313 = fcmp ogt float %312, 1.000000e+00
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = call float @fmodf(float noundef %306, float noundef %312) #27
  %316 = fsub float %306, %315
  br label %317

317:                                              ; preds = %277, %311, %314
  %318 = phi float [ -1.000000e+00, %277 ], [ %316, %314 ], [ %306, %311 ]
  %319 = load i32, ptr %25, align 4, !tbaa !59
  %320 = and i32 %319, 8
  %321 = icmp eq i32 %320, 0
  %322 = icmp eq i32 %319, 29
  %323 = or i1 %322, %321
  %324 = select i1 %323, i32 %319, i32 8
  %325 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  %326 = load i8, ptr %325, align 1, !tbaa !134
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %356

328:                                              ; preds = %317
  %329 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %330 = load i32, ptr %329, align 8, !tbaa !151
  %331 = and i32 %330, 210960
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %356

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %335 = load float, ptr %334, align 4, !tbaa !205
  %336 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %337 = load i32, ptr %336, align 8, !tbaa !206
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %341 = load float, ptr %340, align 4, !tbaa !207
  %342 = fdiv float %341, 1.000000e+02
  %343 = fmul float %335, %342
  br label %344

344:                                              ; preds = %339, %333
  %345 = phi float [ %343, %339 ], [ %335, %333 ]
  %346 = fcmp une float %345, 1.000000e+00
  br i1 %346, label %356, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %349 = load float, ptr %348, align 8, !tbaa !208
  %350 = fcmp une float %349, 1.000000e+00
  br i1 %350, label %356, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %353 = load ptr, ptr %352, align 8, !tbaa !209
  %354 = icmp ne ptr %353, null
  %355 = zext i1 %354 to i8
  br label %356

356:                                              ; preds = %351, %347, %344, %328, %317
  %357 = phi i8 [ 0, %317 ], [ 1, %328 ], [ 1, %344 ], [ 1, %347 ], [ %355, %351 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %17) #27
  switch i32 %324, label %979 [
    i32 1, label %358
    i32 29, label %374
    i32 8, label %395
    i32 0, label %602
    i32 3, label %639
    i32 2, label %701
    i32 6, label %908
    i32 7, label %970
  ]

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %360 = load ptr, ptr %359, align 8, !tbaa !38
  %361 = icmp eq ptr %360, null
  br i1 %361, label %367, label %362

362:                                              ; preds = %358
  %363 = load i32, ptr %19, align 4, !tbaa !139
  %364 = sitofp i32 %363 to float
  %365 = fadd float %318, %364
  %366 = call fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr noundef nonnull %359, float noundef %365, i32 noundef 0)
  br label %367

367:                                              ; preds = %362, %358
  %368 = phi ptr [ %366, %362 ], [ null, %358 ]
  %369 = icmp eq ptr %368, null
  br i1 %369, label %979, label %370

370:                                              ; preds = %367
  %371 = icmp eq i8 %357, 0
  br i1 %371, label %979, label %372

372:                                              ; preds = %370
  %373 = call ptr @IMB_dupImBuf(ptr noundef nonnull %368) #27
  call void @IMB_freeImBuf(ptr noundef nonnull %368) #27
  br label %979

374:                                              ; preds = %356
  %375 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %376 = load ptr, ptr %375, align 8, !tbaa !96
  %377 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !126
  call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %378, ptr noundef %1, i8 noundef zeroext 0) #27
  %379 = load i32, ptr %19, align 4, !tbaa !139
  %380 = sitofp i32 %379 to float
  %381 = load ptr, ptr %376, align 8, !tbaa !210
  %382 = fptosi float %318 to i32
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, ptr %381, i64 %383
  %385 = load float, ptr %384, align 4, !tbaa !123
  %386 = fadd float %385, %380
  %387 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %388 = load ptr, ptr %387, align 8, !tbaa !149
  %389 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %388, float noundef %386)
  %390 = icmp eq ptr %389, null
  br i1 %390, label %979, label %391

391:                                              ; preds = %374
  %392 = icmp eq i8 %357, 0
  br i1 %392, label %979, label %393

393:                                              ; preds = %391
  %394 = call ptr @IMB_dupImBuf(ptr noundef nonnull %389) #27
  call void @IMB_freeImBuf(ptr noundef nonnull %389) #27
  br label %979

395:                                              ; preds = %356
  %396 = load i32, ptr %19, align 4, !tbaa !139
  %397 = sitofp i32 %396 to float
  %398 = fadd float %318, %397
  %399 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %14) #27
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %14, ptr noundef %1) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #27
  %401 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 2
  %402 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 1
  %403 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %404 = load ptr, ptr %403, align 8, !tbaa !149
  store ptr %404, ptr %16, align 16, !tbaa !34
  %405 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %406 = load ptr, ptr %405, align 8, !tbaa !148
  %407 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 1
  store ptr %406, ptr %407, align 8, !tbaa !34
  %408 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %409 = load ptr, ptr %408, align 8, !tbaa !150
  %410 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 2
  store ptr %409, ptr %410, align 16, !tbaa !34
  %411 = getelementptr inbounds %struct.SeqEffectHandle, ptr %14, i64 0, i32 10
  %412 = load ptr, ptr %411, align 8, !tbaa !212
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %422

414:                                              ; preds = %395
  %415 = getelementptr inbounds %struct.SeqEffectHandle, ptr %14, i64 0, i32 12
  %416 = load ptr, ptr %415, align 8, !tbaa !213
  %417 = icmp ne ptr %416, null
  %418 = getelementptr inbounds %struct.SeqEffectHandle, ptr %14, i64 0, i32 11
  %419 = load ptr, ptr %418, align 8
  %420 = icmp ne ptr %419, null
  %421 = select i1 %417, i1 %420, i1 false
  br i1 %421, label %422, label %594

422:                                              ; preds = %414, %395
  %423 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %424 = load i32, ptr %423, align 8, !tbaa !151
  %425 = and i32 %424, 4194304
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %436, label %427

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.SeqEffectHandle, ptr %14, i64 0, i32 9
  %429 = load ptr, ptr %428, align 8, !tbaa !214
  call void %429(ptr noundef %1, float noundef %398, ptr noundef nonnull %12, ptr noundef nonnull %13) #27
  %430 = getelementptr inbounds %struct.Scene, ptr %400, i64 0, i32 22, i32 47
  %431 = load i32, ptr %430, align 8, !tbaa !215
  %432 = and i32 %431, 64
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %451

434:                                              ; preds = %427
  %435 = load float, ptr %12, align 4, !tbaa !123
  store float %435, ptr %13, align 4, !tbaa !123
  br label %451

436:                                              ; preds = %422
  %437 = call ptr @id_data_find_fcurve(ptr noundef %400, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef null) #27
  %438 = icmp eq ptr %437, null
  br i1 %438, label %448, label %439

439:                                              ; preds = %436
  %440 = call float @evaluate_fcurve(ptr noundef nonnull %437, float noundef %398) #27
  store float %440, ptr %13, align 4, !tbaa !123
  store float %440, ptr %12, align 4, !tbaa !123
  %441 = getelementptr inbounds %struct.Scene, ptr %400, i64 0, i32 22, i32 47
  %442 = load i32, ptr %441, align 8, !tbaa !215
  %443 = and i32 %442, 64
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %451, label %445

445:                                              ; preds = %439
  %446 = fadd float %398, 5.000000e-01
  %447 = call float @evaluate_fcurve(ptr noundef nonnull %437, float noundef %446) #27
  store float %447, ptr %13, align 4, !tbaa !123
  br label %451

448:                                              ; preds = %436
  %449 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 31
  %450 = load float, ptr %449, align 8, !tbaa !216
  store float %450, ptr %13, align 4, !tbaa !123
  store float %450, ptr %12, align 4, !tbaa !123
  br label %451

451:                                              ; preds = %448, %445, %439, %434, %427
  %452 = getelementptr inbounds %struct.SeqEffectHandle, ptr %14, i64 0, i32 7
  %453 = load ptr, ptr %452, align 8, !tbaa !217
  %454 = load float, ptr %12, align 4, !tbaa !123
  %455 = load float, ptr %13, align 4, !tbaa !123
  %456 = call i32 %453(ptr noundef %1, float noundef %454, float noundef %455) #27
  switch i32 %456, label %584 [
    i32 -1, label %457
    i32 0, label %462
    i32 1, label %506
    i32 2, label %545
  ]

457:                                              ; preds = %451
  %458 = load ptr, ptr %411, align 8, !tbaa !212
  %459 = load float, ptr %12, align 4, !tbaa !123
  %460 = load float, ptr %13, align 4, !tbaa !123
  %461 = call ptr %458(ptr noundef %0, ptr noundef %1, float noundef %398, float noundef %459, float noundef %460, ptr noundef null, ptr noundef null, ptr noundef null) #27
  br label %584

462:                                              ; preds = %451, %470
  %463 = phi i64 [ %471, %470 ], [ 0, %451 ]
  %464 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !34
  %466 = icmp eq ptr %465, null
  br i1 %466, label %470, label %467

467:                                              ; preds = %462
  %468 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %465, float noundef %398)
  %469 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 %463
  store ptr %468, ptr %469, align 8, !tbaa !34
  br label %470

470:                                              ; preds = %467, %462
  %471 = add nuw nsw i64 %463, 1
  %472 = icmp eq i64 %471, 3
  br i1 %472, label %473, label %462, !llvm.loop !218

473:                                              ; preds = %470
  %474 = load ptr, ptr %15, align 16, !tbaa !34
  %475 = icmp ne ptr %474, null
  %476 = load ptr, ptr %402, align 8
  %477 = icmp ne ptr %476, null
  %478 = select i1 %475, i1 %477, i1 false
  br i1 %478, label %479, label %584

479:                                              ; preds = %473
  %480 = load i8, ptr %14, align 8, !tbaa !219
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %500, label %482

482:                                              ; preds = %479
  %483 = load float, ptr %12, align 4, !tbaa !123
  %484 = load float, ptr %13, align 4, !tbaa !123
  %485 = load ptr, ptr %401, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #27
  %486 = getelementptr inbounds %struct.SeqEffectHandle, ptr %14, i64 0, i32 11
  %487 = load ptr, ptr %486, align 8, !tbaa !220
  %488 = call ptr %487(ptr noundef %0, ptr noundef nonnull %474, ptr noundef nonnull %476, ptr noundef %485) #27
  store ptr %14, ptr %4, align 8, !tbaa !221
  %489 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 1
  store ptr %0, ptr %489, align 8, !tbaa !223
  %490 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 2
  store ptr %1, ptr %490, align 8, !tbaa !224
  %491 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 3
  store float %398, ptr %491, align 8, !tbaa !225
  %492 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 4
  store float %483, ptr %492, align 4, !tbaa !226
  %493 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 5
  store float %484, ptr %493, align 8, !tbaa !227
  %494 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 6
  store ptr %474, ptr %494, align 8, !tbaa !228
  %495 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 7
  store ptr %476, ptr %495, align 8, !tbaa !229
  %496 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 8
  store ptr %485, ptr %496, align 8, !tbaa !230
  %497 = getelementptr inbounds %struct.RenderEffectInitData, ptr %4, i64 0, i32 9
  store ptr %488, ptr %497, align 8, !tbaa !231
  %498 = getelementptr inbounds %struct.ImBuf, ptr %488, i64 0, i32 3
  %499 = load i32, ptr %498, align 4, !tbaa !121
  call void @IMB_processor_apply_threaded(i32 noundef %499, i32 noundef 80, ptr noundef nonnull %4, ptr noundef nonnull @render_effect_execute_init_handle, ptr noundef nonnull @render_effect_execute_do_thread) #27
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #27
  br label %584

500:                                              ; preds = %479
  %501 = load ptr, ptr %411, align 8, !tbaa !212
  %502 = load float, ptr %12, align 4, !tbaa !123
  %503 = load float, ptr %13, align 4, !tbaa !123
  %504 = load ptr, ptr %401, align 16, !tbaa !34
  %505 = call ptr %501(ptr noundef %0, ptr noundef %1, float noundef %398, float noundef %502, float noundef %503, ptr noundef nonnull %474, ptr noundef nonnull %476, ptr noundef %504) #27
  br label %584

506:                                              ; preds = %451
  %507 = icmp eq ptr %404, null
  br i1 %507, label %510, label %508

508:                                              ; preds = %506
  %509 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %404, float noundef %398)
  store ptr %509, ptr %15, align 16, !tbaa !34
  br label %510

510:                                              ; preds = %508, %506
  %511 = load ptr, ptr %15, align 16, !tbaa !34
  %512 = icmp eq ptr %511, null
  br i1 %512, label %584, label %513

513:                                              ; preds = %510
  %514 = load i8, ptr %325, align 1, !tbaa !134
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %516, label %544

516:                                              ; preds = %513
  %517 = load i32, ptr %423, align 8, !tbaa !151
  %518 = and i32 %517, 210960
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %542

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %522 = load float, ptr %521, align 4, !tbaa !205
  %523 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %524 = load i32, ptr %523, align 8, !tbaa !206
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %520
  %527 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %528 = load float, ptr %527, align 4, !tbaa !207
  %529 = fdiv float %528, 1.000000e+02
  %530 = fmul float %522, %529
  br label %531

531:                                              ; preds = %526, %520
  %532 = phi float [ %530, %526 ], [ %522, %520 ]
  %533 = fcmp une float %532, 1.000000e+00
  br i1 %533, label %542, label %534

534:                                              ; preds = %531
  %535 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %536 = load float, ptr %535, align 8, !tbaa !208
  %537 = fcmp une float %536, 1.000000e+00
  br i1 %537, label %542, label %538

538:                                              ; preds = %534
  %539 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %540 = load ptr, ptr %539, align 8, !tbaa !209
  %541 = icmp eq ptr %540, null
  br i1 %541, label %544, label %542

542:                                              ; preds = %538, %534, %531, %516
  %543 = call ptr @IMB_dupImBuf(ptr noundef nonnull %511) #27
  br label %584

544:                                              ; preds = %538, %513
  call void @IMB_refImBuf(ptr noundef nonnull %511) #27
  br label %584

545:                                              ; preds = %451
  %546 = icmp eq ptr %406, null
  br i1 %546, label %549, label %547

547:                                              ; preds = %545
  %548 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %406, float noundef %398)
  store ptr %548, ptr %402, align 8, !tbaa !34
  br label %549

549:                                              ; preds = %547, %545
  %550 = load ptr, ptr %402, align 8, !tbaa !34
  %551 = icmp eq ptr %550, null
  br i1 %551, label %584, label %552

552:                                              ; preds = %549
  %553 = load i8, ptr %325, align 1, !tbaa !134
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %555, label %583

555:                                              ; preds = %552
  %556 = load i32, ptr %423, align 8, !tbaa !151
  %557 = and i32 %556, 210960
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %581

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %561 = load float, ptr %560, align 4, !tbaa !205
  %562 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %563 = load i32, ptr %562, align 8, !tbaa !206
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %559
  %566 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %567 = load float, ptr %566, align 4, !tbaa !207
  %568 = fdiv float %567, 1.000000e+02
  %569 = fmul float %561, %568
  br label %570

570:                                              ; preds = %565, %559
  %571 = phi float [ %569, %565 ], [ %561, %559 ]
  %572 = fcmp une float %571, 1.000000e+00
  br i1 %572, label %581, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %575 = load float, ptr %574, align 8, !tbaa !208
  %576 = fcmp une float %575, 1.000000e+00
  br i1 %576, label %581, label %577

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %579 = load ptr, ptr %578, align 8, !tbaa !209
  %580 = icmp eq ptr %579, null
  br i1 %580, label %583, label %581

581:                                              ; preds = %577, %573, %570, %555
  %582 = call ptr @IMB_dupImBuf(ptr noundef nonnull %550) #27
  br label %584

583:                                              ; preds = %577, %552
  call void @IMB_refImBuf(ptr noundef nonnull %550) #27
  br label %584

584:                                              ; preds = %583, %581, %549, %544, %542, %510, %500, %482, %473, %457, %451
  %585 = phi ptr [ null, %451 ], [ %582, %581 ], [ %550, %583 ], [ null, %549 ], [ %543, %542 ], [ %511, %544 ], [ null, %510 ], [ %488, %482 ], [ %505, %500 ], [ null, %473 ], [ %461, %457 ]
  br label %586

586:                                              ; preds = %584, %586
  %587 = phi i64 [ 0, %584 ], [ %590, %586 ]
  %588 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !34
  call void @IMB_freeImBuf(ptr noundef %589) #27
  %590 = add nuw nsw i64 %587, 1
  %591 = icmp eq i64 %590, 3
  br i1 %591, label %592, label %586, !llvm.loop !232

592:                                              ; preds = %586
  %593 = icmp eq ptr %585, null
  br i1 %593, label %594, label %600

594:                                              ; preds = %592, %414
  %595 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %596 = load i32, ptr %595, align 8, !tbaa !127
  %597 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %598 = load i32, ptr %597, align 4, !tbaa !128
  %599 = call ptr @IMB_allocImBuf(i32 noundef %596, i32 noundef %598, i8 noundef zeroext 32, i32 noundef 1) #27
  br label %600

600:                                              ; preds = %594, %592
  %601 = phi ptr [ %585, %592 ], [ %599, %594 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  br label %979

602:                                              ; preds = %356
  %603 = fptosi float %2 to i32
  %604 = call ptr @BKE_sequencer_give_stripelem(ptr noundef %1, i32 noundef %603)
  %605 = icmp eq ptr %604, null
  br i1 %605, label %979, label %606

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %608 = load ptr, ptr %607, align 8, !tbaa !48
  %609 = getelementptr inbounds %struct.Strip, ptr %608, i64 0, i32 7
  call void @BLI_join_dirfile(ptr noundef nonnull %17, i64 noundef 1024, ptr noundef nonnull %609, ptr noundef nonnull %604) #27
  %610 = load ptr, ptr @G, align 8, !tbaa !154
  %611 = getelementptr inbounds %struct.Main, ptr %610, i64 0, i32 2
  %612 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %17, ptr noundef nonnull %611) #27
  %613 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 49
  %614 = load i8, ptr %613, align 4, !tbaa !233
  %615 = icmp eq i8 %614, 1
  %616 = select i1 %615, i32 4097, i32 1
  %617 = load ptr, ptr %607, align 8, !tbaa !48
  %618 = getelementptr inbounds %struct.Strip, ptr %617, i64 0, i32 12
  %619 = call ptr @IMB_loadiffname(ptr noundef nonnull %17, i32 noundef %616, ptr noundef nonnull %618) #27
  %620 = icmp eq ptr %619, null
  br i1 %620, label %979, label %621

621:                                              ; preds = %606
  %622 = getelementptr inbounds %struct.ImBuf, ptr %619, i64 0, i32 9
  %623 = load ptr, ptr %622, align 8, !tbaa !115
  %624 = icmp eq ptr %623, null
  br i1 %624, label %630, label %625

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.ImBuf, ptr %619, i64 0, i32 8
  %627 = load ptr, ptr %626, align 8, !tbaa !118
  %628 = icmp eq ptr %627, null
  br i1 %628, label %630, label %629

629:                                              ; preds = %625
  call void @imb_freerectImBuf(ptr noundef nonnull %619) #27
  br label %630

630:                                              ; preds = %629, %625, %621
  %631 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %632 = load ptr, ptr %631, align 8, !tbaa !126
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %632, ptr noundef nonnull %619, i8 noundef zeroext 0)
  call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %318, ptr noundef nonnull %619)
  %633 = getelementptr inbounds %struct.ImBuf, ptr %619, i64 0, i32 2
  %634 = load i32, ptr %633, align 8, !tbaa !120
  %635 = getelementptr inbounds %struct.StripElem, ptr %604, i64 0, i32 1
  store i32 %634, ptr %635, align 4, !tbaa !234
  %636 = getelementptr inbounds %struct.ImBuf, ptr %619, i64 0, i32 3
  %637 = load i32, ptr %636, align 4, !tbaa !121
  %638 = getelementptr inbounds %struct.StripElem, ptr %604, i64 0, i32 2
  store i32 %637, ptr %638, align 4, !tbaa !236
  br label %979

639:                                              ; preds = %356
  call fastcc void @seq_open_anim_file(ptr noundef %1)
  %640 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %641 = load ptr, ptr %640, align 8, !tbaa !58
  %642 = icmp eq ptr %641, null
  br i1 %642, label %699, label %643

643:                                              ; preds = %639
  %644 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 20
  %645 = load i16, ptr %644, align 4, !tbaa !158
  %646 = sext i16 %645 to i32
  call void @IMB_anim_set_preseek(ptr noundef nonnull %641, i32 noundef %646) #27
  %647 = load ptr, ptr %640, align 8, !tbaa !58
  %648 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %649 = load i32, ptr %648, align 8, !tbaa !144
  %650 = sitofp i32 %649 to float
  %651 = fadd float %318, %650
  %652 = fptosi float %651 to i32
  %653 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %654 = load ptr, ptr %653, align 8, !tbaa !48
  %655 = getelementptr inbounds %struct.Strip, ptr %654, i64 0, i32 8
  %656 = load ptr, ptr %655, align 8, !tbaa !53
  %657 = icmp eq ptr %656, null
  br i1 %657, label %662, label %658

658:                                              ; preds = %643
  %659 = getelementptr inbounds %struct.StripProxy, ptr %656, i64 0, i32 3
  %660 = load i16, ptr %659, align 8, !tbaa !157
  %661 = sext i16 %660 to i32
  br label %662

662:                                              ; preds = %658, %643
  %663 = phi i32 [ %661, %658 ], [ 1, %643 ]
  %664 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %665 = load i32, ptr %664, align 8, !tbaa !129
  %666 = icmp sgt i32 %665, 99
  br i1 %666, label %674, label %667

667:                                              ; preds = %662
  %668 = icmp eq i32 %665, 99
  br i1 %668, label %674, label %669

669:                                              ; preds = %667
  %670 = icmp sgt i32 %665, 74
  br i1 %670, label %674, label %671

671:                                              ; preds = %669
  %672 = icmp sgt i32 %665, 49
  %673 = select i1 %672, i32 2, i32 1
  br label %674

674:                                              ; preds = %671, %669, %667, %662
  %675 = phi i32 [ 0, %662 ], [ 8, %667 ], [ 4, %669 ], [ %673, %671 ]
  %676 = call ptr @IMB_anim_absolute(ptr noundef %647, i32 noundef %652, i32 noundef %663, i32 noundef %675) #27
  %677 = icmp eq ptr %676, null
  br i1 %677, label %699, label %678

678:                                              ; preds = %674
  %679 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !126
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %680, ptr noundef nonnull %676, i8 noundef zeroext 0)
  %681 = getelementptr inbounds %struct.ImBuf, ptr %676, i64 0, i32 9
  %682 = load ptr, ptr %681, align 8, !tbaa !115
  %683 = icmp eq ptr %682, null
  br i1 %683, label %689, label %684

684:                                              ; preds = %678
  %685 = getelementptr inbounds %struct.ImBuf, ptr %676, i64 0, i32 8
  %686 = load ptr, ptr %685, align 8, !tbaa !118
  %687 = icmp eq ptr %686, null
  br i1 %687, label %689, label %688

688:                                              ; preds = %684
  call void @imb_freerectImBuf(ptr noundef nonnull %676) #27
  br label %689

689:                                              ; preds = %688, %684, %678
  %690 = getelementptr inbounds %struct.ImBuf, ptr %676, i64 0, i32 2
  %691 = load i32, ptr %690, align 8, !tbaa !120
  %692 = load ptr, ptr %653, align 8, !tbaa !48
  %693 = getelementptr inbounds %struct.Strip, ptr %692, i64 0, i32 6
  %694 = load ptr, ptr %693, align 8, !tbaa !52
  %695 = getelementptr inbounds %struct.StripElem, ptr %694, i64 0, i32 1
  store i32 %691, ptr %695, align 4, !tbaa !234
  %696 = getelementptr inbounds %struct.ImBuf, ptr %676, i64 0, i32 3
  %697 = load i32, ptr %696, align 4, !tbaa !121
  %698 = getelementptr inbounds %struct.StripElem, ptr %694, i64 0, i32 2
  store i32 %697, ptr %698, align 4, !tbaa !236
  br label %699

699:                                              ; preds = %689, %674, %639
  %700 = phi ptr [ %676, %689 ], [ null, %674 ], [ null, %639 ]
  call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %318, ptr noundef %700)
  br label %979

701:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9)
  %702 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !237
  %703 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !238
  %704 = icmp eq i8 %702, 0
  br i1 %704, label %705, label %712

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !126
  %708 = getelementptr inbounds %struct.Scene, ptr %707, i64 0, i32 22, i32 93
  %709 = load i8, ptr %708, align 2, !tbaa !239
  %710 = and i8 %709, 1
  %711 = icmp ne i8 %710, 0
  br label %712

712:                                              ; preds = %705, %701
  %713 = phi i1 [ %711, %705 ], [ false, %701 ]
  %714 = call i32 @BLI_thread_is_main() #27
  %715 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %716 = load ptr, ptr %715, align 8, !tbaa !145
  %717 = icmp eq ptr %716, null
  br i1 %717, label %902, label %718

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 6
  %720 = load i32, ptr %719, align 4, !tbaa !146
  %721 = sitofp i32 %720 to float
  %722 = fadd float %318, %721
  %723 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %724 = load i32, ptr %723, align 8, !tbaa !144
  %725 = sitofp i32 %724 to float
  %726 = fadd float %722, %725
  %727 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 46
  %728 = load i32, ptr %727, align 4, !tbaa !240
  %729 = and i32 %728, 64
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %739, label %731

731:                                              ; preds = %718
  %732 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 16
  %733 = load i8, ptr %732, align 2, !tbaa !241
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %739, label %735

735:                                              ; preds = %731
  %736 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 18
  %737 = load ptr, ptr %736, align 8, !tbaa !242
  %738 = icmp eq ptr %737, null
  br label %739

739:                                              ; preds = %735, %731, %718
  %740 = phi i1 [ true, %731 ], [ true, %718 ], [ %738, %735 ]
  %741 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 5
  %742 = load i32, ptr %741, align 8, !tbaa !243
  %743 = sitofp i32 %742 to float
  %744 = fptosi float %726 to i32
  store i32 %744, ptr %741, align 8, !tbaa !243
  %745 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 27
  %746 = load ptr, ptr %745, align 8, !tbaa !244
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %752

748:                                              ; preds = %739
  %749 = call i32 @BKE_scene_camera_switch_update(ptr noundef nonnull %716) #27
  %750 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 2
  %751 = load ptr, ptr %750, align 8, !tbaa !245
  br label %752

752:                                              ; preds = %748, %739
  %753 = phi ptr [ %751, %748 ], [ %746, %739 ]
  %754 = icmp eq ptr %753, null
  %755 = select i1 %740, i1 %754, i1 false
  br i1 %755, label %756, label %758

756:                                              ; preds = %752
  %757 = fptosi float %743 to i32
  store i32 %757, ptr %741, align 8, !tbaa !243
  br label %902

758:                                              ; preds = %752
  %759 = load i32, ptr %727, align 4, !tbaa !240
  %760 = and i32 %759, 1
  %761 = and i32 %759, -2
  store i32 %761, ptr %727, align 4, !tbaa !240
  %762 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %762, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %762, i8 0, i64 16, i1 false)
  %763 = load ptr, ptr @sequencer_view3d_cb, align 8, !tbaa !34
  %764 = icmp ne ptr %763, null
  %765 = select i1 %764, i1 %713, i1 false
  %766 = icmp ne ptr %753, null
  %767 = select i1 %765, i1 %766, i1 false
  %768 = icmp ne i32 %714, 0
  %769 = select i1 %767, i1 %768, i1 false
  br i1 %769, label %770, label %812

770:                                              ; preds = %758
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %10, ptr noundef nonnull align 16 dereferenceable(256) @__const.seq_render_scene_strip.err_out, i64 256, i1 false)
  %771 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 33
  %772 = load i32, ptr %771, align 4, !tbaa !193
  %773 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 30
  %774 = load i16, ptr %773, align 2, !tbaa !192
  %775 = sext i16 %774 to i32
  %776 = mul nsw i32 %772, %775
  %777 = sdiv i32 %776, 100
  %778 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 34
  %779 = load i32, ptr %778, align 8, !tbaa !194
  %780 = mul nsw i32 %779, %775
  %781 = sdiv i32 %780, 100
  %782 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %783 = load ptr, ptr %782, align 8, !tbaa !126
  %784 = getelementptr inbounds %struct.Scene, ptr %783, i64 0, i32 22, i32 91
  %785 = load i8, ptr %784, align 8, !tbaa !246
  %786 = icmp eq i8 %785, 0
  br i1 %786, label %787, label %788

787:                                              ; preds = %770
  store i8 3, ptr %784, align 8, !tbaa !246
  br label %788

788:                                              ; preds = %787, %770
  %789 = load ptr, ptr %0, align 8, !tbaa !132
  %790 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %791 = load ptr, ptr %790, align 8, !tbaa !124
  %792 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 12
  %793 = load i32, ptr %792, align 8, !tbaa !247
  call void @BKE_scene_update_for_newframe(ptr noundef %789, ptr noundef %791, ptr noundef %716, i32 noundef %793) #27
  %794 = load ptr, ptr @sequencer_view3d_cb, align 8, !tbaa !34
  %795 = load ptr, ptr %782, align 8, !tbaa !126
  %796 = getelementptr inbounds %struct.Scene, ptr %795, i64 0, i32 22, i32 91
  %797 = load i8, ptr %796, align 8, !tbaa !246
  %798 = zext i8 %797 to i32
  %799 = getelementptr inbounds %struct.Scene, ptr %795, i64 0, i32 22, i32 93
  %800 = load i8, ptr %799, align 2, !tbaa !239
  %801 = lshr i8 %800, 2
  %802 = and i8 %801, 1
  %803 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 22, i32 53
  %804 = load i16, ptr %803, align 8, !tbaa !248
  %805 = sext i16 %804 to i32
  %806 = call ptr %794(ptr noundef %716, ptr noundef nonnull %753, i32 noundef %777, i32 noundef %781, i32 noundef 1, i32 noundef %798, i8 noundef zeroext %802, i8 noundef zeroext 1, i32 noundef %805, ptr noundef nonnull %10) #27
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %811

808:                                              ; preds = %788
  %809 = load ptr, ptr @stderr, align 8, !tbaa !34
  %810 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %809, ptr noundef nonnull @.str.42, ptr noundef nonnull %10) #29
  br label %811

811:                                              ; preds = %808, %788
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #27
  br label %889

812:                                              ; preds = %758
  %813 = getelementptr inbounds %struct.ID, ptr %716, i64 0, i32 4
  %814 = call ptr @RE_GetRender(ptr noundef nonnull %813) #27
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #27
  %815 = icmp eq i32 %714, 0
  %816 = or i1 %704, %815
  %817 = icmp ne i8 %703, 0
  %818 = select i1 %816, i1 true, i1 %817
  br i1 %818, label %819, label %832

819:                                              ; preds = %812
  %820 = icmp eq ptr %814, null
  br i1 %820, label %821, label %823

821:                                              ; preds = %819
  %822 = call ptr @RE_NewRender(ptr noundef nonnull %813) #27
  br label %823

823:                                              ; preds = %821, %819
  %824 = phi ptr [ %822, %821 ], [ %814, %819 ]
  %825 = load ptr, ptr %0, align 8, !tbaa !132
  %826 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %827 = load ptr, ptr %826, align 8, !tbaa !124
  %828 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 12
  %829 = load i32, ptr %828, align 8, !tbaa !247
  call void @BKE_scene_update_for_newframe(ptr noundef %825, ptr noundef %827, ptr noundef nonnull %716, i32 noundef %829) #27
  %830 = load ptr, ptr %826, align 8, !tbaa !124
  %831 = load i32, ptr %828, align 8, !tbaa !247
  call void @RE_BlenderFrame(ptr noundef %824, ptr noundef %830, ptr noundef nonnull %716, ptr noundef null, ptr noundef %753, i32 noundef %831, i32 noundef %744, i8 noundef zeroext 0) #27
  store i8 %702, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !237
  br label %832

832:                                              ; preds = %823, %812
  %833 = phi ptr [ %824, %823 ], [ %814, %812 ]
  call void @RE_AcquireResultImage(ptr noundef %833, ptr noundef nonnull %11) #27
  %834 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 7
  %835 = load ptr, ptr %834, align 8, !tbaa !249
  %836 = icmp eq ptr %835, null
  br i1 %836, label %869, label %837

837:                                              ; preds = %832
  %838 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 2
  %839 = load i32, ptr %838, align 8, !tbaa !251
  %840 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 3
  %841 = load i32, ptr %840, align 4, !tbaa !252
  %842 = call ptr @IMB_allocImBuf(i32 noundef %839, i32 noundef %841, i8 noundef zeroext 32, i32 noundef 32) #27
  %843 = getelementptr inbounds %struct.ImBuf, ptr %842, i64 0, i32 9
  %844 = load ptr, ptr %843, align 8, !tbaa !115
  %845 = load ptr, ptr %834, align 8, !tbaa !249
  %846 = load i32, ptr %838, align 8, !tbaa !251
  %847 = sext i32 %846 to i64
  %848 = shl nsw i64 %847, 4
  %849 = load i32, ptr %840, align 4, !tbaa !252
  %850 = sext i32 %849 to i64
  %851 = mul i64 %848, %850
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %844, ptr align 4 %845, i64 %851, i1 false)
  %852 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 8
  %853 = load ptr, ptr %852, align 8, !tbaa !253
  %854 = icmp eq ptr %853, null
  br i1 %854, label %866, label %855

855:                                              ; preds = %837
  %856 = call zeroext i8 @addzbuffloatImBuf(ptr noundef %842) #27
  %857 = getelementptr inbounds %struct.ImBuf, ptr %842, i64 0, i32 17
  %858 = load ptr, ptr %857, align 8, !tbaa !254
  %859 = load ptr, ptr %852, align 8, !tbaa !253
  %860 = load i32, ptr %838, align 8, !tbaa !251
  %861 = sext i32 %860 to i64
  %862 = shl nsw i64 %861, 2
  %863 = load i32, ptr %840, align 4, !tbaa !252
  %864 = sext i32 %863 to i64
  %865 = mul i64 %862, %864
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %858, ptr align 4 %859, i64 %865, i1 false)
  br label %866

866:                                              ; preds = %855, %837
  %867 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %868 = load ptr, ptr %867, align 8, !tbaa !126
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %868, ptr noundef %842, i8 noundef zeroext 0)
  br label %887

869:                                              ; preds = %832
  %870 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 6
  %871 = load ptr, ptr %870, align 8, !tbaa !255
  %872 = icmp eq ptr %871, null
  br i1 %872, label %887, label %873

873:                                              ; preds = %869
  %874 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 2
  %875 = load i32, ptr %874, align 8, !tbaa !251
  %876 = getelementptr inbounds %struct.RenderResult, ptr %11, i64 0, i32 3
  %877 = load i32, ptr %876, align 4, !tbaa !252
  %878 = call ptr @IMB_allocImBuf(i32 noundef %875, i32 noundef %877, i8 noundef zeroext 32, i32 noundef 1) #27
  %879 = getelementptr inbounds %struct.ImBuf, ptr %878, i64 0, i32 8
  %880 = load ptr, ptr %879, align 8, !tbaa !118
  %881 = load ptr, ptr %870, align 8, !tbaa !255
  %882 = load i32, ptr %874, align 8, !tbaa !251
  %883 = shl nsw i32 %882, 2
  %884 = load i32, ptr %876, align 4, !tbaa !252
  %885 = mul nsw i32 %883, %884
  %886 = sext i32 %885 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %880, ptr align 4 %881, i64 %886, i1 false)
  br label %887

887:                                              ; preds = %873, %869, %866
  %888 = phi ptr [ %842, %866 ], [ %878, %873 ], [ null, %869 ]
  call void @RE_ReleaseResultImage(ptr noundef %833) #27
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #27
  br label %889

889:                                              ; preds = %887, %811
  %890 = phi ptr [ %806, %811 ], [ %888, %887 ]
  %891 = load i32, ptr %727, align 4, !tbaa !240
  %892 = or i32 %891, %760
  store i32 %892, ptr %727, align 4, !tbaa !240
  %893 = fptosi float %743 to i32
  store i32 %893, ptr %741, align 8, !tbaa !243
  %894 = fcmp une float %726, %743
  br i1 %894, label %895, label %901

895:                                              ; preds = %889
  %896 = load ptr, ptr %0, align 8, !tbaa !132
  %897 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %898 = load ptr, ptr %897, align 8, !tbaa !124
  %899 = getelementptr inbounds %struct.Scene, ptr %716, i64 0, i32 12
  %900 = load i32, ptr %899, align 8, !tbaa !247
  call void @BKE_scene_update_for_newframe(ptr noundef %896, ptr noundef %898, ptr noundef %716, i32 noundef %900) #27
  br label %901

901:                                              ; preds = %895, %889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %762, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !166
  br label %902

902:                                              ; preds = %901, %756, %712
  %903 = phi ptr [ null, %756 ], [ %890, %901 ], [ null, %712 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9)
  %904 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !124
  %906 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %907 = load ptr, ptr %906, align 8, !tbaa !126
  call void @BKE_animsys_evaluate_all_animation(ptr noundef %905, ptr noundef %907, float noundef %2) #27
  call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %318, ptr noundef %903)
  br label %979

908:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %909 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 28
  %910 = load ptr, ptr %909, align 8, !tbaa !159
  %911 = icmp eq ptr %910, null
  br i1 %911, label %958, label %912

912:                                              ; preds = %908
  store i64 0, ptr %5, align 8
  %913 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %914 = load i32, ptr %913, align 8, !tbaa !144
  %915 = sitofp i32 %914 to float
  %916 = fadd float %318, %915
  %917 = getelementptr inbounds %struct.MovieClip, ptr %910, i64 0, i32 16
  %918 = load i32, ptr %917, align 8, !tbaa !256
  %919 = sitofp i32 %918 to float
  %920 = fadd float %916, %919
  %921 = fptosi float %920 to i32
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %5, i32 noundef %921) #27
  %922 = getelementptr inbounds %struct.MovieClipUser, ptr %5, i64 0, i32 1
  store i16 0, ptr %922, align 4, !tbaa !265
  %923 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %924 = load i32, ptr %923, align 8, !tbaa !129
  %925 = icmp sgt i32 %924, 99
  br i1 %925, label %933, label %926

926:                                              ; preds = %912
  %927 = icmp eq i32 %924, 99
  br i1 %927, label %933, label %928

928:                                              ; preds = %926
  %929 = icmp sgt i32 %924, 74
  br i1 %929, label %933, label %930

930:                                              ; preds = %928
  %931 = icmp sgt i32 %924, 49
  %932 = select i1 %931, i32 2, i32 1
  br label %933

933:                                              ; preds = %912, %926, %928, %930
  %934 = phi i32 [ 0, %912 ], [ 8, %926 ], [ 4, %928 ], [ %932, %930 ]
  %935 = trunc i32 %934 to i16
  %936 = lshr i16 279, %935
  %937 = and i16 %936, 1
  %938 = icmp eq i16 %937, 0
  br i1 %938, label %943, label %939

939:                                              ; preds = %933
  %940 = zext nneg i32 %934 to i64
  %941 = getelementptr inbounds [9 x i16], ptr @switch.table.seq_render_strip, i64 0, i64 %940
  %942 = load i16, ptr %941, align 2
  store i16 %942, ptr %922, align 4, !tbaa !265
  br label %943

943:                                              ; preds = %933, %939
  %944 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 23
  %945 = load i32, ptr %944, align 4, !tbaa !267
  %946 = and i32 %945, 1
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %950, label %948

948:                                              ; preds = %943
  %949 = getelementptr inbounds %struct.MovieClipUser, ptr %5, i64 0, i32 2
  store i16 1, ptr %949, align 2, !tbaa !268
  br label %950

950:                                              ; preds = %948, %943
  %951 = and i32 %945, 2
  %952 = icmp eq i32 %951, 0
  %953 = load ptr, ptr %909, align 8, !tbaa !159
  br i1 %952, label %956, label %954

954:                                              ; preds = %950
  %955 = call ptr @BKE_movieclip_get_stable_ibuf(ptr noundef %953, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #27
  br label %958

956:                                              ; preds = %950
  %957 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %953, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1) #27
  br label %958

958:                                              ; preds = %956, %954, %908
  %959 = phi ptr [ null, %908 ], [ %955, %954 ], [ %957, %956 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  %960 = icmp eq ptr %959, null
  br i1 %960, label %979, label %961

961:                                              ; preds = %958
  %962 = call ptr @IMB_dupImBuf(ptr noundef nonnull %959) #27
  call void @IMB_freeImBuf(ptr noundef nonnull %959) #27
  %963 = getelementptr inbounds %struct.ImBuf, ptr %962, i64 0, i32 9
  %964 = load ptr, ptr %963, align 8, !tbaa !115
  %965 = icmp eq ptr %964, null
  br i1 %965, label %969, label %966

966:                                              ; preds = %961
  %967 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %968 = load ptr, ptr %967, align 8, !tbaa !126
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %968, ptr noundef %962, i8 noundef zeroext 0)
  br label %969

969:                                              ; preds = %966, %961
  call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %318, ptr noundef %962)
  br label %979

970:                                              ; preds = %356
  %971 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %972 = load i32, ptr %971, align 8, !tbaa !151
  %973 = lshr i32 %972, 13
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 29
  %977 = load ptr, ptr %976, align 8, !tbaa !160
  %978 = call fastcc ptr @seq_render_mask(ptr noundef %0, ptr noundef %977, float noundef %318, i8 noundef zeroext %975)
  call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %318, ptr noundef %978)
  br label %979

979:                                              ; preds = %970, %969, %958, %902, %699, %630, %606, %602, %600, %393, %391, %374, %372, %370, %367, %356
  %980 = phi ptr [ null, %356 ], [ %978, %970 ], [ %962, %969 ], [ null, %958 ], [ %903, %902 ], [ %700, %699 ], [ %601, %600 ], [ %373, %372 ], [ %368, %370 ], [ null, %367 ], [ %394, %393 ], [ %389, %391 ], [ null, %374 ], [ %619, %630 ], [ null, %606 ], [ null, %602 ]
  %981 = icmp eq ptr %980, null
  br i1 %981, label %990, label %982

982:                                              ; preds = %979
  %983 = getelementptr inbounds %struct.ImBuf, ptr %980, i64 0, i32 9
  %984 = load ptr, ptr %983, align 8, !tbaa !115
  %985 = icmp eq ptr %984, null
  br i1 %985, label %990, label %986

986:                                              ; preds = %982
  %987 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %988 = load ptr, ptr %987, align 8, !tbaa !126
  %989 = getelementptr inbounds %struct.Scene, ptr %988, i64 0, i32 46
  call void @IMB_colormanagement_assign_float_colorspace(ptr noundef nonnull %980, ptr noundef nonnull %989) #27
  br label %990

990:                                              ; preds = %979, %982, %986
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %17) #27
  br label %991

991:                                              ; preds = %990, %262
  %992 = phi ptr [ %980, %990 ], [ %264, %262 ]
  %993 = icmp eq ptr %992, null
  br i1 %993, label %1003, label %994

994:                                              ; preds = %991
  %995 = load i32, ptr %25, align 4, !tbaa !59
  switch i32 %995, label %1001 [
    i32 3, label %996
    i32 6, label %996
  ]

996:                                              ; preds = %994, %994
  %997 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %998 = load i32, ptr %997, align 8, !tbaa !129
  %999 = icmp ne i32 %998, 100
  %1000 = zext i1 %999 to i8
  br label %1001

1001:                                             ; preds = %994, %996
  %1002 = phi i8 [ %1000, %996 ], [ %263, %994 ]
  call void @BKE_sequencer_preprocessed_cache_put(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef 0, ptr noundef nonnull %992) #27
  br label %1003

1003:                                             ; preds = %107, %1001, %991, %104
  %1004 = phi i8 [ %1002, %1001 ], [ %263, %991 ], [ 0, %107 ], [ 0, %104 ]
  %1005 = phi ptr [ %992, %1001 ], [ null, %991 ], [ %108, %107 ], [ %105, %104 ]
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %1039, label %1007

1007:                                             ; preds = %1003
  %1008 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  %1009 = load i8, ptr %1008, align 1, !tbaa !134
  %1010 = icmp eq i8 %1009, 0
  br i1 %1010, label %1011, label %1039

1011:                                             ; preds = %1007
  %1012 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %1013 = load i32, ptr %1012, align 8, !tbaa !151
  %1014 = and i32 %1013, 210960
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1039

1016:                                             ; preds = %1011
  %1017 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %1018 = load float, ptr %1017, align 4, !tbaa !205
  %1019 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %1020 = load i32, ptr %1019, align 8, !tbaa !206
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1027

1022:                                             ; preds = %1016
  %1023 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %1024 = load float, ptr %1023, align 4, !tbaa !207
  %1025 = fdiv float %1024, 1.000000e+02
  %1026 = fmul float %1018, %1025
  br label %1027

1027:                                             ; preds = %1022, %1016
  %1028 = phi float [ %1026, %1022 ], [ %1018, %1016 ]
  %1029 = fcmp une float %1028, 1.000000e+00
  br i1 %1029, label %1039, label %1030

1030:                                             ; preds = %1027
  %1031 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %1032 = load float, ptr %1031, align 8, !tbaa !208
  %1033 = fcmp une float %1032, 1.000000e+00
  br i1 %1033, label %1039, label %1034

1034:                                             ; preds = %1030
  %1035 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %1036 = load ptr, ptr %1035, align 8, !tbaa !209
  %1037 = icmp ne ptr %1036, null
  %1038 = zext i1 %1037 to i8
  br label %1039

1039:                                             ; preds = %1034, %1030, %1027, %1011, %1007, %83, %1003
  %1040 = phi i8 [ %1004, %1003 ], [ 0, %83 ], [ %1004, %1007 ], [ %1004, %1011 ], [ %1004, %1027 ], [ %1004, %1030 ], [ %1004, %1034 ]
  %1041 = phi i8 [ 0, %1003 ], [ 0, %83 ], [ 0, %1007 ], [ 1, %1011 ], [ 1, %1027 ], [ 1, %1030 ], [ %1038, %1034 ]
  %1042 = phi ptr [ null, %1003 ], [ %85, %83 ], [ %1005, %1007 ], [ %1005, %1011 ], [ %1005, %1027 ], [ %1005, %1030 ], [ %1005, %1034 ]
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1044, label %1057

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %1046 = load i32, ptr %1045, align 8, !tbaa !127
  %1047 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %1048 = load i32, ptr %1047, align 4, !tbaa !128
  %1049 = call ptr @IMB_allocImBuf(i32 noundef %1046, i32 noundef %1048, i8 noundef zeroext 32, i32 noundef 1) #27
  %1050 = getelementptr inbounds %struct.ImBuf, ptr %1049, i64 0, i32 9
  %1051 = load ptr, ptr %1050, align 8, !tbaa !115
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1057, label %1053

1053:                                             ; preds = %1044
  %1054 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %1055 = load ptr, ptr %1054, align 8, !tbaa !126
  %1056 = getelementptr inbounds %struct.Scene, ptr %1055, i64 0, i32 46
  call void @IMB_colormanagement_assign_float_colorspace(ptr noundef %1049, ptr noundef nonnull %1056) #27
  br label %1057

1057:                                             ; preds = %1053, %1044, %1039
  %1058 = phi ptr [ %1042, %1039 ], [ %1049, %1044 ], [ %1049, %1053 ]
  %1059 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  %1060 = load i8, ptr %1059, align 1, !tbaa !134
  %1061 = icmp eq i8 %1060, 0
  br i1 %1061, label %1062, label %1075

1062:                                             ; preds = %1057
  %1063 = getelementptr inbounds %struct.ImBuf, ptr %1058, i64 0, i32 2
  %1064 = load i32, ptr %1063, align 8, !tbaa !120
  %1065 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %1066 = load i32, ptr %1065, align 8, !tbaa !127
  %1067 = icmp eq i32 %1064, %1066
  br i1 %1067, label %1068, label %1074

1068:                                             ; preds = %1062
  %1069 = getelementptr inbounds %struct.ImBuf, ptr %1058, i64 0, i32 3
  %1070 = load i32, ptr %1069, align 4, !tbaa !121
  %1071 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %1072 = load i32, ptr %1071, align 4, !tbaa !128
  %1073 = icmp eq i32 %1070, %1072
  br i1 %1073, label %1075, label %1074

1074:                                             ; preds = %1068, %1062
  br label %1075

1075:                                             ; preds = %1074, %1068, %1057
  %1076 = phi i8 [ 1, %1074 ], [ %1041, %1068 ], [ %1041, %1057 ]
  %1077 = icmp eq i8 %1076, 0
  br i1 %1077, label %1432, label %1078

1078:                                             ; preds = %1075
  %1079 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %1080 = load ptr, ptr %1079, align 8, !tbaa !126
  %1081 = call ptr @IMB_makeSingleUser(ptr noundef %1058) #27
  %1082 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %1083 = load i32, ptr %1082, align 8, !tbaa !151
  %1084 = and i32 %1083, 16
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1089, label %1086

1086:                                             ; preds = %1078
  %1087 = load i32, ptr %25, align 4, !tbaa !59
  switch i32 %1087, label %1088 [
    i32 3, label %1089
    i32 6, label %1089
  ]

1088:                                             ; preds = %1086
  call void @IMB_filtery(ptr noundef %1081) #27
  br label %1089

1089:                                             ; preds = %1088, %1086, %1086, %1078
  %1090 = load i32, ptr %1082, align 8, !tbaa !151
  %1091 = and i32 %1090, 196608
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1274, label %1093

1093:                                             ; preds = %1089
  %1094 = icmp eq i8 %1040, 0
  br i1 %1094, label %1119, label %1095

1095:                                             ; preds = %1093
  %1096 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %1097 = load i32, ptr %1096, align 8, !tbaa !129
  %1098 = icmp sgt i32 %1097, 98
  br i1 %1098, label %1104, label %1099

1099:                                             ; preds = %1095
  %1100 = icmp sgt i32 %1097, 74
  br i1 %1100, label %1104, label %1101

1101:                                             ; preds = %1099
  %1102 = icmp sgt i32 %1097, 49
  %1103 = select i1 %1102, double 5.000000e-01, double 2.500000e-01
  br label %1104

1104:                                             ; preds = %1101, %1099, %1095
  %1105 = phi double [ 1.000000e+00, %1095 ], [ 7.500000e-01, %1099 ], [ %1103, %1101 ]
  %1106 = fcmp une double %1105, 1.000000e+00
  br i1 %1106, label %1107, label %1119

1107:                                             ; preds = %1104
  %1108 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 2
  %1109 = load i32, ptr %1108, align 8, !tbaa !120
  %1110 = sitofp i32 %1109 to double
  %1111 = fdiv double %1110, %1105
  %1112 = fptoui double %1111 to i32
  %1113 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 3
  %1114 = load i32, ptr %1113, align 4, !tbaa !121
  %1115 = sitofp i32 %1114 to double
  %1116 = fdiv double %1115, %1105
  %1117 = fptoui double %1116 to i32
  %1118 = call ptr @IMB_scalefastImBuf(ptr noundef %1081, i32 noundef %1112, i32 noundef %1117) #27
  br label %1119

1119:                                             ; preds = %1107, %1104, %1093
  %1120 = load i32, ptr %1082, align 8, !tbaa !151
  %1121 = and i32 %1120, 131072
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1137, label %1123

1123:                                             ; preds = %1119
  %1124 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %1125 = load ptr, ptr %1124, align 8, !tbaa !48
  %1126 = getelementptr inbounds %struct.Strip, ptr %1125, i64 0, i32 9
  %1127 = load ptr, ptr %1126, align 8, !tbaa !56
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1137, label %1129

1129:                                             ; preds = %1123
  %1130 = load i32, ptr %1127, align 4, !tbaa.struct !269
  %1131 = getelementptr inbounds i8, ptr %1127, i64 4
  %1132 = load i32, ptr %1131, align 4, !tbaa.struct !270
  %1133 = getelementptr inbounds i8, ptr %1127, i64 8
  %1134 = load i32, ptr %1133, align 4, !tbaa.struct !271
  %1135 = getelementptr inbounds i8, ptr %1127, i64 12
  %1136 = load i32, ptr %1135, align 4, !tbaa.struct !272
  br label %1137

1137:                                             ; preds = %1129, %1123, %1119
  %1138 = phi i32 [ %1136, %1129 ], [ 0, %1123 ], [ 0, %1119 ]
  %1139 = phi i32 [ %1134, %1129 ], [ 0, %1123 ], [ 0, %1119 ]
  %1140 = phi i32 [ %1132, %1129 ], [ 0, %1123 ], [ 0, %1119 ]
  %1141 = phi i32 [ %1130, %1129 ], [ 0, %1123 ], [ 0, %1119 ]
  %1142 = and i32 %1120, 65536
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1154, label %1144

1144:                                             ; preds = %1137
  %1145 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %1146 = load ptr, ptr %1145, align 8, !tbaa !48
  %1147 = getelementptr inbounds %struct.Strip, ptr %1146, i64 0, i32 10
  %1148 = load ptr, ptr %1147, align 8, !tbaa !57
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1154, label %1150

1150:                                             ; preds = %1144
  %1151 = load i32, ptr %1148, align 4, !tbaa.struct !271
  %1152 = getelementptr inbounds i8, ptr %1148, i64 4
  %1153 = load i32, ptr %1152, align 4, !tbaa.struct !272
  br label %1154

1154:                                             ; preds = %1150, %1144, %1137
  %1155 = phi i32 [ %1153, %1150 ], [ 0, %1144 ], [ 0, %1137 ]
  %1156 = phi i32 [ %1151, %1150 ], [ 0, %1144 ], [ 0, %1137 ]
  %1157 = icmp eq i8 %84, 0
  br i1 %1157, label %1204, label %1158

1158:                                             ; preds = %1154
  %1159 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 33
  %1160 = load i32, ptr %1159, align 4, !tbaa !193
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1168, label %1162

1162:                                             ; preds = %1158
  %1163 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %1164 = load i32, ptr %1163, align 8, !tbaa !127
  %1165 = sitofp i32 %1164 to double
  %1166 = sitofp i32 %1160 to double
  %1167 = fdiv double %1165, %1166
  br label %1168

1168:                                             ; preds = %1162, %1158
  %1169 = phi double [ %1167, %1162 ], [ 1.000000e+00, %1158 ]
  %1170 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 34
  %1171 = load i32, ptr %1170, align 8, !tbaa !194
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1179, label %1173

1173:                                             ; preds = %1168
  %1174 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %1175 = load i32, ptr %1174, align 4, !tbaa !128
  %1176 = sitofp i32 %1175 to double
  %1177 = sitofp i32 %1171 to double
  %1178 = fdiv double %1176, %1177
  br label %1179

1179:                                             ; preds = %1173, %1168
  %1180 = phi double [ %1178, %1173 ], [ 1.000000e+00, %1168 ]
  br i1 %1143, label %1188, label %1181

1181:                                             ; preds = %1179
  %1182 = sitofp i32 %1156 to double
  %1183 = fmul double %1169, %1182
  %1184 = fptosi double %1183 to i32
  %1185 = sitofp i32 %1155 to double
  %1186 = fmul double %1180, %1185
  %1187 = fptosi double %1186 to i32
  br label %1188

1188:                                             ; preds = %1181, %1179
  %1189 = phi i32 [ %1187, %1181 ], [ %1155, %1179 ]
  %1190 = phi i32 [ %1184, %1181 ], [ %1156, %1179 ]
  br i1 %1122, label %1204, label %1191

1191:                                             ; preds = %1188
  %1192 = sitofp i32 %1139 to double
  %1193 = fmul double %1169, %1192
  %1194 = fptosi double %1193 to i32
  %1195 = sitofp i32 %1138 to double
  %1196 = fmul double %1169, %1195
  %1197 = fptosi double %1196 to i32
  %1198 = sitofp i32 %1141 to double
  %1199 = fmul double %1180, %1198
  %1200 = fptosi double %1199 to i32
  %1201 = sitofp i32 %1140 to double
  %1202 = fmul double %1180, %1201
  %1203 = fptosi double %1202 to i32
  br label %1204

1204:                                             ; preds = %1191, %1188, %1154
  %1205 = phi i32 [ %1155, %1154 ], [ %1189, %1191 ], [ %1189, %1188 ]
  %1206 = phi i32 [ %1156, %1154 ], [ %1190, %1191 ], [ %1190, %1188 ]
  %1207 = phi i32 [ %1138, %1154 ], [ %1197, %1191 ], [ %1138, %1188 ]
  %1208 = phi i32 [ %1139, %1154 ], [ %1194, %1191 ], [ %1139, %1188 ]
  %1209 = phi i32 [ %1140, %1154 ], [ %1203, %1191 ], [ %1140, %1188 ]
  %1210 = phi i32 [ %1141, %1154 ], [ %1200, %1191 ], [ %1141, %1188 ]
  %1211 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 2
  %1212 = load i32, ptr %1211, align 8, !tbaa !120
  %1213 = add i32 %1208, %1207
  %1214 = sub i32 %1212, %1213
  %1215 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 3
  %1216 = load i32, ptr %1215, align 4, !tbaa !121
  %1217 = add i32 %1210, %1209
  %1218 = sub i32 %1216, %1217
  br i1 %1143, label %1230, label %1219

1219:                                             ; preds = %1204
  br i1 %1157, label %1225, label %1220

1220:                                             ; preds = %1219
  %1221 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %1222 = load i32, ptr %1221, align 8, !tbaa !127
  %1223 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %1224 = load i32, ptr %1223, align 4, !tbaa !128
  br label %1230

1225:                                             ; preds = %1219
  %1226 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 33
  %1227 = load i32, ptr %1226, align 4, !tbaa !193
  %1228 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 34
  %1229 = load i32, ptr %1228, align 8, !tbaa !194
  br label %1230

1230:                                             ; preds = %1225, %1220, %1204
  %1231 = phi i32 [ %1222, %1220 ], [ %1227, %1225 ], [ %1214, %1204 ]
  %1232 = phi i32 [ %1224, %1220 ], [ %1229, %1225 ], [ %1218, %1204 ]
  %1233 = icmp slt i32 %1217, %1216
  br i1 %1233, label %1234, label %1240

1234:                                             ; preds = %1230
  %1235 = icmp slt i32 %1213, %1212
  %1236 = icmp slt i32 %1206, %1231
  %1237 = select i1 %1235, i1 %1236, i1 false
  %1238 = icmp slt i32 %1205, %1232
  %1239 = select i1 %1237, i1 %1238, i1 false
  br i1 %1239, label %1262, label %1240

1240:                                             ; preds = %1234, %1230
  %1241 = icmp eq ptr %1081, null
  br i1 %1241, label %1274, label %1242

1242:                                             ; preds = %1240
  %1243 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 8
  %1244 = load ptr, ptr %1243, align 8, !tbaa !118
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1246, label %1250

1246:                                             ; preds = %1242
  %1247 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 9
  %1248 = load ptr, ptr %1247, align 8, !tbaa !115
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1274, label %1250

1250:                                             ; preds = %1246, %1242
  %1251 = mul nsw i32 %1216, %1212
  %1252 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 9
  %1253 = load ptr, ptr %1252, align 8, !tbaa !115
  br i1 %1245, label %1257, label %1254

1254:                                             ; preds = %1250
  %1255 = sext i32 %1251 to i64
  %1256 = shl nsw i64 %1255, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1244, i8 0, i64 %1256, i1 false)
  br label %1257

1257:                                             ; preds = %1254, %1250
  %1258 = icmp eq ptr %1253, null
  br i1 %1258, label %1274, label %1259

1259:                                             ; preds = %1257
  %1260 = sext i32 %1251 to i64
  %1261 = shl nsw i64 %1260, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1253, i8 0, i64 %1261, i1 false)
  br label %1274

1262:                                             ; preds = %1234
  %1263 = getelementptr inbounds %struct.ImBuf, ptr %1081, i64 0, i32 9
  %1264 = load ptr, ptr %1263, align 8, !tbaa !115
  %1265 = icmp eq ptr %1264, null
  %1266 = select i1 %1265, i32 1, i32 32
  %1267 = call ptr @IMB_allocImBuf(i32 noundef %1231, i32 noundef %1232, i8 noundef zeroext 32, i32 noundef %1266) #27
  call void @IMB_rectcpy(ptr noundef %1267, ptr noundef %1081, i32 noundef %1206, i32 noundef %1205, i32 noundef %1208, i32 noundef %1209, i32 noundef %1214, i32 noundef %1218) #27
  %1268 = getelementptr inbounds %struct.ImBuf, ptr %1267, i64 0, i32 9
  %1269 = load ptr, ptr %1268, align 8, !tbaa !115
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1273, label %1271

1271:                                             ; preds = %1262
  %1272 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 46
  call void @IMB_colormanagement_assign_float_colorspace(ptr noundef %1267, ptr noundef nonnull %1272) #27
  br label %1273

1273:                                             ; preds = %1271, %1262
  call void @IMB_freeImBuf(ptr noundef %1081) #27
  br label %1274

1274:                                             ; preds = %1273, %1259, %1257, %1246, %1240, %1089
  %1275 = phi ptr [ %1081, %1089 ], [ %1267, %1273 ], [ %1081, %1240 ], [ %1081, %1246 ], [ %1081, %1257 ], [ %1081, %1259 ]
  %1276 = load i32, ptr %1082, align 8, !tbaa !151
  %1277 = and i32 %1276, 2048
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1280, label %1279

1279:                                             ; preds = %1274
  call void @IMB_flipx(ptr noundef %1275) #27
  br label %1280

1280:                                             ; preds = %1279, %1274
  %1281 = load i32, ptr %1082, align 8, !tbaa !151
  %1282 = and i32 %1281, 4096
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1285, label %1284

1284:                                             ; preds = %1280
  call void @IMB_flipy(ptr noundef %1275) #27
  br label %1285

1285:                                             ; preds = %1284, %1280
  %1286 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %1287 = load float, ptr %1286, align 8, !tbaa !208
  %1288 = fcmp une float %1287, 1.000000e+00
  br i1 %1288, label %1289, label %1290

1289:                                             ; preds = %1285
  call void @IMB_saturation(ptr noundef %1275, float noundef %1287) #27
  br label %1290

1290:                                             ; preds = %1289, %1285
  %1291 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %1292 = load float, ptr %1291, align 4, !tbaa !205
  %1293 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %1294 = load i32, ptr %1293, align 8, !tbaa !206
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1296, label %1301

1296:                                             ; preds = %1290
  %1297 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %1298 = load float, ptr %1297, align 4, !tbaa !207
  %1299 = fdiv float %1298, 1.000000e+02
  %1300 = fmul float %1292, %1299
  br label %1301

1301:                                             ; preds = %1296, %1290
  %1302 = phi float [ %1300, %1296 ], [ %1292, %1290 ]
  %1303 = load i32, ptr %1082, align 8, !tbaa !151
  %1304 = and i32 %1303, 8192
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1316, label %1306

1306:                                             ; preds = %1301
  %1307 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 9
  %1308 = load ptr, ptr %1307, align 8, !tbaa !115
  %1309 = icmp eq ptr %1308, null
  br i1 %1309, label %1310, label %1311

1310:                                             ; preds = %1306
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %1080, ptr noundef %1275, i8 noundef zeroext 1)
  br label %1311

1311:                                             ; preds = %1310, %1306
  %1312 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 8
  %1313 = load ptr, ptr %1312, align 8, !tbaa !118
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1316, label %1315

1315:                                             ; preds = %1311
  call void @imb_freerectImBuf(ptr noundef %1275) #27
  br label %1316

1316:                                             ; preds = %1315, %1311, %1301
  %1317 = fcmp une float %1302, 1.000000e+00
  br i1 %1317, label %1318, label %1396

1318:                                             ; preds = %1316
  %1319 = fmul float %1302, 2.560000e+02
  %1320 = fptosi float %1319 to i32
  %1321 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 8
  %1322 = load ptr, ptr %1321, align 8, !tbaa !118
  %1323 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 9
  %1324 = load ptr, ptr %1323, align 8, !tbaa !115
  %1325 = icmp eq ptr %1322, null
  br i1 %1325, label %1370, label %1326

1326:                                             ; preds = %1318
  %1327 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 2
  %1328 = load i32, ptr %1327, align 8, !tbaa !120
  %1329 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 3
  %1330 = load i32, ptr %1329, align 4, !tbaa !121
  %1331 = mul nsw i32 %1330, %1328
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1370, label %1333

1333:                                             ; preds = %1326, %1333
  %1334 = phi ptr [ %1368, %1333 ], [ %1322, %1326 ]
  %1335 = phi i32 [ %1336, %1333 ], [ %1331, %1326 ]
  %1336 = add nsw i32 %1335, -1
  %1337 = load i8, ptr %1334, align 1, !tbaa !119
  %1338 = zext i8 %1337 to i32
  %1339 = mul nsw i32 %1338, %1320
  %1340 = ashr i32 %1339, 8
  %1341 = icmp sgt i32 %1340, 254
  %1342 = trunc i32 %1340 to i8
  %1343 = select i1 %1341, i8 -1, i8 %1342
  store i8 %1343, ptr %1334, align 1, !tbaa !119
  %1344 = getelementptr inbounds i8, ptr %1334, i64 1
  %1345 = load i8, ptr %1344, align 1, !tbaa !119
  %1346 = zext i8 %1345 to i32
  %1347 = mul nsw i32 %1346, %1320
  %1348 = ashr i32 %1347, 8
  %1349 = icmp sgt i32 %1348, 254
  %1350 = trunc i32 %1348 to i8
  %1351 = select i1 %1349, i8 -1, i8 %1350
  store i8 %1351, ptr %1344, align 1, !tbaa !119
  %1352 = getelementptr inbounds i8, ptr %1334, i64 2
  %1353 = load i8, ptr %1352, align 1, !tbaa !119
  %1354 = zext i8 %1353 to i32
  %1355 = mul nsw i32 %1354, %1320
  %1356 = ashr i32 %1355, 8
  %1357 = icmp sgt i32 %1356, 254
  %1358 = trunc i32 %1356 to i8
  %1359 = select i1 %1357, i8 -1, i8 %1358
  store i8 %1359, ptr %1352, align 1, !tbaa !119
  %1360 = getelementptr inbounds i8, ptr %1334, i64 3
  %1361 = load i8, ptr %1360, align 1, !tbaa !119
  %1362 = zext i8 %1361 to i32
  %1363 = mul nsw i32 %1362, %1320
  %1364 = ashr i32 %1363, 8
  %1365 = icmp sgt i32 %1364, 254
  %1366 = trunc i32 %1364 to i8
  %1367 = select i1 %1365, i8 -1, i8 %1366
  store i8 %1367, ptr %1360, align 1, !tbaa !119
  %1368 = getelementptr inbounds i8, ptr %1334, i64 4
  %1369 = icmp eq i32 %1336, 0
  br i1 %1369, label %1370, label %1333, !llvm.loop !273

1370:                                             ; preds = %1333, %1326, %1318
  %1371 = icmp eq ptr %1324, null
  br i1 %1371, label %1396, label %1372

1372:                                             ; preds = %1370
  %1373 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 2
  %1374 = load i32, ptr %1373, align 8, !tbaa !120
  %1375 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 3
  %1376 = load i32, ptr %1375, align 4, !tbaa !121
  %1377 = mul nsw i32 %1376, %1374
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1396, label %1379

1379:                                             ; preds = %1372, %1379
  %1380 = phi i32 [ %1382, %1379 ], [ %1377, %1372 ]
  %1381 = phi ptr [ %1394, %1379 ], [ %1324, %1372 ]
  %1382 = add nsw i32 %1380, -1
  %1383 = load float, ptr %1381, align 4, !tbaa !123
  %1384 = fmul float %1302, %1383
  store float %1384, ptr %1381, align 4, !tbaa !123
  %1385 = getelementptr inbounds float, ptr %1381, i64 1
  %1386 = load float, ptr %1385, align 4, !tbaa !123
  %1387 = fmul float %1302, %1386
  store float %1387, ptr %1385, align 4, !tbaa !123
  %1388 = getelementptr inbounds float, ptr %1381, i64 2
  %1389 = load float, ptr %1388, align 4, !tbaa !123
  %1390 = fmul float %1302, %1389
  store float %1390, ptr %1388, align 4, !tbaa !123
  %1391 = getelementptr inbounds float, ptr %1381, i64 3
  %1392 = load float, ptr %1391, align 4, !tbaa !123
  %1393 = fmul float %1302, %1392
  store float %1393, ptr %1391, align 4, !tbaa !123
  %1394 = getelementptr inbounds float, ptr %1381, i64 4
  %1395 = icmp eq i32 %1382, 0
  br i1 %1395, label %1396, label %1379, !llvm.loop !274

1396:                                             ; preds = %1379, %1372, %1370, %1316
  %1397 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 2
  %1398 = load i32, ptr %1397, align 8, !tbaa !120
  %1399 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %1400 = load i32, ptr %1399, align 8, !tbaa !127
  %1401 = icmp eq i32 %1398, %1400
  br i1 %1401, label %1402, label %1408

1402:                                             ; preds = %1396
  %1403 = getelementptr inbounds %struct.ImBuf, ptr %1275, i64 0, i32 3
  %1404 = load i32, ptr %1403, align 4, !tbaa !121
  %1405 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %1406 = load i32, ptr %1405, align 4, !tbaa !128
  %1407 = icmp eq i32 %1404, %1406
  br i1 %1407, label %1423, label %1408

1408:                                             ; preds = %1402, %1396
  %1409 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 47
  %1410 = load i32, ptr %1409, align 8, !tbaa !215
  %1411 = and i32 %1410, 1
  %1412 = icmp eq i32 %1411, 0
  %1413 = shl i32 %1400, 16
  %1414 = ashr exact i32 %1413, 16
  %1415 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %1416 = load i32, ptr %1415, align 4, !tbaa !128
  %1417 = shl i32 %1416, 16
  %1418 = ashr exact i32 %1417, 16
  br i1 %1412, label %1421, label %1419

1419:                                             ; preds = %1408
  %1420 = call ptr @IMB_scaleImBuf(ptr noundef %1275, i32 noundef %1414, i32 noundef %1418) #27
  br label %1423

1421:                                             ; preds = %1408
  %1422 = call ptr @IMB_scalefastImBuf(ptr noundef %1275, i32 noundef %1414, i32 noundef %1418) #27
  br label %1423

1423:                                             ; preds = %1421, %1419, %1402
  %1424 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %1425 = load ptr, ptr %1424, align 8, !tbaa !209
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1432, label %1427

1427:                                             ; preds = %1423
  %1428 = fptosi float %2 to i32
  %1429 = call ptr @BKE_sequence_modifier_apply_stack(ptr noundef %0, ptr noundef %1, ptr noundef %1275, i32 noundef %1428) #27
  %1430 = icmp eq ptr %1429, %1275
  br i1 %1430, label %1432, label %1431

1431:                                             ; preds = %1427
  call void @IMB_freeImBuf(ptr noundef %1275) #27
  br label %1432

1432:                                             ; preds = %1431, %1427, %1423, %1075
  %1433 = phi ptr [ %1058, %1075 ], [ %1275, %1423 ], [ %1429, %1431 ], [ %1275, %1427 ]
  call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef 0, ptr noundef %1433) #27
  ret ptr %1433
}

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @seq_render_mask(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @BKE_mask_copy_nolib(ptr noundef nonnull %1) #27
  %8 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !275
  %10 = sitofp i32 %9 to float
  %11 = fadd float %10, %2
  tail call void @BKE_mask_evaluate(ptr noundef %7, float noundef %11, i8 noundef zeroext 1) #27
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !127
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !128
  %19 = sext i32 %18 to i64
  %20 = mul i64 %16, %19
  %21 = tail call ptr %12(i64 noundef %20, ptr noundef nonnull @__func__.seq_render_mask) #27
  %22 = tail call ptr @BKE_maskrasterize_handle_new() #27
  %23 = load i32, ptr %13, align 8, !tbaa !127
  %24 = load i32, ptr %17, align 4, !tbaa !128
  tail call void @BKE_maskrasterize_handle_init(ptr noundef %22, ptr noundef %7, i32 noundef %23, i32 noundef %24, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #27
  tail call void @BKE_mask_free_nolib(ptr noundef %7) #27
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %7) #27
  %26 = load i32, ptr %13, align 8, !tbaa !127
  %27 = load i32, ptr %17, align 4, !tbaa !128
  tail call void @BKE_maskrasterize_buffer(ptr noundef %22, i32 noundef %26, i32 noundef %27, ptr noundef %21) #27
  tail call void @BKE_maskrasterize_handle_free(ptr noundef %22) #27
  %28 = icmp eq i8 %3, 0
  %29 = load i32, ptr %13, align 8, !tbaa !127
  %30 = load i32, ptr %17, align 4, !tbaa !128
  br i1 %28, label %53, label %31

31:                                               ; preds = %6
  %32 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %30, i8 noundef zeroext 32, i32 noundef 32) #27
  %33 = load i32, ptr %13, align 8, !tbaa !127
  %34 = load i32, ptr %17, align 4, !tbaa !128
  %35 = mul nsw i32 %34, %33
  %36 = add nsw i32 %35, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %77, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i32 [ %51, %41 ], [ %36, %38 ]
  %43 = phi ptr [ %50, %41 ], [ %40, %38 ]
  %44 = phi ptr [ %49, %41 ], [ %21, %38 ]
  %45 = load float, ptr %44, align 4, !tbaa !123
  %46 = getelementptr inbounds float, ptr %43, i64 2
  store float %45, ptr %46, align 4, !tbaa !123
  %47 = getelementptr inbounds float, ptr %43, i64 1
  store float %45, ptr %47, align 4, !tbaa !123
  store float %45, ptr %43, align 4, !tbaa !123
  %48 = getelementptr inbounds float, ptr %43, i64 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !123
  %49 = getelementptr inbounds float, ptr %44, i64 1
  %50 = getelementptr inbounds float, ptr %43, i64 4
  %51 = add nsw i32 %42, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %77, label %41, !llvm.loop !277

53:                                               ; preds = %6
  %54 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %30, i8 noundef zeroext 32, i32 noundef 1) #27
  %55 = load i32, ptr %13, align 8, !tbaa !127
  %56 = load i32, ptr %17, align 4, !tbaa !128
  %57 = mul nsw i32 %56, %55
  %58 = add nsw i32 %57, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !118
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i32 [ %75, %63 ], [ %58, %60 ]
  %65 = phi ptr [ %74, %63 ], [ %62, %60 ]
  %66 = phi ptr [ %73, %63 ], [ %21, %60 ]
  %67 = load float, ptr %66, align 4, !tbaa !123
  %68 = fmul float %67, 2.550000e+02
  %69 = fptoui float %68 to i8
  %70 = getelementptr inbounds i8, ptr %65, i64 2
  store i8 %69, ptr %70, align 1, !tbaa !119
  %71 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %69, ptr %71, align 1, !tbaa !119
  store i8 %69, ptr %65, align 1, !tbaa !119
  %72 = getelementptr inbounds i8, ptr %65, i64 3
  store i8 -1, ptr %72, align 1, !tbaa !119
  %73 = getelementptr inbounds float, ptr %66, i64 1
  %74 = getelementptr inbounds i8, ptr %65, i64 4
  %75 = add nsw i32 %64, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %63, !llvm.loop !278

77:                                               ; preds = %41, %63, %31, %53
  %78 = phi ptr [ %54, %53 ], [ %32, %31 ], [ %54, %63 ], [ %32, %41 ]
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %79(ptr noundef %21) #27
  br label %80

80:                                               ; preds = %4, %77
  %81 = phi ptr [ %78, %77 ], [ null, %4 ]
  ret ptr %81
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_color_balance_apply(ptr noundef %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ColorBalanceInitData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #27
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  %10 = icmp ne i8 %3, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call zeroext i8 @imb_addrectfloatImBuf(ptr noundef %1) #27
  br label %14

14:                                               ; preds = %12, %5
  store ptr %0, ptr %6, align 8, !tbaa !279
  %15 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !281
  %16 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 2
  store float %2, ptr %16, align 8, !tbaa !282
  %17 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 4
  store i8 %3, ptr %17, align 8, !tbaa !283
  %18 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 3
  store ptr %4, ptr %18, align 8, !tbaa !284
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !121
  call void @IMB_processor_apply_threaded(i32 noundef %20, i32 noundef 64, ptr noundef nonnull %6, ptr noundef nonnull @color_balance_init_handle, ptr noundef nonnull @color_balance_do_thread) #27
  %21 = load ptr, ptr %7, align 8, !tbaa !115
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @imb_freerectImBuf(ptr noundef %1) #27
  br label %28

28:                                               ; preds = %27, %23, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #27
  ret void
}

declare zeroext i8 @imb_addrectfloatImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @color_balance_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !281
  %7 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !284
  %9 = shl nsw i32 %1, 2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !120
  %12 = mul nsw i32 %11, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %13 = load ptr, ptr %3, align 8, !tbaa !279
  store ptr %13, ptr %0, align 8, !tbaa !285
  %14 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !282
  %16 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 1
  store float %15, ptr %16, align 8, !tbaa !287
  %17 = load i32, ptr %10, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !288
  %19 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 3
  store i32 %2, ptr %19, align 8, !tbaa !289
  %20 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !283
  %22 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 8
  store i8 %21, ptr %22, align 8, !tbaa !290
  %23 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = sext i32 %12 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !291
  br label %30

30:                                               ; preds = %26, %4
  %31 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = sext i32 %12 to i64
  %36 = getelementptr inbounds float, ptr %32, i64 %35
  %37 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !292
  br label %38

38:                                               ; preds = %34, %30
  %39 = icmp eq ptr %8, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !118
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = sext i32 %12 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !293
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !115
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = sext i32 %12 to i64
  %54 = getelementptr inbounds float, ptr %50, i64 %53
  br label %57

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 5
  store ptr null, ptr %56, align 8, !tbaa !293
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi ptr [ %54, %52 ], [ null, %55 ]
  %59 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 7
  store ptr %58, ptr %59, align 8, !tbaa !294
  br label %60

60:                                               ; preds = %57, %48
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal noalias noundef ptr @color_balance_do_thread(ptr nocapture noundef readonly %0) #13 {
  %2 = alloca %struct.StripColorBalance, align 4
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x [256 x float]], align 16
  %5 = alloca %struct.StripColorBalance, align 4
  %6 = alloca %struct.StripColorBalance, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !285
  %8 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !288
  %10 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !289
  %12 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !291
  %14 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  %16 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !292
  %18 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !287
  %20 = icmp eq ptr %17, null
  br i1 %20, label %121, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !294
  %24 = shl nsw i32 %9, 2
  %25 = mul nsw i32 %24, %11
  %26 = sext i32 %25 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false), !tbaa.struct !295
  br label %27

27:                                               ; preds = %27, %21
  %28 = phi i64 [ 0, %21 ], [ %32, %27 ]
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !123, !alias.scope !296
  %31 = fsub float 2.000000e+00, %30
  store float %31, ptr %29, align 4, !tbaa !123, !alias.scope !296
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %27, !llvm.loop !299

34:                                               ; preds = %27
  %35 = getelementptr inbounds float, ptr %17, i64 %26
  %36 = getelementptr inbounds %struct.StripColorBalance, ptr %6, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !300, !alias.scope !296
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34, %51
  %41 = phi i64 [ %54, %51 ], [ 0, %34 ]
  %42 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !123, !alias.scope !296
  %44 = fcmp ogt float %43, 1.000000e+00
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = fadd float %43, -1.000000e+00
  %47 = fpext float %46 to double
  %48 = fmul double %47, %47
  %49 = fadd double %48, 1.000000e+00
  %50 = fptrunc double %49 to float
  store float %50, ptr %42, align 4, !tbaa !123, !alias.scope !296
  br label %51

51:                                               ; preds = %45, %40
  %52 = load float, ptr %42, align 4, !tbaa !123, !alias.scope !296
  %53 = fsub float 2.000000e+00, %52
  store float %53, ptr %42, align 4, !tbaa !123, !alias.scope !296
  %54 = add nuw nsw i64 %41, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %40, !llvm.loop !302

56:                                               ; preds = %51, %34
  %57 = and i32 %37, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ %66, %59 ], [ 0, %56 ]
  %61 = getelementptr inbounds %struct.StripColorBalance, ptr %6, i64 0, i32 2, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !123, !alias.scope !296
  %63 = fcmp une float %62, 0.000000e+00
  %64 = fdiv float 1.000000e+00, %62
  %65 = select i1 %63, float %64, float 1.000000e+06
  store float %65, ptr %61, align 4, !tbaa !123, !alias.scope !296
  %66 = add nuw nsw i64 %60, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %59, !llvm.loop !303

68:                                               ; preds = %59, %56
  %69 = and i32 %37, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68, %71
  %72 = phi i64 [ %78, %71 ], [ 0, %68 ]
  %73 = getelementptr inbounds %struct.StripColorBalance, ptr %6, i64 0, i32 1, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !123, !alias.scope !296
  %75 = fcmp une float %74, 0.000000e+00
  %76 = fdiv float 1.000000e+00, %74
  %77 = select i1 %75, float %76, float 1.000000e+06
  store float %77, ptr %73, align 4, !tbaa !123, !alias.scope !296
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp eq i64 %78, 3
  br i1 %79, label %80, label %71, !llvm.loop !304

80:                                               ; preds = %71, %68
  %81 = icmp sgt i32 %25, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %80, %114
  %83 = phi ptr [ %115, %114 ], [ %17, %80 ]
  %84 = phi ptr [ %118, %114 ], [ %23, %80 ]
  %85 = icmp eq ptr %84, null
  br label %86

86:                                               ; preds = %82, %110
  %87 = phi i64 [ 0, %82 ], [ %112, %110 ]
  %88 = getelementptr inbounds float, ptr %83, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !123
  %90 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %87
  %91 = load float, ptr %90, align 4, !tbaa !123
  %92 = getelementptr inbounds %struct.StripColorBalance, ptr %6, i64 0, i32 2, i64 %87
  %93 = load float, ptr %92, align 4, !tbaa !123
  %94 = getelementptr inbounds %struct.StripColorBalance, ptr %6, i64 0, i32 1, i64 %87
  %95 = load float, ptr %94, align 4, !tbaa !123
  %96 = fadd float %89, -1.000000e+00
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %91, float 1.000000e+00)
  %98 = fmul float %97, %93
  %99 = fcmp olt float %98, 0.000000e+00
  %100 = select i1 %99, float 0.000000e+00, float %98
  %101 = tail call float @powf(float noundef %100, float noundef %95) #27
  %102 = fmul float %19, %101
  br i1 %85, label %110, label %103

103:                                              ; preds = %86
  %104 = load float, ptr %88, align 4, !tbaa !123
  %105 = getelementptr inbounds float, ptr %84, i64 %87
  %106 = load float, ptr %105, align 4, !tbaa !123
  %107 = fsub float 1.000000e+00, %106
  %108 = fmul float %102, %106
  %109 = tail call float @llvm.fmuladd.f32(float %104, float %107, float %108)
  br label %110

110:                                              ; preds = %103, %86
  %111 = phi float [ %109, %103 ], [ %102, %86 ]
  store float %111, ptr %88, align 4, !tbaa !123
  %112 = add nuw nsw i64 %87, 1
  %113 = icmp eq i64 %112, 3
  br i1 %113, label %114, label %86, !llvm.loop !305

114:                                              ; preds = %110
  %115 = getelementptr inbounds float, ptr %83, i64 4
  %116 = icmp eq ptr %84, null
  %117 = getelementptr inbounds float, ptr %84, i64 4
  %118 = select i1 %116, ptr null, ptr %117
  %119 = icmp ult ptr %115, %35
  br i1 %119, label %82, label %120, !llvm.loop !306

120:                                              ; preds = %114, %80
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #27
  br label %493

121:                                              ; preds = %1
  %122 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 8
  %123 = load i8, ptr %122, align 8, !tbaa !290
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %296, label %125

125:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #27
  %126 = shl nsw i32 %9, 2
  %127 = mul nsw i32 %126, %11
  %128 = sext i32 %127 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false), !tbaa.struct !295
  br label %129

129:                                              ; preds = %129, %125
  %130 = phi i64 [ 0, %125 ], [ %134, %129 ]
  %131 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !123, !alias.scope !307
  %133 = fsub float 2.000000e+00, %132
  store float %133, ptr %131, align 4, !tbaa !123, !alias.scope !307
  %134 = add nuw nsw i64 %130, 1
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %129, !llvm.loop !299

136:                                              ; preds = %129
  %137 = getelementptr inbounds i8, ptr %13, i64 %128
  %138 = getelementptr inbounds %struct.StripColorBalance, ptr %5, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !300, !alias.scope !307
  %140 = and i32 %139, 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %136, %153
  %143 = phi i64 [ %156, %153 ], [ 0, %136 ]
  %144 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !123, !alias.scope !307
  %146 = fcmp ogt float %145, 1.000000e+00
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = fadd float %145, -1.000000e+00
  %149 = fpext float %148 to double
  %150 = fmul double %149, %149
  %151 = fadd double %150, 1.000000e+00
  %152 = fptrunc double %151 to float
  store float %152, ptr %144, align 4, !tbaa !123, !alias.scope !307
  br label %153

153:                                              ; preds = %147, %142
  %154 = load float, ptr %144, align 4, !tbaa !123, !alias.scope !307
  %155 = fsub float 2.000000e+00, %154
  store float %155, ptr %144, align 4, !tbaa !123, !alias.scope !307
  %156 = add nuw nsw i64 %143, 1
  %157 = icmp eq i64 %156, 3
  br i1 %157, label %158, label %142, !llvm.loop !302

158:                                              ; preds = %153, %136
  %159 = and i32 %139, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %158, %161
  %162 = phi i64 [ %168, %161 ], [ 0, %158 ]
  %163 = getelementptr inbounds %struct.StripColorBalance, ptr %5, i64 0, i32 2, i64 %162
  %164 = load float, ptr %163, align 4, !tbaa !123, !alias.scope !307
  %165 = fcmp une float %164, 0.000000e+00
  %166 = fdiv float 1.000000e+00, %164
  %167 = select i1 %165, float %166, float 1.000000e+06
  store float %167, ptr %163, align 4, !tbaa !123, !alias.scope !307
  %168 = add nuw nsw i64 %162, 1
  %169 = icmp eq i64 %168, 3
  br i1 %169, label %170, label %161, !llvm.loop !303

170:                                              ; preds = %161, %158
  %171 = and i32 %139, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %170, %173
  %174 = phi i64 [ %180, %173 ], [ 0, %170 ]
  %175 = getelementptr inbounds %struct.StripColorBalance, ptr %5, i64 0, i32 1, i64 %174
  %176 = load float, ptr %175, align 4, !tbaa !123, !alias.scope !307
  %177 = fcmp une float %176, 0.000000e+00
  %178 = fdiv float 1.000000e+00, %176
  %179 = select i1 %177, float %178, float 1.000000e+06
  store float %179, ptr %175, align 4, !tbaa !123, !alias.scope !307
  %180 = add nuw nsw i64 %174, 1
  %181 = icmp eq i64 %180, 3
  br i1 %181, label %182, label %173, !llvm.loop !304

182:                                              ; preds = %173, %170
  br label %183

183:                                              ; preds = %182, %207
  %184 = phi i64 [ %208, %207 ], [ 0, %182 ]
  %185 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %184
  %186 = load float, ptr %185, align 4, !tbaa !123
  %187 = getelementptr inbounds %struct.StripColorBalance, ptr %5, i64 0, i32 2, i64 %184
  %188 = load float, ptr %187, align 4, !tbaa !123
  %189 = getelementptr inbounds %struct.StripColorBalance, ptr %5, i64 0, i32 1, i64 %184
  %190 = load float, ptr %189, align 4, !tbaa !123
  %191 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 %184
  br label %192

192:                                              ; preds = %183, %192
  %193 = phi i64 [ 0, %183 ], [ %205, %192 ]
  %194 = trunc i64 %193 to i32
  %195 = sitofp i32 %194 to float
  %196 = fmul float %195, 0x3F70101020000000
  %197 = fadd float %196, -1.000000e+00
  %198 = tail call float @llvm.fmuladd.f32(float %197, float %186, float 1.000000e+00)
  %199 = fmul float %188, %198
  %200 = fcmp olt float %199, 0.000000e+00
  %201 = select i1 %200, float 0.000000e+00, float %199
  %202 = tail call float @powf(float noundef %201, float noundef %190) #27
  %203 = fmul float %19, %202
  %204 = getelementptr inbounds float, ptr %191, i64 %193
  store float %203, ptr %204, align 4, !tbaa !123
  %205 = add nuw nsw i64 %193, 1
  %206 = icmp eq i64 %205, 256
  br i1 %206, label %207, label %192, !llvm.loop !310

207:                                              ; preds = %192
  %208 = add nuw nsw i64 %184, 1
  %209 = icmp eq i64 %208, 3
  br i1 %209, label %212, label %183, !llvm.loop !311

210:                                              ; preds = %212
  %211 = icmp sgt i32 %127, 0
  br i1 %211, label %220, label %295

212:                                              ; preds = %207, %212
  %213 = phi i64 [ %218, %212 ], [ 0, %207 ]
  %214 = trunc i64 %213 to i32
  %215 = sitofp i32 %214 to float
  %216 = fmul float %215, 0x3F70101020000000
  %217 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 3, i64 %213
  store float %216, ptr %217, align 4, !tbaa !123
  %218 = add nuw nsw i64 %213, 1
  %219 = icmp eq i64 %218, 256
  br i1 %219, label %210, label %212, !llvm.loop !312

220:                                              ; preds = %210, %284
  %221 = phi ptr [ %292, %284 ], [ %13, %210 ]
  %222 = phi ptr [ %293, %284 ], [ null, %210 ]
  %223 = phi ptr [ %285, %284 ], [ %15, %210 ]
  %224 = icmp eq ptr %223, null
  br i1 %224, label %267, label %225

225:                                              ; preds = %220
  %226 = load i8, ptr %223, align 1, !tbaa !119
  %227 = uitofp i8 %226 to float
  %228 = fdiv float %227, 2.550000e+02
  %229 = getelementptr inbounds i8, ptr %223, i64 1
  %230 = load i8, ptr %229, align 1, !tbaa !119
  %231 = uitofp i8 %230 to float
  %232 = fdiv float %231, 2.550000e+02
  %233 = getelementptr inbounds i8, ptr %223, i64 2
  %234 = load i8, ptr %233, align 1, !tbaa !119
  %235 = uitofp i8 %234 to float
  %236 = fdiv float %235, 2.550000e+02
  %237 = load i8, ptr %221, align 1, !tbaa !119
  %238 = uitofp i8 %237 to float
  %239 = fsub float 1.000000e+00, %228
  %240 = zext i8 %237 to i64
  %241 = getelementptr inbounds [256 x float], ptr %4, i64 0, i64 %240
  %242 = load float, ptr %241, align 4, !tbaa !123
  %243 = fmul float %228, %242
  %244 = tail call float @llvm.fmuladd.f32(float %238, float %239, float %243)
  %245 = fptoui float %244 to i8
  store i8 %245, ptr %221, align 1, !tbaa !119
  %246 = getelementptr inbounds i8, ptr %221, i64 1
  %247 = load i8, ptr %246, align 1, !tbaa !119
  %248 = uitofp i8 %247 to float
  %249 = fsub float 1.000000e+00, %232
  %250 = zext i8 %247 to i64
  %251 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 1, i64 %250
  %252 = load float, ptr %251, align 4, !tbaa !123
  %253 = fmul float %232, %252
  %254 = tail call float @llvm.fmuladd.f32(float %248, float %249, float %253)
  %255 = fptoui float %254 to i8
  store i8 %255, ptr %246, align 1, !tbaa !119
  %256 = getelementptr inbounds i8, ptr %221, i64 2
  %257 = load i8, ptr %256, align 1, !tbaa !119
  %258 = uitofp i8 %257 to float
  %259 = fsub float 1.000000e+00, %236
  %260 = zext i8 %257 to i64
  %261 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 2, i64 %260
  %262 = load float, ptr %261, align 4, !tbaa !123
  %263 = fmul float %236, %262
  %264 = tail call float @llvm.fmuladd.f32(float %258, float %259, float %263)
  %265 = fptoui float %264 to i8
  store i8 %265, ptr %256, align 1, !tbaa !119
  %266 = getelementptr inbounds i8, ptr %223, i64 4
  br label %284

267:                                              ; preds = %220
  %268 = load i8, ptr %221, align 1, !tbaa !119
  %269 = zext i8 %268 to i64
  %270 = getelementptr inbounds [256 x float], ptr %4, i64 0, i64 %269
  %271 = load float, ptr %270, align 4, !tbaa !123
  store float %271, ptr %222, align 4, !tbaa !123
  %272 = getelementptr inbounds i8, ptr %221, i64 1
  %273 = load i8, ptr %272, align 1, !tbaa !119
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 1, i64 %274
  %276 = load float, ptr %275, align 4, !tbaa !123
  %277 = getelementptr inbounds float, ptr %222, i64 1
  store float %276, ptr %277, align 4, !tbaa !123
  %278 = getelementptr inbounds i8, ptr %221, i64 2
  %279 = load i8, ptr %278, align 1, !tbaa !119
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 2, i64 %280
  %282 = load float, ptr %281, align 4, !tbaa !123
  %283 = getelementptr inbounds float, ptr %222, i64 2
  store float %282, ptr %283, align 4, !tbaa !123
  br label %284

284:                                              ; preds = %267, %225
  %285 = phi ptr [ %266, %225 ], [ null, %267 ]
  %286 = getelementptr inbounds i8, ptr %221, i64 3
  %287 = load i8, ptr %286, align 1, !tbaa !119
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds [4 x [256 x float]], ptr %4, i64 0, i64 3, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !123
  %291 = getelementptr inbounds float, ptr %222, i64 3
  store float %290, ptr %291, align 4, !tbaa !123
  %292 = getelementptr inbounds i8, ptr %221, i64 4
  %293 = getelementptr inbounds float, ptr %222, i64 4
  %294 = icmp ult ptr %292, %137
  br i1 %294, label %220, label %295, !llvm.loop !313

295:                                              ; preds = %284, %210
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #27
  br label %493

296:                                              ; preds = %121
  %297 = shl nsw i32 %9, 2
  %298 = mul nsw i32 %297, %11
  %299 = sext i32 %298 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %2, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false), !tbaa.struct !295
  br label %300

300:                                              ; preds = %300, %296
  %301 = phi i64 [ 0, %296 ], [ %305, %300 ]
  %302 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %301
  %303 = load float, ptr %302, align 4, !tbaa !123, !alias.scope !314
  %304 = fsub float 2.000000e+00, %303
  store float %304, ptr %302, align 4, !tbaa !123, !alias.scope !314
  %305 = add nuw nsw i64 %301, 1
  %306 = icmp eq i64 %305, 3
  br i1 %306, label %307, label %300, !llvm.loop !299

307:                                              ; preds = %300
  %308 = getelementptr inbounds i8, ptr %13, i64 %299
  %309 = getelementptr inbounds %struct.StripColorBalance, ptr %2, i64 0, i32 3
  %310 = load i32, ptr %309, align 4, !tbaa !300, !alias.scope !314
  %311 = and i32 %310, 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %329, label %313

313:                                              ; preds = %307, %324
  %314 = phi i64 [ %327, %324 ], [ 0, %307 ]
  %315 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %314
  %316 = load float, ptr %315, align 4, !tbaa !123, !alias.scope !314
  %317 = fcmp ogt float %316, 1.000000e+00
  br i1 %317, label %318, label %324

318:                                              ; preds = %313
  %319 = fadd float %316, -1.000000e+00
  %320 = fpext float %319 to double
  %321 = fmul double %320, %320
  %322 = fadd double %321, 1.000000e+00
  %323 = fptrunc double %322 to float
  store float %323, ptr %315, align 4, !tbaa !123, !alias.scope !314
  br label %324

324:                                              ; preds = %318, %313
  %325 = load float, ptr %315, align 4, !tbaa !123, !alias.scope !314
  %326 = fsub float 2.000000e+00, %325
  store float %326, ptr %315, align 4, !tbaa !123, !alias.scope !314
  %327 = add nuw nsw i64 %314, 1
  %328 = icmp eq i64 %327, 3
  br i1 %328, label %329, label %313, !llvm.loop !302

329:                                              ; preds = %324, %307
  %330 = and i32 %310, 1
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %329, %332
  %333 = phi i64 [ %339, %332 ], [ 0, %329 ]
  %334 = getelementptr inbounds %struct.StripColorBalance, ptr %2, i64 0, i32 2, i64 %333
  %335 = load float, ptr %334, align 4, !tbaa !123, !alias.scope !314
  %336 = fcmp une float %335, 0.000000e+00
  %337 = fdiv float 1.000000e+00, %335
  %338 = select i1 %336, float %337, float 1.000000e+06
  store float %338, ptr %334, align 4, !tbaa !123, !alias.scope !314
  %339 = add nuw nsw i64 %333, 1
  %340 = icmp eq i64 %339, 3
  br i1 %340, label %341, label %332, !llvm.loop !303

341:                                              ; preds = %332, %329
  %342 = and i32 %310, 2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %341, %344
  %345 = phi i64 [ %351, %344 ], [ 0, %341 ]
  %346 = getelementptr inbounds %struct.StripColorBalance, ptr %2, i64 0, i32 1, i64 %345
  %347 = load float, ptr %346, align 4, !tbaa !123, !alias.scope !314
  %348 = fcmp une float %347, 0.000000e+00
  %349 = fdiv float 1.000000e+00, %347
  %350 = select i1 %348, float %349, float 1.000000e+06
  store float %350, ptr %346, align 4, !tbaa !123, !alias.scope !314
  %351 = add nuw nsw i64 %345, 1
  %352 = icmp eq i64 %351, 3
  br i1 %352, label %353, label %344, !llvm.loop !304

353:                                              ; preds = %344, %341
  %354 = icmp sgt i32 %298, 0
  br i1 %354, label %355, label %492

355:                                              ; preds = %353
  %356 = getelementptr inbounds float, ptr %3, i64 1
  %357 = getelementptr inbounds float, ptr %3, i64 2
  %358 = getelementptr inbounds float, ptr %3, i64 3
  br label %359

359:                                              ; preds = %355, %485
  %360 = phi ptr [ %13, %355 ], [ %487, %485 ]
  %361 = phi ptr [ %15, %355 ], [ %490, %485 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %362 = getelementptr inbounds i8, ptr %360, i64 3
  %363 = load i8, ptr %362, align 1, !tbaa !119
  %364 = uitofp i8 %363 to float
  %365 = fmul float %364, 0x3F70101020000000
  %366 = fmul float %365, 0x3F70101020000000
  %367 = load i8, ptr %360, align 1, !tbaa !119
  %368 = uitofp i8 %367 to float
  %369 = fmul float %366, %368
  store float %369, ptr %3, align 16, !tbaa !123
  %370 = getelementptr inbounds i8, ptr %360, i64 1
  %371 = load i8, ptr %370, align 1, !tbaa !119
  %372 = uitofp i8 %371 to float
  %373 = fmul float %366, %372
  store float %373, ptr %356, align 4, !tbaa !123
  %374 = getelementptr inbounds i8, ptr %360, i64 2
  %375 = load i8, ptr %374, align 1, !tbaa !119
  %376 = uitofp i8 %375 to float
  %377 = fmul float %366, %376
  store float %377, ptr %357, align 8, !tbaa !123
  store float %365, ptr %358, align 4, !tbaa !123
  %378 = icmp eq ptr %361, null
  br label %379

379:                                              ; preds = %359, %404
  %380 = phi i64 [ 0, %359 ], [ %406, %404 ]
  %381 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 %380
  %382 = load float, ptr %381, align 4, !tbaa !123
  %383 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %380
  %384 = load float, ptr %383, align 4, !tbaa !123
  %385 = getelementptr inbounds %struct.StripColorBalance, ptr %2, i64 0, i32 2, i64 %380
  %386 = load float, ptr %385, align 4, !tbaa !123
  %387 = getelementptr inbounds %struct.StripColorBalance, ptr %2, i64 0, i32 1, i64 %380
  %388 = load float, ptr %387, align 4, !tbaa !123
  %389 = fadd float %382, -1.000000e+00
  %390 = tail call float @llvm.fmuladd.f32(float %389, float %384, float 1.000000e+00)
  %391 = fmul float %390, %386
  %392 = fcmp olt float %391, 0.000000e+00
  %393 = select i1 %392, float 0.000000e+00, float %391
  %394 = tail call float @powf(float noundef %393, float noundef %388) #27
  %395 = fmul float %19, %394
  br i1 %378, label %404, label %396

396:                                              ; preds = %379
  %397 = getelementptr inbounds i8, ptr %361, i64 %380
  %398 = load i8, ptr %397, align 1, !tbaa !119
  %399 = uitofp i8 %398 to float
  %400 = fdiv float %399, 2.550000e+02
  %401 = fsub float 1.000000e+00, %400
  %402 = fmul float %395, %400
  %403 = tail call float @llvm.fmuladd.f32(float %382, float %401, float %402)
  br label %404

404:                                              ; preds = %396, %379
  %405 = phi float [ %403, %396 ], [ %395, %379 ]
  store float %405, ptr %381, align 4, !tbaa !123
  %406 = add nuw nsw i64 %380, 1
  %407 = icmp eq i64 %406, 3
  br i1 %407, label %408, label %379, !llvm.loop !317

408:                                              ; preds = %404
  %409 = load float, ptr %358, align 4, !tbaa !123
  %410 = fcmp oeq float %409, 0.000000e+00
  %411 = fcmp oeq float %409, 1.000000e+00
  %412 = or i1 %410, %411
  br i1 %412, label %413, label %447

413:                                              ; preds = %408
  %414 = load float, ptr %3, align 16, !tbaa !123
  %415 = fcmp ugt float %414, 0.000000e+00
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  %417 = fcmp ogt float %414, 0x3FEFEFEFE0000000
  br i1 %417, label %421, label %418

418:                                              ; preds = %416
  %419 = tail call float @llvm.fmuladd.f32(float %414, float 2.550000e+02, float 5.000000e-01)
  %420 = fptoui float %419 to i8
  br label %421

421:                                              ; preds = %418, %416, %413
  %422 = phi i8 [ 0, %413 ], [ %420, %418 ], [ -1, %416 ]
  store i8 %422, ptr %360, align 1, !tbaa !119
  %423 = load float, ptr %356, align 4, !tbaa !123
  %424 = fcmp ugt float %423, 0.000000e+00
  br i1 %424, label %425, label %430

425:                                              ; preds = %421
  %426 = fcmp ogt float %423, 0x3FEFEFEFE0000000
  br i1 %426, label %430, label %427

427:                                              ; preds = %425
  %428 = tail call float @llvm.fmuladd.f32(float %423, float 2.550000e+02, float 5.000000e-01)
  %429 = fptoui float %428 to i8
  br label %430

430:                                              ; preds = %427, %425, %421
  %431 = phi i8 [ 0, %421 ], [ %429, %427 ], [ -1, %425 ]
  store i8 %431, ptr %370, align 1, !tbaa !119
  %432 = load float, ptr %357, align 8, !tbaa !123
  %433 = fcmp ugt float %432, 0.000000e+00
  br i1 %433, label %434, label %439

434:                                              ; preds = %430
  %435 = fcmp ogt float %432, 0x3FEFEFEFE0000000
  br i1 %435, label %439, label %436

436:                                              ; preds = %434
  %437 = tail call float @llvm.fmuladd.f32(float %432, float 2.550000e+02, float 5.000000e-01)
  %438 = fptoui float %437 to i8
  br label %439

439:                                              ; preds = %436, %434, %430
  %440 = phi i8 [ 0, %430 ], [ %438, %436 ], [ -1, %434 ]
  store i8 %440, ptr %374, align 1, !tbaa !119
  %441 = fcmp ugt float %409, 0.000000e+00
  br i1 %441, label %442, label %485

442:                                              ; preds = %439
  %443 = fcmp ogt float %409, 0x3FEFEFEFE0000000
  br i1 %443, label %485, label %444

444:                                              ; preds = %442
  %445 = tail call float @llvm.fmuladd.f32(float %409, float 2.550000e+02, float 5.000000e-01)
  %446 = fptoui float %445 to i8
  br label %485

447:                                              ; preds = %408
  %448 = fdiv float 1.000000e+00, %409
  %449 = load float, ptr %3, align 16, !tbaa !123
  %450 = fmul float %448, %449
  %451 = fcmp ugt float %450, 0.000000e+00
  br i1 %451, label %452, label %457

452:                                              ; preds = %447
  %453 = fcmp ogt float %450, 0x3FEFEFEFE0000000
  br i1 %453, label %457, label %454

454:                                              ; preds = %452
  %455 = tail call float @llvm.fmuladd.f32(float %450, float 2.550000e+02, float 5.000000e-01)
  %456 = fptoui float %455 to i8
  br label %457

457:                                              ; preds = %454, %452, %447
  %458 = phi i8 [ 0, %447 ], [ %456, %454 ], [ -1, %452 ]
  store i8 %458, ptr %360, align 1, !tbaa !119
  %459 = load float, ptr %356, align 4, !tbaa !123
  %460 = fmul float %448, %459
  %461 = fcmp ugt float %460, 0.000000e+00
  br i1 %461, label %462, label %467

462:                                              ; preds = %457
  %463 = fcmp ogt float %460, 0x3FEFEFEFE0000000
  br i1 %463, label %467, label %464

464:                                              ; preds = %462
  %465 = tail call float @llvm.fmuladd.f32(float %460, float 2.550000e+02, float 5.000000e-01)
  %466 = fptoui float %465 to i8
  br label %467

467:                                              ; preds = %464, %462, %457
  %468 = phi i8 [ 0, %457 ], [ %466, %464 ], [ -1, %462 ]
  store i8 %468, ptr %370, align 1, !tbaa !119
  %469 = load float, ptr %357, align 8, !tbaa !123
  %470 = fmul float %448, %469
  %471 = fcmp ugt float %470, 0.000000e+00
  br i1 %471, label %472, label %477

472:                                              ; preds = %467
  %473 = fcmp ogt float %470, 0x3FEFEFEFE0000000
  br i1 %473, label %477, label %474

474:                                              ; preds = %472
  %475 = tail call float @llvm.fmuladd.f32(float %470, float 2.550000e+02, float 5.000000e-01)
  %476 = fptoui float %475 to i8
  br label %477

477:                                              ; preds = %474, %472, %467
  %478 = phi i8 [ 0, %467 ], [ %476, %474 ], [ -1, %472 ]
  store i8 %478, ptr %374, align 1, !tbaa !119
  %479 = fcmp ugt float %409, 0.000000e+00
  br i1 %479, label %480, label %485

480:                                              ; preds = %477
  %481 = fcmp ogt float %409, 0x3FEFEFEFE0000000
  br i1 %481, label %485, label %482

482:                                              ; preds = %480
  %483 = tail call float @llvm.fmuladd.f32(float %409, float 2.550000e+02, float 5.000000e-01)
  %484 = fptoui float %483 to i8
  br label %485

485:                                              ; preds = %477, %480, %482, %439, %442, %444
  %486 = phi i8 [ 0, %439 ], [ %446, %444 ], [ -1, %442 ], [ 0, %477 ], [ %484, %482 ], [ -1, %480 ]
  store i8 %486, ptr %362, align 1, !tbaa !119
  %487 = getelementptr inbounds i8, ptr %360, i64 4
  %488 = icmp eq ptr %361, null
  %489 = getelementptr inbounds i8, ptr %361, i64 4
  %490 = select i1 %488, ptr null, ptr %489
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  %491 = icmp ult ptr %487, %308
  br i1 %491, label %359, label %492, !llvm.loop !318

492:                                              ; preds = %485, %353
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #27
  br label %493

493:                                              ; preds = %295, %492, %120
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  %5 = load i8, ptr %4, align 1, !tbaa !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !151
  %10 = and i32 %9, 210960
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %14 = load float, ptr %13, align 4, !tbaa !205
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %16 = load i32, ptr %15, align 8, !tbaa !206
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %20 = load float, ptr %19, align 4, !tbaa !207
  %21 = fdiv float %20, 1.000000e+02
  %22 = fmul float %14, %21
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi float [ %22, %18 ], [ %14, %12 ]
  %25 = fcmp une float %24, 1.000000e+00
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %28 = load float, ptr %27, align 8, !tbaa !208
  %29 = fcmp une float %28, 1.000000e+00
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %32 = load ptr, ptr %31, align 8, !tbaa !209
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %30, %26, %23, %7, %3
  %36 = phi i8 [ 0, %3 ], [ 1, %7 ], [ 1, %23 ], [ 1, %26 ], [ %34, %30 ]
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_give_ibuf(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @BLI_countlist(ptr noundef nonnull %12) #27
  %17 = add nsw i32 %16, %2
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %18) #27
  %20 = getelementptr inbounds %struct.MetaStack, ptr %19, i64 0, i32 2
  br label %21

21:                                               ; preds = %9, %11, %15
  %22 = phi ptr [ %20, %15 ], [ %7, %11 ], [ %7, %9 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = tail call fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr noundef %23, float noundef %1, i32 noundef %2)
  br label %25

25:                                               ; preds = %3, %21
  %26 = phi ptr [ %24, %21 ], [ null, %3 ]
  ret ptr %26
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.SeqEffectHandle, align 8
  %6 = alloca %struct.SeqEffectHandle, align 8
  %7 = alloca %struct.SeqEffectHandle, align 8
  %8 = alloca [33 x ptr], align 16
  %9 = alloca [33 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %8) #27
  %10 = icmp sgt i32 %3, 32
  br i1 %10, label %111, label %11

11:                                               ; preds = %4
  %12 = fptosi float %2 to i32
  %13 = call fastcc i32 @evaluate_seq_frame_gen(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %12, i32 noundef %3)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %3, 0
  %17 = select i1 %16, i32 32, i32 %3
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %39
  %22 = phi i64 [ %20, %19 ], [ %40, %39 ]
  %23 = getelementptr inbounds [33 x ptr], ptr %8, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !151
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = icmp ne i32 %33, 4
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %31, %26, %21
  %37 = phi i8 [ 0, %26 ], [ 0, %21 ], [ %35, %31 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = add nsw i64 %22, -1
  %41 = icmp sgt i64 %22, 1
  br i1 %41, label %21, label %44, !llvm.loop !319

42:                                               ; preds = %36
  %43 = trunc i64 %22 to i32
  br label %44

44:                                               ; preds = %42, %39, %15, %11
  %45 = phi i32 [ %3, %11 ], [ %17, %15 ], [ %43, %42 ], [ 0, %39 ]
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = zext nneg i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %71
  %50 = phi i64 [ %48, %47 ], [ %72, %71 ]
  %51 = getelementptr inbounds [33 x ptr], ptr %8, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !151
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !59
  %62 = icmp ne i32 %61, 4
  %63 = zext i1 %62 to i8
  br label %64

64:                                               ; preds = %59, %54, %49
  %65 = phi i8 [ 0, %54 ], [ 0, %49 ], [ %63, %59 ]
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 46
  %69 = load i32, ptr %68, align 8, !tbaa !206
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %64
  %72 = add nsw i64 %50, -1
  %73 = icmp sgt i64 %50, 1
  br i1 %73, label %49, label %76, !llvm.loop !320

74:                                               ; preds = %67
  %75 = trunc i64 %50 to i32
  br label %76

76:                                               ; preds = %74, %71, %44
  %77 = phi i32 [ %45, %44 ], [ %75, %74 ], [ 0, %71 ]
  %78 = icmp sle i32 %77, %45
  %79 = icmp sgt i32 %77, -1
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = zext i32 %77 to i64
  br label %83

83:                                               ; preds = %81, %106
  %84 = phi i64 [ %82, %81 ], [ %108, %106 ]
  %85 = phi i32 [ 0, %81 ], [ %107, %106 ]
  %86 = getelementptr inbounds [33 x ptr], ptr %8, i64 0, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.Sequence, ptr %87, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !151
  %92 = and i32 %91, 32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.Sequence, ptr %87, i64 0, i32 6
  %96 = load i32, ptr %95, align 4, !tbaa !59
  %97 = icmp ne i32 %96, 4
  %98 = zext i1 %97 to i8
  br label %99

99:                                               ; preds = %94, %89, %83
  %100 = phi i8 [ 0, %89 ], [ 0, %83 ], [ %98, %94 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = add nsw i32 %85, 1
  %104 = sext i32 %85 to i64
  %105 = getelementptr inbounds ptr, ptr %9, i64 %104
  store ptr %87, ptr %105, align 8, !tbaa !34
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi i32 [ %103, %102 ], [ %85, %99 ]
  %108 = add nuw nsw i64 %84, 1
  %109 = trunc i64 %84 to i32
  %110 = icmp sgt i32 %45, %109
  br i1 %110, label %83, label %111, !llvm.loop !321

111:                                              ; preds = %106, %76, %4
  %112 = phi i32 [ 0, %4 ], [ 0, %76 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %8) #27
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %276, label %114

114:                                              ; preds = %111
  %115 = add nsw i32 %112, -1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [33 x ptr], ptr %9, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !34
  %119 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %118, float noundef %2, i32 noundef 1) #27
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %276

121:                                              ; preds = %114
  %122 = icmp eq i32 %112, 1
  br i1 %122, label %132, label %123

123:                                              ; preds = %121
  %124 = icmp sgt i32 %112, 0
  br i1 %124, label %125, label %234

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 7
  %127 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %128 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %129 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %130 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %131 = zext i32 %115 to i64
  br label %180

132:                                              ; preds = %121
  %133 = load ptr, ptr %9, align 16, !tbaa !34
  %134 = getelementptr inbounds %struct.Sequence, ptr %133, i64 0, i32 46
  %135 = load i32, ptr %134, align 8, !tbaa !206
  switch i32 %135, label %176 [
    i32 0, label %152
    i32 8, label %136
    i32 11, label %136
  ]

136:                                              ; preds = %132, %132
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #27
  call void @BKE_sequence_get_blend(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %7, ptr noundef %133) #27
  %137 = getelementptr inbounds %struct.Sequence, ptr %133, i64 0, i32 47
  %138 = load float, ptr %137, align 4, !tbaa !207
  %139 = fdiv float %138, 1.000000e+02
  %140 = getelementptr inbounds %struct.SeqEffectHandle, ptr %7, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !217
  %142 = call i32 %141(ptr noundef %133, float noundef %139, float noundef %139) #27
  %143 = add i32 %142, 1
  %144 = icmp ult i32 %143, 2
  br i1 %144, label %150, label %145

145:                                              ; preds = %136
  %146 = load i32, ptr %134, align 8, !tbaa !206
  switch i32 %146, label %149 [
    i32 11, label %147
    i32 12, label %147
    i32 15, label %147
  ]

147:                                              ; preds = %145, %145, %145
  switch i32 %142, label %149 [
    i32 2, label %150
    i32 1, label %148
  ]

148:                                              ; preds = %147
  br label %150

149:                                              ; preds = %147, %145
  br label %150

150:                                              ; preds = %136, %147, %148, %149
  %151 = phi i32 [ 2, %148 ], [ %142, %149 ], [ %142, %136 ], [ 1, %147 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #27
  br label %152

152:                                              ; preds = %132, %150
  %153 = phi i32 [ %151, %150 ], [ -1, %132 ]
  switch i32 %153, label %162 [
    i32 -1, label %154
    i32 2, label %154
    i32 1, label %156
  ]

154:                                              ; preds = %152, %152
  %155 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %133, float noundef %2)
  br label %178

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %158 = load i32, ptr %157, align 8, !tbaa !127
  %159 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %160 = load i32, ptr %159, align 4, !tbaa !128
  %161 = call ptr @IMB_allocImBuf(i32 noundef %158, i32 noundef %160, i8 noundef zeroext 32, i32 noundef 1) #27
  br label %178

162:                                              ; preds = %152
  %163 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %133, float noundef %2)
  %164 = icmp eq i32 %153, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %167 = load i32, ptr %166, align 8, !tbaa !127
  %168 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %169 = load i32, ptr %168, align 4, !tbaa !128
  %170 = getelementptr inbounds %struct.ImBuf, ptr %163, i64 0, i32 9
  %171 = load ptr, ptr %170, align 8, !tbaa !115
  %172 = icmp eq ptr %171, null
  %173 = select i1 %172, i32 1, i32 32
  %174 = call ptr @IMB_allocImBuf(i32 noundef %167, i32 noundef %169, i8 noundef zeroext 32, i32 noundef %173) #27
  %175 = call fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef %133, float noundef %2, ptr noundef %174, ptr noundef %163)
  call void @IMB_freeImBuf(ptr noundef %174) #27
  call void @IMB_freeImBuf(ptr noundef %163) #27
  br label %178

176:                                              ; preds = %132
  %177 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %133, float noundef %2)
  br label %178

178:                                              ; preds = %154, %162, %165, %156, %176
  %179 = phi ptr [ %177, %176 ], [ %155, %154 ], [ %161, %156 ], [ %175, %165 ], [ %163, %162 ]
  call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %133, float noundef %2, i32 noundef 1, ptr noundef %179) #27
  br label %276

180:                                              ; preds = %125, %229
  %181 = phi i64 [ %131, %125 ], [ %230, %229 ]
  %182 = getelementptr inbounds [33 x ptr], ptr %9, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !34
  %184 = call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %183, float noundef %2, i32 noundef 1) #27
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %226

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.Sequence, ptr %183, i64 0, i32 46
  %188 = load i32, ptr %187, align 8, !tbaa !206
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %183, float noundef %2)
  br label %226

192:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #27
  call void @BKE_sequence_get_blend(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %6, ptr noundef %183) #27
  %193 = getelementptr inbounds %struct.Sequence, ptr %183, i64 0, i32 47
  %194 = load float, ptr %193, align 4, !tbaa !207
  %195 = fdiv float %194, 1.000000e+02
  %196 = load ptr, ptr %126, align 8, !tbaa !217
  %197 = call i32 %196(ptr noundef %183, float noundef %195, float noundef %195) #27
  %198 = add i32 %197, 1
  %199 = icmp ult i32 %198, 2
  br i1 %199, label %205, label %200

200:                                              ; preds = %192
  %201 = load i32, ptr %187, align 8, !tbaa !206
  switch i32 %201, label %204 [
    i32 11, label %202
    i32 12, label %202
    i32 15, label %202
  ]

202:                                              ; preds = %200, %200, %200
  switch i32 %197, label %204 [
    i32 2, label %205
    i32 1, label %203
  ]

203:                                              ; preds = %202
  br label %205

204:                                              ; preds = %202, %200
  br label %205

205:                                              ; preds = %192, %202, %203, %204
  %206 = phi i32 [ 2, %203 ], [ %197, %204 ], [ %197, %192 ], [ 1, %202 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #27
  switch i32 %206, label %223 [
    i32 -1, label %207
    i32 2, label %207
    i32 1, label %209
    i32 0, label %215
  ]

207:                                              ; preds = %205, %205
  %208 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %183, float noundef %2)
  br label %223

209:                                              ; preds = %205
  %210 = icmp eq i64 %181, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %209
  %212 = load i32, ptr %129, align 8, !tbaa !127
  %213 = load i32, ptr %130, align 4, !tbaa !128
  %214 = call ptr @IMB_allocImBuf(i32 noundef %212, i32 noundef %213, i8 noundef zeroext 32, i32 noundef 1) #27
  br label %223

215:                                              ; preds = %205
  %216 = icmp eq i64 %181, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %215
  %218 = load i32, ptr %127, align 8, !tbaa !127
  %219 = load i32, ptr %128, align 4, !tbaa !128
  %220 = call ptr @IMB_allocImBuf(i32 noundef %218, i32 noundef %219, i8 noundef zeroext 32, i32 noundef 1) #27
  %221 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %183, float noundef %2)
  %222 = call fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef %183, float noundef %2, ptr noundef %220, ptr noundef %221)
  call void @IMB_freeImBuf(ptr noundef %220) #27
  call void @IMB_freeImBuf(ptr noundef %221) #27
  br label %223

223:                                              ; preds = %215, %217, %209, %211, %205, %207
  %224 = phi ptr [ null, %205 ], [ %222, %217 ], [ null, %215 ], [ %214, %211 ], [ null, %209 ], [ %208, %207 ]
  %225 = icmp eq ptr %224, null
  br label %226

226:                                              ; preds = %223, %180, %190
  %227 = phi i1 [ false, %190 ], [ false, %180 ], [ %225, %223 ]
  %228 = phi ptr [ %191, %190 ], [ %184, %180 ], [ %224, %223 ]
  br i1 %227, label %229, label %232

229:                                              ; preds = %226
  %230 = add nsw i64 %181, -1
  %231 = icmp sgt i64 %181, 0
  br i1 %231, label %180, label %234, !llvm.loop !322

232:                                              ; preds = %226
  %233 = trunc i64 %181 to i32
  br label %234

234:                                              ; preds = %232, %229, %123
  %235 = phi i32 [ %115, %123 ], [ %233, %232 ], [ -1, %229 ]
  %236 = phi ptr [ null, %123 ], [ %228, %229 ], [ %228, %232 ]
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds [33 x ptr], ptr %9, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !34
  call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %239, float noundef %2, i32 noundef 1, ptr noundef %236) #27
  %240 = add nsw i32 %235, 1
  %241 = icmp slt i32 %240, %112
  br i1 %241, label %242, label %276

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.SeqEffectHandle, ptr %5, i64 0, i32 7
  %244 = sext i32 %240 to i64
  br label %245

245:                                              ; preds = %242, %270
  %246 = phi i64 [ %244, %242 ], [ %273, %270 ]
  %247 = phi ptr [ %236, %242 ], [ %271, %270 ]
  %248 = getelementptr inbounds [33 x ptr], ptr %9, i64 0, i64 %246
  %249 = load ptr, ptr %248, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #27
  call void @BKE_sequence_get_blend(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %5, ptr noundef %249) #27
  %250 = getelementptr inbounds %struct.Sequence, ptr %249, i64 0, i32 47
  %251 = load float, ptr %250, align 4, !tbaa !207
  %252 = fdiv float %251, 1.000000e+02
  %253 = load ptr, ptr %243, align 8, !tbaa !217
  %254 = call i32 %253(ptr noundef %249, float noundef %252, float noundef %252) #27
  %255 = add i32 %254, 1
  %256 = icmp ult i32 %255, 2
  br i1 %256, label %264, label %257

257:                                              ; preds = %245
  %258 = getelementptr inbounds %struct.Sequence, ptr %249, i64 0, i32 46
  %259 = load i32, ptr %258, align 8, !tbaa !206
  switch i32 %259, label %263 [
    i32 11, label %260
    i32 12, label %260
    i32 15, label %260
  ]

260:                                              ; preds = %257, %257, %257
  %261 = add i32 %254, -1
  %262 = icmp ult i32 %261, 2
  br i1 %262, label %264, label %263

263:                                              ; preds = %260, %257
  br label %264

264:                                              ; preds = %260, %245, %263
  %265 = phi i32 [ %254, %263 ], [ %254, %245 ], [ 2, %260 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #27
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %249, float noundef %2)
  %269 = call fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef %249, float noundef %2, ptr noundef %247, ptr noundef %268)
  call void @IMB_freeImBuf(ptr noundef %247) #27
  call void @IMB_freeImBuf(ptr noundef %268) #27
  br label %270

270:                                              ; preds = %267, %264
  %271 = phi ptr [ %269, %267 ], [ %247, %264 ]
  %272 = load ptr, ptr %248, align 8, !tbaa !34
  call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %272, float noundef %2, i32 noundef 1, ptr noundef %271) #27
  %273 = add nsw i64 %246, 1
  %274 = trunc i64 %273 to i32
  %275 = icmp eq i32 %112, %274
  br i1 %275, label %276, label %245, !llvm.loop !323

276:                                              ; preds = %270, %234, %114, %111, %178
  %277 = phi ptr [ %179, %178 ], [ null, %111 ], [ %119, %114 ], [ %236, %234 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %9) #27
  ret ptr %277
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef %0, float noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr noundef %3, float noundef %1, i32 noundef %2)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_sequencer_give_ibuf_direct(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %2, float noundef %1)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_give_ibuf_prefetch_request(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load volatile i8, ptr @seq_thread_shutdown, align 1, !tbaa !119
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 48, ptr noundef nonnull @.str.3) #27
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !324
  %12 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !128
  %14 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !326
  %15 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 4
  store float %1, ptr %15, align 8, !tbaa !327
  %16 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 5
  store i32 %2, ptr %16, align 4, !tbaa !328
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 6
  store i32 %18, ptr %19, align 8, !tbaa !329
  %20 = load i32, ptr @monoton_cfra, align 4, !tbaa !107
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @monoton_cfra, align 4, !tbaa !107
  %22 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 7
  store i32 %20, ptr %22, align 4, !tbaa !330
  tail call void @BLI_addtail(ptr noundef nonnull @prefetch_wait, ptr noundef %8) #27
  br label %23

23:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequencer_give_ibuf_threaded(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load volatile i8, ptr @seq_thread_shutdown, align 1, !tbaa !119
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr @prefetch_wait, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br label %34

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %75, label %18

18:                                               ; preds = %12
  %19 = icmp slt i32 %2, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Editing, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @BLI_countlist(ptr noundef nonnull %21) #27
  %26 = add nsw i32 %25, %2
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0)
  %28 = tail call ptr @BLI_findlink(ptr noundef nonnull %21, i32 noundef %27) #27
  %29 = getelementptr inbounds %struct.MetaStack, ptr %28, i64 0, i32 2
  br label %30

30:                                               ; preds = %24, %20, %18
  %31 = phi ptr [ %29, %24 ], [ %16, %20 ], [ %16, %18 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = tail call fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr noundef %32, float noundef %1, i32 noundef %2)
  br label %75

34:                                               ; preds = %70, %6
  %35 = phi i8 [ 0, %6 ], [ %65, %70 ]
  br i1 %11, label %63, label %36

36:                                               ; preds = %34, %60
  %37 = phi ptr [ %61, %60 ], [ %10, %34 ]
  %38 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %37, i64 0, i32 4
  %39 = load float, ptr %38, align 8, !tbaa !327
  %40 = fcmp oeq float %39, %1
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %37, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !328
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i32, ptr %8, align 8, !tbaa !127
  %47 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %37, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !324
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32, ptr %9, align 4, !tbaa !128
  %52 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %37, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !326
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, ptr %7, align 8, !tbaa !129
  %57 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %37, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !329
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %36, %41, %45, %50, %55
  %61 = load ptr, ptr %37, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %36, !llvm.loop !331

63:                                               ; preds = %60, %55, %34
  %64 = phi ptr [ null, %34 ], [ %37, %55 ], [ null, %60 ]
  %65 = phi i8 [ %35, %34 ], [ 1, %55 ], [ %35, %60 ]
  %66 = icmp eq ptr %64, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %64, i64 0, i32 7
  %69 = load i32, ptr %68, align 4, !tbaa !330
  store volatile i32 %69, ptr @seq_last_given_monoton_cfra, align 4, !tbaa !107
  br label %70

70:                                               ; preds = %63, %67
  %71 = icmp eq i8 %65, 0
  br i1 %71, label %72, label %34

72:                                               ; preds = %70
  %73 = load ptr, ptr @stderr, align 8, !tbaa !34
  %74 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 45, i64 1, ptr %73) #29
  br label %75

75:                                               ; preds = %72, %30, %12
  %76 = phi ptr [ null, %72 ], [ %33, %30 ], [ null, %12 ]
  ret ptr %76
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_sequence_check_depend(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !142
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !140
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %45, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !140
  %23 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !142
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %45, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !162
  %29 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !162
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !59
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %39 = load i32, ptr %38, align 8, !tbaa !206
  switch i32 %39, label %44 [
    i32 0, label %45
    i32 8, label %40
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %42 = load float, ptr %41, align 4, !tbaa !207
  %43 = fcmp oeq float %42, 1.000000e+02
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %40, %32
  br label %45

45:                                               ; preds = %40, %37, %26, %14, %20, %2, %6, %10, %44
  %46 = phi i8 [ 1, %44 ], [ 1, %10 ], [ 1, %6 ], [ 1, %2 ], [ 0, %20 ], [ 0, %14 ], [ 0, %26 ], [ 0, %37 ], [ 0, %40 ]
  ret i8 %46
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_invalidate_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @IMB_free_anim(ptr noundef nonnull %6) #27
  store ptr null, ptr %5, align 8, !tbaa !58
  br label %9

9:                                                ; preds = %8, %2
  tail call void @BKE_sequencer_cache_cleanup_sequence(ptr noundef %1) #27
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = icmp eq i32 %15, 29
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #27
  br label %18

18:                                               ; preds = %9, %13, %17
  tail call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef %1) #27
  %19 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call fastcc void @sequence_do_invalidate_dependent(ptr noundef %1, ptr noundef nonnull %19)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_invalidate_dependent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !59
  %11 = icmp eq i32 %10, 29
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #27
  br label %13

13:                                               ; preds = %2, %8, %12
  tail call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef %1) #27
  %14 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call fastcc void @sequence_do_invalidate_dependent(ptr noundef %1, ptr noundef nonnull %14)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @IMB_free_anim(ptr noundef nonnull %6) #27
  store ptr null, ptr %5, align 8, !tbaa !58
  br label %9

9:                                                ; preds = %8, %2
  tail call void @BKE_sequencer_cache_cleanup_sequence(ptr noundef %1) #27
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = icmp eq i32 %15, 29
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #27
  br label %18

18:                                               ; preds = %9, %13, %17
  %19 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call fastcc void @sequence_do_invalidate_dependent(ptr noundef %1, ptr noundef nonnull %19)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_free_imbuf(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @BKE_sequencer_cache_cleanup() #27
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  br label %9

9:                                                ; preds = %6, %43
  %10 = phi ptr [ %4, %6 ], [ %44, %43 ]
  br i1 %7, label %20, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %8, align 8, !tbaa !243
  %13 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !140
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 16
  %18 = load i32, ptr %17, align 4, !tbaa !142
  %19 = icmp sgt i32 %12, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16, %11, %9
  %21 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 30
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @IMB_free_anim(ptr noundef nonnull %30) #27
  store ptr null, ptr %29, align 8, !tbaa !58
  br label %33

33:                                               ; preds = %32, %28, %24
  %34 = load i32, ptr %25, align 4, !tbaa !59
  %35 = icmp eq i32 %34, 29
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext 1) #27
  br label %37

37:                                               ; preds = %33, %36, %20
  %38 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 36
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %0, ptr noundef nonnull %42, i8 noundef zeroext %2)
  br label %43

43:                                               ; preds = %37, %41, %16
  %44 = load ptr, ptr %10, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %9, !llvm.loop !332

46:                                               ; preds = %43, %3
  ret void
}

declare void @BKE_sequence_effect_speed_rebuild_map(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  %14 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2, i32 noundef %3), !range !202
  %15 = load ptr, ptr %13, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !333

17:                                               ; preds = %12, %8, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, %2
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %17, %11 ], [ %9, %5 ]
  %13 = phi i8 [ %16, %11 ], [ %7, %5 ]
  %14 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2, i32 noundef %3, i32 noundef %4), !range !202
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i8 %13, i8 1
  %17 = load ptr, ptr %12, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !334

19:                                               ; preds = %11, %5
  %20 = phi i8 [ %7, %5 ], [ %16, %11 ]
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %2, i32 noundef %3, i32 noundef %4), !range !202
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i8 %20, i8 1
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i8 [ %20, %19 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %31 = load ptr, ptr %30, align 8, !tbaa !148
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %21, align 8, !tbaa !149
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %31, ptr noundef %2, i32 noundef %3, i32 noundef %4), !range !202
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i8 %29, i8 1
  br label %40

40:                                               ; preds = %36, %33, %28
  %41 = phi i8 [ %29, %33 ], [ %29, %28 ], [ %39, %36 ]
  %42 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %43 = load ptr, ptr %42, align 8, !tbaa !150
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %21, align 8, !tbaa !149
  %47 = icmp eq ptr %43, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %30, align 8, !tbaa !148
  %50 = icmp eq ptr %43, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %2, i32 noundef %3, i32 noundef %4), !range !202
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i8 %41, i8 1
  br label %55

55:                                               ; preds = %51, %48, %45, %40
  %56 = phi i8 [ %41, %48 ], [ %41, %45 ], [ %41, %40 ], [ %54, %51 ]
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = icmp eq i32 %4, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !59
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @IMB_free_anim(ptr noundef nonnull %66) #27
  store ptr null, ptr %65, align 8, !tbaa !58
  br label %69

69:                                               ; preds = %68, %64, %60
  %70 = load i32, ptr %61, align 4, !tbaa !59
  %71 = icmp eq i32 %70, 29
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #27
  br label %73

73:                                               ; preds = %69, %72, %58
  %74 = icmp eq i32 %3, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1)
  br label %76

76:                                               ; preds = %55, %75, %73
  ret i8 %56
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_sequence_tx_get_final_left(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #15 {
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi i32 [ -2147483648, %2 ], [ %21, %12 ]
  %5 = phi ptr [ %0, %2 ], [ %10, %12 ]
  %6 = phi i8 [ %1, %2 ], [ 1, %12 ]
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !335
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !136
  %17 = sub i32 %14, %16
  %18 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !135
  %20 = add nsw i32 %17, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %4, i32 %20)
  br label %3

22:                                               ; preds = %8, %3
  %23 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !139
  %25 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !136
  %27 = sub i32 %24, %26
  %28 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !135
  %30 = add nsw i32 %27, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %4, i32 %30)
  ret i32 %31
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_sequence_tx_get_final_right(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #15 {
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi i32 [ 2147483647, %2 ], [ %24, %12 ]
  %5 = phi ptr [ %0, %2 ], [ %10, %12 ]
  %6 = phi i8 [ %1, %2 ], [ 1, %12 ]
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !335
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !141
  %17 = add nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !138
  %20 = add nsw i32 %17, %19
  %21 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !137
  %23 = sub i32 %20, %22
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %4)
  br label %3

25:                                               ; preds = %8, %3
  %26 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !139
  %28 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !141
  %30 = add nsw i32 %29, %27
  %31 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !138
  %33 = add nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 10
  %35 = load i32, ptr %34, align 4, !tbaa !137
  %36 = sub i32 %33, %35
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %4)
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_sequence_single_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = and i32 %7, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %7) #27
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %5, %12, %9, %1
  %17 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 0, %9 ], [ %15, %12 ]
  ret i8 %17
}

declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi ptr [ %3, %5 ], [ %22, %20 ]
  %9 = phi i8 [ 0, %5 ], [ %21, %20 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !151
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = icmp eq i8 %9, 0
  %16 = select i1 %6, i1 %15, i1 false
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %89, label %24

20:                                               ; preds = %14, %7
  %21 = phi i8 [ %9, %7 ], [ 1, %14 ]
  %22 = load ptr, ptr %8, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %89, label %7, !llvm.loop !336

24:                                               ; preds = %17, %86
  %25 = phi ptr [ %87, %86 ], [ %18, %17 ]
  %26 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !151
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 33
  %36 = load ptr, ptr %35, align 8, !tbaa !149
  %37 = icmp eq ptr %36, null
  br i1 %34, label %62, label %38

38:                                               ; preds = %30
  br i1 %37, label %44, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !151
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %39, %38
  %45 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 34
  %46 = load ptr, ptr %45, align 8, !tbaa !148
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !151
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %89, label %53

53:                                               ; preds = %48, %44
  %54 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 35
  %55 = load ptr, ptr %54, align 8, !tbaa !150
  %56 = icmp eq ptr %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !151
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %89, label %86

62:                                               ; preds = %30
  br i1 %37, label %68, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !151
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63, %62
  %69 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 34
  %70 = load ptr, ptr %69, align 8, !tbaa !148
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Sequence, ptr %70, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !151
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72, %68
  %78 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 35
  %79 = load ptr, ptr %78, align 8, !tbaa !150
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.Sequence, ptr %79, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !151
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %57, %53, %81, %77, %24
  %87 = load ptr, ptr %25, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %24, !llvm.loop !337

89:                                               ; preds = %20, %57, %48, %39, %81, %72, %63, %86, %2, %17
  %90 = phi i8 [ 1, %17 ], [ 0, %2 ], [ 1, %86 ], [ 0, %63 ], [ 0, %72 ], [ 0, %81 ], [ 0, %39 ], [ 0, %48 ], [ 0, %57 ], [ 0, %20 ]
  ret i8 %90
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_tx_handle_xlimits(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !139
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !136
  %10 = sub i32 %7, %9
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !135
  %13 = add nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !141
  %16 = add nsw i32 %15, %7
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %18 = load i32, ptr %17, align 4, !tbaa !138
  %19 = add nsw i32 %16, %18
  %20 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !137
  %22 = sub i32 %19, %21
  %23 = icmp slt i32 %13, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %5
  %25 = add nsw i32 %22, -1
  %26 = icmp slt i32 %7, %22
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = sub nsw i32 %7, %25
  store i32 %28, ptr %8, align 8, !tbaa !136
  br label %31

29:                                               ; preds = %24
  %30 = sub nsw i32 %25, %7
  store i32 %30, ptr %11, align 8, !tbaa !135
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi ptr [ %8, %29 ], [ %11, %27 ]
  store i32 0, ptr %32, align 8, !tbaa !107
  br label %33

33:                                               ; preds = %31, %5
  %34 = icmp eq i32 %15, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = and i32 %37, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %37) #27
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %33, %39, %42
  %46 = load i32, ptr %6, align 4, !tbaa !139
  %47 = load i32, ptr %8, align 8, !tbaa !136
  %48 = sub i32 %46, %47
  %49 = load i32, ptr %11, align 8, !tbaa !135
  %50 = add nsw i32 %48, %49
  %51 = load i32, ptr %14, align 8, !tbaa !141
  %52 = add nsw i32 %51, %46
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = add nsw i32 %52, -1
  %56 = icmp sgt i32 %51, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = sub nsw i32 %46, %55
  store i32 %58, ptr %8, align 8, !tbaa !136
  br label %61

59:                                               ; preds = %54
  %60 = sub nsw i32 %55, %46
  store i32 %60, ptr %11, align 8, !tbaa !135
  br label %61

61:                                               ; preds = %57, %59
  %62 = phi ptr [ %8, %59 ], [ %11, %57 ]
  store i32 0, ptr %62, align 8, !tbaa !107
  br label %63

63:                                               ; preds = %61, %35, %42, %45, %3
  %64 = icmp eq i32 %2, 0
  br i1 %64, label %123, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %67 = load i32, ptr %66, align 4, !tbaa !139
  %68 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !141
  %70 = add nsw i32 %69, %67
  %71 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %72 = load i32, ptr %71, align 4, !tbaa !138
  %73 = add nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  %75 = load i32, ptr %74, align 4, !tbaa !137
  %76 = sub i32 %73, %75
  %77 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  %78 = load i32, ptr %77, align 8, !tbaa !136
  %79 = sub nsw i32 %67, %78
  %80 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !135
  %82 = add nsw i32 %79, %81
  %83 = icmp sgt i32 %76, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %65
  %85 = add nsw i32 %82, 1
  %86 = icmp sgt i32 %70, %82
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = sub nsw i32 %85, %70
  store i32 %88, ptr %71, align 4, !tbaa !138
  br label %91

89:                                               ; preds = %84
  %90 = sub nsw i32 %70, %85
  store i32 %90, ptr %74, align 4, !tbaa !137
  br label %91

91:                                               ; preds = %87, %89
  %92 = phi ptr [ %71, %89 ], [ %74, %87 ]
  store i32 0, ptr %92, align 4, !tbaa !107
  br label %93

93:                                               ; preds = %91, %65
  %94 = icmp eq i32 %69, 1
  br i1 %94, label %95, label %105

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !59
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %95
  %100 = and i32 %97, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %97) #27
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %93, %99, %102
  %106 = load i32, ptr %66, align 4, !tbaa !139
  %107 = load i32, ptr %68, align 8, !tbaa !141
  %108 = add nsw i32 %107, %106
  %109 = load i32, ptr %71, align 4, !tbaa !138
  %110 = add nsw i32 %108, %109
  %111 = load i32, ptr %74, align 4, !tbaa !137
  %112 = sub i32 %110, %111
  %113 = icmp sgt i32 %112, %106
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = icmp slt i32 %107, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = add nsw i32 %106, 1
  %118 = sub nsw i32 %117, %108
  store i32 %118, ptr %71, align 4, !tbaa !138
  br label %121

119:                                              ; preds = %114
  %120 = add nsw i32 %107, -1
  store i32 %120, ptr %74, align 4, !tbaa !137
  br label %121

121:                                              ; preds = %116, %119
  %122 = phi ptr [ %71, %119 ], [ %74, %116 ]
  store i32 0, ptr %122, align 4, !tbaa !107
  br label %123

123:                                              ; preds = %121, %95, %102, %105, %63
  %124 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !59
  %126 = icmp eq i32 %125, 4
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  store i32 0, ptr %128, align 8, !tbaa !136
  %129 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  store i32 0, ptr %129, align 4, !tbaa !138
  br label %130

130:                                              ; preds = %127, %123
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_sequence_tx_test(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %3) #27
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %5 ]
  ret i8 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_sequence_test_overlap(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  br label %6

6:                                                ; preds = %28, %2
  %7 = phi ptr [ %0, %2 ], [ %8, %28 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, %1
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 8, !tbaa !162
  %14 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !162
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32, ptr %4, align 4, !tbaa !142
  %19 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !140
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, ptr %5, align 8, !tbaa !140
  %24 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 16
  %25 = load i32, ptr %24, align 4, !tbaa !142
  %26 = icmp slt i32 %23, %25
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %10, %12, %17, %22
  %29 = phi i8 [ 0, %12 ], [ 0, %10 ], [ 0, %17 ], [ %27, %22 ]
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %6, label %31, !llvm.loop !338

31:                                               ; preds = %6, %28
  %32 = phi i8 [ 1, %28 ], [ 0, %6 ]
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_translate(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @BKE_sequencer_offset_animdata(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !139
  %6 = add nsw i32 %5, %2
  store i32 %6, ptr %4, align 4, !tbaa !139
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %10 ]
  tail call void @BKE_sequence_translate(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %2)
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !339

18:                                               ; preds = %14, %10, %3
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_offset_animdata(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca [163 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 163, ptr nonnull %5) #27
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %75, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %75, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #27
  %16 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %15, i64 noundef 128) #27
  %17 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 163, ptr noundef nonnull @.str.43, ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #27
  %18 = load ptr, ptr %6, align 8, !tbaa !87
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = getelementptr inbounds %struct.bAction, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %75, label %23

23:                                               ; preds = %14
  %24 = sitofp i32 %2 to float
  %25 = sitofp i32 %2 to float
  br label %26

26:                                               ; preds = %23, %72
  %27 = phi ptr [ %21, %23 ], [ %73, %72 ]
  %28 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = call i32 @strncmp(ptr noundef %29, ptr noundef nonnull %5, i64 noundef %17) #28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !340
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !341
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = zext i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %53, %42 ]
  %44 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !123
  %46 = fadd float %45, %24
  store float %46, ptr %44, align 4, !tbaa !123
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %44, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !123
  %49 = fadd float %48, %24
  store float %49, ptr %47, align 4, !tbaa !123
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %44, i64 0, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !123
  %52 = fadd float %51, %24
  store float %52, ptr %50, align 4, !tbaa !123
  %53 = add nuw nsw i64 %43, 1
  %54 = icmp eq i64 %53, %41
  br i1 %54, label %55, label %42, !llvm.loop !342

55:                                               ; preds = %42, %36, %32
  %56 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !343
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !341
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = zext i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %70, %65 ]
  %67 = getelementptr inbounds %struct.FPoint, ptr %57, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !123
  %69 = fadd float %68, %25
  store float %69, ptr %67, align 4, !tbaa !123
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, %64
  br i1 %71, label %72, label %65, !llvm.loop !344

72:                                               ; preds = %65, %59, %55, %26
  %73 = load ptr, ptr %27, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %26, !llvm.loop !345

75:                                               ; preds = %72, %14, %3, %11
  call void @llvm.lifetime.end.p0(i64 163, ptr nonnull %5) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_sound_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  tail call void @BKE_sequence_sound_init(ptr noundef %0, ptr noundef nonnull %11)
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %10, !llvm.loop !346

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @sound_add_scene_sound_defaults(ptr noundef %0, ptr noundef %1) #27
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  store ptr %19, ptr %20, align 8, !tbaa !86
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !145
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @sound_scene_add_scene_sound_defaults(ptr noundef %0, ptr noundef %1) #27
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  store ptr %26, ptr %27, align 8, !tbaa !86
  br label %28

28:                                               ; preds = %10, %6, %21, %25
  ret void
}

declare ptr @sound_add_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sound_scene_add_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequencer_foreground_frame_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !97
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6, %35
  %11 = phi ptr [ %38, %35 ], [ %8, %6 ]
  %12 = phi i32 [ %37, %35 ], [ -1, %6 ]
  %13 = phi ptr [ %36, %35 ], [ null, %6 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !151
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !140
  %21 = icmp sgt i32 %20, %1
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !142
  %25 = icmp sgt i32 %24, %1
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !59
  switch i32 %28, label %35 [
    i32 0, label %29
    i32 1, label %29
    i32 2, label %29
    i32 3, label %29
    i32 28, label %29
  ]

29:                                               ; preds = %26, %26, %26, %26, %26
  %30 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !162
  %32 = icmp sgt i32 %31, %12
  %33 = select i1 %32, ptr %11, ptr %13
  %34 = tail call i32 @llvm.smax.i32(i32 %31, i32 %12)
  br label %35

35:                                               ; preds = %29, %26, %10, %18, %22
  %36 = phi ptr [ %13, %10 ], [ %13, %18 ], [ %13, %22 ], [ %13, %26 ], [ %33, %29 ]
  %37 = phi i32 [ %12, %10 ], [ %12, %18 ], [ %12, %22 ], [ %12, %26 ], [ %34, %29 ]
  %38 = load ptr, ptr %11, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %10, !llvm.loop !347

40:                                               ; preds = %35, %6, %2
  %41 = phi ptr [ null, %2 ], [ null, %6 ], [ %36, %35 ]
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_sequence_base_shuffle(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !162
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !162
  tail call void @BKE_sequence_calc(ptr noundef %2, ptr noundef %1)
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  br label %9

9:                                                ; preds = %34, %3
  %10 = phi ptr [ %0, %3 ], [ %35, %34 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %1
  br i1 %14, label %31, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %4, align 8, !tbaa !162
  %17 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !162
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, ptr %7, align 4, !tbaa !142
  %22 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !140
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, ptr %8, align 8, !tbaa !140
  %27 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 16
  %28 = load i32, ptr %27, align 4, !tbaa !142
  %29 = icmp slt i32 %26, %28
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %25, %20, %15, %13
  %32 = phi i8 [ 0, %15 ], [ 0, %13 ], [ 0, %20 ], [ %30, %25 ]
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %40
  %35 = phi ptr [ %11, %31 ], [ %0, %40 ]
  br label %9, !llvm.loop !348

36:                                               ; preds = %31
  br i1 %12, label %42, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %4, align 8, !tbaa !162
  %39 = icmp sgt i32 %38, 31
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = add nsw i32 %38, 1
  store i32 %41, ptr %4, align 8, !tbaa !162
  tail call void @BKE_sequence_calc(ptr noundef %2, ptr noundef %1)
  br label %34

42:                                               ; preds = %37, %36, %9
  %43 = load i32, ptr %4, align 8, !tbaa !162
  %44 = icmp sgt i32 %43, 31
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %47 = load i32, ptr %46, align 4, !tbaa !142
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %45, %60
  %51 = phi ptr [ %62, %60 ], [ %48, %45 ]
  %52 = phi i32 [ %61, %60 ], [ %47, %45 ]
  %53 = getelementptr inbounds %struct.Sequence, ptr %51, i64 0, i32 13
  %54 = load i32, ptr %53, align 8, !tbaa !162
  %55 = icmp eq i32 %54, %5
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.Sequence, ptr %51, i64 0, i32 16
  %58 = load i32, ptr %57, align 4, !tbaa !142
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 %52)
  br label %60

60:                                               ; preds = %50, %56
  %61 = phi i32 [ %59, %56 ], [ %52, %50 ]
  %62 = load ptr, ptr %51, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %50, !llvm.loop !349

64:                                               ; preds = %60, %45
  %65 = phi i32 [ %47, %45 ], [ %61, %60 ]
  store i32 %5, ptr %4, align 8, !tbaa !162
  %66 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %67 = load i32, ptr %66, align 8, !tbaa !140
  %68 = sub i32 %65, %67
  tail call void @BKE_sequence_translate(ptr noundef %2, ptr noundef %1, i32 noundef %68)
  tail call void @BKE_sequence_calc(ptr noundef %2, ptr noundef %1)
  br label %69

69:                                               ; preds = %42, %64
  %70 = phi i8 [ 0, %64 ], [ 1, %42 ]
  ret i8 %70
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_sequence_base_shuffle_time(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @shuffle_seq_time_offset(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 76)
  %4 = tail call fastcc i32 @shuffle_seq_time_offset(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 82)
  %5 = sub nsw i32 0, %3
  %6 = icmp sgt i32 %4, %5
  %7 = select i1 %6, i32 %3, i32 %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9, %21
  %13 = phi ptr [ %22, %21 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !335
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  tail call void @BKE_sequence_translate(ptr noundef %1, ptr noundef nonnull %13, i32 noundef %7)
  %18 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !151
  %20 = and i32 %19, -9
  store i32 %20, ptr %18, align 8, !tbaa !151
  br label %21

21:                                               ; preds = %12, %17
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12, !llvm.loop !350

24:                                               ; preds = %21, %9, %2
  %25 = zext i1 %8 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @shuffle_seq_time_offset(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i8 %2, 76
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %94, %3
  %10 = phi i32 [ 0, %3 ], [ %95, %94 ]
  br i1 %5, label %74, label %11

11:                                               ; preds = %9, %70
  %12 = phi ptr [ %72, %70 ], [ %4, %9 ]
  %13 = phi i32 [ %71, %70 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !335
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %1, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 13
  %22 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 16
  %23 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 15
  %24 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 15
  %25 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 16
  br label %26

26:                                               ; preds = %20, %66
  %27 = phi ptr [ %18, %20 ], [ %68, %66 ]
  %28 = phi i32 [ %13, %20 ], [ %67, %66 ]
  %29 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !335
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %26
  %33 = icmp eq ptr %12, %27
  br i1 %33, label %50, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %21, align 8, !tbaa !162
  %36 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !162
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, ptr %22, align 4, !tbaa !142
  %41 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !140
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, ptr %23, align 8, !tbaa !140
  %46 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 16
  %47 = load i32, ptr %46, align 4, !tbaa !142
  %48 = icmp slt i32 %45, %47
  %49 = zext i1 %48 to i8
  br label %50

50:                                               ; preds = %44, %39, %34, %32
  %51 = phi i8 [ 0, %34 ], [ 0, %32 ], [ 0, %39 ], [ %49, %44 ]
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  br i1 %6, label %54, label %60

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !140
  %57 = load i32, ptr %25, align 4, !tbaa !142
  %58 = sub nsw i32 %56, %57
  %59 = tail call i32 @llvm.smin.i32(i32 %28, i32 %58)
  br label %66

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 16
  %62 = load i32, ptr %61, align 4, !tbaa !142
  %63 = load i32, ptr %24, align 8, !tbaa !140
  %64 = sub nsw i32 %62, %63
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 %28)
  br label %66

66:                                               ; preds = %60, %54, %50, %26
  %67 = phi i32 [ %28, %26 ], [ %59, %54 ], [ %65, %60 ], [ %28, %50 ]
  %68 = load ptr, ptr %27, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %26, !llvm.loop !351

70:                                               ; preds = %66, %17, %11
  %71 = phi i32 [ %13, %11 ], [ %13, %17 ], [ %67, %66 ]
  %72 = load ptr, ptr %12, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %11, !llvm.loop !352

74:                                               ; preds = %70, %9
  %75 = phi i32 [ 0, %9 ], [ %71, %70 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br i1 %8, label %94, label %79

78:                                               ; preds = %74
  br i1 %8, label %105, label %96

79:                                               ; preds = %77, %91
  %80 = phi ptr [ %92, %91 ], [ %7, %77 ]
  %81 = getelementptr inbounds %struct.Sequence, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !335
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.Sequence, ptr %80, i64 0, i32 15
  %86 = load i32, ptr %85, align 8, !tbaa !140
  %87 = add nsw i32 %86, %75
  store i32 %87, ptr %85, align 8, !tbaa !140
  %88 = getelementptr inbounds %struct.Sequence, ptr %80, i64 0, i32 16
  %89 = load i32, ptr %88, align 4, !tbaa !142
  %90 = add nsw i32 %89, %75
  store i32 %90, ptr %88, align 4, !tbaa !142
  br label %91

91:                                               ; preds = %79, %84
  %92 = load ptr, ptr %80, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %79, !llvm.loop !353

94:                                               ; preds = %91, %77
  %95 = add nsw i32 %75, %10
  br label %9, !llvm.loop !354

96:                                               ; preds = %78, %102
  %97 = phi ptr [ %103, %102 ], [ %7, %78 ]
  %98 = getelementptr inbounds %struct.Sequence, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !335
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef nonnull %97)
  br label %102

102:                                              ; preds = %96, %101
  %103 = load ptr, ptr %97, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96, !llvm.loop !355

105:                                              ; preds = %102, %78
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BKE_sequencer_refresh_sound_length(ptr nocapture noundef readnone %0) local_unnamed_addr #17 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_update_sound_bounds_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5, %45
  %10 = phi ptr [ %46, %45 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !59
  switch i32 %12, label %45 [
    i32 1, label %13
    i32 2, label %25
    i32 4, label %44
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !139
  %16 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !135
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !141
  %21 = add nsw i32 %20, %15
  %22 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !137
  %24 = sub i32 %21, %23
  tail call fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %18, i32 noundef %24)
  br label %45

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 38
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 44
  %33 = load i32, ptr %32, align 8, !tbaa !144
  %34 = add nsw i32 %33, %31
  %35 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !145
  %37 = getelementptr inbounds %struct.Scene, ptr %36, i64 0, i32 22, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !146
  %39 = add nsw i32 %34, %38
  %40 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !140
  %42 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 16
  %43 = load i32, ptr %42, align 4, !tbaa !142
  tail call void @sound_move_scene_sound(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %41, i32 noundef %43, i32 noundef %39) #27
  br label %45

44:                                               ; preds = %9
  tail call void @sound_move_scene_sound_defaults(ptr noundef %0, ptr noundef nonnull %10) #27
  br label %45

45:                                               ; preds = %44, %29, %25, %9, %13
  %46 = load ptr, ptr %10, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9, !llvm.loop !356

48:                                               ; preds = %45, %5, %1
  ret void
}

declare void @sound_move_scene_sound(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @sound_move_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_update_muting(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !357
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  br i1 %6, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MetaStack, ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !358
  tail call fastcc void @seq_update_muting_recursive(ptr noundef nonnull %7, ptr noundef %10, i32 noundef 1)
  br label %12

11:                                               ; preds = %3
  tail call fastcc void @seq_update_muting_recursive(ptr noundef nonnull %7, ptr noundef null, i32 noundef 0)
  br label %12

12:                                               ; preds = %8, %11, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_update_muting_recursive(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  br label %8

8:                                                ; preds = %6, %30
  %9 = phi ptr [ %4, %6 ], [ %31, %30 ]
  br i1 %7, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !151
  %13 = and i32 %12, 32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i1 [ true, %8 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !59
  switch i32 %18, label %30 [
    i32 1, label %19
    i32 4, label %24
    i32 2, label %24
  ]

19:                                               ; preds = %15
  %20 = icmp ne ptr %9, %1
  %21 = select i1 %20, i1 %16, i1 false
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  tail call fastcc void @seq_update_muting_recursive(ptr noundef nonnull %23, ptr noundef %1, i32 noundef %22)
  br label %30

24:                                               ; preds = %15, %15
  %25 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = zext i1 %16 to i8
  tail call void @sound_mute_scene_sound(ptr noundef nonnull %26, i8 noundef zeroext %29) #27
  br label %30

30:                                               ; preds = %15, %19, %24, %28
  %31 = load ptr, ptr %9, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !360

33:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_update_sound(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call fastcc void @seq_update_sound_recursive(ptr noundef nonnull %7, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_update_sound_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %21, %20 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !59
  switch i32 %8, label %20 [
    i32 1, label %9
    i32 4, label %11
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  tail call fastcc void @seq_update_sound_recursive(ptr noundef nonnull %10, ptr noundef %1)
  br label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 38
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 37
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @sound_update_scene_sound(ptr noundef nonnull %13, ptr noundef %1) #27
  br label %20

20:                                               ; preds = %5, %9, %11, %15, %19
  %21 = load ptr, ptr %6, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !361

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_seqbase(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %2 ]
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %9, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %8
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !362

18:                                               ; preds = %5, %12, %15, %2
  %19 = phi ptr [ null, %2 ], [ %0, %5 ], [ %13, %12 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_metastrip(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #15 {
  br label %4

4:                                                ; preds = %19, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %19 ]
  %6 = phi ptr [ undef, %3 ], [ %20, %19 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %7, %2
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 36
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @BKE_sequence_metastrip(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %2)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %15
  br label %19

19:                                               ; preds = %15, %9, %18
  %20 = phi ptr [ %6, %18 ], [ %1, %9 ], [ %16, %15 ]
  %21 = phi i1 [ true, %18 ], [ false, %9 ], [ false, %15 ]
  br i1 %21, label %4, label %22, !llvm.loop !363

22:                                               ; preds = %4, %19
  %23 = phi ptr [ %20, %19 ], [ null, %4 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_sequence_swap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.Sequence, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #27
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !141
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store ptr @.str.5, ptr %2, align 8, !tbaa !34
  br label %90

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !59
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = icmp eq i32 %14, 4
  %20 = icmp eq i32 %16, 4
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr @.str.6, ptr %2, align 8, !tbaa !34
  br label %90

23:                                               ; preds = %18
  %24 = xor i32 %16, %14
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store ptr @.str.6, ptr %2, align 8, !tbaa !34
  br label %90

28:                                               ; preds = %23
  %29 = and i32 %14, 8
  %30 = and i32 %29, %16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %14) #27
  %34 = load i32, ptr %15, align 4, !tbaa !59
  %35 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %34) #27
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store ptr @.str.7, ptr %2, align 8, !tbaa !34
  br label %90

38:                                               ; preds = %28, %32, %12
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %5, ptr noundef nonnull align 8 dereferenceable(352) %0, i64 352, i1 false), !tbaa.struct !364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false), !tbaa.struct !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(352) %5, i64 352, i1 false), !tbaa.struct !364
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %5)
  %39 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 4, i64 2
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %39, i64 noundef 64) #27
  %41 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %42 = call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %41, i64 noundef 62) #27
  %43 = call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull %4, i64 noundef 62) #27
  %44 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 46
  %45 = load i32, ptr %44, align 8, !tbaa !206
  %46 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %47 = load i32, ptr %46, align 8, !tbaa !206
  store i32 %47, ptr %44, align 8, !tbaa !206
  store i32 %45, ptr %46, align 8, !tbaa !206
  %48 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 47
  %49 = load float, ptr %48, align 4, !tbaa !207
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %51 = load float, ptr %50, align 4, !tbaa !207
  store float %51, ptr %48, align 4, !tbaa !207
  store float %49, ptr %50, align 4, !tbaa !207
  %52 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !365
  %54 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !365
  store ptr %55, ptr %52, align 8, !tbaa !365
  store ptr %53, ptr %54, align 8, !tbaa !365
  %56 = load ptr, ptr %0, align 8, !tbaa !99
  %57 = load ptr, ptr %1, align 8, !tbaa !99
  store ptr %57, ptr %0, align 8, !tbaa !99
  store ptr %56, ptr %1, align 8, !tbaa !99
  %58 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %59 = load i32, ptr %58, align 4, !tbaa !139
  %60 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !139
  store i32 %61, ptr %58, align 4, !tbaa !139
  store i32 %59, ptr %60, align 4, !tbaa !139
  %62 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !135
  %64 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !135
  store i32 %65, ptr %62, align 8, !tbaa !135
  store i32 %63, ptr %64, align 8, !tbaa !135
  %66 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  %67 = load i32, ptr %66, align 4, !tbaa !137
  %68 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %69 = load i32, ptr %68, align 4, !tbaa !137
  store i32 %69, ptr %66, align 4, !tbaa !137
  store i32 %67, ptr %68, align 4, !tbaa !137
  %70 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  %71 = load i32, ptr %70, align 8, !tbaa !136
  %72 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %73 = load i32, ptr %72, align 8, !tbaa !136
  store i32 %73, ptr %70, align 8, !tbaa !136
  store i32 %71, ptr %72, align 8, !tbaa !136
  %74 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !138
  %76 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %77 = load i32, ptr %76, align 4, !tbaa !138
  store i32 %77, ptr %74, align 4, !tbaa !138
  store i32 %75, ptr %76, align 4, !tbaa !138
  %78 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 13
  %79 = load i32, ptr %78, align 8, !tbaa !162
  %80 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %81 = load i32, ptr %80, align 8, !tbaa !162
  store i32 %81, ptr %78, align 8, !tbaa !162
  store i32 %79, ptr %80, align 8, !tbaa !162
  %82 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %83 = load i32, ptr %82, align 8, !tbaa !140
  %84 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %85 = load i32, ptr %84, align 8, !tbaa !140
  store i32 %85, ptr %82, align 8, !tbaa !140
  store i32 %83, ptr %84, align 8, !tbaa !140
  %86 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %87 = load i32, ptr %86, align 4, !tbaa !142
  %88 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %89 = load i32, ptr %88, align 4, !tbaa !142
  store i32 %89, ptr %86, align 4, !tbaa !142
  store i32 %87, ptr %88, align 4, !tbaa !142
  br label %90

90:                                               ; preds = %38, %37, %27, %22, %11
  %91 = phi i32 [ 0, %11 ], [ 0, %22 ], [ 0, %27 ], [ 0, %37 ], [ 1, %38 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #27
  ret i32 %91
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequencer_dupe_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca [163 x i8], align 16
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 163, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #27
  %14 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 128) #27
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 163, ptr noundef nonnull @.str.43, ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #27
  %16 = load ptr, ptr %7, align 8, !tbaa !87
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !366
  %21 = load ptr, ptr %18, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %13, %35
  %24 = phi ptr [ %36, %35 ], [ %21, %13 ]
  %25 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !367
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = call i32 @strncmp(ptr noundef %30, ptr noundef nonnull %5, i64 noundef %15) #28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call ptr @copy_fcurve(ptr noundef nonnull %24) #27
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %34) #27
  br label %35

35:                                               ; preds = %28, %33
  %36 = load ptr, ptr %24, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %23, !llvm.loop !368

38:                                               ; preds = %23, %35, %13
  %39 = load ptr, ptr %7, align 8, !tbaa !87
  call void @BKE_animdata_fix_paths_rename(ptr noundef %0, ptr noundef %39, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #27
  %40 = load ptr, ptr %7, align 8, !tbaa !87
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = getelementptr inbounds %struct.bAction, ptr %41, i64 0, i32 1
  call void @BLI_movelisttolist(ptr noundef nonnull %42, ptr noundef nonnull %6) #27
  br label %43

43:                                               ; preds = %3, %10, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 163, ptr nonnull %5) #27
  ret void
}

declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #2

declare void @BKE_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_get_by_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #18 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %4, %6 ], [ %22, %21 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %10) #28
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  br i1 %7, label %21, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BKE_sequence_get_by_name(ptr noundef nonnull %15, ptr noundef %1, i8 noundef zeroext 1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %14, %13
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !369

24:                                               ; preds = %8, %18, %21, %3
  %25 = phi ptr [ null, %3 ], [ %9, %8 ], [ %19, %18 ], [ null, %21 ]
  ret ptr %25
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequencer_from_elem(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #15 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %29, %2
  %5 = phi ptr [ %0, %2 ], [ %30, %29 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Strip, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i64
  %18 = sub i64 %3, %17
  %19 = sdiv exact i64 %18, 264
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !141
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %29, label %24

24:                                               ; preds = %16, %12, %8
  %25 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %26 = tail call ptr @BKE_sequencer_from_elem(ptr noundef nonnull %25, ptr noundef %1)
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %6, ptr %26
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi ptr [ %6, %16 ], [ %28, %24 ]
  %31 = phi i1 [ false, %16 ], [ %27, %24 ]
  br i1 %31, label %4, label %32, !llvm.loop !370

32:                                               ; preds = %29, %4
  %33 = phi ptr [ %30, %29 ], [ null, %4 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequencer_active_get(ptr nocapture noundef readonly %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_sequencer_active_set(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !84
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_sequencer_active_get_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  store ptr %11, ptr %1, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %10
  store ptr null, ptr %2, align 8, !tbaa !34
  %14 = load ptr, ptr %5, align 8, !tbaa !97
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13, %30
  %18 = phi ptr [ %31, %30 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !151
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %1, align 8, !tbaa !34
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  store ptr %18, ptr %2, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %17, %23, %29
  %31 = load ptr, ptr %18, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !371

33:                                               ; preds = %30, %13
  %34 = load ptr, ptr %2, align 8, !tbaa !34
  %35 = icmp ne ptr %34, null
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %26, %33, %10
  %38 = phi i32 [ 0, %10 ], [ %36, %33 ], [ 0, %26 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequencer_mask_get(ptr nocapture noundef readonly %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 29
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  br label %18

18:                                               ; preds = %8, %11, %15
  %19 = phi ptr [ %17, %15 ], [ null, %11 ], [ null, %8 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_sequence_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 352, ptr noundef nonnull @.str) #27
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %5) #27
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 4
  store i16 20819, ptr %6, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 4, i64 2
  store i8 0, ptr %7, align 2, !tbaa !119
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  store i32 1, ptr %8, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 8
  store i32 %1, ptr %9, align 4, !tbaa !139
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  store i32 %2, ptr %10, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 17
  store float 1.000000e+00, ptr %11, align 8, !tbaa !208
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 18
  store float 1.000000e+00, ptr %12, align 4, !tbaa !205
  %13 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 47
  store float 1.000000e+02, ptr %13, align 4, !tbaa !207
  %14 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 39
  store float 1.000000e+00, ptr %14, align 8, !tbaa !372
  %15 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 40
  store float 1.000000e+00, ptr %15, align 4, !tbaa !373
  %16 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 38
  store ptr null, ptr %16, align 8, !tbaa !86
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_alpha_mode_from_extension(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Strip, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef nonnull %7) #27
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 49
  store i8 %10, ptr %11, align 4, !tbaa !233
  br label %12

12:                                               ; preds = %9, %5, %1
  ret void
}

declare zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_init_colorspace(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #27
  %11 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %7, align 8, !tbaa !52
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %11, ptr noundef %12) #27
  %13 = load ptr, ptr @G, align 8, !tbaa !154
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %14) #27
  %16 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !59
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load ptr, ptr %3, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.Strip, ptr %20, i64 0, i32 12
  %22 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 8194, ptr noundef nonnull %21) #27
  %23 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 49
  store i8 0, ptr %23, align 4, !tbaa !233
  %24 = icmp eq ptr %22, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !374
  %28 = and i32 %27, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i8 1, ptr %23, align 4, !tbaa !233
  br label %31

31:                                               ; preds = %30, %25
  call void @IMB_freeImBuf(ptr noundef nonnull %22) #27
  br label %32

32:                                               ; preds = %19, %31, %10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #27
  br label %33

33:                                               ; preds = %32, %6, %1
  ret void
}

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_sequencer_add_image_strip(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #27
  %5 = load i32, ptr %2, align 8, !tbaa !375
  %6 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !377
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 352, ptr noundef nonnull @.str) #27
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %9) #27
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4
  store i16 20819, ptr %10, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  store i8 0, ptr %11, align 2, !tbaa !119
  %12 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  store i32 1, ptr %12, align 8, !tbaa !151
  %13 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 8
  store i32 %5, ptr %13, align 4, !tbaa !139
  %14 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 13
  store i32 %7, ptr %14, align 8, !tbaa !162
  %15 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 17
  store float 1.000000e+00, ptr %15, align 8, !tbaa !208
  %16 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 18
  store float 1.000000e+00, ptr %16, align 4, !tbaa !205
  %17 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 47
  store float 1.000000e+02, ptr %17, align 4, !tbaa !207
  %18 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 39
  store float 1.000000e+00, ptr %18, align 8, !tbaa !372
  %19 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 40
  store float 1.000000e+00, ptr %19, align 4, !tbaa !373
  %20 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  store ptr null, ptr %20, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  store i32 0, ptr %21, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 46
  store i32 8, ptr %22, align 8, !tbaa !206
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 904, ptr noundef nonnull @.str.9) #27
  %25 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 24
  store ptr %24, ptr %25, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !378
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  %29 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 7
  store i32 %28, ptr %29, align 8, !tbaa !141
  %30 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 2
  store i32 1, ptr %30, align 8, !tbaa !49
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = sext i32 %28 to i64
  %33 = mul nsw i64 %32, 264
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str.10) #27
  %35 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 7
  %37 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 6
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 768) #27
  tail call fastcc void @seq_load_apply(ptr noundef %4, ptr noundef %9, ptr noundef nonnull %2)
  ret ptr %9
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_load_apply(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %7 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 7
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 62) #27
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #28
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @BLI_utf8_invalid_strip(ptr noundef nonnull %6, i32 noundef %10) #27
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.Editing, ptr %13, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %14, ptr noundef nonnull %1)
  %15 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !379
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !142
  %22 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !140
  %24 = sub i32 %21, %23
  %25 = load i32, ptr %2, align 8, !tbaa !375
  %26 = add nsw i32 %24, %25
  store i32 %26, ptr %2, align 8, !tbaa !375
  br label %27

27:                                               ; preds = %19, %5
  %28 = and i32 %16, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %12, align 8, !tbaa !65
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Editing, ptr %31, i64 0, i32 3
  store ptr %1, ptr %34, align 8, !tbaa !84
  br label %35

35:                                               ; preds = %33, %30, %27
  %36 = and i32 %16, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @sound_cache(ptr noundef nonnull %40) #27
  br label %43

43:                                               ; preds = %38, %42, %35
  %44 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !380
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !380
  br label %51

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !381
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !381
  br label %51

51:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BKE_sequencer_add_sound_strip(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #17 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_sequencer_add_movie_strip(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #27
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %7 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 6
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 1024) #27
  %9 = load ptr, ptr @G, align 8, !tbaa !154
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %10) #27
  %12 = call ptr @openanim(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %5) #27
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %2, align 8, !tbaa !375
  %16 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !377
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = call ptr %18(i64 noundef 352, ptr noundef nonnull @.str) #27
  call void @BLI_addtail(ptr noundef %1, ptr noundef %19) #27
  %20 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 4
  store i16 20819, ptr %20, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 4, i64 2
  store i8 0, ptr %21, align 2, !tbaa !119
  %22 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 5
  store i32 1, ptr %22, align 8, !tbaa !151
  %23 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 8
  store i32 %15, ptr %23, align 4, !tbaa !139
  %24 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 13
  store i32 %17, ptr %24, align 8, !tbaa !162
  %25 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 17
  store float 1.000000e+00, ptr %25, align 8, !tbaa !208
  %26 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 18
  store float 1.000000e+00, ptr %26, align 4, !tbaa !205
  %27 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 47
  store float 1.000000e+02, ptr %27, align 4, !tbaa !207
  %28 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 39
  store float 1.000000e+00, ptr %28, align 8, !tbaa !372
  %29 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 40
  store float 1.000000e+00, ptr %29, align 4, !tbaa !373
  %30 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 38
  store ptr null, ptr %30, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  store i32 3, ptr %31, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 46
  store i32 8, ptr %32, align 8, !tbaa !206
  %33 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 30
  store ptr %12, ptr %33, align 8, !tbaa !58
  %34 = call i32 @IMB_anim_get_preseek(ptr noundef nonnull %12) #27
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 20
  store i16 %35, ptr %36, align 4, !tbaa !158
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull @.str.11, i64 noundef 62) #27
  %38 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.Editing, ptr %39, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %40, ptr noundef %19)
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %42 = call ptr %41(i64 noundef 904, ptr noundef nonnull @.str.9) #27
  %43 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 24
  store ptr %42, ptr %43, align 8, !tbaa !48
  %44 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %12, i32 noundef 1) #27
  %45 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 7
  store i32 %44, ptr %45, align 8, !tbaa !141
  %46 = getelementptr inbounds %struct.Strip, ptr %42, i64 0, i32 2
  store i32 1, ptr %46, align 8, !tbaa !49
  %47 = load ptr, ptr %43, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.Strip, ptr %47, i64 0, i32 12
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %48, ptr noundef nonnull %5, i64 noundef 64) #27
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %51 = call ptr %50(i64 noundef 264, ptr noundef nonnull @.str.10) #27
  %52 = getelementptr inbounds %struct.Strip, ptr %42, i64 0, i32 6
  store ptr %51, ptr %52, align 8, !tbaa !52
  %53 = getelementptr inbounds %struct.Strip, ptr %42, i64 0, i32 7
  call void @BLI_split_dirfile(ptr noundef nonnull %7, ptr noundef nonnull %53, ptr noundef %51, i64 noundef 768, i64 noundef 256) #27
  call void @BKE_sequence_calc_disp(ptr noundef %6, ptr noundef %19)
  %54 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 7
  %55 = load i8, ptr %54, align 8, !tbaa !119
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %14
  %58 = call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef %51, i64 noundef 64) #27
  br label %59

59:                                               ; preds = %57, %14
  %60 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !379
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr %16, align 8, !tbaa !377
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %16, align 8, !tbaa !377
  %67 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 8
  store ptr null, ptr %67, align 8, !tbaa !382
  store i32 %65, ptr %16, align 8, !tbaa !377
  br label %68

68:                                               ; preds = %64, %59
  call fastcc void @seq_load_apply(ptr noundef %6, ptr noundef %19, ptr noundef nonnull %2)
  br label %69

69:                                               ; preds = %3, %68
  %70 = phi ptr [ %19, %68 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #27
  ret ptr %70
}

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @seq_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.SeqEffectHandle, align 8
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr %0, ptr %1
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %9 = tail call ptr %8(ptr noundef %2) #27
  %10 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !335
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call ptr %11(ptr noundef %13) #27
  %15 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 24
  store ptr %14, ptr %15, align 8, !tbaa !48
  %16 = load ptr, ptr %12, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.Strip, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %22 = tail call ptr %21(ptr noundef nonnull %18) #27
  %23 = load ptr, ptr %15, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.Strip, ptr %23, i64 0, i32 9
  store ptr %22, ptr %24, align 8, !tbaa !56
  br label %25

25:                                               ; preds = %20, %4
  %26 = load ptr, ptr %12, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.Strip, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %32 = tail call ptr %31(ptr noundef nonnull %28) #27
  %33 = load ptr, ptr %15, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.Strip, ptr %33, i64 0, i32 10
  store ptr %32, ptr %34, align 8, !tbaa !57
  br label %35

35:                                               ; preds = %30, %25
  %36 = load ptr, ptr %12, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.Strip, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %42 = tail call ptr %41(ptr noundef nonnull %38) #27
  %43 = load ptr, ptr %15, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.Strip, ptr %43, i64 0, i32 8
  store ptr %42, ptr %44, align 8, !tbaa !53
  %45 = getelementptr inbounds %struct.StripProxy, ptr %42, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !54
  br label %46

46:                                               ; preds = %40, %35
  %47 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 51
  %48 = load ptr, ptr %47, align 8, !tbaa !209
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  tail call void @BKE_sequence_modifier_list_copy(ptr noundef %9, ptr noundef %2) #27
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !59
  switch i32 %53, label %101 [
    i32 1, label %54
    i32 2, label %58
    i32 6, label %144
    i32 7, label %144
    i32 3, label %67
    i32 4, label %76
    i32 0, label %93
  ]

54:                                               ; preds = %51
  %55 = load ptr, ptr %15, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.Strip, ptr %55, i64 0, i32 6
  store ptr null, ptr %56, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br label %144

58:                                               ; preds = %51
  %59 = load ptr, ptr %15, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct.Strip, ptr %59, i64 0, i32 6
  store ptr null, ptr %60, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 38
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  %63 = icmp eq ptr %62, null
  br i1 %63, label %144, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @sound_scene_add_scene_sound_defaults(ptr noundef %7, ptr noundef %9) #27
  %66 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  store ptr %65, ptr %66, align 8, !tbaa !86
  br label %144

67:                                               ; preds = %51
  %68 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %69 = load ptr, ptr %12, align 8, !tbaa !48
  %70 = getelementptr inbounds %struct.Strip, ptr %69, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  %72 = tail call ptr %68(ptr noundef %71) #27
  %73 = load ptr, ptr %15, align 8, !tbaa !48
  %74 = getelementptr inbounds %struct.Strip, ptr %73, i64 0, i32 6
  store ptr %72, ptr %74, align 8, !tbaa !52
  %75 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 30
  store ptr null, ptr %75, align 8, !tbaa !58
  br label %144

76:                                               ; preds = %51
  %77 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %78 = load ptr, ptr %12, align 8, !tbaa !48
  %79 = getelementptr inbounds %struct.Strip, ptr %78, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = tail call ptr %77(ptr noundef %80) #27
  %82 = load ptr, ptr %15, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.Strip, ptr %82, i64 0, i32 6
  store ptr %81, ptr %83, align 8, !tbaa !52
  %84 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 38
  %85 = load ptr, ptr %84, align 8, !tbaa !86
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = tail call ptr @sound_add_scene_sound_defaults(ptr noundef %7, ptr noundef %9) #27
  %89 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  store ptr %88, ptr %89, align 8, !tbaa !86
  br label %90

90:                                               ; preds = %87, %76
  %91 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 37
  %92 = load ptr, ptr %91, align 8, !tbaa !62
  tail call void @id_us_plus(ptr noundef %92) #27
  br label %144

93:                                               ; preds = %51
  %94 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %95 = load ptr, ptr %12, align 8, !tbaa !48
  %96 = getelementptr inbounds %struct.Strip, ptr %95, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !52
  %98 = tail call ptr %94(ptr noundef %97) #27
  %99 = load ptr, ptr %15, align 8, !tbaa !48
  %100 = getelementptr inbounds %struct.Strip, ptr %99, i64 0, i32 6
  store ptr %98, ptr %100, align 8, !tbaa !52
  br label %144

101:                                              ; preds = %51
  %102 = icmp sgt i32 %53, 7
  br i1 %102, label %103, label %144

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 33
  %105 = load ptr, ptr %104, align 8, !tbaa !149
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.Sequence, ptr %105, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !335
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 33
  store ptr %109, ptr %112, align 8, !tbaa !149
  br label %113

113:                                              ; preds = %111, %107, %103
  %114 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 34
  %115 = load ptr, ptr %114, align 8, !tbaa !148
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.Sequence, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !335
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 34
  store ptr %119, ptr %122, align 8, !tbaa !148
  br label %123

123:                                              ; preds = %121, %117, %113
  %124 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 35
  %125 = load ptr, ptr %124, align 8, !tbaa !150
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Sequence, ptr %125, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !335
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 35
  store ptr %129, ptr %132, align 8, !tbaa !150
  br label %133

133:                                              ; preds = %131, %127, %123
  %134 = and i32 %53, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #27
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %5, ptr noundef %2) #27
  %137 = getelementptr inbounds i8, ptr %5, i64 32
  %138 = load ptr, ptr %137, align 8, !tbaa.struct !383
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #27
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void %138(ptr noundef %2, ptr noundef %9) #27
  br label %141

141:                                              ; preds = %136, %140, %133
  %142 = load ptr, ptr %15, align 8, !tbaa !48
  %143 = getelementptr inbounds %struct.Strip, ptr %142, i64 0, i32 6
  store ptr null, ptr %143, align 8, !tbaa !52
  br label %144

144:                                              ; preds = %51, %51, %64, %58, %90, %141, %101, %93, %67, %54
  %145 = and i32 %3, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %149 = load ptr, ptr %148, align 8, !tbaa !65
  %150 = getelementptr inbounds %struct.Editing, ptr %149, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %150, ptr noundef %9)
  br label %151

151:                                              ; preds = %147, %144
  %152 = and i32 %3, 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 4, i64 2
  %156 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  call void @BKE_sequencer_dupe_animdata(ptr noundef %0, ptr noundef nonnull %155, ptr noundef nonnull %156)
  br label %157

157:                                              ; preds = %154, %151
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_base_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = or i32 %4, 8
  %15 = load ptr, ptr %3, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %12
  %18 = and i32 %4, 8
  %19 = and i32 %4, 2
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %54
  %22 = phi ptr [ %15, %17 ], [ %55, %54 ]
  %23 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !335
  %24 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !151
  %26 = and i32 %25, 1
  %27 = or disjoint i32 %26, %18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %21
  %30 = tail call fastcc ptr @seq_dupli(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22, i32 noundef %4)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %29
  br i1 %20, label %33, label %39

33:                                               ; preds = %32
  %34 = load i32, ptr %24, align 8, !tbaa !151
  %35 = and i32 %34, -8
  store i32 %35, ptr %24, align 8, !tbaa !151
  %36 = getelementptr inbounds %struct.Sequence, ptr %30, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !151
  %38 = and i32 %37, -16391
  store i32 %38, ptr %36, align 8, !tbaa !151
  br label %39

39:                                               ; preds = %33, %32
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %30) #27
  %40 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Sequence, ptr %30, i64 0, i32 36
  %45 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 36
  tail call void @BKE_sequence_base_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %44, ptr noundef nonnull %45, i32 noundef %14)
  br label %46

46:                                               ; preds = %43, %39
  %47 = icmp eq ptr %22, %13
  %48 = select i1 %20, i1 %47, i1 false
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8, !tbaa !65
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Editing, ptr %50, i64 0, i32 3
  store ptr %30, ptr %53, align 8, !tbaa !84
  br label %54

54:                                               ; preds = %52, %49, %21, %46, %29
  %55 = load ptr, ptr %22, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %21, !llvm.loop !384

57:                                               ; preds = %54, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_sequence_is_valid_check(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !59
  switch i32 %3, label %17 [
    i32 7, label %4
    i32 6, label %6
    i32 2, label %8
    i32 4, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  br label %12

12:                                               ; preds = %4, %6, %8, %10
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i8 [ 1, %1 ], [ %16, %12 ]
  ret i8 %18
}

declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #2

declare void @sound_remove_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_modifier_clear(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_fcurve(ptr noundef) local_unnamed_addr #2

declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sound_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_movieclip_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @seq_count(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #21 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %14, %13 ], [ %3, %2 ]
  %7 = load i32, ptr %1, align 4, !tbaa !107
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !107
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call fastcc void @seq_count(ptr noundef nonnull %9, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %5, %12
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !385

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @seq_build_array(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #21 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %2, 1
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi ptr [ %4, %6 ], [ %19, %15 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 14
  store i32 %2, ptr %10, align 4, !tbaa !386
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call fastcc void @seq_build_array(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %7)
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %9, ptr %16, align 8, !tbaa !34
  %17 = load ptr, ptr %1, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  store ptr %18, ptr %1, align 8, !tbaa !34
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !387

21:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %4, %53
  %9 = phi ptr [ %54, %53 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !59
  switch i32 %11, label %53 [
    i32 1, label %12
    i32 4, label %26
    i32 2, label %26
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !135
  %17 = add nsw i32 %16, %14
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 %2)
  %19 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !141
  %21 = add nsw i32 %20, %14
  %22 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !137
  %24 = sub i32 %21, %23
  %25 = tail call i32 @llvm.smin.i32(i32 %3, i32 %24)
  tail call fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %18, i32 noundef %25)
  br label %53

26:                                               ; preds = %8, %8
  %27 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !135
  %33 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !137
  %35 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !139
  %37 = add nsw i32 %36, %32
  %38 = icmp slt i32 %37, %2
  %39 = sub nsw i32 %2, %36
  %40 = select i1 %38, i32 %39, i32 %32
  %41 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !141
  %43 = add nsw i32 %42, %36
  %44 = sub nsw i32 %43, %34
  %45 = icmp sgt i32 %44, %3
  %46 = sub nsw i32 %43, %3
  %47 = select i1 %45, i32 %46, i32 %34
  %48 = add nsw i32 %40, %36
  %49 = sub nsw i32 %43, %47
  %50 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 44
  %51 = load i32, ptr %50, align 8, !tbaa !144
  %52 = add nsw i32 %40, %51
  tail call void @sound_move_scene_sound(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %48, i32 noundef %49, i32 noundef %52) #27
  br label %53

53:                                               ; preds = %8, %12, %26, %30
  %54 = load ptr, ptr %9, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %8, !llvm.loop !388

56:                                               ; preds = %53, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #22

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #23

declare void @IMB_anim_set_index_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @seq_proxy_get_fname(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %5) #27
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.Strip, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %110, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !151
  %14 = and i32 %13, 2621440
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef 1792) #27
  br label %25

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !59
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Strip, ptr %7, i64 0, i32 7
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1792, ptr noundef nonnull @.str.37, ptr noundef nonnull %23) #27
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, ptr %12, align 8, !tbaa !151
  %27 = and i32 %26, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.Strip, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.StripProxy, ptr %32, i64 0, i32 1
  call void @BLI_join_dirfile(ptr noundef %3, i64 noundef 1792, ptr noundef nonnull %5, ptr noundef nonnull %33) #27
  %34 = load ptr, ptr @G, align 8, !tbaa !154
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 2
  %36 = call zeroext i8 @BLI_path_abs(ptr noundef %3, ptr noundef nonnull %35) #27
  br label %110

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call ptr @BKE_sequencer_give_stripelem(ptr noundef %0, i32 noundef %1)
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %3, i64 noundef 1792, ptr noundef nonnull @.str.38, ptr noundef nonnull %5, i32 noundef %2, ptr noundef %42) #27
  br label %102

44:                                               ; preds = %37
  %45 = sitofp i32 %1 to float
  %46 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !139
  %48 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !141
  %50 = add i32 %47, -1
  %51 = add i32 %50, %49
  %52 = and i32 %39, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %56 = load i32, ptr %55, align 4, !tbaa !142
  br label %57

57:                                               ; preds = %54, %44
  %58 = phi i32 [ %56, %54 ], [ %51, %44 ]
  %59 = icmp slt i32 %58, %47
  br i1 %59, label %95, label %60

60:                                               ; preds = %57
  %61 = and i32 %26, 128
  %62 = icmp eq i32 %61, 0
  %63 = sitofp i32 %47 to float
  %64 = fcmp ult float %63, %45
  br i1 %62, label %74, label %65

65:                                               ; preds = %60
  br i1 %64, label %69, label %66

66:                                               ; preds = %65
  %67 = sub nsw i32 %58, %47
  %68 = sitofp i32 %67 to float
  br label %83

69:                                               ; preds = %65
  %70 = sitofp i32 %58 to float
  %71 = fcmp ugt float %70, %45
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = fsub float %70, %45
  br label %83

74:                                               ; preds = %60
  br i1 %64, label %75, label %83

75:                                               ; preds = %74
  %76 = sitofp i32 %58 to float
  %77 = fcmp ugt float %76, %45
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = sub nsw i32 %58, %47
  %80 = sitofp i32 %79 to float
  br label %83

81:                                               ; preds = %75
  %82 = fsub float %45, %63
  br label %83

83:                                               ; preds = %81, %78, %74, %72, %69, %66
  %84 = phi float [ %68, %66 ], [ %73, %72 ], [ %80, %78 ], [ %82, %81 ], [ 0.000000e+00, %69 ], [ 0.000000e+00, %74 ]
  %85 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 42
  %86 = load float, ptr %85, align 4, !tbaa !174
  %87 = fcmp olt float %86, 1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store float 1.000000e+00, ptr %85, align 4, !tbaa !174
  br label %89

89:                                               ; preds = %88, %83
  %90 = load float, ptr %85, align 4, !tbaa !174
  %91 = fcmp ogt float %90, 1.000000e+00
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = call float @fmodf(float noundef %84, float noundef %90) #27
  %94 = fsub float %84, %93
  br label %95

95:                                               ; preds = %57, %89, %92
  %96 = phi float [ -1.000000e+00, %57 ], [ %94, %92 ], [ %84, %89 ]
  %97 = fptosi float %96 to i32
  %98 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 44
  %99 = load i32, ptr %98, align 8, !tbaa !144
  %100 = add nsw i32 %99, %97
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %3, i64 noundef 1792, ptr noundef nonnull @.str.39, ptr noundef nonnull %5, i32 noundef %2) #27
  br label %102

102:                                              ; preds = %95, %41
  %103 = phi i32 [ 1, %41 ], [ %100, %95 ]
  %104 = load ptr, ptr @G, align 8, !tbaa !154
  %105 = getelementptr inbounds %struct.Main, ptr %104, i64 0, i32 2
  %106 = call zeroext i8 @BLI_path_abs(ptr noundef %3, ptr noundef nonnull %105) #27
  %107 = call zeroext i8 @BLI_path_frame(ptr noundef %3, i32 noundef %103, i32 noundef 0) #27
  %108 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %109 = getelementptr inbounds i8, ptr %3, i64 %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %109, ptr noundef nonnull align 1 dereferenceable(5) @.str.40, i64 5, i1 false)
  br label %110

110:                                              ; preds = %18, %4, %102, %29
  %111 = phi i8 [ 1, %29 ], [ 1, %102 ], [ 0, %4 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %5) #27
  ret i8 %111
}

declare ptr @IMB_scalefastImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #14

declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #23

declare ptr @BKE_mask_copy_nolib(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_evaluate(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_maskrasterize_handle_new() local_unnamed_addr #2

declare void @BKE_maskrasterize_handle_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mask_free_nolib(ptr noundef) local_unnamed_addr #2

declare void @BKE_maskrasterize_buffer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_maskrasterize_handle_free(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_cache_get(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_preprocessed_cache_get(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_sequencer_preprocessed_cache_put(ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_cache_put(ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare i32 @IMB_anim_index_get_frame_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = fcmp oeq float %2, 0.000000e+00
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !141
  %9 = add nsw i32 %8, -1
  %10 = sitofp i32 %9 to float
  %11 = fcmp oeq float %10, %2
  br i1 %11, label %12, label %39

12:                                               ; preds = %6, %4
  %13 = tail call ptr @IMB_dupImBuf(ptr noundef %3) #27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !126
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 46
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef nonnull %13, ptr noundef nonnull %22) #27
  br label %23

23:                                               ; preds = %19, %15, %12
  br i1 %5, label %24, label %28

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %26 = load i32, ptr %25, align 4, !tbaa !139
  %27 = sitofp i32 %26 to float
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %1, float noundef %27, i32 noundef 2, ptr noundef %13) #27
  br label %28

28:                                               ; preds = %24, %23
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !141
  %31 = add nsw i32 %30, -1
  %32 = sitofp i32 %31 to float
  %33 = fcmp oeq float %32, %2
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !139
  %37 = sitofp i32 %36 to float
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %1, float noundef %37, i32 noundef 3, ptr noundef %13) #27
  br label %38

38:                                               ; preds = %34, %28
  tail call void @IMB_freeImBuf(ptr noundef %13) #27
  br label %39

39:                                               ; preds = %38, %6
  ret void
}

declare void @IMB_anim_set_preseek(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_animsys_evaluate_all_animation(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @render_effect_execute_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = load ptr, ptr %3, align 8, !tbaa !221
  store ptr %5, ptr %0, align 8, !tbaa !389
  %6 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !391
  %9 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  %11 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !392
  %12 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 3
  %13 = load float, ptr %12, align 8, !tbaa !225
  %14 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 3
  store float %13, ptr %14, align 8, !tbaa !393
  %15 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !226
  %17 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 4
  store float %16, ptr %17, align 4, !tbaa !394
  %18 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 5
  %19 = load float, ptr %18, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 5
  store float %19, ptr %20, align 8, !tbaa !395
  %21 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !228
  %23 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !396
  %24 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !229
  %26 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 7
  store ptr %25, ptr %26, align 8, !tbaa !397
  %27 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !230
  %29 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 8
  store ptr %28, ptr %29, align 8, !tbaa !398
  %30 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !231
  %32 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !399
  %33 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 10
  store i32 %1, ptr %33, align 8, !tbaa !400
  %34 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 11
  store i32 %2, ptr %34, align 4, !tbaa !401
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @render_effect_execute_do_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !389
  %3 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !391
  %7 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !392
  %9 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !393
  %11 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 4
  %12 = load float, ptr %11, align 4, !tbaa !394
  %13 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !395
  %15 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !396
  %17 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !397
  %19 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !400
  %23 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 4, !tbaa !401
  %25 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !399
  tail call void %4(ptr noundef %6, ptr noundef %8, float noundef %10, float noundef %12, float noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %26) #27
  ret ptr null
}

declare i32 @BLI_thread_is_main() local_unnamed_addr #2

declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #2

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

declare void @RE_BlenderFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @addzbuffloatImBuf(ptr noundef) local_unnamed_addr #2

declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_movieclip_get_stable_ibuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_makeSingleUser(ptr noundef) local_unnamed_addr #2

declare void @IMB_filtery(ptr noundef) local_unnamed_addr #2

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_flipx(ptr noundef) local_unnamed_addr #2

declare void @IMB_flipy(ptr noundef) local_unnamed_addr #2

declare void @IMB_saturation(ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_modifier_apply_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.RenderEffectInitData, align 8
  %7 = alloca %struct.RenderEffectInitData, align 8
  %8 = alloca %struct.SeqEffectHandle, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #27
  call void @BKE_sequence_get_blend(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %8, ptr noundef %1) #27
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %10 = load float, ptr %9, align 4, !tbaa !207
  %11 = fdiv float %10, 1.000000e+02
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %13 = load i32, ptr %12, align 8, !tbaa !206
  switch i32 %13, label %36 [
    i32 11, label %14
    i32 12, label %14
    i32 15, label %14
  ]

14:                                               ; preds = %5, %5, %5
  %15 = load i8, ptr %8, align 8, !tbaa !219
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #27
  %18 = getelementptr inbounds %struct.SeqEffectHandle, ptr %8, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !220
  %20 = call ptr %19(ptr noundef %0, ptr noundef %4, ptr noundef %3, ptr noundef null) #27
  store ptr %8, ptr %7, align 8, !tbaa !221
  %21 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 1
  store ptr %0, ptr %21, align 8, !tbaa !223
  %22 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 2
  store ptr %1, ptr %22, align 8, !tbaa !224
  %23 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 3
  store float %2, ptr %23, align 8, !tbaa !225
  %24 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 4
  store float %11, ptr %24, align 4, !tbaa !226
  %25 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 5
  store float %11, ptr %25, align 8, !tbaa !227
  %26 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 6
  store ptr %4, ptr %26, align 8, !tbaa !228
  %27 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 7
  store ptr %3, ptr %27, align 8, !tbaa !229
  %28 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 8
  store ptr null, ptr %28, align 8, !tbaa !230
  %29 = getelementptr inbounds %struct.RenderEffectInitData, ptr %7, i64 0, i32 9
  store ptr %20, ptr %29, align 8, !tbaa !231
  %30 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !121
  call void @IMB_processor_apply_threaded(i32 noundef %31, i32 noundef 80, ptr noundef nonnull %7, ptr noundef nonnull @render_effect_execute_init_handle, ptr noundef nonnull @render_effect_execute_do_thread) #27
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #27
  br label %58

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.SeqEffectHandle, ptr %8, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !212
  %35 = call ptr %34(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %11, float noundef %11, ptr noundef %4, ptr noundef %3, ptr noundef null) #27
  br label %58

36:                                               ; preds = %5
  %37 = load i8, ptr %8, align 8, !tbaa !219
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #27
  %40 = getelementptr inbounds %struct.SeqEffectHandle, ptr %8, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !220
  %42 = call ptr %41(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef null) #27
  store ptr %8, ptr %6, align 8, !tbaa !221
  %43 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 1
  store ptr %0, ptr %43, align 8, !tbaa !223
  %44 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 2
  store ptr %1, ptr %44, align 8, !tbaa !224
  %45 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 3
  store float %2, ptr %45, align 8, !tbaa !225
  %46 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 4
  store float %11, ptr %46, align 4, !tbaa !226
  %47 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 5
  store float %11, ptr %47, align 8, !tbaa !227
  %48 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 6
  store ptr %3, ptr %48, align 8, !tbaa !228
  %49 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 7
  store ptr %4, ptr %49, align 8, !tbaa !229
  %50 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 8
  store ptr null, ptr %50, align 8, !tbaa !230
  %51 = getelementptr inbounds %struct.RenderEffectInitData, ptr %6, i64 0, i32 9
  store ptr %42, ptr %51, align 8, !tbaa !231
  %52 = getelementptr inbounds %struct.ImBuf, ptr %42, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !121
  call void @IMB_processor_apply_threaded(i32 noundef %53, i32 noundef 80, ptr noundef nonnull %6, ptr noundef nonnull @render_effect_execute_init_handle, ptr noundef nonnull @render_effect_execute_do_thread) #27
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #27
  br label %58

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.SeqEffectHandle, ptr %8, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !212
  %57 = call ptr %56(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %11, float noundef %11, ptr noundef %3, ptr noundef %4, ptr noundef null) #27
  br label %58

58:                                               ; preds = %39, %54, %17, %32
  %59 = phi ptr [ %20, %17 ], [ %35, %32 ], [ %42, %39 ], [ %57, %54 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #27
  ret ptr %59
}

declare void @BKE_sequence_get_blend(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_cache_cleanup_sequence(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sequence_do_invalidate_dependent(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 13
  br label %9

9:                                                ; preds = %5, %57
  %10 = phi ptr [ %3, %5 ], [ %58, %57 ]
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %57, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 33
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 34
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %51, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !142
  %27 = load i32, ptr %6, align 8, !tbaa !140
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %52, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !140
  %32 = load i32, ptr %7, align 4, !tbaa !142
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !162
  %37 = load i32, ptr %8, align 8, !tbaa !162
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 46
  %46 = load i32, ptr %45, align 8, !tbaa !206
  switch i32 %46, label %51 [
    i32 0, label %52
    i32 8, label %47
  ]

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 47
  %49 = load float, ptr %48, align 4, !tbaa !207
  %50 = fcmp oeq float %49, 1.000000e+02
  br i1 %50, label %52, label %51

51:                                               ; preds = %39, %44, %47, %12, %16, %20
  tail call void @BKE_sequencer_cache_cleanup_sequence(ptr noundef nonnull %10) #27
  tail call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef nonnull %10) #27
  br label %52

52:                                               ; preds = %47, %44, %34, %29, %24, %51
  %53 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 36
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call fastcc void @sequence_do_invalidate_dependent(ptr noundef %0, ptr noundef nonnull %53)
  br label %57

57:                                               ; preds = %52, %56, %9
  %58 = load ptr, ptr %10, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %9, !llvm.loop !402

60:                                               ; preds = %57, %2
  ret void
}

declare void @sound_mute_scene_sound(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @sound_update_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BLI_utf8_invalid_strip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare void @sound_cache(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_modifier_list_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { cold }

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
!38 = !{!39, !35, i64 256}
!39 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !42, i64 156, !42, i64 158, !40, i64 160, !40, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !41, i64 224, !41, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !43, i64 256, !35, i64 272, !35, i64 280, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !35, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !41, i64 324, !40, i64 328, !36, i64 332, !36, i64 333, !43, i64 336}
!40 = !{!"int", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{i32 -1, i32 2}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!39, !35, i64 168}
!49 = !{!50, !40, i64 16}
!50 = !{!"Strip", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32, !36, i64 40, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !51, i64 840}
!51 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!52 = !{!50, !35, i64 32}
!53 = !{!50, !35, i64 808}
!54 = !{!55, !35, i64 1024}
!55 = !{!"StripProxy", !36, i64 0, !36, i64 768, !35, i64 1024, !42, i64 1032, !42, i64 1034, !42, i64 1036, !42, i64 1038}
!56 = !{!50, !35, i64 816}
!57 = !{!50, !35, i64 824}
!58 = !{!39, !35, i64 216}
!59 = !{!39, !40, i64 100}
!60 = !{!61, !35, i64 40}
!61 = !{!"SeqEffectHandle", !36, i64 0, !36, i64 1, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88}
!62 = !{!39, !35, i64 272}
!63 = !{!64, !40, i64 100}
!64 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!65 = !{!66, !35, i64 256}
!66 = !{!"Scene", !64, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !67, i64 280, !76, i64 4264, !43, i64 4296, !43, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !43, i64 4384, !77, i64 4400, !78, i64 4416, !81, i64 4600, !35, i64 4608, !82, i64 4616, !35, i64 4640, !83, i64 4648, !83, i64 4656, !69, i64 4664, !70, i64 4824, !51, i64 4888, !35, i64 4952}
!67 = !{!"RenderData", !68, i64 0, !35, i64 248, !35, i64 256, !71, i64 264, !72, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !73, i64 544, !73, i64 560, !74, i64 576, !43, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !36, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !35, i64 2568, !40, i64 2576, !41, i64 2580, !36, i64 2584, !75, i64 2616, !40, i64 3976, !40, i64 3980}
!68 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !69, i64 24, !70, i64 184}
!69 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!70 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!71 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!72 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!73 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!74 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!75 = !{!"BakeData", !68, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!76 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!77 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!78 = !{!"GameData", !77, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !79, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !80, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!79 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !35, i64 16}
!80 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!81 = !{!"UnitSettings", !41, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!82 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!83 = !{!"long", !36, i64 0}
!84 = !{!85, !35, i64 40}
!85 = !{!"Editing", !35, i64 0, !43, i64 8, !43, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !40, i64 2096, !40, i64 2100, !40, i64 2104, !40, i64 2108, !73, i64 2112}
!86 = !{!39, !35, i64 280}
!87 = !{!66, !35, i64 120}
!88 = !{!89, !35, i64 0}
!89 = !{!"AnimData", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !35, i64 40, !43, i64 48, !43, i64 64, !40, i64 80, !40, i64 84, !42, i64 88, !42, i64 90, !41, i64 92}
!90 = !{!91, !35, i64 120}
!91 = !{!"bAction", !64, i64 0, !43, i64 120, !43, i64 136, !43, i64 152, !43, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!92 = !{!93, !35, i64 80}
!93 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !43, i64 32, !35, i64 48, !35, i64 56, !40, i64 64, !41, i64 68, !42, i64 72, !42, i64 74, !40, i64 76, !35, i64 80, !40, i64 88, !36, i64 92, !41, i64 104, !41, i64 108}
!94 = !{!93, !35, i64 0}
!95 = distinct !{!95, !46, !47}
!96 = !{!39, !35, i64 304}
!97 = !{!85, !35, i64 0}
!98 = !{!43, !35, i64 0}
!99 = !{!39, !35, i64 0}
!100 = distinct !{!100, !46, !47}
!101 = distinct !{!101, !46, !47}
!102 = distinct !{!102, !46, !47}
!103 = !{!64, !35, i64 16}
!104 = !{!42, !42, i64 0}
!105 = distinct !{!105, !46, !47}
!106 = distinct !{!106, !46, !47}
!107 = !{!40, !40, i64 0}
!108 = !{!109, !40, i64 8}
!109 = !{!"SeqIterator", !35, i64 0, !40, i64 8, !40, i64 12, !35, i64 16, !40, i64 24}
!110 = !{!109, !40, i64 12}
!111 = !{!109, !35, i64 0}
!112 = !{!109, !35, i64 16}
!113 = !{!109, !40, i64 24}
!114 = distinct !{!114, !46, !47}
!115 = !{!116, !35, i64 48}
!116 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !41, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !74, i64 2436, !117, i64 2456}
!117 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!118 = !{!116, !35, i64 40}
!119 = !{!36, !36, i64 0}
!120 = !{!116, !40, i64 16}
!121 = !{!116, !40, i64 20}
!122 = !{!116, !40, i64 28}
!123 = !{!41, !41, i64 0}
!124 = !{!125, !35, i64 8}
!125 = !{!"SeqRenderData", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !41, i64 40, !36, i64 44, !36, i64 45}
!126 = !{!125, !35, i64 16}
!127 = !{!125, !40, i64 24}
!128 = !{!125, !40, i64 28}
!129 = !{!125, !40, i64 32}
!130 = !{!125, !40, i64 36}
!131 = !{!125, !41, i64 40}
!132 = !{!125, !35, i64 0}
!133 = !{!125, !36, i64 44}
!134 = !{!125, !36, i64 45}
!135 = !{!39, !40, i64 112}
!136 = !{!39, !40, i64 120}
!137 = !{!39, !40, i64 116}
!138 = !{!39, !40, i64 124}
!139 = !{!39, !40, i64 108}
!140 = !{!39, !40, i64 136}
!141 = !{!39, !40, i64 104}
!142 = !{!39, !40, i64 140}
!143 = !{!39, !41, i64 152}
!144 = !{!39, !40, i64 312}
!145 = !{!39, !35, i64 184}
!146 = !{!66, !40, i64 684}
!147 = distinct !{!147, !46, !47}
!148 = !{!39, !35, i64 240}
!149 = !{!39, !35, i64 232}
!150 = !{!39, !35, i64 248}
!151 = !{!39, !40, i64 96}
!152 = distinct !{!152, !46, !47}
!153 = !{!39, !40, i64 316}
!154 = !{!155, !35, i64 0}
!155 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !43, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!156 = !{!39, !42, i64 158}
!157 = !{!55, !42, i64 1032}
!158 = !{!39, !42, i64 156}
!159 = !{!39, !35, i64 200}
!160 = !{!39, !35, i64 208}
!161 = !{!66, !40, i64 688}
!162 = !{!39, !40, i64 128}
!163 = distinct !{!163, !46, !47}
!164 = distinct !{!164, !46, !47}
!165 = distinct !{!165, !46, !47}
!166 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!167 = distinct !{!167, !46, !47}
!168 = !{!169, !35, i64 0}
!169 = !{!"SeqUniqueInfo", !35, i64 0, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140}
!170 = !{!169, !40, i64 136}
!171 = !{!169, !40, i64 140}
!172 = distinct !{!172, !46, !47}
!173 = distinct !{!173, !46, !47}
!174 = !{!39, !41, i64 300}
!175 = distinct !{!175, !46, !47}
!176 = distinct !{!176, !46, !47}
!177 = !{!55, !42, i64 1038}
!178 = !{!179, !40, i64 8}
!179 = !{!"SeqIndexBuildContext", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48}
!180 = !{!55, !42, i64 1036}
!181 = !{!179, !40, i64 12}
!182 = !{!55, !42, i64 1034}
!183 = !{!179, !40, i64 16}
!184 = !{!179, !35, i64 24}
!185 = !{!179, !35, i64 32}
!186 = !{!179, !35, i64 48}
!187 = !{!179, !35, i64 40}
!188 = !{!179, !35, i64 0}
!189 = distinct !{!189, !46, !47}
!190 = !{!191, !35, i64 1888}
!191 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !42, i64 1040, !42, i64 1042, !42, i64 1044, !42, i64 1046, !83, i64 1048, !36, i64 1056, !42, i64 1072, !35, i64 1080, !43, i64 1088, !43, i64 1104, !43, i64 1120, !43, i64 1136, !43, i64 1152, !43, i64 1168, !43, i64 1184, !43, i64 1200, !43, i64 1216, !43, i64 1232, !43, i64 1248, !43, i64 1264, !43, i64 1280, !43, i64 1296, !43, i64 1312, !43, i64 1328, !43, i64 1344, !43, i64 1360, !43, i64 1376, !43, i64 1392, !43, i64 1408, !43, i64 1424, !43, i64 1440, !43, i64 1456, !43, i64 1472, !43, i64 1488, !43, i64 1504, !43, i64 1520, !43, i64 1536, !43, i64 1552, !43, i64 1568, !43, i64 1584, !43, i64 1600, !43, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!192 = !{!66, !42, i64 758}
!193 = !{!66, !40, i64 764}
!194 = !{!66, !40, i64 768}
!195 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !107, i64 28, i64 4, !107, i64 32, i64 4, !107, i64 36, i64 4, !107, i64 40, i64 4, !123, i64 44, i64 1, !119, i64 45, i64 1, !119}
!196 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !107, i64 20, i64 4, !107, i64 24, i64 4, !107, i64 28, i64 4, !107, i64 32, i64 4, !123, i64 36, i64 1, !119, i64 37, i64 1, !119}
!197 = !{i64 0, i64 8, !34, i64 8, i64 4, !107, i64 12, i64 4, !107, i64 16, i64 4, !107, i64 20, i64 4, !107, i64 24, i64 4, !123, i64 28, i64 1, !119, i64 29, i64 1, !119}
!198 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107, i64 12, i64 4, !107, i64 16, i64 4, !123, i64 20, i64 1, !119, i64 21, i64 1, !119}
!199 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107, i64 12, i64 4, !123, i64 16, i64 1, !119, i64 17, i64 1, !119}
!200 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !123, i64 12, i64 1, !119, i64 13, i64 1, !119}
!201 = distinct !{!201, !46, !47}
!202 = !{i8 0, i8 2}
!203 = !{!116, !40, i64 312}
!204 = !{!116, !36, i64 24}
!205 = !{!39, !41, i64 148}
!206 = !{!39, !40, i64 320}
!207 = !{!39, !41, i64 324}
!208 = !{!39, !41, i64 144}
!209 = !{!39, !35, i64 336}
!210 = !{!211, !35, i64 0}
!211 = !{!"SpeedControlVars", !35, i64 0, !41, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!212 = !{!61, !35, i64 72}
!213 = !{!61, !35, i64 88}
!214 = !{!61, !35, i64 64}
!215 = !{!66, !40, i64 800}
!216 = !{!39, !41, i64 224}
!217 = !{!61, !35, i64 48}
!218 = distinct !{!218, !46, !47}
!219 = !{!61, !36, i64 0}
!220 = !{!61, !35, i64 80}
!221 = !{!222, !35, i64 0}
!222 = !{!"RenderEffectInitData", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!223 = !{!222, !35, i64 8}
!224 = !{!222, !35, i64 16}
!225 = !{!222, !41, i64 24}
!226 = !{!222, !41, i64 28}
!227 = !{!222, !41, i64 32}
!228 = !{!222, !35, i64 40}
!229 = !{!222, !35, i64 48}
!230 = !{!222, !35, i64 56}
!231 = !{!222, !35, i64 64}
!232 = distinct !{!232, !46, !47}
!233 = !{!39, !36, i64 332}
!234 = !{!235, !40, i64 256}
!235 = !{!"StripElem", !36, i64 0, !40, i64 256, !40, i64 260}
!236 = !{!235, !40, i64 260}
!237 = !{!155, !36, i64 2090}
!238 = !{!155, !36, i64 2081}
!239 = !{!66, !36, i64 2794}
!240 = !{!66, !40, i64 796}
!241 = !{!66, !36, i64 246}
!242 = !{!66, !35, i64 248}
!243 = !{!66, !40, i64 680}
!244 = !{!39, !35, i64 192}
!245 = !{!66, !35, i64 128}
!246 = !{!66, !36, i64 2792}
!247 = !{!66, !40, i64 232}
!248 = !{!66, !42, i64 816}
!249 = !{!250, !35, i64 40}
!250 = !{!"RenderResult", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !42, i64 24, !42, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !74, i64 56, !40, i64 72, !40, i64 76, !43, i64 80, !74, i64 96, !35, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !35, i64 136}
!251 = !{!250, !40, i64 16}
!252 = !{!250, !40, i64 20}
!253 = !{!250, !35, i64 48}
!254 = !{!116, !35, i64 104}
!255 = !{!250, !35, i64 32}
!256 = !{!257, !40, i64 2320}
!257 = !{!"MovieClip", !64, i64 0, !35, i64 120, !36, i64 128, !40, i64 1152, !40, i64 1156, !36, i64 1160, !41, i64 1168, !41, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !258, i64 1200, !35, i64 1528, !264, i64 1536, !40, i64 2312, !40, i64 2316, !40, i64 2320, !40, i64 2324, !51, i64 2328}
!258 = !{!"MovieTracking", !259, i64 0, !260, i64 72, !43, i64 128, !43, i64 144, !261, i64 160, !262, i64 184, !35, i64 232, !35, i64 240, !43, i64 248, !40, i64 264, !40, i64 268, !35, i64 272, !263, i64 280}
!259 = !{!"MovieTrackingSettings", !40, i64 0, !42, i64 4, !42, i64 6, !41, i64 8, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !41, i64 24, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !42, i64 44, !42, i64 46, !41, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 64, !40, i64 68}
!260 = !{!"MovieTrackingCamera", !35, i64 0, !42, i64 8, !42, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !42, i64 24, !42, i64 26, !36, i64 28, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!261 = !{!"MovieTrackingReconstruction", !40, i64 0, !41, i64 4, !40, i64 8, !40, i64 12, !35, i64 16}
!262 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 12, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !41, i64 44}
!263 = !{!"MovieTrackingDopesheet", !40, i64 0, !42, i64 4, !42, i64 6, !43, i64 8, !43, i64 24, !40, i64 40, !40, i64 44}
!264 = !{!"MovieClipProxy", !36, i64 0, !42, i64 768, !42, i64 770, !42, i64 772, !42, i64 774}
!265 = !{!266, !42, i64 4}
!266 = !{!"MovieClipUser", !40, i64 0, !42, i64 4, !42, i64 6}
!267 = !{!39, !40, i64 164}
!268 = !{!266, !42, i64 6}
!269 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107, i64 12, i64 4, !107}
!270 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107}
!271 = !{i64 0, i64 4, !107, i64 4, i64 4, !107}
!272 = !{i64 0, i64 4, !107}
!273 = distinct !{!273, !46, !47}
!274 = distinct !{!274, !46, !47}
!275 = !{!276, !40, i64 152}
!276 = !{!"Mask", !64, i64 0, !35, i64 120, !43, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164}
!277 = distinct !{!277, !46, !47}
!278 = distinct !{!278, !46, !47}
!279 = !{!280, !35, i64 0}
!280 = !{!"ColorBalanceInitData", !35, i64 0, !35, i64 8, !41, i64 16, !35, i64 24, !36, i64 32}
!281 = !{!280, !35, i64 8}
!282 = !{!280, !41, i64 16}
!283 = !{!280, !36, i64 32}
!284 = !{!280, !35, i64 24}
!285 = !{!286, !35, i64 0}
!286 = !{!"ColorBalanceThread", !35, i64 0, !41, i64 8, !40, i64 12, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56}
!287 = !{!286, !41, i64 8}
!288 = !{!286, !40, i64 12}
!289 = !{!286, !40, i64 16}
!290 = !{!286, !36, i64 56}
!291 = !{!286, !35, i64 24}
!292 = !{!286, !35, i64 40}
!293 = !{!286, !35, i64 32}
!294 = !{!286, !35, i64 48}
!295 = !{i64 0, i64 12, !119, i64 12, i64 12, !119, i64 24, i64 12, !119, i64 36, i64 4, !107, i64 40, i64 4, !107}
!296 = !{!297}
!297 = distinct !{!297, !298, !"calc_cb: argument 0"}
!298 = distinct !{!298, !"calc_cb"}
!299 = distinct !{!299, !46, !47}
!300 = !{!301, !40, i64 36}
!301 = !{!"StripColorBalance", !36, i64 0, !36, i64 12, !36, i64 24, !40, i64 36, !40, i64 40}
!302 = distinct !{!302, !46, !47}
!303 = distinct !{!303, !46, !47}
!304 = distinct !{!304, !46, !47}
!305 = distinct !{!305, !46, !47}
!306 = distinct !{!306, !46, !47}
!307 = !{!308}
!308 = distinct !{!308, !309, !"calc_cb: argument 0"}
!309 = distinct !{!309, !"calc_cb"}
!310 = distinct !{!310, !46, !47}
!311 = distinct !{!311, !46, !47}
!312 = distinct !{!312, !46, !47}
!313 = distinct !{!313, !46, !47}
!314 = !{!315}
!315 = distinct !{!315, !316, !"calc_cb: argument 0"}
!316 = distinct !{!316, !"calc_cb"}
!317 = distinct !{!317, !46, !47}
!318 = distinct !{!318, !46, !47}
!319 = distinct !{!319, !46, !47}
!320 = distinct !{!320, !46, !47}
!321 = distinct !{!321, !46, !47}
!322 = distinct !{!322, !46, !47}
!323 = distinct !{!323, !46, !47}
!324 = !{!325, !40, i64 16}
!325 = !{!"PrefetchQueueElem", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !41, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40}
!326 = !{!325, !40, i64 20}
!327 = !{!325, !41, i64 24}
!328 = !{!325, !40, i64 28}
!329 = !{!325, !40, i64 32}
!330 = !{!325, !40, i64 36}
!331 = distinct !{!331, !46, !47}
!332 = distinct !{!332, !46, !47}
!333 = distinct !{!333, !46, !47}
!334 = distinct !{!334, !46, !47}
!335 = !{!39, !35, i64 16}
!336 = distinct !{!336, !46, !47}
!337 = distinct !{!337, !46, !47}
!338 = distinct !{!338, !46, !47}
!339 = distinct !{!339, !46, !47}
!340 = !{!93, !35, i64 48}
!341 = !{!93, !40, i64 64}
!342 = distinct !{!342, !46, !47}
!343 = !{!93, !35, i64 56}
!344 = distinct !{!344, !46, !47}
!345 = distinct !{!345, !46, !47}
!346 = distinct !{!346, !46, !47}
!347 = distinct !{!347, !46, !47}
!348 = distinct !{!348, !46, !47}
!349 = distinct !{!349, !46, !47}
!350 = distinct !{!350, !46, !47}
!351 = distinct !{!351, !46, !47}
!352 = distinct !{!352, !46, !47}
!353 = distinct !{!353, !46, !47}
!354 = distinct !{!354, !46, !47}
!355 = distinct !{!355, !46, !47}
!356 = distinct !{!356, !46, !47}
!357 = !{!85, !35, i64 32}
!358 = !{!359, !35, i64 24}
!359 = !{!"MetaStack", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32}
!360 = distinct !{!360, !46, !47}
!361 = distinct !{!361, !46, !47}
!362 = distinct !{!362, !46, !47}
!363 = distinct !{!363, !46, !47}
!364 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 64, !119, i64 96, i64 4, !107, i64 100, i64 4, !107, i64 104, i64 4, !107, i64 108, i64 4, !107, i64 112, i64 4, !107, i64 116, i64 4, !107, i64 120, i64 4, !107, i64 124, i64 4, !107, i64 128, i64 4, !107, i64 132, i64 4, !107, i64 136, i64 4, !107, i64 140, i64 4, !107, i64 144, i64 4, !123, i64 148, i64 4, !123, i64 152, i64 4, !123, i64 156, i64 2, !104, i64 158, i64 2, !104, i64 160, i64 4, !107, i64 164, i64 4, !107, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 8, !34, i64 192, i64 8, !34, i64 200, i64 8, !34, i64 208, i64 8, !34, i64 216, i64 8, !34, i64 224, i64 4, !123, i64 228, i64 4, !123, i64 232, i64 8, !34, i64 240, i64 8, !34, i64 248, i64 8, !34, i64 256, i64 8, !34, i64 264, i64 8, !34, i64 272, i64 8, !34, i64 280, i64 8, !34, i64 288, i64 4, !123, i64 292, i64 4, !123, i64 296, i64 4, !123, i64 300, i64 4, !123, i64 304, i64 8, !34, i64 312, i64 4, !107, i64 316, i64 4, !107, i64 320, i64 4, !107, i64 324, i64 4, !123, i64 328, i64 4, !107, i64 332, i64 1, !119, i64 333, i64 3, !119, i64 336, i64 8, !34, i64 344, i64 8, !34}
!365 = !{!39, !35, i64 8}
!366 = !{!91, !35, i64 128}
!367 = !{!93, !35, i64 8}
!368 = distinct !{!368, !46, !47}
!369 = distinct !{!369, !46, !47}
!370 = distinct !{!370, !46, !47}
!371 = distinct !{!371, !46, !47}
!372 = !{!39, !41, i64 288}
!373 = !{!39, !41, i64 292}
!374 = !{!116, !40, i64 32}
!375 = !{!376, !40, i64 0}
!376 = !{!"SeqLoadInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 1048, !35, i64 1112, !40, i64 1120, !40, i64 1124}
!377 = !{!376, !40, i64 8}
!378 = !{!376, !40, i64 20}
!379 = !{!376, !40, i64 12}
!380 = !{!376, !40, i64 1120}
!381 = !{!376, !40, i64 1124}
!382 = !{!376, !35, i64 1112}
!383 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 8, !34}
!384 = distinct !{!384, !46, !47}
!385 = distinct !{!385, !46, !47}
!386 = !{!39, !40, i64 132}
!387 = distinct !{!387, !46, !47}
!388 = distinct !{!388, !46, !47}
!389 = !{!390, !35, i64 0}
!390 = !{!"RenderEffectThread", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !40, i64 76}
!391 = !{!390, !35, i64 8}
!392 = !{!390, !35, i64 16}
!393 = !{!390, !41, i64 24}
!394 = !{!390, !41, i64 28}
!395 = !{!390, !41, i64 32}
!396 = !{!390, !35, i64 40}
!397 = !{!390, !35, i64 48}
!398 = !{!390, !35, i64 56}
!399 = !{!390, !35, i64 64}
!400 = !{!390, !40, i64 72}
!401 = !{!390, !40, i64 76}
!402 = distinct !{!402, !46, !47}
