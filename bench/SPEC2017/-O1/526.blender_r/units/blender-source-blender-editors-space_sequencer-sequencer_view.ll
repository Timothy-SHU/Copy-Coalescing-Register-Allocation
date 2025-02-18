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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %5 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %11 = tail call ptr %10(i64 noundef 88, ptr noundef nonnull @.str.3) #5
  %12 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  store ptr %13, ptr %11, align 8, !tbaa !60
  %14 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %13, ptr noundef nonnull @sample_draw, ptr noundef nonnull %11, i32 noundef 1) #5
  %15 = getelementptr inbounds %struct.ImageSampleInfo, ptr %11, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %11, ptr %16, align 8, !tbaa !63
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #5
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi i32 [ 1, %9 ], [ 2, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !65
  switch i16 %5, label %15 [
    i16 1, label %6
    i16 3, label %6
    i16 4, label %14
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  tail call void @ED_region_draw_cb_exit(ptr noundef %9, ptr noundef %11) #5
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %12) #5
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %13(ptr noundef nonnull %8) #5
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %15

15:                                               ; preds = %14, %3, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %3 ], [ 1, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @sample_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.ImageSampleInfo, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #5
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_tag_redraw(ptr noundef %8) #5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %9(ptr noundef nonnull %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sample_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_wm_space_seq(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #5
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #3

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @sample_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !71
  %16 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !72
  %18 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 7
  tail call void @ED_image_draw_info(ptr noundef %4, ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext 0, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %22, ptr noundef null, ptr noundef null) #5
  br label %23

23:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sample_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #5
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !75
  %12 = tail call ptr @sequencer_ibuf_get(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %11, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  tail call void @IMB_freeImBuf(ptr noundef null) #5
  %17 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 10
  store i32 0, ptr %17, align 8, !tbaa !68
  br label %131

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !94
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !94
  %25 = sitofp i32 %24 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %19, float noundef %22, float noundef %25, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %26 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !95
  %28 = sitofp i32 %27 to float
  %29 = fmul float %28, 5.000000e-01
  %30 = load float, ptr %4, align 4, !tbaa !98
  %31 = fadd float %30, %29
  store float %31, ptr %4, align 4, !tbaa !98
  %32 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !99
  %34 = sitofp i32 %33 to float
  %35 = fmul float %34, 5.000000e-01
  %36 = load float, ptr %5, align 4, !tbaa !98
  %37 = fadd float %36, %35
  store float %37, ptr %5, align 4, !tbaa !98
  %38 = fcmp oge float %31, 0.000000e+00
  %39 = fcmp oge float %37, 0.000000e+00
  %40 = select i1 %38, i1 %39, i1 false
  %41 = fcmp olt float %31, %28
  %42 = and i1 %41, %40
  %43 = fcmp olt float %37, %34
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %127

45:                                               ; preds = %18
  %46 = fptosi float %31 to i32
  %47 = fptosi float %37 to i32
  %48 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 2
  store i32 %46, ptr %48, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 3
  store i32 %47, ptr %49, align 4, !tbaa !72
  %50 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 10
  store i32 1, ptr %50, align 8, !tbaa !68
  %51 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !100
  %53 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 4
  store i32 %52, ptr %53, align 8, !tbaa !70
  %54 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 8
  %55 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 9
  %56 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  %57 = load ptr, ptr %56, align 8, !tbaa !101
  %58 = icmp eq ptr %57, null
  br i1 %58, label %99, label %59

59:                                               ; preds = %45
  %60 = mul nsw i32 %27, %47
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %57, i64 %61
  %63 = sext i32 %46 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !102
  %66 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5
  store i8 %65, ptr %66, align 4, !tbaa !102
  %67 = getelementptr inbounds i8, ptr %64, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !102
  %69 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !102
  %70 = getelementptr inbounds i8, ptr %64, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !102
  %72 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5, i64 2
  store i8 %71, ptr %72, align 2, !tbaa !102
  %73 = getelementptr inbounds i8, ptr %64, i64 3
  %74 = load i8, ptr %73, align 1, !tbaa !102
  %75 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 5, i64 3
  store i8 %74, ptr %75, align 1, !tbaa !102
  store ptr %66, ptr %54, align 8, !tbaa !73
  %76 = load i8, ptr %64, align 1, !tbaa !102
  %77 = uitofp i8 %76 to float
  %78 = fdiv float %77, 2.550000e+02
  %79 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6
  store float %78, ptr %79, align 8, !tbaa !98
  %80 = load i8, ptr %67, align 1, !tbaa !102
  %81 = uitofp i8 %80 to float
  %82 = fdiv float %81, 2.550000e+02
  %83 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 1
  store float %82, ptr %83, align 4, !tbaa !98
  %84 = load i8, ptr %70, align 1, !tbaa !102
  %85 = uitofp i8 %84 to float
  %86 = fdiv float %85, 2.550000e+02
  %87 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 2
  store float %86, ptr %87, align 8, !tbaa !98
  %88 = load i8, ptr %73, align 1, !tbaa !102
  %89 = uitofp i8 %88 to float
  %90 = fdiv float %89, 2.550000e+02
  %91 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 3
  store float %90, ptr %91, align 4, !tbaa !98
  store ptr %79, ptr %55, align 8, !tbaa !74
  %92 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7
  store float %78, ptr %92, align 4, !tbaa !98
  %93 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7, i64 1
  store float %82, ptr %93, align 4, !tbaa !98
  %94 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7, i64 2
  store float %86, ptr %94, align 4, !tbaa !98
  %95 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7, i64 3
  store float %90, ptr %95, align 4, !tbaa !98
  %96 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 34
  %97 = load ptr, ptr %96, align 8, !tbaa !103
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %92, i8 noundef zeroext 0, ptr noundef %97) #5
  %98 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 11
  store i32 1, ptr %98, align 4, !tbaa !69
  br label %99

99:                                               ; preds = %59, %45
  %100 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !104
  %102 = icmp eq ptr %101, null
  br i1 %102, label %129, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %51, align 4, !tbaa !100
  %105 = load i32, ptr %26, align 8, !tbaa !95
  %106 = mul nsw i32 %105, %47
  %107 = add nsw i32 %106, %46
  %108 = mul nsw i32 %107, %104
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, ptr %101, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !98
  %112 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6
  store float %111, ptr %112, align 8, !tbaa !98
  %113 = getelementptr inbounds float, ptr %110, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !98
  %115 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 1
  store float %114, ptr %115, align 4, !tbaa !98
  %116 = getelementptr inbounds float, ptr %110, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !98
  %118 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 2
  store float %117, ptr %118, align 8, !tbaa !98
  %119 = getelementptr inbounds float, ptr %110, i64 3
  %120 = load float, ptr %119, align 4, !tbaa !98
  %121 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 6, i64 3
  store float %120, ptr %121, align 4, !tbaa !98
  store ptr %112, ptr %55, align 8, !tbaa !74
  %122 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7
  store float %111, ptr %122, align 4, !tbaa !98
  %123 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7, i64 1
  store float %114, ptr %123, align 4, !tbaa !98
  %124 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7, i64 2
  store float %117, ptr %124, align 4, !tbaa !98
  %125 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 7, i64 3
  store float %120, ptr %125, align 4, !tbaa !98
  call void @BKE_sequencer_pixel_from_sequencer_space_v4(ptr noundef %7, ptr noundef nonnull %122) #5
  %126 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 11
  store i32 1, ptr %126, align 4, !tbaa !69
  br label %129

127:                                              ; preds = %18
  %128 = getelementptr inbounds %struct.ImageSampleInfo, ptr %14, i64 0, i32 10
  store i32 0, ptr %128, align 8, !tbaa !68
  br label %129

129:                                              ; preds = %99, %103, %127
  call void @IMB_freeImBuf(ptr noundef nonnull %12) #5
  %130 = call ptr @CTX_wm_area(ptr noundef %0) #5
  call void @ED_area_tag_redraw(ptr noundef %130) #5
  br label %131

131:                                              ; preds = %129, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare void @ED_image_draw_info(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #3

declare ptr @sequencer_ibuf_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_pixel_from_sequencer_space_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!49 = !{!50, !41, i64 224}
!50 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !52, i64 36, !37, i64 40, !53, i64 56, !52, i64 216, !52, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !51, i64 232, !52, i64 236, !51, i64 240, !51, i64 244, !36, i64 248, !56, i64 256}
!51 = !{!"int", !37, i64 0}
!52 = !{!"float", !37, i64 0}
!53 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !52, i64 96, !52, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !51, i64 136, !51, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!55 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!56 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !36, i64 240}
!59 = !{!"ARegion", !36, i64 0, !36, i64 8, !53, i64 16, !55, i64 176, !55, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !52, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!60 = !{!61, !36, i64 0}
!61 = !{!"ImageSampleInfo", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 32, !37, i64 48, !36, i64 64, !36, i64 72, !51, i64 80, !51, i64 84}
!62 = !{!61, !36, i64 8}
!63 = !{!64, !36, i64 96}
!64 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!65 = !{!66, !41, i64 16}
!66 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !51, i64 48, !51, i64 52, !67, i64 56, !51, i64 64, !51, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !51, i64 108, !36, i64 112}
!67 = !{!"double", !37, i64 0}
!68 = !{!61, !51, i64 80}
!69 = !{!61, !51, i64 84}
!70 = !{!61, !51, i64 24}
!71 = !{!61, !51, i64 16}
!72 = !{!61, !51, i64 20}
!73 = !{!61, !36, i64 64}
!74 = !{!61, !36, i64 72}
!75 = !{!76, !51, i64 680}
!76 = !{!"Scene", !77, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !78, i64 280, !85, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !86, i64 4400, !87, i64 4416, !90, i64 4600, !36, i64 4608, !91, i64 4616, !36, i64 4640, !92, i64 4648, !92, i64 4656, !80, i64 4664, !81, i64 4824, !93, i64 4888, !36, i64 4952}
!77 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!78 = !{!"RenderData", !79, i64 0, !36, i64 248, !36, i64 256, !82, i64 264, !83, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !52, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !51, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !52, i64 660, !52, i64 664, !41, i64 668, !41, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !52, i64 2528, !52, i64 2532, !41, i64 2536, !41, i64 2538, !52, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !51, i64 2576, !52, i64 2580, !37, i64 2584, !84, i64 2616, !51, i64 3976, !51, i64 3980}
!79 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !80, i64 24, !81, i64 184}
!80 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!82 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!83 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !52, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!84 = !{!"BakeData", !79, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!85 = !{!"AudioData", !51, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !52, i64 24, !52, i64 28}
!86 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!87 = !{!"GameData", !86, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !88, i64 40, !41, i64 64, !41, i64 66, !52, i64 68, !89, i64 72, !52, i64 128, !52, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!88 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!89 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !51, i64 40, !52, i64 44, !52, i64 48, !41, i64 52, !41, i64 54}
!90 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!91 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!92 = !{!"long", !37, i64 0}
!93 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!94 = !{!51, !51, i64 0}
!95 = !{!96, !51, i64 16}
!96 = !{!"ImBuf", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !37, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !52, i64 112, !37, i64 120, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !36, i64 296, !36, i64 304, !51, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !51, i64 2376, !36, i64 2384, !51, i64 2392, !51, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !51, i64 2432, !55, i64 2436, !97, i64 2456}
!97 = !{!"DDSData", !51, i64 0, !51, i64 4, !36, i64 8, !51, i64 16}
!98 = !{!52, !52, i64 0}
!99 = !{!96, !51, i64 20}
!100 = !{!96, !51, i64 28}
!101 = !{!96, !36, i64 40}
!102 = !{!37, !37, i64 0}
!103 = !{!96, !36, i64 2400}
!104 = !{!96, !36, i64 48}
