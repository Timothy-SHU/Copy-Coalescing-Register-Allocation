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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @space_node_view_flag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #12
  %9 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #12
  %10 = fdiv float %8, %9
  call void @BLI_rctf_init_minmax(ptr noundef nonnull %6) #13
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %73, label %18

18:                                               ; preds = %14, %33
  %19 = phi ptr [ %36, %33 ], [ %16, %14 ]
  %20 = phi i32 [ %35, %33 ], [ 0, %14 ]
  %21 = phi i8 [ %34, %33 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !18
  %24 = and i32 %23, %3
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 40
  call void @BLI_rctf_union(ptr noundef nonnull %6, ptr noundef nonnull %27) #13
  %28 = add nsw i32 %20, 1
  %29 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !20
  %31 = icmp eq i16 %30, 5
  %32 = select i1 %31, i8 1, i8 %21
  br label %33

33:                                               ; preds = %26, %18
  %34 = phi i8 [ %21, %18 ], [ %32, %26 ]
  %35 = phi i32 [ %20, %18 ], [ %28, %26 ]
  %36 = load ptr, ptr %19, align 8, !tbaa !17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %18, !llvm.loop !21

38:                                               ; preds = %33
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %38
  %41 = icmp eq i8 %34, 0
  %42 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #12
  %43 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #12
  %44 = fdiv float %42, %43
  %45 = icmp eq i32 %35, 1
  %46 = select i1 %45, i1 %41, i1 false
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = fmul float %8, %9
  %49 = fmul float %42, %43
  %50 = fcmp ogt float %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @BLI_rctf_resize(ptr noundef nonnull %6, float noundef %8, float noundef %9) #13
  br label %72

52:                                               ; preds = %47, %40
  %53 = fcmp olt float %10, %44
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = fdiv float %42, %10
  %56 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %57 = load float, ptr %56, align 4, !tbaa !23
  %58 = fmul float %55, 5.000000e-01
  %59 = fsub float %57, %58
  store float %59, ptr %56, align 4, !tbaa !23
  %60 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  br label %67

61:                                               ; preds = %52
  %62 = fmul float %10, %43
  %63 = load float, ptr %6, align 4, !tbaa !24
  %64 = fmul float %62, 5.000000e-01
  %65 = fsub float %63, %64
  store float %65, ptr %6, align 4, !tbaa !24
  %66 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  br label %67

67:                                               ; preds = %61, %54
  %68 = phi ptr [ %66, %61 ], [ %60, %54 ]
  %69 = phi float [ %64, %61 ], [ %58, %54 ]
  %70 = load float, ptr %68, align 4, !tbaa !25
  %71 = fadd float %69, %70
  store float %71, ptr %68, align 4, !tbaa !25
  call void @BLI_rctf_scale(ptr noundef nonnull %6, float noundef 0x3FF19999A0000000) #13
  br label %72

72:                                               ; preds = %67, %51
  call void @UI_view2d_smooth_view(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %4) #13
  br label %73

73:                                               ; preds = %14, %5, %72, %38
  %74 = phi i32 [ 1, %72 ], [ 0, %38 ], [ 0, %5 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !26
  %4 = load float, ptr %0, align 4, !tbaa !24
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !27
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !23
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rctf_resize(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_rctf_scale(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_smooth_view(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_view_all_exec, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_view_all_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %5 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !25
  %7 = tail call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %4, ptr noundef %3, i32 noundef 0, i32 noundef %5) #12, !range !36
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 2, i32 4
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @ED_operator_node_active(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_view_selected_exec, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_view_selected_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %5 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #13
  %6 = tail call i32 @space_node_view_flag(ptr noundef %0, ptr noundef %4, ptr noundef %3, i32 noundef 1, i32 noundef %5) #12, !range !36
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_backimage_move(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @snode_bg_viewmove_invoke, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @snode_bg_viewmove_modal, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @snode_bg_viewmove_cancel, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snode_bg_viewmove_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %7 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #13
  %8 = call ptr @BKE_image_acquire_ibuf(ptr noundef %7, ptr noundef null, ptr noundef nonnull %4) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !17
  call void @BKE_image_release_ibuf(ptr noundef %7, ptr noundef null, ptr noundef %11) #13
  br label %44

12:                                               ; preds = %3
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !17
  %14 = call ptr %13(i64 noundef 24, ptr noundef nonnull @.str.22) #13
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !42
  store i32 %17, ptr %14, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !42
  %20 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !42
  %21 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %22 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 2
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 15
  %24 = load float, ptr %23, align 4, !tbaa !43
  %25 = fmul float %24, 5.000000e-01
  %26 = getelementptr inbounds %struct.NodeViewMove, ptr %14, i64 0, i32 1
  %27 = load <2 x i32>, ptr %22, align 8, !tbaa !42
  %28 = sitofp <2 x i32> %27 to <2 x float>
  %29 = load <2 x i16>, ptr %21, align 8, !tbaa !44
  %30 = shufflevector <2 x i16> %29, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %31 = sdiv <4 x i16> %30, <i16 -2, i16 -2, i16 2, i16 2>
  %32 = sitofp <4 x i16> %31 to <4 x float>
  %33 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %34 = fneg <4 x float> %33
  %35 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x float> %34, <4 x float> %35, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %37 = insertelement <4 x float> poison, float %25, i64 0
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %39 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %38, <4 x float> %32)
  %40 = fadd <4 x float> %39, <float 3.200000e+01, float 3.200000e+01, float -3.200000e+01, float -3.200000e+01>
  %41 = fptosi <4 x float> %40 to <4 x i32>
  store <4 x i32> %41, ptr %26, align 4, !tbaa !42
  %42 = load ptr, ptr %4, align 8, !tbaa !17
  call void @BKE_image_release_ibuf(ptr noundef %7, ptr noundef nonnull %8, ptr noundef %42) #13
  %43 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %44

44:                                               ; preds = %12, %10
  %45 = phi i32 [ 2, %10 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snode_bg_viewmove_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !45
  switch i16 %9, label %52 [
    i16 4, label %10
    i16 1, label %50
    i16 2, label %50
    i16 3, label %50
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  %13 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 14
  %16 = load <2 x i32>, ptr %7, align 4, !tbaa !42
  %17 = load <2 x i32>, ptr %11, align 4, !tbaa !42
  %18 = sub nsw <2 x i32> %16, %17
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = load <2 x float>, ptr %12, align 4, !tbaa !25
  %21 = fsub <2 x float> %20, %19
  store <2 x float> %21, ptr %12, align 4, !tbaa !25
  %22 = extractelement <2 x i32> %17, i64 0
  store i32 %22, ptr %7, align 4, !tbaa !42
  %23 = load i32, ptr %14, align 4, !tbaa !42
  store i32 %23, ptr %13, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = sitofp i32 %25 to float
  %27 = extractelement <2 x float> %21, i64 0
  %28 = fcmp olt float %27, %26
  br i1 %28, label %34, label %29

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = sitofp i32 %31 to float
  %33 = fcmp ogt float %27, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %10
  %35 = phi float [ %26, %10 ], [ %32, %29 ]
  store float %35, ptr %12, align 4, !tbaa !51
  br label %36

36:                                               ; preds = %34, %29
  %37 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !52
  %39 = sitofp i32 %38 to float
  %40 = extractelement <2 x float> %21, i64 1
  %41 = fcmp olt float %40, %39
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.NodeViewMove, ptr %7, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !53
  %45 = sitofp i32 %44 to float
  %46 = fcmp ogt float %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %36
  %48 = phi float [ %39, %36 ], [ %45, %42 ]
  store float %48, ptr %15, align 8, !tbaa !54
  br label %49

49:                                               ; preds = %47, %42
  tail call void @ED_region_tag_redraw(ptr noundef %5) #13
  tail call void @WM_main_add_notifier(i32 noundef 288555008, ptr noundef null) #13
  br label %52

50:                                               ; preds = %3, %3, %3
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !17
  tail call void %51(ptr noundef %7) #13
  store ptr null, ptr %6, align 8, !tbaa !40
  br label %52

52:                                               ; preds = %49, %3, %50
  %53 = phi i32 [ 4, %50 ], [ 1, %3 ], [ 1, %49 ]
  ret i32 %53
}

; Function Attrs: optsize
declare i32 @composite_node_active(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @snode_bg_viewmove_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  tail call void %3(ptr noundef %5) #13
  store ptr null, ptr %4, align 8, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_backimage_zoom(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @backimage_zoom_exec, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.12, float noundef 0x3FF3333340000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, float noundef 0.000000e+00, float noundef 1.000000e+01) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @backimage_zoom_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.12) #13
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 15
  %9 = load float, ptr %8, align 4, !tbaa !43
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !43
  tail call void @ED_region_tag_redraw(ptr noundef %4) #13
  tail call void @WM_main_add_notifier(i32 noundef 288555008, ptr noundef null) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_backimage_fit(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @backimage_fit_exec, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @backimage_fit_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %6 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #13
  %7 = call ptr @BKE_image_acquire_ibuf(ptr noundef %6, ptr noundef null, ptr noundef nonnull %3) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !17
  call void @BKE_image_release_ibuf(ptr noundef %6, ptr noundef null, ptr noundef %10) #13
  br label %37

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 12
  %13 = load i16, ptr %12, align 8, !tbaa !57
  %14 = sitofp i16 %13 to float
  %15 = fadd float %14, -3.200000e+01
  %16 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 15
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = fmul float %20, %18
  %22 = fdiv float %15, %21
  %23 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 13
  %24 = load i16, ptr %23, align 2, !tbaa !62
  %25 = sitofp i16 %24 to float
  %26 = fadd float %25, -3.200000e+01
  %27 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !63
  %29 = sitofp i32 %28 to float
  %30 = fmul float %20, %29
  %31 = fdiv float %26, %30
  %32 = load ptr, ptr %3, align 8, !tbaa !17
  call void @BKE_image_release_ibuf(ptr noundef %6, ptr noundef nonnull %7, ptr noundef %32) #13
  %33 = call fastcc float @min_ff(float noundef %22, float noundef %31) #12
  %34 = load float, ptr %19, align 4, !tbaa !43
  %35 = fmul float %33, %34
  store float %35, ptr %19, align 4, !tbaa !43
  %36 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 13
  store <2 x float> zeroinitializer, ptr %36, align 4, !tbaa !25
  call void @ED_region_tag_redraw(ptr noundef %5) #13
  call void @WM_main_add_notifier(i32 noundef 288555008, ptr noundef null) #13
  br label %37

37:                                               ; preds = %11, %9
  %38 = phi i32 [ 2, %9 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_space_node_color_sample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %8 = tail call ptr @IMB_colormanagement_display_get_named(ptr noundef nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.bNodeTreeType, ptr %10, i64 0, i32 1
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %11) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %118, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 9
  %16 = load i16, ptr %15, align 8, !tbaa !64
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %118, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #13
  %21 = call ptr @BKE_image_acquire_ibuf(ptr noundef %20, ptr noundef null, ptr noundef nonnull %6) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %118, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 2
  %25 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 15
  %26 = load float, ptr %25, align 4, !tbaa !43
  %27 = load <2 x i32>, ptr %24, align 8, !tbaa !42
  %28 = sitofp <2 x i32> %27 to <2 x float>
  %29 = extractelement <2 x float> %28, i64 0
  %30 = fmul float %26, %29
  %31 = extractelement <2 x float> %28, i64 1
  %32 = fmul float %26, %31
  %33 = fcmp ogt float %30, 0.000000e+00
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load i32, ptr %3, align 4, !tbaa !42
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %38 = load i16, ptr %37, align 8, !tbaa !65
  %39 = sitofp i16 %38 to float
  %40 = call float @llvm.fmuladd.f32(float %39, float -5.000000e-01, float %36)
  %41 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 13
  %42 = load float, ptr %41, align 4, !tbaa !51
  %43 = fsub float %40, %42
  %44 = fdiv float %43, %30
  %45 = fadd float %44, 5.000000e-01
  br label %46

46:                                               ; preds = %23, %34
  %47 = phi float [ %45, %34 ], [ 0.000000e+00, %23 ]
  %48 = fcmp ogt float %32, 0.000000e+00
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = getelementptr inbounds i32, ptr %3, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !42
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %54 = load i16, ptr %53, align 2, !tbaa !66
  %55 = sitofp i16 %54 to float
  %56 = call float @llvm.fmuladd.f32(float %55, float -5.000000e-01, float %52)
  %57 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 14
  %58 = load float, ptr %57, align 8, !tbaa !54
  %59 = fsub float %56, %58
  %60 = fdiv float %59, %32
  %61 = fadd float %60, 5.000000e-01
  br label %62

62:                                               ; preds = %46, %49
  %63 = phi float [ %61, %49 ], [ 0.000000e+00, %46 ]
  %64 = fcmp oge float %47, 0.000000e+00
  %65 = fcmp oge float %63, 0.000000e+00
  %66 = select i1 %64, i1 %65, i1 false
  %67 = fcmp olt float %47, 1.000000e+00
  %68 = and i1 %67, %66
  %69 = fcmp olt float %63, 1.000000e+00
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %115

71:                                               ; preds = %62
  %72 = insertelement <2 x float> poison, float %47, i64 0
  %73 = insertelement <2 x float> %72, float %63, i64 1
  %74 = fmul <2 x float> %73, %28
  %75 = extractelement <2 x i32> %27, i64 0
  %76 = add nsw i32 %75, -1
  %77 = fptosi <2 x float> %74 to <2 x i32>
  %78 = extractelement <2 x i32> %77, i64 0
  %79 = icmp sgt i32 %75, %78
  %80 = select i1 %79, i32 %78, i32 %76
  %81 = icmp slt <2 x i32> %77, zeroinitializer
  %82 = extractelement <2 x i1> %81, i64 0
  %83 = select i1 %82, i32 0, i32 %80
  %84 = extractelement <2 x i32> %77, i64 1
  %85 = extractelement <2 x i32> %27, i64 1
  %86 = icmp sgt i32 %85, %84
  %87 = add nsw i32 %85, -1
  %88 = select i1 %86, i32 %84, i32 %87
  %89 = extractelement <2 x i1> %81, i64 1
  %90 = select i1 %89, i32 0, i32 %88
  %91 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !67
  %93 = icmp eq ptr %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %71
  %95 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !68
  %97 = mul nsw i32 %90, %75
  %98 = add nsw i32 %97, %83
  %99 = mul nsw i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, ptr %92, i64 %100
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %101) #12
  br label %114

102:                                              ; preds = %71
  %103 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !69
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = mul nsw i32 %90, %75
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %104, i64 %108
  %110 = sext i32 %83 to i64
  %111 = getelementptr inbounds i32, ptr %109, i64 %110
  call void @rgb_uchar_to_float(ptr noundef %4, ptr noundef nonnull %111) #13
  %112 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 34
  %113 = load ptr, ptr %112, align 8, !tbaa !70
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %4, ptr noundef %113) #13
  br label %114

114:                                              ; preds = %106, %94
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %4, ptr noundef %8) #13
  br label %115

115:                                              ; preds = %102, %62, %114
  %116 = phi i8 [ 1, %114 ], [ 0, %62 ], [ 0, %102 ]
  %117 = load ptr, ptr %6, align 8, !tbaa !17
  call void @BKE_image_release_ibuf(ptr noundef %20, ptr noundef nonnull %21, ptr noundef %117) #13
  br label %118

118:                                              ; preds = %19, %5, %14, %115
  %119 = phi i8 [ %116, %115 ], [ 0, %14 ], [ 0, %5 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i8 %119
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_named(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !25
  store float %3, ptr %0, align 4, !tbaa !25
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !25
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !25
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !25
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_backimage_sample(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sample_invoke, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sample_modal, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sample_cancel, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %4) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !64
  %11 = and i16 %10, 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !17
  %15 = tail call ptr %14(i64 noundef 96, ptr noundef nonnull @.str.23) #13
  %16 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  store ptr %17, ptr %15, align 8, !tbaa !72
  %18 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %17, ptr noundef nonnull @sample_draw, ptr noundef nonnull %15, i32 noundef 1) #13
  %19 = getelementptr inbounds %struct.ImageSampleInfo, ptr %15, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %20, align 8, !tbaa !40
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %21 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %22

22:                                               ; preds = %3, %8, %13
  %23 = phi i32 [ 1, %13 ], [ 2, %8 ], [ 2, %3 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sample_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !45
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3
  tail call fastcc void @sample_exit(ptr noundef %0, ptr noundef %1) #12
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @sample_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #12
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 2, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sample_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @sample_exit(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #8 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare zeroext i8 @ED_node_is_compositor(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sample_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !79
  %18 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 5
  %19 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 6
  %20 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 7
  %21 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.ImageSampleInfo, ptr %2, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  tail call void @ED_image_draw_info(ptr noundef %4, ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext 0, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %22, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %9 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.18) #13
  %10 = call ptr @BKE_image_acquire_ibuf(ptr noundef %9, ptr noundef null, ptr noundef nonnull %4) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !75
  br label %188

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @IMB_rect_from_float(ptr noundef nonnull %10) #13
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 2
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 15
  %22 = load float, ptr %21, align 4, !tbaa !43
  %23 = load <2 x i32>, ptr %20, align 8, !tbaa !42
  %24 = sitofp <2 x i32> %23 to <2 x float>
  %25 = extractelement <2 x float> %24, i64 0
  %26 = fmul float %22, %25
  %27 = extractelement <2 x float> %24, i64 1
  %28 = fmul float %22, %27
  %29 = fcmp ogt float %26, 0.000000e+00
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !42
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %35 = load i16, ptr %34, align 8, !tbaa !65
  %36 = sitofp i16 %35 to float
  %37 = call float @llvm.fmuladd.f32(float %36, float -5.000000e-01, float %33)
  %38 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 13
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = fsub float %37, %39
  %41 = fdiv float %40, %26
  %42 = fadd float %41, 5.000000e-01
  br label %43

43:                                               ; preds = %19, %30
  %44 = phi float [ %42, %30 ], [ 0.000000e+00, %19 ]
  %45 = fcmp ogt float %28, 0.000000e+00
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !42
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %51 = load i16, ptr %50, align 2, !tbaa !66
  %52 = sitofp i16 %51 to float
  %53 = call float @llvm.fmuladd.f32(float %52, float -5.000000e-01, float %49)
  %54 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 14
  %55 = load float, ptr %54, align 8, !tbaa !54
  %56 = fsub float %53, %55
  %57 = fdiv float %56, %28
  %58 = fadd float %57, 5.000000e-01
  br label %59

59:                                               ; preds = %43, %46
  %60 = phi float [ %58, %46 ], [ 0.000000e+00, %43 ]
  %61 = fcmp oge float %44, 0.000000e+00
  %62 = fcmp oge float %60, 0.000000e+00
  %63 = select i1 %61, i1 %62, i1 false
  %64 = fcmp olt float %44, 1.000000e+00
  %65 = and i1 %64, %63
  %66 = fcmp olt float %60, 1.000000e+00
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %183

68:                                               ; preds = %59
  %69 = insertelement <2 x float> poison, float %44, i64 0
  %70 = insertelement <2 x float> %69, float %60, i64 1
  %71 = fmul <2 x float> %70, %24
  %72 = add nsw <2 x i32> %23, <i32 -1, i32 -1>
  %73 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 2
  %74 = fptosi <2 x float> %71 to <2 x i32>
  %75 = icmp slt <2 x i32> %74, zeroinitializer
  %76 = icmp sgt <2 x i32> %23, %74
  %77 = select <2 x i1> %76, <2 x i32> %74, <2 x i32> %72
  %78 = select <2 x i1> %75, <2 x i32> zeroinitializer, <2 x i32> %77
  store <2 x i32> %78, ptr %73, align 8, !tbaa !42
  %79 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 12
  store i32 1, ptr %79, align 8, !tbaa !75
  %80 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !68
  %82 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 4
  store i32 %81, ptr %82, align 8, !tbaa !77
  %83 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 10
  %84 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, i8 0, i64 16, i1 false)
  %85 = load ptr, ptr %15, align 8, !tbaa !69
  %86 = icmp eq ptr %85, null
  br i1 %86, label %127, label %87

87:                                               ; preds = %68
  %88 = extractelement <2 x i32> %78, i64 1
  %89 = extractelement <2 x i32> %23, i64 0
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %85, i64 %91
  %93 = extractelement <2 x i32> %78, i64 0
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %92, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !82
  %97 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5
  store i8 %96, ptr %97, align 4, !tbaa !82
  %98 = getelementptr inbounds i8, ptr %95, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !82
  %100 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5, i64 1
  store i8 %99, ptr %100, align 1, !tbaa !82
  %101 = getelementptr inbounds i8, ptr %95, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !82
  %103 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5, i64 2
  store i8 %102, ptr %103, align 2, !tbaa !82
  %104 = getelementptr inbounds i8, ptr %95, i64 3
  %105 = load i8, ptr %104, align 1, !tbaa !82
  %106 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 5, i64 3
  store i8 %105, ptr %106, align 1, !tbaa !82
  %107 = load i8, ptr %95, align 1, !tbaa !82
  %108 = uitofp i8 %107 to float
  %109 = fdiv float %108, 2.550000e+02
  %110 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6
  store float %109, ptr %110, align 8, !tbaa !25
  %111 = load i8, ptr %98, align 1, !tbaa !82
  %112 = uitofp i8 %111 to float
  %113 = fdiv float %112, 2.550000e+02
  %114 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 1
  store float %113, ptr %114, align 4, !tbaa !25
  %115 = load i8, ptr %101, align 1, !tbaa !82
  %116 = uitofp i8 %115 to float
  %117 = fdiv float %116, 2.550000e+02
  %118 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 2
  store float %117, ptr %118, align 8, !tbaa !25
  %119 = load i8, ptr %104, align 1, !tbaa !82
  %120 = uitofp i8 %119 to float
  %121 = fdiv float %120, 2.550000e+02
  %122 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 3
  store float %121, ptr %122, align 4, !tbaa !25
  %123 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 7
  call fastcc void @copy_v4_v4(ptr noundef nonnull %123, ptr noundef nonnull %110) #12
  %124 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 34
  %125 = load ptr, ptr %124, align 8, !tbaa !70
  call void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef nonnull %123, i8 noundef zeroext 0, ptr noundef %125) #13
  %126 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 13
  store i32 1, ptr %126, align 4, !tbaa !76
  br label %127

127:                                              ; preds = %87, %68
  %128 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !67
  %130 = icmp eq ptr %129, null
  br i1 %130, label %153, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %80, align 4, !tbaa !68
  %133 = load i32, ptr %20, align 8, !tbaa !59
  %134 = extractelement <2 x i32> %78, i64 1
  %135 = mul nsw i32 %133, %134
  %136 = extractelement <2 x i32> %78, i64 0
  %137 = add nsw i32 %135, %136
  %138 = mul nsw i32 %137, %132
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, ptr %129, i64 %139
  %141 = load float, ptr %140, align 4, !tbaa !25
  %142 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6
  store float %141, ptr %142, align 8, !tbaa !25
  %143 = getelementptr inbounds float, ptr %140, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !25
  %145 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 1
  store float %144, ptr %145, align 4, !tbaa !25
  %146 = getelementptr inbounds float, ptr %140, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !25
  %148 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 2
  store float %147, ptr %148, align 8, !tbaa !25
  %149 = getelementptr inbounds float, ptr %140, i64 3
  %150 = load float, ptr %149, align 4, !tbaa !25
  %151 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6, i64 3
  store float %150, ptr %151, align 4, !tbaa !25
  %152 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 13
  store i32 1, ptr %152, align 4, !tbaa !76
  br label %153

153:                                              ; preds = %131, %127
  %154 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 16
  %155 = load ptr, ptr %154, align 8, !tbaa !83
  %156 = icmp eq ptr %155, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %20, align 8, !tbaa !59
  %159 = extractelement <2 x i32> %78, i64 1
  %160 = mul nsw i32 %158, %159
  %161 = extractelement <2 x i32> %78, i64 0
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %155, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !42
  %166 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 8
  store i32 %165, ptr %166, align 8, !tbaa !84
  store ptr %166, ptr %83, align 8, !tbaa !80
  br label %167

167:                                              ; preds = %157, %153
  %168 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 17
  %169 = load ptr, ptr %168, align 8, !tbaa !85
  %170 = icmp eq ptr %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %20, align 8, !tbaa !59
  %173 = extractelement <2 x i32> %78, i64 1
  %174 = mul nsw i32 %172, %173
  %175 = extractelement <2 x i32> %78, i64 0
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, ptr %169, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !25
  %180 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 9
  store float %179, ptr %180, align 4, !tbaa !86
  store ptr %180, ptr %84, align 8, !tbaa !81
  br label %181

181:                                              ; preds = %171, %167
  %182 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 6
  call void @ED_node_sample_set(ptr noundef nonnull %182) #13
  br label %185

183:                                              ; preds = %59
  %184 = getelementptr inbounds %struct.ImageSampleInfo, ptr %8, i64 0, i32 12
  store i32 0, ptr %184, align 8, !tbaa !75
  call void @ED_node_sample_set(ptr noundef null) #13
  br label %185

185:                                              ; preds = %183, %181
  %186 = load ptr, ptr %4, align 8, !tbaa !17
  call void @BKE_image_release_ibuf(ptr noundef %9, ptr noundef nonnull %10, ptr noundef %186) #13
  %187 = call ptr @CTX_wm_area(ptr noundef %0) #13
  call void @ED_area_tag_redraw(ptr noundef %187) #13
  br label %188

188:                                              ; preds = %185, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_image_draw_info(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !25
  store float %3, ptr %0, align 4, !tbaa !25
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !25
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !25
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !25
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !25
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !25
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_sample_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  tail call void @ED_node_sample_set(ptr noundef null) #13
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.ImageSampleInfo, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  tail call void @ED_region_draw_cb_exit(ptr noundef %5, ptr noundef %7) #13
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_redraw(ptr noundef %8) #13
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !17
  tail call void %9(ptr noundef nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 288}
!6 = !{!"SpaceNode", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40, !13, i64 56, !7, i64 216, !7, i64 224, !16, i64 232, !16, i64 234, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !8, i64 256, !10, i64 264, !7, i64 280, !7, i64 288, !8, i64 296, !11, i64 360, !11, i64 364, !16, i64 368, !16, i64 370, !16, i64 372, !16, i64 374, !10, i64 376, !7, i64 392}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"View2D", !14, i64 0, !14, i64 16, !15, i64 32, !15, i64 48, !15, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!14 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!15 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!16 = !{!"short", !8, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !11, i64 168}
!19 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !11, i64 168, !16, i64 172, !16, i64 174, !16, i64 176, !16, i64 178, !16, i64 180, !16, i64 182, !16, i64 184, !16, i64 186, !8, i64 188, !10, i64 200, !10, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !10, i64 264, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !11, i64 308, !8, i64 312, !16, i64 376, !16, i64 378, !12, i64 380, !12, i64 384, !16, i64 388, !16, i64 390, !7, i64 392, !14, i64 400, !14, i64 416, !14, i64 432, !16, i64 448, !16, i64 450, !11, i64 452, !7, i64 456}
!20 = !{!19, !16, i64 172}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!14, !12, i64 8}
!24 = !{!14, !12, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!14, !12, i64 4}
!27 = !{!14, !12, i64 12}
!28 = !{!29, !7, i64 0}
!29 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !30, i64 152, !16, i64 184}
!30 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!31 = !{!29, !7, i64 8}
!32 = !{!29, !7, i64 24}
!33 = !{!29, !7, i64 32}
!34 = !{!29, !7, i64 72}
!35 = !{!29, !16, i64 184}
!36 = !{i32 0, i32 2}
!37 = !{!29, !7, i64 48}
!38 = !{!29, !7, i64 64}
!39 = !{!29, !7, i64 56}
!40 = !{!41, !7, i64 96}
!41 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !16, i64 160, !8, i64 162}
!42 = !{!11, !11, i64 0}
!43 = !{!6, !12, i64 252}
!44 = !{!16, !16, i64 0}
!45 = !{!46, !16, i64 16}
!46 = !{!"wmEvent", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 18, !11, i64 20, !11, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !16, i64 44, !16, i64 46, !11, i64 48, !11, i64 52, !47, i64 56, !11, i64 64, !11, i64 68, !16, i64 72, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !7, i64 88, !7, i64 96, !16, i64 104, !16, i64 106, !11, i64 108, !7, i64 112}
!47 = !{!"double", !8, i64 0}
!48 = !{!49, !11, i64 8}
!49 = !{!"NodeViewMove", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!50 = !{!49, !11, i64 16}
!51 = !{!6, !12, i64 244}
!52 = !{!49, !11, i64 12}
!53 = !{!49, !11, i64 20}
!54 = !{!6, !12, i64 248}
!55 = !{!29, !7, i64 88}
!56 = !{!41, !7, i64 112}
!57 = !{!58, !16, i64 224}
!58 = !{!"ARegion", !7, i64 0, !7, i64 8, !13, i64 16, !15, i64 176, !15, i64 192, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !12, i64 220, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!59 = !{!60, !11, i64 16}
!60 = !{!"ImBuf", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !12, i64 112, !8, i64 120, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !7, i64 296, !7, i64 304, !11, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !11, i64 2376, !7, i64 2384, !11, i64 2392, !11, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !11, i64 2432, !15, i64 2436, !61, i64 2456}
!61 = !{!"DDSData", !11, i64 0, !11, i64 4, !7, i64 8, !11, i64 16}
!62 = !{!58, !16, i64 226}
!63 = !{!60, !11, i64 20}
!64 = !{!6, !16, i64 232}
!65 = !{!58, !16, i64 208}
!66 = !{!58, !16, i64 210}
!67 = !{!60, !7, i64 48}
!68 = !{!60, !11, i64 28}
!69 = !{!60, !7, i64 40}
!70 = !{!60, !7, i64 2400}
!71 = !{!58, !7, i64 240}
!72 = !{!73, !7, i64 0}
!73 = !{!"ImageSampleInfo", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !8, i64 28, !8, i64 32, !8, i64 48, !11, i64 64, !12, i64 68, !7, i64 72, !7, i64 80, !11, i64 88, !11, i64 92}
!74 = !{!73, !7, i64 8}
!75 = !{!73, !11, i64 88}
!76 = !{!73, !11, i64 92}
!77 = !{!73, !11, i64 24}
!78 = !{!73, !11, i64 16}
!79 = !{!73, !11, i64 20}
!80 = !{!73, !7, i64 72}
!81 = !{!73, !7, i64 80}
!82 = !{!8, !8, i64 0}
!83 = !{!60, !7, i64 96}
!84 = !{!73, !11, i64 64}
!85 = !{!60, !7, i64 104}
!86 = !{!73, !12, i64 68}
