; ModuleID = 'blender/source/blender/editors/space_node/node_view.c'
source_filename = "blender/source/blender/editors/space_node/node_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rctf = type { float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.NodeViewMove = type { [2 x i32], i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ImageSampleInfo = type { ptr, ptr, i32, i32, i32, [4 x i8], [4 x float], [4 x float], i32, float, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"NODE_OT_view_all\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Resize view so you can see all nodes\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"NODE_OT_view_selected\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Resize view so you can see selected nodes\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Background Image Move\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Move Node backdrop\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"NODE_OT_backimage_move\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Background Image Zoom\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"NODE_OT_backimage_zoom\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Zoom in/out the background image\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Background Image Fit\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"NODE_OT_backimage_fit\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Fit the background image to the view\00", align 1
@ntreeType_Composite = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"Viewer Node\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Backimage Sample\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"NODE_OT_backimage_sample\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Use mouse to sample background image\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"NodeViewMove struct\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"ImageSampleInfo\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @space_node_view_flag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = load float, ptr %7, align 4, !tbaa !39
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !40
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !41
  %16 = fsub float %13, %15
  %17 = fdiv float %11, %16
  call void @BLI_rctf_init_minmax(ptr noundef nonnull %6) #7
  %18 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %21, %40
  %26 = phi ptr [ %43, %40 ], [ %23, %21 ]
  %27 = phi i32 [ %42, %40 ], [ 0, %21 ]
  %28 = phi i8 [ %41, %40 ], [ 0, %21 ]
  %29 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !51
  %31 = and i32 %30, %3
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 40
  call void @BLI_rctf_union(ptr noundef nonnull %6, ptr noundef nonnull %34) #7
  %35 = add nsw i32 %27, 1
  %36 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 8
  %37 = load i16, ptr %36, align 4, !tbaa !53
  %38 = icmp eq i16 %37, 5
  %39 = select i1 %38, i8 1, i8 %28
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi i8 [ %28, %25 ], [ %39, %33 ]
  %42 = phi i32 [ %27, %25 ], [ %35, %33 ]
  %43 = load ptr, ptr %26, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %25, !llvm.loop !54

45:                                               ; preds = %40
  %46 = icmp eq i8 %41, 0
  br label %47

47:                                               ; preds = %45, %21, %5
  %48 = phi i1 [ true, %5 ], [ true, %21 ], [ %46, %45 ]
  %49 = phi i32 [ 0, %5 ], [ 0, %21 ], [ %42, %45 ]
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = load float, ptr %6, align 4, !tbaa !39
  %55 = fsub float %53, %54
  %56 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %57 = load float, ptr %56, align 4, !tbaa !40
  %58 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !41
  %60 = fsub float %57, %59
  %61 = fdiv float %55, %60
  %62 = icmp eq i32 %49, 1
  %63 = select i1 %62, i1 %48, i1 false
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = fmul float %11, %16
  %66 = fmul float %55, %60
  %67 = fcmp ogt float %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @BLI_rctf_resize(ptr noundef nonnull %6, float noundef %11, float noundef %16) #7
  br label %82

69:                                               ; preds = %64, %51
  %70 = fcmp olt float %17, %61
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = fdiv float %55, %17
  %73 = fmul float %72, 5.000000e-01
  %74 = fsub float %59, %73
  store float %74, ptr %58, align 4, !tbaa !41
  %75 = fadd float %57, %73
  store float %75, ptr %56, align 4, !tbaa !40
  br label %81

76:                                               ; preds = %69
  %77 = fmul float %17, %60
  %78 = fmul float %77, 5.000000e-01
  %79 = fsub float %54, %78
  store float %79, ptr %6, align 4, !tbaa !39
  %80 = fadd float %53, %78
  store float %80, ptr %52, align 4, !tbaa !34
  br label %81

81:                                               ; preds = %76, %71
  call void @BLI_rctf_scale(ptr noundef nonnull %6, float noundef 0x3FF19999A0000000) #7
  br label %82

82:                                               ; preds = %81, %68
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %4) #7
  br label %83

83:                                               ; preds = %82, %47
  %84 = zext i1 %50 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  ret i32 %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #2

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rctf_resize(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_rctf_scale(ptr noundef, float noundef) local_unnamed_addr #2

declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_view_all_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_view_all_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %5 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #7
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  store float 0.000000e+00, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 14
  store float 0.000000e+00, ptr %7, align 8, !tbaa !66
  %8 = tail call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %4, ptr noundef %3, i32 noundef 0, i32 noundef %5), !range !67
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 2, i32 4
  ret i32 %10
}

declare i32 @ED_operator_node_active(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_view_selected_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_view_selected_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %5 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #7
  %6 = tail call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %4, ptr noundef %3, i32 noundef 1, i32 noundef %5), !range !67
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_backimage_move(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @snode_bg_viewmove_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @snode_bg_viewmove_modal, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @snode_bg_viewmove_cancel, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snode_bg_viewmove_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #7
  %8 = call ptr @BKE_image_acquire_ibuf(ptr noundef %7, ptr noundef null, ptr noundef nonnull %4) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !50
  call void @BKE_image_release_ibuf(ptr noundef %7, ptr noundef null, ptr noundef %11) #7
  br label %62

12:                                               ; preds = %3
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %14 = call ptr %13(i64 noundef 24, ptr noundef nonnull @.str.22) #7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !71
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !73
  store i32 %17, ptr %14, align 4, !tbaa !73
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !73
  %21 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !74
  %23 = sdiv i16 %22, -2
  %24 = sitofp i16 %23 to float
  %25 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !76
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 15
  %29 = load float, ptr %28, align 4, !tbaa !79
  %30 = fmul float %29, 5.000000e-01
  %31 = fneg float %27
  %32 = call float @llvm.fmuladd.f32(float %31, float %30, float %24)
  %33 = fadd float %32, 3.200000e+01
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.NodeViewMove, ptr %14, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !80
  %36 = sdiv i16 %22, 2
  %37 = sitofp i16 %36 to float
  %38 = call float @llvm.fmuladd.f32(float %27, float %30, float %37)
  %39 = fadd float %38, -3.200000e+01
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds %struct.NodeViewMove, ptr %14, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !82
  %42 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !83
  %44 = sdiv i16 %43, -2
  %45 = sitofp i16 %44 to float
  %46 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !84
  %48 = sitofp i32 %47 to float
  %49 = fneg float %48
  %50 = call float @llvm.fmuladd.f32(float %49, float %30, float %45)
  %51 = fadd float %50, 3.200000e+01
  %52 = fptosi float %51 to i32
  %53 = getelementptr inbounds %struct.NodeViewMove, ptr %14, i64 0, i32 2
  store i32 %52, ptr %53, align 4, !tbaa !85
  %54 = sdiv i16 %43, 2
  %55 = sitofp i16 %54 to float
  %56 = call float @llvm.fmuladd.f32(float %48, float %30, float %55)
  %57 = fadd float %56, -3.200000e+01
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds %struct.NodeViewMove, ptr %14, i64 0, i32 4
  store i32 %58, ptr %59, align 4, !tbaa !86
  %60 = load ptr, ptr %4, align 8, !tbaa !50
  call void @BKE_image_release_ibuf(ptr noundef %7, ptr noundef nonnull %8, ptr noundef %60) #7
  %61 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %62

62:                                               ; preds = %12, %10
  %63 = phi i32 [ 2, %10 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snode_bg_viewmove_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !87
  switch i16 %9, label %55 [
    i16 4, label %10
    i16 1, label %53
    i16 2, label %53
    i16 3, label %53
  ]

10:                                               ; preds = %3
  %11 = load i32, ptr %7, align 4, !tbaa !73
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !73
  %14 = sub nsw i32 %11, %13
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  %17 = load float, ptr %16, align 4, !tbaa !65
  %18 = fsub float %17, %15
  store float %18, ptr %16, align 4, !tbaa !65
  %19 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !73
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !73
  %23 = sub nsw i32 %20, %22
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 14
  %26 = load float, ptr %25, align 8, !tbaa !66
  %27 = fsub float %26, %24
  store float %27, ptr %25, align 8, !tbaa !66
  store i32 %13, ptr %7, align 4, !tbaa !73
  %28 = load i32, ptr %21, align 4, !tbaa !73
  store i32 %28, ptr %19, align 4, !tbaa !73
  %29 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !80
  %31 = sitofp i32 %30 to float
  %32 = fcmp olt float %18, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !82
  %36 = sitofp i32 %35 to float
  %37 = fcmp ogt float %18, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %10
  %39 = phi float [ %31, %10 ], [ %36, %33 ]
  store float %39, ptr %16, align 4, !tbaa !65
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !85
  %43 = sitofp i32 %42 to float
  %44 = fcmp olt float %27, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !86
  %48 = sitofp i32 %47 to float
  %49 = fcmp ogt float %27, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = phi float [ %43, %40 ], [ %48, %45 ]
  store float %51, ptr %25, align 8, !tbaa !66
  br label %52

52:                                               ; preds = %50, %45
  tail call void @ED_region_tag_redraw(ptr noundef %5) #7
  tail call void @WM_main_add_notifier(i32 noundef 288555008, ptr noundef null) #7
  br label %55

53:                                               ; preds = %3, %3, %3
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %54(ptr noundef %7) #7
  store ptr null, ptr %6, align 8, !tbaa !71
  br label %55

55:                                               ; preds = %52, %3, %53
  %56 = phi i32 [ 4, %53 ], [ 1, %3 ], [ 1, %52 ]
  ret i32 %56
}

declare i32 @composite_node_active(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @snode_bg_viewmove_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  tail call void %3(ptr noundef %5) #7
  store ptr null, ptr %4, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_backimage_zoom(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @backimage_zoom_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.12, float noundef 0x3FF3333340000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef 0.000000e+00, float noundef 1.000000e+01) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @backimage_zoom_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.12) #7
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 15
  %9 = load float, ptr %8, align 4, !tbaa !79
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !79
  tail call void @ED_region_tag_redraw(ptr noundef %4) #7
  tail call void @WM_main_add_notifier(i32 noundef 288555008, ptr noundef null) #7
  ret i32 4
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_backimage_fit(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @backimage_fit_exec, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @backimage_fit_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %6 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #7
  %7 = call ptr @BKE_image_acquire_ibuf(ptr noundef %6, ptr noundef null, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !50
  call void @BKE_image_release_ibuf(ptr noundef %6, ptr noundef null, ptr noundef %10) #7
  br label %39

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 12
  %13 = load i16, ptr %12, align 8, !tbaa !92
  %14 = sitofp i16 %13 to float
  %15 = fadd float %14, -3.200000e+01
  %16 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !76
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 15
  %20 = load float, ptr %19, align 4, !tbaa !79
  %21 = fmul float %20, %18
  %22 = fdiv float %15, %21
  %23 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 13
  %24 = load i16, ptr %23, align 2, !tbaa !93
  %25 = sitofp i16 %24 to float
  %26 = fadd float %25, -3.200000e+01
  %27 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !84
  %29 = sitofp i32 %28 to float
  %30 = fmul float %20, %29
  %31 = fdiv float %26, %30
  %32 = load ptr, ptr %3, align 8, !tbaa !50
  call void @BKE_image_release_ibuf(ptr noundef %6, ptr noundef nonnull %7, ptr noundef %32) #7
  %33 = fcmp olt float %22, %31
  %34 = select i1 %33, float %22, float %31
  %35 = load float, ptr %19, align 4, !tbaa !79
  %36 = fmul float %35, %34
  store float %36, ptr %19, align 4, !tbaa !79
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  store float 0.000000e+00, ptr %37, align 4, !tbaa !65
  %38 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 14
  store float 0.000000e+00, ptr %38, align 8, !tbaa !66
  call void @ED_region_tag_redraw(ptr noundef %5) #7
  call void @WM_main_add_notifier(i32 noundef 288555008, ptr noundef null) #7
  br label %39

39:                                               ; preds = %11, %9
  %40 = phi i32 [ 2, %9 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_space_node_color_sample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %8 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.bNodeTreeType, ptr %10, i64 0, i32 1
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %11) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %123, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 9
  %16 = load i16, ptr %15, align 8, !tbaa !94
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %123, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #7
  %21 = call ptr @BKE_image_acquire_ibuf(ptr noundef %20, ptr noundef null, ptr noundef nonnull %6) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %123, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !76
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 15
  %28 = load float, ptr %27, align 4, !tbaa !79
  %29 = fmul float %28, %26
  %30 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !84
  %32 = sitofp i32 %31 to float
  %33 = fmul float %28, %32
  %34 = fcmp ogt float %29, 0.000000e+00
  br i1 %34, label %35, label %47

35:                                               ; preds = %23
  %36 = load i32, ptr %3, align 4, !tbaa !73
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !74
  %40 = sitofp i16 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %40, float -5.000000e-01, float %37)
  %42 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 13
  %43 = load float, ptr %42, align 4, !tbaa !65
  %44 = fsub float %41, %43
  %45 = fdiv float %44, %29
  %46 = fadd float %45, 5.000000e-01
  br label %47

47:                                               ; preds = %23, %35
  %48 = phi float [ %46, %35 ], [ 0.000000e+00, %23 ]
  %49 = fcmp ogt float %33, 0.000000e+00
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = getelementptr inbounds i32, ptr %3, i64 1
  %52 = load i32, ptr %51, align 4, !tbaa !73
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %55 = load i16, ptr %54, align 2, !tbaa !83
  %56 = sitofp i16 %55 to float
  %57 = call float @llvm.fmuladd.f32(float %56, float -5.000000e-01, float %53)
  %58 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 14
  %59 = load float, ptr %58, align 8, !tbaa !66
  %60 = fsub float %57, %59
  %61 = fdiv float %60, %33
  %62 = fadd float %61, 5.000000e-01
  br label %63

63:                                               ; preds = %47, %50
  %64 = phi float [ %62, %50 ], [ 0.000000e+00, %47 ]
  %65 = fcmp oge float %48, 0.000000e+00
  %66 = fcmp oge float %64, 0.000000e+00
  %67 = select i1 %65, i1 %66, i1 false
  %68 = fcmp olt float %48, 1.000000e+00
  %69 = and i1 %68, %67
  %70 = fcmp olt float %64, 1.000000e+00
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %117

72:                                               ; preds = %63
  %73 = fmul float %48, %26
  %74 = fptosi float %73 to i32
  %75 = fmul float %64, %32
  %76 = fptosi float %75 to i32
  %77 = icmp slt i32 %74, 0
  %78 = icmp sgt i32 %25, %74
  %79 = add nsw i32 %25, -1
  %80 = select i1 %78, i32 %74, i32 %79
  %81 = select i1 %77, i32 0, i32 %80
  %82 = icmp slt i32 %76, 0
  %83 = icmp sgt i32 %31, %76
  %84 = add nsw i32 %31, -1
  %85 = select i1 %83, i32 %76, i32 %84
  %86 = select i1 %82, i32 0, i32 %85
  %87 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !95
  %89 = icmp eq ptr %88, null
  br i1 %89, label %105, label %90

90:                                               ; preds = %72
  %91 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !96
  %93 = mul nsw i32 %86, %25
  %94 = add nsw i32 %93, %81
  %95 = mul nsw i32 %92, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr %88, i64 %96
  %98 = load float, ptr %97, align 4, !tbaa !97
  store float %98, ptr %4, align 4, !tbaa !97
  %99 = getelementptr inbounds float, ptr %97, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !97
  %101 = getelementptr inbounds float, ptr %4, i64 1
  store float %100, ptr %101, align 4, !tbaa !97
  %102 = getelementptr inbounds float, ptr %97, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !97
  %104 = getelementptr inbounds float, ptr %4, i64 2
  store float %103, ptr %104, align 4, !tbaa !97
  br label %117

105:                                              ; preds = %72
  %106 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !98
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = mul nsw i32 %86, %25
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %107, i64 %111
  %113 = sext i32 %81 to i64
  %114 = getelementptr inbounds i32, ptr %112, i64 %113
  call void @rgb_uchar_to_float(ptr noundef %4, ptr noundef nonnull %114) #7
  %115 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 34
  %116 = load ptr, ptr %115, align 8, !tbaa !99
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %4, ptr noundef %116) #7
  br label %117

117:                                              ; preds = %90, %109, %105, %63
  %118 = phi i1 [ true, %63 ], [ false, %90 ], [ false, %109 ], [ true, %105 ]
  %119 = phi i8 [ 0, %63 ], [ 1, %90 ], [ 1, %109 ], [ 0, %105 ]
  br i1 %118, label %121, label %120

120:                                              ; preds = %117
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %4, ptr noundef %8) #7
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr %6, align 8, !tbaa !50
  call void @BKE_image_release_ibuf(ptr noundef %20, ptr noundef nonnull %21, ptr noundef %122) #7
  br label %123

123:                                              ; preds = %19, %5, %14, %121
  %124 = phi i8 [ %119, %121 ], [ 0, %14 ], [ 0, %5 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret i8 %124
}

declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_backimage_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sample_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sample_modal, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sample_cancel, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %6 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %4) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !94
  %11 = and i16 %10, 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %15 = tail call ptr %14(i64 noundef 96, ptr noundef nonnull @.str.23) #7
  %16 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  store ptr %17, ptr %15, align 8, !tbaa !101
  %18 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %17, ptr noundef nonnull @sample_draw, ptr noundef nonnull %15, i32 noundef 1) #7
  %19 = getelementptr inbounds %struct.ImageSampleInfo, ptr %15, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %20, align 8, !tbaa !71
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %21 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %22

22:                                               ; preds = %3, %8, %13
  %23 = phi i32 [ 1, %13 ], [ 2, %8 ], [ 2, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sample_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !87
  switch i16 %5, label %15 [
    i16 1, label %6
    i16 3, label %6
    i16 4, label %14
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  tail call void @ED_node_sample_set(ptr noundef null) #7
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  tail call void @ED_region_draw_cb_exit(ptr noundef %9, ptr noundef %11) #7
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @ED_area_tag_redraw(ptr noundef %12) #7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %13(ptr noundef nonnull %8) #7
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %15

15:                                               ; preds = %14, %3, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %3 ], [ 1, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @sample_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @ED_node_sample_set(ptr noundef null) #7
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.ImageSampleInfo, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #7
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  tail call void @ED_area_tag_redraw(ptr noundef %8) #7
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  tail call void %9(ptr noundef nonnull %4) #7
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_node_is_compositor(ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sample_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !105
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !108
  %18 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 5
  %19 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 6
  %20 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 7
  %21 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  %23 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  tail call void @ED_image_draw_info(ptr noundef %4, ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext 0, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %22, ptr noundef %24) #7
  br label %25

25:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sample_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %9 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #7
  %10 = call ptr @BKE_image_acquire_ibuf(ptr noundef %9, ptr noundef null, ptr noundef nonnull %4) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !104
  br label %189

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @IMB_rect_from_float(ptr noundef nonnull %10) #7
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !76
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 15
  %24 = load float, ptr %23, align 4, !tbaa !79
  %25 = fmul float %24, %22
  %26 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !84
  %28 = sitofp i32 %27 to float
  %29 = fmul float %24, %28
  %30 = fcmp ogt float %25, 0.000000e+00
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !73
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %36 = load i16, ptr %35, align 8, !tbaa !74
  %37 = sitofp i16 %36 to float
  %38 = call float @llvm.fmuladd.f32(float %37, float -5.000000e-01, float %34)
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 13
  %40 = load float, ptr %39, align 4, !tbaa !65
  %41 = fsub float %38, %40
  %42 = fdiv float %41, %25
  %43 = fadd float %42, 5.000000e-01
  br label %44

44:                                               ; preds = %19, %31
  %45 = phi float [ %43, %31 ], [ 0.000000e+00, %19 ]
  %46 = fcmp ogt float %29, 0.000000e+00
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !73
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %52 = load i16, ptr %51, align 2, !tbaa !83
  %53 = sitofp i16 %52 to float
  %54 = call float @llvm.fmuladd.f32(float %53, float -5.000000e-01, float %50)
  %55 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 14
  %56 = load float, ptr %55, align 8, !tbaa !66
  %57 = fsub float %54, %56
  %58 = fdiv float %57, %29
  %59 = fadd float %58, 5.000000e-01
  br label %60

60:                                               ; preds = %44, %47
  %61 = phi float [ %59, %47 ], [ 0.000000e+00, %44 ]
  %62 = fcmp oge float %45, 0.000000e+00
  %63 = fcmp oge float %61, 0.000000e+00
  %64 = select i1 %62, i1 %63, i1 false
  %65 = fcmp olt float %45, 1.000000e+00
  %66 = and i1 %65, %64
  %67 = fcmp olt float %61, 1.000000e+00
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %184

69:                                               ; preds = %60
  %70 = fmul float %45, %22
  %71 = fptosi float %70 to i32
  %72 = fmul float %61, %28
  %73 = fptosi float %72 to i32
  %74 = icmp slt i32 %71, 0
  %75 = icmp sgt i32 %21, %71
  %76 = add nsw i32 %21, -1
  %77 = select i1 %75, i32 %71, i32 %76
  %78 = select i1 %74, i32 0, i32 %77
  %79 = icmp slt i32 %73, 0
  %80 = icmp sgt i32 %27, %73
  %81 = add nsw i32 %27, -1
  %82 = select i1 %80, i32 %73, i32 %81
  %83 = select i1 %79, i32 0, i32 %82
  %84 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 2
  store i32 %78, ptr %84, align 8, !tbaa !107
  %85 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 3
  store i32 %83, ptr %85, align 4, !tbaa !108
  %86 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 12
  store i32 1, ptr %86, align 8, !tbaa !104
  %87 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !96
  %89 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 4
  store i32 %88, ptr %89, align 8, !tbaa !106
  %90 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 10
  %91 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, i8 0, i64 16, i1 false)
  %92 = load ptr, ptr %15, align 8, !tbaa !98
  %93 = icmp eq ptr %92, null
  br i1 %93, label %134, label %94

94:                                               ; preds = %69
  %95 = mul nsw i32 %83, %21
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %92, i64 %96
  %98 = sext i32 %78 to i64
  %99 = getelementptr inbounds i32, ptr %97, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !111
  %101 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5
  store i8 %100, ptr %101, align 4, !tbaa !111
  %102 = getelementptr inbounds i8, ptr %99, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !111
  %104 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5, i64 1
  store i8 %103, ptr %104, align 1, !tbaa !111
  %105 = getelementptr inbounds i8, ptr %99, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !111
  %107 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5, i64 2
  store i8 %106, ptr %107, align 2, !tbaa !111
  %108 = getelementptr inbounds i8, ptr %99, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !111
  %110 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5, i64 3
  store i8 %109, ptr %110, align 1, !tbaa !111
  %111 = load i8, ptr %99, align 1, !tbaa !111
  %112 = uitofp i8 %111 to float
  %113 = fdiv float %112, 2.550000e+02
  %114 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6
  store float %113, ptr %114, align 8, !tbaa !97
  %115 = load i8, ptr %102, align 1, !tbaa !111
  %116 = uitofp i8 %115 to float
  %117 = fdiv float %116, 2.550000e+02
  %118 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 1
  store float %117, ptr %118, align 4, !tbaa !97
  %119 = load i8, ptr %105, align 1, !tbaa !111
  %120 = uitofp i8 %119 to float
  %121 = fdiv float %120, 2.550000e+02
  %122 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 2
  store float %121, ptr %122, align 8, !tbaa !97
  %123 = load i8, ptr %108, align 1, !tbaa !111
  %124 = uitofp i8 %123 to float
  %125 = fdiv float %124, 2.550000e+02
  %126 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 3
  store float %125, ptr %126, align 4, !tbaa !97
  %127 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 7
  store float %113, ptr %127, align 4, !tbaa !97
  %128 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 7, i64 1
  store float %117, ptr %128, align 4, !tbaa !97
  %129 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 7, i64 2
  store float %121, ptr %129, align 4, !tbaa !97
  %130 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 7, i64 3
  store float %125, ptr %130, align 4, !tbaa !97
  %131 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 34
  %132 = load ptr, ptr %131, align 8, !tbaa !99
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %127, i8 noundef zeroext 0, ptr noundef %132) #7
  %133 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 13
  store i32 1, ptr %133, align 4, !tbaa !105
  br label %134

134:                                              ; preds = %94, %69
  %135 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %136 = load ptr, ptr %135, align 8, !tbaa !95
  %137 = icmp eq ptr %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %87, align 4, !tbaa !96
  %140 = load i32, ptr %20, align 8, !tbaa !76
  %141 = mul nsw i32 %140, %83
  %142 = add nsw i32 %141, %78
  %143 = mul nsw i32 %142, %139
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, ptr %136, i64 %144
  %146 = load float, ptr %145, align 4, !tbaa !97
  %147 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6
  store float %146, ptr %147, align 8, !tbaa !97
  %148 = getelementptr inbounds float, ptr %145, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !97
  %150 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 1
  store float %149, ptr %150, align 4, !tbaa !97
  %151 = getelementptr inbounds float, ptr %145, i64 2
  %152 = load float, ptr %151, align 4, !tbaa !97
  %153 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 2
  store float %152, ptr %153, align 8, !tbaa !97
  %154 = getelementptr inbounds float, ptr %145, i64 3
  %155 = load float, ptr %154, align 4, !tbaa !97
  %156 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 3
  store float %155, ptr %156, align 4, !tbaa !97
  %157 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 13
  store i32 1, ptr %157, align 4, !tbaa !105
  br label %158

158:                                              ; preds = %138, %134
  %159 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 16
  %160 = load ptr, ptr %159, align 8, !tbaa !112
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %20, align 8, !tbaa !76
  %164 = mul nsw i32 %163, %83
  %165 = add nsw i32 %164, %78
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, ptr %160, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !73
  %169 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 8
  store i32 %168, ptr %169, align 8, !tbaa !113
  store ptr %169, ptr %90, align 8, !tbaa !109
  br label %170

170:                                              ; preds = %162, %158
  %171 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 17
  %172 = load ptr, ptr %171, align 8, !tbaa !114
  %173 = icmp eq ptr %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %20, align 8, !tbaa !76
  %176 = mul nsw i32 %175, %83
  %177 = add nsw i32 %176, %78
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, ptr %172, i64 %178
  %180 = load float, ptr %179, align 4, !tbaa !97
  %181 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 9
  store float %180, ptr %181, align 4, !tbaa !115
  store ptr %181, ptr %91, align 8, !tbaa !110
  br label %182

182:                                              ; preds = %174, %170
  %183 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6
  call void @ED_node_sample_set(ptr noundef nonnull %183) #7
  br label %186

184:                                              ; preds = %60
  %185 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 12
  store i32 0, ptr %185, align 8, !tbaa !104
  call void @ED_node_sample_set(ptr noundef null) #7
  br label %186

186:                                              ; preds = %184, %182
  %187 = load ptr, ptr %4, align 8, !tbaa !50
  call void @BKE_image_release_ibuf(ptr noundef %9, ptr noundef nonnull %10, ptr noundef %187) #7
  %188 = call ptr @CTX_wm_area(ptr noundef %0) #7
  call void @ED_area_tag_redraw(ptr noundef %188) #7
  br label %189

189:                                              ; preds = %186, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @ED_image_draw_info(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @ED_node_sample_set(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 4}
!35 = !{!"rctf", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 0}
!40 = !{!35, !36, i64 12}
!41 = !{!35, !36, i64 8}
!42 = !{!43, !44, i64 288}
!43 = !{!"SpaceNode", !44, i64 0, !44, i64 8, !45, i64 16, !46, i64 32, !36, i64 36, !37, i64 40, !47, i64 56, !44, i64 216, !44, i64 224, !49, i64 232, !49, i64 234, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !37, i64 256, !45, i64 264, !44, i64 280, !44, i64 288, !37, i64 296, !46, i64 360, !46, i64 364, !49, i64 368, !49, i64 370, !49, i64 372, !49, i64 374, !45, i64 376, !44, i64 392}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!"ListBase", !44, i64 0, !44, i64 8}
!46 = !{!"int", !37, i64 0}
!47 = !{!"View2D", !35, i64 0, !35, i64 16, !48, i64 32, !48, i64 48, !48, i64 64, !37, i64 80, !37, i64 88, !36, i64 96, !36, i64 100, !49, i64 104, !49, i64 106, !49, i64 108, !49, i64 110, !49, i64 112, !49, i64 114, !49, i64 116, !49, i64 118, !49, i64 120, !49, i64 122, !49, i64 124, !49, i64 126, !44, i64 128, !46, i64 136, !46, i64 140, !44, i64 144, !44, i64 152}
!48 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!49 = !{!"short", !37, i64 0}
!50 = !{!44, !44, i64 0}
!51 = !{!52, !46, i64 168}
!52 = !{!"bNode", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !37, i64 40, !37, i64 104, !46, i64 168, !49, i64 172, !49, i64 174, !49, i64 176, !49, i64 178, !49, i64 180, !49, i64 182, !49, i64 184, !49, i64 186, !37, i64 188, !45, i64 200, !45, i64 216, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !45, i64 264, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !46, i64 308, !37, i64 312, !49, i64 376, !49, i64 378, !36, i64 380, !36, i64 384, !49, i64 388, !49, i64 390, !44, i64 392, !35, i64 400, !35, i64 416, !35, i64 432, !49, i64 448, !49, i64 450, !46, i64 452, !44, i64 456}
!53 = !{!52, !49, i64 172}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !44, i64 0}
!58 = !{!"wmOperatorType", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !45, i64 112, !44, i64 128, !44, i64 136, !44, i64 144, !59, i64 152, !49, i64 184}
!59 = !{!"ExtensionRNA", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!60 = !{!58, !44, i64 8}
!61 = !{!58, !44, i64 24}
!62 = !{!58, !44, i64 32}
!63 = !{!58, !44, i64 72}
!64 = !{!58, !49, i64 184}
!65 = !{!43, !36, i64 244}
!66 = !{!43, !36, i64 248}
!67 = !{i32 0, i32 2}
!68 = !{!58, !44, i64 48}
!69 = !{!58, !44, i64 64}
!70 = !{!58, !44, i64 56}
!71 = !{!72, !44, i64 96}
!72 = !{!"wmOperator", !44, i64 0, !44, i64 8, !37, i64 16, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !45, i64 128, !44, i64 144, !44, i64 152, !49, i64 160, !37, i64 162}
!73 = !{!46, !46, i64 0}
!74 = !{!75, !49, i64 208}
!75 = !{!"ARegion", !44, i64 0, !44, i64 8, !47, i64 16, !48, i64 176, !48, i64 192, !49, i64 208, !49, i64 210, !49, i64 212, !49, i64 214, !49, i64 216, !49, i64 218, !36, i64 220, !49, i64 224, !49, i64 226, !49, i64 228, !49, i64 230, !49, i64 232, !49, i64 234, !49, i64 236, !49, i64 238, !44, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !44, i64 360, !44, i64 368, !44, i64 376}
!76 = !{!77, !46, i64 16}
!77 = !{!"ImBuf", !44, i64 0, !44, i64 8, !46, i64 16, !46, i64 20, !37, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !44, i64 40, !44, i64 48, !37, i64 56, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !36, i64 112, !37, i64 120, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !44, i64 296, !44, i64 304, !46, i64 312, !37, i64 316, !37, i64 1340, !44, i64 2368, !46, i64 2376, !44, i64 2384, !46, i64 2392, !46, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !46, i64 2432, !48, i64 2436, !78, i64 2456}
!78 = !{!"DDSData", !46, i64 0, !46, i64 4, !44, i64 8, !46, i64 16}
!79 = !{!43, !36, i64 252}
!80 = !{!81, !46, i64 8}
!81 = !{!"NodeViewMove", !37, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20}
!82 = !{!81, !46, i64 16}
!83 = !{!75, !49, i64 210}
!84 = !{!77, !46, i64 20}
!85 = !{!81, !46, i64 12}
!86 = !{!81, !46, i64 20}
!87 = !{!88, !49, i64 16}
!88 = !{!"wmEvent", !44, i64 0, !44, i64 8, !49, i64 16, !49, i64 18, !46, i64 20, !46, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !49, i64 44, !49, i64 46, !46, i64 48, !46, i64 52, !89, i64 56, !46, i64 64, !46, i64 68, !49, i64 72, !49, i64 74, !49, i64 76, !49, i64 78, !49, i64 80, !49, i64 82, !44, i64 88, !44, i64 96, !49, i64 104, !49, i64 106, !46, i64 108, !44, i64 112}
!89 = !{!"double", !37, i64 0}
!90 = !{!58, !44, i64 88}
!91 = !{!72, !44, i64 112}
!92 = !{!75, !49, i64 224}
!93 = !{!75, !49, i64 226}
!94 = !{!43, !49, i64 232}
!95 = !{!77, !44, i64 48}
!96 = !{!77, !46, i64 28}
!97 = !{!36, !36, i64 0}
!98 = !{!77, !44, i64 40}
!99 = !{!77, !44, i64 2400}
!100 = !{!75, !44, i64 240}
!101 = !{!102, !44, i64 0}
!102 = !{!"ImageSampleInfo", !44, i64 0, !44, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !37, i64 28, !37, i64 32, !37, i64 48, !46, i64 64, !36, i64 68, !44, i64 72, !44, i64 80, !46, i64 88, !46, i64 92}
!103 = !{!102, !44, i64 8}
!104 = !{!102, !46, i64 88}
!105 = !{!102, !46, i64 92}
!106 = !{!102, !46, i64 24}
!107 = !{!102, !46, i64 16}
!108 = !{!102, !46, i64 20}
!109 = !{!102, !44, i64 72}
!110 = !{!102, !44, i64 80}
!111 = !{!37, !37, i64 0}
!112 = !{!77, !44, i64 96}
!113 = !{!102, !46, i64 64}
!114 = !{!77, !44, i64 104}
!115 = !{!102, !36, i64 68}
