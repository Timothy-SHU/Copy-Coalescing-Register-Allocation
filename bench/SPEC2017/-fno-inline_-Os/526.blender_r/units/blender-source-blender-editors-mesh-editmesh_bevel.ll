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
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_bevel_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_bevel_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @edbm_bevel_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @edbm_bevel_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @MESH_OT_bevel.offset_type_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #7
  tail call void @RNA_def_property_float_array_funcs_runtime(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef nonnull @mesh_ot_bevel_offset_range_func) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 1, i32 noundef 50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 8) #7
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_float(ptr noundef %17, ptr noundef nonnull @.str.24, float noundef 5.000000e-01, float noundef 0x3FC3333340000000, float noundef 1.000000e+00, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, float noundef 0x3FC3333340000000, float noundef 1.000000e+00) #7
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #7
  %21 = load ptr, ptr %10, align 8, !tbaa !50
  %22 = tail call ptr @RNA_def_boolean(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #7
  %23 = load ptr, ptr %10, align 8, !tbaa !50
  %24 = tail call ptr @RNA_def_int(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef -1, i32 noundef 100) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_bevel_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !51 {
  %3 = tail call fastcc zeroext i8 @edbm_bevel_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8, !range !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef %1) #8, !range !52
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
define internal noundef i32 @edbm_bevel_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !53 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %7 = tail call fastcc zeroext i8 @edbm_bevel_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #8, !range !52
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 6
  %13 = call zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %5, ptr noundef nonnull %12) #7
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load <2 x float>, ptr %12, align 4, !tbaa !56
  br label %18

17:                                               ; preds = %9
  store <2 x float> zeroinitializer, ptr %12, align 4, !tbaa !56
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi <2 x float> [ %16, %15 ], [ zeroinitializer, %17 ]
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = load <2 x i32>, ptr %20, align 4, !tbaa !58
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = fsub <2 x float> %19, %22
  store <2 x float> %23, ptr %4, align 8, !tbaa !56
  %24 = call fastcc float @len_v2(ptr noundef nonnull %4) #8
  %25 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 1
  store float %24, ptr %25, align 8, !tbaa !60
  %26 = icmp eq ptr %6, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call float @ED_view3d_pixel_size(ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  br label %29

29:                                               ; preds = %18, %27
  %30 = phi float [ %28, %27 ], [ 1.000000e+00, %18 ]
  %31 = getelementptr inbounds %struct.BevelData, ptr %11, i64 0, i32 2
  store float %30, ptr %31, align 4, !tbaa !64
  call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  %32 = call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
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
define internal noundef i32 @edbm_bevel_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !65 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.21) #7
  %11 = getelementptr inbounds %struct.BevelData, ptr %7, i64 0, i32 4
  %12 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #7
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !67
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
  %22 = load ptr, ptr %8, align 8, !tbaa !66
  %23 = tail call float @RNA_float_get(ptr noundef %22, ptr noundef nonnull @.str.18) #7
  store float %23, ptr %4, align 4, !tbaa !56
  %24 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4) #7
  %25 = load ptr, ptr %8, align 8, !tbaa !66
  %26 = load float, ptr %4, align 4, !tbaa !56
  call void @RNA_float_set(ptr noundef %25, ptr noundef nonnull @.str.18, float noundef %26) #7
  %27 = call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %97

28:                                               ; preds = %18, %3
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !70
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
  %36 = load ptr, ptr %8, align 8, !tbaa !66
  tail call void @RNA_float_set(ptr noundef %36, ptr noundef nonnull @.str.18, float noundef %35) #7
  %37 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

38:                                               ; preds = %28, %28, %28
  %39 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  tail call fastcc void @edbm_bevel_exit(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

40:                                               ; preds = %28, %28
  %41 = load i16, ptr %13, align 2, !tbaa !67
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %97, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %10, 1
  %45 = load ptr, ptr %8, align 8, !tbaa !66
  tail call void @RNA_int_set(ptr noundef %45, ptr noundef nonnull @.str.21, i32 noundef %44) #7
  %46 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

47:                                               ; preds = %28, %28
  %48 = load i16, ptr %13, align 2, !tbaa !67
  %49 = icmp eq i16 %48, 2
  br i1 %49, label %97, label %50

50:                                               ; preds = %47
  %51 = add nsw i32 %10, -1
  %52 = tail call fastcc i32 @max_ii(i32 noundef %51) #8
  %53 = load ptr, ptr %8, align 8, !tbaa !66
  tail call void @RNA_int_set(ptr noundef %53, ptr noundef nonnull @.str.21, i32 noundef %52) #7
  %54 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

55:                                               ; preds = %28
  %56 = load i16, ptr %13, align 2, !tbaa !67
  %57 = icmp eq i16 %56, 2
  br i1 %57, label %97, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %8, align 8, !tbaa !66
  %60 = tail call ptr @RNA_struct_find_property(ptr noundef %59, ptr noundef nonnull @.str.15) #7
  %61 = load ptr, ptr %8, align 8, !tbaa !66
  %62 = tail call i32 @RNA_property_enum_get(ptr noundef %61, ptr noundef %60) #7
  %63 = add nsw i32 %62, 1
  %64 = icmp sgt i32 %62, 2
  %65 = select i1 %64, i32 0, i32 %63
  %66 = load ptr, ptr %8, align 8, !tbaa !66
  tail call void @RNA_property_enum_set(ptr noundef %66, ptr noundef %60, i32 noundef %65) #7
  %67 = icmp eq i8 %12, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load ptr, ptr %8, align 8, !tbaa !66
  %70 = tail call fastcc float @edbm_bevel_mval_factor(ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  tail call void @RNA_float_set(ptr noundef %69, ptr noundef nonnull @.str.18, float noundef %70) #7
  br label %71

71:                                               ; preds = %68, %58
  %72 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

73:                                               ; preds = %28
  %74 = load i16, ptr %13, align 2, !tbaa !67
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %97, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %8, align 8, !tbaa !66
  %78 = tail call ptr @RNA_struct_find_property(ptr noundef %77, ptr noundef nonnull @.str.30) #7
  %79 = load ptr, ptr %8, align 8, !tbaa !66
  %80 = tail call i32 @RNA_property_boolean_get(ptr noundef %79, ptr noundef %78) #7
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  tail call void @RNA_property_enum_set(ptr noundef %79, ptr noundef %78, i32 noundef %82) #7
  %83 = tail call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  tail call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %97

84:                                               ; preds = %32, %28
  %85 = load i16, ptr %13, align 2, !tbaa !67
  %86 = icmp eq i16 %85, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #7
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %91 = load ptr, ptr %8, align 8, !tbaa !66
  %92 = tail call float @RNA_float_get(ptr noundef %91, ptr noundef nonnull @.str.18) #7
  store float %92, ptr %5, align 4, !tbaa !56
  %93 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %5) #7
  %94 = load ptr, ptr %8, align 8, !tbaa !66
  %95 = load float, ptr %5, align 4, !tbaa !56
  call void @RNA_float_set(ptr noundef %94, ptr noundef nonnull @.str.18, float noundef %95) #7
  %96 = call fastcc zeroext i8 @edbm_bevel_calc(ptr noundef nonnull %1) #8, !range !52
  call fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %97

97:                                               ; preds = %73, %55, %47, %40, %90, %38, %31, %43, %50, %71, %76, %34, %87, %84, %21
  %98 = phi i32 [ 1, %21 ], [ 1, %90 ], [ 4, %38 ], [ 2, %31 ], [ 1, %43 ], [ 1, %50 ], [ 1, %71 ], [ 1, %76 ], [ 1, %34 ], [ 1, %87 ], [ 1, %84 ], [ 1, %40 ], [ 1, %47 ], [ 1, %55 ], [ 1, %73 ]
  ret i32 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @edbm_bevel_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %9, ptr noundef %10, i32 noundef 1) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !73
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
define internal void @mesh_ot_bevel_offset_range_func(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 !PGOFuncName !74 {
  %7 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.15) #7
  store float 0xC7EFFFFFE0000000, ptr %2, align 4, !tbaa !56
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !56
  store float 0.000000e+00, ptr %4, align 4, !tbaa !56
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, float 1.000000e+02, float 1.000000e+00
  store float %9, ptr %5, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_bevel_init(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !75 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !82
  %13 = tail call ptr %12(i64 noundef 200, ptr noundef nonnull @.str.36) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !54
  store ptr %6, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 3
  store i8 %2, ptr %15, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 5
  store float -1.000000e+00, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4
  tail call void @initNumInput(ptr noundef nonnull %17) #7
  store i16 0, ptr %17, align 4, !tbaa !84
  %18 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4, i32 5
  %19 = load i16, ptr %18, align 4, !tbaa !85
  %20 = or i16 %19, 2
  store i16 %20, ptr %18, align 4, !tbaa !85
  %21 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 38, i32 1
  %22 = load i8, ptr %21, align 4, !tbaa !86
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !106
  %25 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 4, i32 2
  store i32 0, ptr %25, align 4, !tbaa !58
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %11
  %28 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %30 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 7
  %31 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %6) #7
  store ptr %31, ptr %30, align 8, !tbaa.struct !107
  %32 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 6
  %35 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %33, ptr noundef nonnull @ED_region_draw_mouse_line_cb, ptr noundef nonnull %34, i32 noundef 1) #7
  %36 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 8
  store ptr %35, ptr %36, align 8, !tbaa !111
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !112
  %37 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 40
  %38 = load i8, ptr %37, align 1, !tbaa !114
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds %struct.BevelData, ptr %13, i64 0, i32 9
  store i16 %39, ptr %40, align 8, !tbaa !116
  store i8 0, ptr %37, align 1, !tbaa !114
  br label %41

41:                                               ; preds = %11, %27, %3
  %42 = phi i8 [ 0, %3 ], [ 1, %27 ], [ 1, %11 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_bevel_calc(ptr noundef %0) unnamed_addr #0 !PGOFuncName !117 {
  %2 = alloca %struct.BMOperator, align 8
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.18) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !66
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.15) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !66
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.21) #7
  %13 = load ptr, ptr %6, align 8, !tbaa !66
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.24) #7
  %15 = load ptr, ptr %6, align 8, !tbaa !66
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.27) #7
  %17 = load ptr, ptr %6, align 8, !tbaa !66
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.30) #7
  %19 = load ptr, ptr %6, align 8, !tbaa !66
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.33) #7
  %21 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !72
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8
  tail call void @EDBM_redo_state_restore(ptr %26, ptr noundef %5, i32 noundef 0) #7
  br label %27

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = icmp slt i32 %20, -1
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !119
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
  %46 = load ptr, ptr %5, align 8, !tbaa !76
  call void @BMO_op_exec(ptr noundef %46, ptr noundef nonnull %2) #7
  %47 = fcmp une float %8, 0.000000e+00
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %49 = load ptr, ptr %5, align 8, !tbaa !76
  %50 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %49, ptr noundef nonnull %50, ptr noundef nonnull @.str.38, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %51

51:                                               ; preds = %48, %39
  %52 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %4, align 8, !tbaa !73
  call void @EDBM_mesh_normals_update(ptr noundef %55) #7
  %56 = load ptr, ptr %4, align 8, !tbaa !73
  call void @EDBM_update_generic(ptr noundef %56, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %57

57:                                               ; preds = %51, %54
  %58 = phi i8 [ 1, %54 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #9
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_bevel_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @ED_area_headerprint(ptr noundef nonnull %5, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !72
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 7
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %15, ptr noundef null, i32 noundef 0) #7
  %16 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  tail call void @ED_region_draw_cb_exit(ptr noundef %17, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.BevelData, ptr %4, i64 0, i32 9
  %21 = load i16, ptr %20, align 8, !tbaa !116
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.View3D, ptr %13, i64 0, i32 40
  store i8 %22, ptr %23, align 1, !tbaa !114
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !112
  br label %24

24:                                               ; preds = %12, %8
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  tail call void %25(ptr noundef nonnull %4) #7
  store ptr null, ptr %3, align 8, !tbaa !54
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
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !123 {
  %2 = load float, ptr %0, align 4, !tbaa !56
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !56
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_bevel_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !124 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !66
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
  %21 = load ptr, ptr %12, align 8, !tbaa !66
  %22 = tail call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.18) #7
  %23 = fpext float %22 to double
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.40, double noundef %23) #7
  br label %25

25:                                               ; preds = %20, %18
  %26 = load ptr, ptr %12, align 8, !tbaa !66
  %27 = call i32 @RNA_property_enum_get(ptr noundef %26, ptr noundef %14) #7
  %28 = call zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef %0, ptr noundef %26, ptr noundef %14, i32 noundef %27, ptr noundef nonnull %5) #7
  %29 = load ptr, ptr %5, align 8, !tbaa !82
  %30 = load ptr, ptr %12, align 8, !tbaa !66
  %31 = call i32 @RNA_boolean_get(ptr noundef %30, ptr noundef nonnull @.str.30) #7
  %32 = trunc i32 %31 to i8
  %33 = call ptr @WM_bool_as_string(i8 noundef zeroext %32) #7
  %34 = load ptr, ptr %12, align 8, !tbaa !66
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
define internal fastcc float @edbm_bevel_mval_factor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = alloca [2 x float], align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !56
  %9 = load <2 x i32>, ptr %7, align 4, !tbaa !58
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fsub <2 x float> %8, %10
  store <2 x float> %11, ptr %3, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.15) #7
  %15 = icmp eq i32 %14, 3
  %16 = call fastcc float @len_v2(ptr noundef nonnull %3) #8
  %17 = fadd float %16, -5.000000e+00
  %18 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !60
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !64
  %23 = fmul float %20, %22
  %24 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %25 = load i16, ptr %24, align 8, !tbaa !126
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds %struct.BevelData, ptr %5, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !83
  br i1 %26, label %40, label %29

29:                                               ; preds = %2
  %30 = fcmp olt float %28, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load ptr, ptr %12, align 8, !tbaa !66
  %33 = tail call float @RNA_float_get(ptr noundef %32, ptr noundef nonnull @.str.18) #7
  store float %33, ptr %27, align 8, !tbaa !83
  br i1 %15, label %34, label %36

34:                                               ; preds = %31
  %35 = fdiv float %33, 1.000000e+02
  store float %35, ptr %27, align 8, !tbaa !83
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
  store float -1.000000e+00, ptr %27, align 8, !tbaa !83
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
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #5 !PGOFuncName !127 {
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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!"editmesh_bevel.c:edbm_bevel_exec"}
!52 = !{i8 0, i8 2}
!53 = !{!"editmesh_bevel.c:edbm_bevel_invoke"}
!54 = !{!55, !36, i64 96}
!55 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !37, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !37, i64 0}
!60 = !{!61, !57, i64 8}
!61 = !{!"", !36, i64 0, !57, i64 8, !57, i64 12, !37, i64 16, !62, i64 20, !57, i64 160, !37, i64 164, !63, i64 176, !36, i64 184, !41, i64 192}
!62 = !{!"NumInput", !41, i64 0, !59, i64 4, !37, i64 8, !37, i64 20, !41, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !41, i64 68, !37, i64 70, !59, i64 136}
!63 = !{!"BMBackup", !36, i64 0}
!64 = !{!61, !57, i64 12}
!65 = !{!"editmesh_bevel.c:edbm_bevel_modal"}
!66 = !{!55, !36, i64 112}
!67 = !{!68, !41, i64 18}
!68 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !59, i64 48, !59, i64 52, !69, i64 56, !59, i64 64, !59, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !59, i64 108, !36, i64 112}
!69 = !{!"double", !37, i64 0}
!70 = !{!68, !41, i64 16}
!71 = !{!"editmesh_bevel.c:edbm_bevel_cancel"}
!72 = !{!61, !37, i64 16}
!73 = !{!61, !36, i64 0}
!74 = !{!"editmesh_bevel.c:mesh_ot_bevel_offset_range_func"}
!75 = !{!"editmesh_bevel.c:edbm_bevel_init"}
!76 = !{!77, !36, i64 0}
!77 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !59, i64 16, !36, i64 24, !59, i64 32, !36, i64 40, !36, i64 48, !78, i64 56, !36, i64 64, !59, i64 72, !36, i64 80, !59, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !59, i64 104}
!78 = !{!"long", !37, i64 0}
!79 = !{!80, !59, i64 16}
!80 = !{!"BMesh", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !59, i64 88, !59, i64 92, !59, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !59, i64 128, !36, i64 136, !81, i64 144, !81, i64 344, !81, i64 544, !81, i64 744, !41, i64 944, !59, i64 948, !59, i64 952, !59, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!81 = !{!"CustomData", !36, i64 0, !37, i64 8, !59, i64 172, !59, i64 176, !59, i64 180, !36, i64 184, !36, i64 192}
!82 = !{!36, !36, i64 0}
!83 = !{!61, !57, i64 160}
!84 = !{!61, !41, i64 20}
!85 = !{!41, !41, i64 0}
!86 = !{!87, !37, i64 4604}
!87 = !{!"Scene", !88, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !59, i64 232, !59, i64 236, !59, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !89, i64 280, !98, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !59, i64 4380, !39, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !36, i64 4608, !104, i64 4616, !36, i64 4640, !78, i64 4648, !78, i64 4656, !91, i64 4664, !92, i64 4824, !105, i64 4888, !36, i64 4952}
!88 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !59, i64 100, !59, i64 104, !59, i64 108, !36, i64 112}
!89 = !{!"RenderData", !90, i64 0, !36, i64 248, !36, i64 256, !93, i64 264, !94, i64 328, !59, i64 400, !59, i64 404, !59, i64 408, !57, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !41, i64 432, !41, i64 434, !57, i64 436, !57, i64 440, !57, i64 444, !57, i64 448, !57, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !59, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !59, i64 484, !59, i64 488, !41, i64 492, !41, i64 494, !59, i64 496, !59, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !59, i64 516, !59, i64 520, !59, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !95, i64 544, !95, i64 560, !96, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !57, i64 612, !57, i64 616, !57, i64 620, !57, i64 624, !59, i64 628, !57, i64 632, !57, i64 636, !57, i64 640, !57, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !57, i64 660, !57, i64 664, !41, i64 668, !41, i64 670, !57, i64 672, !57, i64 676, !37, i64 680, !59, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !59, i64 2520, !41, i64 2524, !41, i64 2526, !57, i64 2528, !57, i64 2532, !41, i64 2536, !41, i64 2538, !57, i64 2540, !41, i64 2544, !41, i64 2546, !59, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !57, i64 2560, !57, i64 2564, !36, i64 2568, !59, i64 2576, !57, i64 2580, !37, i64 2584, !97, i64 2616, !59, i64 3976, !59, i64 3980}
!90 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !57, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !91, i64 24, !92, i64 184}
!91 = !{!"ColorManagedViewSettings", !59, i64 0, !59, i64 4, !37, i64 8, !37, i64 72, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!92 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!93 = !{!"QuicktimeCodecSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !41, i64 48, !41, i64 50, !59, i64 52, !59, i64 56, !59, i64 60}
!94 = !{!"FFMpegCodecData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !57, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !36, i64 64}
!95 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!96 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!97 = !{!"BakeData", !90, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !57, i64 1280, !57, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!98 = !{!"AudioData", !59, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !59, i64 16, !41, i64 20, !41, i64 22, !57, i64 24, !57, i64 28}
!99 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!100 = !{!"GameData", !99, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !101, i64 40, !41, i64 64, !41, i64 66, !57, i64 68, !102, i64 72, !57, i64 128, !57, i64 132, !59, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180}
!101 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !57, i64 8, !57, i64 12, !36, i64 16}
!102 = !{!"RecastData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !59, i64 40, !57, i64 44, !57, i64 48, !41, i64 52, !41, i64 54}
!103 = !{!"UnitSettings", !57, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!104 = !{!"PhysicsSettings", !37, i64 0, !59, i64 12, !59, i64 16, !59, i64 20}
!105 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!106 = !{!61, !59, i64 24}
!107 = !{i64 0, i64 8, !82}
!108 = !{!109, !36, i64 240}
!109 = !{!"ARegion", !36, i64 0, !36, i64 8, !110, i64 16, !96, i64 176, !96, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !57, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!110 = !{!"View2D", !95, i64 0, !95, i64 16, !96, i64 32, !96, i64 48, !96, i64 64, !37, i64 80, !37, i64 88, !57, i64 96, !57, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !59, i64 136, !59, i64 140, !36, i64 144, !36, i64 152}
!111 = !{!61, !36, i64 184}
!112 = !{!113, !41, i64 2084}
!113 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !59, i64 2096, !59, i64 2100, !37, i64 2104, !59, i64 2108, !59, i64 2112, !37, i64 2116}
!114 = !{!115, !37, i64 291}
!115 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !59, i64 32, !57, i64 36, !37, i64 40, !37, i64 56, !57, i64 72, !57, i64 76, !37, i64 80, !37, i64 81, !59, i64 84, !59, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !95, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !59, i64 224, !59, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !57, i64 244, !57, i64 248, !57, i64 252, !57, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!116 = !{!61, !41, i64 192}
!117 = !{!"editmesh_bevel.c:edbm_bevel_calc"}
!118 = !{!77, !36, i64 96}
!119 = !{!120, !59, i64 456}
!120 = !{!"Object", !88, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !59, i64 140, !59, i64 144, !59, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !121, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !59, i64 432, !59, i64 436, !36, i64 440, !36, i64 448, !59, i64 456, !59, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !57, i64 616, !57, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !59, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !59, i64 968, !59, i64 972, !59, i64 976, !59, i64 980, !59, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !57, i64 1048, !57, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !57, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !59, i64 1144, !59, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !57, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !78, i64 1304, !78, i64 1312, !59, i64 1320, !59, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!121 = !{!"bAnimVizSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44}
!122 = !{!"editmesh_bevel.c:edbm_bevel_exit"}
!123 = !{!"editmesh_bevel.c:len_v2"}
!124 = !{!"editmesh_bevel.c:edbm_bevel_update_header"}
!125 = !{!"editmesh_bevel.c:edbm_bevel_mval_factor"}
!126 = !{!68, !41, i64 72}
!127 = !{!"editmesh_bevel.c:max_ii"}
