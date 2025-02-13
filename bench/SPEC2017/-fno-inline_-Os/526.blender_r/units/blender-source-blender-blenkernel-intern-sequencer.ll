; ModuleID = 'blender/source/blender/blenkernel/intern/sequencer.c'
source_filename = "blender/source/blender/blenkernel/intern/sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
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
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.StripProxy = type { [768 x i8], [256 x i8], ptr, i16, i16, i16, i16 }
%struct.SeqUniqueInfo = type { ptr, [64 x i8], [64 x i8], i32, i32 }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.SeqIndexBuildContext = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ColorBalanceInitData = type { ptr, ptr, float, ptr, i8 }
%struct.ColorBalanceThread = type { ptr, float, i32, i32, ptr, ptr, ptr, ptr, i8 }
%struct.MetaStack = type { ptr, ptr, ptr, ptr, [2 x i32] }
%struct.PrefetchQueueElem = type { ptr, ptr, i32, i32, float, i32, i32, i32, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.SeqLoadInfo = type { i32, i32, i32, i32, i32, i32, [1024 x i8], [64 x i8], ptr, i32, i32 }
%struct.StripColorBalance = type { [3 x float], [3 x float], [3 x float], i32, i32 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.RenderEffectInitData = type { ptr, ptr, ptr, float, float, float, ptr, ptr, ptr, ptr }
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
@switch.table.give_seqname_by_type = private unnamed_addr constant [41 x ptr] [ptr @.str.16, ptr @.str.15, ptr @.str.17, ptr @.str.11, ptr @.str.20, ptr null, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.33, ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.36], align 8
@switch.table.seq_render_movieclip_strip = private unnamed_addr constant [8 x i16] [i16 1, i16 2, i16 1, i16 3, i16 1, i16 1, i16 1, i16 4], align 2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_sequencer_base_recursive_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @BKE_sequencer_recursive_apply(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #31
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %4, !llvm.loop !38

11:                                               ; preds = %4, %8
  %12 = phi i32 [ -1, %8 ], [ 1, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_sequencer_recursive_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #32
  switch i32 %4, label %5 [
    i32 -1, label %12
    i32 0, label %11
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #31, !range !46
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %5, %9, %3, %11
  %13 = phi i32 [ %4, %3 ], [ %10, %9 ], [ %4, %5 ], [ 0, %11 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @BKE_sequence_free_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BKE_sequence_free_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !47 {
  %4 = alloca %struct.SeqEffectHandle, align 8
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @seq_free_strip(ptr noundef nonnull %6) #31
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @IMB_free_anim(ptr noundef nonnull %11) #32
  store ptr null, ptr %10, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #33
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %4, ptr noundef nonnull %1) #32
  %20 = getelementptr inbounds %struct.SeqEffectHandle, ptr %4, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  call void %21(ptr noundef nonnull %1) #32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #33
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !54
  br label %30

30:                                               ; preds = %26, %22
  %31 = icmp eq ptr %0, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  call void @BKE_sequence_modifier_clear(ptr noundef nonnull %1) #32
  br label %50

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.Editing, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store ptr null, ptr %36, align 8, !tbaa !76
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %42 = load ptr, ptr %41, align 8, !tbaa !78
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %15, align 4, !tbaa !50
  switch i32 %45, label %47 [
    i32 4, label %46
    i32 2, label %46
  ]

46:                                               ; preds = %44, %44
  call void @sound_remove_scene_sound(ptr noundef nonnull %0, ptr noundef nonnull %42) #32
  br label %47

47:                                               ; preds = %40, %46, %44
  call fastcc void @seq_free_animdata(ptr noundef nonnull %0, ptr noundef nonnull %1) #31
  call void @BKE_sequence_modifier_clear(ptr noundef nonnull %1) #32
  %48 = icmp eq i8 %2, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @BKE_sequence_invalidate_cache(ptr noundef nonnull %0, ptr noundef nonnull %1) #31
  br label %50

50:                                               ; preds = %32, %49, %47
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %51(ptr noundef nonnull %1) #32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_editing_get(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @BKE_sequencer_editing_ensure(ptr noundef %0) #31
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_editing_ensure(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 2128, ptr noundef nonnull @.str) #32
  store ptr %7, ptr %2, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  store ptr %8, ptr %7, align 8, !tbaa !79
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_free_clipboard() local_unnamed_addr #0 {
  tail call void @BKE_sequencer_base_clipboard_pointers_free(ptr noundef nonnull @seqbase_clipboard) #31
  %1 = load ptr, ptr @seqbase_clipboard, align 8, !tbaa !80
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  tail call fastcc void @seq_free_sequence_recurse(ptr noundef nonnull %4) #31
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !82

7:                                                ; preds = %3, %0
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull @seqbase_clipboard) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_base_clipboard_pointers_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  tail call void @BKE_sequence_clipboard_pointers_free(ptr noundef nonnull %5) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  tail call void @BKE_sequencer_base_clipboard_pointers_free(ptr noundef nonnull %6) #31
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !83

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_free_sequence_recurse(ptr noundef %0) unnamed_addr #0 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  tail call fastcc void @seq_free_sequence_recurse(ptr noundef nonnull %6) #31
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !85

9:                                                ; preds = %5, %1
  tail call fastcc void @BKE_sequence_free_ex(ptr noundef null, ptr noundef %0, i8 noundef zeroext 0) #31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !86 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_clipboard_pointers_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  tail call fastcc void @seqclipboard_ptr_free(ptr noundef nonnull %2) #31
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 27
  tail call fastcc void @seqclipboard_ptr_free(ptr noundef nonnull %3) #31
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  tail call fastcc void @seqclipboard_ptr_free(ptr noundef nonnull %4) #31
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  tail call fastcc void @seqclipboard_ptr_free(ptr noundef nonnull %5) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  tail call fastcc void @seqclipboard_ptr_free(ptr noundef nonnull %6) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seqclipboard_ptr_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %2) #32
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_clipboard_pointers_store(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  tail call fastcc void @seqclipboard_ptr_store(ptr noundef nonnull %2) #31
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 27
  tail call fastcc void @seqclipboard_ptr_store(ptr noundef nonnull %3) #31
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  tail call fastcc void @seqclipboard_ptr_store(ptr noundef nonnull %4) #31
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  tail call fastcc void @seqclipboard_ptr_store(ptr noundef nonnull %5) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  tail call fastcc void @seqclipboard_ptr_store(ptr noundef nonnull %6) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seqclipboard_ptr_store(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %6 = tail call ptr %5(ptr noundef nonnull %2) #32
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !89
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_clipboard_pointers_restore(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %3) #31
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 27
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %4) #31
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 28
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %5) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 29
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %6) #31
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 37
  tail call fastcc void @seqclipboard_ptr_restore(ptr noundef %1, ptr noundef nonnull %7) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seqclipboard_ptr_restore(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !91
  %8 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %7) #32
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = tail call i32 @BLI_findindex(ptr noundef %8, ptr noundef %11) #32
  %13 = icmp eq i32 %12, -1
  %14 = load ptr, ptr %1, align 8, !tbaa !34
  br i1 %13, label %18, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  br label %21

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %20 = tail call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %19, i32 noundef 34) #32
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %20, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !91
  switch i16 %27, label %48 [
    i16 20307, label %28
    i16 17229, label %36
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bSound, ptr %25, i64 0, i32 1
  %30 = tail call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %29, i32 noundef 120) #32
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load ptr, ptr %1, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.bSound, ptr %33, i64 0, i32 1
  %35 = tail call ptr @sound_new_file(ptr noundef %0, ptr noundef nonnull %34) #32
  br label %44

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.MovieClip, ptr %25, i64 0, i32 2
  %38 = tail call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %37, i32 noundef 128) #32
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load ptr, ptr %1, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.MovieClip, ptr %41, i64 0, i32 2
  %43 = tail call ptr @BKE_movieclip_file_add(ptr noundef %0, ptr noundef nonnull %42) #32
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi ptr [ %35, %32 ], [ %43, %40 ]
  %46 = load ptr, ptr %1, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 2
  store ptr %45, ptr %47, align 8, !tbaa !89
  br label %48

48:                                               ; preds = %44, %24, %28, %36, %21
  %49 = phi ptr [ null, %24 ], [ %38, %36 ], [ %30, %28 ], [ %22, %21 ], [ %45, %44 ]
  store ptr %49, ptr %1, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_base_clipboard_pointers_store(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  tail call void @BKE_sequence_clipboard_pointers_store(ptr noundef nonnull %5) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  tail call void @BKE_sequencer_base_clipboard_pointers_store(ptr noundef nonnull %6) #31
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !92

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_base_clipboard_pointers_restore(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  tail call void @BKE_sequence_clipboard_pointers_restore(ptr noundef nonnull %6, ptr noundef %1) #31
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  tail call void @BKE_sequencer_base_clipboard_pointers_restore(ptr noundef nonnull %7, ptr noundef %1) #31
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !93

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_editing_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.SeqIterator, align 8
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  tail call void @BKE_sequencer_cache_cleanup() #32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #33
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %4, ptr noundef nonnull %2, i8 noundef zeroext 0) #31
  %7 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SeqIterator, ptr %2, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %12
  %13 = load ptr, ptr %11, align 8, !tbaa !96
  tail call fastcc void @BKE_sequence_free_ex(ptr noundef %0, ptr noundef %13, i8 noundef zeroext 0) #31
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %2) #31
  %14 = load i32, ptr %7, align 8, !tbaa !94
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12, !llvm.loop !97

16:                                               ; preds = %12, %6
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #33
  %17 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %17) #32
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %4) #32
  store ptr null, ptr %3, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_cache_cleanup() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_iterator_begin(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %4 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 1
  tail call fastcc void @seq_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %2) #31
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !99
  %9 = load ptr, ptr %1, align 8, !tbaa !100
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.SeqIterator, ptr %1, i64 0, i32 4
  store i32 1, ptr %12, align 8, !tbaa !94
  br label %13

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_sequence_iterator_next(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !99
  %5 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !100
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !96
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !94
  br label %16

16:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_iterator_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %2) #32
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.SeqIterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !94
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #32
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %6 = tail call ptr @IMB_colormanagement_get_float_colorspace(ptr noundef %1) #32
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef nonnull %1) #32
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %15) #34
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %17, %14
  tail call void @IMB_float_from_rect(ptr noundef nonnull %1) #32
  br label %21

21:                                               ; preds = %20, %3
  %22 = icmp eq ptr %4, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %4, align 1, !tbaa !105
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @imb_freerectImBuf(ptr noundef nonnull %1) #32
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %5) #34
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !tbaa !101
  %36 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !107
  %40 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !108
  tail call void @IMB_colormanagement_transform_threaded(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1) #32
  tail call fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %42

42:                                               ; preds = %21, %23, %34, %31, %10, %17
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_get_float_colorspace(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_get_rect_colorspace(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_transform_threaded(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef nonnull %1, ptr noundef nonnull %7) #32
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %4 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #32
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load i8, ptr %4, align 1, !tbaa !105
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !107
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !108
  tail call void @IMB_colormanagement_transform_threaded(ptr noundef nonnull %6, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1) #32
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef nonnull %1, ptr noundef nonnull %4) #32
  br label %20

20:                                               ; preds = %10, %13, %2
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_assign_float_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_pixel_from_sequencer_space_v4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %4 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1, !tbaa !105
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @IMB_colormanagement_transform_v4(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #32
  br label %11

10:                                               ; preds = %6, %2
  tail call fastcc void @srgb_to_linearrgb_v4(ptr noundef %1, ptr noundef %1) #31
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_transform_v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !110 {
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef %0, ptr noundef %1) #31
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !111
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_sequencer_new_render_data(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.SeqRenderData) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  store ptr %3, ptr %9, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  store i32 %5, ptr %11, align 4, !tbaa !116
  %12 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  store i32 %6, ptr %12, align 8, !tbaa !117
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 6
  store i32 0, ptr %13, align 4, !tbaa !118
  %14 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 7
  store float 0.000000e+00, ptr %14, align 8, !tbaa !119
  store ptr %1, ptr %0, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 8
  store i8 0, ptr %15, align 4, !tbaa !121
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 1, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_array(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !123 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  store ptr null, ptr %1, align 8, !tbaa !34
  store i32 0, ptr %2, align 4, !tbaa !124
  %6 = icmp eq ptr %0, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !79
  tail call fastcc void @seq_count(ptr noundef %10, ptr noundef nonnull %2) #31
  br label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  tail call fastcc void @seq_count(ptr noundef nonnull %12, ptr noundef nonnull %2) #31
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, ptr %2, align 4, !tbaa !124
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = sext i32 %14 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.13) #32
  store ptr %20, ptr %5, align 8, !tbaa !34
  store ptr %20, ptr %1, align 8, !tbaa !34
  br i1 %8, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 8, !tbaa !79
  call fastcc void @seq_build_array(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 0) #31
  br label %25

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  call fastcc void @seq_build_array(ptr noundef nonnull %24, ptr noundef nonnull %5, i32 noundef 0) #31
  br label %25

25:                                               ; preds = %21, %23, %13, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !125
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !126
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, ptr %7, align 8, !tbaa !126
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !127
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !128
  br i1 %14, label %20, label %17

17:                                               ; preds = %11
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  store i32 0, ptr %15, align 4, !tbaa !128
  br label %20

20:                                               ; preds = %11, %19, %17
  %21 = phi i32 [ 0, %19 ], [ 0, %17 ], [ %16, %11 ]
  %22 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !129
  %24 = add nsw i32 %23, %4
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !126
  %27 = sub i32 %24, %26
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  store i32 %27, ptr %28, align 8, !tbaa !130
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !131
  %31 = sub i32 %23, %13
  %32 = add i32 %31, %30
  %33 = add nsw i32 %32, %21
  %34 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  store i32 %33, ptr %34, align 4, !tbaa !132
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 19
  store float 1.000000e+01, ptr %35, align 8, !tbaa !133
  %36 = sub nsw i32 %33, %27
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = sitofp i32 %36 to double
  %40 = fmul double %39, 5.000000e-01
  %41 = fptrunc double %40 to float
  br label %47

42:                                               ; preds = %20
  %43 = icmp ugt i32 %36, 250
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = udiv i32 %36, 25
  %46 = sitofp i32 %45 to float
  br label %47

47:                                               ; preds = %38, %44
  %48 = phi float [ %46, %44 ], [ %41, %38 ]
  store float %48, ptr %35, align 8, !tbaa !133
  br label %49

49:                                               ; preds = %47, %42
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !50
  switch i32 %51, label %54 [
    i32 4, label %52
    i32 2, label %52
    i32 1, label %53
  ]

52:                                               ; preds = %49, %49
  tail call void @BKE_sequencer_update_sound_bounds(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %54

53:                                               ; preds = %49
  tail call fastcc void @seq_update_sound_bounds_recursive(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %54

54:                                               ; preds = %49, %53, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_update_sound_bounds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !125
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %14 = load i32, ptr %13, align 8, !tbaa !134
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !135
  %18 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !136
  %20 = add nsw i32 %15, %19
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !130
  %23 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !132
  tail call void @sound_move_scene_sound(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %22, i32 noundef %24, i32 noundef %20) #32
  br label %26

25:                                               ; preds = %2
  tail call void @sound_move_scene_sound_defaults(ptr noundef %0, ptr noundef nonnull %1) #32
  br label %26

26:                                               ; preds = %6, %10, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_update_sound_bounds_recursive(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !137 {
  %3 = tail call fastcc i32 @metaseq_start(ptr noundef %1) #31
  %4 = tail call fastcc i32 @metaseq_end(ptr noundef %1) #31
  tail call fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %4) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 36
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %7) #31
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr %7, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !138

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  store ptr %26, ptr %21, align 8, !tbaa !139
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %30 = load ptr, ptr %29, align 8, !tbaa !141
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  br i1 %31, label %34, label %35

34:                                               ; preds = %27
  store ptr %33, ptr %29, align 8, !tbaa !141
  br label %35

35:                                               ; preds = %27, %34
  %36 = phi ptr [ %33, %34 ], [ %30, %27 ]
  %37 = icmp eq ptr %33, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %40 = getelementptr inbounds %struct.Sequence, ptr %33, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %41 = load i32, ptr %40, align 8, !tbaa !130
  %42 = getelementptr inbounds %struct.Sequence, ptr %28, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 15
  %45 = load i32, ptr %44, align 8, !tbaa !130
  %46 = tail call fastcc i32 @max_iii(i32 noundef %41, i32 noundef %43, i32 noundef %45) #31
  %47 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  store i32 %46, ptr %47, align 8, !tbaa !130
  %48 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  store i32 %46, ptr %48, align 4, !tbaa !129
  %49 = getelementptr inbounds %struct.Sequence, ptr %33, i64 0, i32 16
  %50 = load i32, ptr %49, align 4, !tbaa !132
  %51 = getelementptr inbounds %struct.Sequence, ptr %28, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !132
  %53 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 16
  %54 = load i32, ptr %53, align 4, !tbaa !132
  %55 = tail call fastcc i32 @min_iii(i32 noundef %50, i32 noundef %52, i32 noundef %54) #31
  %56 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  store i32 %55, ptr %56, align 4, !tbaa !132
  %57 = icmp slt i32 %55, %46
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  store i32 %55, ptr %48, align 4, !tbaa !129
  store i32 %46, ptr %56, align 4, !tbaa !132
  store i32 %55, ptr %47, align 8, !tbaa !130
  %59 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !142
  %61 = or i32 %60, -2147483648
  store i32 %61, ptr %59, align 8, !tbaa !142
  br label %66

62:                                               ; preds = %38
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !142
  %65 = and i32 %64, 2147483647
  store i32 %65, ptr %63, align 8, !tbaa !142
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %46, %62 ], [ %55, %58 ]
  %68 = phi i32 [ %55, %62 ], [ %46, %58 ]
  %69 = sub nsw i32 %68, %67
  %70 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %69, ptr %70, align 8, !tbaa !131
  br label %101

71:                                               ; preds = %35
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %101

72:                                               ; preds = %15
  %73 = icmp eq i32 %17, 1
  br i1 %73, label %74, label %100

74:                                               ; preds = %72
  %75 = load ptr, ptr %3, align 8, !tbaa !40
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %74, %77
  %78 = phi i32 [ %86, %77 ], [ -600000, %74 ]
  %79 = phi i32 [ %83, %77 ], [ 600000, %74 ]
  %80 = phi ptr [ %87, %77 ], [ %75, %74 ]
  %81 = getelementptr inbounds %struct.Sequence, ptr %80, i64 0, i32 15
  %82 = load i32, ptr %81, align 8, !tbaa !130
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 %79)
  %84 = getelementptr inbounds %struct.Sequence, ptr %80, i64 0, i32 16
  %85 = load i32, ptr %84, align 4, !tbaa !132
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 %78)
  %87 = load ptr, ptr %80, align 8, !tbaa !81
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %77, !llvm.loop !143

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %91 = load i32, ptr %90, align 8, !tbaa !134
  %92 = add i32 %91, %83
  %93 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  store i32 %92, ptr %93, align 4, !tbaa !129
  %94 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %95 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %96 = load i32, ptr %95, align 4, !tbaa !144
  %97 = add i32 %92, %96
  %98 = sub i32 %86, %97
  store i32 %98, ptr %94, align 8, !tbaa !131
  br label %99

99:                                               ; preds = %89, %74
  tail call fastcc void @seq_update_sound_bounds_recursive(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %100

100:                                              ; preds = %99, %72
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %101

101:                                              ; preds = %66, %71, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !145 {
  %4 = tail call fastcc i32 @max_ii(i32 noundef %0, i32 noundef %1) #31
  %5 = tail call fastcc i32 @max_ii(i32 noundef %4, i32 noundef %2) #31
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !146 {
  %4 = tail call fastcc i32 @min_ii(i32 noundef %0, i32 noundef %1) #31
  %5 = tail call fastcc i32 @min_ii(i32 noundef %4, i32 noundef %2) #31
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_reload_new_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #33
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !50
  switch i32 %6, label %139 [
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
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef nonnull %1) #31
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 4, !tbaa !132
  %14 = load i32, ptr %5, align 4, !tbaa !50
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi i32 [ %14, %9 ], [ %6, %7 ]
  %17 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %18 = phi i32 [ %11, %9 ], [ 0, %7 ]
  switch i32 %16, label %136 [
    i32 0, label %19
    i32 3, label %36
    i32 6, label %87
    i32 7, label %101
    i32 4, label %139
    i32 2, label %115
  ]

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.Strip, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !147
  %25 = tail call i64 %20(ptr noundef %24) #32
  %26 = udiv i64 %25, 264
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %30 = load i32, ptr %29, align 8, !tbaa !134
  %31 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = add i32 %30, %32
  %34 = sub i32 %27, %33
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  store i32 %35, ptr %28, align 8, !tbaa !131
  br label %136

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.Strip, ptr %38, i64 0, i32 7
  %40 = getelementptr inbounds %struct.Strip, ptr %38, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %39, ptr noundef %41) #32
  %42 = load ptr, ptr @G, align 8, !tbaa !149
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 2
  %44 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %43) #32
  %45 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  call void @IMB_free_anim(ptr noundef nonnull %46) #32
  br label %49

49:                                               ; preds = %48, %36
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !142
  %52 = shl i32 %51, 5
  %53 = and i32 %52, 512
  %54 = or disjoint i32 %53, 1
  %55 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 21
  %56 = load i16, ptr %55, align 2, !tbaa !151
  %57 = sext i16 %56 to i32
  %58 = load ptr, ptr %37, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.Strip, ptr %58, i64 0, i32 12
  %60 = call ptr @openanim(ptr noundef nonnull %4, i32 noundef %54, i32 noundef %57, ptr noundef nonnull %59) #32
  store ptr %60, ptr %45, align 8, !tbaa !49
  %61 = icmp eq ptr %60, null
  br i1 %61, label %139, label %62

62:                                               ; preds = %49
  %63 = load ptr, ptr %37, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.Strip, ptr %63, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !152
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.StripProxy, ptr %65, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !153
  %70 = sext i16 %69 to i32
  br label %71

71:                                               ; preds = %62, %67
  %72 = phi i32 [ %70, %67 ], [ 1, %62 ]
  %73 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %60, i32 noundef %72) #32
  %74 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  store i32 %73, ptr %74, align 8, !tbaa !131
  %75 = load ptr, ptr %45, align 8, !tbaa !49
  %76 = call i32 @IMB_anim_get_preseek(ptr noundef %75) #32
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 20
  store i16 %77, ptr %78, align 4, !tbaa !155
  %79 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %80 = load i32, ptr %79, align 8, !tbaa !134
  %81 = load i32, ptr %74, align 8, !tbaa !131
  %82 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %83 = load i32, ptr %82, align 4, !tbaa !144
  %84 = add i32 %80, %83
  %85 = sub i32 %81, %84
  %86 = call i32 @llvm.smax.i32(i32 %85, i32 0)
  store i32 %86, ptr %74, align 8
  br label %136

87:                                               ; preds = %15
  %88 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 28
  %89 = load ptr, ptr %88, align 8, !tbaa !156
  %90 = icmp eq ptr %89, null
  br i1 %90, label %139, label %91

91:                                               ; preds = %87
  %92 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %89) #32
  %93 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %94 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %95 = load i32, ptr %94, align 8, !tbaa !134
  %96 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %97 = load i32, ptr %96, align 4, !tbaa !144
  %98 = add i32 %95, %97
  %99 = sub i32 %92, %98
  %100 = tail call i32 @llvm.smax.i32(i32 %99, i32 0)
  store i32 %100, ptr %93, align 8
  br label %136

101:                                              ; preds = %15
  %102 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 29
  %103 = load ptr, ptr %102, align 8, !tbaa !157
  %104 = icmp eq ptr %103, null
  br i1 %104, label %139, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @BKE_mask_get_duration(ptr noundef nonnull %103) #32
  %107 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %108 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %109 = load i32, ptr %108, align 8, !tbaa !134
  %110 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %111 = load i32, ptr %110, align 4, !tbaa !144
  %112 = add i32 %109, %111
  %113 = sub i32 %106, %112
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 0)
  store i32 %114, ptr %107, align 8
  br label %136

115:                                              ; preds = %15
  %116 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %117 = load ptr, ptr %116, align 8, !tbaa !135
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.Scene, ptr %117, i64 0, i32 22, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !158
  %122 = getelementptr inbounds %struct.Scene, ptr %117, i64 0, i32 22, i32 6
  %123 = load i32, ptr %122, align 4, !tbaa !136
  %124 = add i32 %121, 1
  %125 = sub i32 %124, %123
  br label %126

126:                                              ; preds = %115, %119
  %127 = phi i32 [ %125, %119 ], [ 0, %115 ]
  %128 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %129 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %130 = load i32, ptr %129, align 8, !tbaa !134
  %131 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 45
  %132 = load i32, ptr %131, align 4, !tbaa !144
  %133 = add i32 %130, %132
  %134 = sub i32 %127, %133
  %135 = tail call i32 @llvm.smax.i32(i32 %134, i32 0)
  store i32 %135, ptr %128, align 8
  br label %136

136:                                              ; preds = %126, %105, %91, %71, %15, %19
  call fastcc void @free_proxy_seq(ptr noundef nonnull %1) #31
  br i1 %8, label %138, label %137

137:                                              ; preds = %136
  call void @BKE_sequence_tx_set_final_left(ptr noundef nonnull %1, i32 noundef %18) #31
  call void @BKE_sequence_tx_set_final_right(ptr noundef nonnull %1, i32 noundef %17) #31
  call void @BKE_sequence_single_fix(ptr noundef nonnull %1) #31
  br label %138

138:                                              ; preds = %137, %136
  call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %139

139:                                              ; preds = %3, %15, %101, %87, %49, %138
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #33
  ret void
}

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @openanim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IMB_anim_get_preseek(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_mask_get_duration(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_proxy_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Strip, ptr %3, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.StripProxy, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  tail call void @IMB_free_anim(ptr noundef nonnull %11) #32
  %14 = load ptr, ptr %2, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  %17 = getelementptr inbounds %struct.StripProxy, ptr %16, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !160
  br label %18

18:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_sequence_tx_set_final_left(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !129
  %5 = icmp sgt i32 %4, %1
  %6 = sub nsw i32 %4, %1
  %7 = sub nsw i32 %1, %4
  %8 = select i1 %5, i32 %6, i32 0
  %9 = select i1 %5, i32 0, i32 %7
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  store i32 %8, ptr %10, align 8
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  store i32 %9, ptr %11, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_sequence_tx_set_final_right(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !129
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = add nsw i32 %6, %4
  %8 = icmp slt i32 %7, %1
  %9 = sub nsw i32 %1, %7
  %10 = sub nsw i32 %7, %1
  %11 = select i1 %8, i32 %9, i32 0
  %12 = select i1 %8, i32 0, i32 %10
  %13 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  store i32 %12, ptr %14, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_single_fix(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @BKE_sequence_single_check(ptr noundef %0) #31, !range !161
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %0, i8 noundef zeroext 0) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !129
  %8 = icmp eq i32 %7, %5
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = sub nsw i32 %5, %7
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef nonnull %0, i32 noundef %7) #31
  %11 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %0, i8 noundef zeroext 0) #31
  %12 = sub nsw i32 %11, %10
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef nonnull %0, i32 noundef %12) #31
  %13 = load i32, ptr %6, align 4, !tbaa !129
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %6, align 4, !tbaa !129
  br label %15

15:                                               ; preds = %4, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_sort(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #33
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %2) #31
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #31
  %7 = load ptr, ptr %4, align 8, !tbaa !79
  %8 = tail call ptr @BLI_pophead(ptr noundef %7) #32
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6, %39
  %11 = phi ptr [ %41, %39 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 13
  br i1 %15, label %28, label %17

17:                                               ; preds = %10, %21
  %18 = phi ptr [ %19, %21 ], [ %3, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !162
  %24 = load i32, ptr %16, align 8, !tbaa !162
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %17, label %26, !llvm.loop !163

26:                                               ; preds = %21
  call void @BLI_insertlinkbefore(ptr noundef nonnull %3, ptr noundef nonnull %19, ptr noundef nonnull %11) #32
  br label %39

27:                                               ; preds = %17
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %11) #32
  br label %39

28:                                               ; preds = %10, %32
  %29 = phi ptr [ %30, %32 ], [ %2, %10 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Sequence, ptr %30, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !162
  %35 = load i32, ptr %16, align 8, !tbaa !162
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %28, label %37, !llvm.loop !164

37:                                               ; preds = %32
  call void @BLI_insertlinkbefore(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef nonnull %11) #32
  br label %39

38:                                               ; preds = %28
  call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef nonnull %11) #32
  br label %39

39:                                               ; preds = %37, %26, %38, %27
  %40 = load ptr, ptr %4, align 8, !tbaa !79
  %41 = call ptr @BLI_pophead(ptr noundef %40) #32
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %10, !llvm.loop !165

43:                                               ; preds = %39, %6
  call void @BLI_movelisttolist(ptr noundef nonnull %2, ptr noundef nonnull %3) #32
  %44 = load ptr, ptr %4, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !166
  br label %45

45:                                               ; preds = %1, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #33
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Editing, ptr %11, i64 0, i32 1
  %15 = tail call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %14, ptr noundef nonnull @clear_scene_in_allseqs_cb, ptr noundef %1) #31, !range !46
  br label %16

16:                                               ; preds = %6, %9, %13
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !167

19:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @clear_scene_in_allseqs_cb(ptr nocapture noundef %0, ptr noundef readnone %1) #8 !PGOFuncName !168 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !135
  br label %7

7:                                                ; preds = %6, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_base_unique_name_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SeqUniqueInfo, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #33
  store ptr %1, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 64) #32
  %7 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef 64) #32
  %9 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !171
  %10 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %3, i64 0, i32 4
  store i32 1, ptr %10, align 4, !tbaa !172
  %11 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  store i8 0, ptr %11, align 1, !tbaa !105
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !105
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = call i32 @atoi(ptr nocapture noundef nonnull %14) #34
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %9, align 8, !tbaa !171
  br label %20

20:                                               ; preds = %13, %17
  %21 = load i32, ptr %10, align 4, !tbaa !172
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2, %20
  br label %24

24:                                               ; preds = %23, %24
  store i32 0, ptr %10, align 4, !tbaa !172
  call fastcc void @seqbase_unique_name(ptr noundef %0, ptr noundef nonnull %3) #31
  %25 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef %0, ptr noundef nonnull @seqbase_unique_name_recursive_cb, ptr noundef nonnull %3) #31, !range !46
  %26 = load i32, ptr %10, align 4, !tbaa !172
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24, !llvm.loop !173

28:                                               ; preds = %24, %20
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %7, i64 noundef 62) #32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #33
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seqbase_unique_name(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !174 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.SeqUniqueInfo, ptr %1, i64 0, i32 4
  br label %10

10:                                               ; preds = %5, %22
  %11 = phi ptr [ %3, %5 ], [ %23, %22 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !169
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 4, i64 2
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %15) #34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, ptr %8, align 8, !tbaa !171
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %8, align 8, !tbaa !171
  %21 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.14, i32 noundef 57, ptr noundef nonnull %7, i32 noundef %19) #32
  store i32 1, ptr %9, align 4, !tbaa !172
  br label %22

22:                                               ; preds = %10, %14, %18
  %23 = load ptr, ptr %11, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !175

25:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @seqbase_unique_name_recursive_cb(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !176 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 36
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @seqbase_unique_name(ptr noundef nonnull %3, ptr noundef %1) #31
  br label %7

7:                                                ; preds = %6, %2
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @BKE_sequence_give_name(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = tail call fastcc ptr @give_seqname_by_type(i32 noundef %3) #31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = icmp slt i32 %3, 8
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.Strip, ptr %10, i64 0, i32 7
  br label %12

12:                                               ; preds = %1, %6, %8
  %13 = phi ptr [ %11, %8 ], [ @.str.1, %6 ], [ %4, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef ptr @give_seqname_by_type(i32 noundef %0) unnamed_addr #7 !PGOFuncName !177 {
  %2 = icmp ult i32 %0, 41
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [41 x ptr], ptr @switch.table.give_seqname_by_type, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local ptr @BKE_sequencer_give_stripelem(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = sitofp i32 %1 to float
  %12 = tail call fastcc float @give_stripelem_index(ptr noundef nonnull %0, float noundef %11) #31
  %13 = fptosi float %12 to i32
  %14 = icmp ne i32 %13, -1
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 44
  %19 = load i32, ptr %18, align 8, !tbaa !134
  %20 = add nsw i32 %19, %13
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.StripElem, ptr %6, i64 %21
  br label %23

23:                                               ; preds = %17, %10, %2
  %24 = phi ptr [ %6, %2 ], [ %22, %17 ], [ null, %10 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @give_stripelem_index(ptr nocapture noundef %0, float noundef %1) unnamed_addr #13 !PGOFuncName !178 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !129
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !131
  %7 = add i32 %4, -1
  %8 = add i32 %7, %6
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %15 = load i32, ptr %14, align 4, !tbaa !132
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ %15, %13 ], [ %8, %2 ]
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !142
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  %24 = sitofp i32 %4 to float
  %25 = fcmp ult float %24, %1
  br i1 %23, label %35, label %26

26:                                               ; preds = %19
  br i1 %25, label %30, label %27

27:                                               ; preds = %26
  %28 = sub nsw i32 %17, %4
  %29 = sitofp i32 %28 to float
  br label %44

30:                                               ; preds = %26
  %31 = sitofp i32 %17 to float
  %32 = fcmp ugt float %31, %1
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = fsub float %31, %1
  br label %44

35:                                               ; preds = %19
  br i1 %25, label %36, label %44

36:                                               ; preds = %35
  %37 = sitofp i32 %17 to float
  %38 = fcmp ugt float %37, %1
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = sub nsw i32 %17, %4
  %41 = sitofp i32 %40 to float
  br label %44

42:                                               ; preds = %36
  %43 = fsub float %1, %24
  br label %44

44:                                               ; preds = %35, %30, %42, %39, %27, %33
  %45 = phi float [ %29, %27 ], [ %34, %33 ], [ %41, %39 ], [ %43, %42 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %35 ]
  %46 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 42
  %47 = load float, ptr %46, align 4, !tbaa !179
  %48 = fcmp olt float %47, 1.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store float 1.000000e+00, ptr %46, align 4, !tbaa !179
  br label %55

50:                                               ; preds = %44
  %51 = fcmp ogt float %47, 1.000000e+00
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = tail call float @fmodf(float noundef %45, float noundef %47) #32
  %54 = fsub float %45, %53
  br label %55

55:                                               ; preds = %49, %50, %52, %16
  %56 = phi float [ -1.000000e+00, %16 ], [ %54, %52 ], [ %45, %50 ], [ %45, %49 ]
  ret float %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_sequencer_evaluate_frame(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [33 x ptr], align 16
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %3) #33
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !79
  %8 = call fastcc i32 @evaluate_seq_frame_gen(ptr noundef nonnull %3, ptr noundef %7, i32 noundef %1, i32 noundef 0) #31
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %3) #33
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @evaluate_seq_frame_gen(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 !PGOFuncName !180 {
  %5 = alloca [33 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %5) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %92, label %13

8:                                                ; preds = %62
  %9 = icmp sgt i32 %64, 0
  br i1 %9, label %10, label %92

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  %12 = zext nneg i32 %64 to i64
  br label %67

13:                                               ; preds = %4, %62
  %14 = phi ptr [ %65, %62 ], [ %6, %4 ]
  %15 = phi i32 [ %64, %62 ], [ 0, %4 ]
  %16 = phi i32 [ %63, %62 ], [ 0, %4 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !130
  %19 = icmp sgt i32 %18, %2
  br i1 %19, label %62, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !132
  %23 = icmp sgt i32 %22, %2
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 33
  %31 = load ptr, ptr %30, align 8, !tbaa !140
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = add nsw i32 %15, 1
  %35 = sext i32 %15 to i64
  %36 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %35
  store ptr %31, ptr %36, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %34, %33 ], [ %15, %29 ]
  %39 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 34
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = add nsw i32 %38, 1
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %44
  store ptr %40, ptr %45, align 8, !tbaa !34
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %43, %42 ], [ %38, %37 ]
  %48 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 35
  %49 = load ptr, ptr %48, align 8, !tbaa !141
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = add nsw i32 %47, 1
  %53 = sext i32 %47 to i64
  %54 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %53
  store ptr %49, ptr %54, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %46, %51, %24
  %56 = phi i32 [ %52, %51 ], [ %47, %46 ], [ %15, %24 ]
  %57 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !162
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %0, i64 %59
  store ptr %14, ptr %60, align 8, !tbaa !34
  %61 = add nsw i32 %16, 1
  br label %62

62:                                               ; preds = %55, %20, %13
  %63 = phi i32 [ %61, %55 ], [ %16, %20 ], [ %16, %13 ]
  %64 = phi i32 [ %56, %55 ], [ %15, %20 ], [ %15, %13 ]
  %65 = load ptr, ptr %14, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %8, label %13, !llvm.loop !181

67:                                               ; preds = %10, %89
  %68 = phi i64 [ 0, %10 ], [ %90, %89 ]
  %69 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.Sequence, ptr %70, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !162
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.Sequence, ptr %75, i64 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !50
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  %82 = icmp slt i32 %72, %3
  %83 = or i1 %11, %82
  %84 = and i1 %81, %83
  br i1 %84, label %88, label %89

85:                                               ; preds = %67
  %86 = icmp slt i32 %72, %3
  %87 = or i1 %11, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77, %85
  store ptr null, ptr %74, align 8, !tbaa !34
  br label %89

89:                                               ; preds = %85, %77, %88
  %90 = add nuw nsw i64 %68, 1
  %91 = icmp eq i64 %90, %12
  br i1 %91, label %92, label %67, !llvm.loop !182

92:                                               ; preds = %89, %4, %8
  %93 = phi i32 [ %63, %8 ], [ 0, %4 ], [ %63, %89 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %5) #33
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_proxy_rebuild_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Strip, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 56, ptr noundef nonnull @.str.2) #32
  %19 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #31
  %20 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.Strip, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !152
  %24 = getelementptr inbounds %struct.StripProxy, ptr %23, i64 0, i32 6
  %25 = load i16, ptr %24, align 2, !tbaa !183
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !184
  %28 = getelementptr inbounds %struct.StripProxy, ptr %23, i64 0, i32 5
  %29 = load i16, ptr %28, align 4, !tbaa !186
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 2
  store i32 %30, ptr %31, align 4, !tbaa !187
  %32 = getelementptr inbounds %struct.StripProxy, ptr %23, i64 0, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !188
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 3
  store i32 %34, ptr %35, align 8, !tbaa !189
  %36 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 4
  store ptr %0, ptr %36, align 8, !tbaa !190
  %37 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 5
  store ptr %1, ptr %37, align 8, !tbaa !191
  %38 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 7
  store ptr %2, ptr %38, align 8, !tbaa !192
  %39 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %18, i64 0, i32 6
  store ptr %19, ptr %39, align 8, !tbaa !193
  %40 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %52

43:                                               ; preds = %16
  tail call fastcc void @seq_open_anim_file(ptr noundef nonnull %19) #31
  %44 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 30
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %27, align 8, !tbaa !184
  %49 = load i32, ptr %31, align 4, !tbaa !187
  %50 = load i32, ptr %35, align 8, !tbaa !189
  %51 = tail call ptr @IMB_anim_index_rebuild_context(ptr noundef nonnull %45, i32 noundef %48, i32 noundef %49, i32 noundef %50) #32
  store ptr %51, ptr %18, align 8, !tbaa !194
  br label %52

52:                                               ; preds = %16, %47, %43, %11, %3, %7
  %53 = phi ptr [ null, %7 ], [ null, %3 ], [ null, %11 ], [ %18, %43 ], [ %18, %47 ], [ %18, %16 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @seq_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !50
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
  %17 = tail call ptr @BKE_sequence_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16, i32 noundef %3) #31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef nonnull %17) #32
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %16, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !195

23:                                               ; preds = %20, %9, %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_open_anim_file(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !196 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #33
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.Strip, ptr %9, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Strip, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %10, ptr noundef %12) #32
  %13 = load ptr, ptr @G, align 8, !tbaa !149
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %14) #32
  %16 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !142
  %18 = shl i32 %17, 5
  %19 = and i32 %18, 512
  %20 = or disjoint i32 %19, 1
  %21 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 21
  %22 = load i16, ptr %21, align 2, !tbaa !151
  %23 = sext i16 %22 to i32
  %24 = load ptr, ptr %8, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 12
  %26 = call ptr @openanim(ptr noundef nonnull %2, i32 noundef %20, i32 noundef %23, ptr noundef nonnull %25) #32
  store ptr %26, ptr %4, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %7
  %29 = load ptr, ptr %8, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.Strip, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !152
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %16, align 8, !tbaa !142
  %35 = and i32 %34, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #33
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %31, i64 noundef 1024) #32
  %39 = load ptr, ptr @G, align 8, !tbaa !149
  %40 = getelementptr inbounds %struct.Main, ptr %39, i64 0, i32 2
  %41 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %40) #32
  %42 = load ptr, ptr %4, align 8, !tbaa !49
  call void @IMB_anim_set_index_dir(ptr noundef %42, ptr noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #33
  br label %43

43:                                               ; preds = %33, %37, %28, %7, %1
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #33
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_anim_index_rebuild_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_proxy_rebuild(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.SeqRenderData, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #33
  %6 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !191
  %10 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  %12 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load ptr, ptr %0, align 8, !tbaa !194
  %17 = icmp eq ptr %16, null
  br i1 %17, label %104, label %18

18:                                               ; preds = %15
  tail call void @IMB_anim_index_rebuild(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %2, ptr noundef %3) #32
  br label %104

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !142
  %22 = and i32 %21, 2129920
  %23 = icmp eq i32 %22, 32768
  br i1 %23, label %24, label %104

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 46
  %26 = load ptr, ptr %25, align 8, !tbaa !197
  %27 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 30
  %28 = load i16, ptr %27, align 2, !tbaa !199
  %29 = sitofp i16 %28 to float
  %30 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 33
  %31 = load i32, ptr %30, align 4, !tbaa !200
  %32 = sitofp i32 %31 to float
  %33 = fmul float %29, %32
  %34 = fdiv float %33, 1.000000e+02
  %35 = fadd float %34, 5.000000e-01
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 34
  %38 = load i32, ptr %37, align 8, !tbaa !201
  %39 = sitofp i32 %38 to float
  %40 = fmul float %29, %39
  %41 = fdiv float %40, 1.000000e+02
  %42 = fadd float %41, 5.000000e-01
  %43 = fptosi float %42 to i32
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %5, ptr noundef %26, ptr noundef %11, ptr noundef %9, i32 noundef %36, i32 noundef %43, i32 noundef 100) #31
  %44 = getelementptr inbounds %struct.SeqRenderData, ptr %5, i64 0, i32 8
  store i8 1, ptr %44, align 4, !tbaa !121
  %45 = getelementptr inbounds %struct.SeqRenderData, ptr %5, i64 0, i32 9
  store i8 1, ptr %45, align 1, !tbaa !122
  %46 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !130
  %48 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 11
  %49 = load i32, ptr %48, align 8, !tbaa !126
  %50 = add nsw i32 %49, %47
  %51 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 16
  %52 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 12
  %53 = load i32, ptr %51, align 4, !tbaa !132
  %54 = load i32, ptr %52, align 4, !tbaa !128
  %55 = sub nsw i32 %53, %54
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 2
  br label %63

59:                                               ; preds = %87
  %60 = add nsw i32 %64, 1
  %61 = sub nsw i32 %93, %94
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %104, !llvm.loop !202

63:                                               ; preds = %57, %59
  %64 = phi i32 [ %50, %57 ], [ %60, %59 ]
  %65 = load i32, ptr %58, align 4, !tbaa !187
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %64, i32 noundef 25) #31
  %69 = load i32, ptr %58, align 4, !tbaa !187
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi i32 [ %69, %68 ], [ %65, %63 ]
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %64, i32 noundef 50) #31
  %75 = load i32, ptr %58, align 4, !tbaa !187
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %75, %74 ], [ %71, %70 ]
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %64, i32 noundef 75) #31
  %81 = load i32, ptr %58, align 4, !tbaa !187
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %81, %80 ], [ %77, %76 ]
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call fastcc void @seq_proxy_build_frame(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %64, i32 noundef 100) #31
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, ptr %46, align 8, !tbaa !130
  %89 = load i32, ptr %48, align 8, !tbaa !126
  %90 = add i32 %88, %89
  %91 = sub i32 %64, %90
  %92 = sitofp i32 %91 to float
  %93 = load i32, ptr %51, align 4, !tbaa !132
  %94 = load i32, ptr %52, align 4, !tbaa !128
  %95 = add i32 %90, %94
  %96 = sub i32 %93, %95
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %92, %97
  store float %98, ptr %3, align 4, !tbaa !111
  store i16 1, ptr %2, align 2, !tbaa !91
  %99 = load i16, ptr %1, align 2, !tbaa !91
  %100 = icmp ne i16 %99, 0
  %101 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %102 = icmp ne i8 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %104, label %59

104:                                              ; preds = %87, %59, %24, %19, %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #33
  ret void
}

; Function Attrs: optsize
declare void @IMB_anim_index_rebuild(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_proxy_build_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !203 {
  %5 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %5) #33
  %6 = call fastcc zeroext i8 @seq_proxy_get_fname(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #31, !range !161
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = sitofp i32 %2 to float
  %10 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %1, float noundef %9) #31
  %11 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !106
  %13 = mul nsw i32 %12, %3
  %14 = sdiv i32 %13, 100
  %15 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !107
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
  %27 = call ptr @IMB_scalefastImBuf(ptr noundef nonnull %10, i32 noundef %24, i32 noundef %26) #32
  br label %28

28:                                               ; preds = %8, %22
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.Strip, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !152
  %33 = getelementptr inbounds %struct.StripProxy, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 2, !tbaa !188
  %35 = sext i16 %34 to i32
  %36 = or i32 %35, 134217728
  %37 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 26
  store i32 %36, ptr %37, align 8, !tbaa !204
  %38 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 4
  %39 = load i8, ptr %38, align 8, !tbaa !205
  %40 = icmp eq i8 %39, 32
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i8 24, ptr %38, align 8, !tbaa !205
  br label %42

42:                                               ; preds = %41, %28
  call void @BLI_make_existing_file(ptr noundef nonnull %5) #32
  %43 = call signext i16 @IMB_saveiff(ptr noundef nonnull %10, ptr noundef nonnull %5, i32 noundef 73) #32
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @perror(ptr noundef nonnull %5) #35
  br label %46

46:                                               ; preds = %45, %42
  call void @IMB_freeImBuf(ptr noundef nonnull %10) #32
  br label %47

47:                                               ; preds = %4, %46
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %5) #33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_proxy_rebuild_finish(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @IMB_close_anim_proxies(ptr noundef %9) #32
  %10 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  tail call void @IMB_close_anim_proxies(ptr noundef %13) #32
  %14 = load ptr, ptr %0, align 8, !tbaa !194
  %15 = zext i8 %1 to i16
  tail call void @IMB_anim_index_rebuild_finish(ptr noundef %14, i16 noundef signext %15) #32
  br label %16

16:                                               ; preds = %5, %2
  %17 = getelementptr inbounds %struct.SeqIndexBuildContext, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !193
  tail call fastcc void @seq_free_sequence_recurse(ptr noundef %18) #31
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: optsize
declare void @IMB_close_anim_proxies(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_anim_index_rebuild_finish(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %2, float noundef %10) #31
  %12 = icmp eq i8 %5, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  tail call void @IMB_float_from_rect(ptr noundef nonnull %11) #32
  br label %26

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  tail call void @IMB_rect_from_float(ptr noundef nonnull %11) #32
  br label %26

23:                                               ; preds = %6
  %24 = sitofp i32 %4 to float
  %25 = tail call fastcc ptr @seq_render_mask(ptr noundef %0, ptr noundef %3, float noundef %24, i8 noundef zeroext %5) #31
  br label %26

26:                                               ; preds = %6, %23, %7, %18, %22, %13, %17
  %27 = phi ptr [ %11, %13 ], [ %11, %17 ], [ %11, %18 ], [ %11, %22 ], [ null, %7 ], [ %25, %23 ], [ null, %6 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @seq_render_strip(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !206 {
  %4 = tail call fastcc float @give_stripelem_index(ptr noundef %1, float noundef %2) #31
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %6, 29
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  switch i32 %6, label %12 [
    i32 3, label %16
    i32 0, label %16
  ]

12:                                               ; preds = %3, %11
  %13 = phi i32 [ %6, %11 ], [ 8, %3 ]
  %14 = icmp ne i32 %13, 2
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %11, %11, %12
  %17 = phi i8 [ 0, %11 ], [ %15, %12 ], [ 0, %11 ]
  %18 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef nonnull %1, float noundef %2, i32 noundef 0) #32
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @copy_from_ibuf_still(ptr noundef %0, ptr noundef nonnull %1, float noundef %4) #31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = tail call ptr @BKE_sequencer_preprocessed_cache_get(ptr noundef %0, ptr noundef nonnull %1, float noundef %2, i32 noundef 0) #32
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, ptr %5, align 4, !tbaa !50
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = fptosi float %2 to i32
  %31 = tail call fastcc ptr @seq_proxy_fetch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %30) #31
  %32 = icmp ne ptr %31, null
  %33 = zext i1 %32 to i8
  %34 = icmp eq ptr %31, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26, %29
  %36 = phi i8 [ %33, %29 ], [ 0, %26 ]
  %37 = tail call fastcc ptr @do_render_strip_uncached(ptr noundef %0, ptr noundef nonnull %1, float noundef %2) #31
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %29, %35
  %40 = phi ptr [ %37, %35 ], [ %31, %29 ]
  %41 = phi i8 [ %36, %35 ], [ %33, %29 ]
  %42 = load i32, ptr %5, align 4, !tbaa !50
  switch i32 %42, label %48 [
    i32 3, label %43
    i32 6, label %43
  ]

43:                                               ; preds = %39, %39
  %44 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !117
  %46 = icmp ne i32 %45, 100
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %39, %43
  %49 = phi i8 [ %47, %43 ], [ %41, %39 ]
  tail call void @BKE_sequencer_preprocessed_cache_put(ptr noundef %0, ptr noundef nonnull %1, float noundef %2, i32 noundef 0, ptr noundef nonnull %40) #32
  br label %50

50:                                               ; preds = %48, %23, %20
  %51 = phi i8 [ 0, %20 ], [ 0, %23 ], [ %49, %48 ]
  %52 = phi ptr [ %21, %20 ], [ %24, %23 ], [ %40, %48 ]
  %53 = tail call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef %0, ptr noundef nonnull %1, float poison) #31, !range !161
  %54 = icmp eq i8 %53, 0
  br label %63

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !115
  %58 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !116
  %60 = tail call ptr @IMB_allocImBuf(i32 noundef %57, i32 noundef %59, i8 noundef zeroext 32, i32 noundef 1) #32
  %61 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !114
  tail call fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %62, ptr noundef %60) #31
  br label %63

63:                                               ; preds = %16, %50, %55
  %64 = phi i1 [ true, %55 ], [ true, %16 ], [ %54, %50 ]
  %65 = phi i8 [ %36, %55 ], [ 0, %16 ], [ %51, %50 ]
  %66 = phi ptr [ %60, %55 ], [ %18, %16 ], [ %52, %50 ]
  %67 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  %68 = load i8, ptr %67, align 1, !tbaa !122
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !106
  %73 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !115
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !107
  %79 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !116
  %81 = icmp eq i32 %78, %80
  %82 = select i1 %81, i1 %64, i1 false
  br i1 %82, label %86, label %84

83:                                               ; preds = %63
  br i1 %64, label %86, label %84

84:                                               ; preds = %76, %70, %83
  %85 = tail call fastcc ptr @input_preprocess(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2, ptr noundef %66, i8 noundef zeroext %65, i8 noundef zeroext %17) #31
  br label %86

86:                                               ; preds = %76, %84, %83
  %87 = phi ptr [ %85, %84 ], [ %66, %83 ], [ %66, %76 ]
  tail call void @BKE_sequencer_cache_put(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2, i32 noundef 0, ptr noundef %87) #32
  ret ptr %87
}

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_mask(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !207 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @BKE_mask_copy_nolib(ptr noundef nonnull %1) #32
  %8 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !208
  %10 = sitofp i32 %9 to float
  %11 = fadd float %10, %2
  tail call void @BKE_mask_evaluate(ptr noundef %7, float noundef %11, i8 noundef zeroext 1) #32
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !115
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !116
  %19 = sext i32 %18 to i64
  %20 = mul i64 %16, %19
  %21 = tail call ptr %12(i64 noundef %20, ptr noundef nonnull @__func__.seq_render_mask) #32
  %22 = tail call ptr @BKE_maskrasterize_handle_new() #32
  %23 = load i32, ptr %13, align 8, !tbaa !115
  %24 = load i32, ptr %17, align 4, !tbaa !116
  tail call void @BKE_maskrasterize_handle_init(ptr noundef %22, ptr noundef %7, i32 noundef %23, i32 noundef %24, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #32
  tail call void @BKE_mask_free_nolib(ptr noundef %7) #32
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %7) #32
  %26 = load i32, ptr %13, align 8, !tbaa !115
  %27 = load i32, ptr %17, align 4, !tbaa !116
  tail call void @BKE_maskrasterize_buffer(ptr noundef %22, i32 noundef %26, i32 noundef %27, ptr noundef %21) #32
  tail call void @BKE_maskrasterize_handle_free(ptr noundef %22) #32
  %28 = icmp eq i8 %3, 0
  %29 = load i32, ptr %13, align 8, !tbaa !115
  %30 = load i32, ptr %17, align 4, !tbaa !116
  br i1 %28, label %53, label %31

31:                                               ; preds = %6
  %32 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %30, i8 noundef zeroext 32, i32 noundef 32) #32
  %33 = load i32, ptr %13, align 8, !tbaa !115
  %34 = load i32, ptr %17, align 4, !tbaa !116
  %35 = mul nsw i32 %34, %33
  %36 = add nsw i32 %35, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %77, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i32 [ %51, %41 ], [ %36, %38 ]
  %43 = phi ptr [ %50, %41 ], [ %40, %38 ]
  %44 = phi ptr [ %49, %41 ], [ %21, %38 ]
  %45 = load float, ptr %44, align 4, !tbaa !111
  %46 = getelementptr inbounds float, ptr %43, i64 2
  store float %45, ptr %46, align 4, !tbaa !111
  %47 = getelementptr inbounds float, ptr %43, i64 1
  store float %45, ptr %47, align 4, !tbaa !111
  store float %45, ptr %43, align 4, !tbaa !111
  %48 = getelementptr inbounds float, ptr %43, i64 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !111
  %49 = getelementptr inbounds float, ptr %44, i64 1
  %50 = getelementptr inbounds float, ptr %43, i64 4
  %51 = add nsw i32 %42, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %77, label %41, !llvm.loop !210

53:                                               ; preds = %6
  %54 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %30, i8 noundef zeroext 32, i32 noundef 1) #32
  %55 = load i32, ptr %13, align 8, !tbaa !115
  %56 = load i32, ptr %17, align 4, !tbaa !116
  %57 = mul nsw i32 %56, %55
  %58 = add nsw i32 %57, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ImBuf, ptr %54, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !104
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i32 [ %75, %63 ], [ %58, %60 ]
  %65 = phi ptr [ %74, %63 ], [ %62, %60 ]
  %66 = phi ptr [ %73, %63 ], [ %21, %60 ]
  %67 = load float, ptr %66, align 4, !tbaa !111
  %68 = fmul float %67, 2.550000e+02
  %69 = fptoui float %68 to i8
  %70 = getelementptr inbounds i8, ptr %65, i64 2
  store i8 %69, ptr %70, align 1, !tbaa !105
  %71 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %69, ptr %71, align 1, !tbaa !105
  store i8 %69, ptr %65, align 1, !tbaa !105
  %72 = getelementptr inbounds i8, ptr %65, i64 3
  store i8 -1, ptr %72, align 1, !tbaa !105
  %73 = getelementptr inbounds float, ptr %66, i64 1
  %74 = getelementptr inbounds i8, ptr %65, i64 4
  %75 = add nsw i32 %64, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %63, !llvm.loop !211

77:                                               ; preds = %41, %63, %31, %53
  %78 = phi ptr [ %54, %53 ], [ %32, %31 ], [ %54, %63 ], [ %32, %41 ]
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %79(ptr noundef %21) #32
  br label %80

80:                                               ; preds = %4, %77
  %81 = phi ptr [ %78, %77 ], [ null, %4 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_color_balance_apply(ptr noundef %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ColorBalanceInitData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #33
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  %10 = icmp ne i8 %3, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call zeroext i8 @imb_addrectfloatImBuf(ptr noundef nonnull %1) #32
  br label %14

14:                                               ; preds = %12, %5
  store ptr %0, ptr %6, align 8, !tbaa !212
  %15 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !214
  %16 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 2
  store float %2, ptr %16, align 8, !tbaa !215
  %17 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 4
  store i8 %3, ptr %17, align 8, !tbaa !216
  %18 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %6, i64 0, i32 3
  store ptr %4, ptr %18, align 8, !tbaa !217
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !107
  call void @IMB_processor_apply_threaded(i32 noundef %20, i32 noundef 64, ptr noundef nonnull %6, ptr noundef nonnull @color_balance_init_handle, ptr noundef nonnull @color_balance_do_thread) #32
  %21 = load ptr, ptr %7, align 8, !tbaa !101
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @imb_freerectImBuf(ptr noundef nonnull %1) #32
  br label %28

28:                                               ; preds = %27, %23, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #33
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @imb_addrectfloatImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @color_balance_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #4 !PGOFuncName !218 {
  %5 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = shl nsw i32 %1, 2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !106
  %12 = mul nsw i32 %11, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %13 = load ptr, ptr %3, align 8, !tbaa !212
  store ptr %13, ptr %0, align 8, !tbaa !219
  %14 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !215
  %16 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 1
  store float %15, ptr %16, align 8, !tbaa !221
  %17 = load i32, ptr %10, align 8, !tbaa !106
  %18 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !222
  %19 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 3
  store i32 %2, ptr %19, align 8, !tbaa !223
  %20 = getelementptr inbounds %struct.ColorBalanceInitData, ptr %3, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !216
  %22 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 8
  store i8 %21, ptr %22, align 8, !tbaa !224
  %23 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = sext i32 %12 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !225
  br label %30

30:                                               ; preds = %26, %4
  %31 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = sext i32 %12 to i64
  %36 = getelementptr inbounds float, ptr %32, i64 %35
  %37 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !226
  br label %38

38:                                               ; preds = %34, %30
  %39 = icmp eq ptr %8, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !104
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = sext i32 %12 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !227
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = sext i32 %12 to i64
  %54 = getelementptr inbounds float, ptr %50, i64 %53
  br label %57

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 5
  store ptr null, ptr %56, align 8, !tbaa !227
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi ptr [ %54, %52 ], [ null, %55 ]
  %59 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 7
  store ptr %58, ptr %59, align 8, !tbaa !228
  br label %60

60:                                               ; preds = %57, %48
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal noalias noundef ptr @color_balance_do_thread(ptr nocapture noundef readonly %0) #15 !PGOFuncName !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !219
  %3 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !222
  %5 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !223
  %7 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !227
  %11 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !226
  %13 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !221
  %15 = icmp eq ptr %12, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !228
  tail call fastcc void @color_balance_float_float(ptr noundef %2, ptr noundef nonnull %12, ptr noundef %18, i32 noundef %4, i32 noundef %6, float noundef %14) #31
  br label %25

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ColorBalanceThread, ptr %0, i64 0, i32 8
  %21 = load i8, ptr %20, align 8, !tbaa !224
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @color_balance_byte_float(ptr noundef %2, ptr noundef %8, ptr noundef %10, i32 noundef %4, i32 noundef %6, float noundef %14) #31
  br label %25

24:                                               ; preds = %19
  tail call fastcc void @color_balance_byte_byte(ptr noundef %2, ptr noundef %8, ptr noundef %10, i32 noundef %4, i32 noundef %6, float noundef %14) #31
  br label %25

25:                                               ; preds = %23, %24, %16
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 9
  %5 = load i8, ptr %4, align 1, !tbaa !122
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !142
  %10 = and i32 %9, 210960
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %14 = load float, ptr %13, align 4, !tbaa !230
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %16 = load i32, ptr %15, align 8, !tbaa !231
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %20 = load float, ptr %19, align 4, !tbaa !232
  %21 = fdiv float %20, 1.000000e+02
  %22 = fmul float %14, %21
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi float [ %22, %18 ], [ %14, %12 ]
  %25 = fcmp une float %24, 1.000000e+00
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %28 = load float, ptr %27, align 8, !tbaa !233
  %29 = fcmp une float %28, 1.000000e+00
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %32 = load ptr, ptr %31, align 8, !tbaa !234
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %30, %26, %23, %7, %3
  %36 = phi i8 [ 0, %3 ], [ 1, %7 ], [ 1, %23 ], [ 1, %26 ], [ %34, %30 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_give_ibuf(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 2
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #31, !range !161
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %11) #32
  %16 = add nsw i32 %15, %2
  %17 = tail call fastcc i32 @max_ii(i32 noundef %16, i32 noundef 0) #31
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %17) #32
  %19 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 2
  br label %20

20:                                               ; preds = %8, %10, %14
  %21 = phi ptr [ %19, %14 ], [ %6, %10 ], [ %6, %8 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = tail call fastcc ptr @seq_render_strip_stack(ptr noundef nonnull %0, ptr noundef %22, float noundef %1, i32 noundef %2) #31
  br label %24

24:                                               ; preds = %3, %20
  %25 = phi ptr [ %23, %20 ], [ null, %3 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !235 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !236 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !237 {
  %5 = alloca [33 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %5) #33
  %6 = fptosi float %2 to i32
  %7 = call fastcc i32 @get_shown_sequences(ptr noundef %1, i32 noundef %6, i32 noundef %3, ptr noundef nonnull %5) #31
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %117, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %7, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %13, float noundef %2, i32 noundef 1) #32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %117

16:                                               ; preds = %9
  %17 = icmp eq i32 %7, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  br label %55

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 16, !tbaa !34
  %25 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 46
  %26 = load i32, ptr %25, align 8, !tbaa !231
  switch i32 %26, label %51 [
    i32 0, label %29
    i32 8, label %27
    i32 11, label %27
  ]

27:                                               ; preds = %23, %23
  %28 = tail call fastcc i32 @seq_get_early_out_for_blend_mode(ptr noundef nonnull %24) #31
  switch i32 %28, label %37 [
    i32 -1, label %29
    i32 2, label %29
    i32 1, label %31
  ]

29:                                               ; preds = %23, %27, %27
  %30 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %24, float noundef %2) #31
  br label %53

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !115
  %34 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !116
  %36 = tail call ptr @IMB_allocImBuf(i32 noundef %33, i32 noundef %35, i8 noundef zeroext 32, i32 noundef 1) #32
  br label %53

37:                                               ; preds = %27
  %38 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %24, float noundef %2) #31
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !115
  %43 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !116
  %45 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, i32 1, i32 32
  %49 = tail call ptr @IMB_allocImBuf(i32 noundef %42, i32 noundef %44, i8 noundef zeroext 32, i32 noundef %48) #32
  %50 = tail call fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef nonnull %24, float noundef %2, ptr noundef %49, ptr noundef %38) #31
  tail call void @IMB_freeImBuf(ptr noundef %49) #32
  tail call void @IMB_freeImBuf(ptr noundef %38) #32
  br label %53

51:                                               ; preds = %23
  %52 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %24, float noundef %2) #31
  br label %53

53:                                               ; preds = %29, %37, %40, %31, %51
  %54 = phi ptr [ %52, %51 ], [ %30, %29 ], [ %36, %31 ], [ %50, %40 ], [ %38, %37 ]
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef nonnull %24, float noundef %2, i32 noundef 1, ptr noundef %54) #32
  br label %117

55:                                               ; preds = %20, %89
  %56 = phi i32 [ %10, %20 ], [ %90, %89 ]
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %59, float noundef %2, i32 noundef 1) #32
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.Sequence, ptr %59, i64 0, i32 46
  %64 = load i32, ptr %63, align 8, !tbaa !231
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %59, float noundef %2) #31
  br label %92

68:                                               ; preds = %62
  %69 = tail call fastcc i32 @seq_get_early_out_for_blend_mode(ptr noundef nonnull %59) #31
  switch i32 %69, label %89 [
    i32 -1, label %70
    i32 2, label %70
    i32 1, label %72
    i32 0, label %78
  ]

70:                                               ; preds = %68, %68
  %71 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %59, float noundef %2) #31
  br label %86

72:                                               ; preds = %68
  %73 = icmp eq i32 %56, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %72
  %75 = load i32, ptr %21, align 8, !tbaa !115
  %76 = load i32, ptr %22, align 4, !tbaa !116
  %77 = tail call ptr @IMB_allocImBuf(i32 noundef %75, i32 noundef %76, i8 noundef zeroext 32, i32 noundef 1) #32
  br label %86

78:                                               ; preds = %68
  %79 = icmp eq i32 %56, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %78
  %81 = load i32, ptr %21, align 8, !tbaa !115
  %82 = load i32, ptr %22, align 4, !tbaa !116
  %83 = tail call ptr @IMB_allocImBuf(i32 noundef %81, i32 noundef %82, i8 noundef zeroext 32, i32 noundef 1) #32
  %84 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %59, float noundef %2) #31
  %85 = tail call fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef nonnull %59, float noundef %2, ptr noundef %83, ptr noundef %84) #31
  tail call void @IMB_freeImBuf(ptr noundef %83) #32
  tail call void @IMB_freeImBuf(ptr noundef %84) #32
  br label %86

86:                                               ; preds = %80, %74, %70
  %87 = phi ptr [ %85, %80 ], [ %77, %74 ], [ %71, %70 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %72, %78, %68, %86
  %90 = add nsw i32 %56, -1
  %91 = icmp sgt i32 %56, 0
  br i1 %91, label %55, label %92, !llvm.loop !238

92:                                               ; preds = %89, %55, %86, %18, %66
  %93 = phi i32 [ %56, %66 ], [ %10, %18 ], [ -1, %89 ], [ %56, %55 ], [ %56, %86 ]
  %94 = phi ptr [ %67, %66 ], [ null, %18 ], [ null, %89 ], [ %60, %55 ], [ %87, %86 ]
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %97, float noundef %2, i32 noundef 1, ptr noundef %94) #32
  %98 = add nsw i32 %93, 1
  %99 = icmp slt i32 %98, %7
  br i1 %99, label %100, label %117

100:                                              ; preds = %92
  %101 = sext i32 %98 to i64
  br label %102

102:                                              ; preds = %100, %112
  %103 = phi i64 [ %101, %100 ], [ %114, %112 ]
  %104 = phi ptr [ %94, %100 ], [ %113, %112 ]
  %105 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %103
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = tail call fastcc i32 @seq_get_early_out_for_blend_mode(ptr noundef %106) #31
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %106, float noundef %2) #31
  %111 = tail call fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef %106, float noundef %2, ptr noundef %104, ptr noundef %110) #31
  tail call void @IMB_freeImBuf(ptr noundef %104) #32
  tail call void @IMB_freeImBuf(ptr noundef %110) #32
  br label %112

112:                                              ; preds = %109, %102
  %113 = phi ptr [ %111, %109 ], [ %104, %102 ]
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %106, float noundef %2, i32 noundef 1, ptr noundef %113) #32
  %114 = add nsw i64 %103, 1
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %7, %115
  br i1 %116, label %117, label %102, !llvm.loop !239

117:                                              ; preds = %112, %92, %9, %4, %53
  %118 = phi ptr [ %54, %53 ], [ null, %4 ], [ %14, %9 ], [ %94, %92 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %5) #33
  ret ptr %118
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef %0, float noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr noundef %3, float noundef %1, i32 noundef %2) #31
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_sequencer_give_ibuf_direct(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %2, float noundef %1) #31
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_give_ibuf_prefetch_request(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load volatile i8, ptr @seq_thread_shutdown, align 1, !tbaa !105
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 48, ptr noundef nonnull @.str.3) #32
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 2
  %11 = load <2 x i32>, ptr %9, align 8, !tbaa !124
  store <2 x i32> %11, ptr %10, align 8, !tbaa !124
  %12 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 4
  store float %1, ptr %12, align 8, !tbaa !240
  %13 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 5
  store i32 %2, ptr %13, align 4, !tbaa !242
  %14 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 6
  store i32 %15, ptr %16, align 8, !tbaa !243
  %17 = load i32, ptr @monoton_cfra, align 4, !tbaa !124
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @monoton_cfra, align 4, !tbaa !124
  %19 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %8, i64 0, i32 7
  store i32 %17, ptr %19, align 4, !tbaa !244
  tail call void @BLI_addtail(ptr noundef nonnull @prefetch_wait, ptr noundef %8) #32
  br label %20

20:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_give_ibuf_threaded(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load volatile i8, ptr @seq_thread_shutdown, align 1, !tbaa !105
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load ptr, ptr @prefetch_wait, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %45, %6
  %13 = phi i1 [ false, %45 ], [ true, %6 ]
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @BKE_sequencer_give_ibuf(ptr noundef %0, float noundef %1, i32 noundef %2) #31
  br label %51

16:                                               ; preds = %12, %17
  br i1 %8, label %17, label %18

17:                                               ; preds = %42, %16
  br i1 %13, label %48, label %16

18:                                               ; preds = %16, %42
  %19 = phi ptr [ %43, %42 ], [ %7, %16 ]
  %20 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %19, i64 0, i32 4
  %21 = load float, ptr %20, align 8, !tbaa !240
  %22 = fcmp oeq float %21, %1
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %19, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !242
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, ptr %9, align 8, !tbaa !115
  %29 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %19, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !245
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, ptr %10, align 4, !tbaa !116
  %34 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %19, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !246
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, ptr %11, align 8, !tbaa !117
  %39 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %19, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !243
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %18, %23, %27, %32, %37
  %43 = load ptr, ptr %19, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %17, label %18, !llvm.loop !247

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.PrefetchQueueElem, ptr %19, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !244
  store volatile i32 %47, ptr @seq_last_given_monoton_cfra, align 4, !tbaa !124
  br label %12

48:                                               ; preds = %17
  %49 = load ptr, ptr @stderr, align 8, !tbaa !34
  %50 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 45, i64 1, ptr %49) #36
  br label %51

51:                                               ; preds = %48, %14
  %52 = phi ptr [ %15, %14 ], [ null, %48 ]
  ret ptr %52
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_sequence_check_depend(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !132
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !130
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %45, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !130
  %23 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !132
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
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %39 = load i32, ptr %38, align 8, !tbaa !231
  switch i32 %39, label %44 [
    i32 0, label %45
    i32 8, label %40
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %42 = load float, ptr %41, align 4, !tbaa !232
  %43 = fcmp oeq float %42, 1.000000e+02
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %40, %32
  br label %45

45:                                               ; preds = %40, %37, %26, %14, %20, %2, %6, %10, %44
  %46 = phi i8 [ 1, %44 ], [ 1, %10 ], [ 1, %6 ], [ 1, %2 ], [ 0, %20 ], [ 0, %14 ], [ 0, %26 ], [ 0, %37 ], [ 0, %40 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_invalidate_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @sequence_invalidate_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequence_invalidate_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !248 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @IMB_free_anim(ptr noundef nonnull %10) #32
  store ptr null, ptr %9, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %12, %8
  tail call void @BKE_sequencer_cache_cleanup_sequence(ptr noundef nonnull %1) #32
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %16 = load ptr, ptr %15, align 8, !tbaa !249
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i32 %20, 29
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #32
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef nonnull %1) #32
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  tail call fastcc void @sequence_do_invalidate_dependent(ptr noundef nonnull %1, ptr noundef nonnull %27) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_invalidate_dependent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @sequence_invalidate_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @sequence_invalidate_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_free_imbuf(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @BKE_sequencer_cache_cleanup() #32
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  br label %9

9:                                                ; preds = %6, %40
  %10 = phi ptr [ %4, %6 ], [ %41, %40 ]
  br i1 %7, label %20, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %8, align 8, !tbaa !250
  %13 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !130
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 16
  %18 = load i32, ptr %17, align 4, !tbaa !132
  %19 = icmp sgt i32 %12, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16, %11, %9
  %21 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  tail call fastcc void @free_anim_seq(ptr noundef nonnull %10) #31
  %29 = load i32, ptr %25, align 4, !tbaa !50
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %26, %24 ]
  %32 = icmp eq i32 %31, 29
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext 1) #32
  br label %34

34:                                               ; preds = %30, %33, %20
  %35 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 36
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %0, ptr noundef nonnull %39, i8 noundef zeroext %2) #31
  br label %40

40:                                               ; preds = %34, %38, %16
  %41 = load ptr, ptr %10, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %9, !llvm.loop !251

43:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_anim_seq(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !252 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_free_anim(ptr noundef nonnull %3) #32
  store ptr null, ptr %2, align 8, !tbaa !49
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_effect_speed_rebuild_map(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %1, i32 noundef %2, i32 noundef %3) #31, !range !161
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !253

16:                                               ; preds = %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !254 {
  %6 = icmp eq ptr %1, %2
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %17, %11 ], [ %9, %5 ]
  %13 = phi i8 [ %16, %11 ], [ %7, %5 ]
  %14 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2, i32 noundef %3, i32 noundef %4) #31, !range !161
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i8 %13, i8 1
  %17 = load ptr, ptr %12, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !255

19:                                               ; preds = %11, %5
  %20 = phi i8 [ %7, %5 ], [ %16, %11 ]
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %2, i32 noundef %3, i32 noundef %4) #31, !range !161
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i8 %20, i8 1
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i8 [ %20, %19 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %21, align 8, !tbaa !140
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %31, ptr noundef %2, i32 noundef %3, i32 noundef %4) #31, !range !161
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i8 %29, i8 1
  br label %40

40:                                               ; preds = %36, %33, %28
  %41 = phi i8 [ %29, %33 ], [ %29, %28 ], [ %39, %36 ]
  %42 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %43 = load ptr, ptr %42, align 8, !tbaa !141
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %21, align 8, !tbaa !140
  %47 = icmp eq ptr %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %30, align 8, !tbaa !139
  %50 = icmp eq ptr %43, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @update_changed_seq_recurs(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %2, i32 noundef %3, i32 noundef %4) #31, !range !161
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %48, %45, %40
  %55 = icmp eq i8 %41, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %54
  %57 = phi i8 [ %41, %54 ], [ 1, %51 ]
  %58 = icmp eq i32 %4, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  tail call fastcc void @free_anim_seq(ptr noundef nonnull %1) #31
  %64 = load i32, ptr %60, align 4, !tbaa !50
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ %61, %59 ]
  %67 = icmp eq i32 %66, 29
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #32
  br label %69

69:                                               ; preds = %65, %68, %56
  %70 = icmp eq i32 %3, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #31
  br label %72

72:                                               ; preds = %54, %71, %69
  %73 = phi i8 [ 0, %54 ], [ %57, %71 ], [ %57, %69 ]
  ret i8 %73
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_sequence_tx_get_final_left(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #17 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %10

8:                                                ; preds = %10, %14
  %9 = phi i32 [ %22, %14 ], [ %13, %10 ]
  ret i32 %9

10:                                               ; preds = %4
  %11 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %0, i8 noundef zeroext 0) #31
  %12 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %6, i8 noundef zeroext 1) #31
  %13 = tail call fastcc i32 @max_ii(i32 noundef %11, i32 noundef %12) #31
  br label %8

14:                                               ; preds = %4, %2
  %15 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !129
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !126
  %19 = sub i32 %16, %18
  %20 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !125
  %22 = add nsw i32 %19, %21
  br label %8
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_sequence_tx_get_final_right(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #17 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %10

8:                                                ; preds = %10, %14
  %9 = phi i32 [ %25, %14 ], [ %13, %10 ]
  ret i32 %9

10:                                               ; preds = %4
  %11 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %0, i8 noundef zeroext 0) #31
  %12 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %6, i8 noundef zeroext 1) #31
  %13 = tail call fastcc i32 @min_ii(i32 noundef %11, i32 noundef %12) #31
  br label %8

14:                                               ; preds = %4, %2
  %15 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !129
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !131
  %19 = add nsw i32 %18, %16
  %20 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !128
  %22 = add nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !127
  %25 = sub i32 %22, %24
  br label %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !257 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_sequence_single_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !131
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = and i32 %7, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %7) #32
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %5, %12, %9, %1
  %17 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 0, %9 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: optsize
declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_sequence_base_isolated_sel_check(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #18 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi ptr [ %3, %5 ], [ %19, %17 ]
  %9 = phi i8 [ 0, %5 ], [ %18, %17 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = icmp eq i8 %9, 0
  %16 = select i1 %6, i1 %15, i1 false
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %7
  %18 = phi i8 [ %9, %7 ], [ 1, %14 ]
  %19 = load ptr, ptr %8, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %86, label %7, !llvm.loop !258

21:                                               ; preds = %14, %83
  %22 = phi ptr [ %84, %83 ], [ %3, %14 ]
  %23 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !142
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 33
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  %34 = icmp eq ptr %33, null
  br i1 %31, label %59, label %35

35:                                               ; preds = %27
  br i1 %34, label %41, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Sequence, ptr %33, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !142
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %36, %35
  %42 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 34
  %43 = load ptr, ptr %42, align 8, !tbaa !139
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Sequence, ptr %43, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !142
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %45, %41
  %51 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 35
  %52 = load ptr, ptr %51, align 8, !tbaa !141
  %53 = icmp eq ptr %52, null
  br i1 %53, label %83, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !142
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %86, label %83

59:                                               ; preds = %27
  br i1 %34, label %65, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.Sequence, ptr %33, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !142
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60, %59
  %66 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 34
  %67 = load ptr, ptr %66, align 8, !tbaa !139
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Sequence, ptr %67, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !142
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 35
  %76 = load ptr, ptr %75, align 8, !tbaa !141
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Sequence, ptr %76, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !142
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %54, %50, %78, %74, %21
  %84 = load ptr, ptr %22, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %21, !llvm.loop !259

86:                                               ; preds = %17, %54, %45, %36, %78, %69, %60, %83, %2
  %87 = phi i8 [ 0, %2 ], [ 0, %54 ], [ 0, %45 ], [ 0, %36 ], [ 0, %78 ], [ 0, %69 ], [ 0, %60 ], [ 1, %83 ], [ 0, %17 ]
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_tx_handle_xlimits(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %0, i8 noundef zeroext 0) #31
  %7 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %0, i8 noundef zeroext 0) #31
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %7, -1
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef %0, i32 noundef %10) #31
  br label %11

11:                                               ; preds = %9, %5
  %12 = tail call zeroext i8 @BKE_sequence_single_check(ptr noundef %0) #31, !range !161
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %0, i8 noundef zeroext 0) #31
  %16 = tail call fastcc i32 @seq_tx_get_end(ptr noundef %0) #31
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %16, -1
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef %0, i32 noundef %19) #31
  br label %20

20:                                               ; preds = %11, %18, %14, %3
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %0, i8 noundef zeroext 0) #31
  %24 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %0, i8 noundef zeroext 0) #31
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = add nsw i32 %24, 1
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %0, i32 noundef %27) #31
  br label %28

28:                                               ; preds = %26, %22
  %29 = tail call zeroext i8 @BKE_sequence_single_check(ptr noundef %0) #31, !range !161
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %0, i8 noundef zeroext 0) #31
  %33 = tail call fastcc i32 @seq_tx_get_start(ptr noundef %0) #31
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %33, 1
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %0, i32 noundef %36) #31
  br label %37

37:                                               ; preds = %28, %35, %31, %20
  %38 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 11
  store i32 0, ptr %42, align 8, !tbaa !126
  %43 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  store i32 0, ptr %43, align 4, !tbaa !128
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @seq_tx_get_end(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !260 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !129
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = add nsw i32 %5, %3
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @seq_tx_get_start(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !129
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_sequence_tx_test(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %3) #32
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %5 ]
  ret i8 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_sequence_test_overlap(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #18 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @seq_overlap(ptr noundef %1, ptr noundef nonnull %5) #31, !range !161
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %3, label %10, !llvm.loop !262

10:                                               ; preds = %3, %7
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @seq_overlap(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #11 !PGOFuncName !263 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !162
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 4, !tbaa !132
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !130
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %20 = load i32, ptr %19, align 4, !tbaa !132
  %21 = icmp slt i32 %18, %20
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %10, %16, %4, %2
  %24 = phi i8 [ 0, %4 ], [ 0, %2 ], [ 0, %10 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_translate(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @BKE_sequencer_offset_animdata(ptr noundef %0, ptr noundef %1, i32 noundef %2) #31
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !129
  %6 = add nsw i32 %5, %2
  store i32 %6, ptr %4, align 4, !tbaa !129
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %10 ]
  tail call void @BKE_sequence_translate(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %2) #31
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !264

18:                                               ; preds = %14, %10, %3
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_offset_animdata(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [163 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 163, ptr nonnull %4) #33
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !265
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %8, %7
  br i1 %9, label %72, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !266
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %15 = call fastcc i64 @sequencer_rna_path_prefix(ptr noundef nonnull %4, ptr noundef nonnull %14) #31
  %16 = load ptr, ptr %5, align 8, !tbaa !265
  %17 = load ptr, ptr %16, align 8, !tbaa !266
  %18 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %13
  %22 = sitofp i32 %2 to float
  br label %23

23:                                               ; preds = %21, %69
  %24 = phi ptr [ %19, %21 ], [ %70, %69 ]
  %25 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !268
  %27 = call i32 @strncmp(ptr noundef %26, ptr noundef nonnull %4, i64 noundef %15) #34
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !270
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !271
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = zext i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %50, %39 ]
  %41 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !111
  %43 = fadd float %42, %22
  store float %43, ptr %41, align 4, !tbaa !111
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !111
  %46 = fadd float %45, %22
  store float %46, ptr %44, align 4, !tbaa !111
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !111
  %49 = fadd float %48, %22
  store float %49, ptr %47, align 4, !tbaa !111
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %38
  br i1 %51, label %52, label %39, !llvm.loop !272

52:                                               ; preds = %39, %33, %29
  %53 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !273
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !271
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %67, %62 ]
  %64 = getelementptr inbounds %struct.FPoint, ptr %54, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !111
  %66 = fadd float %65, %22
  store float %66, ptr %64, align 4, !tbaa !111
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, %61
  br i1 %68, label %69, label %62, !llvm.loop !274

69:                                               ; preds = %62, %56, %52, %23
  %70 = load ptr, ptr %24, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %23, !llvm.loop !275

72:                                               ; preds = %69, %13, %3, %10
  call void @llvm.lifetime.end.p0(i64 163, ptr nonnull %4) #33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_sound_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  tail call void @BKE_sequence_sound_init(ptr noundef %0, ptr noundef nonnull %11) #31
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %10, !llvm.loop !276

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @sound_add_scene_sound_defaults(ptr noundef %0, ptr noundef nonnull %1) #32
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  store ptr %19, ptr %20, align 8, !tbaa !78
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @sound_scene_add_scene_sound_defaults(ptr noundef %0, ptr noundef nonnull %1) #32
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 38
  store ptr %26, ptr %27, align 8, !tbaa !78
  br label %28

28:                                               ; preds = %10, %6, %21, %25
  ret void
}

; Function Attrs: optsize
declare ptr @sound_add_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sound_scene_add_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_foreground_frame_get(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !79
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %5, %34
  %10 = phi ptr [ %37, %34 ], [ %7, %5 ]
  %11 = phi i32 [ %36, %34 ], [ -1, %5 ]
  %12 = phi ptr [ %35, %34 ], [ null, %5 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !142
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !130
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 16
  %23 = load i32, ptr %22, align 4, !tbaa !132
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !50
  switch i32 %27, label %34 [
    i32 0, label %28
    i32 1, label %28
    i32 2, label %28
    i32 3, label %28
    i32 28, label %28
  ]

28:                                               ; preds = %25, %25, %25, %25, %25
  %29 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !162
  %31 = icmp sgt i32 %30, %11
  %32 = select i1 %31, ptr %10, ptr %12
  %33 = tail call i32 @llvm.smax.i32(i32 %30, i32 %11)
  br label %34

34:                                               ; preds = %28, %25, %9, %17, %21
  %35 = phi ptr [ %12, %9 ], [ %12, %17 ], [ %12, %21 ], [ %12, %25 ], [ %32, %28 ]
  %36 = phi i32 [ %11, %9 ], [ %11, %17 ], [ %11, %21 ], [ %11, %25 ], [ %33, %28 ]
  %37 = load ptr, ptr %10, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %9, !llvm.loop !277

39:                                               ; preds = %34, %5, %2
  %40 = phi ptr [ null, %2 ], [ null, %5 ], [ %35, %34 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_sequence_base_shuffle(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !162
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !162
  tail call void @BKE_sequence_calc(ptr noundef %2, ptr noundef %1) #31
  %7 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %0, ptr noundef nonnull %1) #31, !range !161
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3, %12
  %10 = load i32, ptr %4, align 8, !tbaa !162
  %11 = icmp sgt i32 %10, 31
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = add nsw i32 %10, 1
  store i32 %13, ptr %4, align 8, !tbaa !162
  tail call void @BKE_sequence_calc(ptr noundef %2, ptr noundef nonnull %1) #31
  %14 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %0, ptr noundef nonnull %1) #31, !range !161
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !278

16:                                               ; preds = %12, %3
  %17 = load i32, ptr %4, align 8, !tbaa !162
  %18 = icmp sgt i32 %17, 31
  br i1 %18, label %19, label %43

19:                                               ; preds = %9, %16
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !132
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %19, %34
  %25 = phi ptr [ %36, %34 ], [ %22, %19 ]
  %26 = phi i32 [ %35, %34 ], [ %21, %19 ]
  %27 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !162
  %29 = icmp eq i32 %28, %5
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 16
  %32 = load i32, ptr %31, align 4, !tbaa !132
  %33 = tail call fastcc i32 @max_ii(i32 noundef %26, i32 noundef %32) #31
  br label %34

34:                                               ; preds = %24, %30
  %35 = phi i32 [ %33, %30 ], [ %26, %24 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %24, !llvm.loop !279

38:                                               ; preds = %34, %19
  %39 = phi i32 [ %21, %19 ], [ %35, %34 ]
  store i32 %5, ptr %4, align 8, !tbaa !162
  %40 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !130
  %42 = sub i32 %39, %41
  tail call void @BKE_sequence_translate(ptr noundef %2, ptr noundef %1, i32 noundef %42) #31
  tail call void @BKE_sequence_calc(ptr noundef %2, ptr noundef %1) #31
  br label %43

43:                                               ; preds = %16, %38
  %44 = phi i8 [ 0, %38 ], [ 1, %16 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_sequence_base_shuffle_time(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @shuffle_seq_time_offset(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 76) #31
  %4 = tail call fastcc i32 @shuffle_seq_time_offset(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 82) #31
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
  %15 = load ptr, ptr %14, align 8, !tbaa !256
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  tail call void @BKE_sequence_translate(ptr noundef %1, ptr noundef nonnull %13, i32 noundef %7) #31
  %18 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !142
  %20 = and i32 %19, -9
  store i32 %20, ptr %18, align 8, !tbaa !142
  br label %21

21:                                               ; preds = %12, %17
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12, !llvm.loop !280

24:                                               ; preds = %21, %9, %2
  %25 = zext i1 %8 to i8
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @shuffle_seq_time_offset(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !281 {
  %4 = tail call fastcc i32 @shuffle_seq_time_offset_test(ptr noundef %1, i8 noundef zeroext %2) #31
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  br i1 %5, label %15, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %6, null
  br label %9

9:                                                ; preds = %7, %30
  %10 = phi i32 [ %4, %7 ], [ %32, %30 ]
  %11 = phi i32 [ 0, %7 ], [ %31, %30 ]
  br i1 %8, label %30, label %12

12:                                               ; preds = %9
  %13 = insertelement <2 x i32> poison, i32 %10, i64 0
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %18

15:                                               ; preds = %30, %3
  %16 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %17 = icmp eq ptr %6, null
  br i1 %17, label %43, label %34

18:                                               ; preds = %12, %27
  %19 = phi ptr [ %28, %27 ], [ %6, %12 ]
  %20 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !256
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 15
  %25 = load <2 x i32>, ptr %24, align 8, !tbaa !124
  %26 = add nsw <2 x i32> %25, %14
  store <2 x i32> %26, ptr %24, align 8, !tbaa !124
  br label %27

27:                                               ; preds = %18, %23
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !282

30:                                               ; preds = %27, %9
  %31 = add nsw i32 %10, %11
  %32 = tail call fastcc i32 @shuffle_seq_time_offset_test(ptr noundef nonnull %1, i8 noundef zeroext %2) #31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %15, label %9, !llvm.loop !283

34:                                               ; preds = %15, %40
  %35 = phi ptr [ %41, %40 ], [ %6, %15 ]
  %36 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !256
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef nonnull %35) #31
  br label %40

40:                                               ; preds = %34, %39
  %41 = load ptr, ptr %35, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %34, !llvm.loop !284

43:                                               ; preds = %40, %15
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BKE_sequencer_refresh_sound_length(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_update_sound_bounds_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !50
  switch i32 %12, label %15 [
    i32 1, label %13
    i32 4, label %14
    i32 2, label %14
  ]

13:                                               ; preds = %9
  tail call fastcc void @seq_update_sound_bounds_recursive(ptr noundef %0, ptr noundef nonnull %10) #31
  br label %15

14:                                               ; preds = %9, %9
  tail call void @BKE_sequencer_update_sound_bounds(ptr noundef %0, ptr noundef nonnull %10) #31
  br label %15

15:                                               ; preds = %9, %13, %14
  %16 = load ptr, ptr %10, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !285

18:                                               ; preds = %15, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @sound_move_scene_sound(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sound_move_scene_sound_defaults(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_update_muting(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  br i1 %6, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MetaStack, ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !287
  tail call fastcc void @seq_update_muting_recursive(ptr noundef nonnull %7, ptr noundef %10, i32 noundef 1) #31
  br label %12

11:                                               ; preds = %3
  tail call fastcc void @seq_update_muting_recursive(ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #31
  br label %12

12:                                               ; preds = %8, %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_update_muting_recursive(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !289 {
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
  %12 = load i32, ptr %11, align 8, !tbaa !142
  %13 = and i32 %12, 32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i1 [ true, %8 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !50
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
  tail call fastcc void @seq_update_muting_recursive(ptr noundef nonnull %23, ptr noundef %1, i32 noundef %22) #31
  br label %30

24:                                               ; preds = %15, %15
  %25 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = zext i1 %16 to i8
  tail call void @sound_mute_scene_sound(ptr noundef nonnull %26, i8 noundef zeroext %29) #32
  br label %30

30:                                               ; preds = %15, %19, %24, %28
  %31 = load ptr, ptr %9, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !290

33:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_update_sound(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call fastcc void @seq_update_sound_recursive(ptr noundef nonnull %7, ptr noundef %1) #31
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_update_sound_recursive(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !291 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %21, %20 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  switch i32 %8, label %20 [
    i32 1, label %9
    i32 4, label %11
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  tail call fastcc void @seq_update_sound_recursive(ptr noundef nonnull %10, ptr noundef %1) #31
  br label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 38
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 37
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @sound_update_scene_sound(ptr noundef nonnull %13, ptr noundef %1) #32
  br label %20

20:                                               ; preds = %5, %9, %11, %15, %19
  %21 = load ptr, ptr %6, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !292

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_seqbase(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %2 ]
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %9, ptr noundef %1) #31
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %8
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !293

18:                                               ; preds = %5, %12, %15, %2
  %19 = phi ptr [ null, %2 ], [ null, %15 ], [ %13, %12 ], [ %0, %5 ]
  ret ptr %19
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_metastrip(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #17 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %3 ]
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 36
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @BKE_sequence_metastrip(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef %2) #31
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %9
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !294

19:                                               ; preds = %16, %6, %13, %3
  %20 = phi ptr [ null, %3 ], [ %14, %13 ], [ %1, %6 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_sequence_swap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.Sequence, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #33
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store ptr @.str.5, ptr %2, align 8, !tbaa !34
  br label %66

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = icmp eq i32 %14, 4
  %20 = icmp eq i32 %16, 4
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr @.str.6, ptr %2, align 8, !tbaa !34
  br label %66

23:                                               ; preds = %18
  %24 = xor i32 %16, %14
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store ptr @.str.6, ptr %2, align 8, !tbaa !34
  br label %66

28:                                               ; preds = %23
  %29 = and i32 %14, 8
  %30 = and i32 %29, %16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %14) #32
  %34 = load i32, ptr %15, align 4, !tbaa !50
  %35 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %34) #32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store ptr @.str.7, ptr %2, align 8, !tbaa !34
  br label %66

38:                                               ; preds = %28, %32, %12
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %5, ptr noundef nonnull align 8 dereferenceable(352) %0, i64 352, i1 false), !tbaa.struct !295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i64 352, i1 false), !tbaa.struct !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(352) %5, i64 352, i1 false), !tbaa.struct !295
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %5)
  %39 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 4, i64 2
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %39, i64 noundef 64) #32
  %41 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %42 = call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %41, i64 noundef 62) #32
  %43 = call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull %4, i64 noundef 62) #32
  %44 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 46
  %45 = load i32, ptr %44, align 8, !tbaa !231
  %46 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %47 = load i32, ptr %46, align 8, !tbaa !231
  store i32 %47, ptr %44, align 8, !tbaa !231
  store i32 %45, ptr %46, align 8, !tbaa !231
  %48 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 47
  %49 = load float, ptr %48, align 4, !tbaa !232
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %51 = load float, ptr %50, align 4, !tbaa !232
  store float %51, ptr %48, align 4, !tbaa !232
  store float %49, ptr %50, align 4, !tbaa !232
  %52 = load <2 x ptr>, ptr %1, align 8, !tbaa !34
  %53 = load <2 x ptr>, ptr %0, align 8, !tbaa !34
  store <2 x ptr> %52, ptr %0, align 8, !tbaa !34
  store <2 x ptr> %53, ptr %1, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %55 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %56 = load <4 x i32>, ptr %55, align 4, !tbaa !124
  %57 = load <4 x i32>, ptr %54, align 4, !tbaa !124
  store <4 x i32> %56, ptr %54, align 4, !tbaa !124
  store <4 x i32> %57, ptr %55, align 4, !tbaa !124
  %58 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 12
  %59 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 12
  %60 = load <2 x i32>, ptr %59, align 4, !tbaa !124
  %61 = load <2 x i32>, ptr %58, align 4, !tbaa !124
  store <2 x i32> %60, ptr %58, align 4, !tbaa !124
  store <2 x i32> %61, ptr %59, align 4, !tbaa !124
  %62 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %64 = load <2 x i32>, ptr %63, align 8, !tbaa !124
  %65 = load <2 x i32>, ptr %62, align 8, !tbaa !124
  store <2 x i32> %64, ptr %62, align 8, !tbaa !124
  store <2 x i32> %65, ptr %63, align 8, !tbaa !124
  br label %66

66:                                               ; preds = %38, %37, %27, %22, %11
  %67 = phi i32 [ 0, %11 ], [ 0, %22 ], [ 0, %27 ], [ 0, %37 ], [ 1, %38 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #33
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @sequencer_rna_path_prefix(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !296 {
  %3 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #33
  %4 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 128) #32
  %5 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef 163, ptr noundef nonnull @.str.43, ptr noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #33
  ret i64 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_dupe_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [163 x i8], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 163, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !265
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !266
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = call fastcc i64 @sequencer_rna_path_prefix(ptr noundef nonnull %4, ptr noundef %1) #31
  %14 = load ptr, ptr %6, align 8, !tbaa !265
  %15 = load ptr, ptr %14, align 8, !tbaa !266
  %16 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !297
  %19 = load ptr, ptr %16, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %12, %33
  %22 = phi ptr [ %34, %33 ], [ %19, %12 ]
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !299
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !268
  %29 = call i32 @strncmp(ptr noundef %28, ptr noundef nonnull %4, i64 noundef %13) #34
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call ptr @copy_fcurve(ptr noundef nonnull %22) #32
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %32) #32
  br label %33

33:                                               ; preds = %26, %31
  %34 = load ptr, ptr %22, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !300

36:                                               ; preds = %33, %21
  %37 = load ptr, ptr %6, align 8, !tbaa !265
  br label %38

38:                                               ; preds = %36, %12
  %39 = phi ptr [ %37, %36 ], [ %14, %12 ]
  call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %0, ptr noundef %39, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #32
  %40 = load ptr, ptr %6, align 8, !tbaa !265
  %41 = load ptr, ptr %40, align 8, !tbaa !266
  %42 = getelementptr inbounds %struct.bAction, ptr %41, i64 0, i32 1
  call void @BLI_movelisttolist(ptr noundef nonnull %42, ptr noundef nonnull %5) #32
  br label %43

43:                                               ; preds = %3, %9, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 163, ptr nonnull %4) #33
  ret void
}

; Function Attrs: optsize
declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_get_by_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #19 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %4, %6 ], [ %22, %21 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %10) #34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  br i1 %7, label %21, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BKE_sequence_get_by_name(ptr noundef nonnull %15, ptr noundef %1, i8 noundef zeroext 1) #31
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %14, %13
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !301

24:                                               ; preds = %8, %18, %21, %3
  %25 = phi ptr [ null, %3 ], [ null, %21 ], [ %19, %18 ], [ %9, %8 ]
  ret ptr %25
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequencer_from_elem(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #17 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %24, %2
  %5 = phi ptr [ %0, %2 ], [ %6, %24 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Strip, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i64
  %18 = sub i64 %3, %17
  %19 = sdiv exact i64 %18, 264
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !131
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %28, label %24

24:                                               ; preds = %16, %12, %8
  %25 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %26 = tail call ptr @BKE_sequencer_from_elem(ptr noundef nonnull %25, ptr noundef %1) #31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %4, label %28, !llvm.loop !302

28:                                               ; preds = %24, %16, %4
  %29 = phi ptr [ null, %4 ], [ %26, %24 ], [ %6, %16 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_active_get(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Editing, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequencer_active_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 3
  store ptr %1, ptr %6, align 8, !tbaa !76
  br label %7

7:                                                ; preds = %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_sequencer_active_get_pair(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #31
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #31
  store ptr %5, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !34
  %8 = load ptr, ptr %4, align 8, !tbaa !79
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7, %24
  %12 = phi ptr [ %25, %24 ], [ null, %7 ]
  %13 = phi ptr [ %26, %24 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !142
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %1, align 8, !tbaa !34
  %20 = icmp eq ptr %13, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = icmp eq ptr %12, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  store ptr %13, ptr %2, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %11, %18, %23
  %25 = phi ptr [ %12, %11 ], [ %12, %18 ], [ %13, %23 ]
  %26 = load ptr, ptr %13, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !303

28:                                               ; preds = %24
  %29 = icmp ne ptr %25, null
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %21, %7, %28, %3
  %32 = phi i32 [ 0, %3 ], [ %30, %28 ], [ 0, %7 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequencer_mask_get(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #31
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_sequence_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 352, ptr noundef nonnull @.str) #32
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %5) #32
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 4
  store i16 20819, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 4, i64 2
  store i8 0, ptr %7, align 2, !tbaa !105
  %8 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  store i32 1, ptr %8, align 8, !tbaa !142
  %9 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 8
  store i32 %1, ptr %9, align 4, !tbaa !129
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  store i32 %2, ptr %10, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 17
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 47
  store float 1.000000e+02, ptr %12, align 4, !tbaa !232
  %13 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 39
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %13, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 38
  store ptr null, ptr %14, align 8, !tbaa !78
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_alpha_mode_from_extension(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Strip, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef nonnull %7) #32
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 49
  store i8 %10, ptr %11, align 4, !tbaa !304
  br label %12

12:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_alpha_mode_from_extension_ex(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_init_colorspace(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #33
  %11 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 7
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %11, ptr noundef nonnull %8) #32
  %12 = load ptr, ptr @G, align 8, !tbaa !149
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 2
  %14 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %13) #32
  %15 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.Strip, ptr %19, i64 0, i32 12
  %21 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 8194, ptr noundef nonnull %20) #32
  %22 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 49
  store i8 0, ptr %22, align 4, !tbaa !304
  %23 = icmp eq ptr %21, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !305
  %27 = and i32 %26, 4096
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i8 1, ptr %22, align 4, !tbaa !304
  br label %30

30:                                               ; preds = %29, %24
  call void @IMB_freeImBuf(ptr noundef nonnull %21) #32
  br label %31

31:                                               ; preds = %18, %30, %10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #33
  br label %32

32:                                               ; preds = %31, %6, %1
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_sequencer_add_image_strip(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #32
  %5 = load i32, ptr %2, align 8, !tbaa !306
  %6 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !308
  %8 = tail call ptr @BKE_sequence_alloc(ptr noundef %1, i32 noundef %5, i32 noundef %7) #31
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  store i32 0, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 46
  store i32 8, ptr %10, align 8, !tbaa !231
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 904, ptr noundef nonnull @.str.9) #32
  %13 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 24
  store ptr %12, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !309
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %17 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 7
  store i32 %16, ptr %17, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.Strip, ptr %12, i64 0, i32 2
  store i32 1, ptr %18, align 8, !tbaa !310
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = sext i32 %16 to i64
  %21 = mul nsw i64 %20, 264
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.10) #32
  %23 = getelementptr inbounds %struct.Strip, ptr %12, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !147
  %24 = getelementptr inbounds %struct.Strip, ptr %12, i64 0, i32 7
  %25 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 6
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %25, i64 noundef 768) #32
  tail call fastcc void @seq_load_apply(ptr noundef %4, ptr noundef %8, ptr noundef nonnull %2) #31
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_load_apply(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !311 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %7 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 7
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 62) #32
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #34
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @BLI_utf8_invalid_strip(ptr noundef nonnull %6, i32 noundef %10) #32
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.Editing, ptr %13, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %14, ptr noundef nonnull %1) #31
  %15 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !312
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !132
  %22 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !130
  %24 = sub i32 %21, %23
  %25 = load i32, ptr %2, align 8, !tbaa !306
  %26 = add nsw i32 %24, %25
  store i32 %26, ptr %2, align 8, !tbaa !306
  br label %27

27:                                               ; preds = %19, %5
  %28 = and i32 %16, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  tail call void @BKE_sequencer_active_set(ptr noundef nonnull %0, ptr noundef nonnull %1) #31
  %31 = load i32, ptr %15, align 4, !tbaa !312
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ %16, %27 ]
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @sound_cache(ptr noundef nonnull %38) #32
  br label %41

41:                                               ; preds = %36, %40, %32
  %42 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !313
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !313
  br label %49

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 10
  %47 = load i32, ptr %46, align 4, !tbaa !314
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !314
  br label %49

49:                                               ; preds = %45, %41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BKE_sequencer_add_sound_strip(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #7 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_sequencer_add_movie_strip(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #32
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %7 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 6
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 1024) #32
  %9 = load ptr, ptr @G, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %10) #32
  %12 = call ptr @openanim(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %5) #32
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %2, align 8, !tbaa !306
  %16 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !308
  %18 = call ptr @BKE_sequence_alloc(ptr noundef %1, i32 noundef %15, i32 noundef %17) #31
  %19 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 6
  store i32 3, ptr %19, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 46
  store i32 8, ptr %20, align 8, !tbaa !231
  %21 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 30
  store ptr %12, ptr %21, align 8, !tbaa !49
  %22 = call i32 @IMB_anim_get_preseek(ptr noundef nonnull %12) #32
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 20
  store i16 %23, ptr %24, align 4, !tbaa !155
  %25 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 4, i64 2
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull @.str.11, i64 noundef 62) #32
  %27 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.Editing, ptr %28, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %29, ptr noundef %18) #31
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = call ptr %30(i64 noundef 904, ptr noundef nonnull @.str.9) #32
  %32 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 24
  store ptr %31, ptr %32, align 8, !tbaa !48
  %33 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %12, i32 noundef 1) #32
  %34 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !310
  %36 = load ptr, ptr %32, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.Strip, ptr %36, i64 0, i32 12
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %5, i64 noundef 64) #32
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = call ptr %39(i64 noundef 264, ptr noundef nonnull @.str.10) #32
  %41 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !147
  %42 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 7
  call void @BLI_split_dirfile(ptr noundef nonnull %7, ptr noundef nonnull %42, ptr noundef %40, i64 noundef 768, i64 noundef 256) #32
  call void @BKE_sequence_calc_disp(ptr noundef %6, ptr noundef %18) #31
  %43 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 7
  %44 = load i8, ptr %43, align 8, !tbaa !105
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %14
  %47 = call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef %40, i64 noundef 64) #32
  br label %48

48:                                               ; preds = %46, %14
  %49 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !312
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %16, align 8, !tbaa !308
  %55 = getelementptr inbounds %struct.SeqLoadInfo, ptr %2, i64 0, i32 8
  store ptr null, ptr %55, align 8, !tbaa !315
  store i32 %54, ptr %16, align 8, !tbaa !308
  br label %56

56:                                               ; preds = %53, %48
  call fastcc void @seq_load_apply(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef nonnull %2) #31
  br label %57

57:                                               ; preds = %3, %56
  %58 = phi ptr [ %18, %56 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #33
  ret ptr %58
}

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !316 {
  %5 = alloca %struct.SeqEffectHandle, align 8
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr %0, ptr %1
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %9 = tail call ptr %8(ptr noundef %2) #32
  %10 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !256
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call ptr %11(ptr noundef %13) #32
  %15 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 24
  store ptr %14, ptr %15, align 8, !tbaa !48
  %16 = load ptr, ptr %12, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.Strip, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !317
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %22 = tail call ptr %21(ptr noundef nonnull %18) #32
  %23 = load ptr, ptr %15, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.Strip, ptr %23, i64 0, i32 9
  store ptr %22, ptr %24, align 8, !tbaa !317
  %25 = load ptr, ptr %12, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi ptr [ %25, %20 ], [ %16, %4 ]
  %28 = getelementptr inbounds %struct.Strip, ptr %27, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !318
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %33 = tail call ptr %32(ptr noundef nonnull %29) #32
  %34 = load ptr, ptr %15, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct.Strip, ptr %34, i64 0, i32 10
  store ptr %33, ptr %35, align 8, !tbaa !318
  %36 = load ptr, ptr %12, align 8, !tbaa !48
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi ptr [ %36, %31 ], [ %27, %26 ]
  %39 = getelementptr inbounds %struct.Strip, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !152
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %44 = tail call ptr %43(ptr noundef nonnull %40) #32
  %45 = load ptr, ptr %15, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.Strip, ptr %45, i64 0, i32 8
  store ptr %44, ptr %46, align 8, !tbaa !152
  %47 = getelementptr inbounds %struct.StripProxy, ptr %44, i64 0, i32 2
  store ptr null, ptr %47, align 8, !tbaa !160
  br label %48

48:                                               ; preds = %42, %37
  %49 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 51
  %50 = load ptr, ptr %49, align 8, !tbaa !234
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %49) #31
  tail call void @BKE_sequence_modifier_list_copy(ptr noundef nonnull %9, ptr noundef nonnull %2) #32
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !50
  switch i32 %55, label %103 [
    i32 1, label %56
    i32 2, label %60
    i32 6, label %146
    i32 7, label %146
    i32 3, label %69
    i32 4, label %78
    i32 0, label %95
  ]

56:                                               ; preds = %53
  %57 = load ptr, ptr %15, align 8, !tbaa !48
  %58 = getelementptr inbounds %struct.Strip, ptr %57, i64 0, i32 6
  store ptr null, ptr %58, align 8, !tbaa !147
  %59 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %59) #31
  br label %146

60:                                               ; preds = %53
  %61 = load ptr, ptr %15, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.Strip, ptr %61, i64 0, i32 6
  store ptr null, ptr %62, align 8, !tbaa !147
  %63 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 38
  %64 = load ptr, ptr %63, align 8, !tbaa !78
  %65 = icmp eq ptr %64, null
  br i1 %65, label %146, label %66

66:                                               ; preds = %60
  %67 = tail call ptr @sound_scene_add_scene_sound_defaults(ptr noundef %7, ptr noundef nonnull %9) #32
  %68 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  store ptr %67, ptr %68, align 8, !tbaa !78
  br label %146

69:                                               ; preds = %53
  %70 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %71 = load ptr, ptr %12, align 8, !tbaa !48
  %72 = getelementptr inbounds %struct.Strip, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  %74 = tail call ptr %70(ptr noundef %73) #32
  %75 = load ptr, ptr %15, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.Strip, ptr %75, i64 0, i32 6
  store ptr %74, ptr %76, align 8, !tbaa !147
  %77 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 30
  store ptr null, ptr %77, align 8, !tbaa !49
  br label %146

78:                                               ; preds = %53
  %79 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %80 = load ptr, ptr %12, align 8, !tbaa !48
  %81 = getelementptr inbounds %struct.Strip, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !147
  %83 = tail call ptr %79(ptr noundef %82) #32
  %84 = load ptr, ptr %15, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct.Strip, ptr %84, i64 0, i32 6
  store ptr %83, ptr %85, align 8, !tbaa !147
  %86 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 38
  %87 = load ptr, ptr %86, align 8, !tbaa !78
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = tail call ptr @sound_add_scene_sound_defaults(ptr noundef %7, ptr noundef nonnull %9) #32
  %91 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  store ptr %90, ptr %91, align 8, !tbaa !78
  br label %92

92:                                               ; preds = %89, %78
  %93 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 37
  %94 = load ptr, ptr %93, align 8, !tbaa !53
  tail call void @id_us_plus(ptr noundef %94) #32
  br label %146

95:                                               ; preds = %53
  %96 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %97 = load ptr, ptr %12, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !147
  %100 = tail call ptr %96(ptr noundef %99) #32
  %101 = load ptr, ptr %15, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct.Strip, ptr %101, i64 0, i32 6
  store ptr %100, ptr %102, align 8, !tbaa !147
  br label %146

103:                                              ; preds = %53
  %104 = icmp sgt i32 %55, 7
  br i1 %104, label %105, label %146

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 33
  %107 = load ptr, ptr %106, align 8, !tbaa !140
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Sequence, ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !256
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 33
  store ptr %111, ptr %114, align 8, !tbaa !140
  br label %115

115:                                              ; preds = %113, %109, %105
  %116 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 34
  %117 = load ptr, ptr %116, align 8, !tbaa !139
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.Sequence, ptr %117, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !256
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 34
  store ptr %121, ptr %124, align 8, !tbaa !139
  br label %125

125:                                              ; preds = %123, %119, %115
  %126 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 35
  %127 = load ptr, ptr %126, align 8, !tbaa !141
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.Sequence, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !256
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 35
  store ptr %131, ptr %134, align 8, !tbaa !141
  br label %135

135:                                              ; preds = %133, %129, %125
  %136 = and i32 %55, 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #33
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %5, ptr noundef nonnull %2) #32
  %139 = getelementptr inbounds i8, ptr %5, i64 32
  %140 = load ptr, ptr %139, align 8, !tbaa.struct !319
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #33
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call void %140(ptr noundef nonnull %2, ptr noundef nonnull %9) #32
  br label %143

143:                                              ; preds = %138, %142, %135
  %144 = load ptr, ptr %15, align 8, !tbaa !48
  %145 = getelementptr inbounds %struct.Strip, ptr %144, i64 0, i32 6
  store ptr null, ptr %145, align 8, !tbaa !147
  br label %146

146:                                              ; preds = %53, %53, %66, %60, %92, %143, %103, %95, %69, %56
  %147 = and i32 %3, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %151 = load ptr, ptr %150, align 8, !tbaa !56
  %152 = getelementptr inbounds %struct.Editing, ptr %151, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %152, ptr noundef nonnull %9) #31
  br label %153

153:                                              ; preds = %149, %146
  %154 = and i32 %3, 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 4, i64 2
  %158 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  call void @BKE_sequencer_dupe_animdata(ptr noundef %0, ptr noundef nonnull %157, ptr noundef nonnull %158) #31
  br label %159

159:                                              ; preds = %156, %153
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_base_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %0) #31
  %7 = or i32 %4, 8
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 8
  %12 = and i32 %4, 2
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %43
  %15 = phi ptr [ %8, %10 ], [ %44, %43 ]
  %16 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !256
  %17 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !142
  %19 = and i32 %18, 1
  %20 = or disjoint i32 %19, %11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %14
  %23 = tail call fastcc ptr @seq_dupli(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, i32 noundef %4) #31
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  br i1 %13, label %26, label %32

26:                                               ; preds = %25
  %27 = load i32, ptr %17, align 8, !tbaa !142
  %28 = and i32 %27, -8
  store i32 %28, ptr %17, align 8, !tbaa !142
  %29 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !142
  %31 = and i32 %30, -16391
  store i32 %31, ptr %29, align 8, !tbaa !142
  br label %32

32:                                               ; preds = %26, %25
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %23) #32
  %33 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 36
  %38 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 36
  tail call void @BKE_sequence_base_dupli_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %37, ptr noundef nonnull %38, i32 noundef %7) #31
  br label %39

39:                                               ; preds = %36, %32
  %40 = icmp eq ptr %15, %6
  %41 = select i1 %13, i1 %40, i1 false
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @BKE_sequencer_active_set(ptr noundef %0, ptr noundef nonnull %23) #31
  br label %43

43:                                               ; preds = %14, %39, %42, %22
  %44 = load ptr, ptr %15, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %14, !llvm.loop !320

46:                                               ; preds = %43, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_sequence_is_valid_check(ptr nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !50
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_free_strip(ptr noundef %0) unnamed_addr #0 !PGOFuncName !321 {
  %2 = getelementptr inbounds %struct.Strip, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !310
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !310
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %43

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Strip, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #32
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.Strip, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.StripProxy, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !160
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call void @IMB_free_anim(ptr noundef nonnull %22) #32
  %25 = load ptr, ptr %17, align 8, !tbaa !152
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %18, %20 ]
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef %27) #32
  br label %29

29:                                               ; preds = %26, %16
  %30 = getelementptr inbounds %struct.Strip, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !317
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %34(ptr noundef nonnull %31) #32
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.Strip, ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !318
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %40(ptr noundef nonnull %37) #32
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %42(ptr noundef nonnull %0) #32
  br label %43

43:                                               ; preds = %1, %41, %8
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sound_remove_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_free_animdata(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !322 {
  %3 = alloca [163 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 163, ptr nonnull %3) #33
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !265
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !266
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  %12 = call fastcc i64 @sequencer_rna_path_prefix(ptr noundef nonnull %3, ptr noundef nonnull %11) #31
  %13 = load ptr, ptr %4, align 8, !tbaa !265
  %14 = load ptr, ptr %13, align 8, !tbaa !266
  %15 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !323
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %10, %29
  %19 = phi ptr [ %24, %29 ], [ %16, %10 ]
  %20 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !268
  %22 = call i32 @strncmp(ptr noundef %21, ptr noundef nonnull %3, i64 noundef %12) #34
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %19, align 8, !tbaa !324
  br i1 %23, label %25, label %29

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 8, !tbaa !265
  %27 = load ptr, ptr %26, align 8, !tbaa !266
  %28 = getelementptr inbounds %struct.bAction, ptr %27, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %28, ptr noundef nonnull %19) #32
  call void @free_fcurve(ptr noundef nonnull %19) #32
  br label %29

29:                                               ; preds = %18, %25
  %30 = icmp eq ptr %24, null
  br i1 %30, label %31, label %18, !llvm.loop !325

31:                                               ; preds = %29, %10, %2, %7
  call void @llvm.lifetime.end.p0(i64 163, ptr nonnull %3) #33
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_modifier_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sound_new_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_movieclip_file_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !326 {
  %3 = load float, ptr %1, align 4, !tbaa !111
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #32
  store float %4, ptr %0, align 4, !tbaa !111
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !111
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #32
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !111
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !111
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #32
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !111
  ret void
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @seq_count(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #21 !PGOFuncName !327 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !124
  br label %7

7:                                                ; preds = %5, %16
  %8 = phi i32 [ %17, %16 ], [ %6, %5 ]
  %9 = phi ptr [ %18, %16 ], [ %3, %5 ]
  %10 = add nsw i32 %8, 1
  store i32 %10, ptr %1, align 4, !tbaa !124
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call fastcc void @seq_count(ptr noundef nonnull %11, ptr noundef nonnull %1) #31
  %15 = load i32, ptr %1, align 4, !tbaa !124
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %10, %7 ], [ %15, %14 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !328

20:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @seq_build_array(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #21 !PGOFuncName !329 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %2, 1
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi ptr [ %4, %6 ], [ %19, %15 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 14
  store i32 %2, ptr %10, align 4, !tbaa !330
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call fastcc void @seq_build_array(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %7) #31
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %9, ptr %16, align 8, !tbaa !34
  %17 = load ptr, ptr %1, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  store ptr %18, ptr %1, align 8, !tbaa !34
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !331

21:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !332 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %4, %44
  %9 = phi ptr [ %45, %44 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !50
  switch i32 %11, label %44 [
    i32 1, label %12
    i32 4, label %17
    i32 2, label %17
  ]

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @metaseq_start(ptr noundef nonnull %9) #31
  %14 = tail call fastcc i32 @max_ii(i32 noundef %2, i32 noundef %13) #31
  %15 = tail call fastcc i32 @metaseq_end(ptr noundef nonnull %9) #31
  %16 = tail call fastcc i32 @min_ii(i32 noundef %3, i32 noundef %15) #31
  tail call fastcc void @seq_update_sound_bounds_recursive_rec(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %14, i32 noundef %16) #31
  br label %44

17:                                               ; preds = %8, %8
  %18 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 38
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !125
  %24 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !127
  %26 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !129
  %28 = add nsw i32 %27, %23
  %29 = icmp slt i32 %28, %2
  %30 = sub nsw i32 %2, %27
  %31 = select i1 %29, i32 %30, i32 %23
  %32 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !131
  %34 = add nsw i32 %33, %27
  %35 = sub nsw i32 %34, %25
  %36 = icmp sgt i32 %35, %3
  %37 = sub nsw i32 %34, %3
  %38 = select i1 %36, i32 %37, i32 %25
  %39 = add nsw i32 %31, %27
  %40 = sub nsw i32 %34, %38
  %41 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 44
  %42 = load i32, ptr %41, align 8, !tbaa !134
  %43 = add nsw i32 %31, %42
  tail call void @sound_move_scene_sound(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %39, i32 noundef %40, i32 noundef %43) #32
  br label %44

44:                                               ; preds = %8, %12, %17, %21
  %45 = load ptr, ptr %9, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %8, !llvm.loop !333

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @metaseq_start(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !334 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !129
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !125
  %6 = add nsw i32 %5, %3
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @metaseq_end(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !335 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !129
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !127
  %9 = sub i32 %6, %8
  ret i32 %9
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: optsize
declare void @IMB_anim_set_index_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @seq_proxy_get_fname(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !336 {
  %5 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %5) #33
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.Strip, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = and i32 %13, 2621440
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef 1792) #32
  br label %25

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Strip, ptr %7, i64 0, i32 7
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1792, ptr noundef nonnull @.str.37, ptr noundef nonnull %23) #32
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, ptr %12, align 8, !tbaa !142
  %27 = and i32 %26, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.Strip, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !152
  %33 = getelementptr inbounds %struct.StripProxy, ptr %32, i64 0, i32 1
  call void @BLI_join_dirfile(ptr noundef %3, i64 noundef 1792, ptr noundef nonnull %5, ptr noundef nonnull %33) #32
  %34 = load ptr, ptr @G, align 8, !tbaa !149
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 2
  %36 = call zeroext i8 @BLI_path_abs(ptr noundef %3, ptr noundef nonnull %35) #32
  br label %60

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call ptr @BKE_sequencer_give_stripelem(ptr noundef nonnull %0, i32 noundef %1) #31
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %3, i64 noundef 1792, ptr noundef nonnull @.str.38, ptr noundef nonnull %5, i32 noundef %2, ptr noundef %42) #32
  br label %52

44:                                               ; preds = %37
  %45 = sitofp i32 %1 to float
  %46 = call fastcc float @give_stripelem_index(ptr noundef nonnull %0, float noundef %45) #31
  %47 = fptosi float %46 to i32
  %48 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 44
  %49 = load i32, ptr %48, align 8, !tbaa !134
  %50 = add nsw i32 %49, %47
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %3, i64 noundef 1792, ptr noundef nonnull @.str.39, ptr noundef nonnull %5, i32 noundef %2) #32
  br label %52

52:                                               ; preds = %44, %41
  %53 = phi i32 [ 1, %41 ], [ %50, %44 ]
  %54 = load ptr, ptr @G, align 8, !tbaa !149
  %55 = getelementptr inbounds %struct.Main, ptr %54, i64 0, i32 2
  %56 = call zeroext i8 @BLI_path_abs(ptr noundef %3, ptr noundef nonnull %55) #32
  %57 = call zeroext i8 @BLI_path_frame(ptr noundef %3, i32 noundef %53, i32 noundef 0) #32
  %58 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %59 = getelementptr inbounds i8, ptr %3, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %59, ptr noundef nonnull align 1 dereferenceable(5) @.str.40, i64 5, i1 false)
  br label %60

60:                                               ; preds = %18, %4, %52, %29
  %61 = phi i8 [ 1, %29 ], [ 1, %52 ], [ 0, %4 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %5) #33
  ret i8 %61
}

; Function Attrs: optsize
declare ptr @IMB_scalefastImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: optsize
declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @color_balance_float_float(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #15 !PGOFuncName !337 {
  %7 = alloca %struct.StripColorBalance, align 4
  %8 = shl nsw i32 %3, 2
  %9 = mul nsw i32 %8, %4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr %1, i64 %10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #33
  call fastcc void @calc_cb(ptr dead_on_unwind nonnull writable sret(%struct.StripColorBalance) align 4 %7, ptr noundef %0) #31
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %6, %39
  %14 = phi ptr [ %40, %39 ], [ %1, %6 ]
  %15 = phi ptr [ %42, %39 ], [ %2, %6 ]
  %16 = icmp eq ptr %15, null
  br label %17

17:                                               ; preds = %13, %35
  %18 = phi i64 [ 0, %13 ], [ %37, %35 ]
  %19 = getelementptr inbounds float, ptr %14, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !111
  %21 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !111
  %23 = getelementptr inbounds %struct.StripColorBalance, ptr %7, i64 0, i32 2, i64 %18
  %24 = load float, ptr %23, align 4, !tbaa !111
  %25 = getelementptr inbounds %struct.StripColorBalance, ptr %7, i64 0, i32 1, i64 %18
  %26 = load float, ptr %25, align 4, !tbaa !111
  %27 = tail call fastcc float @color_balance_fl(float noundef %20, float noundef %22, float noundef %24, float noundef %26, float noundef %5) #31
  br i1 %16, label %35, label %28

28:                                               ; preds = %17
  %29 = load float, ptr %19, align 4, !tbaa !111
  %30 = getelementptr inbounds float, ptr %15, i64 %18
  %31 = load float, ptr %30, align 4, !tbaa !111
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %27, %31
  %34 = tail call float @llvm.fmuladd.f32(float %29, float %32, float %33)
  br label %35

35:                                               ; preds = %17, %28
  %36 = phi float [ %34, %28 ], [ %27, %17 ]
  store float %36, ptr %19, align 4, !tbaa !111
  %37 = add nuw nsw i64 %18, 1
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %17, !llvm.loop !338

39:                                               ; preds = %35
  %40 = getelementptr inbounds float, ptr %14, i64 4
  %41 = getelementptr inbounds float, ptr %15, i64 4
  %42 = select i1 %16, ptr null, ptr %41
  %43 = icmp ult ptr %40, %11
  br i1 %43, label %13, label %44, !llvm.loop !339

44:                                               ; preds = %39, %6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #33
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @color_balance_byte_float(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #15 !PGOFuncName !340 {
  %7 = alloca [4 x [256 x float]], align 16
  %8 = alloca %struct.StripColorBalance, align 4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #33
  %9 = shl nsw i32 %3, 2
  %10 = mul nsw i32 %9, %4
  %11 = sext i32 %10 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #33
  call fastcc void @calc_cb(ptr dead_on_unwind nonnull writable sret(%struct.StripColorBalance) align 4 %8, ptr noundef %0) #31
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %21, %12 ]
  %14 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !111
  %16 = getelementptr inbounds %struct.StripColorBalance, ptr %8, i64 0, i32 2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !111
  %18 = getelementptr inbounds %struct.StripColorBalance, ptr %8, i64 0, i32 1, i64 %13
  %19 = load float, ptr %18, align 4, !tbaa !111
  %20 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 %13
  call fastcc void @make_cb_table_float(float noundef %15, float noundef %17, float noundef %19, ptr noundef nonnull %20, float noundef %5) #31
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %12, !llvm.loop !341

23:                                               ; preds = %12, %23
  %24 = phi i64 [ %29, %23 ], [ 0, %12 ]
  %25 = phi <4 x i32> [ %30, %23 ], [ <i32 0, i32 1, i32 2, i32 3>, %12 ]
  %26 = sitofp <4 x i32> %25 to <4 x float>
  %27 = fmul <4 x float> %26, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %28 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 3, i64 %24
  store <4 x float> %27, ptr %28, align 16, !tbaa !111
  %29 = add nuw i64 %24, 4
  %30 = add <4 x i32> %25, <i32 4, i32 4, i32 4, i32 4>
  %31 = icmp eq i64 %29, 256
  br i1 %31, label %32, label %23, !llvm.loop !342

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %1, i64 %11
  %34 = icmp sgt i32 %10, 0
  br i1 %34, label %35, label %110

35:                                               ; preds = %32, %99
  %36 = phi ptr [ %107, %99 ], [ %1, %32 ]
  %37 = phi ptr [ %108, %99 ], [ null, %32 ]
  %38 = phi ptr [ %100, %99 ], [ %2, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %82, label %40

40:                                               ; preds = %35
  %41 = load i8, ptr %38, align 1, !tbaa !105
  %42 = uitofp i8 %41 to float
  %43 = fdiv float %42, 2.550000e+02
  %44 = getelementptr inbounds i8, ptr %38, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !105
  %46 = uitofp i8 %45 to float
  %47 = fdiv float %46, 2.550000e+02
  %48 = getelementptr inbounds i8, ptr %38, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !105
  %50 = uitofp i8 %49 to float
  %51 = fdiv float %50, 2.550000e+02
  %52 = load i8, ptr %36, align 1, !tbaa !105
  %53 = uitofp i8 %52 to float
  %54 = fsub float 1.000000e+00, %43
  %55 = zext i8 %52 to i64
  %56 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !111
  %58 = fmul float %43, %57
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %54, float %58)
  %60 = fptoui float %59 to i8
  store i8 %60, ptr %36, align 1, !tbaa !105
  %61 = getelementptr inbounds i8, ptr %36, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !105
  %63 = uitofp i8 %62 to float
  %64 = fsub float 1.000000e+00, %47
  %65 = zext i8 %62 to i64
  %66 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 1, i64 %65
  %67 = load float, ptr %66, align 4, !tbaa !111
  %68 = fmul float %47, %67
  %69 = tail call float @llvm.fmuladd.f32(float %63, float %64, float %68)
  %70 = fptoui float %69 to i8
  store i8 %70, ptr %61, align 1, !tbaa !105
  %71 = getelementptr inbounds i8, ptr %36, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !105
  %73 = uitofp i8 %72 to float
  %74 = fsub float 1.000000e+00, %51
  %75 = zext i8 %72 to i64
  %76 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 2, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !111
  %78 = fmul float %51, %77
  %79 = tail call float @llvm.fmuladd.f32(float %73, float %74, float %78)
  %80 = fptoui float %79 to i8
  store i8 %80, ptr %71, align 1, !tbaa !105
  %81 = getelementptr inbounds i8, ptr %38, i64 4
  br label %99

82:                                               ; preds = %35
  %83 = load i8, ptr %36, align 1, !tbaa !105
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds [256 x float], ptr %7, i64 0, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !111
  store float %86, ptr %37, align 4, !tbaa !111
  %87 = getelementptr inbounds i8, ptr %36, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !105
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 1, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !111
  %92 = getelementptr inbounds float, ptr %37, i64 1
  store float %91, ptr %92, align 4, !tbaa !111
  %93 = getelementptr inbounds i8, ptr %36, i64 2
  %94 = load i8, ptr %93, align 1, !tbaa !105
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 2, i64 %95
  %97 = load float, ptr %96, align 4, !tbaa !111
  %98 = getelementptr inbounds float, ptr %37, i64 2
  store float %97, ptr %98, align 4, !tbaa !111
  br label %99

99:                                               ; preds = %82, %40
  %100 = phi ptr [ %81, %40 ], [ null, %82 ]
  %101 = getelementptr inbounds i8, ptr %36, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !105
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [4 x [256 x float]], ptr %7, i64 0, i64 3, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !111
  %106 = getelementptr inbounds float, ptr %37, i64 3
  store float %105, ptr %106, align 4, !tbaa !111
  %107 = getelementptr inbounds i8, ptr %36, i64 4
  %108 = getelementptr inbounds float, ptr %37, i64 4
  %109 = icmp ult ptr %107, %33
  br i1 %109, label %35, label %110, !llvm.loop !345

110:                                              ; preds = %99, %32
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #33
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @color_balance_byte_byte(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #15 !PGOFuncName !346 {
  %7 = alloca %struct.StripColorBalance, align 4
  %8 = alloca [4 x float], align 16
  %9 = shl nsw i32 %3, 2
  %10 = mul nsw i32 %9, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #33
  call fastcc void @calc_cb(ptr dead_on_unwind nonnull writable sret(%struct.StripColorBalance) align 4 %7, ptr noundef %0) #31
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %6, %41
  %15 = phi ptr [ %42, %41 ], [ %1, %6 ]
  %16 = phi ptr [ %44, %41 ], [ %2, %6 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #33
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %8, ptr noundef %15) #31
  %17 = icmp eq ptr %16, null
  br label %18

18:                                               ; preds = %14, %37
  %19 = phi i64 [ 0, %14 ], [ %39, %37 ]
  %20 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !111
  %22 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !111
  %24 = getelementptr inbounds %struct.StripColorBalance, ptr %7, i64 0, i32 2, i64 %19
  %25 = load float, ptr %24, align 4, !tbaa !111
  %26 = getelementptr inbounds %struct.StripColorBalance, ptr %7, i64 0, i32 1, i64 %19
  %27 = load float, ptr %26, align 4, !tbaa !111
  %28 = tail call fastcc float @color_balance_fl(float noundef %21, float noundef %23, float noundef %25, float noundef %27, float noundef %5) #31
  br i1 %17, label %37, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds i8, ptr %16, i64 %19
  %31 = load i8, ptr %30, align 1, !tbaa !105
  %32 = uitofp i8 %31 to float
  %33 = fdiv float %32, 2.550000e+02
  %34 = fsub float 1.000000e+00, %33
  %35 = fmul float %28, %33
  %36 = tail call float @llvm.fmuladd.f32(float %21, float %34, float %35)
  br label %37

37:                                               ; preds = %18, %29
  %38 = phi float [ %36, %29 ], [ %28, %18 ]
  store float %38, ptr %20, align 4, !tbaa !111
  %39 = add nuw nsw i64 %19, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %18, !llvm.loop !347

41:                                               ; preds = %37
  call fastcc void @premul_float_to_straight_uchar(ptr noundef %15, ptr noundef nonnull %8) #31
  %42 = getelementptr inbounds i8, ptr %15, i64 4
  %43 = getelementptr inbounds i8, ptr %16, i64 4
  %44 = select i1 %17, ptr null, ptr %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #33
  %45 = icmp ult ptr %42, %12
  br i1 %45, label %14, label %46, !llvm.loop !348

46:                                               ; preds = %41, %6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @calc_cb(ptr dead_on_unwind noalias nocapture writable sret(%struct.StripColorBalance) align 4 %0, ptr nocapture noundef readonly %1) unnamed_addr #23 !PGOFuncName !349 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(44) %1, i64 44, i1 false), !tbaa.struct !350
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !111
  %7 = fsub float 2.000000e+00, %6
  store float %7, ptr %5, align 4, !tbaa !111
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 3
  br i1 %9, label %10, label %3, !llvm.loop !351

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.StripColorBalance, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !352
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %26
  %16 = phi i64 [ %29, %26 ], [ 0, %10 ]
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !111
  %19 = fcmp ogt float %18, 1.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = fadd float %18, -1.000000e+00
  %22 = fpext float %21 to double
  %23 = fmul double %22, %22
  %24 = fadd double %23, 1.000000e+00
  %25 = fptrunc double %24 to float
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi float [ %25, %20 ], [ %18, %15 ]
  %28 = fsub float 2.000000e+00, %27
  store float %28, ptr %17, align 4, !tbaa !111
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %15, !llvm.loop !354

31:                                               ; preds = %26, %10
  %32 = and i32 %12, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ %41, %34 ], [ 0, %31 ]
  %36 = getelementptr inbounds %struct.StripColorBalance, ptr %0, i64 0, i32 2, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !111
  %38 = fcmp une float %37, 0.000000e+00
  %39 = fdiv float 1.000000e+00, %37
  %40 = select i1 %38, float %39, float 1.000000e+06
  store float %40, ptr %36, align 4, !tbaa !111
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %34, !llvm.loop !355

43:                                               ; preds = %34, %31
  %44 = and i32 %12, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %53, %46 ], [ 0, %43 ]
  %48 = getelementptr inbounds %struct.StripColorBalance, ptr %0, i64 0, i32 1, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !111
  %50 = fcmp une float %49, 0.000000e+00
  %51 = fdiv float 1.000000e+00, %49
  %52 = select i1 %50, float %51, float 1.000000e+06
  store float %52, ptr %48, align 4, !tbaa !111
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, 3
  br i1 %54, label %55, label %46, !llvm.loop !356

55:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @color_balance_fl(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #24 !PGOFuncName !357 {
  %6 = fadd float %0, -1.000000e+00
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %1, float 1.000000e+00)
  %8 = fmul float %7, %2
  %9 = fcmp olt float %8, 0.000000e+00
  %10 = select i1 %9, float 0.000000e+00, float %8
  %11 = tail call float @powf(float noundef %10, float noundef %3) #32
  %12 = fmul float %11, %4
  ret float %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #25

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc void @make_cb_table_float(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, float noundef %4) unnamed_addr #26 !PGOFuncName !358 {
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i64 [ 0, %5 ], [ %13, %6 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 0x3F70101020000000
  %11 = tail call fastcc float @color_balance_fl(float noundef %10, float noundef %0, float noundef %1, float noundef %2, float noundef %4) #31
  %12 = getelementptr inbounds float, ptr %3, i64 %7
  store float %11, ptr %12, align 4, !tbaa !111
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 256
  br i1 %14, label %15, label %6, !llvm.loop !359

15:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_uchar_to_premul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !360 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !105
  %5 = uitofp i8 %4 to float
  %6 = fmul float %5, 0x3F70101020000000
  %7 = fmul float %6, 0x3F70101020000000
  %8 = load i8, ptr %1, align 1, !tbaa !105
  %9 = uitofp i8 %8 to float
  %10 = fmul float %7, %9
  store float %10, ptr %0, align 4, !tbaa !111
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !105
  %13 = uitofp i8 %12 to float
  %14 = fmul float %7, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !111
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !105
  %18 = uitofp i8 %17 to float
  %19 = fmul float %7, %18
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !111
  %21 = getelementptr inbounds float, ptr %0, i64 3
  store float %6, ptr %21, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_float_to_straight_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !361 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !111
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !111
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = fcmp ogt float %9, 0x3FEFEFEFE0000000
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 2.550000e+02, float 5.000000e-01)
  %15 = fptoui float %14 to i8
  br label %16

16:                                               ; preds = %13, %11, %8
  %17 = phi i8 [ 0, %8 ], [ %15, %13 ], [ -1, %11 ]
  store i8 %17, ptr %0, align 1, !tbaa !105
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !111
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %25 = fptoui float %24 to i8
  br label %26

26:                                               ; preds = %23, %21, %16
  %27 = phi i8 [ 0, %16 ], [ %25, %23 ], [ -1, %21 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !105
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !111
  %31 = fcmp ugt float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = fcmp ogt float %30, 0x3FEFEFEFE0000000
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = tail call float @llvm.fmuladd.f32(float %30, float 2.550000e+02, float 5.000000e-01)
  %36 = fptoui float %35 to i8
  br label %37

37:                                               ; preds = %34, %32, %26
  %38 = phi i8 [ 0, %26 ], [ %36, %34 ], [ -1, %32 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %38, ptr %39, align 1, !tbaa !105
  %40 = load float, ptr %3, align 4, !tbaa !111
  %41 = fcmp ugt float %40, 0.000000e+00
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = fcmp ogt float %40, 0x3FEFEFEFE0000000
  br i1 %43, label %90, label %44

44:                                               ; preds = %42
  %45 = tail call float @llvm.fmuladd.f32(float %40, float 2.550000e+02, float 5.000000e-01)
  %46 = fptoui float %45 to i8
  br label %90

47:                                               ; preds = %2
  %48 = fdiv float 1.000000e+00, %4
  %49 = load float, ptr %1, align 4, !tbaa !111
  %50 = fmul float %48, %49
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = fcmp ogt float %50, 0x3FEFEFEFE0000000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call float @llvm.fmuladd.f32(float %50, float 2.550000e+02, float 5.000000e-01)
  %56 = fptoui float %55 to i8
  br label %57

57:                                               ; preds = %54, %52, %47
  %58 = phi i8 [ 0, %47 ], [ %56, %54 ], [ -1, %52 ]
  store i8 %58, ptr %0, align 1, !tbaa !105
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !111
  %61 = fmul float %48, %60
  %62 = fcmp ugt float %61, 0.000000e+00
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = fcmp ogt float %61, 0x3FEFEFEFE0000000
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call float @llvm.fmuladd.f32(float %61, float 2.550000e+02, float 5.000000e-01)
  %67 = fptoui float %66 to i8
  br label %68

68:                                               ; preds = %65, %63, %57
  %69 = phi i8 [ 0, %57 ], [ %67, %65 ], [ -1, %63 ]
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %69, ptr %70, align 1, !tbaa !105
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !111
  %73 = fmul float %48, %72
  %74 = fcmp ugt float %73, 0.000000e+00
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = fcmp ogt float %73, 0x3FEFEFEFE0000000
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call float @llvm.fmuladd.f32(float %73, float 2.550000e+02, float 5.000000e-01)
  %79 = fptoui float %78 to i8
  br label %80

80:                                               ; preds = %77, %75, %68
  %81 = phi i8 [ 0, %68 ], [ %79, %77 ], [ -1, %75 ]
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !105
  %83 = load float, ptr %3, align 4, !tbaa !111
  %84 = fcmp ugt float %83, 0.000000e+00
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = fcmp ogt float %83, 0x3FEFEFEFE0000000
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = tail call float @llvm.fmuladd.f32(float %83, float 2.550000e+02, float 5.000000e-01)
  %89 = fptoui float %88 to i8
  br label %90

90:                                               ; preds = %80, %85, %87, %37, %42, %44
  %91 = phi i8 [ 0, %37 ], [ %46, %44 ], [ -1, %42 ], [ 0, %80 ], [ %89, %87 ], [ -1, %85 ]
  %92 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %91, ptr %92, align 1, !tbaa !105
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mask_copy_nolib(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_evaluate(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_maskrasterize_handle_new() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_maskrasterize_handle_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_free_nolib(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_maskrasterize_buffer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_maskrasterize_handle_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequencer_cache_get(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_from_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !362 {
  %4 = fcmp oeq float %2, 0.000000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !129
  %8 = sitofp i32 %7 to float
  %9 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef %1, float noundef %8, i32 noundef 2) #32
  br label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !131
  %13 = add nsw i32 %12, -1
  %14 = sitofp i32 %13 to float
  %15 = fcmp oeq float %14, %2
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !129
  %19 = sitofp i32 %18 to float
  %20 = tail call ptr @BKE_sequencer_cache_get(ptr noundef %0, ptr noundef nonnull %1, float noundef %19, i32 noundef 3) #32
  br label %21

21:                                               ; preds = %16, %5
  %22 = phi ptr [ %9, %5 ], [ %20, %16 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %22) #32
  tail call void @IMB_freeImBuf(ptr noundef nonnull %22) #32
  br label %26

26:                                               ; preds = %10, %24, %21
  %27 = phi ptr [ %25, %24 ], [ null, %21 ], [ null, %10 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_preprocessed_cache_get(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_proxy_fetch(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !363 {
  %4 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %4) #33
  %5 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !117
  %7 = tail call fastcc i32 @seq_rendersize_to_proxysize(i32 noundef %6) #31, !range !364
  %8 = icmp eq i32 %6, 99
  %9 = select i1 %8, i32 100, i32 %6
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %80, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %80, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  %21 = getelementptr inbounds %struct.StripProxy, ptr %20, i64 0, i32 5
  %22 = load i16, ptr %21, align 4, !tbaa !186
  %23 = zext i16 %22 to i32
  %24 = and i32 %7, %23
  %25 = icmp eq i32 %24, %7
  br i1 %25, label %26, label %80

26:                                               ; preds = %17
  %27 = and i32 %11, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %26
  %30 = sitofp i32 %2 to float
  %31 = tail call fastcc float @give_stripelem_index(ptr noundef nonnull %1, float noundef %30) #31
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %34 = load i32, ptr %33, align 8, !tbaa !134
  %35 = add nsw i32 %34, %32
  %36 = load ptr, ptr %15, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.Strip, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !152
  %39 = getelementptr inbounds %struct.StripProxy, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !160
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %29
  %43 = call fastcc zeroext i8 @seq_proxy_get_fname(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %9, ptr noundef nonnull %4) #31, !range !161
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %80, label %45

45:                                               ; preds = %42
  %46 = call ptr @openanim(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0, ptr noundef null) #32
  %47 = load ptr, ptr %15, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.Strip, ptr %47, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !152
  %50 = getelementptr inbounds %struct.StripProxy, ptr %49, i64 0, i32 2
  store ptr %46, ptr %50, align 8, !tbaa !160
  %51 = icmp eq ptr %46, null
  br i1 %51, label %80, label %52

52:                                               ; preds = %29, %45
  call fastcc void @seq_open_anim_file(ptr noundef nonnull %1) #31
  %53 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = load ptr, ptr %15, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.Strip, ptr %55, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !152
  %58 = getelementptr inbounds %struct.StripProxy, ptr %57, i64 0, i32 3
  %59 = load i16, ptr %58, align 8, !tbaa !153
  %60 = sext i16 %59 to i32
  %61 = call i32 @IMB_anim_index_get_frame_index(ptr noundef %54, i32 noundef %60, i32 noundef %35) #32
  %62 = load ptr, ptr %15, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.Strip, ptr %62, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !152
  %65 = getelementptr inbounds %struct.StripProxy, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !160
  %67 = call ptr @IMB_anim_absolute(ptr noundef %66, i32 noundef %61, i32 noundef 0, i32 noundef 0) #32
  br label %80

68:                                               ; preds = %26
  %69 = call fastcc zeroext i8 @seq_proxy_get_fname(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %9, ptr noundef nonnull %4) #31, !range !161
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = call i32 @BLI_exists(ptr noundef nonnull %4) #32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = call ptr @IMB_loadiffname(ptr noundef nonnull %4, i32 noundef 1, ptr noundef null) #32
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !114
  call fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %79, ptr noundef nonnull %75) #31
  br label %80

80:                                               ; preds = %71, %74, %77, %68, %52, %42, %45, %14, %17, %3
  %81 = phi ptr [ null, %3 ], [ null, %17 ], [ null, %14 ], [ %67, %52 ], [ null, %42 ], [ null, %45 ], [ null, %68 ], [ %75, %77 ], [ null, %74 ], [ null, %71 ]
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %4) #33
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @do_render_strip_uncached(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !365 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call fastcc float @give_stripelem_index(ptr noundef %1, float noundef %2) #31
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %7, 29
  %11 = or i1 %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #33
  br label %52

13:                                               ; preds = %3
  %14 = tail call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef %0, ptr noundef nonnull %1, float poison) #31, !range !161
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #33
  switch i32 %7, label %169 [
    i32 1, label %15
    i32 29, label %30
    i32 8, label %52
    i32 0, label %58
    i32 3, label %92
    i32 2, label %142
    i32 6, label %148
    i32 7, label %160
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %169, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !129
  %22 = sitofp i32 %21 to float
  %23 = fadd float %5, %22
  %24 = tail call fastcc ptr @seq_render_strip_stack(ptr noundef %0, ptr noundef nonnull %16, float noundef %23, i32 noundef 0) #31
  %25 = icmp eq ptr %24, null
  br i1 %25, label %169, label %26

26:                                               ; preds = %19
  %27 = icmp eq i8 %14, 0
  br i1 %27, label %165, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %24) #32
  tail call void @IMB_freeImBuf(ptr noundef nonnull %24) #32
  br label %162

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %32 = load ptr, ptr %31, align 8, !tbaa !249
  %33 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  tail call void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %34, ptr noundef nonnull %1, i8 noundef zeroext 0) #32
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !129
  %37 = sitofp i32 %36 to float
  %38 = load ptr, ptr %32, align 8, !tbaa !366
  %39 = fptosi float %5 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %38, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !111
  %43 = fadd float %42, %37
  %44 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %45 = load ptr, ptr %44, align 8, !tbaa !140
  %46 = tail call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef %45, float noundef %43) #31
  %47 = icmp eq ptr %46, null
  br i1 %47, label %169, label %48

48:                                               ; preds = %30
  %49 = icmp eq i8 %14, 0
  br i1 %49, label %165, label %50

50:                                               ; preds = %48
  %51 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %46) #32
  tail call void @IMB_freeImBuf(ptr noundef nonnull %46) #32
  br label %162

52:                                               ; preds = %12, %13
  %53 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %54 = load i32, ptr %53, align 4, !tbaa !129
  %55 = sitofp i32 %54 to float
  %56 = fadd float %5, %55
  %57 = tail call fastcc ptr @seq_render_effect_strip_impl(ptr noundef %0, ptr noundef nonnull %1, float noundef %56) #31
  br label %162

58:                                               ; preds = %13
  %59 = fptosi float %2 to i32
  %60 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef nonnull %1, i32 noundef %59) #31
  %61 = icmp eq ptr %60, null
  br i1 %61, label %169, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.Strip, ptr %64, i64 0, i32 7
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %65, ptr noundef nonnull %60) #32
  %66 = load ptr, ptr @G, align 8, !tbaa !149
  %67 = getelementptr inbounds %struct.Main, ptr %66, i64 0, i32 2
  %68 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %67) #32
  %69 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 49
  %70 = load i8, ptr %69, align 4, !tbaa !304
  %71 = icmp eq i8 %70, 1
  %72 = select i1 %71, i32 4097, i32 1
  %73 = load ptr, ptr %63, align 8, !tbaa !48
  %74 = getelementptr inbounds %struct.Strip, ptr %73, i64 0, i32 12
  %75 = call ptr @IMB_loadiffname(ptr noundef nonnull %4, i32 noundef %72, ptr noundef nonnull %74) #32
  %76 = icmp eq ptr %75, null
  br i1 %76, label %169, label %77

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.ImBuf, ptr %75, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !101
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ImBuf, ptr %75, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !104
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @imb_freerectImBuf(ptr noundef nonnull %75) #32
  br label %86

86:                                               ; preds = %85, %81, %77
  %87 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !114
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %88, ptr noundef nonnull %75, i8 noundef zeroext 0) #31
  call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef nonnull %1, float noundef %5, ptr noundef nonnull %75) #31
  %89 = getelementptr inbounds %struct.ImBuf, ptr %75, i64 0, i32 2
  %90 = getelementptr inbounds %struct.StripElem, ptr %60, i64 0, i32 1
  %91 = load <2 x i32>, ptr %89, align 8, !tbaa !124
  store <2 x i32> %91, ptr %90, align 4, !tbaa !124
  br label %165

92:                                               ; preds = %13
  tail call fastcc void @seq_open_anim_file(ptr noundef nonnull %1) #31
  %93 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 30
  %94 = load ptr, ptr %93, align 8, !tbaa !49
  %95 = icmp eq ptr %94, null
  br i1 %95, label %140, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 20
  %98 = load i16, ptr %97, align 4, !tbaa !155
  %99 = sext i16 %98 to i32
  tail call void @IMB_anim_set_preseek(ptr noundef nonnull %94, i32 noundef %99) #32
  %100 = load ptr, ptr %93, align 8, !tbaa !49
  %101 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %102 = load i32, ptr %101, align 8, !tbaa !134
  %103 = sitofp i32 %102 to float
  %104 = fadd float %5, %103
  %105 = fptosi float %104 to i32
  %106 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = getelementptr inbounds %struct.Strip, ptr %107, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !152
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.StripProxy, ptr %109, i64 0, i32 3
  %113 = load i16, ptr %112, align 8, !tbaa !153
  %114 = sext i16 %113 to i32
  br label %115

115:                                              ; preds = %96, %111
  %116 = phi i32 [ %114, %111 ], [ 1, %96 ]
  %117 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !117
  %119 = tail call fastcc i32 @seq_rendersize_to_proxysize(i32 noundef %118) #31, !range !364
  %120 = tail call ptr @IMB_anim_absolute(ptr noundef %100, i32 noundef %105, i32 noundef %116, i32 noundef %119) #32
  %121 = icmp eq ptr %120, null
  br i1 %121, label %140, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !114
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %124, ptr noundef nonnull %120, i8 noundef zeroext 0) #31
  %125 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 9
  %126 = load ptr, ptr %125, align 8, !tbaa !101
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 8
  %130 = load ptr, ptr %129, align 8, !tbaa !104
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  tail call void @imb_freerectImBuf(ptr noundef nonnull %120) #32
  br label %133

133:                                              ; preds = %132, %128, %122
  %134 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 2
  %135 = load ptr, ptr %106, align 8, !tbaa !48
  %136 = getelementptr inbounds %struct.Strip, ptr %135, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !147
  %138 = getelementptr inbounds %struct.StripElem, ptr %137, i64 0, i32 1
  %139 = load <2 x i32>, ptr %134, align 8, !tbaa !124
  store <2 x i32> %139, ptr %138, align 4, !tbaa !124
  br label %140

140:                                              ; preds = %115, %133, %92
  %141 = phi ptr [ %120, %133 ], [ null, %115 ], [ null, %92 ]
  tail call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef nonnull %1, float noundef %5, ptr noundef %141) #31
  br label %162

142:                                              ; preds = %13
  %143 = tail call fastcc ptr @seq_render_scene_strip(ptr noundef %0, ptr noundef nonnull %1, float noundef %5) #31
  %144 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !112
  %146 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !114
  tail call void @BKE_animsys_evaluate_all_animation(ptr noundef %145, ptr noundef %147, float noundef %2) #32
  tail call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef nonnull %1, float noundef %5, ptr noundef %143) #31
  br label %162

148:                                              ; preds = %13
  %149 = tail call fastcc ptr @seq_render_movieclip_strip(ptr noundef %0, ptr noundef nonnull %1, float noundef %5) #31
  %150 = icmp eq ptr %149, null
  br i1 %150, label %169, label %151

151:                                              ; preds = %148
  %152 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %149) #32
  tail call void @IMB_freeImBuf(ptr noundef nonnull %149) #32
  %153 = getelementptr inbounds %struct.ImBuf, ptr %152, i64 0, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !101
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !114
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %158, ptr noundef nonnull %152, i8 noundef zeroext 0) #31
  br label %159

159:                                              ; preds = %156, %151
  tail call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef nonnull %1, float noundef %5, ptr noundef nonnull %152) #31
  br label %165

160:                                              ; preds = %13
  %161 = tail call fastcc ptr @seq_render_mask_strip(ptr noundef %0, ptr noundef nonnull %1, float noundef %5) #31
  tail call fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef nonnull %1, float noundef %5, ptr noundef %161) #31
  br label %162

162:                                              ; preds = %50, %28, %160, %142, %140, %52
  %163 = phi ptr [ %161, %160 ], [ %143, %142 ], [ %141, %140 ], [ %57, %52 ], [ %29, %28 ], [ %51, %50 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %86, %48, %26, %159, %162
  %166 = phi ptr [ %163, %162 ], [ %75, %86 ], [ %46, %48 ], [ %24, %26 ], [ %152, %159 ]
  %167 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !114
  call fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %168, ptr noundef nonnull %166) #31
  br label %169

169:                                              ; preds = %58, %15, %62, %30, %19, %148, %13, %165, %162
  %170 = phi ptr [ %166, %165 ], [ null, %162 ], [ null, %13 ], [ null, %148 ], [ null, %19 ], [ null, %30 ], [ null, %62 ], [ null, %15 ], [ null, %58 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #33
  ret ptr %170
}

; Function Attrs: optsize
declare void @BKE_sequencer_preprocessed_cache_put(ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_preprocess(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !368 {
  %7 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = tail call ptr @IMB_makeSingleUser(ptr noundef %3) #32
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !50
  switch i32 %16, label %17 [
    i32 3, label %19
    i32 6, label %19
  ]

17:                                               ; preds = %14
  tail call void @IMB_filtery(ptr noundef %9) #32
  %18 = load i32, ptr %10, align 8, !tbaa !142
  br label %19

19:                                               ; preds = %14, %14, %17, %6
  %20 = phi i32 [ %11, %14 ], [ %11, %14 ], [ %18, %17 ], [ %11, %6 ]
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %181, label %23

23:                                               ; preds = %19
  %24 = icmp eq i8 %4, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !117
  %28 = tail call fastcc double @seq_rendersize_to_scale_factor(i32 noundef %27) #31
  %29 = fcmp une double %28, 1.000000e+00
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !106
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, %28
  %35 = fptoui double %34 to i32
  %36 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !107
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, %28
  %40 = fptoui double %39 to i32
  %41 = tail call ptr @IMB_scalefastImBuf(ptr noundef %9, i32 noundef %35, i32 noundef %40) #32
  %42 = load i32, ptr %10, align 8, !tbaa !142
  br label %43

43:                                               ; preds = %25, %30, %23
  %44 = phi i32 [ %20, %25 ], [ %42, %30 ], [ %20, %23 ]
  %45 = and i32 %44, 131072
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.Strip, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !317
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load <2 x i32>, ptr %51, align 4
  %55 = getelementptr inbounds i8, ptr %51, i64 8
  %56 = load <2 x i32>, ptr %55, align 4
  br label %57

57:                                               ; preds = %53, %47, %43
  %58 = phi <2 x i32> [ %54, %53 ], [ zeroinitializer, %47 ], [ zeroinitializer, %43 ]
  %59 = phi <2 x i32> [ %56, %53 ], [ zeroinitializer, %47 ], [ zeroinitializer, %43 ]
  %60 = and i32 %44, 65536
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.Strip, ptr %64, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !318
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load <2 x i32>, ptr %66, align 4
  br label %70

70:                                               ; preds = %68, %62, %57
  %71 = phi <2 x i32> [ %69, %68 ], [ zeroinitializer, %62 ], [ zeroinitializer, %57 ]
  %72 = icmp eq i8 %5, 0
  br i1 %72, label %129, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 33
  %75 = load i32, ptr %74, align 4, !tbaa !200
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !115
  %80 = sitofp i32 %79 to double
  %81 = sitofp i32 %75 to double
  %82 = fdiv double %80, %81
  br label %83

83:                                               ; preds = %73, %77
  %84 = phi double [ %82, %77 ], [ 1.000000e+00, %73 ]
  %85 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 34
  %86 = load i32, ptr %85, align 8, !tbaa !201
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %90 = load i32, ptr %89, align 4, !tbaa !116
  %91 = sitofp i32 %90 to double
  %92 = sitofp i32 %86 to double
  %93 = fdiv double %91, %92
  br label %94

94:                                               ; preds = %83, %88
  %95 = phi double [ %93, %88 ], [ 1.000000e+00, %83 ]
  %96 = sitofp <2 x i32> %71 to <2 x double>
  %97 = insertelement <2 x double> poison, double %84, i64 0
  %98 = insertelement <2 x double> %97, double %95, i64 1
  %99 = fmul <2 x double> %98, %96
  %100 = fptosi <2 x double> %99 to <2 x i32>
  %101 = select i1 %61, <2 x i32> %71, <2 x i32> %100
  br i1 %46, label %113, label %102

102:                                              ; preds = %94
  %103 = sitofp <2 x i32> %59 to <2 x double>
  %104 = insertelement <2 x double> poison, double %84, i64 0
  %105 = shufflevector <2 x double> %104, <2 x double> poison, <2 x i32> zeroinitializer
  %106 = fmul <2 x double> %105, %103
  %107 = fptosi <2 x double> %106 to <2 x i32>
  %108 = sitofp <2 x i32> %58 to <2 x double>
  %109 = insertelement <2 x double> poison, double %95, i64 0
  %110 = shufflevector <2 x double> %109, <2 x double> poison, <2 x i32> zeroinitializer
  %111 = fmul <2 x double> %110, %108
  %112 = fptosi <2 x double> %111 to <2 x i32>
  br label %113

113:                                              ; preds = %94, %102
  %114 = phi <2 x i32> [ %112, %102 ], [ %58, %94 ]
  %115 = phi <2 x i32> [ %107, %102 ], [ %59, %94 ]
  %116 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !106
  %118 = extractelement <2 x i32> %115, i64 0
  %119 = shufflevector <2 x i32> %115, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %120 = add <2 x i32> %115, %119
  %121 = extractelement <2 x i32> %120, i64 0
  %122 = sub i32 %117, %121
  %123 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %124 = load i32, ptr %123, align 4, !tbaa !107
  %125 = extractelement <2 x i32> %114, i64 0
  %126 = extractelement <2 x i32> %114, i64 1
  %127 = add i32 %125, %126
  %128 = sub i32 %124, %127
  br i1 %61, label %153, label %143

129:                                              ; preds = %70
  %130 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !106
  %132 = extractelement <2 x i32> %59, i64 0
  %133 = shufflevector <2 x i32> %59, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %134 = add <2 x i32> %59, %133
  %135 = extractelement <2 x i32> %134, i64 0
  %136 = sub i32 %131, %135
  %137 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %138 = load i32, ptr %137, align 4, !tbaa !107
  %139 = extractelement <2 x i32> %58, i64 0
  %140 = extractelement <2 x i32> %58, i64 1
  %141 = add i32 %139, %140
  %142 = sub i32 %138, %141
  br i1 %61, label %153, label %148

143:                                              ; preds = %113
  %144 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !115
  %146 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %147 = load i32, ptr %146, align 4, !tbaa !116
  br label %153

148:                                              ; preds = %129
  %149 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 33
  %150 = load i32, ptr %149, align 4, !tbaa !200
  %151 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 34
  %152 = load i32, ptr %151, align 8, !tbaa !201
  br label %153

153:                                              ; preds = %129, %113, %143, %148
  %154 = phi i32 [ %128, %143 ], [ %142, %148 ], [ %128, %113 ], [ %142, %129 ]
  %155 = phi i32 [ %127, %143 ], [ %141, %148 ], [ %127, %113 ], [ %141, %129 ]
  %156 = phi i32 [ %124, %143 ], [ %138, %148 ], [ %124, %113 ], [ %138, %129 ]
  %157 = phi i32 [ %122, %143 ], [ %136, %148 ], [ %122, %113 ], [ %136, %129 ]
  %158 = phi i32 [ %121, %143 ], [ %135, %148 ], [ %121, %113 ], [ %135, %129 ]
  %159 = phi i32 [ %117, %143 ], [ %131, %148 ], [ %117, %113 ], [ %131, %129 ]
  %160 = phi i32 [ %126, %143 ], [ %140, %148 ], [ %126, %113 ], [ %140, %129 ]
  %161 = phi i32 [ %118, %143 ], [ %132, %148 ], [ %118, %113 ], [ %132, %129 ]
  %162 = phi i32 [ %145, %143 ], [ %150, %148 ], [ %122, %113 ], [ %136, %129 ]
  %163 = phi i32 [ %147, %143 ], [ %152, %148 ], [ %128, %113 ], [ %142, %129 ]
  %164 = phi <2 x i32> [ %101, %143 ], [ %71, %148 ], [ %101, %113 ], [ %71, %129 ]
  %165 = icmp slt i32 %155, %156
  br i1 %165, label %166, label %174

166:                                              ; preds = %153
  %167 = icmp slt i32 %158, %159
  %168 = extractelement <2 x i32> %164, i64 0
  %169 = icmp slt i32 %168, %162
  %170 = select i1 %167, i1 %169, i1 false
  %171 = extractelement <2 x i32> %164, i64 1
  %172 = icmp slt i32 %171, %163
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %175, label %174

174:                                              ; preds = %166, %153
  tail call fastcc void @make_black_ibuf(ptr noundef nonnull %9) #31
  br label %181

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %177 = load ptr, ptr %176, align 8, !tbaa !101
  %178 = icmp eq ptr %177, null
  %179 = select i1 %178, i32 1, i32 32
  %180 = tail call ptr @IMB_allocImBuf(i32 noundef %162, i32 noundef %163, i8 noundef zeroext 32, i32 noundef %179) #32
  tail call void @IMB_rectcpy(ptr noundef %180, ptr noundef nonnull %9, i32 noundef %168, i32 noundef %171, i32 noundef %161, i32 noundef %160, i32 noundef %157, i32 noundef %154) #32
  tail call fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %8, ptr noundef %180) #31
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #32
  br label %181

181:                                              ; preds = %174, %175, %19
  %182 = phi ptr [ %9, %19 ], [ %9, %174 ], [ %180, %175 ]
  %183 = load i32, ptr %10, align 8, !tbaa !142
  %184 = and i32 %183, 2048
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  tail call void @IMB_flipx(ptr noundef %182) #32
  %187 = load i32, ptr %10, align 8, !tbaa !142
  br label %188

188:                                              ; preds = %186, %181
  %189 = phi i32 [ %187, %186 ], [ %183, %181 ]
  %190 = and i32 %189, 4096
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  tail call void @IMB_flipy(ptr noundef %182) #32
  br label %193

193:                                              ; preds = %192, %188
  %194 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 17
  %195 = load float, ptr %194, align 8, !tbaa !233
  %196 = fcmp une float %195, 1.000000e+00
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  tail call void @IMB_saturation(ptr noundef %182, float noundef %195) #32
  br label %198

198:                                              ; preds = %197, %193
  %199 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 18
  %200 = load float, ptr %199, align 4, !tbaa !230
  %201 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %202 = load i32, ptr %201, align 8, !tbaa !231
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %206 = load float, ptr %205, align 4, !tbaa !232
  %207 = fdiv float %206, 1.000000e+02
  %208 = fmul float %200, %207
  br label %209

209:                                              ; preds = %204, %198
  %210 = phi float [ %208, %204 ], [ %200, %198 ]
  %211 = load i32, ptr %10, align 8, !tbaa !142
  %212 = and i32 %211, 8192
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !101
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %8, ptr noundef nonnull %182, i8 noundef zeroext 1) #31
  br label %219

219:                                              ; preds = %218, %214
  %220 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 8
  %221 = load ptr, ptr %220, align 8, !tbaa !104
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %219
  tail call void @imb_freerectImBuf(ptr noundef nonnull %182) #32
  br label %224

224:                                              ; preds = %219, %223, %209
  %225 = fcmp une float %210, 1.000000e+00
  br i1 %225, label %226, label %227

226:                                              ; preds = %224
  tail call fastcc void @multibuf(ptr noundef %182, float noundef %210) #31
  br label %227

227:                                              ; preds = %226, %224
  %228 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !106
  %230 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %231 = load i32, ptr %230, align 8, !tbaa !115
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 3
  %235 = load i32, ptr %234, align 4, !tbaa !107
  %236 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %237 = load i32, ptr %236, align 4, !tbaa !116
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %254, label %239

239:                                              ; preds = %233, %227
  %240 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 47
  %241 = load i32, ptr %240, align 8, !tbaa !369
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  %244 = shl i32 %231, 16
  %245 = ashr exact i32 %244, 16
  %246 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %247 = load i32, ptr %246, align 4, !tbaa !116
  %248 = shl i32 %247, 16
  %249 = ashr exact i32 %248, 16
  br i1 %243, label %252, label %250

250:                                              ; preds = %239
  %251 = tail call ptr @IMB_scaleImBuf(ptr noundef nonnull %182, i32 noundef %245, i32 noundef %249) #32
  br label %254

252:                                              ; preds = %239
  %253 = tail call ptr @IMB_scalefastImBuf(ptr noundef nonnull %182, i32 noundef %245, i32 noundef %249) #32
  br label %254

254:                                              ; preds = %250, %252, %233
  %255 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %256 = load ptr, ptr %255, align 8, !tbaa !234
  %257 = icmp eq ptr %256, null
  br i1 %257, label %263, label %258

258:                                              ; preds = %254
  %259 = fptosi float %2 to i32
  %260 = tail call ptr @BKE_sequence_modifier_apply_stack(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %182, i32 noundef %259) #32
  %261 = icmp eq ptr %260, %182
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  tail call void @IMB_freeImBuf(ptr noundef nonnull %182) #32
  br label %263

263:                                              ; preds = %258, %262, %254
  %264 = phi ptr [ %182, %254 ], [ %260, %262 ], [ %182, %258 ]
  ret ptr %264
}

; Function Attrs: optsize
declare void @BKE_sequencer_cache_put(ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @seq_rendersize_to_proxysize(i32 noundef %0) unnamed_addr #7 !PGOFuncName !370 {
  %2 = icmp sgt i32 %0, 99
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 99
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %0, 74
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %0, 49
  %9 = select i1 %8, i32 2, i32 1
  br label %10

10:                                               ; preds = %7, %5, %3, %1
  %11 = phi i32 [ 0, %1 ], [ 8, %3 ], [ 4, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @IMB_anim_index_get_frame_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_effect_strip_impl(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !371 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.SeqEffectHandle, align 8
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #33
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %6, ptr noundef %1) #32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #33
  %11 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %12 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  store ptr %14, ptr %8, align 16, !tbaa !34
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 35
  %19 = load ptr, ptr %18, align 8, !tbaa !141
  %20 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  store ptr %19, ptr %20, align 16, !tbaa !34
  %21 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !372
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !373
  %27 = icmp ne ptr %26, null
  %28 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %32, label %137

32:                                               ; preds = %24, %3
  %33 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !142
  %35 = and i32 %34, 4194304
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !374
  call void %39(ptr noundef nonnull %1, float noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #32
  %40 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 47
  %41 = load i32, ptr %40, align 8, !tbaa !369
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  %44 = load float, ptr %4, align 4, !tbaa !111
  br i1 %43, label %47, label %45

45:                                               ; preds = %37
  %46 = load float, ptr %5, align 4, !tbaa !111
  br label %63

47:                                               ; preds = %37
  store float %44, ptr %5, align 4, !tbaa !111
  br label %63

48:                                               ; preds = %32
  %49 = call ptr @id_data_find_fcurve(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef null) #32
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = call float @evaluate_fcurve(ptr noundef nonnull %49, float noundef %2) #32
  store float %52, ptr %5, align 4, !tbaa !111
  store float %52, ptr %4, align 4, !tbaa !111
  %53 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 47
  %54 = load i32, ptr %53, align 8, !tbaa !369
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = fadd float %2, 5.000000e-01
  %59 = call float @evaluate_fcurve(ptr noundef nonnull %49, float noundef %58) #32
  store float %59, ptr %5, align 4, !tbaa !111
  br label %63

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 31
  %62 = load float, ptr %61, align 8, !tbaa !375
  store float %62, ptr %5, align 4, !tbaa !111
  store float %62, ptr %4, align 4, !tbaa !111
  br label %63

63:                                               ; preds = %45, %60, %57, %51, %47
  %64 = phi float [ %62, %60 ], [ %59, %57 ], [ %52, %51 ], [ %46, %45 ], [ %44, %47 ]
  %65 = phi float [ %62, %60 ], [ %52, %57 ], [ %52, %51 ], [ %44, %45 ], [ %44, %47 ]
  %66 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !376
  %68 = call i32 %67(ptr noundef nonnull %1, float noundef %65, float noundef %64) #32
  switch i32 %68, label %127 [
    i32 -1, label %69
    i32 0, label %74
    i32 1, label %105
    i32 2, label %116
  ]

69:                                               ; preds = %63
  %70 = load ptr, ptr %21, align 8, !tbaa !372
  %71 = load float, ptr %4, align 4, !tbaa !111
  %72 = load float, ptr %5, align 4, !tbaa !111
  %73 = call ptr %70(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2, float noundef %71, float noundef %72, ptr noundef null, ptr noundef null, ptr noundef null) #32
  br label %127

74:                                               ; preds = %63, %82
  %75 = phi i64 [ %83, %82 ], [ 0, %63 ]
  %76 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = call fastcc ptr @seq_render_strip(ptr noundef %0, ptr noundef nonnull %77, float noundef %2) #31
  %81 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %75
  store ptr %80, ptr %81, align 8, !tbaa !34
  br label %82

82:                                               ; preds = %74, %79
  %83 = add nuw nsw i64 %75, 1
  %84 = icmp eq i64 %83, 3
  br i1 %84, label %85, label %74, !llvm.loop !377

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 16, !tbaa !34
  %87 = icmp ne ptr %86, null
  %88 = load ptr, ptr %12, align 8
  %89 = icmp ne ptr %88, null
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %127

91:                                               ; preds = %85
  %92 = load i8, ptr %6, align 8, !tbaa !378
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load float, ptr %4, align 4, !tbaa !111
  %96 = load float, ptr %5, align 4, !tbaa !111
  %97 = load ptr, ptr %11, align 16, !tbaa !34
  %98 = call fastcc ptr @seq_render_effect_execute_threaded(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %95, float noundef %96, ptr noundef nonnull %86, ptr noundef nonnull %88, ptr noundef %97) #31
  br label %127

99:                                               ; preds = %91
  %100 = load ptr, ptr %21, align 8, !tbaa !372
  %101 = load float, ptr %4, align 4, !tbaa !111
  %102 = load float, ptr %5, align 4, !tbaa !111
  %103 = load ptr, ptr %11, align 16, !tbaa !34
  %104 = call ptr %100(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %101, float noundef %102, ptr noundef nonnull %86, ptr noundef nonnull %88, ptr noundef %103) #32
  br label %127

105:                                              ; preds = %63
  %106 = icmp eq ptr %14, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %105
  %108 = call fastcc ptr @seq_render_strip(ptr noundef nonnull %0, ptr noundef nonnull %14, float noundef %2) #31
  store ptr %108, ptr %7, align 16, !tbaa !34
  %109 = icmp eq ptr %108, null
  br i1 %109, label %127, label %110

110:                                              ; preds = %107
  %111 = call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef nonnull %0, ptr noundef nonnull %1, float poison) #31, !range !161
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call ptr @IMB_dupImBuf(ptr noundef nonnull %108) #32
  br label %127

115:                                              ; preds = %110
  call void @IMB_refImBuf(ptr noundef nonnull %108) #32
  br label %127

116:                                              ; preds = %63
  %117 = icmp eq ptr %16, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %116
  %119 = call fastcc ptr @seq_render_strip(ptr noundef nonnull %0, ptr noundef nonnull %16, float noundef %2) #31
  store ptr %119, ptr %12, align 8, !tbaa !34
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef nonnull %0, ptr noundef nonnull %1, float poison) #31, !range !161
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call ptr @IMB_dupImBuf(ptr noundef nonnull %119) #32
  br label %127

126:                                              ; preds = %121
  call void @IMB_refImBuf(ptr noundef nonnull %119) #32
  br label %127

127:                                              ; preds = %116, %105, %118, %126, %124, %107, %115, %113, %85, %99, %94, %63, %69
  %128 = phi ptr [ null, %63 ], [ %125, %124 ], [ %119, %126 ], [ null, %118 ], [ %114, %113 ], [ %108, %115 ], [ null, %107 ], [ %98, %94 ], [ %104, %99 ], [ null, %85 ], [ %73, %69 ], [ null, %105 ], [ null, %116 ]
  br label %129

129:                                              ; preds = %127, %129
  %130 = phi i64 [ 0, %127 ], [ %133, %129 ]
  %131 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  call void @IMB_freeImBuf(ptr noundef %132) #32
  %133 = add nuw nsw i64 %130, 1
  %134 = icmp eq i64 %133, 3
  br i1 %134, label %135, label %129, !llvm.loop !379

135:                                              ; preds = %129
  %136 = icmp eq ptr %128, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %135, %24
  %138 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %139 = load i32, ptr %138, align 8, !tbaa !115
  %140 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %141 = load i32, ptr %140, align 4, !tbaa !116
  %142 = call ptr @IMB_allocImBuf(i32 noundef %139, i32 noundef %141, i8 noundef zeroext 32, i32 noundef 1) #32
  br label %143

143:                                              ; preds = %137, %135
  %144 = phi ptr [ %128, %135 ], [ %142, %137 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #33
  ret ptr %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_to_ibuf_still(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !380 {
  %5 = fcmp oeq float %2, 0.000000e+00
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !131
  %9 = add nsw i32 %8, -1
  %10 = sitofp i32 %9 to float
  %11 = fcmp oeq float %10, %2
  br i1 %11, label %12, label %34

12:                                               ; preds = %6, %4
  %13 = tail call ptr @IMB_dupImBuf(ptr noundef %3) #32
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  tail call fastcc void @sequencer_imbuf_assign_spaces(ptr noundef %17, ptr noundef nonnull %13) #31
  br label %18

18:                                               ; preds = %15, %12
  br i1 %5, label %19, label %23

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !129
  %22 = sitofp i32 %21 to float
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef %1, float noundef %22, i32 noundef 2, ptr noundef %13) #32
  br label %23

23:                                               ; preds = %19, %18
  %24 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !131
  %26 = add nsw i32 %25, -1
  %27 = sitofp i32 %26 to float
  %28 = fcmp oeq float %27, %2
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !129
  %32 = sitofp i32 %31 to float
  tail call void @BKE_sequencer_cache_put(ptr noundef %0, ptr noundef nonnull %1, float noundef %32, i32 noundef 3, ptr noundef %13) #32
  br label %33

33:                                               ; preds = %29, %23
  tail call void @IMB_freeImBuf(ptr noundef %13) #32
  br label %34

34:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: optsize
declare void @IMB_anim_set_preseek(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_scene_strip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !381 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.RenderResult, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %7 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !382
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !383
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 93
  %14 = load i8, ptr %13, align 2, !tbaa !384
  %15 = and i8 %14, 1
  %16 = icmp ne i8 %15, 0
  br label %17

17:                                               ; preds = %3, %10
  %18 = phi i1 [ %16, %10 ], [ false, %3 ]
  %19 = tail call i32 @BLI_thread_is_main() #32
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  %22 = icmp eq ptr %21, null
  br i1 %22, label %208, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !136
  %26 = sitofp i32 %25 to float
  %27 = fadd float %26, %2
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %29 = load i32, ptr %28, align 8, !tbaa !134
  %30 = sitofp i32 %29 to float
  %31 = fadd float %27, %30
  %32 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 46
  %33 = load i32, ptr %32, align 4, !tbaa !385
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 16
  %38 = load i8, ptr %37, align 2, !tbaa !386
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !387
  %43 = icmp eq ptr %42, null
  br label %44

44:                                               ; preds = %40, %36, %23
  %45 = phi i1 [ true, %36 ], [ true, %23 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !250
  %48 = sitofp i32 %47 to float
  %49 = fptosi float %31 to i32
  store i32 %49, ptr %46, align 8, !tbaa !250
  %50 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 27
  %51 = load ptr, ptr %50, align 8, !tbaa !388
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef nonnull %21) #32
  %55 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !389
  %57 = icmp eq ptr %56, null
  %58 = select i1 %45, i1 %57, i1 false
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %32, align 4, !tbaa !385
  br label %63

61:                                               ; preds = %53
  %62 = fptosi float %48 to i32
  store i32 %62, ptr %46, align 8, !tbaa !250
  br label %208

63:                                               ; preds = %59, %44
  %64 = phi i32 [ %60, %59 ], [ %33, %44 ]
  %65 = phi ptr [ %56, %59 ], [ %51, %44 ]
  %66 = and i32 %64, 1
  %67 = and i32 %64, -2
  store i32 %67, ptr %32, align 4, !tbaa !385
  %68 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %68, i64 16, i1 false), !tbaa.struct !166
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %68) #31
  %69 = load ptr, ptr @sequencer_view3d_cb, align 8, !tbaa !34
  %70 = icmp ne ptr %69, null
  %71 = select i1 %70, i1 %18, i1 false
  %72 = icmp ne ptr %65, null
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp ne i32 %19, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %118

76:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, ptr noundef nonnull align 16 dereferenceable(256) @__const.seq_render_scene_strip.err_out, i64 256, i1 false)
  %77 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 33
  %78 = load i32, ptr %77, align 4, !tbaa !200
  %79 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 30
  %80 = load i16, ptr %79, align 2, !tbaa !199
  %81 = sext i16 %80 to i32
  %82 = mul nsw i32 %78, %81
  %83 = sdiv i32 %82, 100
  %84 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 34
  %85 = load i32, ptr %84, align 8, !tbaa !201
  %86 = mul nsw i32 %85, %81
  %87 = sdiv i32 %86, 100
  %88 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !114
  %90 = getelementptr inbounds %struct.Scene, ptr %89, i64 0, i32 22, i32 91
  %91 = load i8, ptr %90, align 8, !tbaa !390
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  store i8 3, ptr %90, align 8, !tbaa !390
  br label %94

94:                                               ; preds = %93, %76
  %95 = load ptr, ptr %0, align 8, !tbaa !120
  %96 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !112
  %98 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 12
  %99 = load i32, ptr %98, align 8, !tbaa !391
  tail call void @BKE_scene_update_for_newframe(ptr noundef %95, ptr noundef %97, ptr noundef nonnull %21, i32 noundef %99) #32
  %100 = load ptr, ptr @sequencer_view3d_cb, align 8, !tbaa !34
  %101 = load ptr, ptr %88, align 8, !tbaa !114
  %102 = getelementptr inbounds %struct.Scene, ptr %101, i64 0, i32 22, i32 91
  %103 = load i8, ptr %102, align 8, !tbaa !390
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.Scene, ptr %101, i64 0, i32 22, i32 93
  %106 = load i8, ptr %105, align 2, !tbaa !384
  %107 = lshr i8 %106, 2
  %108 = and i8 %107, 1
  %109 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 53
  %110 = load i16, ptr %109, align 8, !tbaa !392
  %111 = sext i16 %110 to i32
  %112 = call ptr %100(ptr noundef nonnull %21, ptr noundef nonnull %65, i32 noundef %83, i32 noundef %87, i32 noundef 1, i32 noundef %104, i8 noundef zeroext %108, i8 noundef zeroext 1, i32 noundef %111, ptr noundef nonnull %5) #32
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %94
  %115 = load ptr, ptr @stderr, align 8, !tbaa !34
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.42, ptr noundef nonnull %5) #35
  br label %117

117:                                              ; preds = %114, %94
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #33
  br label %195

118:                                              ; preds = %63
  %119 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4
  %120 = tail call ptr @RE_GetRender(ptr noundef nonnull %119) #32
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #33
  %121 = icmp eq i32 %19, 0
  %122 = or i1 %9, %121
  %123 = icmp ne i8 %8, 0
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %118
  %126 = icmp eq ptr %120, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  %128 = tail call ptr @RE_NewRender(ptr noundef nonnull %119) #32
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi ptr [ %128, %127 ], [ %120, %125 ]
  %131 = load ptr, ptr %0, align 8, !tbaa !120
  %132 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !112
  %134 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 12
  %135 = load i32, ptr %134, align 8, !tbaa !391
  tail call void @BKE_scene_update_for_newframe(ptr noundef %131, ptr noundef %133, ptr noundef nonnull %21, i32 noundef %135) #32
  %136 = load ptr, ptr %132, align 8, !tbaa !112
  %137 = load i32, ptr %134, align 8, !tbaa !391
  tail call void @RE_BlenderFrame(ptr noundef %130, ptr noundef %136, ptr noundef nonnull %21, ptr noundef null, ptr noundef %65, i32 noundef %137, i32 noundef %49, i8 noundef zeroext 0) #32
  store i8 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !382
  br label %138

138:                                              ; preds = %118, %129
  %139 = phi ptr [ %130, %129 ], [ %120, %118 ]
  call void @RE_AcquireResultImage(ptr noundef %139, ptr noundef nonnull %6) #32
  %140 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !393
  %142 = icmp eq ptr %141, null
  br i1 %142, label %175, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !395
  %146 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !396
  %148 = call ptr @IMB_allocImBuf(i32 noundef %145, i32 noundef %147, i8 noundef zeroext 32, i32 noundef 32) #32
  %149 = getelementptr inbounds %struct.ImBuf, ptr %148, i64 0, i32 9
  %150 = load ptr, ptr %149, align 8, !tbaa !101
  %151 = load ptr, ptr %140, align 8, !tbaa !393
  %152 = load i32, ptr %144, align 8, !tbaa !395
  %153 = sext i32 %152 to i64
  %154 = shl nsw i64 %153, 4
  %155 = load i32, ptr %146, align 4, !tbaa !396
  %156 = sext i32 %155 to i64
  %157 = mul i64 %154, %156
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %150, ptr align 4 %151, i64 %157, i1 false)
  %158 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 8
  %159 = load ptr, ptr %158, align 8, !tbaa !397
  %160 = icmp eq ptr %159, null
  br i1 %160, label %172, label %161

161:                                              ; preds = %143
  %162 = call zeroext i8 @addzbuffloatImBuf(ptr noundef nonnull %148) #32
  %163 = getelementptr inbounds %struct.ImBuf, ptr %148, i64 0, i32 17
  %164 = load ptr, ptr %163, align 8, !tbaa !398
  %165 = load ptr, ptr %158, align 8, !tbaa !397
  %166 = load i32, ptr %144, align 8, !tbaa !395
  %167 = sext i32 %166 to i64
  %168 = shl nsw i64 %167, 2
  %169 = load i32, ptr %146, align 4, !tbaa !396
  %170 = sext i32 %169 to i64
  %171 = mul i64 %168, %170
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %164, ptr align 4 %165, i64 %171, i1 false)
  br label %172

172:                                              ; preds = %161, %143
  %173 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !114
  call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %174, ptr noundef nonnull %148, i8 noundef zeroext 0) #31
  br label %193

175:                                              ; preds = %138
  %176 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !399
  %178 = icmp eq ptr %177, null
  br i1 %178, label %193, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !395
  %182 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 3
  %183 = load i32, ptr %182, align 4, !tbaa !396
  %184 = call ptr @IMB_allocImBuf(i32 noundef %181, i32 noundef %183, i8 noundef zeroext 32, i32 noundef 1) #32
  %185 = getelementptr inbounds %struct.ImBuf, ptr %184, i64 0, i32 8
  %186 = load ptr, ptr %185, align 8, !tbaa !104
  %187 = load ptr, ptr %176, align 8, !tbaa !399
  %188 = load i32, ptr %180, align 8, !tbaa !395
  %189 = shl nsw i32 %188, 2
  %190 = load i32, ptr %182, align 4, !tbaa !396
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %186, ptr align 4 %187, i64 %192, i1 false)
  br label %193

193:                                              ; preds = %175, %179, %172
  %194 = phi ptr [ %148, %172 ], [ %184, %179 ], [ null, %175 ]
  call void @RE_ReleaseResultImage(ptr noundef %139) #32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #33
  br label %195

195:                                              ; preds = %193, %117
  %196 = phi ptr [ %112, %117 ], [ %194, %193 ]
  %197 = load i32, ptr %32, align 4, !tbaa !385
  %198 = or i32 %197, %66
  store i32 %198, ptr %32, align 4, !tbaa !385
  %199 = fptosi float %48 to i32
  store i32 %199, ptr %46, align 8, !tbaa !250
  %200 = fcmp une float %31, %48
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load ptr, ptr %0, align 8, !tbaa !120
  %203 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !112
  %205 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 12
  %206 = load i32, ptr %205, align 8, !tbaa !391
  call void @BKE_scene_update_for_newframe(ptr noundef %202, ptr noundef %204, ptr noundef nonnull %21, i32 noundef %206) #32
  br label %207

207:                                              ; preds = %201, %195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !166
  br label %208

208:                                              ; preds = %17, %207, %61
  %209 = phi ptr [ null, %61 ], [ %196, %207 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret ptr %209
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_all_animation(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_movieclip_strip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !400 {
  %4 = alloca %struct.MovieClipUser, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #33
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %3
  store i64 0, ptr %4, align 8
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %13 = load i32, ptr %12, align 8, !tbaa !134
  %14 = sitofp i32 %13 to float
  %15 = fadd float %14, %2
  %16 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !401
  %18 = sitofp i32 %17 to float
  %19 = fadd float %15, %18
  %20 = fptosi float %19 to i32
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %4, i32 noundef %20) #32
  %21 = getelementptr inbounds %struct.MovieClipUser, ptr %4, i64 0, i32 1
  store i16 0, ptr %21, align 4, !tbaa !410
  %22 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !117
  %24 = call fastcc i32 @seq_rendersize_to_proxysize(i32 noundef %23) #31, !range !364
  %25 = add nsw i32 %24, -1
  %26 = icmp ult i32 %25, 8
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = trunc i32 %25 to i8
  %29 = lshr i8 -117, %28
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = zext nneg i32 %25 to i64
  %34 = getelementptr inbounds [8 x i16], ptr @switch.table.seq_render_movieclip_strip, i64 0, i64 %33
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %21, align 4, !tbaa !410
  br label %36

36:                                               ; preds = %27, %11, %32
  %37 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 23
  %38 = load i32, ptr %37, align 4, !tbaa !412
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.MovieClipUser, ptr %4, i64 0, i32 2
  store i16 1, ptr %42, align 2, !tbaa !413
  br label %43

43:                                               ; preds = %41, %36
  %44 = and i32 %38, 2
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %8, align 8, !tbaa !156
  br i1 %45, label %49, label %47

47:                                               ; preds = %43
  %48 = call ptr @BKE_movieclip_get_stable_ibuf(ptr noundef %46, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #32
  br label %51

49:                                               ; preds = %43
  %50 = call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %46, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1) #32
  br label %51

51:                                               ; preds = %47, %49, %3
  %52 = phi ptr [ null, %3 ], [ %48, %47 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #33
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_mask_strip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !414 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = tail call fastcc ptr @seq_render_mask(ptr noundef %0, ptr noundef %10, float noundef %2, i8 noundef zeroext %8) #31
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_effect_execute_threaded(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !PGOFuncName !415 {
  %10 = alloca %struct.RenderEffectInitData, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #33
  %11 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !416
  %13 = tail call ptr %12(ptr noundef %1, ptr noundef %6, ptr noundef %7, ptr noundef %8) #32
  store ptr %0, ptr %10, align 8, !tbaa !417
  %14 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !419
  %15 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 2
  store ptr %2, ptr %15, align 8, !tbaa !420
  %16 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 3
  store float %3, ptr %16, align 8, !tbaa !421
  %17 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 4
  store float %4, ptr %17, align 4, !tbaa !422
  %18 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 5
  store float %5, ptr %18, align 8, !tbaa !423
  %19 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 6
  store ptr %6, ptr %19, align 8, !tbaa !424
  %20 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 7
  store ptr %7, ptr %20, align 8, !tbaa !425
  %21 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 8
  store ptr %8, ptr %21, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.RenderEffectInitData, ptr %10, i64 0, i32 9
  store ptr %13, ptr %22, align 8, !tbaa !427
  %23 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !107
  call void @IMB_processor_apply_threaded(i32 noundef %24, i32 noundef 80, ptr noundef nonnull %10, ptr noundef nonnull @render_effect_execute_init_handle, ptr noundef nonnull @render_effect_execute_do_thread) #32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #33
  ret ptr %13
}

; Function Attrs: optsize
declare void @IMB_refImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @render_effect_execute_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #8 !PGOFuncName !428 {
  %5 = load <2 x ptr>, ptr %3, align 8, !tbaa !34
  store <2 x ptr> %5, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !420
  %8 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !429
  %9 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 3
  %11 = load <2 x float>, ptr %9, align 8, !tbaa !111
  store <2 x float> %11, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 5
  %13 = load float, ptr %12, align 8, !tbaa !423
  %14 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 5
  store float %13, ptr %14, align 8, !tbaa !431
  %15 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 6
  %16 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 6
  %17 = load <2 x ptr>, ptr %15, align 8, !tbaa !34
  store <2 x ptr> %17, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.RenderEffectInitData, ptr %3, i64 0, i32 8
  %19 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 8
  %20 = load <2 x ptr>, ptr %18, align 8, !tbaa !34
  store <2 x ptr> %20, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 10
  store i32 %1, ptr %21, align 8, !tbaa !432
  %22 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 11
  store i32 %2, ptr %22, align 4, !tbaa !433
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @render_effect_execute_do_thread(ptr nocapture noundef readonly %0) #0 !PGOFuncName !434 {
  %2 = load ptr, ptr %0, align 8, !tbaa !435
  %3 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !373
  %5 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !436
  %7 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !429
  %9 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !437
  %11 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 4
  %12 = load float, ptr %11, align 4, !tbaa !438
  %13 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !431
  %15 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !439
  %17 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !440
  %19 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !441
  %21 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !432
  %23 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 4, !tbaa !433
  %25 = getelementptr inbounds %struct.RenderEffectThread, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !442
  tail call void %4(ptr noundef %6, ptr noundef %8, float noundef %10, float noundef %12, float noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %26) #32
  ret ptr null
}

; Function Attrs: optsize
declare i32 @BLI_thread_is_main() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RE_BlenderFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @addzbuffloatImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_stable_ibuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_makeSingleUser(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_filtery(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @seq_rendersize_to_scale_factor(i32 noundef %0) unnamed_addr #7 !PGOFuncName !443 {
  %2 = icmp sgt i32 %0, 98
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 74
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %0, 49
  %7 = select i1 %6, double 5.000000e-01, double 2.500000e-01
  br label %8

8:                                                ; preds = %5, %3, %1
  %9 = phi double [ 1.000000e+00, %1 ], [ 7.500000e-01, %3 ], [ %7, %5 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @make_black_ibuf(ptr noundef readonly %0) unnamed_addr #27 !PGOFuncName !444 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = mul nsw i32 %15, %13
  br label %28

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !107
  %22 = mul nsw i32 %21, %19
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = sext i32 %22 to i64
  %26 = shl nsw i64 %25, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %5, i8 0, i64 %26, i1 false)
  %27 = icmp eq ptr %24, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %11, %17
  %29 = phi i32 [ %16, %11 ], [ %22, %17 ]
  %30 = phi ptr [ %9, %11 ], [ %24, %17 ]
  %31 = sext i32 %29 to i64
  %32 = shl nsw i64 %31, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %30, i8 0, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %17, %28, %1, %7
  ret void
}

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_flipx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_flipy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_saturation(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @multibuf(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #28 !PGOFuncName !445 {
  %3 = fmul float %1, 2.560000e+02
  %4 = fptosi float %3 to i32
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %6, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !107
  %15 = mul nsw i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %10
  %18 = insertelement <4 x i32> poison, i32 %4, i64 0
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %31, %20 ], [ %6, %17 ]
  %22 = phi i32 [ %23, %20 ], [ %15, %17 ]
  %23 = add nsw i32 %22, -1
  %24 = load <4 x i8>, ptr %21, align 1, !tbaa !105
  %25 = zext <4 x i8> %24 to <4 x i32>
  %26 = mul nsw <4 x i32> %19, %25
  %27 = ashr <4 x i32> %26, <i32 8, i32 8, i32 8, i32 8>
  %28 = icmp sgt <4 x i32> %27, <i32 254, i32 254, i32 254, i32 254>
  %29 = trunc <4 x i32> %27 to <4 x i8>
  %30 = select <4 x i1> %28, <4 x i8> <i8 -1, i8 -1, i8 -1, i8 -1>, <4 x i8> %29
  store <4 x i8> %30, ptr %21, align 1, !tbaa !105
  %31 = getelementptr inbounds i8, ptr %21, i64 4
  %32 = icmp eq i32 %23, 0
  br i1 %32, label %33, label %20, !llvm.loop !446

33:                                               ; preds = %20, %10, %2
  %34 = icmp eq ptr %8, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !107
  %40 = mul nsw i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %35
  %43 = insertelement <4 x float> poison, float %1, i64 0
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i32 [ %48, %45 ], [ %40, %42 ]
  %47 = phi ptr [ %51, %45 ], [ %8, %42 ]
  %48 = add nsw i32 %46, -1
  %49 = load <4 x float>, ptr %47, align 4, !tbaa !111
  %50 = fmul <4 x float> %49, %44
  store <4 x float> %50, ptr %47, align 4, !tbaa !111
  %51 = getelementptr inbounds float, ptr %47, i64 4
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %45, !llvm.loop !447

53:                                               ; preds = %45, %35, %33
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequence_modifier_apply_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_shown_sequences(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #14 !PGOFuncName !448 {
  %5 = alloca [33 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %5) #33
  %6 = icmp sgt i32 %2, 32
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = call fastcc i32 @evaluate_seq_frame_gen(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1, i32 noundef %2) #31
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 32, i32 %2
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %22
  %17 = phi i64 [ %15, %14 ], [ %23, %22 ]
  %18 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = tail call fastcc zeroext i8 @video_seq_is_rendered(ptr noundef %19) #31, !range !161
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add nsw i64 %17, -1
  %24 = icmp sgt i64 %17, 1
  br i1 %24, label %16, label %47, !llvm.loop !449

25:                                               ; preds = %16
  %26 = trunc i64 %17 to i32
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi i32 [ %2, %7 ], [ %26, %25 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %42
  %33 = phi i64 [ %31, %30 ], [ %43, %42 ]
  %34 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = tail call fastcc zeroext i8 @video_seq_is_rendered(ptr noundef %35) #31, !range !161
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 46
  %40 = load i32, ptr %39, align 8, !tbaa !231
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32, %38
  %43 = add nsw i64 %33, -1
  %44 = icmp sgt i64 %33, 1
  br i1 %44, label %32, label %47, !llvm.loop !450

45:                                               ; preds = %38
  %46 = trunc i64 %33 to i32
  br label %47

47:                                               ; preds = %22, %42, %45, %10, %27
  %48 = phi i32 [ %28, %27 ], [ %2, %10 ], [ %28, %45 ], [ %28, %42 ], [ 0, %22 ]
  %49 = phi i32 [ %28, %27 ], [ %2, %10 ], [ %46, %45 ], [ 0, %42 ], [ 0, %22 ]
  %50 = icmp sle i32 %49, %48
  %51 = icmp sgt i32 %49, -1
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = zext nneg i32 %49 to i64
  br label %55

55:                                               ; preds = %53, %66
  %56 = phi i64 [ %54, %53 ], [ %68, %66 ]
  %57 = phi i32 [ 0, %53 ], [ %67, %66 ]
  %58 = getelementptr inbounds [33 x ptr], ptr %5, i64 0, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = tail call fastcc zeroext i8 @video_seq_is_rendered(ptr noundef %59) #31, !range !161
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = add nsw i32 %57, 1
  %64 = sext i32 %57 to i64
  %65 = getelementptr inbounds ptr, ptr %3, i64 %64
  store ptr %59, ptr %65, align 8, !tbaa !34
  br label %66

66:                                               ; preds = %55, %62
  %67 = phi i32 [ %63, %62 ], [ %57, %55 ]
  %68 = add nuw nsw i64 %56, 1
  %69 = trunc i64 %56 to i32
  %70 = icmp sgt i32 %48, %69
  br i1 %70, label %55, label %71, !llvm.loop !451

71:                                               ; preds = %66, %47, %4
  %72 = phi i32 [ 0, %4 ], [ 0, %47 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %5) #33
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @seq_get_early_out_for_blend_mode(ptr noundef %0) unnamed_addr #0 !PGOFuncName !452 {
  %2 = alloca %struct.SeqEffectHandle, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #33
  call void @BKE_sequence_get_blend(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %2, ptr noundef %0) #32
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 47
  %4 = load float, ptr %3, align 4, !tbaa !232
  %5 = fdiv float %4, 1.000000e+02
  %6 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !376
  %8 = call i32 %7(ptr noundef %0, float noundef %5, float noundef %5) #32
  %9 = add i32 %8, 1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = call fastcc zeroext i8 @seq_must_swap_input_in_blend_mode(ptr noundef nonnull %0) #31, !range !161
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  switch i32 %8, label %16 [
    i32 2, label %17
    i32 1, label %15
  ]

15:                                               ; preds = %14
  br label %17

16:                                               ; preds = %14, %11
  br label %17

17:                                               ; preds = %14, %1, %16, %15
  %18 = phi i32 [ 2, %15 ], [ %8, %16 ], [ %8, %1 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #33
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @seq_render_strip_stack_apply_effect(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !453 {
  %6 = alloca %struct.SeqEffectHandle, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #33
  call void @BKE_sequence_get_blend(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %6, ptr noundef %1) #32
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 47
  %8 = load float, ptr %7, align 4, !tbaa !232
  %9 = fdiv float %8, 1.000000e+02
  %10 = call fastcc zeroext i8 @seq_must_swap_input_in_blend_mode(ptr noundef %1) #31, !range !161
  %11 = icmp eq i8 %10, 0
  %12 = load i8, ptr %6, align 8, !tbaa !378
  %13 = icmp eq i8 %12, 0
  br i1 %11, label %21, label %14

14:                                               ; preds = %5
  br i1 %13, label %17, label %15

15:                                               ; preds = %14
  %16 = call fastcc ptr @seq_render_effect_execute_threaded(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %1, float noundef %2, float noundef %9, float noundef %9, ptr noundef %4, ptr noundef %3, ptr noundef null) #31
  br label %28

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !372
  %20 = call ptr %19(ptr noundef %0, ptr noundef nonnull %1, float noundef %2, float noundef %9, float noundef %9, ptr noundef %4, ptr noundef %3, ptr noundef null) #32
  br label %28

21:                                               ; preds = %5
  br i1 %13, label %24, label %22

22:                                               ; preds = %21
  %23 = call fastcc ptr @seq_render_effect_execute_threaded(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %1, float noundef %2, float noundef %9, float noundef %9, ptr noundef %3, ptr noundef %4, ptr noundef null) #31
  br label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.SeqEffectHandle, ptr %6, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !372
  %27 = call ptr %26(ptr noundef %0, ptr noundef nonnull %1, float noundef %2, float noundef %9, float noundef %9, ptr noundef %3, ptr noundef %4, ptr noundef null) #32
  br label %28

28:                                               ; preds = %22, %24, %15, %17
  %29 = phi ptr [ %16, %15 ], [ %20, %17 ], [ %23, %22 ], [ %27, %24 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #33
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @video_seq_is_rendered(ptr noundef readonly %0) unnamed_addr #11 !PGOFuncName !454 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp ne i32 %10, 4
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %3, %1
  %14 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BKE_sequence_get_blend(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @seq_must_swap_input_in_blend_mode(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !455 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 46
  %3 = load i32, ptr %2, align 8, !tbaa !231
  %4 = add i32 %3, -11
  %5 = icmp ult i32 %4, 5
  %6 = zext i32 %4 to i40
  %7 = shl nuw nsw i40 %6, 3
  %8 = lshr i40 4294967553, %7
  %9 = trunc i40 %8 to i8
  %10 = select i1 %5, i8 %9, i8 0
  ret i8 %10
}

; Function Attrs: optsize
declare void @BKE_sequencer_cache_cleanup_sequence(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequence_do_invalidate_dependent(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !456 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %17
  %6 = phi ptr [ %18, %17 ], [ %3, %2 ]
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i8 @BKE_sequence_check_depend(ptr noundef %0, ptr noundef nonnull %6) #31, !range !161
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @BKE_sequencer_cache_cleanup_sequence(ptr noundef nonnull %6) #32
  tail call void @BKE_sequencer_preprocessed_cache_cleanup_sequence(ptr noundef nonnull %6) #32
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 36
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @sequence_do_invalidate_dependent(ptr noundef %0, ptr noundef nonnull %13) #31
  br label %17

17:                                               ; preds = %12, %16, %5
  %18 = load ptr, ptr %6, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !457

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @shuffle_seq_time_offset_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #18 !PGOFuncName !458 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 76
  br label %7

7:                                                ; preds = %5, %42
  %8 = phi ptr [ %3, %5 ], [ %44, %42 ]
  %9 = phi i32 [ 0, %5 ], [ %43, %42 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !256
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 15
  %15 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 16
  br label %16

16:                                               ; preds = %13, %38
  %17 = phi ptr [ %3, %13 ], [ %40, %38 ]
  %18 = phi i32 [ %9, %13 ], [ %39, %38 ]
  %19 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !256
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @seq_overlap(ptr noundef nonnull %8, ptr noundef nonnull %17) #31, !range !161
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  br i1 %6, label %26, label %32

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !130
  %29 = load i32, ptr %15, align 4, !tbaa !132
  %30 = sub nsw i32 %28, %29
  %31 = tail call fastcc i32 @min_ii(i32 noundef %18, i32 noundef %30) #31
  br label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 16
  %34 = load i32, ptr %33, align 4, !tbaa !132
  %35 = load i32, ptr %14, align 8, !tbaa !130
  %36 = sub nsw i32 %34, %35
  %37 = tail call fastcc i32 @max_ii(i32 noundef %18, i32 noundef %36) #31
  br label %38

38:                                               ; preds = %16, %22, %32, %26
  %39 = phi i32 [ %18, %16 ], [ %31, %26 ], [ %37, %32 ], [ %18, %22 ]
  %40 = load ptr, ptr %17, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %16, !llvm.loop !459

42:                                               ; preds = %38, %7
  %43 = phi i32 [ %9, %7 ], [ %39, %38 ]
  %44 = load ptr, ptr %8, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %7, !llvm.loop !460

46:                                               ; preds = %42, %2
  %47 = phi i32 [ 0, %2 ], [ %43, %42 ]
  ret i32 %47
}

; Function Attrs: optsize
declare void @sound_mute_scene_sound(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sound_update_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_utf8_invalid_strip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sound_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_modifier_list_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree noinline nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nofree nounwind }
attributes #31 = { optsize }
attributes #32 = { nounwind optsize }
attributes #33 = { nounwind }
attributes #34 = { nounwind optsize willreturn memory(read) }
attributes #35 = { cold optsize }
attributes #36 = { cold }

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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !35, i64 256}
!41 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !44, i64 156, !44, i64 158, !42, i64 160, !42, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !43, i64 224, !43, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !45, i64 256, !35, i64 272, !35, i64 280, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !35, i64 304, !42, i64 312, !42, i64 316, !42, i64 320, !43, i64 324, !42, i64 328, !36, i64 332, !36, i64 333, !45, i64 336}
!42 = !{!"int", !36, i64 0}
!43 = !{!"float", !36, i64 0}
!44 = !{!"short", !36, i64 0}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{i32 -1, i32 2}
!47 = !{!"sequencer.c:BKE_sequence_free_ex"}
!48 = !{!41, !35, i64 168}
!49 = !{!41, !35, i64 216}
!50 = !{!41, !42, i64 100}
!51 = !{!52, !35, i64 40}
!52 = !{!"SeqEffectHandle", !36, i64 0, !36, i64 1, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88}
!53 = !{!41, !35, i64 272}
!54 = !{!55, !42, i64 100}
!55 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !44, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!56 = !{!57, !35, i64 256}
!57 = !{!"Scene", !55, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !45, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !44, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !58, i64 280, !67, i64 4264, !45, i64 4296, !45, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !44, i64 4376, !44, i64 4378, !42, i64 4380, !45, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !35, i64 4608, !73, i64 4616, !35, i64 4640, !74, i64 4648, !74, i64 4656, !60, i64 4664, !61, i64 4824, !75, i64 4888, !35, i64 4952}
!58 = !{!"RenderData", !59, i64 0, !35, i64 248, !35, i64 256, !62, i64 264, !63, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !43, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !44, i64 432, !44, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !42, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !42, i64 484, !42, i64 488, !44, i64 492, !44, i64 494, !42, i64 496, !42, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !45, i64 592, !44, i64 608, !44, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !42, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !43, i64 660, !43, i64 664, !44, i64 668, !44, i64 670, !43, i64 672, !43, i64 676, !36, i64 680, !42, i64 1704, !44, i64 1708, !44, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !44, i64 2524, !44, i64 2526, !43, i64 2528, !43, i64 2532, !44, i64 2536, !44, i64 2538, !43, i64 2540, !44, i64 2544, !44, i64 2546, !42, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !43, i64 2560, !43, i64 2564, !35, i64 2568, !42, i64 2576, !43, i64 2580, !36, i64 2584, !66, i64 2616, !42, i64 3976, !42, i64 3980}
!59 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !44, i64 8, !44, i64 10, !43, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!62 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !44, i64 48, !44, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!63 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !43, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!64 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!65 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!66 = !{!"BakeData", !59, i64 0, !36, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !43, i64 1280, !43, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!67 = !{!"AudioData", !42, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !44, i64 20, !44, i64 22, !43, i64 24, !43, i64 28}
!68 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!69 = !{!"GameData", !68, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !36, i64 34, !70, i64 40, !44, i64 64, !44, i64 66, !43, i64 68, !71, i64 72, !43, i64 128, !43, i64 132, !42, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!70 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !43, i64 8, !43, i64 12, !35, i64 16}
!71 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !42, i64 40, !43, i64 44, !43, i64 48, !44, i64 52, !44, i64 54}
!72 = !{!"UnitSettings", !43, i64 0, !36, i64 4, !36, i64 5, !44, i64 6}
!73 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!74 = !{!"long", !36, i64 0}
!75 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!76 = !{!77, !35, i64 40}
!77 = !{!"Editing", !35, i64 0, !45, i64 8, !45, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !42, i64 2096, !42, i64 2100, !42, i64 2104, !42, i64 2108, !64, i64 2112}
!78 = !{!41, !35, i64 280}
!79 = !{!77, !35, i64 0}
!80 = !{!45, !35, i64 0}
!81 = !{!41, !35, i64 0}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = !{!"sequencer.c:seq_free_sequence_recurse"}
!85 = distinct !{!85, !39}
!86 = !{!"sequencer.c:BLI_listbase_clear"}
!87 = !{!"sequencer.c:seqclipboard_ptr_free"}
!88 = !{!"sequencer.c:seqclipboard_ptr_store"}
!89 = !{!55, !35, i64 16}
!90 = !{!"sequencer.c:seqclipboard_ptr_restore"}
!91 = !{!44, !44, i64 0}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = !{!95, !42, i64 24}
!95 = !{!"SeqIterator", !35, i64 0, !42, i64 8, !42, i64 12, !35, i64 16, !42, i64 24}
!96 = !{!95, !35, i64 16}
!97 = distinct !{!97, !39}
!98 = !{!95, !42, i64 8}
!99 = !{!95, !42, i64 12}
!100 = !{!95, !35, i64 0}
!101 = !{!102, !35, i64 48}
!102 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !65, i64 2436, !103, i64 2456}
!103 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
!104 = !{!102, !35, i64 40}
!105 = !{!36, !36, i64 0}
!106 = !{!102, !42, i64 16}
!107 = !{!102, !42, i64 20}
!108 = !{!102, !42, i64 28}
!109 = !{!"sequencer.c:sequencer_imbuf_assign_spaces"}
!110 = !{!"sequencer.c:srgb_to_linearrgb_v4"}
!111 = !{!43, !43, i64 0}
!112 = !{!113, !35, i64 8}
!113 = !{!"SeqRenderData", !35, i64 0, !35, i64 8, !35, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !43, i64 40, !36, i64 44, !36, i64 45}
!114 = !{!113, !35, i64 16}
!115 = !{!113, !42, i64 24}
!116 = !{!113, !42, i64 28}
!117 = !{!113, !42, i64 32}
!118 = !{!113, !42, i64 36}
!119 = !{!113, !43, i64 40}
!120 = !{!113, !35, i64 0}
!121 = !{!113, !36, i64 44}
!122 = !{!113, !36, i64 45}
!123 = !{!"sequencer.c:seq_array"}
!124 = !{!42, !42, i64 0}
!125 = !{!41, !42, i64 112}
!126 = !{!41, !42, i64 120}
!127 = !{!41, !42, i64 116}
!128 = !{!41, !42, i64 124}
!129 = !{!41, !42, i64 108}
!130 = !{!41, !42, i64 136}
!131 = !{!41, !42, i64 104}
!132 = !{!41, !42, i64 140}
!133 = !{!41, !43, i64 152}
!134 = !{!41, !42, i64 312}
!135 = !{!41, !35, i64 184}
!136 = !{!57, !42, i64 684}
!137 = !{!"sequencer.c:seq_update_sound_bounds_recursive"}
!138 = distinct !{!138, !39}
!139 = !{!41, !35, i64 240}
!140 = !{!41, !35, i64 232}
!141 = !{!41, !35, i64 248}
!142 = !{!41, !42, i64 96}
!143 = distinct !{!143, !39}
!144 = !{!41, !42, i64 316}
!145 = !{!"sequencer.c:max_iii"}
!146 = !{!"sequencer.c:min_iii"}
!147 = !{!148, !35, i64 32}
!148 = !{!"Strip", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !36, i64 40, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !75, i64 840}
!149 = !{!150, !35, i64 0}
!150 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !45, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !36, i64 2090, !44, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!151 = !{!41, !44, i64 158}
!152 = !{!148, !35, i64 808}
!153 = !{!154, !44, i64 1032}
!154 = !{!"StripProxy", !36, i64 0, !36, i64 768, !35, i64 1024, !44, i64 1032, !44, i64 1034, !44, i64 1036, !44, i64 1038}
!155 = !{!41, !44, i64 156}
!156 = !{!41, !35, i64 200}
!157 = !{!41, !35, i64 208}
!158 = !{!57, !42, i64 688}
!159 = !{!"sequencer.c:free_proxy_seq"}
!160 = !{!154, !35, i64 1024}
!161 = !{i8 0, i8 2}
!162 = !{!41, !42, i64 128}
!163 = distinct !{!163, !39}
!164 = distinct !{!164, !39}
!165 = distinct !{!165, !39}
!166 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!167 = distinct !{!167, !39}
!168 = !{!"sequencer.c:clear_scene_in_allseqs_cb"}
!169 = !{!170, !35, i64 0}
!170 = !{!"SeqUniqueInfo", !35, i64 0, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140}
!171 = !{!170, !42, i64 136}
!172 = !{!170, !42, i64 140}
!173 = distinct !{!173, !39}
!174 = !{!"sequencer.c:seqbase_unique_name"}
!175 = distinct !{!175, !39}
!176 = !{!"sequencer.c:seqbase_unique_name_recursive_cb"}
!177 = !{!"sequencer.c:give_seqname_by_type"}
!178 = !{!"sequencer.c:give_stripelem_index"}
!179 = !{!41, !43, i64 300}
!180 = !{!"sequencer.c:evaluate_seq_frame_gen"}
!181 = distinct !{!181, !39}
!182 = distinct !{!182, !39}
!183 = !{!154, !44, i64 1038}
!184 = !{!185, !42, i64 8}
!185 = !{!"SeqIndexBuildContext", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48}
!186 = !{!154, !44, i64 1036}
!187 = !{!185, !42, i64 12}
!188 = !{!154, !44, i64 1034}
!189 = !{!185, !42, i64 16}
!190 = !{!185, !35, i64 24}
!191 = !{!185, !35, i64 32}
!192 = !{!185, !35, i64 48}
!193 = !{!185, !35, i64 40}
!194 = !{!185, !35, i64 0}
!195 = distinct !{!195, !39}
!196 = !{!"sequencer.c:seq_open_anim_file"}
!197 = !{!198, !35, i64 1888}
!198 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 1040, !44, i64 1042, !44, i64 1044, !44, i64 1046, !74, i64 1048, !36, i64 1056, !44, i64 1072, !35, i64 1080, !45, i64 1088, !45, i64 1104, !45, i64 1120, !45, i64 1136, !45, i64 1152, !45, i64 1168, !45, i64 1184, !45, i64 1200, !45, i64 1216, !45, i64 1232, !45, i64 1248, !45, i64 1264, !45, i64 1280, !45, i64 1296, !45, i64 1312, !45, i64 1328, !45, i64 1344, !45, i64 1360, !45, i64 1376, !45, i64 1392, !45, i64 1408, !45, i64 1424, !45, i64 1440, !45, i64 1456, !45, i64 1472, !45, i64 1488, !45, i64 1504, !45, i64 1520, !45, i64 1536, !45, i64 1552, !45, i64 1568, !45, i64 1584, !45, i64 1600, !45, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!199 = !{!57, !44, i64 758}
!200 = !{!57, !42, i64 764}
!201 = !{!57, !42, i64 768}
!202 = distinct !{!202, !39}
!203 = !{!"sequencer.c:seq_proxy_build_frame"}
!204 = !{!102, !42, i64 312}
!205 = !{!102, !36, i64 24}
!206 = !{!"sequencer.c:seq_render_strip"}
!207 = !{!"sequencer.c:seq_render_mask"}
!208 = !{!209, !42, i64 152}
!209 = !{!"Mask", !55, i64 0, !35, i64 120, !45, i64 128, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164}
!210 = distinct !{!210, !39}
!211 = distinct !{!211, !39}
!212 = !{!213, !35, i64 0}
!213 = !{!"ColorBalanceInitData", !35, i64 0, !35, i64 8, !43, i64 16, !35, i64 24, !36, i64 32}
!214 = !{!213, !35, i64 8}
!215 = !{!213, !43, i64 16}
!216 = !{!213, !36, i64 32}
!217 = !{!213, !35, i64 24}
!218 = !{!"sequencer.c:color_balance_init_handle"}
!219 = !{!220, !35, i64 0}
!220 = !{!"ColorBalanceThread", !35, i64 0, !43, i64 8, !42, i64 12, !42, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56}
!221 = !{!220, !43, i64 8}
!222 = !{!220, !42, i64 12}
!223 = !{!220, !42, i64 16}
!224 = !{!220, !36, i64 56}
!225 = !{!220, !35, i64 24}
!226 = !{!220, !35, i64 40}
!227 = !{!220, !35, i64 32}
!228 = !{!220, !35, i64 48}
!229 = !{!"sequencer.c:color_balance_do_thread"}
!230 = !{!41, !43, i64 148}
!231 = !{!41, !42, i64 320}
!232 = !{!41, !43, i64 324}
!233 = !{!41, !43, i64 144}
!234 = !{!41, !35, i64 336}
!235 = !{!"sequencer.c:BLI_listbase_is_empty"}
!236 = !{!"sequencer.c:max_ii"}
!237 = !{!"sequencer.c:seq_render_strip_stack"}
!238 = distinct !{!238, !39}
!239 = distinct !{!239, !39}
!240 = !{!241, !43, i64 24}
!241 = !{!"PrefetchQueueElem", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !43, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40}
!242 = !{!241, !42, i64 28}
!243 = !{!241, !42, i64 32}
!244 = !{!241, !42, i64 36}
!245 = !{!241, !42, i64 16}
!246 = !{!241, !42, i64 20}
!247 = distinct !{!247, !39}
!248 = !{!"sequencer.c:sequence_invalidate_cache"}
!249 = !{!41, !35, i64 304}
!250 = !{!57, !42, i64 680}
!251 = distinct !{!251, !39}
!252 = !{!"sequencer.c:free_anim_seq"}
!253 = distinct !{!253, !39}
!254 = !{!"sequencer.c:update_changed_seq_recurs"}
!255 = distinct !{!255, !39}
!256 = !{!41, !35, i64 16}
!257 = !{!"sequencer.c:min_ii"}
!258 = distinct !{!258, !39}
!259 = distinct !{!259, !39}
!260 = !{!"sequencer.c:seq_tx_get_end"}
!261 = !{!"sequencer.c:seq_tx_get_start"}
!262 = distinct !{!262, !39}
!263 = !{!"sequencer.c:seq_overlap"}
!264 = distinct !{!264, !39}
!265 = !{!57, !35, i64 120}
!266 = !{!267, !35, i64 0}
!267 = !{!"AnimData", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !35, i64 40, !45, i64 48, !45, i64 64, !42, i64 80, !42, i64 84, !44, i64 88, !44, i64 90, !43, i64 92}
!268 = !{!269, !35, i64 80}
!269 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !45, i64 32, !35, i64 48, !35, i64 56, !42, i64 64, !43, i64 68, !44, i64 72, !44, i64 74, !42, i64 76, !35, i64 80, !42, i64 88, !36, i64 92, !43, i64 104, !43, i64 108}
!270 = !{!269, !35, i64 48}
!271 = !{!269, !42, i64 64}
!272 = distinct !{!272, !39}
!273 = !{!269, !35, i64 56}
!274 = distinct !{!274, !39}
!275 = distinct !{!275, !39}
!276 = distinct !{!276, !39}
!277 = distinct !{!277, !39}
!278 = distinct !{!278, !39}
!279 = distinct !{!279, !39}
!280 = distinct !{!280, !39}
!281 = !{!"sequencer.c:shuffle_seq_time_offset"}
!282 = distinct !{!282, !39}
!283 = distinct !{!283, !39}
!284 = distinct !{!284, !39}
!285 = distinct !{!285, !39}
!286 = !{!77, !35, i64 32}
!287 = !{!288, !35, i64 24}
!288 = !{!"MetaStack", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32}
!289 = !{!"sequencer.c:seq_update_muting_recursive"}
!290 = distinct !{!290, !39}
!291 = !{!"sequencer.c:seq_update_sound_recursive"}
!292 = distinct !{!292, !39}
!293 = distinct !{!293, !39}
!294 = distinct !{!294, !39}
!295 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 64, !105, i64 96, i64 4, !124, i64 100, i64 4, !124, i64 104, i64 4, !124, i64 108, i64 4, !124, i64 112, i64 4, !124, i64 116, i64 4, !124, i64 120, i64 4, !124, i64 124, i64 4, !124, i64 128, i64 4, !124, i64 132, i64 4, !124, i64 136, i64 4, !124, i64 140, i64 4, !124, i64 144, i64 4, !111, i64 148, i64 4, !111, i64 152, i64 4, !111, i64 156, i64 2, !91, i64 158, i64 2, !91, i64 160, i64 4, !124, i64 164, i64 4, !124, i64 168, i64 8, !34, i64 176, i64 8, !34, i64 184, i64 8, !34, i64 192, i64 8, !34, i64 200, i64 8, !34, i64 208, i64 8, !34, i64 216, i64 8, !34, i64 224, i64 4, !111, i64 228, i64 4, !111, i64 232, i64 8, !34, i64 240, i64 8, !34, i64 248, i64 8, !34, i64 256, i64 8, !34, i64 264, i64 8, !34, i64 272, i64 8, !34, i64 280, i64 8, !34, i64 288, i64 4, !111, i64 292, i64 4, !111, i64 296, i64 4, !111, i64 300, i64 4, !111, i64 304, i64 8, !34, i64 312, i64 4, !124, i64 316, i64 4, !124, i64 320, i64 4, !124, i64 324, i64 4, !111, i64 328, i64 4, !124, i64 332, i64 1, !105, i64 333, i64 3, !105, i64 336, i64 8, !34, i64 344, i64 8, !34}
!296 = !{!"sequencer.c:sequencer_rna_path_prefix"}
!297 = !{!298, !35, i64 128}
!298 = !{!"bAction", !55, i64 0, !45, i64 120, !45, i64 136, !45, i64 152, !45, i64 168, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196}
!299 = !{!269, !35, i64 8}
!300 = distinct !{!300, !39}
!301 = distinct !{!301, !39}
!302 = distinct !{!302, !39}
!303 = distinct !{!303, !39}
!304 = !{!41, !36, i64 332}
!305 = !{!102, !42, i64 32}
!306 = !{!307, !42, i64 0}
!307 = !{!"SeqLoadInfo", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 1048, !35, i64 1112, !42, i64 1120, !42, i64 1124}
!308 = !{!307, !42, i64 8}
!309 = !{!307, !42, i64 20}
!310 = !{!148, !42, i64 16}
!311 = !{!"sequencer.c:seq_load_apply"}
!312 = !{!307, !42, i64 12}
!313 = !{!307, !42, i64 1120}
!314 = !{!307, !42, i64 1124}
!315 = !{!307, !35, i64 1112}
!316 = !{!"sequencer.c:seq_dupli"}
!317 = !{!148, !35, i64 816}
!318 = !{!148, !35, i64 824}
!319 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 8, !34}
!320 = distinct !{!320, !39}
!321 = !{!"sequencer.c:seq_free_strip"}
!322 = !{!"sequencer.c:seq_free_animdata"}
!323 = !{!298, !35, i64 120}
!324 = !{!269, !35, i64 0}
!325 = distinct !{!325, !39}
!326 = !{!"sequencer.c:srgb_to_linearrgb_v3_v3"}
!327 = !{!"sequencer.c:seq_count"}
!328 = distinct !{!328, !39}
!329 = !{!"sequencer.c:seq_build_array"}
!330 = !{!41, !42, i64 132}
!331 = distinct !{!331, !39}
!332 = !{!"sequencer.c:seq_update_sound_bounds_recursive_rec"}
!333 = distinct !{!333, !39}
!334 = !{!"sequencer.c:metaseq_start"}
!335 = !{!"sequencer.c:metaseq_end"}
!336 = !{!"sequencer.c:seq_proxy_get_fname"}
!337 = !{!"sequencer.c:color_balance_float_float"}
!338 = distinct !{!338, !39}
!339 = distinct !{!339, !39}
!340 = !{!"sequencer.c:color_balance_byte_float"}
!341 = distinct !{!341, !39}
!342 = distinct !{!342, !39, !343, !344}
!343 = !{!"llvm.loop.isvectorized", i32 1}
!344 = !{!"llvm.loop.unroll.runtime.disable"}
!345 = distinct !{!345, !39}
!346 = !{!"sequencer.c:color_balance_byte_byte"}
!347 = distinct !{!347, !39}
!348 = distinct !{!348, !39}
!349 = !{!"sequencer.c:calc_cb"}
!350 = !{i64 0, i64 12, !105, i64 12, i64 12, !105, i64 24, i64 12, !105, i64 36, i64 4, !124, i64 40, i64 4, !124}
!351 = distinct !{!351, !39}
!352 = !{!353, !42, i64 36}
!353 = !{!"StripColorBalance", !36, i64 0, !36, i64 12, !36, i64 24, !42, i64 36, !42, i64 40}
!354 = distinct !{!354, !39}
!355 = distinct !{!355, !39}
!356 = distinct !{!356, !39}
!357 = !{!"sequencer.c:color_balance_fl"}
!358 = !{!"sequencer.c:make_cb_table_float"}
!359 = distinct !{!359, !39}
!360 = !{!"sequencer.c:straight_uchar_to_premul_float"}
!361 = !{!"sequencer.c:premul_float_to_straight_uchar"}
!362 = !{!"sequencer.c:copy_from_ibuf_still"}
!363 = !{!"sequencer.c:seq_proxy_fetch"}
!364 = !{i32 0, i32 9}
!365 = !{!"sequencer.c:do_render_strip_uncached"}
!366 = !{!367, !35, i64 0}
!367 = !{!"SpeedControlVars", !35, i64 0, !43, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!368 = !{!"sequencer.c:input_preprocess"}
!369 = !{!57, !42, i64 800}
!370 = !{!"sequencer.c:seq_rendersize_to_proxysize"}
!371 = !{!"sequencer.c:seq_render_effect_strip_impl"}
!372 = !{!52, !35, i64 72}
!373 = !{!52, !35, i64 88}
!374 = !{!52, !35, i64 64}
!375 = !{!41, !43, i64 224}
!376 = !{!52, !35, i64 48}
!377 = distinct !{!377, !39}
!378 = !{!52, !36, i64 0}
!379 = distinct !{!379, !39}
!380 = !{!"sequencer.c:copy_to_ibuf_still"}
!381 = !{!"sequencer.c:seq_render_scene_strip"}
!382 = !{!150, !36, i64 2090}
!383 = !{!150, !36, i64 2081}
!384 = !{!57, !36, i64 2794}
!385 = !{!57, !42, i64 796}
!386 = !{!57, !36, i64 246}
!387 = !{!57, !35, i64 248}
!388 = !{!41, !35, i64 192}
!389 = !{!57, !35, i64 128}
!390 = !{!57, !36, i64 2792}
!391 = !{!57, !42, i64 232}
!392 = !{!57, !44, i64 816}
!393 = !{!394, !35, i64 40}
!394 = !{!"RenderResult", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !44, i64 24, !44, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !65, i64 56, !42, i64 72, !42, i64 76, !45, i64 80, !65, i64 96, !35, i64 112, !42, i64 120, !42, i64 124, !42, i64 128, !35, i64 136}
!395 = !{!394, !42, i64 16}
!396 = !{!394, !42, i64 20}
!397 = !{!394, !35, i64 48}
!398 = !{!102, !35, i64 104}
!399 = !{!394, !35, i64 32}
!400 = !{!"sequencer.c:seq_render_movieclip_strip"}
!401 = !{!402, !42, i64 2320}
!402 = !{!"MovieClip", !55, i64 0, !35, i64 120, !36, i64 128, !42, i64 1152, !42, i64 1156, !36, i64 1160, !43, i64 1168, !43, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !403, i64 1200, !35, i64 1528, !409, i64 1536, !42, i64 2312, !42, i64 2316, !42, i64 2320, !42, i64 2324, !75, i64 2328}
!403 = !{!"MovieTracking", !404, i64 0, !405, i64 72, !45, i64 128, !45, i64 144, !406, i64 160, !407, i64 184, !35, i64 232, !35, i64 240, !45, i64 248, !42, i64 264, !42, i64 268, !35, i64 272, !408, i64 280}
!404 = !{!"MovieTrackingSettings", !42, i64 0, !44, i64 4, !44, i64 6, !43, i64 8, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !43, i64 24, !44, i64 28, !44, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !44, i64 44, !44, i64 46, !43, i64 48, !42, i64 52, !42, i64 56, !43, i64 60, !43, i64 64, !42, i64 68}
!405 = !{!"MovieTrackingCamera", !35, i64 0, !44, i64 8, !44, i64 10, !43, i64 12, !43, i64 16, !43, i64 20, !44, i64 24, !44, i64 26, !36, i64 28, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52}
!406 = !{!"MovieTrackingReconstruction", !42, i64 0, !43, i64 4, !42, i64 8, !42, i64 12, !35, i64 16}
!407 = !{!"MovieTrackingStabilization", !42, i64 0, !42, i64 4, !42, i64 8, !43, i64 12, !35, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !42, i64 36, !42, i64 40, !43, i64 44}
!408 = !{!"MovieTrackingDopesheet", !42, i64 0, !44, i64 4, !44, i64 6, !45, i64 8, !45, i64 24, !42, i64 40, !42, i64 44}
!409 = !{!"MovieClipProxy", !36, i64 0, !44, i64 768, !44, i64 770, !44, i64 772, !44, i64 774}
!410 = !{!411, !44, i64 4}
!411 = !{!"MovieClipUser", !42, i64 0, !44, i64 4, !44, i64 6}
!412 = !{!41, !42, i64 164}
!413 = !{!411, !44, i64 6}
!414 = !{!"sequencer.c:seq_render_mask_strip"}
!415 = !{!"sequencer.c:seq_render_effect_execute_threaded"}
!416 = !{!52, !35, i64 80}
!417 = !{!418, !35, i64 0}
!418 = !{!"RenderEffectInitData", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!419 = !{!418, !35, i64 8}
!420 = !{!418, !35, i64 16}
!421 = !{!418, !43, i64 24}
!422 = !{!418, !43, i64 28}
!423 = !{!418, !43, i64 32}
!424 = !{!418, !35, i64 40}
!425 = !{!418, !35, i64 48}
!426 = !{!418, !35, i64 56}
!427 = !{!418, !35, i64 64}
!428 = !{!"sequencer.c:render_effect_execute_init_handle"}
!429 = !{!430, !35, i64 16}
!430 = !{!"RenderEffectThread", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !42, i64 72, !42, i64 76}
!431 = !{!430, !43, i64 32}
!432 = !{!430, !42, i64 72}
!433 = !{!430, !42, i64 76}
!434 = !{!"sequencer.c:render_effect_execute_do_thread"}
!435 = !{!430, !35, i64 0}
!436 = !{!430, !35, i64 8}
!437 = !{!430, !43, i64 24}
!438 = !{!430, !43, i64 28}
!439 = !{!430, !35, i64 40}
!440 = !{!430, !35, i64 48}
!441 = !{!430, !35, i64 56}
!442 = !{!430, !35, i64 64}
!443 = !{!"sequencer.c:seq_rendersize_to_scale_factor"}
!444 = !{!"sequencer.c:make_black_ibuf"}
!445 = !{!"sequencer.c:multibuf"}
!446 = distinct !{!446, !39}
!447 = distinct !{!447, !39}
!448 = !{!"sequencer.c:get_shown_sequences"}
!449 = distinct !{!449, !39}
!450 = distinct !{!450, !39}
!451 = distinct !{!451, !39}
!452 = !{!"sequencer.c:seq_get_early_out_for_blend_mode"}
!453 = !{!"sequencer.c:seq_render_strip_stack_apply_effect"}
!454 = !{!"sequencer.c:video_seq_is_rendered"}
!455 = !{!"sequencer.c:seq_must_swap_input_in_blend_mode"}
!456 = !{!"sequencer.c:sequence_do_invalidate_dependent"}
!457 = distinct !{!457, !39}
!458 = !{!"sequencer.c:shuffle_seq_time_offset_test"}
!459 = distinct !{!459, !39}
!460 = distinct !{!460, !39}
