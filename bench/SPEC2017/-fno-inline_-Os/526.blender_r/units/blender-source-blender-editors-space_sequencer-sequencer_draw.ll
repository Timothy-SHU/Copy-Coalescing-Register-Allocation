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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sequencer_ibuf_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SeqRenderData, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #8
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
  call void @BKE_sequencer_new_render_data(ptr dead_on_unwind nonnull writable sret(%struct.SeqRenderData) align 8 %6, ptr noundef %40, ptr noundef %0, ptr noundef %1, i32 noundef %31, i32 noundef %38, i32 noundef %22) #9
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
  %49 = call ptr @BKE_sequencer_give_ibuf(ptr noundef nonnull %6, float noundef %44, i32 noundef %47) #9
  br label %52

50:                                               ; preds = %24
  %51 = call ptr @BKE_sequencer_give_ibuf_threaded(ptr noundef nonnull %6, float noundef %44, i32 noundef %47) #9
  br label %52

52:                                               ; preds = %48, %50
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ]
  store i8 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !34
  br label %54

54:                                               ; preds = %20, %52
  %55 = phi ptr [ %53, %52 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #8
  ret ptr %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_sequencer_new_render_data(ptr dead_on_unwind writable sret(%struct.SeqRenderData) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_sequencer_give_ibuf(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_give_ibuf_threaded(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_image_seq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store ptr null, ptr %10, align 8, !tbaa !77
  %13 = tail call zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr noundef %3) #9
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
  %22 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  tail call void @WM_jobs_kill_type(ptr noundef %22, ptr noundef null, i32 noundef 1) #9
  %23 = load i8, ptr %17, align 2, !tbaa !79
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  tail call void @WM_jobs_kill_type(ptr noundef %27, ptr noundef null, i32 noundef 3) #9
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
  br i1 %41, label %400, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 33
  %44 = load <2 x i32>, ptr %43, align 4, !tbaa !80
  %45 = sitofp <2 x i32> %44 to <2 x float>
  %46 = insertelement <2 x float> poison, float %40, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = fmul <2 x float> %47, %45
  %49 = fdiv <2 x float> %48, <float 1.000000e+02, float 1.000000e+02>
  %50 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 9
  %51 = load i16, ptr %50, align 8, !tbaa !81
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %66

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 63
  %55 = load float, ptr %54, align 4, !tbaa !82
  %56 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 64
  %57 = load float, ptr %56, align 8, !tbaa !83
  %58 = fdiv float %55, %57
  %59 = extractelement <2 x float> %49, i64 0
  %60 = fmul float %59, %58
  %61 = fdiv float %39, 1.000000e+02
  %62 = insertelement <2 x float> %49, float %60, i64 0
  %63 = insertelement <2 x float> poison, float %61, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fdiv <2 x float> %62, %64
  br label %66

66:                                               ; preds = %53, %42
  %67 = phi <2 x float> [ %65, %53 ], [ %49, %42 ]
  %68 = icmp eq i8 %6, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 16
  %71 = load i32, ptr %70, align 4, !tbaa !84
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %66
  call void @UI_GetThemeColor3fv(i32 noundef 125, ptr noundef nonnull %8) #9
  %74 = load float, ptr %8, align 4, !tbaa !85
  %75 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !85
  %77 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !85
  call void @glClearColor(float noundef %74, float noundef %76, float noundef %78, float noundef 0.000000e+00) #9
  call void @glClear(i32 noundef 16384) #9
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !78
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %400

82:                                               ; preds = %79
  %83 = call ptr @sequencer_ibuf_get(ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5) #10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %400, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !86
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !89
  %92 = icmp eq ptr %91, null
  br i1 %92, label %400, label %93

93:                                               ; preds = %89, %85
  %94 = load i16, ptr %50, align 8, !tbaa !81
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 12
  %98 = load i16, ptr %97, align 2, !tbaa !90
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %159, label %100

100:                                              ; preds = %96, %93
  %101 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18
  call fastcc void @sequencer_check_scopes(ptr noundef nonnull %101, ptr noundef nonnull %83) #10
  %102 = load i16, ptr %50, align 8, !tbaa !81
  switch i16 %102, label %158 [
    i16 1, label %103
    i16 2, label %121
    i16 3, label %138
    i16 4, label %144
  ]

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !77
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %153

107:                                              ; preds = %103
  %108 = call ptr @IMB_dupImBuf(ptr noundef nonnull %83) #9
  %109 = getelementptr inbounds %struct.ImBuf, ptr %108, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !89
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 44
  %114 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 45
  call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef nonnull %108, ptr noundef nonnull %113, ptr noundef nonnull %114) #9
  br label %115

115:                                              ; preds = %112, %107
  %116 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 12
  %117 = load i16, ptr %116, align 2, !tbaa !90
  %118 = sitofp i16 %117 to float
  %119 = call ptr @make_zebra_view_from_ibuf(ptr noundef nonnull %108, float noundef %118) #9
  store ptr %119, ptr %104, align 8, !tbaa !91
  call void @IMB_freeImBuf(ptr noundef nonnull %108) #9
  %120 = load ptr, ptr %104, align 8, !tbaa !77
  br label %150

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %123 = load i32, ptr %122, align 8, !tbaa !92
  %124 = and i32 %123, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !77
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %153

130:                                              ; preds = %126
  %131 = call fastcc ptr @sequencer_make_scope(ptr noundef nonnull %1, ptr noundef nonnull %83, ptr noundef nonnull @make_sep_waveform_view_from_ibuf) #10
  store ptr %131, ptr %127, align 8, !tbaa !93
  br label %150

132:                                              ; preds = %121
  %133 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !77
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = call fastcc ptr @sequencer_make_scope(ptr noundef nonnull %1, ptr noundef nonnull %83, ptr noundef nonnull @make_waveform_view_from_ibuf) #10
  store ptr %137, ptr %133, align 8, !tbaa !94
  br label %150

138:                                              ; preds = %100
  %139 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !77
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = call fastcc ptr @sequencer_make_scope(ptr noundef nonnull %1, ptr noundef nonnull %83, ptr noundef nonnull @make_vectorscope_view_from_ibuf) #10
  store ptr %143, ptr %139, align 8, !tbaa !95
  br label %150

144:                                              ; preds = %100
  %145 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !77
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = call fastcc ptr @sequencer_make_scope(ptr noundef nonnull %1, ptr noundef nonnull %83, ptr noundef nonnull @make_histogram_view_from_ibuf) #10
  store ptr %149, ptr %145, align 8, !tbaa !96
  br label %150

150:                                              ; preds = %148, %142, %136, %130, %115
  %151 = phi ptr [ %120, %115 ], [ %131, %130 ], [ %137, %136 ], [ %143, %142 ], [ %149, %148 ]
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %144, %138, %132, %126, %103, %150
  %154 = phi ptr [ %151, %150 ], [ %146, %144 ], [ %140, %138 ], [ %134, %132 ], [ %128, %126 ], [ %105, %103 ]
  store ptr %83, ptr %101, align 8, !tbaa !97
  %155 = getelementptr inbounds %struct.ImBuf, ptr %154, i64 0, i32 2
  %156 = load <2 x i32>, ptr %155, align 8, !tbaa !80
  %157 = sitofp <2 x i32> %156 to <2 x float>
  br label %159

158:                                              ; preds = %100, %150
  store ptr null, ptr %101, align 8, !tbaa !97
  br label %159

159:                                              ; preds = %153, %158, %96
  %160 = phi ptr [ null, %96 ], [ %154, %153 ], [ null, %158 ]
  %161 = phi <2 x float> [ %67, %96 ], [ %157, %153 ], [ %67, %158 ]
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  %162 = extractelement <2 x float> %161, i64 0
  %163 = fadd float %162, 5.000000e-01
  %164 = fptosi float %163 to i32
  %165 = extractelement <2 x float> %161, i64 1
  %166 = fadd float %165, 5.000000e-01
  %167 = fptosi float %166 to i32
  call void @UI_view2d_totRect_set(ptr noundef nonnull %12, i32 noundef %164, i32 noundef %167) #9
  call void @UI_view2d_curRect_validate(ptr noundef nonnull %12) #9
  call void @UI_view2d_view_ortho(ptr noundef nonnull %12) #9
  %168 = load i16, ptr %50, align 8, !tbaa !81
  %169 = icmp eq i16 %168, 1
  br i1 %169, label %170, label %183

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %172 = load i32, ptr %171, align 8, !tbaa !92
  %173 = and i32 %172, 64
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  call void @glEnable(i32 noundef 3042) #9
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  %176 = load float, ptr %12, align 8, !tbaa !98
  %177 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %178 = load float, ptr %177, align 8, !tbaa !99
  %179 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !100
  %181 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %182 = load float, ptr %181, align 4, !tbaa !101
  call void @fdrawcheckerboard(float noundef %176, float noundef %178, float noundef %180, float noundef %182) #9
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  br label %183

183:                                              ; preds = %170, %175, %159
  %184 = icmp eq ptr %160, null
  br i1 %184, label %197, label %185

185:                                              ; preds = %183
  call void @IMB_freeImBuf(ptr noundef nonnull %83) #9
  %186 = getelementptr inbounds %struct.ImBuf, ptr %160, i64 0, i32 9
  %187 = load ptr, ptr %186, align 8, !tbaa !89
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ImBuf, ptr %160, i64 0, i32 8
  %191 = load ptr, ptr %190, align 8, !tbaa !86
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  call void @IMB_rect_from_float(ptr noundef nonnull %160) #9
  br label %194

194:                                              ; preds = %193, %189, %185
  %195 = getelementptr inbounds %struct.ImBuf, ptr %160, i64 0, i32 8
  %196 = load ptr, ptr %195, align 8, !tbaa !86
  br label %260

197:                                              ; preds = %183
  %198 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !102
  %199 = icmp ne i16 %198, 1
  %200 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 18
  %201 = load float, ptr %200, align 8, !tbaa !103
  %202 = fcmp une float %201, 0.000000e+00
  %203 = or i1 %199, %202
  br i1 %203, label %237, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !89
  %207 = icmp eq ptr %206, null
  br i1 %207, label %223, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 5
  %210 = load i32, ptr %209, align 4, !tbaa !104
  switch i32 %210, label %212 [
    i32 4, label %213
    i32 3, label %211
  ]

211:                                              ; preds = %208
  br label %213

212:                                              ; preds = %208
  br label %213

213:                                              ; preds = %208, %211, %212
  %214 = phi i32 [ 6407, %211 ], [ 6408, %212 ], [ 6408, %208 ]
  %215 = phi ptr [ %206, %211 ], [ null, %212 ], [ %206, %208 ]
  %216 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 35
  %217 = load ptr, ptr %216, align 8, !tbaa !105
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %213
  %220 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef nonnull %217, float noundef %201, i8 noundef zeroext 1) #9
  br label %230

221:                                              ; preds = %213
  %222 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw_ctx(ptr noundef %0, float noundef %201, i8 noundef zeroext 1) #9
  br label %230

223:                                              ; preds = %204
  %224 = load ptr, ptr %86, align 8, !tbaa !86
  %225 = icmp eq ptr %224, null
  br i1 %225, label %240, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 34
  %228 = load ptr, ptr %227, align 8, !tbaa !106
  %229 = call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef %228, float noundef %201, i8 noundef zeroext 0) #9
  br label %230

230:                                              ; preds = %221, %219, %226
  %231 = phi i8 [ %229, %226 ], [ %222, %221 ], [ %220, %219 ]
  %232 = phi i32 [ 5121, %226 ], [ 5126, %221 ], [ 5126, %219 ]
  %233 = phi i32 [ 6408, %226 ], [ %214, %221 ], [ %214, %219 ]
  %234 = phi ptr [ %224, %226 ], [ %215, %221 ], [ %215, %219 ]
  %235 = load ptr, ptr %86, align 8, !tbaa !86
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %250

237:                                              ; preds = %197
  %238 = load ptr, ptr %86, align 8, !tbaa !86
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %252

240:                                              ; preds = %223, %237, %230
  %241 = phi ptr [ %234, %230 ], [ null, %237 ], [ null, %223 ]
  %242 = phi i32 [ %233, %230 ], [ 6408, %237 ], [ 6408, %223 ]
  %243 = phi i32 [ %232, %230 ], [ 5121, %237 ], [ 5121, %223 ]
  %244 = phi i8 [ %231, %230 ], [ 0, %237 ], [ 0, %223 ]
  %245 = getelementptr inbounds %struct.ImBuf, ptr %83, i64 0, i32 9
  %246 = load ptr, ptr %245, align 8, !tbaa !89
  %247 = icmp eq ptr %246, null
  %248 = icmp ne i8 %244, 0
  %249 = select i1 %247, i1 true, i1 %248
  br i1 %249, label %254, label %252

250:                                              ; preds = %230
  %251 = icmp eq i8 %231, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %237, %240, %250
  %253 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %10) #9
  br label %254

254:                                              ; preds = %252, %250, %240
  %255 = phi i8 [ %231, %250 ], [ 0, %252 ], [ %244, %240 ]
  %256 = phi i32 [ %232, %250 ], [ 5121, %252 ], [ %243, %240 ]
  %257 = phi i32 [ %233, %250 ], [ 6408, %252 ], [ %242, %240 ]
  %258 = phi ptr [ %234, %250 ], [ %253, %252 ], [ %241, %240 ]
  %259 = icmp eq i8 %255, 0
  br label %260

260:                                              ; preds = %254, %194
  %261 = phi i1 [ true, %194 ], [ %259, %254 ]
  %262 = phi i32 [ 5121, %194 ], [ %256, %254 ]
  %263 = phi i32 [ 6408, %194 ], [ %257, %254 ]
  %264 = phi ptr [ %196, %194 ], [ %258, %254 ]
  %265 = phi ptr [ %160, %194 ], [ %83, %254 ]
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #9
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %266 = call i32 @glaGetOneInteger(i32 noundef 3553) #9
  call void @glEnable(i32 noundef 3553) #9
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %9) #9
  %267 = load i32, ptr %9, align 4, !tbaa !80
  call void @glBindTexture(i32 noundef 3553, i32 noundef %267) #9
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #9
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #9
  %268 = icmp eq i32 %262, 5126
  %269 = getelementptr inbounds %struct.ImBuf, ptr %265, i64 0, i32 2
  %270 = load i32, ptr %269, align 8, !tbaa !107
  %271 = getelementptr inbounds %struct.ImBuf, ptr %265, i64 0, i32 3
  %272 = load i32, ptr %271, align 4, !tbaa !108
  br i1 %268, label %273, label %274

273:                                              ; preds = %260
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 34842, i32 noundef %270, i32 noundef %272, i32 noundef 0, i32 noundef %263, i32 noundef 5126, ptr noundef %264) #9
  br label %275

274:                                              ; preds = %260
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef %270, i32 noundef %272, i32 noundef 0, i32 noundef %263, i32 noundef %262, ptr noundef %264) #9
  br label %275

275:                                              ; preds = %274, %273
  call void @glBegin(i32 noundef 7) #9
  br i1 %68, label %328, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 16
  %278 = load i32, ptr %277, align 4, !tbaa !84
  switch i32 %278, label %340 [
    i32 0, label %279
    i32 1, label %316
  ]

279:                                              ; preds = %276
  %280 = load float, ptr %12, align 8, !tbaa !98
  %281 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %12) #10
  %282 = call float @llvm.fabs.f32(float %281)
  %283 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 19
  %284 = load ptr, ptr %283, align 8, !tbaa !109
  %285 = getelementptr inbounds %struct.Editing, ptr %284, i64 0, i32 10
  %286 = load float, ptr %285, align 8, !tbaa !110
  %287 = call float @llvm.fmuladd.f32(float %282, float %286, float %280)
  %288 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %289 = load float, ptr %288, align 8, !tbaa !99
  %290 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %12) #10
  %291 = call float @llvm.fabs.f32(float %290)
  %292 = getelementptr inbounds %struct.Editing, ptr %284, i64 0, i32 10, i32 2
  %293 = load float, ptr %292, align 8, !tbaa !112
  %294 = call float @llvm.fmuladd.f32(float %291, float %293, float %289)
  %295 = getelementptr inbounds %struct.Editing, ptr %284, i64 0, i32 10, i32 1
  %296 = load float, ptr %295, align 4, !tbaa !113
  %297 = call float @llvm.fmuladd.f32(float %282, float %296, float %280)
  %298 = getelementptr inbounds %struct.Editing, ptr %284, i64 0, i32 10, i32 3
  %299 = load float, ptr %298, align 4, !tbaa !114
  %300 = call float @llvm.fmuladd.f32(float %291, float %299, float %289)
  call void @glTexCoord2f(float noundef %286, float noundef %293) #9
  call void @glVertex2f(float noundef %287, float noundef %294) #9
  %301 = load ptr, ptr %283, align 8, !tbaa !109
  %302 = getelementptr inbounds %struct.Editing, ptr %301, i64 0, i32 10
  %303 = load float, ptr %302, align 8, !tbaa !110
  %304 = getelementptr inbounds %struct.Editing, ptr %301, i64 0, i32 10, i32 3
  %305 = load float, ptr %304, align 4, !tbaa !114
  call void @glTexCoord2f(float noundef %303, float noundef %305) #9
  call void @glVertex2f(float noundef %287, float noundef %300) #9
  %306 = load ptr, ptr %283, align 8, !tbaa !109
  %307 = getelementptr inbounds %struct.Editing, ptr %306, i64 0, i32 10, i32 1
  %308 = load float, ptr %307, align 4, !tbaa !113
  %309 = getelementptr inbounds %struct.Editing, ptr %306, i64 0, i32 10, i32 3
  %310 = load float, ptr %309, align 4, !tbaa !114
  call void @glTexCoord2f(float noundef %308, float noundef %310) #9
  call void @glVertex2f(float noundef %297, float noundef %300) #9
  %311 = load ptr, ptr %283, align 8, !tbaa !109
  %312 = getelementptr inbounds %struct.Editing, ptr %311, i64 0, i32 10, i32 1
  %313 = load float, ptr %312, align 4, !tbaa !113
  %314 = getelementptr inbounds %struct.Editing, ptr %311, i64 0, i32 10, i32 2
  %315 = load float, ptr %314, align 8, !tbaa !112
  call void @glTexCoord2f(float noundef %313, float noundef %315) #9
  call void @glVertex2f(float noundef %297, float noundef %294) #9
  br label %340

316:                                              ; preds = %276
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  %317 = load float, ptr %12, align 8, !tbaa !98
  %318 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %319 = load float, ptr %318, align 8, !tbaa !99
  call void @glVertex2f(float noundef %317, float noundef %319) #9
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  %320 = load float, ptr %12, align 8, !tbaa !98
  %321 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %322 = load float, ptr %321, align 4, !tbaa !101
  call void @glVertex2f(float noundef %320, float noundef %322) #9
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %323 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %324 = load float, ptr %323, align 4, !tbaa !100
  %325 = load float, ptr %321, align 4, !tbaa !101
  call void @glVertex2f(float noundef %324, float noundef %325) #9
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  %326 = load float, ptr %323, align 4, !tbaa !100
  %327 = load float, ptr %318, align 8, !tbaa !99
  call void @glVertex2f(float noundef %326, float noundef %327) #9
  br label %340

328:                                              ; preds = %275
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  %329 = load float, ptr %12, align 8, !tbaa !98
  %330 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %331 = load float, ptr %330, align 8, !tbaa !99
  call void @glVertex2f(float noundef %329, float noundef %331) #9
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  %332 = load float, ptr %12, align 8, !tbaa !98
  %333 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %334 = load float, ptr %333, align 4, !tbaa !101
  call void @glVertex2f(float noundef %332, float noundef %334) #9
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %335 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %336 = load float, ptr %335, align 4, !tbaa !100
  %337 = load float, ptr %333, align 4, !tbaa !101
  call void @glVertex2f(float noundef %336, float noundef %337) #9
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #9
  %338 = load float, ptr %335, align 4, !tbaa !100
  %339 = load float, ptr %330, align 8, !tbaa !99
  call void @glVertex2f(float noundef %338, float noundef %339) #9
  br label %340

340:                                              ; preds = %276, %279, %316, %328
  call void @glEnd() #9
  call void @glBindTexture(i32 noundef 3553, i32 noundef %266) #9
  call void @glDisable(i32 noundef 3553) #9
  %341 = load i16, ptr %50, align 8, !tbaa !81
  %342 = icmp eq i16 %341, 1
  br i1 %342, label %343, label %349

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %345 = load i32, ptr %344, align 8, !tbaa !92
  %346 = and i32 %345, 64
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %343
  call void @glDisable(i32 noundef 3042) #9
  br label %349

349:                                              ; preds = %348, %343, %340
  call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %9) #9
  br i1 %261, label %351, label %350

350:                                              ; preds = %349
  call void @IMB_colormanagement_finish_glsl_draw() #9
  br label %351

351:                                              ; preds = %350, %349
  %352 = load i16, ptr %50, align 8, !tbaa !81
  %353 = icmp eq i16 %352, 1
  br i1 %353, label %354, label %380

354:                                              ; preds = %351
  %355 = load float, ptr %12, align 8, !tbaa !98
  %356 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  %357 = load float, ptr %356, align 8, !tbaa !99
  %358 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 1
  %359 = load float, ptr %358, align 4, !tbaa !100
  %360 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 3
  %361 = load float, ptr %360, align 4, !tbaa !101
  call void @setlinestyle(i32 noundef 3) #9
  call void @UI_ThemeColorBlendShade(i32 noundef 25, i32 noundef 2, float noundef 1.000000e+00, i32 noundef 0) #9
  call void @glBegin(i32 noundef 2) #9
  %362 = fadd float %355, -5.000000e-01
  %363 = fadd float %357, -5.000000e-01
  call void @glVertex2f(float noundef %362, float noundef %363) #9
  %364 = fadd float %361, 5.000000e-01
  call void @glVertex2f(float noundef %362, float noundef %364) #9
  %365 = fadd float %359, 5.000000e-01
  call void @glVertex2f(float noundef %365, float noundef %364) #9
  call void @glVertex2f(float noundef %365, float noundef %363) #9
  call void @glEnd() #9
  %366 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %367 = load i32, ptr %366, align 8, !tbaa !92
  %368 = and i32 %367, 8
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %379, label %370

370:                                              ; preds = %354
  %371 = fsub float %359, %355
  %372 = fmul float %371, 0x3FB99999A0000000
  %373 = fadd float %355, %372
  %374 = fsub float %359, %372
  %375 = fsub float %361, %357
  %376 = fmul float %375, 0x3FB99999A0000000
  %377 = fadd float %357, %376
  %378 = fsub float %361, %376
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #9
  call void @uiSetRoundBox(i32 noundef 15) #9
  call void @uiDrawBox(i32 noundef 2, float noundef %373, float noundef %377, float noundef %374, float noundef %378, float noundef 1.200000e+01) #9
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #9
  br label %379

379:                                              ; preds = %370, %354
  call void @setlinestyle(i32 noundef 0) #9
  br label %380

380:                                              ; preds = %379, %351
  %381 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 13
  %382 = load i32, ptr %381, align 8, !tbaa !92
  %383 = and i32 %382, 16
  %384 = icmp ne i32 %383, 0
  %385 = icmp ne i8 %13, 0
  %386 = select i1 %384, i1 %385, i1 false
  br i1 %386, label %387, label %388

387:                                              ; preds = %380
  call void @ED_gpencil_draw_2dimage(ptr noundef %0) #9
  br label %388

388:                                              ; preds = %387, %380
  br i1 %184, label %389, label %390

389:                                              ; preds = %388
  call void @IMB_freeImBuf(ptr noundef nonnull %265) #9
  br label %390

390:                                              ; preds = %389, %388
  call void @UI_view2d_view_restore(ptr noundef %0) #9
  %391 = load i32, ptr %381, align 8, !tbaa !92
  %392 = and i32 %391, 16
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, i1 %385, i1 false
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #9
  br label %396

396:                                              ; preds = %395, %390
  %397 = load ptr, ptr %10, align 8, !tbaa !77
  %398 = icmp eq ptr %397, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %396
  call void @IMB_display_buffer_release(ptr noundef nonnull %397) #9
  br label %400

400:                                              ; preds = %396, %399, %89, %82, %79, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_sequencer_check_show_imbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_kill_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_check_scopes(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !115 {
  %3 = load ptr, ptr %0, align 8, !tbaa !97
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SequencerScopes, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @IMB_freeImBuf(ptr noundef nonnull %7) #9
  store ptr null, ptr %6, align 8, !tbaa !91
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.SequencerScopes, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @IMB_freeImBuf(ptr noundef nonnull %12) #9
  store ptr null, ptr %11, align 8, !tbaa !94
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.SequencerScopes, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IMB_freeImBuf(ptr noundef nonnull %17) #9
  store ptr null, ptr %16, align 8, !tbaa !93
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.SequencerScopes, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @IMB_freeImBuf(ptr noundef nonnull %22) #9
  store ptr null, ptr %21, align 8, !tbaa !95
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.SequencerScopes, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !96
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @IMB_freeImBuf(ptr noundef nonnull %27) #9
  store ptr null, ptr %26, align 8, !tbaa !96
  br label %30

30:                                               ; preds = %25, %29, %2
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_imbuf_make_display_space(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_zebra_view_from_ibuf(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sequencer_make_scope(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !116 {
  %4 = tail call ptr @IMB_dupImBuf(ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  tail call void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %7 = tail call ptr %2(ptr noundef %4) #9, !callees !117
  tail call void @IMB_freeImBuf(ptr noundef %4) #9
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @make_sep_waveform_view_from_ibuf(ptr noundef) #2

; Function Attrs: optsize
declare ptr @make_waveform_view_from_ibuf(ptr noundef) #2

; Function Attrs: optsize
declare ptr @make_vectorscope_view_from_ibuf(ptr noundef) #2

; Function Attrs: optsize
declare ptr @make_histogram_view_from_ibuf(ptr noundef) #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_curRect_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_colormanagement_setup_glsl_draw_ctx(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @glaGetOneInteger(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !119
  %4 = load float, ptr %0, align 4, !tbaa !120
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !122
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !123
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_draw_2dimage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_timeline_seq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #9
  %6 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %3) #9
  %8 = icmp eq ptr %5, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load float, ptr %3, align 4, !tbaa !85
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !85
  %19 = fadd float %18, 0xBFB99999A0000000
  call void @glClearColor(float noundef %14, float noundef %16, float noundef %19, float noundef 0.000000e+00) #9
  br label %26

20:                                               ; preds = %9, %2
  %21 = load float, ptr %3, align 4, !tbaa !85
  %22 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !85
  call void @glClearColor(float noundef %21, float noundef %23, float noundef %25, float noundef 0.000000e+00) #9
  br label %26

26:                                               ; preds = %20, %13
  call void @glClear(i32 noundef 16384) #9
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #9
  call void @boundbox_seq(ptr noundef %4, ptr noundef nonnull %7) #9
  call fastcc void @draw_seq_backdrop(ptr noundef nonnull %7) #10
  call void @UI_view2d_constant_grid_draw(ptr noundef nonnull %7) #9
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #9
  call fastcc void @seq_draw_sfra_efra(ptr noundef %4, ptr noundef nonnull %7) #10
  br i1 %8, label %28, label %27

27:                                               ; preds = %26
  call fastcc void @draw_seq_strips(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #10
  call void @UI_view2d_text_cache_draw(ptr noundef %1) #9
  br label %28

28:                                               ; preds = %27, %26
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #9
  %29 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !92
  %31 = trunc i32 %30 to i16
  %32 = shl i16 %31, 1
  %33 = and i16 %32, 2
  %34 = and i32 %30, 32
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i16
  %37 = or disjoint i16 %33, %36
  %38 = xor i16 %37, 2
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %38) #9
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 1) #9
  call void @ED_markers_draw(ptr noundef %0, i32 noundef 5) #9
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #9
  call void @ANIM_draw_previewrange(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #9
  %39 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.Editing, ptr %40, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !125
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  %48 = and i32 %44, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Editing, ptr %40, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !126
  br label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !127
  %56 = getelementptr inbounds %struct.Editing, ptr %40, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !128
  %58 = add nsw i32 %57, %55
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i32 [ %52, %50 ], [ %58, %53 ]
  call void @glColor3f(float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000) #9
  call void @glBegin(i32 noundef 1) #9
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %63 = load float, ptr %62, align 8, !tbaa !129
  call void @glVertex2f(float noundef %61, float noundef %63) #9
  %64 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %65 = load float, ptr %64, align 4, !tbaa !130
  call void @glVertex2f(float noundef %61, float noundef %65) #9
  call void @glEnd() #9
  br label %66

66:                                               ; preds = %59, %42, %28
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #9
  call void @UI_view2d_view_restore(ptr noundef %0) #9
  %67 = load i32, ptr %29, align 8, !tbaa !92
  %68 = trunc i32 %67 to i16
  %69 = and i16 %68, 1
  %70 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %69, i16 noundef signext 1, i16 noundef signext 3, i16 noundef signext 1) #9
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %70) #9
  call void @UI_view2d_scrollers_free(ptr noundef %70) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @boundbox_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_seq_backdrop(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !131 {
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -20) #9
  %2 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !133
  tail call void @glRectf(float noundef %3, float noundef -1.000000e+00, float noundef %5, float noundef 1.000000e+00) #9
  %6 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !129
  %8 = fptosi float %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = tail call fastcc i32 @max_ii(i32 noundef 1, i32 noundef %9) #10
  tail call void @glBegin(i32 noundef 7) #9
  %11 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %12 = sitofp i32 %10 to float
  %13 = load float, ptr %11, align 4, !tbaa !130
  %14 = fcmp ogt float %13, %12
  br i1 %14, label %15, label %31

15:                                               ; preds = %1, %15
  %16 = phi float [ %28, %15 ], [ %12, %1 ]
  %17 = phi i32 [ %27, %15 ], [ %10, %1 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 -25, i32 -15
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef %20) #9
  %21 = load float, ptr %4, align 4, !tbaa !133
  tail call void @glVertex2f(float noundef %21, float noundef %16) #9
  %22 = load float, ptr %2, align 8, !tbaa !132
  tail call void @glVertex2f(float noundef %22, float noundef %16) #9
  %23 = load float, ptr %2, align 8, !tbaa !132
  %24 = add nsw i32 %17, 1
  %25 = sitofp i32 %24 to float
  tail call void @glVertex2f(float noundef %23, float noundef %25) #9
  %26 = load float, ptr %4, align 4, !tbaa !133
  tail call void @glVertex2f(float noundef %26, float noundef %25) #9
  %27 = add i32 %17, 1
  %28 = sitofp i32 %27 to float
  %29 = load float, ptr %11, align 4, !tbaa !130
  %30 = fcmp ogt float %29, %28
  br i1 %30, label %15, label %31, !llvm.loop !134

31:                                               ; preds = %15, %1
  tail call void @glEnd() #9
  %32 = load float, ptr %6, align 8, !tbaa !129
  %33 = fptosi float %32 to i32
  %34 = add nsw i32 %33, -1
  %35 = tail call fastcc i32 @max_ii(i32 noundef 1, i32 noundef %34) #10
  tail call void @UI_ThemeColor(i32 noundef 24) #9
  tail call void @glBegin(i32 noundef 1) #9
  %36 = sitofp i32 %35 to float
  %37 = load float, ptr %11, align 4, !tbaa !130
  %38 = fcmp ogt float %37, %36
  br i1 %38, label %39, label %48

39:                                               ; preds = %31, %39
  %40 = phi float [ %45, %39 ], [ %36, %31 ]
  %41 = phi i32 [ %44, %39 ], [ %35, %31 ]
  %42 = load float, ptr %4, align 4, !tbaa !133
  tail call void @glVertex2f(float noundef %42, float noundef %40) #9
  %43 = load float, ptr %2, align 8, !tbaa !132
  tail call void @glVertex2f(float noundef %43, float noundef %40) #9
  %44 = add i32 %41, 1
  %45 = sitofp i32 %44 to float
  %46 = load float, ptr %11, align 4, !tbaa !130
  %47 = fcmp ogt float %46, %45
  br i1 %47, label %39, label %48, !llvm.loop !136

48:                                               ; preds = %39, %31
  tail call void @glEnd() #9
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_constant_grid_draw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_draw_sfra_efra(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !137 {
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 13
  %5 = load i16, ptr %4, align 8, !tbaa !138
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 9
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 6
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = load i32, ptr %10, align 4, !tbaa !80
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 10
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %14 = select i1 %7, ptr %13, ptr %12
  %15 = load i32, ptr %14, align 4, !tbaa !80
  %16 = add nsw i32 %15, 1
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -25, i32 noundef -100) #9
  %17 = icmp sgt i32 %11, %15
  %18 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !129
  br i1 %17, label %31, label %22

22:                                               ; preds = %2
  %23 = sitofp i32 %11 to float
  %24 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !130
  tail call void @glRectf(float noundef %19, float noundef %21, float noundef %23, float noundef %25) #9
  %26 = sitofp i32 %16 to float
  %27 = load float, ptr %20, align 8, !tbaa !129
  %28 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !133
  %30 = load float, ptr %24, align 4, !tbaa !130
  tail call void @glRectf(float noundef %26, float noundef %27, float noundef %29, float noundef %30) #9
  br label %38

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !133
  %34 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !130
  tail call void @glRectf(float noundef %19, float noundef %21, float noundef %33, float noundef %35) #9
  %36 = sitofp i32 %11 to float
  %37 = sitofp i32 %16 to float
  br label %38

38:                                               ; preds = %31, %22
  %39 = phi float [ %37, %31 ], [ %26, %22 ]
  %40 = phi float [ %36, %31 ], [ %23, %22 ]
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #9
  %41 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !129
  %43 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !130
  tail call void @fdrawline(float noundef %40, float noundef %42, float noundef %40, float noundef %44) #9
  %45 = load float, ptr %41, align 8, !tbaa !129
  %46 = load float, ptr %43, align 4, !tbaa !130
  tail call void @fdrawline(float noundef %39, float noundef %45, float noundef %39, float noundef %46) #9
  %47 = icmp eq ptr %3, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 2
  %50 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %49) #10, !range !139
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !140
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 8) #9
  %55 = getelementptr inbounds %struct.MetaStack, ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !80
  %57 = sitofp i32 %56 to float
  %58 = load float, ptr %41, align 8, !tbaa !129
  %59 = getelementptr inbounds %struct.MetaStack, ptr %54, i64 0, i32 4, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !80
  %61 = sitofp i32 %60 to float
  %62 = load float, ptr %43, align 4, !tbaa !130
  tail call void @glRectf(float noundef %57, float noundef %58, float noundef %61, float noundef %62) #9
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -40) #9
  %63 = load i32, ptr %55, align 8, !tbaa !80
  %64 = sitofp i32 %63 to float
  %65 = load float, ptr %41, align 8, !tbaa !129
  %66 = load float, ptr %43, align 4, !tbaa !130
  tail call void @fdrawline(float noundef %64, float noundef %65, float noundef %64, float noundef %66) #9
  %67 = load i32, ptr %59, align 4, !tbaa !80
  %68 = sitofp i32 %67 to float
  %69 = load float, ptr %41, align 8, !tbaa !129
  %70 = load float, ptr %43, align 4, !tbaa !130
  tail call void @fdrawline(float noundef %68, float noundef %69, float noundef %68, float noundef %70) #9
  br label %71

71:                                               ; preds = %52, %48, %38
  tail call void @glDisable(i32 noundef 3042) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_seq_strips(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !141 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %7 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #10
  %8 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 4
  %9 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %8) #10
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %7, %10
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %15

15:                                               ; preds = %3, %63
  %16 = phi i1 [ true, %3 ], [ false, %63 ]
  %17 = phi i32 [ 0, %3 ], [ 1, %63 ]
  %18 = select i1 %16, i32 -150, i32 -60
  %19 = load ptr, ptr %1, align 8, !tbaa !142
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %15, %60
  %23 = phi ptr [ %61, %60 ], [ %20, %15 ]
  %24 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !143
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, %17
  %28 = icmp eq ptr %23, %5
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %60, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 15
  %32 = load i32, ptr %31, align 8, !tbaa !145
  %33 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 8
  %34 = load i32, ptr %33, align 4, !tbaa !146
  %35 = tail call fastcc i32 @min_ii(i32 noundef %32, i32 noundef %34) #10
  %36 = sitofp i32 %35 to float
  %37 = load float, ptr %12, align 4, !tbaa !133
  %38 = fcmp olt float %37, %36
  br i1 %38, label %60, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 16
  %41 = load i32, ptr %40, align 4, !tbaa !147
  %42 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !148
  %44 = add nsw i32 %43, %34
  %45 = tail call fastcc i32 @max_ii(i32 noundef %41, i32 noundef %44) #10
  %46 = sitofp i32 %45 to float
  %47 = load float, ptr %6, align 8, !tbaa !132
  %48 = fcmp ogt float %47, %46
  br i1 %48, label %60, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 13
  %51 = load i32, ptr %50, align 8, !tbaa !149
  %52 = sitofp i32 %51 to float
  %53 = fadd float %52, 1.000000e+00
  %54 = load float, ptr %13, align 8, !tbaa !129
  %55 = fcmp olt float %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load float, ptr %14, align 4, !tbaa !130
  %58 = fcmp olt float %57, %52
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call fastcc void @draw_seq_strip(ptr noundef %4, ptr noundef nonnull %2, ptr noundef nonnull %23, i32 noundef %18, float noundef %11) #10
  br label %60

60:                                               ; preds = %56, %49, %39, %30, %22, %59
  %61 = load ptr, ptr %23, align 8, !tbaa !77
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %22, !llvm.loop !150

63:                                               ; preds = %60, %15
  br i1 %16, label %15, label %64, !llvm.loop !151

64:                                               ; preds = %63
  %65 = icmp eq ptr %5, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call fastcc void @draw_seq_strip(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 120, float noundef %11) #10
  br label %67

67:                                               ; preds = %66, %64
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_text_cache_draw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_draw_previewrange(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !152 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !153 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !156
  %4 = load i32, ptr %0, align 4, !tbaa !157
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !158 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_seq_strip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !159 {
  %6 = alloca [3 x i8], align 1
  %7 = alloca [3 x i8], align 1
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #8
  %9 = tail call fastcc float @draw_seq_handle_size_get_clamped(ptr noundef %2, float noundef %4) #10
  %10 = tail call zeroext i8 @BKE_sequence_single_check(ptr noundef %2) #9
  %11 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !160
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 8
  %15 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 15
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load i32, ptr %16, align 4, !tbaa !80
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !149
  %21 = sitofp i32 %20 to float
  %22 = fadd float %21, 0x3FC99999A0000000
  %23 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !161
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = load i32, ptr %14, align 4, !tbaa !146
  %28 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !148
  %30 = add nsw i32 %29, %27
  br label %34

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %33 = load i32, ptr %32, align 4, !tbaa !147
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %33, %31 ]
  %36 = fadd float %21, 0x3FE99999A0000000
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %7) #10
  %37 = icmp eq i8 %10, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %2, i8 noundef zeroext 0) #9
  %40 = sitofp i32 %39 to float
  %41 = call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %2, i8 noundef zeroext 0) #9
  %42 = sitofp i32 %41 to float
  call fastcc void @draw_shadedstrip(ptr noundef nonnull %2, ptr noundef nonnull %7, float noundef %40, float noundef %22, float noundef %42, float noundef %36) #10
  br label %45

43:                                               ; preds = %34
  %44 = sitofp i32 %35 to float
  call fastcc void @draw_shadedstrip(ptr noundef nonnull %2, ptr noundef nonnull %7, float noundef %18, float noundef %22, float noundef %44, float noundef %36) #10
  call fastcc void @draw_seq_extensions(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #10
  br label %45

45:                                               ; preds = %38, %43
  call fastcc void @draw_seq_handle(ptr noundef nonnull %8, ptr noundef nonnull %2, float noundef %9, i16 noundef signext 1) #10
  call fastcc void @draw_seq_handle(ptr noundef nonnull %8, ptr noundef nonnull %2, float noundef %9, i16 noundef signext 2) #10
  %46 = load i32, ptr %15, align 8, !tbaa !145
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %49 = load i32, ptr %48, align 4, !tbaa !147
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !162
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %56 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %55) #10
  %57 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %58 = load i16, ptr %57, align 8, !tbaa !163
  %59 = sitofp i16 %58 to float
  %60 = fdiv float %56, %59
  call fastcc void @drawseqwave(ptr noundef %0, ptr noundef nonnull %2, float noundef %47, float noundef %22, float noundef %50, float noundef %36, float noundef %60) #10
  br label %61

61:                                               ; preds = %54, %45
  %62 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !143
  %64 = and i32 %63, 16384
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  call void @glEnable(i32 noundef 2882) #9
  call void @glEnable(i32 noundef 3042) #9
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 32) #9
  call void @glPolygonStipple(ptr noundef nonnull @stipple_diag_stripes_pos) #9
  call void @glRectf(float noundef %47, float noundef %22, float noundef %50, float noundef %36) #9
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 32) #9
  call void @glPolygonStipple(ptr noundef nonnull @stipple_diag_stripes_neg) #9
  call void @glRectf(float noundef %47, float noundef %22, float noundef %50, float noundef %36) #9
  call void @glDisable(i32 noundef 2882) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %67

67:                                               ; preds = %66, %61
  %68 = call zeroext i8 @BKE_sequence_is_valid_check(ptr noundef nonnull %2) #9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @glEnable(i32 noundef 2882) #9
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #9
  call void @glPolygonStipple(ptr noundef nonnull @stipple_diag_stripes_pos) #9
  call void @glRectf(float noundef %47, float noundef %22, float noundef %50, float noundef %36) #9
  call void @glDisable(i32 noundef 2882) #9
  br label %71

71:                                               ; preds = %70, %67
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6) #10
  %72 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !165
  %73 = and i16 %72, 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %62, align 8, !tbaa !143
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = and i32 %76, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  store i8 -1, ptr %6, align 1, !tbaa !166
  %83 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 2
  store i8 40, ptr %83, align 1, !tbaa !166
  %84 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 1
  store i8 40, ptr %84, align 1, !tbaa !166
  br label %88

85:                                               ; preds = %79
  %86 = add nsw i32 %3, 120
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef %86) #9
  br label %88

87:                                               ; preds = %75, %71
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef %3) #9
  br label %88

88:                                               ; preds = %82, %85, %87
  call void @glColor3ubv(ptr noundef nonnull %6) #9
  %89 = load i32, ptr %62, align 8, !tbaa !143
  %90 = and i32 %89, 32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @glEnable(i32 noundef 2852) #9
  call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -30584) #9
  br label %93

93:                                               ; preds = %92, %88
  call void @uiDrawBoxShade(i32 noundef 2, float noundef %47, float noundef %22, float noundef %50, float noundef %36, float noundef 0.000000e+00, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00) #9
  %94 = load i32, ptr %62, align 8, !tbaa !143
  %95 = and i32 %94, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  call void @glDisable(i32 noundef 2852) #9
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, ptr %51, align 4, !tbaa !162
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  call fastcc void @drawmeta_contents(ptr noundef %0, ptr noundef nonnull %2, float noundef %47, float noundef %22, float noundef %50, float noundef %36) #10
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i32, ptr %15, align 8, !tbaa !145
  %104 = sitofp i32 %103 to float
  %105 = fadd float %9, %104
  %106 = load i32, ptr %48, align 4, !tbaa !147
  %107 = sitofp i32 %106 to float
  %108 = fsub float %107, %9
  %109 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %110 = load float, ptr %109, align 8, !tbaa !132
  %111 = fcmp olt float %105, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !133
  %115 = fcmp ogt float %105, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %102, %112, %116
  %118 = phi float [ %114, %116 ], [ %105, %112 ], [ %110, %102 ]
  %119 = fcmp olt float %108, %110
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %122 = load float, ptr %121, align 4, !tbaa !133
  %123 = fcmp ogt float %108, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %117, %120, %124
  %126 = phi float [ %122, %124 ], [ %108, %120 ], [ %110, %117 ]
  %127 = fsub float %126, %118
  %128 = fdiv float %127, %4
  %129 = fcmp ogt float %128, 3.200000e+01
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  call fastcc void @draw_seq_text(ptr noundef nonnull %8, ptr noundef nonnull %2, float noundef %118, float noundef %126, float noundef %22, float noundef %36, ptr noundef nonnull %7) #10
  br label %131

131:                                              ; preds = %130, %125
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @draw_seq_handle_size_get_clamped(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #3 !PGOFuncName !167 {
  %3 = fmul float %1, 7.000000e+00
  %4 = fmul float %1, 4.000000e+01
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 19
  %6 = load float, ptr %5, align 8, !tbaa !168
  %7 = fcmp olt float %6, %3
  %8 = fcmp ogt float %6, %4
  %9 = select i1 %8, float %4, float %6
  %10 = select i1 %7, float %3, float %9
  ret float %10
}

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_single_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_seq_color3ubv(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !169 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !162
  switch i32 %6, label %56 [
    i32 0, label %7
    i32 1, label %8
    i32 3, label %9
    i32 6, label %10
    i32 7, label %11
    i32 2, label %12
    i32 8, label %17
    i32 13, label %17
    i32 25, label %17
    i32 27, label %31
    i32 29, label %31
    i32 9, label %31
    i32 10, label %31
    i32 14, label %31
    i32 11, label %31
    i32 12, label %31
    i32 15, label %31
    i32 26, label %31
    i32 30, label %31
    i32 31, label %31
    i32 40, label %31
    i32 28, label %45
    i32 4, label %48
  ]

7:                                                ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 119, ptr noundef %2) #9
  br label %59

8:                                                ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 124, ptr noundef %2) #9
  br label %59

9:                                                ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 116, ptr noundef %2) #9
  br label %59

10:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 117, ptr noundef %2) #9
  br label %59

11:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 118, ptr noundef %2) #9
  br label %59

12:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 120, ptr noundef %2) #9
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %2, ptr noundef %2, i32 noundef 20) #9
  br label %59

17:                                               ; preds = %3, %3, %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 123, ptr noundef %2) #9
  %18 = load i32, ptr %5, align 4, !tbaa !162
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FA47AE140000000) #9
  %21 = load i32, ptr %5, align 4, !tbaa !162
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FB47AE140000000) #9
  %26 = load i32, ptr %5, align 4, !tbaa !162
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ %23, %22 ]
  %29 = icmp eq i32 %28, 25
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FBEB851E0000000) #9
  br label %59

31:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 122, ptr noundef %2) #9
  %32 = load i32, ptr %5, align 4, !tbaa !162
  switch i32 %32, label %42 [
    i32 9, label %33
    i32 10, label %34
    i32 14, label %35
    i32 11, label %36
    i32 12, label %37
    i32 15, label %38
    i32 26, label %39
    i32 27, label %40
    i32 30, label %41
  ]

33:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FA47AE140000000) #9
  br label %59

34:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FB47AE140000000) #9
  br label %59

35:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FBEB851E0000000) #9
  br label %59

36:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FC47AE140000000) #9
  br label %59

37:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FC99999A0000000) #9
  br label %59

38:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FCEB851E0000000) #9
  br label %59

39:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD1EB8520000000) #9
  br label %59

40:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD70A3D80000000) #9
  br label %59

41:                                               ; preds = %31
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD47AE140000000) #9
  br label %59

42:                                               ; preds = %31
  switch i32 %32, label %59 [
    i32 31, label %43
    i32 40, label %44
  ]

43:                                               ; preds = %42
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FD99999A0000000) #9
  br label %59

44:                                               ; preds = %42
  tail call void @rgb_byte_set_hue_float_offset(ptr noundef %2, float noundef 0x3FDAE147A0000000) #9
  br label %59

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %47 = load ptr, ptr %46, align 8, !tbaa !171
  tail call void @rgb_float_to_uchar(ptr noundef %2, ptr noundef %47) #9
  br label %59

48:                                               ; preds = %3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 121, ptr noundef %2) #9
  %49 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  store i8 -128, ptr %49, align 1, !tbaa !166
  %50 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  store i8 -128, ptr %50, align 1, !tbaa !166
  store i8 -128, ptr %4, align 1, !tbaa !166
  %51 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !143
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef %2, ptr noundef nonnull %4, ptr noundef %2, float noundef 5.000000e-01, i32 noundef 20) #9
  br label %59

56:                                               ; preds = %3
  store i8 10, ptr %2, align 1, !tbaa !166
  %57 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 -1, ptr %57, align 1, !tbaa !166
  %58 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 40, ptr %58, align 1, !tbaa !166
  br label %59

59:                                               ; preds = %42, %48, %55, %33, %35, %37, %39, %41, %44, %43, %40, %38, %36, %34, %27, %30, %12, %16, %56, %45, %11, %10, %9, %8, %7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_shadedstrip(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !172 {
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !143
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @glEnable(i32 noundef 2882) #9
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_halftone) #9
  br label %12

12:                                               ; preds = %11, %6
  %13 = fsub float %5, %3
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 2.500000e-01, float %3)
  %15 = tail call float @llvm.fmuladd.f32(float %13, float 0x3FE4CCCCC0000000, float %3)
  tail call void @glShadeModel(i32 noundef 7425) #9
  tail call void @glBegin(i32 noundef 7) #9
  %16 = load i32, ptr %7, align 8, !tbaa !143
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  store i8 -1, ptr %1, align 1, !tbaa !166
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %19, align 1, !tbaa !166
  %20 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 -1, ptr %20, align 1, !tbaa !166
  br label %25

21:                                               ; preds = %12
  %22 = and i32 %16, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %1, ptr noundef %1, i32 noundef -50) #9
  br label %25

25:                                               ; preds = %21, %24, %18
  tail call void @glColor3ubv(ptr noundef %1) #9
  tail call void @glVertex2f(float noundef %2, float noundef %3) #9
  tail call void @glVertex2f(float noundef %4, float noundef %3) #9
  %26 = load i32, ptr %7, align 8, !tbaa !143
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  store i8 -1, ptr %1, align 1, !tbaa !166
  %29 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %29, align 1, !tbaa !166
  %30 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 -1, ptr %30, align 1, !tbaa !166
  br label %36

31:                                               ; preds = %25
  %32 = and i32 %26, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @UI_GetColorPtrBlendShade3ubv(ptr noundef %1, ptr noundef %1, ptr noundef %1, float noundef 0.000000e+00, i32 noundef 5) #9
  br label %36

35:                                               ; preds = %31
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %1, ptr noundef %1, i32 noundef -5) #9
  br label %36

36:                                               ; preds = %34, %35, %28
  tail call void @glColor3ubv(ptr noundef %1) #9
  tail call void @glVertex2f(float noundef %4, float noundef %14) #9
  tail call void @glVertex2f(float noundef %2, float noundef %14) #9
  tail call void @glEnd() #9
  tail call void @glRectf(float noundef %2, float noundef %14, float noundef %4, float noundef %15) #9
  tail call void @glBegin(i32 noundef 7) #9
  tail call void @glVertex2f(float noundef %2, float noundef %15) #9
  tail call void @glVertex2f(float noundef %4, float noundef %15) #9
  %37 = load i32, ptr %7, align 8, !tbaa !143
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 25, i32 -15
  tail call void @UI_GetColorPtrShade3ubv(ptr noundef %1, ptr noundef %1, i32 noundef %40) #9
  tail call void @glColor3ubv(ptr noundef %1) #9
  tail call void @glVertex2f(float noundef %4, float noundef %5) #9
  tail call void @glVertex2f(float noundef %2, float noundef %5) #9
  tail call void @glEnd() #9
  %41 = load i32, ptr %7, align 8, !tbaa !143
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  tail call void @glDisable(i32 noundef 2882) #9
  br label %45

45:                                               ; preds = %44, %36
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_seq_extensions(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !173 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !162
  %8 = icmp sgt i32 %7, 7
  br i1 %8, label %152, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !145
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 16
  %14 = load i32, ptr %13, align 4, !tbaa !147
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !149
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, 0x3FC99999A0000000
  %20 = fadd float %18, 0x3FE99999A0000000
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %22 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %21) #10
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %24 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %23) #10
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %22, %25
  %27 = fcmp ugt float %26, 0.000000e+00
  br i1 %27, label %28, label %152

28:                                               ; preds = %9
  %29 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  store i8 120, ptr %29, align 1, !tbaa !166
  %30 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  store i8 120, ptr %30, align 1, !tbaa !166
  store i8 120, ptr %5, align 1, !tbaa !166
  %31 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !174
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %28
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  %35 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !143
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %40 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  br i1 %38, label %45, label %41

41:                                               ; preds = %34
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef 0x3FD3333340000000, i32 noundef -40) #9
  %42 = load i8, ptr %4, align 1, !tbaa !166
  %43 = load i8, ptr %39, align 1, !tbaa !166
  %44 = load i8, ptr %40, align 1, !tbaa !166
  call void @glColor4ub(i8 noundef zeroext %42, i8 noundef zeroext %43, i8 noundef zeroext %44, i8 noundef zeroext -86) #9
  br label %49

45:                                               ; preds = %34
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef 0x3FE3333340000000, i32 noundef 0) #9
  %46 = load i8, ptr %4, align 1, !tbaa !166
  %47 = load i8, ptr %39, align 1, !tbaa !166
  %48 = load i8, ptr %40, align 1, !tbaa !166
  call void @glColor4ub(i8 noundef zeroext %46, i8 noundef zeroext %47, i8 noundef zeroext %48, i8 noundef zeroext 110) #9
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 8
  %51 = load i32, ptr %50, align 4, !tbaa !146
  %52 = sitofp i32 %51 to float
  %53 = fadd float %19, 0xBFC99999A0000000
  call void @glRectf(float noundef %52, float noundef %53, float noundef %12, float noundef %19) #9
  %54 = load i32, ptr %35, align 8, !tbaa !143
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  %57 = load i8, ptr %4, align 1, !tbaa !166
  %58 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !166
  %60 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !166
  %62 = select i1 %56, i8 -96, i8 -1
  call void @glColor4ub(i8 noundef zeroext %57, i8 noundef zeroext %59, i8 noundef zeroext %61, i8 noundef zeroext %62) #9
  %63 = load i32, ptr %50, align 4, !tbaa !146
  %64 = sitofp i32 %63 to float
  call void @fdrawbox(float noundef %64, float noundef %53, float noundef %12, float noundef %19) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %65

65:                                               ; preds = %49, %28
  %66 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 10
  %67 = load i32, ptr %66, align 4, !tbaa !175
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %105, label %69

69:                                               ; preds = %65
  call void @glEnable(i32 noundef 3042) #9
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  %70 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !143
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %75 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  br i1 %73, label %80, label %76

76:                                               ; preds = %69
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef 0x3FD3333340000000, i32 noundef -40) #9
  %77 = load i8, ptr %4, align 1, !tbaa !166
  %78 = load i8, ptr %74, align 1, !tbaa !166
  %79 = load i8, ptr %75, align 1, !tbaa !166
  call void @glColor4ub(i8 noundef zeroext %77, i8 noundef zeroext %78, i8 noundef zeroext %79, i8 noundef zeroext -86) #9
  br label %84

80:                                               ; preds = %69
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef 0x3FE3333340000000, i32 noundef 0) #9
  %81 = load i8, ptr %4, align 1, !tbaa !166
  %82 = load i8, ptr %74, align 1, !tbaa !166
  %83 = load i8, ptr %75, align 1, !tbaa !166
  call void @glColor4ub(i8 noundef zeroext %81, i8 noundef zeroext %82, i8 noundef zeroext %83, i8 noundef zeroext 110) #9
  br label %84

84:                                               ; preds = %80, %76
  %85 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 8
  %86 = load i32, ptr %85, align 4, !tbaa !146
  %87 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !148
  %89 = add nsw i32 %88, %86
  %90 = sitofp i32 %89 to float
  %91 = fadd float %20, 0x3FC99999A0000000
  call void @glRectf(float noundef %15, float noundef %20, float noundef %90, float noundef %91) #9
  %92 = load i32, ptr %70, align 8, !tbaa !143
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = load i8, ptr %4, align 1, !tbaa !166
  %96 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !166
  %98 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !166
  %100 = select i1 %94, i8 -96, i8 -1
  call void @glColor4ub(i8 noundef zeroext %95, i8 noundef zeroext %97, i8 noundef zeroext %99, i8 noundef zeroext %100) #9
  %101 = load i32, ptr %85, align 4, !tbaa !146
  %102 = load i32, ptr %87, align 8, !tbaa !148
  %103 = add nsw i32 %102, %101
  %104 = sitofp i32 %103 to float
  call void @fdrawbox(float noundef %15, float noundef %20, float noundef %104, float noundef %91) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %105

105:                                              ; preds = %84, %65
  %106 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 11
  %107 = load i32, ptr %106, align 8, !tbaa !160
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %105
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef 7.500000e-01, i32 noundef 40) #9
  call void @glColor3ubv(ptr noundef nonnull %4) #9
  %110 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 8
  %111 = load i32, ptr %110, align 4, !tbaa !146
  %112 = sitofp i32 %111 to float
  call fastcc void @draw_shadedstrip(ptr noundef nonnull %2, ptr noundef nonnull %4, float noundef %12, float noundef %19, float noundef %112, float noundef %20) #10
  %113 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %114 = load i32, ptr %113, align 8, !tbaa !143
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %4, float noundef 0.000000e+00, i32 noundef 24) #9
  br label %119

118:                                              ; preds = %109
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef -16) #9
  br label %119

119:                                              ; preds = %118, %117
  call void @glColor3ubv(ptr noundef nonnull %4) #9
  %120 = fcmp olt float %19, %20
  br i1 %120, label %121, label %127

121:                                              ; preds = %119, %121
  %122 = phi float [ %125, %121 ], [ %19, %119 ]
  %123 = load i32, ptr %110, align 4, !tbaa !146
  %124 = sitofp i32 %123 to float
  call void @fdrawline(float noundef %12, float noundef %122, float noundef %124, float noundef %122) #9
  %125 = call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %122)
  %126 = fcmp olt float %125, %20
  br i1 %126, label %121, label %127, !llvm.loop !176

127:                                              ; preds = %121, %119, %105
  %128 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 12
  %129 = load i32, ptr %128, align 4, !tbaa !161
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %152, label %131

131:                                              ; preds = %127
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef 7.500000e-01, i32 noundef 40) #9
  call void @glColor3ubv(ptr noundef nonnull %4) #9
  %132 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 8
  %133 = load i32, ptr %132, align 4, !tbaa !146
  %134 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !148
  %136 = add nsw i32 %135, %133
  %137 = sitofp i32 %136 to float
  call fastcc void @draw_shadedstrip(ptr noundef nonnull %2, ptr noundef nonnull %4, float noundef %137, float noundef %19, float noundef %15, float noundef %20) #10
  %138 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %139 = load i32, ptr %138, align 8, !tbaa !143
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 -16, i32 24
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %142) #9
  call void @glColor3ubv(ptr noundef nonnull %4) #9
  %143 = fcmp olt float %19, %20
  br i1 %143, label %144, label %152

144:                                              ; preds = %131, %144
  %145 = phi float [ %150, %144 ], [ %19, %131 ]
  %146 = load i32, ptr %132, align 4, !tbaa !146
  %147 = load i32, ptr %134, align 8, !tbaa !148
  %148 = add nsw i32 %147, %146
  %149 = sitofp i32 %148 to float
  call void @fdrawline(float noundef %149, float noundef %145, float noundef %15, float noundef %145) #9
  %150 = call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %145)
  %151 = fcmp olt float %150, %20
  br i1 %151, label %144, label %152, !llvm.loop !177

152:                                              ; preds = %144, %131, %127, %9, %3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_seq_handle(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !178 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %12 = load i32, ptr %11, align 4, !tbaa !147
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !149
  %16 = sitofp i32 %15 to float
  %17 = fadd float %16, 0x3FC99999A0000000
  %18 = fadd float %16, 0x3FE99999A0000000
  %19 = icmp eq i16 %3, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, ptr %10, align 8, !tbaa !145
  %22 = sitofp i32 %21 to float
  %23 = tail call float @llvm.fmuladd.f32(float %2, float 7.500000e-01, float %22)
  %24 = fmul float %2, 2.500000e-01
  %25 = fadd float %24, %22
  %26 = fadd float %24, %25
  br label %33

27:                                               ; preds = %4
  %28 = fneg float %2
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 7.500000e-01, float %13)
  %30 = fmul float %2, 2.500000e-01
  %31 = fsub float %13, %30
  %32 = fsub float %31, %30
  br label %33

33:                                               ; preds = %27, %20
  %34 = phi float [ %25, %20 ], [ %31, %27 ]
  %35 = phi float [ %26, %20 ], [ %32, %27 ]
  %36 = phi float [ %23, %20 ], [ %13, %27 ]
  %37 = phi float [ %22, %20 ], [ %29, %27 ]
  %38 = phi i32 [ 2, %20 ], [ 4, %27 ]
  %39 = fadd float %17, %18
  %40 = fmul float %39, 5.000000e-01
  %41 = fsub float %40, %17
  %42 = fmul float %41, 5.000000e-01
  %43 = fsub float %18, %42
  %44 = fadd float %17, %42
  store float %34, ptr %5, align 4
  %45 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %44, ptr %45, align 4
  store float %34, ptr %6, align 4
  %46 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %43, ptr %46, align 4
  store float %35, ptr %7, align 4
  %47 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %40, ptr %47, align 4
  %48 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !162
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %54, label %51

51:                                               ; preds = %33
  %52 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %49) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51, %33
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  %55 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !143
  %57 = and i32 %56, %38
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 80) #9
  br label %65

60:                                               ; preds = %54
  %61 = and i32 %56, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 30) #9
  br label %65

64:                                               ; preds = %60
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 22) #9
  br label %65

65:                                               ; preds = %63, %64, %59
  tail call void @glRectf(float noundef %37, float noundef %17, float noundef %36, float noundef %18) #9
  %66 = load i32, ptr %55, align 8, !tbaa !143
  %67 = and i32 %66, %38
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -56) #9
  br label %71

70:                                               ; preds = %65
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #9
  br label %71

71:                                               ; preds = %70, %69
  tail call void @glEnable(i32 noundef 2881) #9
  tail call void @glBegin(i32 noundef 4) #9
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  call void @glVertex2fv(ptr noundef nonnull %6) #9
  call void @glVertex2fv(ptr noundef nonnull %7) #9
  call void @glEnd() #9
  call void @glDisable(i32 noundef 2881) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !165
  %74 = and i16 %73, 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !143
  %79 = and i32 %78, %38
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %76, %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 -1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  br i1 %19, label %82, label %86

82:                                               ; preds = %81
  %83 = load i32, ptr %10, align 8, !tbaa !145
  %84 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef %83) #9
  %85 = fadd float %17, 0xBFDCCCCCC0000000
  br label %93

86:                                               ; preds = %81
  %87 = load i32, ptr %11, align 4, !tbaa !147
  %88 = add nsw i32 %87, -1
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef %88) #9
  %90 = fneg float %2
  %91 = call float @llvm.fmuladd.f32(float %90, float 7.500000e-01, float %13)
  %92 = fadd float %18, 0x3FA99999A0000000
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi float [ %37, %82 ], [ %91, %86 ]
  %95 = phi float [ %85, %82 ], [ %92, %86 ]
  %96 = phi i64 [ %84, %82 ], [ %89, %86 ]
  call void @UI_view2d_text_cache_add(ptr noundef %0, float noundef %94, float noundef %95, ptr noundef nonnull %9, i64 noundef %96, ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %97

97:                                               ; preds = %93, %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawseqwave(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 !PGOFuncName !179 {
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !143
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %164, label %12

12:                                               ; preds = %7
  %13 = fsub float %4, %2
  %14 = fdiv float %13, %6
  %15 = tail call float @llvm.floor.f32(float %14)
  %16 = fpext float %15 to double
  %17 = fadd double %16, 1.000000e+00
  %18 = fptosi double %17 to i32
  %19 = fadd float %3, %5
  %20 = fmul float %19, 5.000000e-01
  %21 = fsub float %5, %3
  %22 = fmul float %21, 5.000000e-01
  %23 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = getelementptr inbounds %struct.bSound, ptr %24, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !181
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  tail call void @sound_read_waveform(ptr noundef nonnull %24) #9
  %29 = load ptr, ptr %23, align 8, !tbaa !180
  %30 = getelementptr inbounds %struct.bSound, ptr %29, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = icmp eq ptr %31, null
  br i1 %32, label %164, label %33

33:                                               ; preds = %12, %28
  %34 = phi ptr [ %31, %28 ], [ %26, %12 ]
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !174
  %37 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 44
  %38 = load i32, ptr %37, align 8, !tbaa !183
  %39 = add nsw i32 %38, %36
  %40 = sitofp i32 %39 to double
  %41 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %42 = load i16, ptr %41, align 4, !tbaa !184
  %43 = sitofp i16 %42 to double
  %44 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %45 = load float, ptr %44, align 4, !tbaa !185
  %46 = fpext float %45 to double
  %47 = fdiv double %43, %46
  %48 = fdiv double %40, %47
  %49 = fmul double %48, 2.500000e+02
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %53 = load i32, ptr %52, align 4, !tbaa !147
  %54 = add nsw i32 %53, %39
  %55 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !145
  %57 = sub i32 %54, %56
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, %47
  %60 = fmul double %59, 2.500000e+02
  %61 = tail call double @llvm.ceil.f64(double %60)
  %62 = fptrunc double %61 to float
  %63 = fsub float %62, %51
  %64 = fmul float %63, %6
  %65 = fdiv float %64, %13
  %66 = sitofp i32 %18 to double
  %67 = load i32, ptr %34, align 8, !tbaa !186
  %68 = sitofp i32 %67 to float
  %69 = fsub float %68, %51
  %70 = fdiv float %69, %65
  %71 = tail call float @llvm.floor.f32(float %70)
  %72 = fpext float %71 to double
  %73 = fcmp ogt double %66, %72
  %74 = fptosi float %71 to i32
  %75 = select i1 %73, i32 %74, i32 %18
  tail call void @glBegin(i32 noundef 3) #9
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %162

77:                                               ; preds = %33
  %78 = getelementptr inbounds %struct.SoundWaveform, ptr %34, i64 0, i32 1
  br label %79

79:                                               ; preds = %77, %112
  %80 = phi i32 [ 0, %77 ], [ %116, %112 ]
  %81 = sitofp i32 %80 to float
  %82 = tail call float @llvm.fmuladd.f32(float %81, float %65, float %51)
  %83 = fptosi float %82 to i32
  %84 = load ptr, ptr %78, align 8, !tbaa !188
  %85 = mul nsw i32 %83, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr %84, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !85
  %89 = load i32, ptr %34, align 8, !tbaa !186
  %90 = add nsw i32 %83, 1
  %91 = icmp slt i32 %90, %89
  br i1 %91, label %92, label %112

92:                                               ; preds = %79
  %93 = sitofp i32 %83 to float
  %94 = fadd float %65, %93
  %95 = sext i32 %83 to i64
  %96 = add nsw i64 %95, 1
  br label %97

97:                                               ; preds = %92, %103
  %98 = phi i64 [ %96, %92 ], [ %109, %103 ]
  %99 = phi float [ %88, %92 ], [ %108, %103 ]
  %100 = trunc i64 %98 to i32
  %101 = sitofp i32 %100 to float
  %102 = fcmp ogt float %94, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = mul nsw i64 %98, 3
  %105 = getelementptr inbounds float, ptr %84, i64 %104
  %106 = load float, ptr %105, align 4, !tbaa !85
  %107 = fcmp ogt float %99, %106
  %108 = select i1 %107, float %106, float %99
  %109 = add nsw i64 %98, 1
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %89, %110
  br i1 %111, label %112, label %97, !llvm.loop !189

112:                                              ; preds = %97, %103, %79
  %113 = phi float [ %88, %79 ], [ %108, %103 ], [ %99, %97 ]
  %114 = tail call float @llvm.fmuladd.f32(float %81, float %6, float %2)
  %115 = tail call float @llvm.fmuladd.f32(float %113, float %22, float %20)
  tail call void @glVertex2f(float noundef %114, float noundef %115) #9
  %116 = add nuw nsw i32 %80, 1
  %117 = icmp eq i32 %116, %75
  br i1 %117, label %118, label %79, !llvm.loop !190

118:                                              ; preds = %112
  tail call void @glEnd() #9
  tail call void @glBegin(i32 noundef 3) #9
  br i1 %76, label %119, label %163

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.SoundWaveform, ptr %34, i64 0, i32 1
  br label %121

121:                                              ; preds = %119, %156
  %122 = phi i32 [ 0, %119 ], [ %160, %156 ]
  %123 = sitofp i32 %122 to float
  %124 = tail call float @llvm.fmuladd.f32(float %123, float %65, float %51)
  %125 = fptosi float %124 to i32
  %126 = load ptr, ptr %120, align 8, !tbaa !188
  %127 = mul nsw i32 %125, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr float, ptr %126, i64 %128
  %130 = getelementptr float, ptr %129, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !85
  %132 = load i32, ptr %34, align 8, !tbaa !186
  %133 = getelementptr float, ptr %126, i64 1
  %134 = add nsw i32 %125, 1
  %135 = icmp slt i32 %134, %132
  br i1 %135, label %136, label %156

136:                                              ; preds = %121
  %137 = sitofp i32 %125 to float
  %138 = fadd float %65, %137
  %139 = sext i32 %125 to i64
  %140 = add nsw i64 %139, 1
  br label %141

141:                                              ; preds = %136, %147
  %142 = phi i64 [ %140, %136 ], [ %153, %147 ]
  %143 = phi float [ %131, %136 ], [ %152, %147 ]
  %144 = trunc i64 %142 to i32
  %145 = sitofp i32 %144 to float
  %146 = fcmp ogt float %138, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = mul nsw i64 %142, 3
  %149 = getelementptr float, ptr %133, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !85
  %151 = fcmp olt float %143, %150
  %152 = select i1 %151, float %150, float %143
  %153 = add nsw i64 %142, 1
  %154 = trunc i64 %153 to i32
  %155 = icmp eq i32 %132, %154
  br i1 %155, label %156, label %141, !llvm.loop !191

156:                                              ; preds = %141, %147, %121
  %157 = phi float [ %131, %121 ], [ %152, %147 ], [ %143, %141 ]
  %158 = tail call float @llvm.fmuladd.f32(float %123, float %6, float %2)
  %159 = tail call float @llvm.fmuladd.f32(float %157, float %22, float %20)
  tail call void @glVertex2f(float noundef %158, float noundef %159) #9
  %160 = add nuw nsw i32 %122, 1
  %161 = icmp eq i32 %160, %75
  br i1 %161, label %163, label %121, !llvm.loop !192

162:                                              ; preds = %33
  tail call void @glEnd() #9
  tail call void @glBegin(i32 noundef 3) #9
  br label %163

163:                                              ; preds = %156, %162, %118
  tail call void @glEnd() #9
  br label %164

164:                                              ; preds = %163, %28, %7
  ret void
}

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_is_valid_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetColorPtrShade3ubv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBoxShade(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawmeta_contents(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !193 {
  %7 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = fsub float %5, %3
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !143
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call fastcc void @drawmeta_stipple(i32 noundef 1) #10
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 36
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  store i8 -60, ptr %19, align 1, !tbaa !166
  br label %83

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %28, %20 ], [ %16, %14 ]
  %22 = phi i32 [ %26, %20 ], [ 32, %14 ]
  %23 = phi i32 [ %27, %20 ], [ 0, %14 ]
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !149
  %26 = tail call fastcc i32 @min_ii(i32 noundef %22, i32 noundef %25) #10
  %27 = tail call fastcc i32 @max_ii(i32 noundef %23, i32 noundef %25) #10
  %28 = load ptr, ptr %21, align 8, !tbaa !77
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !194

30:                                               ; preds = %20
  %31 = add i32 %27, 1
  %32 = sub i32 %31, %26
  %33 = sitofp i32 %32 to float
  %34 = fdiv float %8, %33
  %35 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  store i8 -60, ptr %35, align 1, !tbaa !166
  br i1 %17, label %83, label %36

36:                                               ; preds = %30, %80
  %37 = phi ptr [ %81, %80 ], [ %16, %30 ]
  %38 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !145
  %40 = sitofp i32 %39 to float
  %41 = fcmp ogt float %40, %4
  br i1 %41, label %80, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 16
  %44 = load i32, ptr %43, align 4, !tbaa !147
  %45 = sitofp i32 %44 to float
  %46 = fcmp olt float %45, %2
  br i1 %46, label %80, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !149
  %50 = sub nsw i32 %49, %26
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %51, %33
  %53 = fmul float %8, %52
  %54 = load i32, ptr %9, align 8, !tbaa !143
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !143
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call fastcc void @drawmeta_stipple(i32 noundef 1) #10
  br label %63

63:                                               ; preds = %62, %57, %47
  call fastcc void @get_seq_color3ubv(ptr noundef %0, ptr noundef nonnull %37, ptr noundef nonnull %7) #10
  call void @glColor4ubv(ptr noundef nonnull %7) #9
  %64 = fcmp olt float %40, %2
  %65 = select i1 %64, float %2, float %40
  %66 = fcmp ogt float %45, %4
  %67 = select i1 %66, float %4, float %45
  %68 = fadd float %53, %3
  %69 = call float @llvm.fmuladd.f32(float %34, float 0x3FC99999A0000000, float %68)
  %70 = call float @llvm.fmuladd.f32(float %34, float 0x3FE99999A0000000, float %68)
  call void @glRectf(float noundef %65, float noundef %69, float noundef %67, float noundef %70) #9
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef -30) #9
  call void @glColor4ubv(ptr noundef nonnull %7) #9
  call void @fdrawbox(float noundef %65, float noundef %69, float noundef %67, float noundef %70) #9
  %71 = load i32, ptr %9, align 8, !tbaa !143
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.Sequence, ptr %37, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !143
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  call fastcc void @drawmeta_stipple(i32 noundef 0) #10
  br label %80

80:                                               ; preds = %36, %63, %74, %79, %42
  %81 = load ptr, ptr %37, align 8, !tbaa !77
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %36, !llvm.loop !195

83:                                               ; preds = %80, %18, %30
  %84 = load i32, ptr %9, align 8, !tbaa !143
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call fastcc void @drawmeta_stipple(i32 noundef 0) #10
  br label %88

88:                                               ; preds = %87, %83
  call void @glDisable(i32 noundef 3042) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_seq_text(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !196 {
  %8 = alloca %struct.rctf, align 4
  %9 = alloca [1056 x i8], align 16
  %10 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 1056, ptr nonnull %9) #8
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  %12 = load i8, ptr %11, align 1, !tbaa !166
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = tail call ptr @BKE_sequence_give_name(ptr noundef nonnull %1) #9
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %15, %14 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !162
  switch i32 %19, label %91 [
    i32 1, label %20
    i32 31, label %20
    i32 2, label %24
    i32 6, label %46
    i32 7, label %62
    i32 30, label %78
    i32 0, label %82
  ]

20:                                               ; preds = %16, %16
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !148
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %22) #9
  br label %125

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 27
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4, i64 2
  br i1 %31, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 4, i64 2
  %35 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !148
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.2, ptr noundef %17, ptr noundef nonnull %32, ptr noundef nonnull %34, i32 noundef %36) #9
  br label %125

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !148
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %17, ptr noundef nonnull %32, i32 noundef %40) #9
  br label %125

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !148
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %44) #9
  br label %125

46:                                               ; preds = %16
  %47 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 28
  %48 = load ptr, ptr %47, align 8, !tbaa !198
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 4, i64 2
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %51) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !148
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %17, ptr noundef nonnull %51, i32 noundef %56) #9
  br label %125

58:                                               ; preds = %50, %46
  %59 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !148
  %61 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %60) #9
  br label %125

62:                                               ; preds = %16
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 29
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 4, i64 2
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %67) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !148
  %73 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %17, ptr noundef nonnull %67, i32 noundef %72) #9
  br label %125

74:                                               ; preds = %66, %62
  %75 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !148
  %77 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %76) #9
  br label %125

78:                                               ; preds = %16
  %79 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 22
  %80 = load i32, ptr %79, align 8, !tbaa !200
  %81 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.4, ptr noundef %17, i32 noundef %80) #9
  br label %125

82:                                               ; preds = %16
  %83 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %84 = load ptr, ptr %83, align 8, !tbaa !201
  %85 = getelementptr inbounds %struct.Strip, ptr %84, i64 0, i32 7
  %86 = getelementptr inbounds %struct.Strip, ptr %84, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !202
  %88 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !148
  %90 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.5, ptr noundef %17, ptr noundef nonnull %85, ptr noundef %87, i32 noundef %89) #9
  br label %125

91:                                               ; preds = %16
  %92 = and i32 %19, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %96 = load i32, ptr %95, align 8, !tbaa !148
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %96) #9
  br label %125

98:                                               ; preds = %91
  switch i32 %19, label %121 [
    i32 4, label %99
    i32 3, label %112
  ]

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 37
  %101 = load ptr, ptr %100, align 8, !tbaa !180
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.bSound, ptr %101, i64 0, i32 1
  %105 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !148
  %107 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.3, ptr noundef %17, ptr noundef nonnull %104, i32 noundef %106) #9
  br label %125

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !148
  %111 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %110) #9
  br label %125

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %114 = load ptr, ptr %113, align 8, !tbaa !201
  %115 = getelementptr inbounds %struct.Strip, ptr %114, i64 0, i32 7
  %116 = getelementptr inbounds %struct.Strip, ptr %114, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !202
  %118 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %119 = load i32, ptr %118, align 8, !tbaa !148
  %120 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.5, ptr noundef %17, ptr noundef nonnull %115, ptr noundef %117, i32 noundef %119) #9
  br label %125

121:                                              ; preds = %98
  %122 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !148
  %124 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1056, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %123) #9
  br label %125

125:                                              ; preds = %33, %38, %42, %74, %70, %82, %108, %103, %121, %112, %94, %78, %54, %58, %20
  %126 = phi i64 [ %23, %20 ], [ %37, %33 ], [ %41, %38 ], [ %45, %42 ], [ %57, %54 ], [ %61, %58 ], [ %73, %70 ], [ %77, %74 ], [ %81, %78 ], [ %90, %82 ], [ %97, %94 ], [ %107, %103 ], [ %111, %108 ], [ %120, %112 ], [ %124, %121 ]
  %127 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !143
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  store i8 -1, ptr %132, align 1, !tbaa !166
  %133 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  store i8 -1, ptr %133, align 1, !tbaa !166
  store i8 -1, ptr %10, align 1, !tbaa !166
  br label %150

134:                                              ; preds = %125
  %135 = load i8, ptr %6, align 1, !tbaa !166
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds i8, ptr %6, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !166
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %139, %136
  %141 = getelementptr inbounds i8, ptr %6, i64 2
  %142 = load i8, ptr %141, align 1, !tbaa !166
  %143 = zext i8 %142 to i32
  %144 = add nuw nsw i32 %140, %143
  %145 = icmp ult i32 %144, 150
  %146 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %147 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  br i1 %145, label %148, label %149

148:                                              ; preds = %134
  store i8 80, ptr %146, align 1, !tbaa !166
  store i8 80, ptr %147, align 1, !tbaa !166
  store i8 80, ptr %10, align 1, !tbaa !166
  br label %150

149:                                              ; preds = %134
  store i8 0, ptr %146, align 1, !tbaa !166
  store i8 0, ptr %147, align 1, !tbaa !166
  store i8 0, ptr %10, align 1, !tbaa !166
  br label %150

150:                                              ; preds = %148, %149, %131
  %151 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  store i8 -1, ptr %151, align 1, !tbaa !166
  store float %2, ptr %8, align 4, !tbaa !120
  %152 = getelementptr inbounds %struct.rctf, ptr %8, i64 0, i32 2
  store float %4, ptr %152, align 4, !tbaa !123
  %153 = getelementptr inbounds %struct.rctf, ptr %8, i64 0, i32 1
  store float %3, ptr %153, align 4, !tbaa !119
  %154 = getelementptr inbounds %struct.rctf, ptr %8, i64 0, i32 3
  store float %5, ptr %154, align 4, !tbaa !122
  call void @UI_view2d_text_cache_add_rectf(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %126, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1056, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_byte_set_hue_float_offset(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetColorPtrBlendShade3ubv(ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !204 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !205
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !206
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_text_cache_add(ptr noundef, float noundef, float noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: optsize
declare void @sound_read_waveform(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawmeta_stipple(i32 noundef %0) unnamed_addr #0 !PGOFuncName !207 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @glEnable(i32 noundef 2882) #9
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_halftone) #9
  tail call void @glEnable(i32 noundef 2852) #9
  tail call void @glLineStipple(i32 noundef 1, i16 noundef zeroext -30584) #9
  br label %5

4:                                                ; preds = %1
  tail call void @glDisable(i32 noundef 2882) #9
  tail call void @glDisable(i32 noundef 2852) #9
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequence_give_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @UI_view2d_text_cache_add_rectf(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

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
!80 = !{!41, !41, i64 0}
!81 = !{!43, !40, i64 224}
!82 = !{!50, !44, i64 892}
!83 = !{!50, !44, i64 896}
!84 = !{!43, !41, i64 244}
!85 = !{!44, !44, i64 0}
!86 = !{!87, !36, i64 40}
!87 = !{!"ImBuf", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !44, i64 112, !37, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !36, i64 296, !36, i64 304, !41, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !41, i64 2376, !36, i64 2384, !41, i64 2392, !41, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !41, i64 2432, !47, i64 2436, !88, i64 2456}
!88 = !{!"DDSData", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16}
!89 = !{!87, !36, i64 48}
!90 = !{!43, !40, i64 230}
!91 = !{!48, !36, i64 8}
!92 = !{!43, !41, i64 232}
!93 = !{!48, !36, i64 24}
!94 = !{!48, !36, i64 16}
!95 = !{!48, !36, i64 32}
!96 = !{!48, !36, i64 40}
!97 = !{!48, !36, i64 0}
!98 = !{!45, !44, i64 0}
!99 = !{!45, !44, i64 8}
!100 = !{!45, !44, i64 4}
!101 = !{!45, !44, i64 12}
!102 = !{!73, !40, i64 8970}
!103 = !{!87, !44, i64 112}
!104 = !{!87, !41, i64 28}
!105 = !{!87, !36, i64 2408}
!106 = !{!87, !36, i64 2400}
!107 = !{!87, !41, i64 16}
!108 = !{!87, !41, i64 20}
!109 = !{!50, !36, i64 256}
!110 = !{!111, !44, i64 2112}
!111 = !{!"Editing", !36, i64 0, !39, i64 8, !39, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !46, i64 2112}
!112 = !{!111, !44, i64 2120}
!113 = !{!111, !44, i64 2116}
!114 = !{!111, !44, i64 2124}
!115 = !{!"sequencer_draw.c:sequencer_check_scopes"}
!116 = !{!"sequencer_draw.c:sequencer_make_scope"}
!117 = !{ptr @make_histogram_view_from_ibuf, ptr @make_sep_waveform_view_from_ibuf, ptr @make_vectorscope_view_from_ibuf, ptr @make_waveform_view_from_ibuf}
!118 = !{!"sequencer_draw.c:BLI_rctf_size_x"}
!119 = !{!46, !44, i64 4}
!120 = !{!46, !44, i64 0}
!121 = !{!"sequencer_draw.c:BLI_rctf_size_y"}
!122 = !{!46, !44, i64 12}
!123 = !{!46, !44, i64 8}
!124 = !{!111, !36, i64 24}
!125 = !{!111, !41, i64 2104}
!126 = !{!111, !41, i64 2100}
!127 = !{!50, !41, i64 680}
!128 = !{!111, !41, i64 2096}
!129 = !{!45, !44, i64 24}
!130 = !{!45, !44, i64 28}
!131 = !{!"sequencer_draw.c:draw_seq_backdrop"}
!132 = !{!45, !44, i64 16}
!133 = !{!45, !44, i64 20}
!134 = distinct !{!134, !135}
!135 = !{!"llvm.loop.mustprogress"}
!136 = distinct !{!136, !135}
!137 = !{!"sequencer_draw.c:seq_draw_sfra_efra"}
!138 = !{!50, !40, i64 712}
!139 = !{i8 0, i8 2}
!140 = !{!111, !36, i64 32}
!141 = !{!"sequencer_draw.c:draw_seq_strips"}
!142 = !{!111, !36, i64 0}
!143 = !{!144, !41, i64 96}
!144 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !40, i64 156, !40, i64 158, !41, i64 160, !41, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !44, i64 224, !44, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !39, i64 256, !36, i64 272, !36, i64 280, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !36, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !44, i64 324, !41, i64 328, !37, i64 332, !37, i64 333, !39, i64 336}
!145 = !{!144, !41, i64 136}
!146 = !{!144, !41, i64 108}
!147 = !{!144, !41, i64 140}
!148 = !{!144, !41, i64 104}
!149 = !{!144, !41, i64 128}
!150 = distinct !{!150, !135}
!151 = distinct !{!151, !135}
!152 = !{!"sequencer_draw.c:max_ii"}
!153 = !{!"sequencer_draw.c:BLI_listbase_is_empty"}
!154 = !{!39, !36, i64 0}
!155 = !{!"sequencer_draw.c:BLI_rcti_size_x"}
!156 = !{!47, !41, i64 4}
!157 = !{!47, !41, i64 0}
!158 = !{!"sequencer_draw.c:min_ii"}
!159 = !{!"sequencer_draw.c:draw_seq_strip"}
!160 = !{!144, !41, i64 120}
!161 = !{!144, !41, i64 124}
!162 = !{!144, !41, i64 100}
!163 = !{!164, !40, i64 208}
!164 = !{!"ARegion", !36, i64 0, !36, i64 8, !45, i64 16, !47, i64 176, !47, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!165 = !{!35, !40, i64 2084}
!166 = !{!37, !37, i64 0}
!167 = !{!"sequencer_draw.c:draw_seq_handle_size_get_clamped"}
!168 = !{!144, !44, i64 152}
!169 = !{!"sequencer_draw.c:get_seq_color3ubv"}
!170 = !{!144, !36, i64 184}
!171 = !{!144, !36, i64 304}
!172 = !{!"sequencer_draw.c:draw_shadedstrip"}
!173 = !{!"sequencer_draw.c:draw_seq_extensions"}
!174 = !{!144, !41, i64 112}
!175 = !{!144, !41, i64 116}
!176 = distinct !{!176, !135}
!177 = distinct !{!177, !135}
!178 = !{!"sequencer_draw.c:draw_seq_handle"}
!179 = !{!"sequencer_draw.c:drawseqwave"}
!180 = !{!144, !36, i64 272}
!181 = !{!182, !36, i64 1216}
!182 = !{!"bSound", !51, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !44, i64 1176, !44, i64 1180, !44, i64 1184, !44, i64 1188, !44, i64 1192, !44, i64 1196, !41, i64 1200, !41, i64 1204, !36, i64 1208, !36, i64 1216, !36, i64 1224}
!183 = !{!144, !41, i64 312}
!184 = !{!50, !40, i64 820}
!185 = !{!50, !44, i64 900}
!186 = !{!187, !41, i64 0}
!187 = !{!"SoundWaveform", !41, i64 0, !36, i64 8}
!188 = !{!187, !36, i64 8}
!189 = distinct !{!189, !135}
!190 = distinct !{!190, !135}
!191 = distinct !{!191, !135}
!192 = distinct !{!192, !135}
!193 = !{!"sequencer_draw.c:drawmeta_contents"}
!194 = distinct !{!194, !135}
!195 = distinct !{!195, !135}
!196 = !{!"sequencer_draw.c:draw_seq_text"}
!197 = !{!144, !36, i64 192}
!198 = !{!144, !36, i64 200}
!199 = !{!144, !36, i64 208}
!200 = !{!144, !41, i64 160}
!201 = !{!144, !36, i64 168}
!202 = !{!203, !36, i64 32}
!203 = !{!"Strip", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !67, i64 840}
!204 = !{!"sequencer_draw.c:BLI_rcti_size_y"}
!205 = !{!47, !41, i64 12}
!206 = !{!47, !41, i64 8}
!207 = !{!"sequencer_draw.c:drawmeta_stipple"}
