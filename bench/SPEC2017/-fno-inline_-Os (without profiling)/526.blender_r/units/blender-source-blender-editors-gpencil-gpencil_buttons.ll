; ModuleID = 'blender/source/blender/editors/gpencil/gpencil_buttons.c'
source_filename = "blender/source/blender/editors/gpencil/gpencil_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }

@RNA_Space = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [19 x i8] c"show_grease_pencil\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RNA_SpaceClipEditor = external global %struct.StructRNA, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"grease_pencil_source\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"grease_pencil\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GPENCIL_OT_data_add\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"GPENCIL_OT_data_unlink\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"New Layer\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"GPENCIL_OT_layer_add\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Delete Frame\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"GPENCIL_OT_active_frame_delete\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Convert\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"GPENCIL_OT_convert\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Drawing Settings:\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"draw_mode\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"STROKE\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"use_stroke_endpoints\00", align 1
@RNA_GPencilLayer = external global %struct.StructRNA, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"Set active layer\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"%s (Hidden)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%s (Locked)\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Delete layer\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"lock_frame\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Move layer up\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Move layer down\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"line_width\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.32 = private unnamed_addr constant [12 x i8] c"show_points\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"use_onion_skinning\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"ghost_range_max\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"show_x_ray\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_panel_standard_header(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #3
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #4
  %5 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #4
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_Space, ptr noundef %5, ptr noundef nonnull %3) #4
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_gpencil_panel_standard(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #3
  %4 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  tail call fastcc void @draw_gpencil_space_specials(ptr noundef %0, ptr noundef %5) #5
  %6 = call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef nonnull %3) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !5
  %10 = load ptr, ptr %6, align 8, !tbaa !12
  call fastcc void @draw_gpencil_panel(ptr noundef %0, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %3) #5
  br label %11

11:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_gpencil_space_specials(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #4
  %5 = tail call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef 0) #4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_wm_screen(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #3
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_SpaceClipEditor, ptr noundef nonnull %4, ptr noundef nonnull %3) #4
  %9 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #3
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @ED_gpencil_data_get_pointers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_gpencil_panel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #4
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  call void @RNA_id_pointer_create(ptr noundef %2, ptr noundef nonnull %5) #4
  %10 = call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef 0) #4
  call void @uiTemplateID(ptr noundef %10, ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef nonnull @.str.5) #4
  call void @uiItemO(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7) #4
  %11 = call ptr @uiLayoutRow(ptr noundef %10, i32 noundef 1) #4
  call void @uiItemO(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.9) #4
  call void @uiItemO(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.11) #4
  %12 = icmp eq ptr %2, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bGPdata, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef 1) #4
  call fastcc void @gp_drawui_layer(ptr noundef %19, ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef zeroext %9) #5
  %20 = load ptr, ptr %18, align 8, !tbaa !12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !13

22:                                               ; preds = %17, %13
  %23 = call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef 1) #4
  call void @uiItemL(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef 0) #4
  br i1 %8, label %24, label %31

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.bGPdata, ptr %2, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !15
  %27 = and i32 %26, 96
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i8
  %30 = select i1 %28, i8 2, i8 1
  br label %31

31:                                               ; preds = %24, %22
  %32 = phi i8 [ 0, %22 ], [ %29, %24 ]
  %33 = phi i8 [ 0, %22 ], [ %30, %24 ]
  %34 = call ptr @uiLayoutRow(ptr noundef %23, i32 noundef 1) #4
  call void @uiItemEnumR_string(ptr noundef %34, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0) #4
  call void @uiItemEnumR_string(ptr noundef %34, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0) #4
  %35 = icmp eq ptr %6, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call ptr @uiLayoutRow(ptr noundef %23, i32 noundef 1) #4
  call void @uiLayoutSetActive(ptr noundef %37, i8 noundef zeroext %33) #4
  call void @uiItemEnumR_string(ptr noundef %37, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0) #4
  call void @uiItemEnumR_string(ptr noundef %37, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0) #4
  %38 = call ptr @uiLayoutRow(ptr noundef %23, i32 noundef 0) #4
  call void @uiLayoutSetActive(ptr noundef %38, i8 noundef zeroext %32) #4
  call void @uiItemR(ptr noundef %38, ptr noundef nonnull %5, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  br label %39

39:                                               ; preds = %31, %36, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gp_drawui_layer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef %2, ptr noundef nonnull %5) #4
  %7 = call ptr @uiLayoutGetBlock(ptr noundef %0) #4
  call void @uiBlockSetFunc(ptr noundef %7, ptr noundef nonnull @gp_ui_activelayer_cb, ptr noundef %1, ptr noundef %2) #4
  %8 = call ptr @uiLayoutBox(ptr noundef %0) #4
  %9 = call ptr @uiLayoutRow(ptr noundef %8, i32 noundef 0) #4
  call void @uiLayoutSetAlignment(ptr noundef %9, i8 noundef zeroext 0) #4
  %10 = call ptr @uiLayoutGetBlock(ptr noundef %9) #4
  call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 1) #4
  %11 = call ptr @uiLayoutRow(ptr noundef %9, i32 noundef 0) #4
  %12 = call ptr @uiLayoutGetBlock(ptr noundef %11) #4
  %13 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !19
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 12, i32 13
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !21
  %19 = call ptr @uiDefIconButBitI(ptr noundef %12, i32 noundef 1536, i32 noundef 4, i32 noundef 0, i32 noundef %17, i32 noundef 0, i32 noundef 0, i16 noundef signext %18, i16 noundef signext %18, ptr noundef nonnull %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.19) #4
  call void @uiButSetFunc(ptr noundef %19, ptr noundef nonnull @gp_ui_activelayer_cb, ptr noundef %1, ptr noundef %2) #4
  %20 = load i32, ptr %13, align 8, !tbaa !19
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 40, i32 41
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %23) #4
  %24 = load i32, ptr %13, align 8, !tbaa !19
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #3
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 254) #4
  %30 = load i32, ptr %13, align 8, !tbaa !19
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %30, %29 ], [ %24, %27 ]
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 8
  %36 = select i1 %34, ptr @.str.23, ptr @.str.22
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull %36, ptr noundef nonnull %35) #4
  call void @uiItemL(ptr noundef %11, ptr noundef nonnull %6, i32 noundef 0) #4
  %38 = load i32, ptr %13, align 8, !tbaa !19
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = call ptr @uiLayoutRow(ptr noundef %9, i32 noundef 1) #4
  call void @uiLayoutSetAlignment(ptr noundef %42, i8 noundef zeroext 3) #4
  %43 = call ptr @uiLayoutGetBlock(ptr noundef %42) #4
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !21
  %45 = call ptr @uiDefIconBut(ptr noundef %43, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %44, i16 noundef signext %44, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.24) #4
  call void @uiButSetFunc(ptr noundef %45, ptr noundef nonnull @gp_ui_dellayer_cb, ptr noundef %1, ptr noundef nonnull %2) #4
  br label %46

46:                                               ; preds = %41, %31
  %47 = phi ptr [ %43, %41 ], [ %12, %31 ]
  call void @uiBlockSetEmboss(ptr noundef %47, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #3
  br label %83

48:                                               ; preds = %4
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 253) #4
  %49 = load i32, ptr %13, align 8, !tbaa !19
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 191, i32 192
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %52) #4
  call void @uiBlockSetEmboss(ptr noundef %12, i8 noundef zeroext 0) #4
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #4
  call void @uiBlockBeginAlign(ptr noundef %12) #4
  %53 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !26
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !21
  %58 = call ptr @uiDefIconBut(ptr noundef %12, i32 noundef 512, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0, i16 noundef signext %57, i16 noundef signext %57, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.27) #4
  call void @uiButSetFunc(ptr noundef %58, ptr noundef nonnull @gp_ui_layer_up_cb, ptr noundef %1, ptr noundef nonnull %2) #4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load ptr, ptr %2, align 8, !tbaa !27
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !21
  %64 = call ptr @uiDefIconBut(ptr noundef %12, i32 noundef 512, i32 noundef 0, i32 noundef 5, i32 noundef 0, i32 noundef 0, i16 noundef signext %63, i16 noundef signext %63, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.28) #4
  call void @uiButSetFunc(ptr noundef %64, ptr noundef nonnull @gp_ui_layer_down_cb, ptr noundef %1, ptr noundef nonnull %2) #4
  br label %65

65:                                               ; preds = %62, %59
  call void @uiBlockEndAlign(ptr noundef %12) #4
  call void @uiBlockSetEmboss(ptr noundef %12, i8 noundef zeroext 1) #4
  %66 = call ptr @uiLayoutRow(ptr noundef %9, i32 noundef 1) #4
  call void @uiLayoutSetAlignment(ptr noundef %66, i8 noundef zeroext 3) #4
  %67 = call ptr @uiLayoutGetBlock(ptr noundef %66) #4
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !21
  %69 = call ptr @uiDefIconBut(ptr noundef %67, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %68, i16 noundef signext %68, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.24) #4
  call void @uiButSetFunc(ptr noundef %69, ptr noundef nonnull @gp_ui_dellayer_cb, ptr noundef %1, ptr noundef nonnull %2) #4
  call void @uiBlockSetEmboss(ptr noundef %67, i8 noundef zeroext 0) #4
  %70 = call ptr @uiLayoutBox(ptr noundef %0) #4
  %71 = call ptr @uiLayoutSplit(ptr noundef %70, float noundef 5.000000e-01, i32 noundef 0) #4
  %72 = call ptr @uiLayoutColumn(ptr noundef %71, i32 noundef 0) #4
  %73 = call ptr @uiLayoutColumn(ptr noundef %72, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %73, ptr noundef nonnull %5, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #4
  call void @uiItemR(ptr noundef %73, ptr noundef nonnull %5, ptr noundef nonnull @.str.30, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  call void @uiItemR(ptr noundef %72, ptr noundef nonnull %5, ptr noundef nonnull @.str.31, i32 noundef 4, ptr noundef null, i32 noundef 0) #4
  %74 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !28
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  call void @uiItemR(ptr noundef %72, ptr noundef nonnull %5, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  br label %78

78:                                               ; preds = %77, %65
  %79 = call ptr @uiLayoutColumn(ptr noundef %71, i32 noundef 0) #4
  %80 = call ptr @uiLayoutColumn(ptr noundef %79, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %80, ptr noundef nonnull %5, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  call void @uiItemR(ptr noundef %80, ptr noundef nonnull %5, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.35, i32 noundef 0) #4
  %81 = icmp eq i8 %3, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @uiItemR(ptr noundef %79, ptr noundef nonnull %5, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  br label %83

83:                                               ; preds = %78, %82, %46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret void
}

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemEnumR_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gp_ui_activelayer_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @gpencil_layer_setactive(ptr noundef %1, ptr noundef %2) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #4
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gp_ui_dellayer_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @gpencil_layer_delete(ptr noundef %1, ptr noundef %2) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #4
  ret void
}

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gp_ui_layer_up_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bGPdata, ptr %1, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #4
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %2) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gp_ui_layer_down_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bGPdata, ptr %1, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #4
  %5 = load ptr, ptr %2, align 8, !tbaa !27
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %2) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #4
  ret void
}

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gpencil_layer_setactive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gpencil_layer_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
!6 = !{!"Panel", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 96, !8, i64 160, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !11, i64 240, !11, i64 242, !11, i64 244, !11, i64 246, !11, i64 248, !11, i64 250, !10, i64 252, !7, i64 256, !7, i64 264}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !10, i64 136}
!16 = !{!"bGPdata", !17, i64 0, !18, i64 120, !10, i64 136, !11, i64 140, !11, i64 142, !7, i64 144}
!17 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!18 = !{!"ListBase", !7, i64 0, !7, i64 8}
!19 = !{!20, !10, i64 40}
!20 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !18, i64 16, !7, i64 32, !10, i64 40, !11, i64 44, !11, i64 46, !8, i64 48, !8, i64 64}
!21 = !{!22, !11, i64 8948}
!22 = !{!"UserDef", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !10, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !10, i64 8484, !10, i64 8488, !10, i64 8492, !11, i64 8496, !11, i64 8498, !10, i64 8500, !10, i64 8504, !10, i64 8508, !10, i64 8512, !10, i64 8516, !10, i64 8520, !10, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !18, i64 8536, !18, i64 8552, !18, i64 8568, !18, i64 8584, !18, i64 8600, !18, i64 8616, !18, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !10, i64 8912, !10, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !23, i64 8956, !23, i64 8960, !10, i64 8964, !11, i64 8968, !11, i64 8970, !23, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !24, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !10, i64 10896, !10, i64 10900, !23, i64 10904, !23, i64 10908, !10, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !25, i64 10928}
!23 = !{!"float", !8, i64 0}
!24 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!25 = !{!"WalkNavigation", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !11, i64 24, !8, i64 26}
!26 = !{!20, !7, i64 8}
!27 = !{!20, !7, i64 0}
!28 = !{!29, !10, i64 2100}
!29 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !18, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !8, i64 2090, !11, i64 2092, !10, i64 2096, !10, i64 2100, !8, i64 2104, !10, i64 2108, !10, i64 2112, !8, i64 2116}
