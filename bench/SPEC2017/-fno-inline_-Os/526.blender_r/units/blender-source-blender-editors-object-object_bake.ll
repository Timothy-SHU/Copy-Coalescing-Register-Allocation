; ModuleID = 'blender/source/blender/editors/object/object_bake.c'
source_filename = "blender/source/blender/editors/object/object_bake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BakeRender = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.ListBase, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.MultiresBakeRender = type { ptr, ptr, i8, i32, i32, i32, i16, i8, i32, float, i32, i32, %struct.ListBase, i32, i32, i32, i32, i32, float, ptr, ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.BakeImBufuserData = type { ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MultiresBakeJob = type { %struct.ListBase, i8, i32, i16, i8, i32, float, i32, i32, i32, float }
%struct.MultiresBakerJobData = type { ptr, ptr, ptr, ptr, i8, i32, i32, %struct.ListBase }
%struct.LinkData = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"Bake\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Bake image textures of selected objects\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_bake_image\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"No valid images found to bake to\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Circular reference in texture stack\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"No objects found to bake from\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Baking of multires data only works with an active mesh object\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Multires data baking requires multi-resolution object\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Mesh should be unwrapped before multires data baking\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"You should have active texture to use multires baker\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Baking should happen to image with image buffer\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Baking to unsupported image type\00", align 1
@__const.clear_single_image.vec_solid = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@__const.clear_single_image.nor_alpha = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00], align 16
@__const.clear_single_image.nor_solid = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00], align 16
@__const.clear_single_image.disp_alpha = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], align 16
@__const.clear_single_image.disp_solid = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00], align 16
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"No active object\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"No world set up\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"_Bake View_\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"render bake\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Texture Bake\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"MultiresBakeJob data\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Multires Bake\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"multiresBaker derivedMesh_data\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"No objects or images found to bake to\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_bake_image(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @bake_image_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @objects_bake_render_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @objects_bake_render_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bake_image_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !48 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.BakeRender, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call fastcc zeroext i8 @is_multires_bake(ptr noundef %6) #9, !range !49
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @multiresbake_image_exec_locked(ptr noundef %0, ptr noundef %1) #9, !range !50
  br label %61

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = tail call fastcc i32 @test_bake_internal(ptr noundef %0, ptr noundef %13) #9, !range !53
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %63, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  call fastcc void @init_bake_internal(ptr noundef nonnull %4, ptr noundef %0) #9
  %17 = load ptr, ptr %12, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.BakeRender, ptr %4, i64 0, i32 6
  store ptr %17, ptr %18, align 8, !tbaa !54
  %19 = load ptr, ptr %4, align 8, !tbaa !57
  tail call void @RE_test_break_cb(ptr noundef %19, ptr noundef null, ptr noundef nonnull @thread_break) #8
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 74
  %23 = load i16, ptr %22, align 4, !tbaa !82
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 75
  %26 = load i16, ptr %25, align 2, !tbaa !83
  %27 = and i16 %26, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Base, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  br label %36

36:                                               ; preds = %16, %33, %29
  %37 = phi ptr [ %35, %33 ], [ null, %29 ], [ null, %16 ]
  tail call void @RE_Database_Baking(ptr noundef %19, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %21, i32 noundef %24, ptr noundef %37) #8
  call void @BLI_init_threads(ptr noundef nonnull %3, ptr noundef nonnull @do_bake_render, i32 noundef 1) #8
  %38 = getelementptr inbounds %struct.BakeRender, ptr %4, i64 0, i32 5
  store i32 0, ptr %38, align 4, !tbaa !87
  call void @BLI_insert_thread(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %39 = load i32, ptr %38, align 4, !tbaa !87
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36, %50
  call void @PIL_sleep_ms(i32 noundef 50) #8
  %42 = load i32, ptr %38, align 4, !tbaa !87
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !88
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @blender_test_break() #8
  %49 = load i32, ptr %38, align 4, !tbaa !87
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %49, %47 ], [ 0, %44 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %41, label %53, !llvm.loop !89

53:                                               ; preds = %50, %41, %36
  call void @BLI_end_threads(ptr noundef nonnull %3) #8
  %54 = getelementptr inbounds %struct.BakeRender, ptr %4, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !91
  switch i32 %55, label %60 [
    i32 1, label %57
    i32 2, label %56
  ]

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %53, %56
  %58 = phi ptr [ @.str.4, %56 ], [ @.str.3, %53 ]
  %59 = load ptr, ptr %12, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %59, i32 noundef 32, ptr noundef nonnull %58) #8
  br label %60

60:                                               ; preds = %57, %53
  call fastcc void @finish_bake_internal(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %61

61:                                               ; preds = %60, %9
  %62 = phi i32 [ %10, %9 ], [ 4, %60 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %6) #8
  br label %63

63:                                               ; preds = %11, %61
  %64 = phi i32 [ %62, %61 ], [ 2, %11 ]
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objects_bake_render_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !92 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call fastcc zeroext i8 @is_multires_bake(ptr noundef %4) #9, !range !49
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @multiresbake_image_exec(ptr noundef %0, ptr noundef %1) #9, !range !93
  br label %28

9:                                                ; preds = %3
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %11 = tail call zeroext i8 @WM_jobs_test(ptr noundef %10, ptr noundef %4, i32 noundef 7) #8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = tail call fastcc i32 @test_bake_internal(ptr noundef %0, ptr noundef %15) #9, !range !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !94
  %20 = tail call ptr %19(i64 noundef 104, ptr noundef nonnull @.str.15) #8
  tail call fastcc void @init_bake_internal(ptr noundef %20, ptr noundef %0) #9
  %21 = load ptr, ptr %14, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.BakeRender, ptr %20, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !54
  %23 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %24 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %25 = tail call ptr @WM_jobs_get(ptr noundef %23, ptr noundef %24, ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef 7) #8
  tail call void @WM_jobs_customdata_set(ptr noundef %25, ptr noundef %20, ptr noundef nonnull @bake_freejob) #8
  tail call void @WM_jobs_timer(ptr noundef %25, double noundef 5.000000e-01, i32 noundef 167772160, i32 noundef 0) #8
  tail call void @WM_jobs_callbacks(ptr noundef %25, ptr noundef nonnull @bake_startjob, ptr noundef null, ptr noundef nonnull @bake_update, ptr noundef null) #8
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !58
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !95
  %26 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  tail call void @WM_jobs_start(ptr noundef %26, ptr noundef %25) #8
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #8
  %27 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %28

28:                                               ; preds = %18, %7
  %29 = phi i32 [ %8, %7 ], [ 1, %18 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %4) #8
  br label %30

30:                                               ; preds = %13, %9, %28
  %31 = phi i32 [ %29, %28 ], [ 2, %9 ], [ 2, %13 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @objects_bake_render_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !96 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 7) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !97
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_multires_bake(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 74
  %3 = load i16, ptr %2, align 4, !tbaa !82
  switch i16 %3, label %9 [
    i16 3, label %4
    i16 5, label %4
    i16 13, label %4
    i16 2, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 75
  %6 = load i16, ptr %5, align 2, !tbaa !83
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 16
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @multiresbake_image_exec_locked(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !101 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.MultiresBakeRender, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call fastcc zeroext i8 @multiresbake_check(ptr noundef %0, ptr noundef %1) #9, !range !102
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %112, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 75
  %11 = load i16, ptr %10, align 2, !tbaa !83
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %15 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !94
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 74
  br label %20

20:                                               ; preds = %18, %31
  %21 = phi ptr [ %16, %18 ], [ %41, %31 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = load i16, ptr %19, align 4, !tbaa !82
  switch i16 %28, label %30 [
    i16 3, label %31
    i16 5, label %29
    i16 13, label %29
  ]

29:                                               ; preds = %20, %20
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %20, %30, %29
  %32 = phi i32 [ 2, %29 ], [ 1, %20 ], [ 0, %30 ]
  %33 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 28
  %36 = load i32, ptr %35, align 8, !tbaa !113
  call fastcc void @clear_images(ptr noundef %34, i32 noundef %36, i32 noundef %32) #9
  %37 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 30
  %40 = load i32, ptr %39, align 8, !tbaa !115
  call fastcc void @clear_images_poly(ptr noundef %38, i32 noundef %40, i32 noundef %32) #9
  %41 = load ptr, ptr %21, align 8, !tbaa !94
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %20, !llvm.loop !116

43:                                               ; preds = %31, %14
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %44

44:                                               ; preds = %43, %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %45 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %4) #8
  %46 = load ptr, ptr %4, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %109

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 73
  %51 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 3
  %52 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 74
  %53 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 6
  %54 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 7
  %55 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 79
  %56 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 9
  %57 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 80
  %58 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 8
  %59 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 49
  %60 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 15
  %61 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 51
  %62 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 16
  %63 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 17
  %64 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 82
  %65 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 18
  %66 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 5
  %67 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 2
  %68 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 1
  %69 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 4
  %70 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 12
  br label %71

71:                                               ; preds = %49, %96
  %72 = phi ptr [ %46, %49 ], [ %106, %96 ]
  %73 = getelementptr inbounds %struct.CollectionPointerLink, ptr %72, i64 0, i32 2, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %75 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !85
  call void @multires_force_update(ptr noundef %76) #8
  %77 = load i16, ptr %50, align 2, !tbaa !117
  %78 = sext i16 %77 to i32
  store i32 %78, ptr %51, align 4, !tbaa !118
  %79 = load i16, ptr %52, align 4, !tbaa !82
  store i16 %79, ptr %53, align 8, !tbaa !120
  %80 = load i16, ptr %10, align 2, !tbaa !83
  %81 = trunc i16 %80 to i8
  %82 = and i8 %81, 32
  store i8 %82, ptr %54, align 2, !tbaa !121
  %83 = load float, ptr %55, align 8, !tbaa !122
  store float %83, ptr %56, align 8, !tbaa !123
  %84 = load i16, ptr %57, align 4, !tbaa !124
  %85 = sext i16 %84 to i32
  store i32 %85, ptr %58, align 4, !tbaa !125
  %86 = load i16, ptr %59, align 8, !tbaa !126
  %87 = sext i16 %86 to i32
  store i32 %87, ptr %60, align 8, !tbaa !127
  %88 = load i16, ptr %61, align 4, !tbaa !128
  %89 = sext i16 %88 to i32
  store i32 %89, ptr %62, align 4, !tbaa !129
  %90 = call i32 @BKE_scene_num_threads(ptr noundef nonnull %6) #8
  store i32 %90, ptr %63, align 8, !tbaa !130
  %91 = load i16, ptr %10, align 2, !tbaa !83
  %92 = and i16 %91, 128
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %71
  %95 = load float, ptr %64, align 8, !tbaa !131
  br label %96

96:                                               ; preds = %71, %94
  %97 = phi float [ %95, %94 ], [ -1.000000e+00, %71 ]
  store float %97, ptr %65, align 4, !tbaa !132
  %98 = call fastcc ptr @multiresbake_create_hiresdm(ptr noundef nonnull %6, ptr noundef %76, ptr noundef nonnull %66, ptr noundef nonnull %67) #9
  store ptr %98, ptr %68, align 8, !tbaa !133
  %99 = call fastcc ptr @multiresbake_create_loresdm(ptr noundef nonnull %6, ptr noundef %76, ptr noundef nonnull %69) #9
  store ptr %99, ptr %5, align 8, !tbaa !134
  call void @RE_multires_bake_images(ptr noundef nonnull %5) #8
  call void @BLI_freelistN(ptr noundef nonnull %70) #8
  %100 = load ptr, ptr %5, align 8, !tbaa !134
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %100, i64 0, i32 95
  %102 = load ptr, ptr %101, align 8, !tbaa !135
  call void %102(ptr noundef %100) #8
  %103 = load ptr, ptr %68, align 8, !tbaa !133
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %103, i64 0, i32 95
  %105 = load ptr, ptr %104, align 8, !tbaa !135
  call void %105(ptr noundef %103) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #10
  %106 = load ptr, ptr %72, align 8, !tbaa !94
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %71, !llvm.loop !137

108:                                              ; preds = %96
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br i1 %47, label %109, label %112

109:                                              ; preds = %48, %108
  %110 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %111, i32 noundef 32, ptr noundef nonnull @.str.5) #8
  br label %112

112:                                              ; preds = %108, %109, %2
  %113 = phi i32 [ 2, %2 ], [ 4, %109 ], [ 4, %108 ]
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @test_bake_internal(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !138 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 75
  %5 = load i16, ptr %4, align 2, !tbaa !83
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 74
  %13 = load i16, ptr %12, align 4, !tbaa !82
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %8
  %20 = phi ptr [ @.str.12, %8 ], [ @.str.13, %15 ]
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %20) #8
  br label %21

21:                                               ; preds = %19, %11, %15
  %22 = phi i32 [ 1, %15 ], [ 1, %11 ], [ 0, %19 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_bake_internal(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !140 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %1) #8
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %1) #8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %1) #8
  %6 = tail call zeroext i8 @ED_object_editmode_load(ptr noundef %5) #8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_screen_find_big_area(ptr noundef nonnull %4, i32 noundef 6, i16 noundef signext 10) #8
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !141
  %13 = tail call ptr @CTX_data_main(ptr noundef %1) #8
  %14 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !142
  %15 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !143
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 75
  %17 = load i16, ptr %16, align 2, !tbaa !83
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  br label %27

27:                                               ; preds = %10, %24, %20
  %28 = phi ptr [ %26, %24 ], [ null, %20 ], [ null, %10 ]
  %29 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !144
  %30 = tail call ptr @RE_NewRender(ptr noundef nonnull @.str.14) #8
  store ptr %30, ptr %0, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 74
  %32 = load i16, ptr %31, align 4, !tbaa !82
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !139
  %37 = getelementptr inbounds %struct.World, ptr %36, i64 0, i32 23
  %38 = load i16, ptr %37, align 2, !tbaa !145
  %39 = lshr i16 %38, 6
  %40 = and i16 %39, 1
  %41 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 11
  store i16 %40, ptr %41, align 8, !tbaa !147
  %42 = or i16 %38, 64
  store i16 %42, ptr %37, align 2, !tbaa !145
  br label %46

43:                                               ; preds = %27
  %44 = load ptr, ptr %29, align 8, !tbaa !144
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %34, %43
  %47 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %48 = load i32, ptr %47, align 8, !tbaa !148
  %49 = lshr i32 %48, 16
  %50 = trunc i32 %49 to i16
  %51 = and i16 %50, 1
  %52 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 12
  store i16 %51, ptr %52, align 2, !tbaa !149
  %53 = or i32 %48, 65536
  store i32 %53, ptr %47, align 8, !tbaa !148
  br label %54

54:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: optsize
declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @thread_break(ptr nocapture readnone %0) #6 !PGOFuncName !150 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !58
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: optsize
declare void @RE_Database_Baking(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @do_bake_render(ptr nocapture noundef %0) #1 !PGOFuncName !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 74
  %6 = load i16, ptr %5, align 4, !tbaa !82
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = tail call i32 @RE_bake_shade_all_selected(ptr noundef %2, i32 noundef %7, ptr noundef %9, ptr noundef null, ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 5
  store i32 1, ptr %14, align 4, !tbaa !87
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @blender_test_break() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_bake_internal(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !153 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @RE_Database_Free(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 74
  %6 = load i16, ptr %5, align 4, !tbaa !82
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !147
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = getelementptr inbounds %struct.World, ptr %14, i64 0, i32 23
  %16 = load i16, ptr %15, align 2, !tbaa !145
  %17 = and i16 %16, -65
  store i16 %17, ptr %15, align 2, !tbaa !145
  br label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %12, %8, %18
  %23 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 12
  %24 = load i16, ptr %23, align 2, !tbaa !149
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 47
  %28 = load i32, ptr %27, align 8, !tbaa !148
  %29 = and i32 %28, -65537
  store i32 %29, ptr %27, align 8, !tbaa !148
  br label %30

30:                                               ; preds = %22, %26, %18
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 75
  %32 = load i16, ptr %31, align 2, !tbaa !83
  %33 = and i16 %32, 64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %30
  %36 = load ptr, ptr @G, align 8, !tbaa !154
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  %39 = icmp eq ptr %38, null
  br i1 %39, label %101, label %40

40:                                               ; preds = %35, %77
  %41 = phi ptr [ %78, %77 ], [ %38, %35 ]
  %42 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %41, ptr noundef null, ptr noundef null) #8
  %43 = getelementptr inbounds %struct.Image, ptr %41, i64 0, i32 9
  %44 = load i16, ptr %43, align 4, !tbaa !155
  %45 = icmp eq i16 %44, 2
  %46 = icmp ne ptr %42, null
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ImBuf, ptr %42, i64 0, i32 23
  %50 = load i32, ptr %49, align 4, !tbaa !157
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  tail call void @GPU_free_image(ptr noundef nonnull %41) #8
  tail call void @imb_freemipmapImBuf(ptr noundef nonnull %42) #8
  %54 = load i32, ptr %49, align 4, !tbaa !157
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = or i32 %54, 16
  store i32 %58, ptr %49, align 4, !tbaa !157
  br label %60

59:                                               ; preds = %40
  br i1 %46, label %60, label %77

60:                                               ; preds = %48, %53, %57, %59
  %61 = getelementptr inbounds %struct.ImBuf, ptr %42, i64 0, i32 25
  %62 = load ptr, ptr %61, align 8, !tbaa !160
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BakeImBufuserData, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !161
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %69(ptr noundef nonnull %66) #8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load ptr, ptr %62, align 8, !tbaa !163
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %74(ptr noundef nonnull %71) #8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %76(ptr noundef nonnull %62) #8
  store ptr null, ptr %61, align 8, !tbaa !160
  br label %77

77:                                               ; preds = %60, %75, %59
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %41, ptr noundef %42, ptr noundef null) #8
  tail call void @DAG_id_tag_update(ptr noundef nonnull %41, i16 noundef signext 0) #8
  %78 = load ptr, ptr %41, align 8, !tbaa !94
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %40, !llvm.loop !164

80:                                               ; preds = %77
  %81 = load ptr, ptr %3, align 8, !tbaa !143
  %82 = getelementptr inbounds %struct.Scene, ptr %81, i64 0, i32 22, i32 75
  %83 = load i16, ptr %82, align 2, !tbaa !83
  %84 = and i16 %83, 64
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %30, %80
  %87 = load ptr, ptr @G, align 8, !tbaa !154
  %88 = getelementptr inbounds %struct.Main, ptr %87, i64 0, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !94
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %86, %98
  %92 = phi ptr [ %99, %98 ], [ %89, %86 ]
  %93 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 5
  %94 = load i16, ptr %93, align 2, !tbaa !165
  %95 = and i16 %94, 1024
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  tail call void @DAG_id_tag_update(ptr noundef nonnull %92, i16 noundef signext 2) #8
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %92) #8
  br label %98

98:                                               ; preds = %91, %97
  %99 = load ptr, ptr %92, align 8, !tbaa !94
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %91, !llvm.loop !166

101:                                              ; preds = %98, %35, %86, %80
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @multiresbake_check(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !167 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %5 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = load ptr, ptr %3, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %13

10:                                               ; preds = %92, %58
  %11 = load ptr, ptr %14, align 8, !tbaa !94
  %12 = icmp eq ptr %11, null
  br i1 %12, label %94, label %13, !llvm.loop !168

13:                                               ; preds = %8, %10
  %14 = phi ptr [ %6, %8 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !169
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %9, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.6) #8
  br label %94

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = call ptr @get_multires_modifier(ptr noundef %4, ptr noundef nonnull %18, i8 noundef zeroext 0) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MultiresModifierData, ptr %27, i64 0, i32 4
  %31 = load i8, ptr %30, align 1, !tbaa !170
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i8
  %34 = load ptr, ptr %27, align 8, !tbaa !173
  %35 = icmp ne ptr %34, null
  %36 = select i1 %35, i1 %32, i1 false
  br i1 %36, label %37, label %47

37:                                               ; preds = %29, %37
  %38 = phi ptr [ %41, %37 ], [ %34, %29 ]
  %39 = call zeroext i8 @modifier_isEnabled(ptr noundef %4, ptr noundef nonnull %38, i32 noundef 1) #8
  %40 = icmp eq i8 %39, 0
  %41 = load ptr, ptr %38, align 8, !tbaa !173
  %42 = icmp ne ptr %41, null
  %43 = select i1 %42, i1 %40, i1 false
  %44 = select i1 %43, i1 %32, i1 false
  br i1 %44, label %37, label %45, !llvm.loop !174

45:                                               ; preds = %37
  %46 = select i1 %40, i8 %33, i8 0
  br label %47

47:                                               ; preds = %45, %29
  %48 = phi i8 [ %33, %29 ], [ %46, %45 ]
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %24, %47
  %51 = load ptr, ptr %9, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.7) #8
  br label %94

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !114
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %9, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %57, i32 noundef 32, ptr noundef nonnull @.str.8) #8
  br label %94

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 30
  %60 = load i32, ptr %59, align 8, !tbaa !115
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %10, label %62

62:                                               ; preds = %58
  %63 = sext i32 %60 to i64
  br label %64

64:                                               ; preds = %62, %92
  %65 = phi i64 [ %63, %62 ], [ %66, %92 ]
  %66 = add nsw i64 %65, -1
  %67 = load ptr, ptr %53, align 8, !tbaa !114
  %68 = getelementptr inbounds %struct.MTexPoly, ptr %67, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !175
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load ptr, ptr %9, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %72, i32 noundef 32, ptr noundef nonnull @.str.9) #8
  br label %94

73:                                               ; preds = %64
  %74 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %69, ptr noundef null, ptr noundef null) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ImBuf, ptr %74, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !177
  %79 = icmp eq ptr %78, null
  %80 = getelementptr inbounds %struct.ImBuf, ptr %74, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !178
  %82 = icmp eq ptr %81, null
  %83 = and i1 %79, %82
  %84 = icmp eq ptr %81, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.ImBuf, ptr %74, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !179
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 4, label %88
  ]

88:                                               ; preds = %85, %85, %76
  br i1 %83, label %89, label %92

89:                                               ; preds = %88, %85, %73
  %90 = phi ptr [ @.str.10, %73 ], [ @.str.11, %85 ], [ @.str.11, %88 ]
  %91 = load ptr, ptr %9, align 8, !tbaa !51
  call void @BKE_report(ptr noundef %91, i32 noundef 32, ptr noundef nonnull %90) #8
  call void @BKE_image_release_ibuf(ptr noundef nonnull %69, ptr noundef %74, ptr noundef null) #8
  br label %94

92:                                               ; preds = %88
  call void @BKE_image_release_ibuf(ptr noundef nonnull %69, ptr noundef nonnull %74, ptr noundef null) #8
  %93 = icmp eq i64 %66, 0
  br i1 %93, label %10, label %64, !llvm.loop !180

94:                                               ; preds = %10, %71, %89, %2, %56, %50, %22
  %95 = phi i8 [ 0, %22 ], [ 0, %50 ], [ 0, %56 ], [ 1, %2 ], [ 0, %89 ], [ 0, %71 ], [ 1, %10 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i8 %95
}

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_images(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !181 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %10

7:                                                ; preds = %10
  br i1 %4, label %8, label %37

8:                                                ; preds = %7
  %9 = zext nneg i32 %1 to i64
  br label %22

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %17, %10 ]
  %12 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %11, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !184
  %16 = and i16 %15, -1025
  store i16 %16, ptr %14, align 2, !tbaa !184
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %7, label %10, !llvm.loop !185

19:                                               ; preds = %22
  br i1 %4, label %20, label %37

20:                                               ; preds = %19
  %21 = zext nneg i32 %1 to i64
  br label %28

22:                                               ; preds = %8, %22
  %23 = phi i64 [ 0, %8 ], [ %26, %22 ]
  %24 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  tail call fastcc void @clear_single_image(ptr noundef %25, i32 noundef %2) #9
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %19, label %22, !llvm.loop !186

28:                                               ; preds = %20, %28
  %29 = phi i64 [ 0, %20 ], [ %35, %28 ]
  %30 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %29, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !184
  %34 = and i16 %33, -1025
  store i16 %34, ptr %32, align 2, !tbaa !184
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %21
  br i1 %36, label %37, label %28, !llvm.loop !187

37:                                               ; preds = %28, %3, %7, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_images_poly(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !188 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %10

7:                                                ; preds = %10
  br i1 %4, label %8, label %37

8:                                                ; preds = %7
  %9 = zext nneg i32 %1 to i64
  br label %22

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %17, %10 ]
  %12 = getelementptr inbounds %struct.MTexPoly, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !184
  %16 = and i16 %15, -1025
  store i16 %16, ptr %14, align 2, !tbaa !184
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %7, label %10, !llvm.loop !189

19:                                               ; preds = %22
  br i1 %4, label %20, label %37

20:                                               ; preds = %19
  %21 = zext nneg i32 %1 to i64
  br label %28

22:                                               ; preds = %8, %22
  %23 = phi i64 [ 0, %8 ], [ %26, %22 ]
  %24 = getelementptr inbounds %struct.MTexPoly, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !175
  tail call fastcc void @clear_single_image(ptr noundef %25, i32 noundef %2) #9
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %19, label %22, !llvm.loop !190

28:                                               ; preds = %20, %28
  %29 = phi i64 [ 0, %20 ], [ %35, %28 ]
  %30 = getelementptr inbounds %struct.MTexPoly, ptr %0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !175
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !184
  %34 = and i16 %33, -1025
  store i16 %34, ptr %32, align 2, !tbaa !184
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %21
  br i1 %36, label %37, label %28, !llvm.loop !191

37:                                               ; preds = %28, %3, %7, %19
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @multiresbake_create_hiresdm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !PGOFuncName !192 {
  %5 = alloca %struct.MultiresModifierData, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false), !tbaa.struct !193
  %9 = tail call ptr @CDDM_from_mesh(ptr noundef %7) #8
  %10 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !196
  tail call void @DM_set_only_copy(ptr noundef %9, i64 noundef %10) #8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 3
  tail call void @CustomData_set_only_copy(ptr noundef nonnull %11, i64 noundef %10) #8
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 4
  tail call void @CustomData_set_only_copy(ptr noundef nonnull %12, i64 noundef %10) #8
  %13 = getelementptr inbounds %struct.MultiresModifierData, ptr %8, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !170
  %15 = zext i8 %14 to i32
  store i32 %15, ptr %2, align 4, !tbaa !194
  %16 = getelementptr inbounds %struct.MultiresModifierData, ptr %8, i64 0, i32 5
  %17 = load i8, ptr %16, align 4, !tbaa !197
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %3, align 1, !tbaa !195
  %20 = load i8, ptr %13, align 1, !tbaa !170
  %21 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 1
  store i8 %20, ptr %21, align 8, !tbaa !198
  %22 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 2
  store i8 %20, ptr %22, align 1, !tbaa !199
  %23 = call ptr @multires_make_derived_from_derived(ptr noundef %9, ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #8
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 95
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  call void %25(ptr noundef %9) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #10
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @multiresbake_create_loresdm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !PGOFuncName !200 {
  %4 = alloca %struct.MultiresModifierData, align 8
  %5 = tail call ptr @get_multires_modifier(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %5, i64 120, i1 false), !tbaa.struct !193
  %8 = tail call ptr @CDDM_from_mesh(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !198
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = zext i8 %10 to i32
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 5
  store i8 1, ptr %15, align 4, !tbaa !197
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ 1, %14 ], [ %13, %12 ]
  store i32 %17, ptr %2, align 4
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !196
  %19 = or i64 %18, 32
  tail call void @DM_set_only_copy(ptr noundef %8, i64 noundef %19) #8
  %20 = load i32, ptr %2, align 4, !tbaa !194
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 1
  store i8 %21, ptr %22, align 8, !tbaa !198
  %23 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 2
  store i8 %21, ptr %23, align 1, !tbaa !199
  %24 = call ptr @multires_make_derived_from_derived(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %26 = load ptr, ptr %25, align 8, !tbaa !135
  call void %26(ptr noundef %8) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  ret ptr %24
}

; Function Attrs: optsize
declare void @RE_multires_bake_images(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_single_image(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !201 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.vec_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.nor_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.nor_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.disp_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.disp_solid, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 2, !tbaa !184
  %11 = and i16 %10, 1024
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #8
  %15 = getelementptr inbounds %struct.ImBuf, ptr %14, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !202
  %17 = icmp eq i8 %16, 32
  switch i32 %1, label %22 [
    i32 1, label %18
    i32 2, label %20
  ]

18:                                               ; preds = %13
  %19 = select i1 %17, ptr %5, ptr %6
  br label %24

20:                                               ; preds = %13
  %21 = select i1 %17, ptr %7, ptr %8
  br label %24

22:                                               ; preds = %13
  %23 = select i1 %17, ptr %3, ptr %4
  br label %24

24:                                               ; preds = %20, %22, %18
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ], [ %19, %18 ]
  call void @IMB_rectfill(ptr noundef %14, ptr noundef nonnull %25) #8
  %26 = load i16, ptr %9, align 2, !tbaa !184
  %27 = or i16 %26, 1024
  store i16 %27, ptr %9, align 2, !tbaa !184
  call void @BKE_image_release_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef null) #8
  br label %28

28:                                               ; preds = %24, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @IMB_rectfill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @multires_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_editmode_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RE_bake_shade_all_selected(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @multiresbake_image_exec(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !203 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call fastcc zeroext i8 @multiresbake_check(ptr noundef %0, ptr noundef %1) #9, !range !102
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !94
  %8 = tail call ptr %7(i64 noundef 56, ptr noundef nonnull @.str.17) #8
  tail call fastcc void @init_multiresbake_job(ptr noundef %0, ptr noundef %8) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.5) #8
  br label %20

14:                                               ; preds = %6
  %15 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %16 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %17 = tail call ptr @WM_jobs_get(ptr noundef %15, ptr noundef %16, ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef 7) #8
  tail call void @WM_jobs_customdata_set(ptr noundef %17, ptr noundef nonnull %8, ptr noundef nonnull @multiresbake_freejob) #8
  tail call void @WM_jobs_timer(ptr noundef %17, double noundef 5.000000e-01, i32 noundef 167772160, i32 noundef 0) #8
  tail call void @WM_jobs_callbacks(ptr noundef %17, ptr noundef nonnull @multiresbake_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #8
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !58
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  tail call void @WM_jobs_start(ptr noundef %18, ptr noundef %17) #8
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #8
  %19 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  br label %20

20:                                               ; preds = %2, %14, %11
  %21 = phi i32 [ 1, %14 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %21
}

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bake_freejob(ptr noundef %0) #1 !PGOFuncName !206 {
  tail call fastcc void @finish_bake_internal(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !91
  switch i32 %3, label %10 [
    i32 1, label %4
    i32 2, label %7
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %6, i32 noundef 32, ptr noundef nonnull @.str.20) #8
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @BKE_report(ptr noundef %9, i32 noundef 16, ptr noundef nonnull @.str.4) #8
  br label %10

10:                                               ; preds = %1, %7, %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %11(ptr noundef nonnull %0) #8
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !95
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bake_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !207 {
  %5 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  %9 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 7
  store ptr %1, ptr %9, align 8, !tbaa !208
  %10 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 8
  store ptr %2, ptr %10, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 9
  store ptr %3, ptr %11, align 8, !tbaa !152
  %12 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @RE_test_break_cb(ptr noundef %12, ptr noundef null, ptr noundef nonnull @thread_break) #8
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !58
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 74
  %17 = load i16, ptr %16, align 4, !tbaa !82
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  tail call void @RE_Database_Baking(ptr noundef %13, ptr noundef %8, ptr noundef %6, i32 noundef %15, i32 noundef %18, ptr noundef %20) #8
  %21 = load ptr, ptr %0, align 8, !tbaa !57
  %22 = load i16, ptr %16, align 4, !tbaa !82
  %23 = sext i16 %22 to i32
  %24 = load ptr, ptr %19, align 8, !tbaa !144
  %25 = load ptr, ptr %10, align 8, !tbaa !209
  %26 = load ptr, ptr %11, align 8, !tbaa !152
  %27 = tail call i32 @RE_bake_shade_all_selected(ptr noundef %21, i32 noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26) #8
  %28 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bake_update(ptr nocapture noundef readonly %0) #1 !PGOFuncName !210 {
  %2 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !211
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @RE_bake_shade_get_image() #8
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !214
  br label %16

16:                                               ; preds = %9, %13, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_multiresbake_job(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !220 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 73
  %7 = load i16, ptr %6, align 2, !tbaa !117
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !221
  %10 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 74
  %11 = load i16, ptr %10, align 4, !tbaa !82
  %12 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 3
  store i16 %11, ptr %12, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 75
  %14 = load i16, ptr %13, align 2, !tbaa !83
  %15 = trunc i16 %14 to i8
  %16 = and i8 %15, 32
  %17 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 4
  store i8 %16, ptr %17, align 2, !tbaa !223
  %18 = and i8 %15, 1
  %19 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 1
  store i8 %18, ptr %19, align 8, !tbaa !224
  %20 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 79
  %21 = load float, ptr %20, align 8, !tbaa !122
  %22 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 6
  store float %21, ptr %22, align 8, !tbaa !225
  %23 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 80
  %24 = load i16, ptr %23, align 4, !tbaa !124
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !226
  %27 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 49
  %28 = load i16, ptr %27, align 8, !tbaa !126
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 7
  store i32 %29, ptr %30, align 4, !tbaa !227
  %31 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 51
  %32 = load i16, ptr %31, align 4, !tbaa !128
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 8
  store i32 %33, ptr %34, align 8, !tbaa !228
  %35 = tail call i32 @BKE_scene_num_threads(ptr noundef %5) #8
  %36 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 9
  store i32 %35, ptr %36, align 4, !tbaa !229
  %37 = load i16, ptr %13, align 2, !tbaa !83
  %38 = and i16 %37, 128
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 82
  %42 = load float, ptr %41, align 8, !tbaa !131
  br label %43

43:                                               ; preds = %2, %40
  %44 = phi float [ %42, %40 ], [ -1.000000e+00, %2 ]
  %45 = getelementptr inbounds %struct.MultiresBakeJob, ptr %1, i64 0, i32 10
  store float %44, ptr %45, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %46 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #8
  %47 = load ptr, ptr %3, align 8, !tbaa !94
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %43, %49
  %50 = phi ptr [ %65, %49 ], [ %47, %43 ]
  %51 = getelementptr inbounds %struct.CollectionPointerLink, ptr %50, i64 0, i32 2, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %53 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  call void @multires_force_update(ptr noundef %54) #8
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !94
  %56 = call ptr %55(i64 noundef 64, ptr noundef nonnull @.str.19) #8
  %57 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %56, i64 0, i32 6
  %58 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %56, i64 0, i32 4
  %59 = call fastcc ptr @multiresbake_create_hiresdm(ptr noundef %5, ptr noundef %54, ptr noundef nonnull %57, ptr noundef nonnull %58) #9
  %60 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %56, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !231
  %61 = call fastcc ptr @multiresbake_create_loresdm(ptr noundef %5, ptr noundef %54, ptr noundef nonnull %4) #9
  %62 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %56, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !233
  %63 = load i32, ptr %4, align 4, !tbaa !194
  %64 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %56, i64 0, i32 5
  store i32 %63, ptr %64, align 4, !tbaa !234
  call void @BLI_addtail(ptr noundef %1, ptr noundef %56) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %65 = load ptr, ptr %50, align 8, !tbaa !94
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %49, !llvm.loop !235

67:                                               ; preds = %49, %43
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @multiresbake_freejob(ptr noundef %0) #1 !PGOFuncName !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !204
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %24
  %5 = phi ptr [ %6, %24 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  %7 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !233
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  tail call void %10(ptr noundef %8) #8
  %11 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !231
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  tail call void %14(ptr noundef %12) #8
  %15 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %4 ]
  %20 = getelementptr inbounds %struct.LinkData, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !238
  tail call void @GPU_free_image(ptr noundef %21) #8
  %22 = load ptr, ptr %19, align 8, !tbaa !94
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !240

24:                                               ; preds = %18, %4
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #8
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %25(ptr noundef nonnull %5) #8
  %26 = icmp eq ptr %6, null
  br i1 %26, label %27, label %4, !llvm.loop !241

27:                                               ; preds = %24, %1
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !94
  tail call void %28(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @multiresbake_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !242 {
  %5 = alloca %struct.MultiresBakeRender, align 16
  %6 = tail call i32 @BLI_countlist(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !224
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %0, align 8, !tbaa !94
  br i1 %9, label %33, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %82, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %24
  %16 = phi ptr [ %10, %13 ], [ %29, %24 ]
  %17 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !233
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %19, i32 noundef 5) #8
  %21 = load i16, ptr %14, align 8, !tbaa !222
  switch i16 %21, label %23 [
    i16 3, label %24
    i16 5, label %22
    i16 13, label %22
  ]

22:                                               ; preds = %15, %15
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %15, %23, %22
  %25 = phi i32 [ 2, %22 ], [ 1, %15 ], [ 0, %23 ]
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 25
  %27 = load ptr, ptr %26, align 8, !tbaa !243
  %28 = tail call i32 %27(ptr noundef %18) #8
  tail call fastcc void @clear_images(ptr noundef %20, i32 noundef %28, i32 noundef %25) #9
  %29 = load ptr, ptr %16, align 8, !tbaa !94
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !244

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !94
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi ptr [ %32, %31 ], [ %10, %4 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %82, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 3
  %39 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 6
  %41 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 4
  %42 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 7
  %43 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 10
  %44 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 18
  %45 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 4
  %46 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 2
  %47 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 10
  %48 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 13
  %49 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 19
  %50 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 20
  %51 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 21
  %52 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 6
  %53 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 9
  %54 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 5
  %55 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 8
  %56 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 7
  %57 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 15
  %58 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 9
  %59 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 17
  %60 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 12
  br label %61

61:                                               ; preds = %36, %61
  %62 = phi ptr [ %34, %36 ], [ %80, %61 ]
  %63 = phi i32 [ 0, %36 ], [ %79, %61 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %64 = load i32, ptr %37, align 4, !tbaa !221
  store i32 %64, ptr %38, align 4, !tbaa !118
  %65 = load i16, ptr %39, align 8, !tbaa !222
  store i16 %65, ptr %40, align 16, !tbaa !120
  %66 = load i8, ptr %41, align 2, !tbaa !223
  store i8 %66, ptr %42, align 2, !tbaa !121
  %67 = load float, ptr %43, align 8, !tbaa !230
  store float %67, ptr %44, align 4, !tbaa !132
  %68 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %62, i64 0, i32 2
  %69 = load <2 x ptr>, ptr %68, align 8, !tbaa !94
  store <2 x ptr> %69, ptr %5, align 16, !tbaa !94
  %70 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %62, i64 0, i32 5
  %71 = load <2 x i32>, ptr %70, align 4, !tbaa !194
  store <2 x i32> %71, ptr %45, align 8, !tbaa !194
  %72 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %62, i64 0, i32 4
  %73 = load i8, ptr %72, align 8, !tbaa !245
  store i8 %73, ptr %46, align 16, !tbaa !246
  store i32 %6, ptr %47, align 4, !tbaa !247
  store i32 %63, ptr %48, align 8, !tbaa !248
  store ptr %1, ptr %49, align 16, !tbaa !249
  store ptr %2, ptr %50, align 8, !tbaa !250
  store ptr %3, ptr %51, align 16, !tbaa !251
  %74 = load float, ptr %52, align 8, !tbaa !225
  store float %74, ptr %53, align 8, !tbaa !123
  %75 = load i32, ptr %54, align 4, !tbaa !226
  store i32 %75, ptr %55, align 4, !tbaa !125
  %76 = load <2 x i32>, ptr %56, align 4, !tbaa !194
  store <2 x i32> %76, ptr %57, align 16, !tbaa !194
  %77 = load i32, ptr %58, align 4, !tbaa !229
  store i32 %77, ptr %59, align 8, !tbaa !130
  call void @RE_multires_bake_images(ptr noundef nonnull %5) #8
  %78 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %62, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false), !tbaa.struct !252
  %79 = add nuw nsw i32 %63, 1
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #10
  %80 = load ptr, ptr %62, align 8, !tbaa !94
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %61, !llvm.loop !253

82:                                               ; preds = %61, %11, %33
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_bake_shade_get_image() local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!47 = !{!35, !36, i64 72}
!48 = !{!"object_bake.c:bake_image_exec"}
!49 = !{i8 0, i8 17}
!50 = !{i32 2, i32 5}
!51 = !{!52, !36, i64 120}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{i32 0, i32 2}
!54 = !{!55, !36, i64 40}
!55 = !{!"BakeRender", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !56, i64 32, !56, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !41, i64 88, !41, i64 90, !36, i64 96}
!56 = !{!"int", !37, i64 0}
!57 = !{!55, !36, i64 0}
!58 = !{!59, !37, i64 2080}
!59 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !56, i64 2096, !56, i64 2100, !37, i64 2104, !56, i64 2108, !56, i64 2112, !37, i64 2116}
!60 = !{!61, !56, i64 232}
!61 = !{!"Scene", !62, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !56, i64 232, !56, i64 236, !56, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !63, i64 280, !73, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !56, i64 4380, !39, i64 4384, !74, i64 4400, !75, i64 4416, !78, i64 4600, !36, i64 4608, !79, i64 4616, !36, i64 4640, !80, i64 4648, !80, i64 4656, !66, i64 4664, !67, i64 4824, !81, i64 4888, !36, i64 4952}
!62 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!63 = !{!"RenderData", !64, i64 0, !36, i64 248, !36, i64 256, !68, i64 264, !69, i64 328, !56, i64 400, !56, i64 404, !56, i64 408, !65, i64 412, !56, i64 416, !56, i64 420, !56, i64 424, !56, i64 428, !41, i64 432, !41, i64 434, !65, i64 436, !65, i64 440, !65, i64 444, !65, i64 448, !65, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !56, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !56, i64 484, !56, i64 488, !41, i64 492, !41, i64 494, !56, i64 496, !56, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !56, i64 516, !56, i64 520, !56, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !70, i64 544, !70, i64 560, !71, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !65, i64 612, !65, i64 616, !65, i64 620, !65, i64 624, !56, i64 628, !65, i64 632, !65, i64 636, !65, i64 640, !65, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !65, i64 660, !65, i64 664, !41, i64 668, !41, i64 670, !65, i64 672, !65, i64 676, !37, i64 680, !56, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !56, i64 2520, !41, i64 2524, !41, i64 2526, !65, i64 2528, !65, i64 2532, !41, i64 2536, !41, i64 2538, !65, i64 2540, !41, i64 2544, !41, i64 2546, !56, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !65, i64 2560, !65, i64 2564, !36, i64 2568, !56, i64 2576, !65, i64 2580, !37, i64 2584, !72, i64 2616, !56, i64 3976, !56, i64 3980}
!64 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !65, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !66, i64 24, !67, i64 184}
!65 = !{!"float", !37, i64 0}
!66 = !{!"ColorManagedViewSettings", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 72, !65, i64 136, !65, i64 140, !36, i64 144, !36, i64 152}
!67 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!68 = !{!"QuicktimeCodecSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !41, i64 48, !41, i64 50, !56, i64 52, !56, i64 56, !56, i64 60}
!69 = !{!"FFMpegCodecData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !65, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !36, i64 64}
!70 = !{!"rctf", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12}
!71 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!72 = !{!"BakeData", !64, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !65, i64 1280, !65, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!73 = !{!"AudioData", !56, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !56, i64 16, !41, i64 20, !41, i64 22, !65, i64 24, !65, i64 28}
!74 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!75 = !{!"GameData", !74, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !76, i64 40, !41, i64 64, !41, i64 66, !65, i64 68, !77, i64 72, !65, i64 128, !65, i64 132, !56, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !65, i64 164, !65, i64 168, !65, i64 172, !65, i64 176, !65, i64 180}
!76 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !65, i64 8, !65, i64 12, !36, i64 16}
!77 = !{!"RecastData", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !65, i64 36, !56, i64 40, !65, i64 44, !65, i64 48, !41, i64 52, !41, i64 54}
!78 = !{!"UnitSettings", !65, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!79 = !{!"PhysicsSettings", !37, i64 0, !56, i64 12, !56, i64 16, !56, i64 20}
!80 = !{!"long", !37, i64 0}
!81 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!82 = !{!61, !41, i64 932}
!83 = !{!61, !41, i64 934}
!84 = !{!61, !36, i64 168}
!85 = !{!86, !36, i64 32}
!86 = !{!"Base", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 20, !56, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!87 = !{!55, !56, i64 36}
!88 = !{!59, !37, i64 2081}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!55, !56, i64 32}
!92 = !{!"object_bake.c:objects_bake_render_invoke"}
!93 = !{i32 1, i32 3}
!94 = !{!36, !36, i64 0}
!95 = !{!59, !37, i64 2090}
!96 = !{!"object_bake.c:objects_bake_render_modal"}
!97 = !{!98, !41, i64 16}
!98 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !56, i64 48, !56, i64 52, !99, i64 56, !56, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !36, i64 112}
!99 = !{!"double", !37, i64 0}
!100 = !{!"object_bake.c:is_multires_bake"}
!101 = !{!"object_bake.c:multiresbake_image_exec_locked"}
!102 = !{i8 0, i8 2}
!103 = !{!104, !36, i64 32}
!104 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !105, i64 16}
!105 = !{!"PointerRNA", !106, i64 0, !36, i64 8, !36, i64 16}
!106 = !{!"", !36, i64 0}
!107 = !{!108, !36, i64 296}
!108 = !{!"Object", !62, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !109, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !56, i64 432, !56, i64 436, !36, i64 440, !36, i64 448, !56, i64 456, !56, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !65, i64 616, !65, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !56, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !56, i64 968, !56, i64 972, !56, i64 976, !56, i64 980, !56, i64 984, !65, i64 988, !65, i64 992, !65, i64 996, !65, i64 1000, !65, i64 1004, !65, i64 1008, !65, i64 1012, !65, i64 1016, !65, i64 1020, !65, i64 1024, !65, i64 1028, !65, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !65, i64 1048, !65, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !65, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !56, i64 1144, !56, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !65, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !80, i64 1304, !80, i64 1312, !56, i64 1320, !56, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!109 = !{!"bAnimVizSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44}
!110 = !{!111, !36, i64 216}
!111 = !{!"Mesh", !62, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !112, i64 280, !112, i64 480, !112, i64 680, !112, i64 880, !112, i64 1080, !56, i64 1280, !56, i64 1284, !56, i64 1288, !56, i64 1292, !56, i64 1296, !56, i64 1300, !56, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !56, i64 1344, !41, i64 1348, !41, i64 1350, !65, i64 1352, !56, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!112 = !{!"CustomData", !36, i64 0, !37, i64 8, !56, i64 172, !56, i64 176, !56, i64 180, !36, i64 184, !36, i64 192}
!113 = !{!111, !56, i64 1288}
!114 = !{!111, !36, i64 176}
!115 = !{!111, !56, i64 1296}
!116 = distinct !{!116, !90}
!117 = !{!61, !41, i64 930}
!118 = !{!119, !56, i64 20}
!119 = !{!"MultiresBakeRender", !36, i64 0, !36, i64 8, !37, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !41, i64 32, !37, i64 34, !56, i64 36, !65, i64 40, !56, i64 44, !56, i64 48, !39, i64 56, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84, !56, i64 88, !65, i64 92, !36, i64 96, !36, i64 104, !36, i64 112}
!120 = !{!119, !41, i64 32}
!121 = !{!119, !37, i64 34}
!122 = !{!61, !65, i64 944}
!123 = !{!119, !65, i64 40}
!124 = !{!61, !41, i64 948}
!125 = !{!119, !56, i64 36}
!126 = !{!61, !41, i64 808}
!127 = !{!119, !56, i64 80}
!128 = !{!61, !41, i64 812}
!129 = !{!119, !56, i64 84}
!130 = !{!119, !56, i64 88}
!131 = !{!61, !65, i64 952}
!132 = !{!119, !65, i64 92}
!133 = !{!119, !36, i64 8}
!134 = !{!119, !36, i64 0}
!135 = !{!136, !36, i64 1680}
!136 = !{!"DerivedMesh", !112, i64 0, !112, i64 200, !112, i64 400, !112, i64 600, !112, i64 800, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !36, i64 1032, !36, i64 1040, !56, i64 1048, !65, i64 1052, !56, i64 1056, !56, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!137 = distinct !{!137, !90}
!138 = !{!"object_bake.c:test_bake_internal"}
!139 = !{!61, !36, i64 136}
!140 = !{!"object_bake.c:init_bake_internal"}
!141 = !{!55, !36, i64 96}
!142 = !{!55, !36, i64 8}
!143 = !{!55, !36, i64 16}
!144 = !{!55, !36, i64 24}
!145 = !{!146, !41, i64 202}
!146 = !{!"World", !62, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !65, i64 136, !65, i64 140, !65, i64 144, !65, i64 148, !65, i64 152, !65, i64 156, !65, i64 160, !65, i64 164, !65, i64 168, !65, i64 172, !65, i64 176, !65, i64 180, !65, i64 184, !65, i64 188, !65, i64 192, !65, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !65, i64 216, !65, i64 220, !65, i64 224, !65, i64 228, !65, i64 232, !65, i64 236, !65, i64 240, !65, i64 244, !65, i64 248, !65, i64 252, !65, i64 256, !65, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !65, i64 272, !65, i64 276, !65, i64 280, !65, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !65, i64 296, !65, i64 300, !65, i64 304, !65, i64 308, !65, i64 312, !65, i64 316, !65, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !41, i64 504, !41, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!147 = !{!55, !41, i64 88}
!148 = !{!61, !56, i64 800}
!149 = !{!55, !41, i64 90}
!150 = !{!"object_bake.c:thread_break"}
!151 = !{!"object_bake.c:do_bake_render"}
!152 = !{!55, !36, i64 64}
!153 = !{!"object_bake.c:finish_bake_internal"}
!154 = !{!59, !36, i64 0}
!155 = !{!156, !41, i64 1244}
!156 = !{!"Image", !62, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !56, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !56, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !65, i64 1296, !56, i64 1300, !41, i64 1304, !41, i64 1306, !56, i64 1308, !56, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !65, i64 1336, !65, i64 1340, !81, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!157 = !{!158, !56, i64 292}
!158 = !{!"ImBuf", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 20, !37, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !65, i64 112, !37, i64 120, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !36, i64 296, !36, i64 304, !56, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !56, i64 2376, !36, i64 2384, !56, i64 2392, !56, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !56, i64 2432, !71, i64 2436, !159, i64 2456}
!159 = !{!"DDSData", !56, i64 0, !56, i64 4, !36, i64 8, !56, i64 16}
!160 = !{!158, !36, i64 304}
!161 = !{!162, !36, i64 8}
!162 = !{!"BakeImBufuserData", !36, i64 0, !36, i64 8}
!163 = !{!162, !36, i64 0}
!164 = distinct !{!164, !90}
!165 = !{!111, !41, i64 98}
!166 = distinct !{!166, !90}
!167 = !{!"object_bake.c:multiresbake_check"}
!168 = distinct !{!168, !90}
!169 = !{!108, !41, i64 136}
!170 = !{!171, !37, i64 115}
!171 = !{!"MultiresModifierData", !172, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118}
!172 = !{!"ModifierData", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!173 = !{!172, !36, i64 0}
!174 = distinct !{!174, !90}
!175 = !{!176, !36, i64 0}
!176 = !{!"MTexPoly", !36, i64 0, !37, i64 8, !37, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!177 = !{!158, !36, i64 40}
!178 = !{!158, !36, i64 48}
!179 = !{!158, !56, i64 28}
!180 = distinct !{!180, !90}
!181 = !{!"object_bake.c:clear_images"}
!182 = !{!183, !36, i64 32}
!183 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !41, i64 44, !41, i64 46}
!184 = !{!156, !41, i64 98}
!185 = distinct !{!185, !90}
!186 = distinct !{!186, !90}
!187 = distinct !{!187, !90}
!188 = !{!"object_bake.c:clear_images_poly"}
!189 = distinct !{!189, !90}
!190 = distinct !{!190, !90}
!191 = distinct !{!191, !90}
!192 = !{!"object_bake.c:multiresbake_create_hiresdm"}
!193 = !{i64 0, i64 8, !94, i64 8, i64 8, !94, i64 16, i64 4, !194, i64 20, i64 4, !194, i64 24, i64 4, !194, i64 28, i64 4, !194, i64 32, i64 64, !195, i64 96, i64 8, !94, i64 104, i64 8, !94, i64 112, i64 1, !195, i64 113, i64 1, !195, i64 114, i64 1, !195, i64 115, i64 1, !195, i64 116, i64 1, !195, i64 117, i64 1, !195, i64 118, i64 2, !195}
!194 = !{!56, !56, i64 0}
!195 = !{!37, !37, i64 0}
!196 = !{!80, !80, i64 0}
!197 = !{!171, !37, i64 116}
!198 = !{!171, !37, i64 112}
!199 = !{!171, !37, i64 113}
!200 = !{!"object_bake.c:multiresbake_create_loresdm"}
!201 = !{!"object_bake.c:clear_single_image"}
!202 = !{!158, !37, i64 24}
!203 = !{!"object_bake.c:multiresbake_image_exec"}
!204 = !{!205, !36, i64 0}
!205 = !{!"", !39, i64 0, !37, i64 16, !56, i64 20, !41, i64 24, !37, i64 26, !56, i64 28, !65, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !65, i64 48}
!206 = !{!"object_bake.c:bake_freejob"}
!207 = !{!"object_bake.c:bake_startjob"}
!208 = !{!55, !36, i64 48}
!209 = !{!55, !36, i64 56}
!210 = !{!"object_bake.c:bake_update"}
!211 = !{!212, !37, i64 72}
!212 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !71, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!213 = !{!212, !36, i64 96}
!214 = !{!215, !36, i64 40}
!215 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !56, i64 36, !36, i64 40, !216, i64 48, !36, i64 88, !217, i64 96, !218, i64 5360, !36, i64 10520, !37, i64 10528, !65, i64 10536, !65, i64 10540, !65, i64 10544, !65, i64 10548, !65, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !219, i64 10568}
!216 = !{!"ImageUser", !36, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !56, i64 36}
!217 = !{!"Scopes", !56, i64 0, !56, i64 4, !56, i64 8, !65, i64 12, !56, i64 16, !65, i64 20, !65, i64 24, !56, i64 28, !65, i64 32, !56, i64 36, !37, i64 40, !218, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !56, i64 5256, !56, i64 5260}
!218 = !{!"Histogram", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !65, i64 5128, !65, i64 5132, !41, i64 5136, !41, i64 5138, !56, i64 5140, !37, i64 5144}
!219 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!220 = !{!"object_bake.c:init_multiresbake_job"}
!221 = !{!205, !56, i64 20}
!222 = !{!205, !41, i64 24}
!223 = !{!205, !37, i64 26}
!224 = !{!205, !37, i64 16}
!225 = !{!205, !65, i64 32}
!226 = !{!205, !56, i64 28}
!227 = !{!205, !56, i64 36}
!228 = !{!205, !56, i64 40}
!229 = !{!205, !56, i64 44}
!230 = !{!205, !65, i64 48}
!231 = !{!232, !36, i64 24}
!232 = !{!"MultiresBakerJobData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !56, i64 36, !56, i64 40, !39, i64 48}
!233 = !{!232, !36, i64 16}
!234 = !{!232, !56, i64 36}
!235 = distinct !{!235, !90}
!236 = !{!"object_bake.c:multiresbake_freejob"}
!237 = !{!232, !36, i64 0}
!238 = !{!239, !36, i64 16}
!239 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!240 = distinct !{!240, !90}
!241 = distinct !{!241, !90}
!242 = !{!"object_bake.c:multiresbake_startjob"}
!243 = !{!136, !36, i64 1120}
!244 = distinct !{!244, !90}
!245 = !{!232, !37, i64 32}
!246 = !{!119, !37, i64 16}
!247 = !{!119, !56, i64 44}
!248 = !{!119, !56, i64 72}
!249 = !{!119, !36, i64 96}
!250 = !{!119, !36, i64 104}
!251 = !{!119, !36, i64 112}
!252 = !{i64 0, i64 8, !94, i64 8, i64 8, !94}
!253 = distinct !{!253, !90}
