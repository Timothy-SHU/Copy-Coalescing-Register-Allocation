; ModuleID = 'blender/source/blender/editors/mesh/editmesh_bevel.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BevelData = type { ptr, float, float, i8, %struct.NumInput, float, [2 x float], %struct.BMBackup, ptr, i16 }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.BMBackup = type { ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@MESH_OT_bevel.offset_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Amount is offset of new edges from original\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WIDTH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Amount is width of new face\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"DEPTH\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Amount is perpendicular distance from original edge to bevel face\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"PERCENT\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Amount is percent of adjacent edge length\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Edge Bevel\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MESH_OT_bevel\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"offset_type\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Amount Type\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"What distance Amount measures\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Amount\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Segments\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Segments for curved edge\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Profile\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Controls profile shape (0.5 = round)\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"vertex_only\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Vertex Only\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Bevel only vertices\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"clamp_overlap\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Clamp Overlap\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"Do not allow beveled edges/vertices to overlap each other\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"Material for bevel faces (-1 means use adjacent faces)\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [24 x i8] c"beveldata_mesh_operator\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.37 = private unnamed_addr constant [108 x i8] c"bevel geom=%hev offset=%f segments=%i vertex_only=%b offset_type=%i profile=%f clamp_overlap=%b material=%i\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [103 x i8] c"Confirm: (Enter/LMB), Cancel: (Esc/RMB), Mode: %s (M), Clamp Overlap: %s (C), Offset: %s, Segments: %d\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_bevel(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_bevel_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_bevel_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @edbm_bevel_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @edbm_bevel_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @MESH_OT_bevel.offset_type_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !21
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #7
  tail call void @RNA_def_property_float_array_funcs_runtime(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef nonnull @mesh_ot_bevel_offset_range_func) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !21
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 1, i32 noundef 50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 8) #7
  %17 = load ptr, ptr %10, align 8, !tbaa !21
  %18 = tail call ptr @RNA_def_float(ptr noundef %17, ptr noundef nonnull @.str.24, float noundef 5.000000e-01, float noundef 0x3FC3333340000000, float noundef 1.000000e+00, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, float noundef 0x3FC3333340000000, float noundef 1.000000e+00) #7
  %19 = load ptr, ptr %10, align 8, !tbaa !21
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #7
  %21 = load ptr, ptr %10, align 8, !tbaa !21
  %22 = tail call ptr @RNA_def_boolean(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #7
  %23 = load ptr, ptr %10, align 8, !tbaa !21
  %24 = tail call ptr @RNA_def_int(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef -1, i32 noundef 100) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_bevel_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @edbm_bevel_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef %1) #8, !range !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @edbm_bevel_cancel(ptr noundef %0, ptr noundef %1) #8
  br label %10

9:                                                ; preds = %5
  tail call fastcc void @edbm_bevel_exit(ptr noundef %0, ptr noundef %1) #8
  br label %10

10:                                               ; preds = %2, %9, %8
  %11 = phi i32 [ 4, %9 ], [ 2, %8 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_bevel_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %7 = tail call fastcc zeroext i8 @edbm_bevel_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #8, !range !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 6
  %13 = call zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %5, ptr noundef nonnull %12) #7
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load <2 x float>, ptr %12, align 4, !tbaa !25
  br label %18

17:                                               ; preds = %9
  store <2 x float> zeroinitializer, ptr %12, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi <2 x float> [ %16, %15 ], [ zeroinitializer, %17 ]
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = load <2 x i32>, ptr %20, align 4, !tbaa !27
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = fsub <2 x float> %19, %22
  store <2 x float> %23, ptr %4, align 8, !tbaa !25
  %24 = call fastcc float @len_v2(ptr noundef nonnull %4) #8
  %25 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 1
  store float %24, ptr %25, align 8, !tbaa !29
  %26 = icmp eq ptr %6, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call float @ED_view3d_pixel_size(ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  br label %29

29:                                               ; preds = %18, %27
  %30 = phi float [ %28, %27 ], [ 1.000000e+00, %18 ]
  %31 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 2
  store float %30, ptr %31, align 4, !tbaa !33
  call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  %32 = call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @edbm_bevel_cancel(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %37

35:                                               ; preds = %29
  %36 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #7
  br label %37

37:                                               ; preds = %3, %35, %34
  %38 = phi i32 [ 1, %35 ], [ 2, %34 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_bevel_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.21) #7
  %11 = getelementptr inbounds %struct.BevelData, ptr %7, i64 0, i32 4
  %12 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #7
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !35
  %15 = icmp eq i16 %14, 1
  %16 = icmp ne i8 %12, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %22 = load ptr, ptr %8, align 8, !tbaa !34
  %23 = tail call float @RNA_float_get(ptr noundef %22, ptr noundef nonnull @.str.18) #7
  store float %23, ptr %4, align 4, !tbaa !25
  %24 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4) #7
  %25 = load ptr, ptr %8, align 8, !tbaa !34
  %26 = load float, ptr %4, align 4, !tbaa !25
  call void @RNA_float_set(ptr noundef %25, ptr noundef nonnull @.str.18, float noundef %26) #7
  %27 = call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %97

28:                                               ; preds = %18, %3
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !38
  switch i16 %30, label %84 [
    i16 218, label %31
    i16 3, label %31
    i16 4, label %32
    i16 1, label %38
    i16 163, label %38
    i16 220, label %38
    i16 10, label %40
    i16 164, label %40
    i16 11, label %47
    i16 162, label %47
    i16 109, label %55
    i16 99, label %73
  ]

31:                                               ; preds = %28, %28
  tail call void @edbm_bevel_cancel(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

32:                                               ; preds = %28
  %33 = icmp eq i8 %12, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %32
  %35 = tail call fastcc float @edbm_bevel_mval_factor(ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  %36 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_float_set(ptr noundef %36, ptr noundef nonnull @.str.18, float noundef %35) #7
  %37 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

38:                                               ; preds = %28, %28, %28
  %39 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  tail call fastcc void @edbm_bevel_exit(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

40:                                               ; preds = %28, %28
  %41 = load i16, ptr %13, align 2, !tbaa !35
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %97, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %10, 1
  %45 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_int_set(ptr noundef %45, ptr noundef nonnull @.str.21, i32 noundef %44) #7
  %46 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

47:                                               ; preds = %28, %28
  %48 = load i16, ptr %13, align 2, !tbaa !35
  %49 = icmp eq i16 %48, 2
  br i1 %49, label %97, label %50

50:                                               ; preds = %47
  %51 = add nsw i32 %10, -1
  %52 = tail call fastcc i32 @max_ii(i32 noundef %51) #8
  %53 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_int_set(ptr noundef %53, ptr noundef nonnull @.str.21, i32 noundef %52) #7
  %54 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

55:                                               ; preds = %28
  %56 = load i16, ptr %13, align 2, !tbaa !35
  %57 = icmp eq i16 %56, 2
  br i1 %57, label %97, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %8, align 8, !tbaa !34
  %60 = tail call ptr @RNA_struct_find_property(ptr noundef %59, ptr noundef nonnull @.str.15) #7
  %61 = load ptr, ptr %8, align 8, !tbaa !34
  %62 = tail call i32 @RNA_property_enum_get(ptr noundef %61, ptr noundef %60) #7
  %63 = add nsw i32 %62, 1
  %64 = icmp sgt i32 %62, 2
  %65 = select i1 %64, i32 0, i32 %63
  %66 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_property_enum_set(ptr noundef %66, ptr noundef %60, i32 noundef %65) #7
  %67 = icmp eq i8 %12, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load ptr, ptr %8, align 8, !tbaa !34
  %70 = tail call fastcc float @edbm_bevel_mval_factor(ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  tail call void @RNA_float_set(ptr noundef %69, ptr noundef nonnull @.str.18, float noundef %70) #7
  br label %71

71:                                               ; preds = %68, %58
  %72 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

73:                                               ; preds = %28
  %74 = load i16, ptr %13, align 2, !tbaa !35
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %97, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %8, align 8, !tbaa !34
  %78 = tail call ptr @RNA_struct_find_property(ptr noundef %77, ptr noundef nonnull @.str.30) #7
  %79 = load ptr, ptr %8, align 8, !tbaa !34
  %80 = tail call i32 @RNA_property_boolean_get(ptr noundef %79, ptr noundef %78) #7
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  tail call void @RNA_property_enum_set(ptr noundef %79, ptr noundef %78, i32 noundef %82) #7
  %83 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

84:                                               ; preds = %32, %28
  %85 = load i16, ptr %13, align 2, !tbaa !35
  %86 = icmp eq i16 %85, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #7
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %91 = load ptr, ptr %8, align 8, !tbaa !34
  %92 = tail call float @RNA_float_get(ptr noundef %91, ptr noundef nonnull @.str.18) #7
  store float %92, ptr %5, align 4, !tbaa !25
  %93 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %5) #7
  %94 = load ptr, ptr %8, align 8, !tbaa !34
  %95 = load float, ptr %5, align 4, !tbaa !25
  call void @RNA_float_set(ptr noundef %94, ptr noundef nonnull @.str.18, float noundef %95) #7
  %96 = call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !22
  call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %97

97:                                               ; preds = %73, %55, %47, %40, %90, %38, %31, %43, %50, %71, %76, %34, %87, %84, %21
  %98 = phi i32 [ 1, %21 ], [ 1, %90 ], [ 4, %38 ], [ 2, %31 ], [ 1, %43 ], [ 1, %50 ], [ 1, %71 ], [ 1, %76 ], [ 1, %34 ], [ 1, %87 ], [ 1, %84 ], [ 1, %40 ], [ 1, %47 ], [ 1, %55 ], [ 1, %73 ]
  ret i32 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @edbm_bevel_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !39
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %4, align 8, !tbaa !40
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %9, ptr noundef %10, i32 noundef 1) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  tail call void @EDBM_update_generic(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  br label %12

12:                                               ; preds = %8, %2
  tail call fastcc void @edbm_bevel_exit(ptr noundef %0, ptr noundef nonnull %1) #8
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @ED_region_tag_redraw(ptr noundef %13) #7
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_float_array_funcs_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_ot_bevel_offset_range_func(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.15) #7
  store float 0xC7EFFFFFE0000000, ptr %2, align 4, !tbaa !25
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !25
  store float 0.000000e+00, ptr %4, align 4, !tbaa !25
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, float 1.000000e+02, float 1.000000e+00
  store float %9, ptr %5, align 4, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_bevel_init(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %13 = tail call ptr %12(i64 noundef 200, ptr noundef nonnull @.str.36) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !23
  store ptr %6, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 3
  store i8 %2, ptr %15, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 5
  store float -1.000000e+00, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4
  tail call void @initNumInput(ptr noundef nonnull %17) #7
  store i16 0, ptr %17, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4, i32 5
  %19 = load i16, ptr %18, align 4, !tbaa !50
  %20 = or i16 %19, 2
  store i16 %20, ptr %18, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 38, i32 1
  %22 = load i8, ptr %21, align 4, !tbaa !51
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !71
  %25 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4, i32 2
  store i32 0, ptr %25, align 4, !tbaa !27
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %11
  %28 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %30 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 7
  %31 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %6) #7
  store ptr %31, ptr %30, align 8, !tbaa.struct !72
  %32 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 6
  %35 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %33, ptr noundef nonnull @ED_region_draw_mouse_line_cb, ptr noundef nonnull %34, i32 noundef 1) #7
  %36 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 8
  store ptr %35, ptr %36, align 8, !tbaa !76
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !77
  %37 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 40
  %38 = load i8, ptr %37, align 1, !tbaa !79
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 9
  store i16 %39, ptr %40, align 8, !tbaa !81
  store i8 0, ptr %37, align 1, !tbaa !79
  br label %41

41:                                               ; preds = %11, %27, %3
  %42 = phi i8 [ 0, %3 ], [ 1, %27 ], [ 1, %11 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_bevel_calc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMOperator, align 8
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.18) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.15) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !34
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.21) #7
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.24) #7
  %15 = load ptr, ptr %6, align 8, !tbaa !34
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.27) #7
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.30) #7
  %19 = load ptr, ptr %6, align 8, !tbaa !34
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.33) #7
  %21 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !39
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8
  tail call void @EDBM_redo_state_restore(ptr %26, ptr noundef %5, i32 noundef 0) #7
  br label %27

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = icmp slt i32 %20, -1
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !83
  %36 = icmp slt i32 %20, %35
  %37 = add nsw i32 %35, -1
  %38 = select i1 %36, i32 %20, i32 %37
  br label %39

39:                                               ; preds = %33, %31, %27
  %40 = phi i32 [ %20, %27 ], [ -1, %31 ], [ %38, %33 ]
  %41 = fpext float %8 to double
  %42 = and i32 %16, 255
  %43 = fpext float %14 to double
  %44 = and i32 %18, 255
  %45 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull @.str.37, i32 noundef 1, double noundef %41, i32 noundef %12, i32 noundef %42, i32 noundef %10, double noundef %43, i32 noundef %44, i32 noundef %40) #7
  %46 = load ptr, ptr %5, align 8, !tbaa !41
  call void @BMO_op_exec(ptr noundef %46, ptr noundef nonnull %2) #7
  %47 = fcmp une float %8, 0.000000e+00
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %49 = load ptr, ptr %5, align 8, !tbaa !41
  %50 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %49, ptr noundef nonnull %50, ptr noundef nonnull @.str.38, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %51

51:                                               ; preds = %48, %39
  %52 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %4, align 8, !tbaa !40
  call void @EDBM_mesh_normals_update(ptr noundef %55) #7
  %56 = load ptr, ptr %4, align 8, !tbaa !40
  call void @EDBM_update_generic(ptr noundef %56, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %57

57:                                               ; preds = %51, %54
  %58 = phi i8 [ 1, %54 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #9
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_bevel_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @ED_area_headerprint(ptr noundef nonnull %5, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !39
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 7
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %15, ptr noundef null, i32 noundef 0) #7
  %16 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  tail call void @ED_region_draw_cb_exit(ptr noundef %17, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 9
  %21 = load i16, ptr %20, align 8, !tbaa !81
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.View3D, ptr %13, i64 0, i32 40
  store i8 %22, ptr %23, align 1, !tbaa !79
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !77
  br label %24

24:                                               ; preds = %12, %8
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %25(ptr noundef nonnull %4) #7
  store ptr null, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_redo_state_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_mouse_line_cb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_redo_state_restore(ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_redo_state_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @calculateTransformCenter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load float, ptr %0, align 4, !tbaa !25
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !25
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [180 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %3) #9
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = icmp eq ptr %6, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %13, ptr noundef nonnull @.str.15) #7
  %15 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 4
  %16 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %15) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull %19) #7
  br label %25

20:                                               ; preds = %9
  %21 = load ptr, ptr %12, align 8, !tbaa !34
  %22 = tail call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.18) #7
  %23 = fpext float %22 to double
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.40, double noundef %23) #7
  br label %25

25:                                               ; preds = %20, %18
  %26 = load ptr, ptr %12, align 8, !tbaa !34
  %27 = call i32 @RNA_property_enum_get(ptr noundef %26, ptr noundef %14) #7
  %28 = call zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef %0, ptr noundef %26, ptr noundef %14, i32 noundef %27, ptr noundef nonnull %5) #7
  %29 = load ptr, ptr %5, align 8, !tbaa !47
  %30 = load ptr, ptr %12, align 8, !tbaa !34
  %31 = call i32 @RNA_boolean_get(ptr noundef %30, ptr noundef nonnull @.str.30) #7
  %32 = trunc i32 %31 to i8
  %33 = call ptr @WM_bool_as_string(i8 noundef zeroext %32) #7
  %34 = load ptr, ptr %12, align 8, !tbaa !34
  %35 = call i32 @RNA_int_get(ptr noundef %34, ptr noundef nonnull @.str.21) #7
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 180, ptr noundef nonnull @.str.39, ptr noundef %29, ptr noundef %33, ptr noundef nonnull %4, i32 noundef %35) #7
  call void @ED_area_headerprint(ptr noundef nonnull %6, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %37

37:                                               ; preds = %25, %2
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @edbm_bevel_mval_factor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !25
  %9 = load <2 x i32>, ptr %7, align 4, !tbaa !27
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fsub <2 x float> %8, %10
  store <2 x float> %11, ptr %3, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.15) #7
  %15 = icmp eq i32 %14, 3
  %16 = call fastcc float @len_v2(ptr noundef nonnull %3) #8
  %17 = fadd float %16, -5.000000e+00
  %18 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !29
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !33
  %23 = fmul float %20, %22
  %24 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %25 = load i16, ptr %24, align 8, !tbaa !86
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !48
  br i1 %26, label %40, label %29

29:                                               ; preds = %2
  %30 = fcmp olt float %28, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load ptr, ptr %12, align 8, !tbaa !34
  %33 = tail call float @RNA_float_get(ptr noundef %32, ptr noundef nonnull @.str.18) #7
  store float %33, ptr %27, align 8, !tbaa !48
  br i1 %15, label %34, label %36

34:                                               ; preds = %31
  %35 = fdiv float %33, 1.000000e+02
  store float %35, ptr %27, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %31, %34, %29
  %37 = phi float [ %33, %31 ], [ %35, %34 ], [ %28, %29 ]
  %38 = fsub float %23, %37
  %39 = tail call float @llvm.fmuladd.f32(float %38, float 0x3FB99999A0000000, float %37)
  br label %43

40:                                               ; preds = %2
  %41 = fcmp ult float %28, 0.000000e+00
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store float -1.000000e+00, ptr %27, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %40, %42, %36
  %44 = phi float [ %39, %36 ], [ %23, %42 ], [ %23, %40 ]
  %45 = fcmp olt float %44, 0.000000e+00
  br i1 %15, label %48, label %46

46:                                               ; preds = %43
  br i1 %45, label %47, label %55

47:                                               ; preds = %46
  br label %55

48:                                               ; preds = %43
  br i1 %45, label %52, label %49

49:                                               ; preds = %48
  %50 = fcmp ogt float %44, 1.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %49, %48
  %53 = phi float [ 1.000000e+00, %51 ], [ %44, %49 ], [ 0.000000e+00, %48 ]
  %54 = fmul float %53, 1.000000e+02
  br label %55

55:                                               ; preds = %52, %46, %47
  %56 = phi float [ 0.000000e+00, %47 ], [ %44, %46 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret float %56
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: optsize
declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !12, i64 184}
!21 = !{!6, !7, i64 88}
!22 = !{i8 0, i8 2}
!23 = !{!24, !7, i64 96}
!24 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !8, i64 0}
!29 = !{!30, !26, i64 8}
!30 = !{!"", !7, i64 0, !26, i64 8, !26, i64 12, !8, i64 16, !31, i64 20, !26, i64 160, !8, i64 164, !32, i64 176, !7, i64 184, !12, i64 192}
!31 = !{!"NumInput", !12, i64 0, !28, i64 4, !8, i64 8, !8, i64 20, !12, i64 22, !8, i64 24, !8, i64 32, !8, i64 44, !8, i64 56, !12, i64 68, !8, i64 70, !28, i64 136}
!32 = !{!"BMBackup", !7, i64 0}
!33 = !{!30, !26, i64 12}
!34 = !{!24, !7, i64 112}
!35 = !{!36, !12, i64 18}
!36 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !28, i64 20, !28, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !28, i64 48, !28, i64 52, !37, i64 56, !28, i64 64, !28, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !28, i64 108, !7, i64 112}
!37 = !{!"double", !8, i64 0}
!38 = !{!36, !12, i64 16}
!39 = !{!30, !8, i64 16}
!40 = !{!30, !7, i64 0}
!41 = !{!42, !7, i64 0}
!42 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !28, i64 16, !7, i64 24, !28, i64 32, !7, i64 40, !7, i64 48, !43, i64 56, !7, i64 64, !28, i64 72, !7, i64 80, !28, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !28, i64 104}
!43 = !{!"long", !8, i64 0}
!44 = !{!45, !28, i64 16}
!45 = !{!"BMesh", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !28, i64 88, !28, i64 92, !28, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !28, i64 128, !7, i64 136, !46, i64 144, !46, i64 344, !46, i64 544, !46, i64 744, !12, i64 944, !28, i64 948, !28, i64 952, !28, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!46 = !{!"CustomData", !7, i64 0, !8, i64 8, !28, i64 172, !28, i64 176, !28, i64 180, !7, i64 184, !7, i64 192}
!47 = !{!7, !7, i64 0}
!48 = !{!30, !26, i64 160}
!49 = !{!30, !12, i64 20}
!50 = !{!12, !12, i64 0}
!51 = !{!52, !8, i64 4604}
!52 = !{!"Scene", !53, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !28, i64 232, !28, i64 236, !28, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !54, i64 280, !63, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !28, i64 4380, !10, i64 4384, !64, i64 4400, !65, i64 4416, !68, i64 4600, !7, i64 4608, !69, i64 4616, !7, i64 4640, !43, i64 4648, !43, i64 4656, !56, i64 4664, !57, i64 4824, !70, i64 4888, !7, i64 4952}
!53 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !28, i64 100, !28, i64 104, !28, i64 108, !7, i64 112}
!54 = !{!"RenderData", !55, i64 0, !7, i64 248, !7, i64 256, !58, i64 264, !59, i64 328, !28, i64 400, !28, i64 404, !28, i64 408, !26, i64 412, !28, i64 416, !28, i64 420, !28, i64 424, !28, i64 428, !12, i64 432, !12, i64 434, !26, i64 436, !26, i64 440, !26, i64 444, !26, i64 448, !26, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !28, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !28, i64 484, !28, i64 488, !12, i64 492, !12, i64 494, !28, i64 496, !28, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !28, i64 516, !28, i64 520, !28, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !60, i64 544, !60, i64 560, !61, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !26, i64 612, !26, i64 616, !26, i64 620, !26, i64 624, !28, i64 628, !26, i64 632, !26, i64 636, !26, i64 640, !26, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !26, i64 660, !26, i64 664, !12, i64 668, !12, i64 670, !26, i64 672, !26, i64 676, !8, i64 680, !28, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !28, i64 2520, !12, i64 2524, !12, i64 2526, !26, i64 2528, !26, i64 2532, !12, i64 2536, !12, i64 2538, !26, i64 2540, !12, i64 2544, !12, i64 2546, !28, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !26, i64 2560, !26, i64 2564, !7, i64 2568, !28, i64 2576, !26, i64 2580, !8, i64 2584, !62, i64 2616, !28, i64 3976, !28, i64 3980}
!55 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !26, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !56, i64 24, !57, i64 184}
!56 = !{!"ColorManagedViewSettings", !28, i64 0, !28, i64 4, !8, i64 8, !8, i64 72, !26, i64 136, !26, i64 140, !7, i64 144, !7, i64 152}
!57 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!58 = !{!"QuicktimeCodecSettings", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !12, i64 48, !12, i64 50, !28, i64 52, !28, i64 56, !28, i64 60}
!59 = !{!"FFMpegCodecData", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !26, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !7, i64 64}
!60 = !{!"rctf", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!61 = !{!"rcti", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!62 = !{!"BakeData", !55, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !26, i64 1280, !26, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!63 = !{!"AudioData", !28, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !28, i64 16, !12, i64 20, !12, i64 22, !26, i64 24, !26, i64 28}
!64 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!65 = !{!"GameData", !64, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !66, i64 40, !12, i64 64, !12, i64 66, !26, i64 68, !67, i64 72, !26, i64 128, !26, i64 132, !28, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180}
!66 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !26, i64 8, !26, i64 12, !7, i64 16}
!67 = !{!"RecastData", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !28, i64 40, !26, i64 44, !26, i64 48, !12, i64 52, !12, i64 54}
!68 = !{!"UnitSettings", !26, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!69 = !{!"PhysicsSettings", !8, i64 0, !28, i64 12, !28, i64 16, !28, i64 20}
!70 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!71 = !{!30, !28, i64 24}
!72 = !{i64 0, i64 8, !47}
!73 = !{!74, !7, i64 240}
!74 = !{!"ARegion", !7, i64 0, !7, i64 8, !75, i64 16, !61, i64 176, !61, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !26, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!75 = !{!"View2D", !60, i64 0, !60, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !8, i64 80, !8, i64 88, !26, i64 96, !26, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !28, i64 136, !28, i64 140, !7, i64 144, !7, i64 152}
!76 = !{!30, !7, i64 184}
!77 = !{!78, !12, i64 2084}
!78 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !28, i64 2096, !28, i64 2100, !8, i64 2104, !28, i64 2108, !28, i64 2112, !8, i64 2116}
!79 = !{!80, !8, i64 291}
!80 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !28, i64 32, !26, i64 36, !8, i64 40, !8, i64 56, !26, i64 72, !26, i64 76, !8, i64 80, !8, i64 81, !28, i64 84, !28, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !60, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !28, i64 224, !28, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !26, i64 244, !26, i64 248, !26, i64 252, !26, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!81 = !{!30, !12, i64 192}
!82 = !{!42, !7, i64 96}
!83 = !{!84, !28, i64 456}
!84 = !{!"Object", !53, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !28, i64 140, !28, i64 144, !28, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !85, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !28, i64 432, !28, i64 436, !7, i64 440, !7, i64 448, !28, i64 456, !28, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !26, i64 616, !26, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !28, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !28, i64 968, !28, i64 972, !28, i64 976, !28, i64 980, !28, i64 984, !26, i64 988, !26, i64 992, !26, i64 996, !26, i64 1000, !26, i64 1004, !26, i64 1008, !26, i64 1012, !26, i64 1016, !26, i64 1020, !26, i64 1024, !26, i64 1028, !26, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !26, i64 1048, !26, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !26, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !28, i64 1144, !28, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !26, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !43, i64 1304, !43, i64 1312, !28, i64 1320, !28, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!85 = !{!"bAnimVizSettings", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44}
!86 = !{!36, !12, i64 72}
