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

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_panel_standard_header(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #3
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #3
  %5 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #3
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_Space, ptr noundef %5, ptr noundef nonnull %3) #3
  %6 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_gpencil_panel_standard(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #3
  %8 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #3
  %11 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #3
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @CTX_wm_screen(ptr noundef %0) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #3
  call void @RNA_pointer_create(ptr noundef %14, ptr noundef nonnull @RNA_SpaceClipEditor, ptr noundef nonnull %10, ptr noundef nonnull %6) #3
  %15 = call ptr @uiLayoutRow(ptr noundef %11, i32 noundef 1) #3
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #3
  br label %16

16:                                               ; preds = %2, %13
  %17 = call ptr @ED_gpencil_data_get_pointers(ptr noundef %0, ptr noundef nonnull %7) #3
  %18 = icmp eq ptr %17, null
  br i1 %18, label %132, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 8, !tbaa !34
  %21 = load ptr, ptr %17, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  %22 = call ptr @CTX_wm_space_clip(ptr noundef %0) #3
  %23 = call ptr @CTX_wm_view3d(ptr noundef %0) #3
  %24 = icmp eq ptr %23, null
  call void @RNA_id_pointer_create(ptr noundef %21, ptr noundef nonnull %5) #3
  %25 = call ptr @uiLayoutColumn(ptr noundef %20, i32 noundef 0) #3
  call void @uiTemplateID(ptr noundef %25, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef nonnull @.str.5) #3
  call void @uiItemO(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7) #3
  %26 = call ptr @uiLayoutRow(ptr noundef %25, i32 noundef 1) #3
  call void @uiItemO(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.9) #3
  call void @uiItemO(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.11) #3
  %27 = icmp eq ptr %21, null
  br i1 %27, label %131, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.bGPdata, ptr %21, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = icmp eq ptr %30, null
  br i1 %31, label %114, label %32

32:                                               ; preds = %28, %111
  %33 = phi ptr [ %112, %111 ], [ %30, %28 ]
  %34 = call ptr @uiLayoutColumn(ptr noundef %20, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #3
  call void @RNA_pointer_create(ptr noundef nonnull %21, ptr noundef nonnull @RNA_GPencilLayer, ptr noundef nonnull %33, ptr noundef nonnull %3) #3
  %35 = call ptr @uiLayoutGetBlock(ptr noundef %34) #3
  call void @uiBlockSetFunc(ptr noundef %35, ptr noundef nonnull @gp_ui_activelayer_cb, ptr noundef nonnull %21, ptr noundef nonnull %33) #3
  %36 = call ptr @uiLayoutBox(ptr noundef %34) #3
  %37 = call ptr @uiLayoutRow(ptr noundef %36, i32 noundef 0) #3
  call void @uiLayoutSetAlignment(ptr noundef %37, i8 noundef zeroext 0) #3
  %38 = call ptr @uiLayoutGetBlock(ptr noundef %37) #3
  call void @uiBlockSetEmboss(ptr noundef %38, i8 noundef zeroext 1) #3
  %39 = call ptr @uiLayoutRow(ptr noundef %37, i32 noundef 0) #3
  %40 = call ptr @uiLayoutGetBlock(ptr noundef %39) #3
  %41 = getelementptr inbounds %struct.bGPDlayer, ptr %33, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !42
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 12, i32 13
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %47 = call ptr @uiDefIconButBitI(ptr noundef %40, i32 noundef 1536, i32 noundef 4, i32 noundef 0, i32 noundef %45, i32 noundef 0, i32 noundef 0, i16 noundef signext %46, i16 noundef signext %46, ptr noundef nonnull %41, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.19) #3
  call void @uiButSetFunc(ptr noundef %47, ptr noundef nonnull @gp_ui_activelayer_cb, ptr noundef nonnull %21, ptr noundef nonnull %33) #3
  %48 = load i32, ptr %41, align 8, !tbaa !42
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 40, i32 41
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %3, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %51) #3
  %52 = load i32, ptr %41, align 8, !tbaa !42
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #3
  %56 = load i32, ptr %41, align 8, !tbaa !42
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 254) #3
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, ptr %41, align 8, !tbaa !42
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.bGPDlayer, ptr %33, i64 0, i32 8
  %65 = select i1 %63, ptr @.str.23, ptr @.str.22
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %65, ptr noundef nonnull %64) #3
  call void @uiItemL(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 0) #3
  %67 = load i32, ptr %41, align 8, !tbaa !42
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = call ptr @uiLayoutRow(ptr noundef %37, i32 noundef 1) #3
  call void @uiLayoutSetAlignment(ptr noundef %71, i8 noundef zeroext 3) #3
  %72 = call ptr @uiLayoutGetBlock(ptr noundef %71) #3
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %74 = call ptr @uiDefIconBut(ptr noundef %72, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %73, i16 noundef signext %73, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.24) #3
  call void @uiButSetFunc(ptr noundef %74, ptr noundef nonnull @gp_ui_dellayer_cb, ptr noundef nonnull %21, ptr noundef nonnull %33) #3
  br label %75

75:                                               ; preds = %70, %60
  %76 = phi ptr [ %72, %70 ], [ %40, %60 ]
  call void @uiBlockSetEmboss(ptr noundef %76, i8 noundef zeroext 0) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #3
  br label %111

77:                                               ; preds = %32
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 253) #3
  %78 = load i32, ptr %41, align 8, !tbaa !42
  %79 = and i32 %78, 64
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 191, i32 192
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %3, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %81) #3
  call void @uiBlockSetEmboss(ptr noundef %40, i8 noundef zeroext 0) #3
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %3, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #3
  call void @uiBlockBeginAlign(ptr noundef %40) #3
  %82 = getelementptr inbounds %struct.bGPDlayer, ptr %33, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %87 = call ptr @uiDefIconBut(ptr noundef %40, i32 noundef 512, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0, i16 noundef signext %86, i16 noundef signext %86, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.27) #3
  call void @uiButSetFunc(ptr noundef %87, ptr noundef nonnull @gp_ui_layer_up_cb, ptr noundef nonnull %21, ptr noundef nonnull %33) #3
  br label %88

88:                                               ; preds = %85, %77
  %89 = load ptr, ptr %33, align 8, !tbaa !51
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %93 = call ptr @uiDefIconBut(ptr noundef %40, i32 noundef 512, i32 noundef 0, i32 noundef 5, i32 noundef 0, i32 noundef 0, i16 noundef signext %92, i16 noundef signext %92, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.28) #3
  call void @uiButSetFunc(ptr noundef %93, ptr noundef nonnull @gp_ui_layer_down_cb, ptr noundef nonnull %21, ptr noundef nonnull %33) #3
  br label %94

94:                                               ; preds = %91, %88
  call void @uiBlockEndAlign(ptr noundef %40) #3
  call void @uiBlockSetEmboss(ptr noundef %40, i8 noundef zeroext 1) #3
  %95 = call ptr @uiLayoutRow(ptr noundef %37, i32 noundef 1) #3
  call void @uiLayoutSetAlignment(ptr noundef %95, i8 noundef zeroext 3) #3
  %96 = call ptr @uiLayoutGetBlock(ptr noundef %95) #3
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !45
  %98 = call ptr @uiDefIconBut(ptr noundef %96, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %97, i16 noundef signext %97, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.24) #3
  call void @uiButSetFunc(ptr noundef %98, ptr noundef nonnull @gp_ui_dellayer_cb, ptr noundef nonnull %21, ptr noundef nonnull %33) #3
  call void @uiBlockSetEmboss(ptr noundef %96, i8 noundef zeroext 0) #3
  %99 = call ptr @uiLayoutBox(ptr noundef %34) #3
  %100 = call ptr @uiLayoutSplit(ptr noundef %99, float noundef 5.000000e-01, i32 noundef 0) #3
  %101 = call ptr @uiLayoutColumn(ptr noundef %100, i32 noundef 0) #3
  %102 = call ptr @uiLayoutColumn(ptr noundef %101, i32 noundef 1) #3
  call void @uiItemR(ptr noundef %102, ptr noundef nonnull %3, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #3
  call void @uiItemR(ptr noundef %102, ptr noundef nonnull %3, ptr noundef nonnull @.str.30, i32 noundef 4, ptr noundef null, i32 noundef 0) #3
  call void @uiItemR(ptr noundef %101, ptr noundef nonnull %3, ptr noundef nonnull @.str.31, i32 noundef 4, ptr noundef null, i32 noundef 0) #3
  %103 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !52
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %94
  call void @uiItemR(ptr noundef %101, ptr noundef nonnull %3, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef null, i32 noundef 0) #3
  br label %107

107:                                              ; preds = %106, %94
  %108 = call ptr @uiLayoutColumn(ptr noundef %100, i32 noundef 0) #3
  %109 = call ptr @uiLayoutColumn(ptr noundef %108, i32 noundef 1) #3
  call void @uiItemR(ptr noundef %109, ptr noundef nonnull %3, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef null, i32 noundef 0) #3
  call void @uiItemR(ptr noundef %109, ptr noundef nonnull %3, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.35, i32 noundef 0) #3
  br i1 %24, label %111, label %110

110:                                              ; preds = %107
  call void @uiItemR(ptr noundef %108, ptr noundef nonnull %3, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #3
  br label %111

111:                                              ; preds = %110, %107, %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #3
  %112 = load ptr, ptr %33, align 8, !tbaa !41
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %32, !llvm.loop !54

114:                                              ; preds = %111, %28
  %115 = call ptr @uiLayoutColumn(ptr noundef %20, i32 noundef 1) #3
  call void @uiItemL(ptr noundef %115, ptr noundef nonnull @.str.12, i32 noundef 0) #3
  br i1 %24, label %123, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.bGPdata, ptr %21, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !57
  %119 = and i32 %118, 96
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i8
  %122 = select i1 %120, i8 2, i8 1
  br label %123

123:                                              ; preds = %116, %114
  %124 = phi i8 [ 0, %114 ], [ %121, %116 ]
  %125 = phi i8 [ 0, %114 ], [ %122, %116 ]
  %126 = call ptr @uiLayoutRow(ptr noundef %115, i32 noundef 1) #3
  call void @uiItemEnumR_string(ptr noundef %126, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0) #3
  call void @uiItemEnumR_string(ptr noundef %126, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0) #3
  %127 = icmp eq ptr %22, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = call ptr @uiLayoutRow(ptr noundef %115, i32 noundef 1) #3
  call void @uiLayoutSetActive(ptr noundef %129, i8 noundef zeroext %125) #3
  call void @uiItemEnumR_string(ptr noundef %129, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0) #3
  call void @uiItemEnumR_string(ptr noundef %129, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0) #3
  %130 = call ptr @uiLayoutRow(ptr noundef %115, i32 noundef 0) #3
  call void @uiLayoutSetActive(ptr noundef %130, i8 noundef zeroext %124) #3
  call void @uiItemR(ptr noundef %130, ptr noundef nonnull %5, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null, i32 noundef 0) #3
  br label %131

131:                                              ; preds = %19, %123, %128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  br label %132

132:                                              ; preds = %131, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #3
  ret void
}

declare ptr @ED_gpencil_data_get_pointers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemEnumR_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gp_ui_activelayer_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @gpencil_layer_setactive(ptr noundef %1, ptr noundef %2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #3
  ret void
}

declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gp_ui_dellayer_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @gpencil_layer_delete(ptr noundef %1, ptr noundef %2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #3
  ret void
}

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gp_ui_layer_up_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bGPdata, ptr %1, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #3
  %5 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gp_ui_layer_down_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bGPdata, ptr %1, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #3
  %5 = load ptr, ptr %2, align 8, !tbaa !51
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %2) #3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 375062529, ptr noundef null) #3
  ret void
}

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @gpencil_layer_setactive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gpencil_layer_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 24}
!35 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !36, i64 256, !36, i64 264}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!43, !39, i64 40}
!43 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !44, i64 16, !36, i64 32, !39, i64 40, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 64}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!46, !40, i64 8948}
!46 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !40, i64 8496, !40, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !39, i64 8912, !39, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !47, i64 8956, !47, i64 8960, !39, i64 8964, !40, i64 8968, !40, i64 8970, !47, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !48, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !47, i64 10904, !47, i64 10908, !39, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !49, i64 10928}
!47 = !{!"float", !37, i64 0}
!48 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!49 = !{!"WalkNavigation", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !40, i64 24, !37, i64 26}
!50 = !{!43, !36, i64 8}
!51 = !{!43, !36, i64 0}
!52 = !{!53, !39, i64 2100}
!53 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !39, i64 136}
!58 = !{!"bGPdata", !59, i64 0, !44, i64 120, !39, i64 136, !40, i64 140, !40, i64 142, !36, i64 144}
!59 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
