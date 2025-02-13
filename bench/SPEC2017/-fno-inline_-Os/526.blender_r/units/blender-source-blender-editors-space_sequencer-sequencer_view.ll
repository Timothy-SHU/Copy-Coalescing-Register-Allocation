; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_view.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.ImageSampleInfo = type { ptr, ptr, i32, i32, i32, [4 x i8], [4 x float], [4 x float], ptr, ptr, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Sample Color\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_sample\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Use mouse to sample color in current frame\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"ImageSampleInfo\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sample_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sample_modal, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sample_cancel, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sample_poll, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !49 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %5 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %11 = tail call ptr %10(i64 noundef 88, ptr noundef nonnull @.str.3) #6
  %12 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  store ptr %13, ptr %11, align 8, !tbaa !61
  %14 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %13, ptr noundef nonnull @sample_draw, ptr noundef nonnull %11, i32 noundef 1) #6
  %15 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %11, ptr %16, align 8, !tbaa !64
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #6
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi i32 [ 1, %9 ], [ 2, %3 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !66 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !67
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3
  tail call fastcc void @sample_exit(ptr noundef %0, ptr noundef %1) #7
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #7
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 2, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sample_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !70 {
  tail call fastcc void @sample_exit(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sample_poll(ptr noundef %0) #1 !PGOFuncName !71 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #6
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sample_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !72 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !73
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !77
  %18 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  %22 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 7
  tail call void @ED_image_draw_info(ptr noundef %4, ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext 0, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %22, ptr noundef null, ptr noundef null) #6
  br label %23

23:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !80 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #6
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = tail call ptr @sequencer_ibuf_get(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %11, i32 noundef 0) #6
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  tail call void @IMB_freeImBuf(ptr noundef null) #6
  %17 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 10
  store i32 0, ptr %17, align 8, !tbaa !73
  br label %129

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !100
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !100
  %25 = sitofp i32 %24 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %19, float noundef %22, float noundef %25, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %26 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 2
  %27 = load float, ptr %4, align 4, !tbaa !101
  %28 = load float, ptr %5, align 4, !tbaa !101
  %29 = load <2 x i32>, ptr %26, align 8, !tbaa !100
  %30 = sitofp <2 x i32> %29 to <2 x float>
  %31 = fmul <2 x float> %30, <float 5.000000e-01, float 5.000000e-01>
  %32 = insertelement <2 x float> poison, float %27, i64 0
  %33 = insertelement <2 x float> %32, float %28, i64 1
  %34 = fadd <2 x float> %33, %31
  %35 = extractelement <2 x float> %34, i64 0
  store float %35, ptr %4, align 4, !tbaa !101
  %36 = extractelement <2 x float> %34, i64 1
  store float %36, ptr %5, align 4, !tbaa !101
  %37 = fcmp oge float %35, 0.000000e+00
  %38 = fcmp oge float %36, 0.000000e+00
  %39 = select i1 %37, i1 %38, i1 false
  %40 = extractelement <2 x float> %30, i64 0
  %41 = fcmp olt float %35, %40
  %42 = and i1 %41, %39
  %43 = extractelement <2 x float> %30, i64 1
  %44 = fcmp olt float %36, %43
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %125

46:                                               ; preds = %18
  %47 = fptosi <2 x float> %34 to <2 x i32>
  %48 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 2
  store <2 x i32> %47, ptr %48, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 10
  store i32 1, ptr %49, align 8, !tbaa !73
  %50 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !102
  %52 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 4
  store i32 %51, ptr %52, align 8, !tbaa !75
  %53 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 8
  %54 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 9
  %55 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  %56 = load ptr, ptr %55, align 8, !tbaa !105
  %57 = icmp eq ptr %56, null
  br i1 %57, label %98, label %58

58:                                               ; preds = %46
  %59 = extractelement <2 x i32> %47, i64 1
  %60 = extractelement <2 x i32> %29, i64 0
  %61 = mul nsw i32 %60, %59
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %56, i64 %62
  %64 = extractelement <2 x i32> %47, i64 0
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %63, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !106
  %68 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5
  store i8 %67, ptr %68, align 4, !tbaa !106
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !106
  %71 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5, i64 1
  store i8 %70, ptr %71, align 1, !tbaa !106
  %72 = getelementptr inbounds i8, ptr %66, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !106
  %74 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5, i64 2
  store i8 %73, ptr %74, align 2, !tbaa !106
  %75 = getelementptr inbounds i8, ptr %66, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !106
  %77 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5, i64 3
  store i8 %76, ptr %77, align 1, !tbaa !106
  store ptr %68, ptr %53, align 8, !tbaa !78
  %78 = load i8, ptr %66, align 1, !tbaa !106
  %79 = uitofp i8 %78 to float
  %80 = fdiv float %79, 2.550000e+02
  %81 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6
  store float %80, ptr %81, align 8, !tbaa !101
  %82 = load i8, ptr %69, align 1, !tbaa !106
  %83 = uitofp i8 %82 to float
  %84 = fdiv float %83, 2.550000e+02
  %85 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 1
  store float %84, ptr %85, align 4, !tbaa !101
  %86 = load i8, ptr %72, align 1, !tbaa !106
  %87 = uitofp i8 %86 to float
  %88 = fdiv float %87, 2.550000e+02
  %89 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 2
  store float %88, ptr %89, align 8, !tbaa !101
  %90 = load i8, ptr %75, align 1, !tbaa !106
  %91 = uitofp i8 %90 to float
  %92 = fdiv float %91, 2.550000e+02
  %93 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 3
  store float %92, ptr %93, align 4, !tbaa !101
  store ptr %81, ptr %54, align 8, !tbaa !79
  %94 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7
  call fastcc void @copy_v4_v4(ptr noundef nonnull %94, ptr noundef nonnull %81) #7
  %95 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 34
  %96 = load ptr, ptr %95, align 8, !tbaa !107
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %94, i8 noundef zeroext 0, ptr noundef %96) #6
  %97 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 11
  store i32 1, ptr %97, align 4, !tbaa !74
  br label %98

98:                                               ; preds = %58, %46
  %99 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !108
  %101 = icmp eq ptr %100, null
  br i1 %101, label %127, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %50, align 4, !tbaa !102
  %104 = load i32, ptr %26, align 8, !tbaa !109
  %105 = extractelement <2 x i32> %47, i64 1
  %106 = mul nsw i32 %104, %105
  %107 = extractelement <2 x i32> %47, i64 0
  %108 = add nsw i32 %106, %107
  %109 = mul nsw i32 %108, %103
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr %100, i64 %110
  %112 = load float, ptr %111, align 4, !tbaa !101
  %113 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6
  store float %112, ptr %113, align 8, !tbaa !101
  %114 = getelementptr inbounds float, ptr %111, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !101
  %116 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 1
  store float %115, ptr %116, align 4, !tbaa !101
  %117 = getelementptr inbounds float, ptr %111, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !101
  %119 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 2
  store float %118, ptr %119, align 8, !tbaa !101
  %120 = getelementptr inbounds float, ptr %111, i64 3
  %121 = load float, ptr %120, align 4, !tbaa !101
  %122 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 3
  store float %121, ptr %122, align 4, !tbaa !101
  store ptr %113, ptr %54, align 8, !tbaa !79
  %123 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7
  call fastcc void @copy_v4_v4(ptr noundef nonnull %123, ptr noundef nonnull %113) #7
  call void @BKE_sequencer_pixel_from_sequencer_space_v4(ptr noundef nonnull %7, ptr noundef nonnull %123) #6
  %124 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 11
  store i32 1, ptr %124, align 4, !tbaa !74
  br label %127

125:                                              ; preds = %18
  %126 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 10
  store i32 0, ptr %126, align 8, !tbaa !73
  br label %127

127:                                              ; preds = %98, %102, %125
  call void @IMB_freeImBuf(ptr noundef nonnull %12) #6
  %128 = call ptr @CTX_wm_area(ptr noundef %0) #6
  call void @ED_area_tag_redraw(ptr noundef %128) #6
  br label %129

129:                                              ; preds = %127, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_image_draw_info(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sequencer_ibuf_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !110 {
  %3 = load float, ptr %1, align 4, !tbaa !101
  store float %3, ptr %0, align 4, !tbaa !101
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !101
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !101
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !101
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !101
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !101
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_pixel_from_sequencer_space_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !111 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.ImageSampleInfo, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #6
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  tail call void @ED_area_tag_redraw(ptr noundef %8) #6
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %9(ptr noundef nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 64}
!46 = !{!35, !36, i64 56}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !41, i64 184}
!49 = !{!"sequencer_view.c:sample_invoke"}
!50 = !{!51, !41, i64 224}
!51 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !53, i64 36, !37, i64 40, !54, i64 56, !53, i64 216, !53, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !52, i64 232, !53, i64 236, !52, i64 240, !52, i64 244, !36, i64 248, !57, i64 256}
!52 = !{!"int", !37, i64 0}
!53 = !{!"float", !37, i64 0}
!54 = !{!"View2D", !55, i64 0, !55, i64 16, !56, i64 32, !56, i64 48, !56, i64 64, !37, i64 80, !37, i64 88, !53, i64 96, !53, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!56 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!57 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !36, i64 240}
!60 = !{!"ARegion", !36, i64 0, !36, i64 8, !54, i64 16, !56, i64 176, !56, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !53, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!61 = !{!62, !36, i64 0}
!62 = !{!"ImageSampleInfo", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 32, !37, i64 48, !36, i64 64, !36, i64 72, !52, i64 80, !52, i64 84}
!63 = !{!62, !36, i64 8}
!64 = !{!65, !36, i64 96}
!65 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!66 = !{!"sequencer_view.c:sample_modal"}
!67 = !{!68, !41, i64 16}
!68 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !52, i64 48, !52, i64 52, !69, i64 56, !52, i64 64, !52, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !52, i64 108, !36, i64 112}
!69 = !{!"double", !37, i64 0}
!70 = !{!"sequencer_view.c:sample_cancel"}
!71 = !{!"sequencer_view.c:sample_poll"}
!72 = !{!"sequencer_view.c:sample_draw"}
!73 = !{!62, !52, i64 80}
!74 = !{!62, !52, i64 84}
!75 = !{!62, !52, i64 24}
!76 = !{!62, !52, i64 16}
!77 = !{!62, !52, i64 20}
!78 = !{!62, !36, i64 64}
!79 = !{!62, !36, i64 72}
!80 = !{!"sequencer_view.c:sample_apply"}
!81 = !{!82, !52, i64 680}
!82 = !{!"Scene", !83, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !91, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !36, i64 4608, !97, i64 4616, !36, i64 4640, !98, i64 4648, !98, i64 4656, !86, i64 4664, !87, i64 4824, !99, i64 4888, !36, i64 4952}
!83 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !53, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !55, i64 544, !55, i64 560, !56, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !52, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !53, i64 660, !53, i64 664, !41, i64 668, !41, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !53, i64 2528, !53, i64 2532, !41, i64 2536, !41, i64 2538, !53, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !52, i64 2576, !53, i64 2580, !37, i64 2584, !90, i64 2616, !52, i64 3976, !52, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!89 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !53, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!90 = !{!"BakeData", !85, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !52, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !53, i64 24, !53, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !94, i64 40, !41, i64 64, !41, i64 66, !53, i64 68, !95, i64 72, !53, i64 128, !53, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!94 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!95 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !52, i64 40, !53, i64 44, !53, i64 48, !41, i64 52, !41, i64 54}
!96 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!98 = !{!"long", !37, i64 0}
!99 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!100 = !{!52, !52, i64 0}
!101 = !{!53, !53, i64 0}
!102 = !{!103, !52, i64 28}
!103 = !{!"ImBuf", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !37, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !53, i64 112, !37, i64 120, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !36, i64 296, !36, i64 304, !52, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !52, i64 2376, !36, i64 2384, !52, i64 2392, !52, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !52, i64 2432, !56, i64 2436, !104, i64 2456}
!104 = !{!"DDSData", !52, i64 0, !52, i64 4, !36, i64 8, !52, i64 16}
!105 = !{!103, !36, i64 40}
!106 = !{!37, !37, i64 0}
!107 = !{!103, !36, i64 2400}
!108 = !{!103, !36, i64 48}
!109 = !{!103, !52, i64 16}
!110 = !{!"sequencer_view.c:copy_v4_v4"}
!111 = !{!"sequencer_view.c:sample_exit"}
