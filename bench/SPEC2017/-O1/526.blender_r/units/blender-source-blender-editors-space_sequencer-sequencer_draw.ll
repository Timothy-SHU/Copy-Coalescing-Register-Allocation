; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_draw.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.MetaStack = type { ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.SoundWaveform = type { i32, ptr }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }

@G = external local_unnamed_addr global %struct.Global, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@stipple_diag_stripes_pos = external constant [128 x i8], align 16
@stipple_diag_stripes_neg = external constant [128 x i8], align 16
@stipple_halftone = external constant [128 x i8], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s | %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: %s (%s) | %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s: %s | %d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Cam %s: %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s: %s%s | %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @sequencer_ibuf_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SeqRenderData, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6
  %7 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = sitofp i16 %9 to float
  %11 = icmp eq i16 %9, 99
  %12 = select i1 %11, float 1.000000e+02, float %10
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 30
  %16 = load i16, ptr %15, align 2, !tbaa !49
  %17 = sitofp i16 %16 to float
  br label %20

18:                                               ; preds = %5
  %19 = fptosi float %12 to i32
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi float [ %17, %14 ], [ %12, %18 ]
  %22 = phi i32 [ 100, %14 ], [ %19, %18 ]
  %23 = fcmp olt float %21, 0.000000e+00
  br i1 %23, label %54, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 33
  %26 = load i32, ptr %25, align 4, !tbaa !68
  %27 = sitofp i32 %26 to float
  %28 = fmul float %21, %27
  %29 = fdiv float %28, 1.000000e+02
  %30 = fadd float %29, 5.000000e-01
  %31 = fptosi float %30 to i32
  %32 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !69
  %34 = sitofp i32 %33 to float
  %35 = fmul float %21, %34
  %36 = fdiv float %35, 1.000000e+02
  %37 = fadd float %36, 5.000000e-01
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 46
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %6, ptr noundef %40, ptr noundef %0, ptr noundef %1, i32 noundef %31, i32 noundef %38, i32 noundef %22) #6
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !34
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 64), align 4, !tbaa !72
  %42 = icmp eq i32 %41, 0
  %43 = add nsw i32 %4, %3
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 11
  %46 = load i16, ptr %45, align 4, !tbaa !76
  %47 = sext i16 %46 to i32
  br i1 %42, label %48, label %50

48:                                               ; preds = %24
  %49 = call ptr @BKE_sequencer_give_ibuf(ptr noundef nonnull %6, float noundef %44, i32 noundef %47) #6
  br label %52

50:                                               ; preds = %24
  %51 = call ptr @BKE_sequencer_give_ibuf_threaded(ptr noundef nonnull %6, float noundef %44, i32 noundef %47) #6
  br label %52

52:                                               ; preds = %48, %50
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ]
  store i8 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !34
  br label %54

54:                                               ; preds = %20, %52
  %55 = phi ptr [ %53, %52 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6
  ret ptr %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_sequencer_new_render_data(ptr dead_on_unwind writable sret(%struct.SeqRenderData) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_sequencer_give_ibuf(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_give_ibuf_threaded(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_image_seq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store ptr null, ptr %10, align 8, !tbaa !77
  %13 = tail call zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr noundef %3) #6
  %14 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !78
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 93
  %18 = load i8, ptr %17, align 2, !tbaa !79
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  tail call void @WM_jobs_kill_type(ptr noundef %22, ptr noundef null, i32 noundef 1) #6
  %23 = load i8, ptr %17, align 2, !tbaa !79
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  tail call void @WM_jobs_kill_type(ptr noundef %27, ptr noundef null, i32 noundef 3) #6
  br label %28

28:                                               ; preds = %21, %26, %16, %7
  %29 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 10
  %30 = load i16, ptr %29, align 2, !tbaa !42
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 30
  %34 = load i16, ptr %33, align 2, !tbaa !49
  %35 = sitofp i16 %34 to float
  br label %38

36:                                               ; preds = %28
  %37 = sitofp i16 %30 to float
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi float [ 1.000000e+02, %32 ], [ %37, %36 ]
  %40 = phi float [ %35, %32 ], [ %37, %36 ]
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %440, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 33
  %44 = load i32, ptr %43, align 4, !tbaa !68
  %45 = sitofp i32 %44 to float
  %46 = fmul float %40, %45
  %47 = fdiv float %46, 1.000000e+02
  %48 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 34
  %49 = load i32, ptr %48, align 8, !tbaa !69
  %50 = sitofp i32 %49 to float
  %51 = fmul float %40, %50
  %52 = fdiv float %51, 1.000000e+02
  %53 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 9
  %54 = load i16, ptr %53, align 8, !tbaa !80
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 63
  %58 = load float, ptr %57, align 4, !tbaa !81
  %59 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 64
  %60 = load float, ptr %59, align 8, !tbaa !82
  %61 = fdiv float %58, %60
  %62 = fmul float %47, %61
  %63 = fdiv float %39, 1.000000e+02
  %64 = fdiv float %62, %63
  %65 = fdiv float %52, %63
  br label %66

66:                                               ; preds = %56, %42
  %67 = phi float [ %65, %56 ], [ %52, %42 ]
  %68 = phi float [ %64, %56 ], [ %47, %42 ]
  %69 = icmp eq i8 %6, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 16
  %72 = load i32, ptr %71, align 4, !tbaa !83
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %66
  call void @UI_GetThemeColor3fv(i32 noundef 125, ptr noundef nonnull %8) #6
  %75 = load float, ptr %8, align 4, !tbaa !84
  %76 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !84
  %78 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !84
  call void @glClearColor(float noundef %75, float noundef %77, float noundef %79, float noundef 0.000000e+00) #6
  call void @glClear(i32 noundef 16384) #6
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !78
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %440

83:                                               ; preds = %80
  %84 = call ptr @sequencer_ibuf_get(ptr noundef %11, ptr noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %440, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !85
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !88
  %93 = icmp eq ptr %92, null
  br i1 %93, label %440, label %94

94:                                               ; preds = %90, %86
  %95 = load i16, ptr %53, align 8, !tbaa !80
  %96 = icmp eq i16 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 12
  %99 = load i16, ptr %98, align 2, !tbaa !89
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %204, label %101

101:                                              ; preds = %97, %94
  %102 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18
  %103 = load ptr, ptr %102, align 8, !tbaa !90
  %104 = icmp eq ptr %103, %84
  br i1 %104, label %130, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !91
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void @IMB_freeImBuf(ptr noundef nonnull %107) #6
  store ptr null, ptr %106, align 8, !tbaa !91
  br label %110

110:                                              ; preds = %109, %105
  %111 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !92
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void @IMB_freeImBuf(ptr noundef nonnull %112) #6
  store ptr null, ptr %111, align 8, !tbaa !92
  br label %115

115:                                              ; preds = %114, %110
  %116 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !93
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @IMB_freeImBuf(ptr noundef nonnull %117) #6
  store ptr null, ptr %116, align 8, !tbaa !93
  br label %120

120:                                              ; preds = %119, %115
  %121 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !94
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @IMB_freeImBuf(ptr noundef nonnull %122) #6
  store ptr null, ptr %121, align 8, !tbaa !94
  br label %125

125:                                              ; preds = %124, %120
  %126 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !95
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  call void @IMB_freeImBuf(ptr noundef nonnull %127) #6
  store ptr null, ptr %126, align 8, !tbaa !95
  br label %130

130:                                              ; preds = %101, %125, %129
  %131 = load i16, ptr %53, align 8, !tbaa !80
  switch i16 %131, label %193 [
    i16 1, label %132
    i16 2, label %149
    i16 3, label %172
    i16 4, label %181
  ]

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !91
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %190

136:                                              ; preds = %132
  %137 = call ptr @IMB_dupImBuf(ptr noundef nonnull %84) #6
  %138 = getelementptr inbounds %struct.ImBuf, ptr %137, i64 0, i32 9
  %139 = load ptr, ptr %138, align 8, !tbaa !88
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %143 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %137, ptr noundef nonnull %142, ptr noundef nonnull %143) #6
  br label %144

144:                                              ; preds = %141, %136
  %145 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 12
  %146 = load i16, ptr %145, align 2, !tbaa !89
  %147 = sitofp i16 %146 to float
  %148 = call ptr @make_zebra_view_from_ibuf(ptr noundef %137, float noundef %147) #6
  store ptr %148, ptr %133, align 8, !tbaa !91
  call void @IMB_freeImBuf(ptr noundef %137) #6
  br label %190

149:                                              ; preds = %130
  %150 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !96
  %152 = and i32 %151, 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !93
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %190

158:                                              ; preds = %154
  %159 = call ptr @IMB_dupImBuf(ptr noundef nonnull %84) #6
  %160 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %161 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %159, ptr noundef nonnull %160, ptr noundef nonnull %161) #6
  %162 = call ptr @make_sep_waveform_view_from_ibuf(ptr noundef %159) #6, !callees !97
  call void @IMB_freeImBuf(ptr noundef %159) #6
  store ptr %162, ptr %155, align 8, !tbaa !93
  br label %190

163:                                              ; preds = %149
  %164 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !92
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  %168 = call ptr @IMB_dupImBuf(ptr noundef nonnull %84) #6
  %169 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %170 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %168, ptr noundef nonnull %169, ptr noundef nonnull %170) #6
  %171 = call ptr @make_waveform_view_from_ibuf(ptr noundef %168) #6, !callees !97
  call void @IMB_freeImBuf(ptr noundef %168) #6
  store ptr %171, ptr %164, align 8, !tbaa !92
  br label %190

172:                                              ; preds = %130
  %173 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !94
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %190

176:                                              ; preds = %172
  %177 = call ptr @IMB_dupImBuf(ptr noundef nonnull %84) #6
  %178 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %179 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %177, ptr noundef nonnull %178, ptr noundef nonnull %179) #6
  %180 = call ptr @make_vectorscope_view_from_ibuf(ptr noundef %177) #6, !callees !97
  call void @IMB_freeImBuf(ptr noundef %177) #6
  store ptr %180, ptr %173, align 8, !tbaa !94
  br label %190

181:                                              ; preds = %130
  %182 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 5
  %183 = load ptr, ptr %182, align 8, !tbaa !95
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = call ptr @IMB_dupImBuf(ptr noundef nonnull %84) #6
  %187 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %188 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %186, ptr noundef nonnull %187, ptr noundef nonnull %188) #6
  %189 = call ptr @make_histogram_view_from_ibuf(ptr noundef %186) #6, !callees !97
  call void @IMB_freeImBuf(ptr noundef %186) #6
  store ptr %189, ptr %182, align 8, !tbaa !95
  br label %190

190:                                              ; preds = %181, %185, %172, %176, %163, %167, %154, %158, %132, %144
  %191 = phi ptr [ %133, %144 ], [ %133, %132 ], [ %155, %158 ], [ %155, %154 ], [ %164, %167 ], [ %164, %163 ], [ %173, %176 ], [ %173, %172 ], [ %182, %185 ], [ %182, %181 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !77
  br label %193

193:                                              ; preds = %190, %130
  %194 = phi ptr [ null, %130 ], [ %192, %190 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %203, label %196

196:                                              ; preds = %193
  store ptr %84, ptr %102, align 8, !tbaa !90
  %197 = getelementptr inbounds %struct.ImBuf, ptr %194, i64 0, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !98
  %199 = sitofp i32 %198 to float
  %200 = getelementptr inbounds %struct.ImBuf, ptr %194, i64 0, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !99
  %202 = sitofp i32 %201 to float
  br label %204

203:                                              ; preds = %193
  store ptr null, ptr %102, align 8, !tbaa !90
  br label %204

204:                                              ; preds = %196, %203, %97
  %205 = phi float [ %67, %97 ], [ %202, %196 ], [ %67, %203 ]
  %206 = phi float [ %68, %97 ], [ %199, %196 ], [ %68, %203 ]
  %207 = phi ptr [ null, %97 ], [ %194, %196 ], [ %194, %203 ]
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #6
  %208 = fadd float %206, 5.000000e-01
  %209 = fptosi float %208 to i32
  %210 = fadd float %205, 5.000000e-01
  %211 = fptosi float %210 to i32
  call void @UI_view2d_totRect_set(ptr noundef nonnull %12, i32 noundef %209, i32 noundef %211) #6
  call void @UI_view2d_curRect_validate(ptr noundef nonnull %12) #6
  call void @UI_view2d_view_ortho(ptr noundef nonnull %12) #6
  %212 = load i16, ptr %53, align 8, !tbaa !80
  %213 = icmp eq i16 %212, 1
  br i1 %213, label %214, label %227

214:                                              ; preds = %204
  %215 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %216 = load i32, ptr %215, align 8, !tbaa !96
  %217 = and i32 %216, 64
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %214
  call void @glEnable(i32 noundef 3042) #6
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  %220 = load float, ptr %12, align 8, !tbaa !100
  %221 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %222 = load float, ptr %221, align 8, !tbaa !101
  %223 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %224 = load float, ptr %223, align 4, !tbaa !102
  %225 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %226 = load float, ptr %225, align 4, !tbaa !103
  call void @fdrawcheckerboard(float noundef %220, float noundef %222, float noundef %224, float noundef %226) #6
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  br label %227

227:                                              ; preds = %214, %219, %204
  %228 = icmp eq ptr %207, null
  br i1 %228, label %241, label %229

229:                                              ; preds = %227
  call void @IMB_freeImBuf(ptr noundef nonnull %84) #6
  %230 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 9
  %231 = load ptr, ptr %230, align 8, !tbaa !88
  %232 = icmp eq ptr %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 8
  %235 = load ptr, ptr %234, align 8, !tbaa !85
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  call void @IMB_rect_from_float(ptr noundef nonnull %207) #6
  br label %238

238:                                              ; preds = %237, %233, %229
  %239 = getelementptr inbounds %struct.ImBuf, ptr %207, i64 0, i32 8
  %240 = load ptr, ptr %239, align 8, !tbaa !85
  br label %296

241:                                              ; preds = %227
  %242 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !104
  %243 = icmp ne i16 %242, 1
  %244 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 18
  %245 = load float, ptr %244, align 8, !tbaa !105
  %246 = fcmp une float %245, 0.000000e+00
  %247 = or i1 %243, %246
  br i1 %247, label %274, label %248

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 9
  %250 = load ptr, ptr %249, align 8, !tbaa !88
  %251 = icmp eq ptr %250, null
  br i1 %251, label %267, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 5
  %254 = load i32, ptr %253, align 4, !tbaa !106
  switch i32 %254, label %256 [
    i32 4, label %257
    i32 3, label %255
  ]

255:                                              ; preds = %252
  br label %257

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %252, %255, %256
  %258 = phi i32 [ 6407, %255 ], [ 6408, %256 ], [ 6408, %252 ]
  %259 = phi ptr [ %250, %255 ], [ null, %256 ], [ %250, %252 ]
  %260 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 35
  %261 = load ptr, ptr %260, align 8, !tbaa !107
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %257
  %264 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef nonnull %261, float noundef %245, i8 noundef zeroext 1) #6
  br label %274

265:                                              ; preds = %257
  %266 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw_ctx(ptr noundef %0, float noundef %245, i8 noundef zeroext 1) #6
  br label %274

267:                                              ; preds = %248
  %268 = load ptr, ptr %87, align 8, !tbaa !85
  %269 = icmp eq ptr %268, null
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 34
  %272 = load ptr, ptr %271, align 8, !tbaa !108
  %273 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef %272, float noundef %245, i8 noundef zeroext 0) #6
  br label %274

274:                                              ; preds = %267, %241, %265, %263, %270
  %275 = phi i8 [ %264, %263 ], [ %266, %265 ], [ %273, %270 ], [ 0, %241 ], [ 0, %267 ]
  %276 = phi i32 [ 5126, %263 ], [ 5126, %265 ], [ 5121, %270 ], [ 5121, %241 ], [ 5121, %267 ]
  %277 = phi i32 [ %258, %263 ], [ %258, %265 ], [ 6408, %270 ], [ 6408, %241 ], [ 6408, %267 ]
  %278 = phi ptr [ %259, %263 ], [ %259, %265 ], [ %268, %270 ], [ null, %241 ], [ null, %267 ]
  %279 = load ptr, ptr %87, align 8, !tbaa !85
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %274
  %282 = getelementptr inbounds %struct.ImBuf, ptr %84, i64 0, i32 9
  %283 = load ptr, ptr %282, align 8, !tbaa !88
  %284 = icmp eq ptr %283, null
  %285 = icmp ne i8 %275, 0
  %286 = select i1 %284, i1 true, i1 %285
  br i1 %286, label %291, label %289

287:                                              ; preds = %274
  %288 = icmp eq i8 %275, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %281, %287
  %290 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %84, ptr noundef nonnull %10) #6
  br label %291

291:                                              ; preds = %289, %287, %281
  %292 = phi i32 [ %276, %287 ], [ 5121, %289 ], [ %276, %281 ]
  %293 = phi i32 [ %277, %287 ], [ 6408, %289 ], [ %277, %281 ]
  %294 = phi ptr [ %278, %287 ], [ %290, %289 ], [ %278, %281 ]
  %295 = icmp eq i8 %275, 0
  br label %296

296:                                              ; preds = %291, %238
  %297 = phi i1 [ true, %238 ], [ %295, %291 ]
  %298 = phi i32 [ 5121, %238 ], [ %292, %291 ]
  %299 = phi i32 [ 6408, %238 ], [ %293, %291 ]
  %300 = phi ptr [ %240, %238 ], [ %294, %291 ]
  %301 = phi ptr [ %207, %238 ], [ %84, %291 ]
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #6
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  %302 = call i32 @glaGetOneInteger(i32 noundef 3553) #6
  call void @glEnable(i32 noundef 3553) #6
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %9) #6
  %303 = load i32, ptr %9, align 4, !tbaa !109
  call void @glBindTexture(i32 noundef 3553, i32 noundef %303) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #6
  %304 = icmp eq i32 %298, 5126
  %305 = getelementptr inbounds %struct.ImBuf, ptr %301, i64 0, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !98
  %307 = getelementptr inbounds %struct.ImBuf, ptr %301, i64 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !99
  br i1 %304, label %309, label %310

309:                                              ; preds = %296
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 34842, i32 noundef %306, i32 noundef %308, i32 noundef 0, i32 noundef %299, i32 noundef 5126, ptr noundef %300) #6
  br label %311

310:                                              ; preds = %296
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef %306, i32 noundef %308, i32 noundef 0, i32 noundef %299, i32 noundef %298, ptr noundef %300) #6
  br label %311

311:                                              ; preds = %310, %309
  call void @glBegin(i32 noundef 7) #6
  br i1 %69, label %368, label %312

312:                                              ; preds = %311
  %313 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 16
  %314 = load i32, ptr %313, align 4, !tbaa !83
  switch i32 %314, label %380 [
    i32 0, label %315
    i32 1, label %356
  ]

315:                                              ; preds = %312
  %316 = load float, ptr %12, align 8, !tbaa !110
  %317 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %318 = load float, ptr %317, align 4, !tbaa !111
  %319 = fsub float %318, %316
  %320 = call float @llvm.fabs.f32(float %319)
  %321 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 19
  %322 = load ptr, ptr %321, align 8, !tbaa !112
  %323 = getelementptr inbounds %struct.Editing, ptr %322, i64 0, i32 10
  %324 = load float, ptr %323, align 8, !tbaa !113
  %325 = call float @llvm.fmuladd.f32(float %320, float %324, float %316)
  %326 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %327 = load float, ptr %326, align 8, !tbaa !115
  %328 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %329 = load float, ptr %328, align 4, !tbaa !116
  %330 = fsub float %329, %327
  %331 = call float @llvm.fabs.f32(float %330)
  %332 = getelementptr inbounds %struct.Editing, ptr %322, i64 0, i32 10, i32 2
  %333 = load float, ptr %332, align 8, !tbaa !117
  %334 = call float @llvm.fmuladd.f32(float %331, float %333, float %327)
  %335 = getelementptr inbounds %struct.Editing, ptr %322, i64 0, i32 10, i32 1
  %336 = load float, ptr %335, align 4, !tbaa !118
  %337 = call float @llvm.fmuladd.f32(float %320, float %336, float %316)
  %338 = getelementptr inbounds %struct.Editing, ptr %322, i64 0, i32 10, i32 3
  %339 = load float, ptr %338, align 4, !tbaa !119
  %340 = call float @llvm.fmuladd.f32(float %331, float %339, float %327)
  call void @glTexCoord2f(float noundef %324, float noundef %333) #6
  call void @glVertex2f(float noundef %325, float noundef %334) #6
  %341 = load ptr, ptr %321, align 8, !tbaa !112
  %342 = getelementptr inbounds %struct.Editing, ptr %341, i64 0, i32 10
  %343 = load float, ptr %342, align 8, !tbaa !113
  %344 = getelementptr inbounds %struct.Editing, ptr %341, i64 0, i32 10, i32 3
  %345 = load float, ptr %344, align 4, !tbaa !119
  call void @glTexCoord2f(float noundef %343, float noundef %345) #6
  call void @glVertex2f(float noundef %325, float noundef %340) #6
  %346 = load ptr, ptr %321, align 8, !tbaa !112
  %347 = getelementptr inbounds %struct.Editing, ptr %346, i64 0, i32 10, i32 1
  %348 = load float, ptr %347, align 4, !tbaa !118
  %349 = getelementptr inbounds %struct.Editing, ptr %346, i64 0, i32 10, i32 3
  %350 = load float, ptr %349, align 4, !tbaa !119
  call void @glTexCoord2f(float noundef %348, float noundef %350) #6
  call void @glVertex2f(float noundef %337, float noundef %340) #6
  %351 = load ptr, ptr %321, align 8, !tbaa !112
  %352 = getelementptr inbounds %struct.Editing, ptr %351, i64 0, i32 10, i32 1
  %353 = load float, ptr %352, align 4, !tbaa !118
  %354 = getelementptr inbounds %struct.Editing, ptr %351, i64 0, i32 10, i32 2
  %355 = load float, ptr %354, align 8, !tbaa !117
  call void @glTexCoord2f(float noundef %353, float noundef %355) #6
  call void @glVertex2f(float noundef %337, float noundef %334) #6
  br label %380

356:                                              ; preds = %312
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  %357 = load float, ptr %12, align 8, !tbaa !100
  %358 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %359 = load float, ptr %358, align 8, !tbaa !101
  call void @glVertex2f(float noundef %357, float noundef %359) #6
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #6
  %360 = load float, ptr %12, align 8, !tbaa !100
  %361 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %362 = load float, ptr %361, align 4, !tbaa !103
  call void @glVertex2f(float noundef %360, float noundef %362) #6
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  %363 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %364 = load float, ptr %363, align 4, !tbaa !102
  %365 = load float, ptr %361, align 4, !tbaa !103
  call void @glVertex2f(float noundef %364, float noundef %365) #6
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #6
  %366 = load float, ptr %363, align 4, !tbaa !102
  %367 = load float, ptr %358, align 8, !tbaa !101
  call void @glVertex2f(float noundef %366, float noundef %367) #6
  br label %380

368:                                              ; preds = %311
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  %369 = load float, ptr %12, align 8, !tbaa !100
  %370 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %371 = load float, ptr %370, align 8, !tbaa !101
  call void @glVertex2f(float noundef %369, float noundef %371) #6
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #6
  %372 = load float, ptr %12, align 8, !tbaa !100
  %373 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %374 = load float, ptr %373, align 4, !tbaa !103
  call void @glVertex2f(float noundef %372, float noundef %374) #6
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  %375 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %376 = load float, ptr %375, align 4, !tbaa !102
  %377 = load float, ptr %373, align 4, !tbaa !103
  call void @glVertex2f(float noundef %376, float noundef %377) #6
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #6
  %378 = load float, ptr %375, align 4, !tbaa !102
  %379 = load float, ptr %370, align 8, !tbaa !101
  call void @glVertex2f(float noundef %378, float noundef %379) #6
  br label %380

380:                                              ; preds = %312, %315, %356, %368
  call void @glEnd() #6
  call void @glBindTexture(i32 noundef 3553, i32 noundef %302) #6
  call void @glDisable(i32 noundef 3553) #6
  %381 = load i16, ptr %53, align 8, !tbaa !80
  %382 = icmp eq i16 %381, 1
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %385 = load i32, ptr %384, align 8, !tbaa !96
  %386 = and i32 %385, 64
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %383
  call void @glDisable(i32 noundef 3042) #6
  br label %389

389:                                              ; preds = %388, %383, %380
  call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %9) #6
  br i1 %297, label %391, label %390

390:                                              ; preds = %389
  call void @IMB_colormanagement_finish_glsl_draw() #6
  br label %391

391:                                              ; preds = %390, %389
  %392 = load i16, ptr %53, align 8, !tbaa !80
  %393 = icmp eq i16 %392, 1
  br i1 %393, label %394, label %420

394:                                              ; preds = %391
  %395 = load float, ptr %12, align 8, !tbaa !100
  %396 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %397 = load float, ptr %396, align 8, !tbaa !101
  %398 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %399 = load float, ptr %398, align 4, !tbaa !102
  %400 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %401 = load float, ptr %400, align 4, !tbaa !103
  call void @setlinestyle(i32 noundef 3) #6
  call void @UI_ThemeColorBlendShade(i32 noundef 25, i32 noundef 2, float noundef 1.000000e+00, i32 noundef 0) #6
  call void @glBegin(i32 noundef 2) #6
  %402 = fadd float %395, -5.000000e-01
  %403 = fadd float %397, -5.000000e-01
  call void @glVertex2f(float noundef %402, float noundef %403) #6
  %404 = fadd float %401, 5.000000e-01
  call void @glVertex2f(float noundef %402, float noundef %404) #6
  %405 = fadd float %399, 5.000000e-01
  call void @glVertex2f(float noundef %405, float noundef %404) #6
  call void @glVertex2f(float noundef %405, float noundef %403) #6
  call void @glEnd() #6
  %406 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %407 = load i32, ptr %406, align 8, !tbaa !96
  %408 = and i32 %407, 8
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %419, label %410

410:                                              ; preds = %394
  %411 = fsub float %399, %395
  %412 = fmul float %411, 0x3FB99999A0000000
  %413 = fadd float %395, %412
  %414 = fsub float %399, %412
  %415 = fsub float %401, %397
  %416 = fmul float %415, 0x3FB99999A0000000
  %417 = fadd float %397, %416
  %418 = fsub float %401, %416
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #6
  call void @uiSetRoundBox(i32 noundef 15) #6
  call void @uiDrawBox(i32 noundef 2, float noundef %413, float noundef %417, float noundef %414, float noundef %418, float noundef 1.200000e+01) #6
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #6
  br label %419

419:                                              ; preds = %410, %394
  call void @setlinestyle(i32 noundef 0) #6
  br label %420

420:                                              ; preds = %419, %391
  %421 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %422 = load i32, ptr %421, align 8, !tbaa !96
  %423 = and i32 %422, 16
  %424 = icmp ne i32 %423, 0
  %425 = icmp ne i8 %13, 0
  %426 = select i1 %424, i1 %425, i1 false
  br i1 %426, label %427, label %428

427:                                              ; preds = %420
  call void @ED_gpencil_draw_2dimage(ptr noundef %0) #6
  br label %428

428:                                              ; preds = %427, %420
  br i1 %228, label %429, label %430

429:                                              ; preds = %428
  call void @IMB_freeImBuf(ptr noundef nonnull %301) #6
  br label %430

430:                                              ; preds = %429, %428
  call void @UI_view2d_view_restore(ptr noundef %0) #6
  %431 = load i32, ptr %421, align 8, !tbaa !96
  %432 = and i32 %431, 16
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, i1 %425, i1 false
  br i1 %434, label %435, label %436

435:                                              ; preds = %430
  call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #6
  br label %436

436:                                              ; preds = %435, %430
  %437 = load ptr, ptr %10, align 8, !tbaa !77
  %438 = icmp eq ptr %437, null
  br i1 %438, label %440, label %439

439:                                              ; preds = %436
  call void @IMB_display_buffer_release(ptr noundef nonnull %437) #6
  br label %440

440:                                              ; preds = %436, %439, %90, %83, %80, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_kill_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_imbuf_make_display_space(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @make_zebra_view_from_ibuf(ptr noundef, float noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @make_sep_waveform_view_from_ibuf(ptr noundef) local_unnamed_addr #2

declare ptr @make_waveform_view_from_ibuf(ptr noundef) local_unnamed_addr #2

declare ptr @make_vectorscope_view_from_ibuf(ptr noundef) local_unnamed_addr #2

declare ptr @make_histogram_view_from_ibuf(ptr noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_curRect_validate(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @IMB_colormanagement_setup_glsl_draw_ctx(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @IMB_display_buffer_acquire_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @glaGetOneInteger(i32 noundef) local_unnamed_addr #2

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_gpencil_draw_2dimage(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_timeline_seq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #6
  %6 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %3) #6
  %8 = icmp eq ptr %5, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load float, ptr %3, align 4, !tbaa !84
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !84
  %17 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !84
  %19 = fadd float %18, 0xBFB99999A0000000
  call void @glClearColor(float noundef %14, float noundef %16, float noundef %19, float noundef 0.000000e+00) #6
  br label %26

20:                                               ; preds = %9, %2
  %21 = load float, ptr %3, align 4, !tbaa !84
  %22 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !84
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !84
  call void @glClearColor(float noundef %21, float noundef %23, float noundef %25, float noundef 0.000000e+00) #6
  br label %26

26:                                               ; preds = %20, %13
  call void @glClear(i32 noundef 16384) #6
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #6
  call void @boundbox_seq(ptr noundef %4, ptr noundef nonnull %7) #6
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -20) #6
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %28 = load float, ptr %27, align 8, !tbaa !121
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !122
  call void @glRectf(float noundef %28, float noundef -1.000000e+00, float noundef %30, float noundef 1.000000e+00) #6
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %32 = load float, ptr %31, align 8, !tbaa !123
  %33 = fptosi float %32 to i32
  %34 = call i32 @llvm.smax.i32(i32 %33, i32 2)
  %35 = add nsw i32 %34, -1
  call void @glBegin(i32 noundef 7) #6
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %37 = sitofp i32 %35 to float
  %38 = load float, ptr %36, align 4, !tbaa !124
  %39 = fcmp ogt float %38, %37
  br i1 %39, label %40, label %56

40:                                               ; preds = %26, %40
  %41 = phi float [ %53, %40 ], [ %37, %26 ]
  %42 = phi i32 [ %52, %40 ], [ %35, %26 ]
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 -25, i32 -15
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef %45) #6
  %46 = load float, ptr %29, align 4, !tbaa !122
  call void @glVertex2f(float noundef %46, float noundef %41) #6
  %47 = load float, ptr %27, align 8, !tbaa !121
  call void @glVertex2f(float noundef %47, float noundef %41) #6
  %48 = load float, ptr %27, align 8, !tbaa !121
  %49 = add nsw i32 %42, 1
  %50 = sitofp i32 %49 to float
  call void @glVertex2f(float noundef %48, float noundef %50) #6
  %51 = load float, ptr %29, align 4, !tbaa !122
  call void @glVertex2f(float noundef %51, float noundef %50) #6
  %52 = add i32 %42, 1
  %53 = sitofp i32 %52 to float
  %54 = load float, ptr %36, align 4, !tbaa !124
  %55 = fcmp ogt float %54, %53
  br i1 %55, label %40, label %56, !llvm.loop !125

56:                                               ; preds = %40, %26
  %57 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  call void @glEnd() #6
  %58 = load float, ptr %31, align 8, !tbaa !123
  %59 = fptosi float %58 to i32
  %60 = call i32 @llvm.smax.i32(i32 %59, i32 2)
  %61 = add nsw i32 %60, -1
  call void @UI_ThemeColor(i32 noundef 24) #6
  call void @glBegin(i32 noundef 1) #6
  %62 = sitofp i32 %61 to float
  %63 = load float, ptr %57, align 4, !tbaa !124
  %64 = fcmp ogt float %63, %62
  br i1 %64, label %65, label %74

65:                                               ; preds = %56, %65
  %66 = phi float [ %71, %65 ], [ %62, %56 ]
  %67 = phi i32 [ %70, %65 ], [ %61, %56 ]
  %68 = load float, ptr %29, align 4, !tbaa !122
  call void @glVertex2f(float noundef %68, float noundef %66) #6
  %69 = load float, ptr %27, align 8, !tbaa !121
  call void @glVertex2f(float noundef %69, float noundef %66) #6
  %70 = add i32 %67, 1
  %71 = sitofp i32 %70 to float
  %72 = load float, ptr %57, align 4, !tbaa !124
  %73 = fcmp ogt float %72, %71
  br i1 %73, label %65, label %74, !llvm.loop !128

74:                                               ; preds = %65, %56
  call void @glEnd() #6
  call void @UI_view2d_constant_grid_draw(ptr noundef nonnull %7) #6
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #6
  %75 = call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #6
  %76 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %77 = load i16, ptr %76, align 8, !tbaa !129
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  %80 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %81 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %82 = select i1 %79, ptr %81, ptr %80
  %83 = load i32, ptr %82, align 4, !tbaa !109
  %84 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %85 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %86 = select i1 %79, ptr %85, ptr %84
  %87 = load i32, ptr %86, align 4, !tbaa !109
  %88 = add nsw i32 %87, 1
  call void @glEnable(i32 noundef 3042) #6
  call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -25, i32 noundef -100) #6
  %89 = icmp sgt i32 %83, %87
  %90 = load float, ptr %27, align 8, !tbaa !121
  %91 = load float, ptr %31, align 8, !tbaa !123
  %92 = load float, ptr %57, align 4, !tbaa !124
  br i1 %89, label %99, label %93

93:                                               ; preds = %74
  %94 = sitofp i32 %83 to float
  call void @glRectf(float noundef %90, float noundef %91, float noundef %94, float noundef %92) #6
  %95 = sitofp i32 %88 to float
  %96 = load float, ptr %31, align 8, !tbaa !123
  %97 = load float, ptr %29, align 4, !tbaa !122
  %98 = load float, ptr %57, align 4, !tbaa !124
  call void @glRectf(float noundef %95, float noundef %96, float noundef %97, float noundef %98) #6
  br label %101

99:                                               ; preds = %74
  %100 = load float, ptr %29, align 4, !tbaa !122
  call void @glRectf(float noundef %90, float noundef %91, float noundef %100, float noundef %92) #6
  br label %101

101:                                              ; preds = %99, %93
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #6
  %102 = sitofp i32 %83 to float
  %103 = load float, ptr %31, align 8, !tbaa !123
  %104 = load float, ptr %57, align 4, !tbaa !124
  call void @fdrawline(float noundef %102, float noundef %103, float noundef %102, float noundef %104) #6
  %105 = sitofp i32 %88 to float
  %106 = load float, ptr %31, align 8, !tbaa !123
  %107 = load float, ptr %57, align 4, !tbaa !124
  call void @fdrawline(float noundef %105, float noundef %106, float noundef %105, float noundef %107) #6
  %108 = icmp eq ptr %75, null
  br i1 %108, label %132, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.Editing, ptr %75, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !130
  %112 = icmp eq ptr %111, null
  br i1 %112, label %132, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Editing, ptr %75, i64 0, i32 2, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !131
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 8) #6
  %116 = getelementptr inbounds %struct.MetaStack, ptr %115, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !109
  %118 = sitofp i32 %117 to float
  %119 = load float, ptr %31, align 8, !tbaa !123
  %120 = getelementptr inbounds %struct.MetaStack, ptr %115, i64 0, i32 4, i64 1
  %121 = load i32, ptr %120, align 4, !tbaa !109
  %122 = sitofp i32 %121 to float
  %123 = load float, ptr %57, align 4, !tbaa !124
  call void @glRectf(float noundef %118, float noundef %119, float noundef %122, float noundef %123) #6
  call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -40) #6
  %124 = load i32, ptr %116, align 8, !tbaa !109
  %125 = sitofp i32 %124 to float
  %126 = load float, ptr %31, align 8, !tbaa !123
  %127 = load float, ptr %57, align 4, !tbaa !124
  call void @fdrawline(float noundef %125, float noundef %126, float noundef %125, float noundef %127) #6
  %128 = load i32, ptr %120, align 4, !tbaa !109
  %129 = sitofp i32 %128 to float
  %130 = load float, ptr %31, align 8, !tbaa !123
  %131 = load float, ptr %57, align 4, !tbaa !124
  call void @fdrawline(float noundef %129, float noundef %130, float noundef %129, float noundef %131) #6
  br label %132

132:                                              ; preds = %101, %109, %113
  call void @glDisable(i32 noundef 3042) #6
  br i1 %8, label %202, label %133

133:                                              ; preds = %132
  %134 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %135 = call ptr @BKE_sequencer_active_get(ptr noundef %134) #6
  %136 = load float, ptr %29, align 4, !tbaa !111
  %137 = load float, ptr %27, align 4, !tbaa !110
  %138 = fsub float %136, %137
  %139 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %140 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !132
  %142 = load i32, ptr %139, align 4, !tbaa !133
  %143 = sub nsw i32 %141, %142
  %144 = sitofp i32 %143 to float
  %145 = fdiv float %138, %144
  br label %146

146:                                              ; preds = %133, %195
  %147 = phi i32 [ 0, %133 ], [ 1, %195 ]
  %148 = phi i32 [ 0, %133 ], [ %196, %195 ]
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 -150, i32 -60
  %151 = load ptr, ptr %5, align 8, !tbaa !134
  %152 = load ptr, ptr %151, align 8, !tbaa !77
  %153 = icmp eq ptr %152, null
  br i1 %153, label %195, label %154

154:                                              ; preds = %146, %192
  %155 = phi ptr [ %193, %192 ], [ %152, %146 ]
  %156 = getelementptr inbounds %struct.Sequence, ptr %155, i64 0, i32 5
  %157 = load i32, ptr %156, align 8, !tbaa !135
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, %147
  %160 = icmp eq ptr %155, %135
  %161 = select i1 %159, i1 true, i1 %160
  br i1 %161, label %192, label %162

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.Sequence, ptr %155, i64 0, i32 15
  %164 = load i32, ptr %163, align 8, !tbaa !137
  %165 = getelementptr inbounds %struct.Sequence, ptr %155, i64 0, i32 8
  %166 = load i32, ptr %165, align 4, !tbaa !138
  %167 = call i32 @llvm.smin.i32(i32 %164, i32 %166)
  %168 = sitofp i32 %167 to float
  %169 = load float, ptr %29, align 4, !tbaa !122
  %170 = fcmp olt float %169, %168
  br i1 %170, label %192, label %171

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.Sequence, ptr %155, i64 0, i32 16
  %173 = load i32, ptr %172, align 4, !tbaa !139
  %174 = getelementptr inbounds %struct.Sequence, ptr %155, i64 0, i32 7
  %175 = load i32, ptr %174, align 8, !tbaa !140
  %176 = add nsw i32 %175, %166
  %177 = call i32 @llvm.smax.i32(i32 %176, i32 %173)
  %178 = sitofp i32 %177 to float
  %179 = load float, ptr %27, align 8, !tbaa !121
  %180 = fcmp ogt float %179, %178
  br i1 %180, label %192, label %181

181:                                              ; preds = %171
  %182 = getelementptr inbounds %struct.Sequence, ptr %155, i64 0, i32 13
  %183 = load i32, ptr %182, align 8, !tbaa !141
  %184 = sitofp i32 %183 to float
  %185 = fadd float %184, 1.000000e+00
  %186 = load float, ptr %31, align 8, !tbaa !123
  %187 = fcmp olt float %185, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = load float, ptr %57, align 4, !tbaa !124
  %190 = fcmp olt float %189, %184
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call fastcc void @draw_seq_strip(ptr noundef %134, ptr noundef %1, ptr noundef nonnull %155, i32 noundef %150, float noundef %145)
  br label %192

192:                                              ; preds = %191, %188, %181, %171, %162, %154
  %193 = load ptr, ptr %155, align 8, !tbaa !77
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %154, !llvm.loop !142

195:                                              ; preds = %192, %146
  %196 = add nuw nsw i32 %148, 1
  %197 = icmp eq i32 %148, 0
  br i1 %197, label %146, label %198, !llvm.loop !143

198:                                              ; preds = %195
  %199 = icmp eq ptr %135, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %198
  call fastcc void @draw_seq_strip(ptr noundef %134, ptr noundef %1, ptr noundef nonnull %135, i32 noundef 120, float noundef %145)
  br label %201

201:                                              ; preds = %198, %200
  call void @UI_view2d_text_cache_draw(ptr noundef %1) #6
  br label %202

202:                                              ; preds = %201, %132
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #6
  %203 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 13
  %204 = load i32, ptr %203, align 8, !tbaa !96
  %205 = trunc i32 %204 to i16
  %206 = shl i16 %205, 1
  %207 = and i16 %206, 2
  %208 = and i32 %204, 32
  %209 = icmp eq i32 %208, 0
  %210 = zext i1 %209 to i16
  %211 = or disjoint i16 %207, %210
  %212 = xor i16 %211, 2
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %212) #6
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 1) #6
  call void @ED_markers_draw(ptr noundef %0, i32 noundef 5) #6
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #6
  call void @ANIM_draw_previewrange(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #6
  %213 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %214 = load ptr, ptr %213, align 8, !tbaa !112
  %215 = icmp eq ptr %214, null
  br i1 %215, label %238, label %216

216:                                              ; preds = %202
  %217 = getelementptr inbounds %struct.Editing, ptr %214, i64 0, i32 8
  %218 = load i32, ptr %217, align 8, !tbaa !144
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %238, label %221

221:                                              ; preds = %216
  %222 = and i32 %218, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.Editing, ptr %214, i64 0, i32 7
  %226 = load i32, ptr %225, align 4, !tbaa !145
  br label %233

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %229 = load i32, ptr %228, align 8, !tbaa !146
  %230 = getelementptr inbounds %struct.Editing, ptr %214, i64 0, i32 6
  %231 = load i32, ptr %230, align 8, !tbaa !147
  %232 = add nsw i32 %231, %229
  br label %233

233:                                              ; preds = %227, %224
  %234 = phi i32 [ %226, %224 ], [ %232, %227 ]
  call void @glColor3f(float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000) #6
  call void @glBegin(i32 noundef 1) #6
  %235 = sitofp i32 %234 to float
  %236 = load float, ptr %31, align 8, !tbaa !123
  call void @glVertex2f(float noundef %235, float noundef %236) #6
  %237 = load float, ptr %57, align 4, !tbaa !124
  call void @glVertex2f(float noundef %235, float noundef %237) #6
  call void @glEnd() #6
  br label %238

238:                                              ; preds = %233, %216, %202
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6
  call void @UI_view2d_view_restore(ptr noundef %0) #6
  %239 = load i32, ptr %203, align 8, !tbaa !96
  %240 = trunc i32 %239 to i16
  %241 = and i16 %240, 1
  %242 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %241, i16 noundef signext 1, i16 noundef signext 3, i16 noundef signext 1) #6
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %242) #6
  call void @UI_view2d_scrollers_free(ptr noundef %242) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #2

declare void @boundbox_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_constant_grid_draw(ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_text_cache_draw(ptr noundef) local_unnamed_addr #2

declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ANIM_draw_previewrange(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_seq_strip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  %7 = alloca [1056 x i8], align 16
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca [3 x i8], align 1
  %13 = alloca [3 x i8], align 1
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #6
  %15 = fmul float %4, 7.000000e+00
  %16 = fmul float %4, 4.000000e+01
  %17 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 19
  %18 = load float, ptr %17, align 8, !tbaa !148
  %19 = fcmp olt float %18, %15
  %20 = fcmp ogt float %18, %16
  %21 = select i1 %20, float %16, float %18
  %22 = select i1 %19, float %15, float %21
  %23 = tail call zeroext i8 @BKE_sequence_single_check(ptr noundef %2) #6
  %24 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !149
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 8
  %28 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 15
  %29 = select i1 %26, ptr %28, ptr %27
  %30 = load i32, ptr %29, align 4, !tbaa !109
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !141
  %34 = sitofp i32 %33 to float
  %35 = fadd float %34, 0x3FC99999A0000000
  %36 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 12
  %37 = load i32, ptr %36, align 4, !tbaa !150
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %5
  %40 = load i32, ptr %27, align 4, !tbaa !138
  %41 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !140
  %43 = add nsw i32 %42, %40
  br label %47

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %46 = load i32, ptr %45, align 4, !tbaa !139
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %43, %39 ], [ %46, %44 ]
  %49 = fadd float %34, 0x3FE99999A0000000
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %13)
  %50 = icmp eq i8 %23, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = call i32 @BKE_sequence_tx_get_final_left(ptr noundef %2, i8 noundef zeroext 0) #6
  %53 = sitofp i32 %52 to float
  %54 = call i32 @BKE_sequence_tx_get_final_right(ptr noundef %2, i8 noundef zeroext 0) #6
  %55 = sitofp i32 %54 to float
  call fastcc void @draw_shadedstrip(ptr noundef %2, ptr noundef nonnull %13, float noundef %53, float noundef %35, float noundef %55, float noundef %49)
  br label %203

56:                                               ; preds = %47
  %57 = sitofp i32 %48 to float
  call fastcc void @draw_shadedstrip(ptr noundef %2, ptr noundef nonnull %13, float noundef %31, float noundef %35, float noundef %57, float noundef %49)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #6
  %58 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !151
  %60 = icmp sgt i32 %59, 7
  br i1 %60, label %202, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %28, align 8, !tbaa !137
  %63 = sitofp i32 %62 to float
  %64 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %65 = load i32, ptr %64, align 4, !tbaa !139
  %66 = sitofp i32 %65 to float
  %67 = load i32, ptr %32, align 8, !tbaa !141
  %68 = sitofp i32 %67 to float
  %69 = fadd float %68, 0x3FC99999A0000000
  %70 = fadd float %68, 0x3FE99999A0000000
  %71 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %72 = load float, ptr %71, align 4, !tbaa !116
  %73 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !115
  %75 = fsub float %72, %74
  %76 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !152
  %78 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !153
  %80 = sub nsw i32 %77, %79
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %75, %81
  %83 = fcmp ugt float %82, 0.000000e+00
  br i1 %83, label %84, label %202

84:                                               ; preds = %61
  %85 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 2
  store i8 120, ptr %85, align 1, !tbaa !154
  %86 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 1
  store i8 120, ptr %86, align 1, !tbaa !154
  store i8 120, ptr %11, align 1, !tbaa !154
  %87 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !155
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %120, label %90

90:                                               ; preds = %84
  call void @glEnable(i32 noundef 3042) #6
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10)
  %91 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !135
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 1
  %96 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 2
  br i1 %94, label %101, label %97

97:                                               ; preds = %90
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3FD3333340000000, i32 noundef -40) #6
  %98 = load i8, ptr %10, align 1, !tbaa !154
  %99 = load i8, ptr %95, align 1, !tbaa !154
  %100 = load i8, ptr %96, align 1, !tbaa !154
  call void @glColor4ub(i8 noundef zeroext %98, i8 noundef zeroext %99, i8 noundef zeroext %100, i8 noundef zeroext -86) #6
  br label %105

101:                                              ; preds = %90
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3FE3333340000000, i32 noundef 0) #6
  %102 = load i8, ptr %10, align 1, !tbaa !154
  %103 = load i8, ptr %95, align 1, !tbaa !154
  %104 = load i8, ptr %96, align 1, !tbaa !154
  call void @glColor4ub(i8 noundef zeroext %102, i8 noundef zeroext %103, i8 noundef zeroext %104, i8 noundef zeroext 110) #6
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, ptr %27, align 4, !tbaa !138
  %107 = sitofp i32 %106 to float
  %108 = fadd float %69, 0xBFC99999A0000000
  call void @glRectf(float noundef %107, float noundef %108, float noundef %63, float noundef %69) #6
  %109 = load i32, ptr %91, align 8, !tbaa !135
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  %112 = load i8, ptr %10, align 1, !tbaa !154
  %113 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !154
  %115 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !154
  %117 = select i1 %111, i8 -96, i8 -1
  call void @glColor4ub(i8 noundef zeroext %112, i8 noundef zeroext %114, i8 noundef zeroext %116, i8 noundef zeroext %117) #6
  %118 = load i32, ptr %27, align 4, !tbaa !138
  %119 = sitofp i32 %118 to float
  call void @fdrawbox(float noundef %119, float noundef %108, float noundef %63, float noundef %69) #6
  call void @glDisable(i32 noundef 3042) #6
  br label %120

120:                                              ; preds = %105, %84
  %121 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 10
  %122 = load i32, ptr %121, align 4, !tbaa !156
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %159, label %124

124:                                              ; preds = %120
  call void @glEnable(i32 noundef 3042) #6
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10)
  %125 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %126 = load i32, ptr %125, align 8, !tbaa !135
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 1
  %130 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 2
  br i1 %128, label %135, label %131

131:                                              ; preds = %124
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3FD3333340000000, i32 noundef -40) #6
  %132 = load i8, ptr %10, align 1, !tbaa !154
  %133 = load i8, ptr %129, align 1, !tbaa !154
  %134 = load i8, ptr %130, align 1, !tbaa !154
  call void @glColor4ub(i8 noundef zeroext %132, i8 noundef zeroext %133, i8 noundef zeroext %134, i8 noundef zeroext -86) #6
  br label %139

135:                                              ; preds = %124
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3FE3333340000000, i32 noundef 0) #6
  %136 = load i8, ptr %10, align 1, !tbaa !154
  %137 = load i8, ptr %129, align 1, !tbaa !154
  %138 = load i8, ptr %130, align 1, !tbaa !154
  call void @glColor4ub(i8 noundef zeroext %136, i8 noundef zeroext %137, i8 noundef zeroext %138, i8 noundef zeroext 110) #6
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i32, ptr %27, align 4, !tbaa !138
  %141 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %142 = load i32, ptr %141, align 8, !tbaa !140
  %143 = add nsw i32 %142, %140
  %144 = sitofp i32 %143 to float
  %145 = fadd float %70, 0x3FC99999A0000000
  call void @glRectf(float noundef %66, float noundef %70, float noundef %144, float noundef %145) #6
  %146 = load i32, ptr %125, align 8, !tbaa !135
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  %149 = load i8, ptr %10, align 1, !tbaa !154
  %150 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !154
  %152 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 2
  %153 = load i8, ptr %152, align 1, !tbaa !154
  %154 = select i1 %148, i8 -96, i8 -1
  call void @glColor4ub(i8 noundef zeroext %149, i8 noundef zeroext %151, i8 noundef zeroext %153, i8 noundef zeroext %154) #6
  %155 = load i32, ptr %27, align 4, !tbaa !138
  %156 = load i32, ptr %141, align 8, !tbaa !140
  %157 = add nsw i32 %156, %155
  %158 = sitofp i32 %157 to float
  call void @fdrawbox(float noundef %66, float noundef %70, float noundef %158, float noundef %145) #6
  call void @glDisable(i32 noundef 3042) #6
  br label %159

159:                                              ; preds = %139, %120
  %160 = load i32, ptr %24, align 8, !tbaa !149
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %179, label %162

162:                                              ; preds = %159
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10)
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 7.500000e-01, i32 noundef 40) #6
  call void @glColor3ubv(ptr noundef nonnull %10) #6
  %163 = load i32, ptr %27, align 4, !tbaa !138
  %164 = sitofp i32 %163 to float
  call fastcc void @draw_shadedstrip(ptr noundef %2, ptr noundef nonnull %10, float noundef %63, float noundef %69, float noundef %164, float noundef %70)
  %165 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %166 = load i32, ptr %165, align 8, !tbaa !135
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %10, float noundef 0.000000e+00, i32 noundef 24) #6
  br label %171

170:                                              ; preds = %162
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %10, i32 noundef -16) #6
  br label %171

171:                                              ; preds = %170, %169
  call void @glColor3ubv(ptr noundef nonnull %10) #6
  %172 = fcmp olt float %69, %70
  br i1 %172, label %173, label %179

173:                                              ; preds = %171, %173
  %174 = phi float [ %177, %173 ], [ %69, %171 ]
  %175 = load i32, ptr %27, align 4, !tbaa !138
  %176 = sitofp i32 %175 to float
  call void @fdrawline(float noundef %63, float noundef %174, float noundef %176, float noundef %174) #6
  %177 = call float @llvm.fmuladd.f32(float %82, float 2.000000e+00, float %174)
  %178 = fcmp olt float %177, %70
  br i1 %178, label %173, label %179, !llvm.loop !157

179:                                              ; preds = %173, %171, %159
  %180 = load i32, ptr %36, align 4, !tbaa !150
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %202, label %182

182:                                              ; preds = %179
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10)
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 7.500000e-01, i32 noundef 40) #6
  call void @glColor3ubv(ptr noundef nonnull %10) #6
  %183 = load i32, ptr %27, align 4, !tbaa !138
  %184 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %185 = load i32, ptr %184, align 8, !tbaa !140
  %186 = add nsw i32 %185, %183
  %187 = sitofp i32 %186 to float
  call fastcc void @draw_shadedstrip(ptr noundef %2, ptr noundef nonnull %10, float noundef %187, float noundef %69, float noundef %66, float noundef %70)
  %188 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %189 = load i32, ptr %188, align 8, !tbaa !135
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 -16, i32 24
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %10, ptr noundef nonnull %10, i32 noundef %192) #6
  call void @glColor3ubv(ptr noundef nonnull %10) #6
  %193 = fcmp olt float %69, %70
  br i1 %193, label %194, label %202

194:                                              ; preds = %182, %194
  %195 = phi float [ %200, %194 ], [ %69, %182 ]
  %196 = load i32, ptr %27, align 4, !tbaa !138
  %197 = load i32, ptr %184, align 8, !tbaa !140
  %198 = add nsw i32 %197, %196
  %199 = sitofp i32 %198 to float
  call void @fdrawline(float noundef %199, float noundef %195, float noundef %66, float noundef %195) #6
  %200 = call float @llvm.fmuladd.f32(float %82, float 2.000000e+00, float %195)
  %201 = fcmp olt float %200, %70
  br i1 %201, label %194, label %202, !llvm.loop !158

202:                                              ; preds = %194, %182, %56, %61, %179
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #6
  br label %203

203:                                              ; preds = %51, %202
  call fastcc void @draw_seq_handle(ptr noundef nonnull %14, ptr noundef %2, float noundef %22, i16 noundef signext 1)
  call fastcc void @draw_seq_handle(ptr noundef nonnull %14, ptr noundef %2, float noundef %22, i16 noundef signext 2)
  %204 = load i32, ptr %28, align 8, !tbaa !137
  %205 = sitofp i32 %204 to float
  %206 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %207 = load i32, ptr %206, align 4, !tbaa !139
  %208 = sitofp i32 %207 to float
  %209 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %210 = load i32, ptr %209, align 4, !tbaa !151
  %211 = icmp eq i32 %210, 4
  br i1 %211, label %212, label %376

212:                                              ; preds = %203
  %213 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %214 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %215 = load float, ptr %214, align 4, !tbaa !111
  %216 = load float, ptr %213, align 4, !tbaa !110
  %217 = fsub float %215, %216
  %218 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %219 = load i16, ptr %218, align 8, !tbaa !159
  %220 = sitofp i16 %219 to float
  %221 = fdiv float %217, %220
  %222 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %223 = load i32, ptr %222, align 8, !tbaa !135
  %224 = and i32 %223, 134217728
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %376, label %226

226:                                              ; preds = %212
  %227 = fsub float %208, %205
  %228 = fdiv float %227, %221
  %229 = call float @llvm.floor.f32(float %228)
  %230 = fpext float %229 to double
  %231 = fadd double %230, 1.000000e+00
  %232 = fptosi double %231 to i32
  %233 = fadd float %35, %49
  %234 = fmul float %233, 5.000000e-01
  %235 = fsub float %49, %35
  %236 = fmul float %235, 5.000000e-01
  %237 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 37
  %238 = load ptr, ptr %237, align 8, !tbaa !161
  %239 = getelementptr inbounds %struct.bSound, ptr %238, i64 0, i32 15
  %240 = load ptr, ptr %239, align 8, !tbaa !162
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %226
  call void @sound_read_waveform(ptr noundef %238) #6
  br label %243

243:                                              ; preds = %242, %226
  %244 = load ptr, ptr %237, align 8, !tbaa !161
  %245 = getelementptr inbounds %struct.bSound, ptr %244, i64 0, i32 15
  %246 = load ptr, ptr %245, align 8, !tbaa !162
  %247 = icmp eq ptr %246, null
  br i1 %247, label %376, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 9
  %250 = load i32, ptr %249, align 8, !tbaa !155
  %251 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 44
  %252 = load i32, ptr %251, align 8, !tbaa !164
  %253 = add nsw i32 %252, %250
  %254 = sitofp i32 %253 to double
  %255 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %256 = load i16, ptr %255, align 4, !tbaa !165
  %257 = sitofp i16 %256 to double
  %258 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %259 = load float, ptr %258, align 4, !tbaa !166
  %260 = fpext float %259 to double
  %261 = fdiv double %257, %260
  %262 = fdiv double %254, %261
  %263 = fmul double %262, 2.500000e+02
  %264 = call double @llvm.floor.f64(double %263)
  %265 = fptrunc double %264 to float
  %266 = load i32, ptr %206, align 4, !tbaa !139
  %267 = add nsw i32 %266, %253
  %268 = load i32, ptr %28, align 8, !tbaa !137
  %269 = sub i32 %267, %268
  %270 = sitofp i32 %269 to double
  %271 = fdiv double %270, %261
  %272 = fmul double %271, 2.500000e+02
  %273 = call double @llvm.ceil.f64(double %272)
  %274 = fptrunc double %273 to float
  %275 = fsub float %274, %265
  %276 = fmul float %221, %275
  %277 = fdiv float %276, %227
  %278 = sitofp i32 %232 to double
  %279 = load i32, ptr %246, align 8, !tbaa !167
  %280 = sitofp i32 %279 to float
  %281 = fsub float %280, %265
  %282 = fdiv float %281, %277
  %283 = call float @llvm.floor.f32(float %282)
  %284 = fpext float %283 to double
  %285 = fcmp ogt double %278, %284
  %286 = fptosi float %283 to i32
  %287 = select i1 %285, i32 %286, i32 %232
  call void @glBegin(i32 noundef 3) #6
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %330

289:                                              ; preds = %248
  %290 = getelementptr inbounds %struct.SoundWaveform, ptr %246, i64 0, i32 1
  br label %291

291:                                              ; preds = %289, %324
  %292 = phi i32 [ 0, %289 ], [ %328, %324 ]
  %293 = sitofp i32 %292 to float
  %294 = call float @llvm.fmuladd.f32(float %293, float %277, float %265)
  %295 = fptosi float %294 to i32
  %296 = load ptr, ptr %290, align 8, !tbaa !169
  %297 = mul nsw i32 %295, 3
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, ptr %296, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !84
  %301 = load i32, ptr %246, align 8, !tbaa !167
  %302 = add nsw i32 %295, 1
  %303 = icmp slt i32 %302, %301
  br i1 %303, label %304, label %324

304:                                              ; preds = %291
  %305 = sitofp i32 %295 to float
  %306 = fadd float %277, %305
  %307 = sext i32 %295 to i64
  %308 = add nsw i64 %307, 1
  br label %309

309:                                              ; preds = %304, %315
  %310 = phi i64 [ %308, %304 ], [ %321, %315 ]
  %311 = phi float [ %300, %304 ], [ %320, %315 ]
  %312 = trunc i64 %310 to i32
  %313 = sitofp i32 %312 to float
  %314 = fcmp ogt float %306, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %309
  %316 = mul nsw i64 %310, 3
  %317 = getelementptr inbounds float, ptr %296, i64 %316
  %318 = load float, ptr %317, align 4, !tbaa !84
  %319 = fcmp ogt float %311, %318
  %320 = select i1 %319, float %318, float %311
  %321 = add nsw i64 %310, 1
  %322 = trunc i64 %321 to i32
  %323 = icmp eq i32 %301, %322
  br i1 %323, label %324, label %309, !llvm.loop !170

324:                                              ; preds = %315, %309, %291
  %325 = phi float [ %300, %291 ], [ %320, %315 ], [ %311, %309 ]
  %326 = call float @llvm.fmuladd.f32(float %293, float %221, float %205)
  %327 = call float @llvm.fmuladd.f32(float %325, float %236, float %234)
  call void @glVertex2f(float noundef %326, float noundef %327) #6
  %328 = add nuw nsw i32 %292, 1
  %329 = icmp eq i32 %328, %287
  br i1 %329, label %330, label %291, !llvm.loop !171

330:                                              ; preds = %324, %248
  call void @glEnd() #6
  call void @glBegin(i32 noundef 3) #6
  %331 = icmp sgt i32 %287, 0
  br i1 %331, label %332, label %375

332:                                              ; preds = %330
  %333 = getelementptr inbounds %struct.SoundWaveform, ptr %246, i64 0, i32 1
  br label %334

334:                                              ; preds = %332, %369
  %335 = phi i32 [ 0, %332 ], [ %373, %369 ]
  %336 = sitofp i32 %335 to float
  %337 = call float @llvm.fmuladd.f32(float %336, float %277, float %265)
  %338 = fptosi float %337 to i32
  %339 = load ptr, ptr %333, align 8, !tbaa !169
  %340 = mul nsw i32 %338, 3
  %341 = sext i32 %340 to i64
  %342 = getelementptr float, ptr %339, i64 %341
  %343 = getelementptr float, ptr %342, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !84
  %345 = load i32, ptr %246, align 8, !tbaa !167
  %346 = getelementptr float, ptr %339, i64 1
  %347 = add nsw i32 %338, 1
  %348 = icmp slt i32 %347, %345
  br i1 %348, label %349, label %369

349:                                              ; preds = %334
  %350 = sitofp i32 %338 to float
  %351 = fadd float %277, %350
  %352 = sext i32 %338 to i64
  %353 = add nsw i64 %352, 1
  br label %354

354:                                              ; preds = %349, %360
  %355 = phi i64 [ %353, %349 ], [ %366, %360 ]
  %356 = phi float [ %344, %349 ], [ %365, %360 ]
  %357 = trunc i64 %355 to i32
  %358 = sitofp i32 %357 to float
  %359 = fcmp ogt float %351, %358
  br i1 %359, label %360, label %369

360:                                              ; preds = %354
  %361 = mul nsw i64 %355, 3
  %362 = getelementptr float, ptr %346, i64 %361
  %363 = load float, ptr %362, align 4, !tbaa !84
  %364 = fcmp olt float %356, %363
  %365 = select i1 %364, float %363, float %356
  %366 = add nsw i64 %355, 1
  %367 = trunc i64 %366 to i32
  %368 = icmp eq i32 %345, %367
  br i1 %368, label %369, label %354, !llvm.loop !172

369:                                              ; preds = %360, %354, %334
  %370 = phi float [ %344, %334 ], [ %365, %360 ], [ %356, %354 ]
  %371 = call float @llvm.fmuladd.f32(float %336, float %221, float %205)
  %372 = call float @llvm.fmuladd.f32(float %370, float %236, float %234)
  call void @glVertex2f(float noundef %371, float noundef %372) #6
  %373 = add nuw nsw i32 %335, 1
  %374 = icmp eq i32 %373, %287
  br i1 %374, label %375, label %334, !llvm.loop !173

375:                                              ; preds = %369, %330
  call void @glEnd() #6
  br label %376

376:                                              ; preds = %375, %243, %212, %203
  %377 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %378 = load i32, ptr %377, align 8, !tbaa !135
  %379 = and i32 %378, 16384
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %376
  call void @glEnable(i32 noundef 2882) #6
  call void @glEnable(i32 noundef 3042) #6
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 32) #6
  call void @glPolygonStipple(ptr noundef nonnull @stipple_diag_stripes_pos) #6
  call void @glRectf(float noundef %205, float noundef %35, float noundef %208, float noundef %49) #6
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 32) #6
  call void @glPolygonStipple(ptr noundef nonnull @stipple_diag_stripes_neg) #6
  call void @glRectf(float noundef %205, float noundef %35, float noundef %208, float noundef %49) #6
  call void @glDisable(i32 noundef 2882) #6
  call void @glDisable(i32 noundef 3042) #6
  br label %382

382:                                              ; preds = %381, %376
  %383 = call zeroext i8 @BKE_sequence_is_valid_check(ptr noundef %2) #6
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  call void @glEnable(i32 noundef 2882) #6
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #6
  call void @glPolygonStipple(ptr noundef nonnull @stipple_diag_stripes_pos) #6
  call void @glRectf(float noundef %205, float noundef %35, float noundef %208, float noundef %49) #6
  call void @glDisable(i32 noundef 2882) #6
  br label %386

386:                                              ; preds = %385, %382
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12)
  %387 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !174
  %388 = and i16 %387, 4
  %389 = icmp eq i16 %388, 0
  br i1 %389, label %402, label %390

390:                                              ; preds = %386
  %391 = load i32, ptr %377, align 8, !tbaa !135
  %392 = and i32 %391, 1
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %402, label %394

394:                                              ; preds = %390
  %395 = and i32 %391, 8
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %394
  store i8 -1, ptr %12, align 1, !tbaa !154
  %398 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 2
  store i8 40, ptr %398, align 1, !tbaa !154
  %399 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 1
  store i8 40, ptr %399, align 1, !tbaa !154
  br label %403

400:                                              ; preds = %394
  %401 = add nsw i32 %3, 120
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %12, ptr noundef nonnull %12, i32 noundef %401) #6
  br label %403

402:                                              ; preds = %390, %386
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %12, ptr noundef nonnull %12, i32 noundef %3) #6
  br label %403

403:                                              ; preds = %397, %400, %402
  call void @glColor3ubv(ptr noundef nonnull %12) #6
  %404 = load i32, ptr %377, align 8, !tbaa !135
  %405 = and i32 %404, 32
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  call void @glEnable(i32 noundef 2852) #6
  call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -30584) #6
  br label %408

408:                                              ; preds = %407, %403
  call void @uiDrawBoxShade(i32 noundef 2, float noundef %205, float noundef %35, float noundef %208, float noundef %49, float noundef 0.000000e+00, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00) #6
  %409 = load i32, ptr %377, align 8, !tbaa !135
  %410 = and i32 %409, 32
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %408
  call void @glDisable(i32 noundef 2852) #6
  br label %413

413:                                              ; preds = %412, %408
  %414 = load i32, ptr %209, align 4, !tbaa !151
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %416, label %499

416:                                              ; preds = %413
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %417 = fsub float %49, %35
  call void @glEnable(i32 noundef 3042) #6
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  %418 = load i32, ptr %377, align 8, !tbaa !135
  %419 = and i32 %418, 32
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %416
  call void @glEnable(i32 noundef 2882) #6
  call void @glPolygonStipple(ptr noundef nonnull @stipple_halftone) #6
  call void @glEnable(i32 noundef 2852) #6
  call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -30584) #6
  br label %422

422:                                              ; preds = %421, %416
  %423 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 36
  %424 = load ptr, ptr %423, align 8, !tbaa !77
  %425 = icmp eq ptr %424, null
  br i1 %425, label %436, label %426

426:                                              ; preds = %422, %426
  %427 = phi ptr [ %434, %426 ], [ %424, %422 ]
  %428 = phi i32 [ %432, %426 ], [ 32, %422 ]
  %429 = phi i32 [ %433, %426 ], [ 0, %422 ]
  %430 = getelementptr inbounds %struct.Sequence, ptr %427, i64 0, i32 13
  %431 = load i32, ptr %430, align 8, !tbaa !141
  %432 = call i32 @llvm.smin.i32(i32 %428, i32 %431)
  %433 = call i32 @llvm.smax.i32(i32 %431, i32 %429)
  %434 = load ptr, ptr %427, align 8, !tbaa !77
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %426, !llvm.loop !175

436:                                              ; preds = %426, %422
  %437 = phi i32 [ 0, %422 ], [ %433, %426 ]
  %438 = phi i32 [ 32, %422 ], [ %432, %426 ]
  %439 = add nuw i32 %437, 1
  %440 = sub i32 %439, %438
  %441 = sitofp i32 %440 to float
  %442 = fdiv float %417, %441
  %443 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  store i8 -60, ptr %443, align 1, !tbaa !154
  %444 = load ptr, ptr %423, align 8, !tbaa !77
  %445 = icmp eq ptr %444, null
  br i1 %445, label %493, label %446

446:                                              ; preds = %436, %490
  %447 = phi ptr [ %491, %490 ], [ %444, %436 ]
  %448 = getelementptr inbounds %struct.Sequence, ptr %447, i64 0, i32 15
  %449 = load i32, ptr %448, align 8, !tbaa !137
  %450 = sitofp i32 %449 to float
  %451 = fcmp ogt float %450, %208
  br i1 %451, label %490, label %452

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.Sequence, ptr %447, i64 0, i32 16
  %454 = load i32, ptr %453, align 4, !tbaa !139
  %455 = sitofp i32 %454 to float
  %456 = fcmp olt float %455, %205
  br i1 %456, label %490, label %457

457:                                              ; preds = %452
  %458 = getelementptr inbounds %struct.Sequence, ptr %447, i64 0, i32 13
  %459 = load i32, ptr %458, align 8, !tbaa !141
  %460 = sub nsw i32 %459, %438
  %461 = sitofp i32 %460 to float
  %462 = fdiv float %461, %441
  %463 = fmul float %417, %462
  %464 = load i32, ptr %377, align 8, !tbaa !135
  %465 = and i32 %464, 32
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %457
  %468 = getelementptr inbounds %struct.Sequence, ptr %447, i64 0, i32 5
  %469 = load i32, ptr %468, align 8, !tbaa !135
  %470 = and i32 %469, 32
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %467
  call void @glEnable(i32 noundef 2882) #6
  call void @glPolygonStipple(ptr noundef nonnull @stipple_halftone) #6
  call void @glEnable(i32 noundef 2852) #6
  call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -30584) #6
  br label %473

473:                                              ; preds = %472, %467, %457
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %447, ptr noundef nonnull %9)
  call void @glColor4ubv(ptr noundef nonnull %9) #6
  %474 = fcmp olt float %450, %205
  %475 = select i1 %474, float %205, float %450
  %476 = fcmp ogt float %455, %208
  %477 = select i1 %476, float %208, float %455
  %478 = fadd float %35, %463
  %479 = call float @llvm.fmuladd.f32(float %442, float 0x3FC99999A0000000, float %478)
  %480 = call float @llvm.fmuladd.f32(float %442, float 0x3FE99999A0000000, float %478)
  call void @glRectf(float noundef %475, float noundef %479, float noundef %477, float noundef %480) #6
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %9, ptr noundef nonnull %9, i32 noundef -30) #6
  call void @glColor4ubv(ptr noundef nonnull %9) #6
  call void @fdrawbox(float noundef %475, float noundef %479, float noundef %477, float noundef %480) #6
  %481 = load i32, ptr %377, align 8, !tbaa !135
  %482 = and i32 %481, 32
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %490

484:                                              ; preds = %473
  %485 = getelementptr inbounds %struct.Sequence, ptr %447, i64 0, i32 5
  %486 = load i32, ptr %485, align 8, !tbaa !135
  %487 = and i32 %486, 32
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %484
  call void @glDisable(i32 noundef 2882) #6
  call void @glDisable(i32 noundef 2852) #6
  br label %490

490:                                              ; preds = %489, %484, %473, %452, %446
  %491 = load ptr, ptr %447, align 8, !tbaa !77
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %446, !llvm.loop !176

493:                                              ; preds = %490, %436
  %494 = load i32, ptr %377, align 8, !tbaa !135
  %495 = and i32 %494, 32
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %493
  call void @glDisable(i32 noundef 2882) #6
  call void @glDisable(i32 noundef 2852) #6
  br label %498

498:                                              ; preds = %493, %497
  call void @glDisable(i32 noundef 3042) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  br label %499

499:                                              ; preds = %498, %413
  %500 = load i32, ptr %28, align 8, !tbaa !137
  %501 = sitofp i32 %500 to float
  %502 = fadd float %22, %501
  %503 = load i32, ptr %206, align 4, !tbaa !139
  %504 = sitofp i32 %503 to float
  %505 = fsub float %504, %22
  %506 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %507 = load float, ptr %506, align 8, !tbaa !121
  %508 = fcmp olt float %502, %507
  br i1 %508, label %514, label %509

509:                                              ; preds = %499
  %510 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %511 = load float, ptr %510, align 4, !tbaa !122
  %512 = fcmp ogt float %502, %511
  br i1 %512, label %513, label %514

513:                                              ; preds = %509
  br label %514

514:                                              ; preds = %499, %509, %513
  %515 = phi float [ %511, %513 ], [ %502, %509 ], [ %507, %499 ]
  %516 = fcmp olt float %505, %507
  br i1 %516, label %522, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %519 = load float, ptr %518, align 4, !tbaa !122
  %520 = fcmp ogt float %505, %519
  br i1 %520, label %521, label %522

521:                                              ; preds = %517
  br label %522

522:                                              ; preds = %514, %517, %521
  %523 = phi float [ %519, %521 ], [ %505, %517 ], [ %507, %514 ]
  %524 = fsub float %523, %515
  %525 = fdiv float %524, %4
  %526 = fcmp ogt float %525, 3.200000e+01
  br i1 %526, label %527, label %670

527:                                              ; preds = %522
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 1056, ptr nonnull %7) #6
  %528 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %529 = load i8, ptr %528, align 1, !tbaa !154
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %531, label %533

531:                                              ; preds = %527
  %532 = call ptr @BKE_sequence_give_name(ptr noundef %2) #6
  br label %533

533:                                              ; preds = %531, %527
  %534 = phi ptr [ %532, %531 ], [ %528, %527 ]
  %535 = load i32, ptr %209, align 4, !tbaa !151
  switch i32 %535, label %607 [
    i32 1, label %536
    i32 31, label %536
    i32 2, label %540
    i32 6, label %562
    i32 7, label %578
    i32 30, label %594
    i32 0, label %598
  ]

536:                                              ; preds = %533, %533
  %537 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %538 = load i32, ptr %537, align 8, !tbaa !140
  %539 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %538) #6
  br label %641

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 26
  %542 = load ptr, ptr %541, align 8, !tbaa !177
  %543 = icmp eq ptr %542, null
  br i1 %543, label %558, label %544

544:                                              ; preds = %540
  %545 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 27
  %546 = load ptr, ptr %545, align 8, !tbaa !178
  %547 = icmp eq ptr %546, null
  %548 = getelementptr inbounds %struct.ID, ptr %542, i64 0, i32 4, i64 2
  br i1 %547, label %554, label %549

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.ID, ptr %546, i64 0, i32 4, i64 2
  %551 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %552 = load i32, ptr %551, align 8, !tbaa !140
  %553 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.2, ptr noundef %534, ptr noundef nonnull %548, ptr noundef nonnull %550, i32 noundef %552) #6
  br label %641

554:                                              ; preds = %544
  %555 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %556 = load i32, ptr %555, align 8, !tbaa !140
  %557 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %534, ptr noundef nonnull %548, i32 noundef %556) #6
  br label %641

558:                                              ; preds = %540
  %559 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %560 = load i32, ptr %559, align 8, !tbaa !140
  %561 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %560) #6
  br label %641

562:                                              ; preds = %533
  %563 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 28
  %564 = load ptr, ptr %563, align 8, !tbaa !179
  %565 = icmp eq ptr %564, null
  br i1 %565, label %574, label %566

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.ID, ptr %564, i64 0, i32 4, i64 2
  %568 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %567) #7
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %572 = load i32, ptr %571, align 8, !tbaa !140
  %573 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %534, ptr noundef nonnull %567, i32 noundef %572) #6
  br label %641

574:                                              ; preds = %566, %562
  %575 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %576 = load i32, ptr %575, align 8, !tbaa !140
  %577 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %576) #6
  br label %641

578:                                              ; preds = %533
  %579 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 29
  %580 = load ptr, ptr %579, align 8, !tbaa !180
  %581 = icmp eq ptr %580, null
  br i1 %581, label %590, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.ID, ptr %580, i64 0, i32 4, i64 2
  %584 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %583) #7
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %590, label %586

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %588 = load i32, ptr %587, align 8, !tbaa !140
  %589 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %534, ptr noundef nonnull %583, i32 noundef %588) #6
  br label %641

590:                                              ; preds = %582, %578
  %591 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %592 = load i32, ptr %591, align 8, !tbaa !140
  %593 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %592) #6
  br label %641

594:                                              ; preds = %533
  %595 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 22
  %596 = load i32, ptr %595, align 8, !tbaa !181
  %597 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.4, ptr noundef %534, i32 noundef %596) #6
  br label %641

598:                                              ; preds = %533
  %599 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 24
  %600 = load ptr, ptr %599, align 8, !tbaa !182
  %601 = getelementptr inbounds %struct.Strip, ptr %600, i64 0, i32 7
  %602 = getelementptr inbounds %struct.Strip, ptr %600, i64 0, i32 6
  %603 = load ptr, ptr %602, align 8, !tbaa !183
  %604 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %605 = load i32, ptr %604, align 8, !tbaa !140
  %606 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.5, ptr noundef %534, ptr noundef nonnull %601, ptr noundef %603, i32 noundef %605) #6
  br label %641

607:                                              ; preds = %533
  %608 = and i32 %535, 8
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %614, label %610

610:                                              ; preds = %607
  %611 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %612 = load i32, ptr %611, align 8, !tbaa !140
  %613 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %612) #6
  br label %641

614:                                              ; preds = %607
  switch i32 %535, label %637 [
    i32 4, label %615
    i32 3, label %628
  ]

615:                                              ; preds = %614
  %616 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 37
  %617 = load ptr, ptr %616, align 8, !tbaa !161
  %618 = icmp eq ptr %617, null
  br i1 %618, label %624, label %619

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.bSound, ptr %617, i64 0, i32 1
  %621 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %622 = load i32, ptr %621, align 8, !tbaa !140
  %623 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %534, ptr noundef nonnull %620, i32 noundef %622) #6
  br label %641

624:                                              ; preds = %615
  %625 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %626 = load i32, ptr %625, align 8, !tbaa !140
  %627 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %626) #6
  br label %641

628:                                              ; preds = %614
  %629 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 24
  %630 = load ptr, ptr %629, align 8, !tbaa !182
  %631 = getelementptr inbounds %struct.Strip, ptr %630, i64 0, i32 7
  %632 = getelementptr inbounds %struct.Strip, ptr %630, i64 0, i32 6
  %633 = load ptr, ptr %632, align 8, !tbaa !183
  %634 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %635 = load i32, ptr %634, align 8, !tbaa !140
  %636 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.5, ptr noundef %534, ptr noundef nonnull %631, ptr noundef %633, i32 noundef %635) #6
  br label %641

637:                                              ; preds = %614
  %638 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %639 = load i32, ptr %638, align 8, !tbaa !140
  %640 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %534, i32 noundef %639) #6
  br label %641

641:                                              ; preds = %637, %628, %624, %619, %610, %598, %594, %590, %586, %574, %570, %558, %554, %549, %536
  %642 = phi i64 [ %539, %536 ], [ %553, %549 ], [ %557, %554 ], [ %561, %558 ], [ %573, %570 ], [ %577, %574 ], [ %589, %586 ], [ %593, %590 ], [ %597, %594 ], [ %606, %598 ], [ %613, %610 ], [ %623, %619 ], [ %627, %624 ], [ %636, %628 ], [ %640, %637 ]
  %643 = load i32, ptr %377, align 8, !tbaa !135
  %644 = and i32 %643, 1
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %641
  %647 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  store i8 -1, ptr %647, align 1, !tbaa !154
  %648 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  store i8 -1, ptr %648, align 1, !tbaa !154
  store i8 -1, ptr %8, align 1, !tbaa !154
  br label %665

649:                                              ; preds = %641
  %650 = load i8, ptr %13, align 1, !tbaa !154
  %651 = zext i8 %650 to i32
  %652 = getelementptr inbounds i8, ptr %13, i64 1
  %653 = load i8, ptr %652, align 1, !tbaa !154
  %654 = zext i8 %653 to i32
  %655 = add nuw nsw i32 %654, %651
  %656 = getelementptr inbounds i8, ptr %13, i64 2
  %657 = load i8, ptr %656, align 1, !tbaa !154
  %658 = zext i8 %657 to i32
  %659 = add nuw nsw i32 %655, %658
  %660 = icmp ult i32 %659, 150
  %661 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  %662 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  br i1 %660, label %663, label %664

663:                                              ; preds = %649
  store i8 80, ptr %661, align 1, !tbaa !154
  store i8 80, ptr %662, align 1, !tbaa !154
  store i8 80, ptr %8, align 1, !tbaa !154
  br label %665

664:                                              ; preds = %649
  store i8 0, ptr %661, align 1, !tbaa !154
  store i8 0, ptr %662, align 1, !tbaa !154
  store i8 0, ptr %8, align 1, !tbaa !154
  br label %665

665:                                              ; preds = %646, %663, %664
  %666 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  store i8 -1, ptr %666, align 1, !tbaa !154
  store float %515, ptr %6, align 4, !tbaa !110
  %667 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %35, ptr %667, align 4, !tbaa !115
  %668 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %523, ptr %668, align 4, !tbaa !111
  %669 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %49, ptr %669, align 4, !tbaa !116
  call void @UI_view2d_text_cache_add_rectf(ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %642, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 1056, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %670

670:                                              ; preds = %665, %522
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #6
  ret void
}

declare zeroext i8 @BKE_sequence_single_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_seq_color3ubv(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !151
  switch i32 %6, label %54 [
    i32 0, label %7
    i32 1, label %8
    i32 3, label %9
    i32 6, label %10
    i32 7, label %11
    i32 2, label %12
    i32 8, label %17
    i32 13, label %17
    i32 25, label %17
    i32 27, label %29
    i32 29, label %29
    i32 9, label %29
    i32 10, label %29
    i32 14, label %29
    i32 11, label %29
    i32 12, label %29
    i32 15, label %29
    i32 26, label %29
    i32 30, label %29
    i32 31, label %29
    i32 40, label %29
    i32 28, label %43
    i32 4, label %46
  ]

7:                                                ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 119, ptr noundef %2) #6
  br label %57

8:                                                ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 124, ptr noundef %2) #6
  br label %57

9:                                                ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 116, ptr noundef %2) #6
  br label %57

10:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 117, ptr noundef %2) #6
  br label %57

11:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 118, ptr noundef %2) #6
  br label %57

12:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 120, ptr noundef %2) #6
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !177
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %2, ptr noundef %2, i32 noundef 20) #6
  br label %57

17:                                               ; preds = %3, %3, %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 123, ptr noundef %2) #6
  %18 = load i32, ptr %5, align 4, !tbaa !151
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FA47AE140000000) #6
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, ptr %5, align 4, !tbaa !151
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FB47AE140000000) #6
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr %5, align 4, !tbaa !151
  %27 = icmp eq i32 %26, 25
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FBEB851E0000000) #6
  br label %57

29:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 122, ptr noundef %2) #6
  %30 = load i32, ptr %5, align 4, !tbaa !151
  switch i32 %30, label %40 [
    i32 9, label %31
    i32 10, label %32
    i32 14, label %33
    i32 11, label %34
    i32 12, label %35
    i32 15, label %36
    i32 26, label %37
    i32 27, label %38
    i32 30, label %39
  ]

31:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FA47AE140000000) #6
  br label %57

32:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FB47AE140000000) #6
  br label %57

33:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FBEB851E0000000) #6
  br label %57

34:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FC47AE140000000) #6
  br label %57

35:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FC99999A0000000) #6
  br label %57

36:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FCEB851E0000000) #6
  br label %57

37:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD1EB8520000000) #6
  br label %57

38:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD70A3D80000000) #6
  br label %57

39:                                               ; preds = %29
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD47AE140000000) #6
  br label %57

40:                                               ; preds = %29
  switch i32 %30, label %57 [
    i32 31, label %41
    i32 40, label %42
  ]

41:                                               ; preds = %40
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD99999A0000000) #6
  br label %57

42:                                               ; preds = %40
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FDAE147A0000000) #6
  br label %57

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %45 = load ptr, ptr %44, align 8, !tbaa !185
  tail call void @rgb_float_to_uchar(ptr noundef %2, ptr noundef %45) #6
  br label %57

46:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 121, ptr noundef %2) #6
  %47 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  store i8 -128, ptr %47, align 1, !tbaa !154
  %48 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  store i8 -128, ptr %48, align 1, !tbaa !154
  store i8 -128, ptr %4, align 1, !tbaa !154
  %49 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !135
  %51 = and i32 %50, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef %2, ptr noundef nonnull %4, ptr noundef %2, float noundef 5.000000e-01, i32 noundef 20) #6
  br label %57

54:                                               ; preds = %3
  store i8 10, ptr %2, align 1, !tbaa !154
  %55 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 -1, ptr %55, align 1, !tbaa !154
  %56 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 40, ptr %56, align 1, !tbaa !154
  br label %57

57:                                               ; preds = %40, %46, %53, %31, %33, %35, %37, %39, %42, %41, %38, %36, %34, %32, %25, %28, %12, %16, %54, %43, %11, %10, %9, %8, %7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_shadedstrip(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !135
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @glEnable(i32 noundef 2882) #6
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_halftone) #6
  br label %12

12:                                               ; preds = %11, %6
  %13 = fsub float %5, %3
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 2.500000e-01, float %3)
  %15 = tail call float @llvm.fmuladd.f32(float %13, float 0x3FE4CCCCC0000000, float %3)
  tail call void @glShadeModel(i32 noundef 7425) #6
  tail call void @glBegin(i32 noundef 7) #6
  %16 = load i32, ptr %7, align 8, !tbaa !135
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  store i8 -1, ptr %1, align 1, !tbaa !154
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %19, align 1, !tbaa !154
  %20 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 -1, ptr %20, align 1, !tbaa !154
  br label %25

21:                                               ; preds = %12
  %22 = and i32 %16, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %1, ptr noundef %1, i32 noundef -50) #6
  br label %25

25:                                               ; preds = %21, %24, %18
  tail call void @glColor3ubv(ptr noundef %1) #6
  tail call void @glVertex2f(float noundef %2, float noundef %3) #6
  tail call void @glVertex2f(float noundef %4, float noundef %3) #6
  %26 = load i32, ptr %7, align 8, !tbaa !135
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  store i8 -1, ptr %1, align 1, !tbaa !154
  %29 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %29, align 1, !tbaa !154
  %30 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 -1, ptr %30, align 1, !tbaa !154
  br label %36

31:                                               ; preds = %25
  %32 = and i32 %26, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @UI_GetColorPtrBlendShade3ubv(ptr noundef %1, ptr noundef %1, ptr noundef %1, float noundef 0.000000e+00, i32 noundef 5) #6
  br label %36

35:                                               ; preds = %31
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %1, ptr noundef %1, i32 noundef -5) #6
  br label %36

36:                                               ; preds = %34, %35, %28
  tail call void @glColor3ubv(ptr noundef %1) #6
  tail call void @glVertex2f(float noundef %4, float noundef %14) #6
  tail call void @glVertex2f(float noundef %2, float noundef %14) #6
  tail call void @glEnd() #6
  tail call void @glRectf(float noundef %2, float noundef %14, float noundef %4, float noundef %15) #6
  tail call void @glBegin(i32 noundef 7) #6
  tail call void @glVertex2f(float noundef %2, float noundef %15) #6
  tail call void @glVertex2f(float noundef %4, float noundef %15) #6
  %37 = load i32, ptr %7, align 8, !tbaa !135
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 25, i32 -15
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %1, ptr noundef %1, i32 noundef %40) #6
  tail call void @glColor3ubv(ptr noundef %1) #6
  tail call void @glVertex2f(float noundef %4, float noundef %5) #6
  tail call void @glVertex2f(float noundef %2, float noundef %5) #6
  tail call void @glEnd() #6
  %41 = load i32, ptr %7, align 8, !tbaa !135
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  tail call void @glDisable(i32 noundef 2882) #6
  br label %45

45:                                               ; preds = %44, %36
  ret void
}

declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_seq_handle(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %12 = load i32, ptr %11, align 4, !tbaa !139
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !141
  %16 = sitofp i32 %15 to float
  %17 = fadd float %16, 0x3FC99999A0000000
  %18 = fadd float %16, 0x3FE99999A0000000
  %19 = icmp eq i16 %3, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load i32, ptr %10, align 8, !tbaa !137
  %22 = sitofp i32 %21 to float
  %23 = tail call float @llvm.fmuladd.f32(float %2, float 7.500000e-01, float %22)
  %24 = fmul float %2, 2.500000e-01
  %25 = fadd float %24, %22
  store float %25, ptr %5, align 4, !tbaa !84
  %26 = fadd float %17, %18
  %27 = fmul float %26, 5.000000e-01
  %28 = fsub float %27, %17
  %29 = fmul float %28, 5.000000e-01
  %30 = fadd float %17, %29
  %31 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %30, ptr %31, align 4, !tbaa !84
  store float %25, ptr %6, align 4, !tbaa !84
  %32 = fsub float %18, %29
  %33 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %32, ptr %33, align 4, !tbaa !84
  %34 = fadd float %24, %25
  br label %49

35:                                               ; preds = %4
  %36 = fneg float %2
  %37 = tail call float @llvm.fmuladd.f32(float %36, float 7.500000e-01, float %13)
  %38 = fmul float %2, 2.500000e-01
  %39 = fsub float %13, %38
  store float %39, ptr %5, align 4, !tbaa !84
  %40 = fadd float %17, %18
  %41 = fmul float %40, 5.000000e-01
  %42 = fsub float %41, %17
  %43 = fmul float %42, 5.000000e-01
  %44 = fadd float %17, %43
  %45 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !84
  store float %39, ptr %6, align 4, !tbaa !84
  %46 = fsub float %18, %43
  %47 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !84
  %48 = fsub float %39, %38
  br label %49

49:                                               ; preds = %35, %20
  %50 = phi float [ %48, %35 ], [ %34, %20 ]
  %51 = phi float [ %41, %35 ], [ %27, %20 ]
  %52 = phi float [ %13, %35 ], [ %23, %20 ]
  %53 = phi float [ %37, %35 ], [ %22, %20 ]
  %54 = phi i32 [ 4, %35 ], [ 2, %20 ]
  store float %50, ptr %7, align 4, !tbaa !84
  %55 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %51, ptr %55, align 4, !tbaa !84
  %56 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !151
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %57) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59, %49
  tail call void @glEnable(i32 noundef 3042) #6
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #6
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !135
  %65 = and i32 %64, %54
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 80) #6
  br label %73

68:                                               ; preds = %62
  %69 = and i32 %64, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 30) #6
  br label %73

72:                                               ; preds = %68
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 22) #6
  br label %73

73:                                               ; preds = %71, %72, %67
  tail call void @glRectf(float noundef %53, float noundef %17, float noundef %52, float noundef %18) #6
  %74 = load i32, ptr %63, align 8, !tbaa !135
  %75 = and i32 %74, %54
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -56) #6
  br label %79

78:                                               ; preds = %73
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #6
  br label %79

79:                                               ; preds = %78, %77
  tail call void @glEnable(i32 noundef 2881) #6
  tail call void @glBegin(i32 noundef 4) #6
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  call void @glVertex2fv(ptr noundef nonnull %6) #6
  call void @glVertex2fv(ptr noundef nonnull %7) #6
  call void @glEnd() #6
  call void @glDisable(i32 noundef 2881) #6
  call void @glDisable(i32 noundef 3042) #6
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !174
  %82 = and i16 %81, 4
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !135
  %87 = and i32 %86, %54
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %84, %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 -1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #6
  br i1 %19, label %90, label %94

90:                                               ; preds = %89
  %91 = load i32, ptr %10, align 8, !tbaa !137
  %92 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef %91) #6
  %93 = fadd float %17, 0xBFDCCCCCC0000000
  br label %101

94:                                               ; preds = %89
  %95 = load i32, ptr %11, align 4, !tbaa !139
  %96 = add nsw i32 %95, -1
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef %96) #6
  %98 = fneg float %2
  %99 = call float @llvm.fmuladd.f32(float %98, float 7.500000e-01, float %13)
  %100 = fadd float %18, 0x3FA99999A0000000
  br label %101

101:                                              ; preds = %94, %90
  %102 = phi float [ %53, %90 ], [ %99, %94 ]
  %103 = phi float [ %93, %90 ], [ %100, %94 ]
  %104 = phi i64 [ %92, %90 ], [ %97, %94 ]
  call void @UI_view2d_text_cache_add(ptr noundef %0, float noundef %102, float noundef %103, ptr noundef nonnull %9, i64 noundef %104, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %105

105:                                              ; preds = %101, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_sequence_is_valid_check(ptr noundef) local_unnamed_addr #2

declare void @UI_GetColorPtrShade3ubv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @uiDrawBoxShade(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_byte_set_hue_float_offset(ptr noundef, float noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetColorPtrBlendShade3ubv(ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @UI_view2d_text_cache_add(ptr noundef, float noundef, float noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

declare void @sound_read_waveform(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_give_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @UI_view2d_text_cache_add_rectf(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 2080}
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !40, i64 226}
!43 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !44, i64 36, !37, i64 40, !45, i64 56, !44, i64 216, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !44, i64 236, !41, i64 240, !41, i64 244, !36, i64 248, !48, i64 256}
!44 = !{!"float", !37, i64 0}
!45 = !{!"View2D", !46, i64 0, !46, i64 16, !47, i64 32, !47, i64 48, !47, i64 64, !37, i64 80, !37, i64 88, !44, i64 96, !44, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!46 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!47 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!48 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!49 = !{!50, !40, i64 758}
!50 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !59, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !60, i64 4400, !61, i64 4416, !64, i64 4600, !36, i64 4608, !65, i64 4616, !36, i64 4640, !66, i64 4648, !66, i64 4656, !54, i64 4664, !55, i64 4824, !67, i64 4888, !36, i64 4952}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !46, i64 544, !46, i64 560, !47, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !41, i64 2576, !44, i64 2580, !37, i64 2584, !58, i64 2616, !41, i64 3976, !41, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!57 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!58 = !{!"BakeData", !53, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!59 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!60 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!61 = !{!"GameData", !60, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !62, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !63, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!62 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !36, i64 16}
!63 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!64 = !{!"UnitSettings", !44, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!65 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!66 = !{!"long", !37, i64 0}
!67 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!68 = !{!50, !41, i64 764}
!69 = !{!50, !41, i64 768}
!70 = !{!71, !36, i64 1888}
!71 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !66, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!72 = !{!73, !41, i64 8916}
!73 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !74, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !75, i64 10928}
!74 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!75 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !37, i64 26}
!76 = !{!43, !40, i64 228}
!77 = !{!36, !36, i64 0}
!78 = !{!35, !37, i64 2090}
!79 = !{!50, !37, i64 2794}
!80 = !{!43, !40, i64 224}
!81 = !{!50, !44, i64 892}
!82 = !{!50, !44, i64 896}
!83 = !{!43, !41, i64 244}
!84 = !{!44, !44, i64 0}
!85 = !{!86, !36, i64 40}
!86 = !{!"ImBuf", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !44, i64 112, !37, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !36, i64 296, !36, i64 304, !41, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !41, i64 2376, !36, i64 2384, !41, i64 2392, !41, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !41, i64 2432, !47, i64 2436, !87, i64 2456}
!87 = !{!"DDSData", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16}
!88 = !{!86, !36, i64 48}
!89 = !{!43, !40, i64 230}
!90 = !{!48, !36, i64 0}
!91 = !{!48, !36, i64 8}
!92 = !{!48, !36, i64 16}
!93 = !{!48, !36, i64 24}
!94 = !{!48, !36, i64 32}
!95 = !{!48, !36, i64 40}
!96 = !{!43, !41, i64 232}
!97 = !{ptr @make_histogram_view_from_ibuf, ptr @make_sep_waveform_view_from_ibuf, ptr @make_vectorscope_view_from_ibuf, ptr @make_waveform_view_from_ibuf}
!98 = !{!86, !41, i64 16}
!99 = !{!86, !41, i64 20}
!100 = !{!45, !44, i64 0}
!101 = !{!45, !44, i64 8}
!102 = !{!45, !44, i64 4}
!103 = !{!45, !44, i64 12}
!104 = !{!73, !40, i64 8970}
!105 = !{!86, !44, i64 112}
!106 = !{!86, !41, i64 28}
!107 = !{!86, !36, i64 2408}
!108 = !{!86, !36, i64 2400}
!109 = !{!41, !41, i64 0}
!110 = !{!46, !44, i64 0}
!111 = !{!46, !44, i64 4}
!112 = !{!50, !36, i64 256}
!113 = !{!114, !44, i64 2112}
!114 = !{!"Editing", !36, i64 0, !39, i64 8, !39, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !46, i64 2112}
!115 = !{!46, !44, i64 8}
!116 = !{!46, !44, i64 12}
!117 = !{!114, !44, i64 2120}
!118 = !{!114, !44, i64 2116}
!119 = !{!114, !44, i64 2124}
!120 = !{!114, !36, i64 24}
!121 = !{!45, !44, i64 16}
!122 = !{!45, !44, i64 20}
!123 = !{!45, !44, i64 24}
!124 = !{!45, !44, i64 28}
!125 = distinct !{!125, !126, !127}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = distinct !{!128, !126, !127}
!129 = !{!50, !40, i64 712}
!130 = !{!39, !36, i64 0}
!131 = !{!114, !36, i64 32}
!132 = !{!47, !41, i64 4}
!133 = !{!47, !41, i64 0}
!134 = !{!114, !36, i64 0}
!135 = !{!136, !41, i64 96}
!136 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !40, i64 156, !40, i64 158, !41, i64 160, !41, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !44, i64 224, !44, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !39, i64 256, !36, i64 272, !36, i64 280, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !36, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !44, i64 324, !41, i64 328, !37, i64 332, !37, i64 333, !39, i64 336}
!137 = !{!136, !41, i64 136}
!138 = !{!136, !41, i64 108}
!139 = !{!136, !41, i64 140}
!140 = !{!136, !41, i64 104}
!141 = !{!136, !41, i64 128}
!142 = distinct !{!142, !126, !127}
!143 = distinct !{!143, !126, !127}
!144 = !{!114, !41, i64 2104}
!145 = !{!114, !41, i64 2100}
!146 = !{!50, !41, i64 680}
!147 = !{!114, !41, i64 2096}
!148 = !{!136, !44, i64 152}
!149 = !{!136, !41, i64 120}
!150 = !{!136, !41, i64 124}
!151 = !{!136, !41, i64 100}
!152 = !{!47, !41, i64 12}
!153 = !{!47, !41, i64 8}
!154 = !{!37, !37, i64 0}
!155 = !{!136, !41, i64 112}
!156 = !{!136, !41, i64 116}
!157 = distinct !{!157, !126, !127}
!158 = distinct !{!158, !126, !127}
!159 = !{!160, !40, i64 208}
!160 = !{!"ARegion", !36, i64 0, !36, i64 8, !45, i64 16, !47, i64 176, !47, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!161 = !{!136, !36, i64 272}
!162 = !{!163, !36, i64 1216}
!163 = !{!"bSound", !51, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !44, i64 1176, !44, i64 1180, !44, i64 1184, !44, i64 1188, !44, i64 1192, !44, i64 1196, !41, i64 1200, !41, i64 1204, !36, i64 1208, !36, i64 1216, !36, i64 1224}
!164 = !{!136, !41, i64 312}
!165 = !{!50, !40, i64 820}
!166 = !{!50, !44, i64 900}
!167 = !{!168, !41, i64 0}
!168 = !{!"SoundWaveform", !41, i64 0, !36, i64 8}
!169 = !{!168, !36, i64 8}
!170 = distinct !{!170, !126, !127}
!171 = distinct !{!171, !126, !127}
!172 = distinct !{!172, !126, !127}
!173 = distinct !{!173, !126, !127}
!174 = !{!35, !40, i64 2084}
!175 = distinct !{!175, !126, !127}
!176 = distinct !{!176, !126, !127}
!177 = !{!136, !36, i64 184}
!178 = !{!136, !36, i64 192}
!179 = !{!136, !36, i64 200}
!180 = !{!136, !36, i64 208}
!181 = !{!136, !41, i64 160}
!182 = !{!136, !36, i64 168}
!183 = !{!184, !36, i64 32}
!184 = !{!"Strip", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !67, i64 840}
!185 = !{!136, !36, i64 304}
