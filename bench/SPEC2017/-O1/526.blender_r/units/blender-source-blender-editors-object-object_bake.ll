; ModuleID = 'blender/source/blender/editors/object/object_bake.c'
source_filename = "blender/source/blender/editors/object/object_bake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MultiresBakeRender = type { ptr, ptr, i8, i32, i32, i32, i16, i8, i32, float, i32, i32, %struct.ListBase, i32, i32, i32, i32, i32, float, ptr, ptr, ptr }
%struct.BakeRender = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.ListBase, i16, i16, ptr }
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
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.MultiresBakeJob = type { %struct.ListBase, i8, i32, i16, i8, i32, float, i32, i32, i32, float }
%struct.MultiresBakerJobData = type { ptr, ptr, ptr, ptr, i8, i32, i32, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.BakeImBufuserData = type { ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @bake_image_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.MultiresModifierData, align 8
  %4 = alloca %struct.MultiresModifierData, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.MultiresBakeRender, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.BakeRender, align 8
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 74
  %13 = load i16, ptr %12, align 4, !tbaa !48
  switch i16 %13, label %19 [
    i16 3, label %14
    i16 5, label %14
    i16 13, label %14
    i16 2, label %14
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 75
  %16 = load i16, ptr %15, align 2, !tbaa !71
  %17 = trunc i16 %16 to i8
  %18 = and i8 %17, 16
  br label %19

19:                                               ; preds = %2, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %2 ]
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %235, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %24 = tail call fastcc zeroext i8 @multiresbake_check(ptr noundef %0, ptr noundef %1), !range !72
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %300, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 75
  %28 = load i16, ptr %27, align 2, !tbaa !71
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %131, label %31

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %32 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %5) #7
  %33 = load ptr, ptr %5, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %130, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 74
  br label %40

37:                                               ; preds = %121, %111
  %38 = load ptr, ptr %41, align 8, !tbaa !73
  %39 = icmp eq ptr %38, null
  br i1 %39, label %130, label %40, !llvm.loop !74

40:                                               ; preds = %35, %37
  %41 = phi ptr [ %33, %35 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.CollectionPointerLink, ptr %41, i64 0, i32 2, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !83
  %48 = load i16, ptr %36, align 4, !tbaa !48
  switch i16 %48, label %50 [
    i16 3, label %51
    i16 5, label %49
    i16 13, label %49
  ]

49:                                               ; preds = %40, %40
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %49, %40
  %52 = phi i32 [ 2, %49 ], [ 1, %40 ], [ 0, %50 ]
  %53 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 28
  %56 = load i32, ptr %55, align 8, !tbaa !89
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %51
  %59 = zext nneg i32 %56 to i64
  br label %63

60:                                               ; preds = %63
  br i1 %57, label %61, label %90

61:                                               ; preds = %60
  %62 = zext nneg i32 %56 to i64
  br label %75

63:                                               ; preds = %63, %58
  %64 = phi i64 [ 0, %58 ], [ %70, %63 ]
  %65 = getelementptr inbounds %struct.MTFace, ptr %54, i64 %64, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  %67 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 5
  %68 = load i16, ptr %67, align 2, !tbaa !92
  %69 = and i16 %68, -1025
  store i16 %69, ptr %67, align 2, !tbaa !92
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp eq i64 %70, %59
  br i1 %71, label %60, label %63, !llvm.loop !94

72:                                               ; preds = %75
  br i1 %57, label %73, label %90

73:                                               ; preds = %72
  %74 = zext nneg i32 %56 to i64
  br label %81

75:                                               ; preds = %75, %61
  %76 = phi i64 [ 0, %61 ], [ %79, %75 ]
  %77 = getelementptr inbounds %struct.MTFace, ptr %54, i64 %76, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !90
  call fastcc void @clear_single_image(ptr noundef %78, i32 noundef %52)
  %79 = add nuw nsw i64 %76, 1
  %80 = icmp eq i64 %79, %62
  br i1 %80, label %72, label %75, !llvm.loop !95

81:                                               ; preds = %81, %73
  %82 = phi i64 [ 0, %73 ], [ %88, %81 ]
  %83 = getelementptr inbounds %struct.MTFace, ptr %54, i64 %82, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !90
  %85 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !92
  %87 = and i16 %86, -1025
  store i16 %87, ptr %85, align 2, !tbaa !92
  %88 = add nuw nsw i64 %82, 1
  %89 = icmp eq i64 %88, %74
  br i1 %89, label %90, label %81, !llvm.loop !96

90:                                               ; preds = %81, %51, %60, %72
  %91 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !97
  %93 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 30
  %94 = load i32, ptr %93, align 8, !tbaa !98
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = zext nneg i32 %94 to i64
  br label %102

98:                                               ; preds = %102, %90
  %99 = icmp sgt i32 %94, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %98
  %101 = zext nneg i32 %94 to i64
  br label %115

102:                                              ; preds = %96, %102
  %103 = phi i64 [ 0, %96 ], [ %109, %102 ]
  %104 = getelementptr inbounds %struct.MTexPoly, ptr %92, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !99
  %106 = getelementptr inbounds %struct.ID, ptr %105, i64 0, i32 5
  %107 = load i16, ptr %106, align 2, !tbaa !92
  %108 = and i16 %107, -1025
  store i16 %108, ptr %106, align 2, !tbaa !92
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %109, %97
  br i1 %110, label %98, label %102, !llvm.loop !101

111:                                              ; preds = %115, %98
  %112 = icmp sgt i32 %94, 0
  br i1 %112, label %113, label %37

113:                                              ; preds = %111
  %114 = zext nneg i32 %94 to i64
  br label %121

115:                                              ; preds = %100, %115
  %116 = phi i64 [ 0, %100 ], [ %119, %115 ]
  %117 = getelementptr inbounds %struct.MTexPoly, ptr %92, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !99
  call fastcc void @clear_single_image(ptr noundef %118, i32 noundef %52)
  %119 = add nuw nsw i64 %116, 1
  %120 = icmp eq i64 %119, %101
  br i1 %120, label %111, label %115, !llvm.loop !102

121:                                              ; preds = %113, %121
  %122 = phi i64 [ 0, %113 ], [ %128, %121 ]
  %123 = getelementptr inbounds %struct.MTexPoly, ptr %92, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !99
  %125 = getelementptr inbounds %struct.ID, ptr %124, i64 0, i32 5
  %126 = load i16, ptr %125, align 2, !tbaa !92
  %127 = and i16 %126, -1025
  store i16 %127, ptr %125, align 2, !tbaa !92
  %128 = add nuw nsw i64 %122, 1
  %129 = icmp eq i64 %128, %114
  br i1 %129, label %37, label %121, !llvm.loop !103

130:                                              ; preds = %37, %31
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %131

131:                                              ; preds = %130, %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %132 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %6) #7
  %133 = load ptr, ptr %6, align 8, !tbaa !73
  %134 = icmp eq ptr %133, null
  br i1 %134, label %231, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 73
  %137 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 3
  %138 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 74
  %139 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 6
  %140 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 7
  %141 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 79
  %142 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 9
  %143 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 80
  %144 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 8
  %145 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 49
  %146 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 15
  %147 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 51
  %148 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 16
  %149 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 17
  %150 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 22, i32 82
  %151 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 18
  %152 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 5
  %153 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 2
  %154 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %155 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 1
  %156 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 2
  %157 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 1
  %158 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 4
  %159 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 5
  %160 = or i64 %154, 32
  %161 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 1
  %162 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 2
  %163 = getelementptr inbounds %struct.MultiresBakeRender, ptr %7, i64 0, i32 12
  br label %164

164:                                              ; preds = %135, %216
  %165 = phi ptr [ %133, %135 ], [ %228, %216 ]
  %166 = getelementptr inbounds %struct.CollectionPointerLink, ptr %165, i64 0, i32 2, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 120, i1 false)
  %168 = getelementptr inbounds %struct.Base, ptr %167, i64 0, i32 7
  %169 = load ptr, ptr %168, align 8, !tbaa !81
  call void @multires_force_update(ptr noundef %169) #7
  %170 = load i16, ptr %136, align 2, !tbaa !104
  %171 = sext i16 %170 to i32
  store i32 %171, ptr %137, align 4, !tbaa !105
  %172 = load i16, ptr %138, align 4, !tbaa !48
  store i16 %172, ptr %139, align 8, !tbaa !107
  %173 = load i16, ptr %27, align 2, !tbaa !71
  %174 = trunc i16 %173 to i8
  %175 = and i8 %174, 32
  store i8 %175, ptr %140, align 2, !tbaa !108
  %176 = load float, ptr %141, align 8, !tbaa !109
  store float %176, ptr %142, align 8, !tbaa !110
  %177 = load i16, ptr %143, align 4, !tbaa !111
  %178 = sext i16 %177 to i32
  store i32 %178, ptr %144, align 4, !tbaa !112
  %179 = load i16, ptr %145, align 8, !tbaa !113
  %180 = sext i16 %179 to i32
  store i32 %180, ptr %146, align 8, !tbaa !114
  %181 = load i16, ptr %147, align 4, !tbaa !115
  %182 = sext i16 %181 to i32
  store i32 %182, ptr %148, align 4, !tbaa !116
  %183 = call i32 @BKE_scene_num_threads(ptr noundef %23) #7
  store i32 %183, ptr %149, align 8, !tbaa !117
  %184 = load i16, ptr %27, align 2, !tbaa !71
  %185 = and i16 %184, 128
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %164
  %188 = load float, ptr %150, align 8, !tbaa !118
  br label %189

189:                                              ; preds = %187, %164
  %190 = phi float [ %188, %187 ], [ -1.000000e+00, %164 ]
  store float %190, ptr %151, align 4, !tbaa !119
  %191 = getelementptr inbounds %struct.Object, ptr %169, i64 0, i32 19
  %192 = load ptr, ptr %191, align 8, !tbaa !83
  %193 = call ptr @get_multires_modifier(ptr noundef %23, ptr noundef %169, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %193, i64 120, i1 false), !tbaa.struct !120
  %194 = call ptr @CDDM_from_mesh(ptr noundef %192) #7
  call void @DM_set_only_copy(ptr noundef %194, i64 noundef %154) #7
  %195 = getelementptr inbounds %struct.DerivedMesh, ptr %194, i64 0, i32 3
  call void @CustomData_set_only_copy(ptr noundef nonnull %195, i64 noundef %154) #7
  %196 = getelementptr inbounds %struct.DerivedMesh, ptr %194, i64 0, i32 4
  call void @CustomData_set_only_copy(ptr noundef nonnull %196, i64 noundef %154) #7
  %197 = getelementptr inbounds %struct.MultiresModifierData, ptr %193, i64 0, i32 4
  %198 = load i8, ptr %197, align 1, !tbaa !123
  %199 = zext i8 %198 to i32
  store i32 %199, ptr %152, align 4, !tbaa !121
  %200 = getelementptr inbounds %struct.MultiresModifierData, ptr %193, i64 0, i32 5
  %201 = load i8, ptr %200, align 4, !tbaa !126
  %202 = icmp ne i8 %201, 0
  %203 = zext i1 %202 to i8
  store i8 %203, ptr %153, align 8, !tbaa !122
  store i8 %198, ptr %155, align 8, !tbaa !127
  store i8 %198, ptr %156, align 1, !tbaa !128
  %204 = call ptr @multires_make_derived_from_derived(ptr noundef %194, ptr noundef nonnull %4, ptr noundef %169, i32 noundef 0) #7
  %205 = getelementptr inbounds %struct.DerivedMesh, ptr %194, i64 0, i32 95
  %206 = load ptr, ptr %205, align 8, !tbaa !129
  call void %206(ptr noundef %194) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #7
  store ptr %204, ptr %157, align 8, !tbaa !131
  %207 = call ptr @get_multires_modifier(ptr noundef %23, ptr noundef %169, i8 noundef zeroext 0) #7
  %208 = load ptr, ptr %191, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(120) %207, i64 120, i1 false), !tbaa.struct !120
  %209 = call ptr @CDDM_from_mesh(ptr noundef %208) #7
  %210 = getelementptr inbounds %struct.MultiresModifierData, ptr %207, i64 0, i32 1
  %211 = load i8, ptr %210, align 8, !tbaa !127
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %189
  %214 = zext i8 %211 to i32
  store i32 %214, ptr %158, align 8, !tbaa !121
  br label %216

215:                                              ; preds = %189
  store i32 1, ptr %158, align 8, !tbaa !121
  store i8 1, ptr %159, align 4, !tbaa !126
  br label %216

216:                                              ; preds = %213, %215
  call void @DM_set_only_copy(ptr noundef %209, i64 noundef %160) #7
  %217 = load i32, ptr %158, align 8, !tbaa !121
  %218 = trunc i32 %217 to i8
  store i8 %218, ptr %161, align 8, !tbaa !127
  store i8 %218, ptr %162, align 1, !tbaa !128
  %219 = call ptr @multires_make_derived_from_derived(ptr noundef %209, ptr noundef nonnull %3, ptr noundef %169, i32 noundef 0) #7
  %220 = getelementptr inbounds %struct.DerivedMesh, ptr %209, i64 0, i32 95
  %221 = load ptr, ptr %220, align 8, !tbaa !129
  call void %221(ptr noundef %209) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #7
  store ptr %219, ptr %7, align 8, !tbaa !132
  call void @RE_multires_bake_images(ptr noundef nonnull %7) #7
  call void @BLI_freelistN(ptr noundef nonnull %163) #7
  %222 = load ptr, ptr %7, align 8, !tbaa !132
  %223 = getelementptr inbounds %struct.DerivedMesh, ptr %222, i64 0, i32 95
  %224 = load ptr, ptr %223, align 8, !tbaa !129
  call void %224(ptr noundef %222) #7
  %225 = load ptr, ptr %157, align 8, !tbaa !131
  %226 = getelementptr inbounds %struct.DerivedMesh, ptr %225, i64 0, i32 95
  %227 = load ptr, ptr %226, align 8, !tbaa !129
  call void %227(ptr noundef %225) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #7
  %228 = load ptr, ptr %165, align 8, !tbaa !73
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %164, !llvm.loop !133

230:                                              ; preds = %216
  call void @BLI_freelistN(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br i1 %134, label %232, label %300

231:                                              ; preds = %131
  call void @BLI_freelistN(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %232

232:                                              ; preds = %231, %230
  %233 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %234 = load ptr, ptr %233, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %234, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %300

235:                                              ; preds = %19
  %236 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %237 = load ptr, ptr %236, align 8, !tbaa !134
  %238 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %239 = getelementptr inbounds %struct.Scene, ptr %238, i64 0, i32 22, i32 75
  %240 = load i16, ptr %239, align 2, !tbaa !71
  %241 = and i16 %240, 4
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %235
  %244 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  tail call void @BKE_report(ptr noundef %237, i32 noundef 32, ptr noundef nonnull @.str.12) #7
  br label %302

247:                                              ; preds = %243, %235
  %248 = getelementptr inbounds %struct.Scene, ptr %238, i64 0, i32 22, i32 74
  %249 = load i16, ptr %248, align 4, !tbaa !48
  %250 = icmp eq i16 %249, 2
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Scene, ptr %238, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !136
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  tail call void @BKE_report(ptr noundef %237, i32 noundef 32, ptr noundef nonnull @.str.13) #7
  br label %302

256:                                              ; preds = %247, %251
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %9) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %9, i8 0, i64 104, i1 false)
  call fastcc void @init_bake_internal(ptr noundef nonnull %9, ptr noundef %0)
  %257 = load ptr, ptr %236, align 8, !tbaa !134
  %258 = getelementptr inbounds %struct.BakeRender, ptr %9, i64 0, i32 6
  store ptr %257, ptr %258, align 8, !tbaa !137
  %259 = load ptr, ptr %9, align 8, !tbaa !139
  tail call void @RE_test_break_cb(ptr noundef %259, ptr noundef null, ptr noundef nonnull @thread_break) #7
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %260 = load ptr, ptr %9, align 8, !tbaa !139
  %261 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 12
  %262 = load i32, ptr %261, align 8, !tbaa !142
  %263 = load i16, ptr %12, align 4, !tbaa !48
  %264 = sext i16 %263 to i32
  %265 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 75
  %266 = load i16, ptr %265, align 2, !tbaa !71
  %267 = and i16 %266, 4
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %256
  %270 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 6
  %271 = load ptr, ptr %270, align 8, !tbaa !143
  %272 = icmp eq ptr %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.Base, ptr %271, i64 0, i32 7
  %275 = load ptr, ptr %274, align 8, !tbaa !81
  br label %276

276:                                              ; preds = %256, %273, %269
  %277 = phi ptr [ %275, %273 ], [ null, %269 ], [ null, %256 ]
  tail call void @RE_Database_Baking(ptr noundef %260, ptr noundef %10, ptr noundef %11, i32 noundef %262, i32 noundef %264, ptr noundef %277) #7
  call void @BLI_init_threads(ptr noundef nonnull %8, ptr noundef nonnull @do_bake_render, i32 noundef 1) #7
  %278 = getelementptr inbounds %struct.BakeRender, ptr %9, i64 0, i32 5
  store i32 0, ptr %278, align 4, !tbaa !144
  call void @BLI_insert_thread(ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %279 = load i32, ptr %278, align 4, !tbaa !144
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %276, %289
  call void @PIL_sleep_ms(i32 noundef 50) #7
  %282 = load i32, ptr %278, align 4, !tbaa !144
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !145
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = call i32 @blender_test_break() #7
  br label %289

289:                                              ; preds = %287, %284
  %290 = load i32, ptr %278, align 4, !tbaa !144
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %281, label %292, !llvm.loop !146

292:                                              ; preds = %289, %281, %276
  call void @BLI_end_threads(ptr noundef nonnull %8) #7
  %293 = getelementptr inbounds %struct.BakeRender, ptr %9, i64 0, i32 4
  %294 = load i32, ptr %293, align 8, !tbaa !147
  switch i32 %294, label %299 [
    i32 1, label %296
    i32 2, label %295
  ]

295:                                              ; preds = %292
  br label %296

296:                                              ; preds = %292, %295
  %297 = phi ptr [ @.str.4, %295 ], [ @.str.3, %292 ]
  %298 = load ptr, ptr %236, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %298, i32 noundef 32, ptr noundef nonnull %297) #7
  br label %299

299:                                              ; preds = %296, %292
  call fastcc void @finish_bake_internal(ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %300

300:                                              ; preds = %232, %230, %22, %299
  %301 = phi i32 [ 4, %299 ], [ 2, %22 ], [ 4, %232 ], [ 4, %230 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %11) #7
  br label %302

302:                                              ; preds = %255, %246, %300
  %303 = phi i32 [ %301, %300 ], [ 2, %246 ], [ 2, %255 ]
  ret i32 %303
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objects_bake_render_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.MultiresModifierData, align 8
  %5 = alloca %struct.MultiresModifierData, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 74
  %9 = load i16, ptr %8, align 4, !tbaa !48
  switch i16 %9, label %133 [
    i16 3, label %10
    i16 5, label %10
    i16 13, label %10
    i16 2, label %10
  ]

10:                                               ; preds = %3, %3, %3, %3
  %11 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 75
  %12 = load i16, ptr %11, align 2, !tbaa !71
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %133, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %17 = tail call fastcc zeroext i8 @multiresbake_check(ptr noundef %0, ptr noundef %1), !range !72
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %168, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %21 = tail call ptr %20(i64 noundef 56, ptr noundef nonnull @.str.17) #7
  %22 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 73
  %24 = load i16, ptr %23, align 2, !tbaa !104
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !148
  %27 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 74
  %28 = load i16, ptr %27, align 4, !tbaa !48
  %29 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 3
  store i16 %28, ptr %29, align 8, !tbaa !150
  %30 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 75
  %31 = load i16, ptr %30, align 2, !tbaa !71
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 32
  %34 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 4
  store i8 %33, ptr %34, align 2, !tbaa !151
  %35 = and i8 %32, 1
  %36 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 1
  store i8 %35, ptr %36, align 8, !tbaa !152
  %37 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 79
  %38 = load float, ptr %37, align 8, !tbaa !109
  %39 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 6
  store float %38, ptr %39, align 8, !tbaa !153
  %40 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 80
  %41 = load i16, ptr %40, align 4, !tbaa !111
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 5
  store i32 %42, ptr %43, align 4, !tbaa !154
  %44 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 49
  %45 = load i16, ptr %44, align 8, !tbaa !113
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 7
  store i32 %46, ptr %47, align 4, !tbaa !155
  %48 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 51
  %49 = load i16, ptr %48, align 4, !tbaa !115
  %50 = sext i16 %49 to i32
  %51 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 8
  store i32 %50, ptr %51, align 8, !tbaa !156
  %52 = tail call i32 @BKE_scene_num_threads(ptr noundef %22) #7
  %53 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 9
  store i32 %52, ptr %53, align 4, !tbaa !157
  %54 = load i16, ptr %30, align 2, !tbaa !71
  %55 = and i16 %54, 128
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %19
  %58 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 82
  %59 = load float, ptr %58, align 8, !tbaa !118
  br label %60

60:                                               ; preds = %57, %19
  %61 = phi float [ %59, %57 ], [ -1.000000e+00, %19 ]
  %62 = getelementptr inbounds %struct.MultiresBakeJob, ptr %21, i64 0, i32 10
  store float %61, ptr %62, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %63 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %6) #7
  %64 = load ptr, ptr %6, align 8, !tbaa !73
  %65 = icmp eq ptr %64, null
  br i1 %65, label %121, label %66

66:                                               ; preds = %60
  %67 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %68 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 1
  %69 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 2
  %70 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 5
  %71 = or i64 %67, 32
  %72 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 1
  %73 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 2
  br label %74

74:                                               ; preds = %66, %111
  %75 = phi ptr [ %64, %66 ], [ %119, %111 ]
  %76 = getelementptr inbounds %struct.CollectionPointerLink, ptr %75, i64 0, i32 2, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !77
  %78 = getelementptr inbounds %struct.Base, ptr %77, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  call void @multires_force_update(ptr noundef %79) #7
  %80 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %81 = call ptr %80(i64 noundef 64, ptr noundef nonnull @.str.19) #7
  %82 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %81, i64 0, i32 6
  %83 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %81, i64 0, i32 4
  %84 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !83
  %86 = call ptr @get_multires_modifier(ptr noundef %22, ptr noundef %79, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(120) %86, i64 120, i1 false), !tbaa.struct !120
  %87 = call ptr @CDDM_from_mesh(ptr noundef %85) #7
  call void @DM_set_only_copy(ptr noundef %87, i64 noundef %67) #7
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %87, i64 0, i32 3
  call void @CustomData_set_only_copy(ptr noundef nonnull %88, i64 noundef %67) #7
  %89 = getelementptr inbounds %struct.DerivedMesh, ptr %87, i64 0, i32 4
  call void @CustomData_set_only_copy(ptr noundef nonnull %89, i64 noundef %67) #7
  %90 = getelementptr inbounds %struct.MultiresModifierData, ptr %86, i64 0, i32 4
  %91 = load i8, ptr %90, align 1, !tbaa !123
  %92 = zext i8 %91 to i32
  store i32 %92, ptr %82, align 4, !tbaa !121
  %93 = getelementptr inbounds %struct.MultiresModifierData, ptr %86, i64 0, i32 5
  %94 = load i8, ptr %93, align 4, !tbaa !126
  %95 = icmp ne i8 %94, 0
  %96 = zext i1 %95 to i8
  store i8 %96, ptr %83, align 1, !tbaa !122
  %97 = load i8, ptr %90, align 1, !tbaa !123
  store i8 %97, ptr %68, align 8, !tbaa !127
  store i8 %97, ptr %69, align 1, !tbaa !128
  %98 = call ptr @multires_make_derived_from_derived(ptr noundef %87, ptr noundef nonnull %5, ptr noundef %79, i32 noundef 0) #7
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %87, i64 0, i32 95
  %100 = load ptr, ptr %99, align 8, !tbaa !129
  call void %100(ptr noundef %87) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #7
  %101 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %81, i64 0, i32 3
  store ptr %98, ptr %101, align 8, !tbaa !159
  %102 = call ptr @get_multires_modifier(ptr noundef %22, ptr noundef %79, i8 noundef zeroext 0) #7
  %103 = load ptr, ptr %84, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %102, i64 120, i1 false), !tbaa.struct !120
  %104 = call ptr @CDDM_from_mesh(ptr noundef %103) #7
  %105 = getelementptr inbounds %struct.MultiresModifierData, ptr %102, i64 0, i32 1
  %106 = load i8, ptr %105, align 8, !tbaa !127
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %74
  %109 = zext i8 %106 to i32
  br label %111

110:                                              ; preds = %74
  store i8 1, ptr %70, align 4, !tbaa !126
  br label %111

111:                                              ; preds = %108, %110
  %112 = phi i32 [ 1, %110 ], [ %109, %108 ]
  call void @DM_set_only_copy(ptr noundef %104, i64 noundef %71) #7
  %113 = trunc i32 %112 to i8
  store i8 %113, ptr %72, align 8, !tbaa !127
  store i8 %113, ptr %73, align 1, !tbaa !128
  %114 = call ptr @multires_make_derived_from_derived(ptr noundef %104, ptr noundef nonnull %4, ptr noundef %79, i32 noundef 0) #7
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %104, i64 0, i32 95
  %116 = load ptr, ptr %115, align 8, !tbaa !129
  call void %116(ptr noundef %104) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #7
  %117 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %81, i64 0, i32 2
  store ptr %114, ptr %117, align 8, !tbaa !161
  %118 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %81, i64 0, i32 5
  store i32 %112, ptr %118, align 4, !tbaa !162
  call void @BLI_addtail(ptr noundef %21, ptr noundef %81) #7
  %119 = load ptr, ptr %75, align 8, !tbaa !73
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %74, !llvm.loop !163

121:                                              ; preds = %111, %60
  call void @BLI_freelistN(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %122 = load ptr, ptr %21, align 8, !tbaa !164
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %126, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %168

127:                                              ; preds = %121
  %128 = call ptr @CTX_wm_manager(ptr noundef %0) #7
  %129 = call ptr @CTX_wm_window(ptr noundef %0) #7
  %130 = call ptr @WM_jobs_get(ptr noundef %128, ptr noundef %129, ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef 7) #7
  call void @WM_jobs_customdata_set(ptr noundef %130, ptr noundef nonnull %21, ptr noundef nonnull @multiresbake_freejob) #7
  call void @WM_jobs_timer(ptr noundef %130, double noundef 5.000000e-01, i32 noundef 167772160, i32 noundef 0) #7
  call void @WM_jobs_callbacks(ptr noundef %130, ptr noundef nonnull @multiresbake_startjob, ptr noundef null, ptr noundef null, ptr noundef null) #7
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %131 = call ptr @CTX_wm_manager(ptr noundef %0) #7
  call void @WM_jobs_start(ptr noundef %131, ptr noundef %130) #7
  call void @WM_cursor_wait(i8 noundef zeroext 0) #7
  %132 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %168

133:                                              ; preds = %3, %10
  %134 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %135 = tail call zeroext i8 @WM_jobs_test(ptr noundef %134, ptr noundef %7, i32 noundef 7) #7
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %170

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !134
  %140 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %141 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 22, i32 75
  %142 = load i16, ptr %141, align 2, !tbaa !71
  %143 = and i16 %142, 4
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  tail call void @BKE_report(ptr noundef %139, i32 noundef 32, ptr noundef nonnull @.str.12) #7
  br label %170

149:                                              ; preds = %145, %137
  %150 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 22, i32 74
  %151 = load i16, ptr %150, align 4, !tbaa !48
  %152 = icmp eq i16 %151, 2
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !136
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  tail call void @BKE_report(ptr noundef %139, i32 noundef 32, ptr noundef nonnull @.str.13) #7
  br label %170

158:                                              ; preds = %149, %153
  %159 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %160 = tail call ptr %159(i64 noundef 104, ptr noundef nonnull @.str.15) #7
  tail call fastcc void @init_bake_internal(ptr noundef %160, ptr noundef %0)
  %161 = load ptr, ptr %138, align 8, !tbaa !134
  %162 = getelementptr inbounds %struct.BakeRender, ptr %160, i64 0, i32 6
  store ptr %161, ptr %162, align 8, !tbaa !137
  %163 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %164 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %165 = tail call ptr @WM_jobs_get(ptr noundef %163, ptr noundef %164, ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef 7, i32 noundef 7) #7
  tail call void @WM_jobs_customdata_set(ptr noundef %165, ptr noundef %160, ptr noundef nonnull @bake_freejob) #7
  tail call void @WM_jobs_timer(ptr noundef %165, double noundef 5.000000e-01, i32 noundef 167772160, i32 noundef 0) #7
  tail call void @WM_jobs_callbacks(ptr noundef %165, ptr noundef nonnull @bake_startjob, ptr noundef null, ptr noundef nonnull @bake_update, ptr noundef null) #7
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !165
  %166 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  tail call void @WM_jobs_start(ptr noundef %166, ptr noundef %165) #7
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #7
  %167 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #7
  br label %168

168:                                              ; preds = %127, %124, %15, %158
  %169 = phi i32 [ 1, %158 ], [ 1, %127 ], [ 2, %124 ], [ 2, %15 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67895296, ptr noundef %7) #7
  br label %170

170:                                              ; preds = %157, %148, %133, %168
  %171 = phi i32 [ %169, %168 ], [ 2, %133 ], [ 2, %148 ], [ 2, %157 ]
  ret i32 %171
}

; Function Attrs: nounwind uwtable
define internal i32 @objects_bake_render_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 7) #7
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !166
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

declare i32 @ED_operator_object_active(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @init_bake_internal(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %1) #7
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %1) #7
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %1) #7
  %6 = tail call zeroext i8 @ED_object_editmode_load(ptr noundef %5) #7
  %7 = icmp eq ptr %4, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_screen_find_big_area(ptr noundef nonnull %4, i32 noundef 6, i16 noundef signext 10) #7
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !169
  %13 = tail call ptr @CTX_data_main(ptr noundef %1) #7
  %14 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !170
  %15 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !171
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 75
  %17 = load i16, ptr %16, align 2, !tbaa !71
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  br label %27

27:                                               ; preds = %10, %24, %20
  %28 = phi ptr [ %26, %24 ], [ null, %20 ], [ null, %10 ]
  %29 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !172
  %30 = tail call ptr @RE_NewRender(ptr noundef nonnull @.str.14) #7
  store ptr %30, ptr %0, align 8, !tbaa !139
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 74
  %32 = load i16, ptr %31, align 4, !tbaa !48
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !136
  %37 = getelementptr inbounds %struct.World, ptr %36, i64 0, i32 23
  %38 = load i16, ptr %37, align 2, !tbaa !173
  %39 = lshr i16 %38, 6
  %40 = and i16 %39, 1
  %41 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 11
  store i16 %40, ptr %41, align 8, !tbaa !175
  %42 = or i16 %38, 64
  store i16 %42, ptr %37, align 2, !tbaa !173
  br label %46

43:                                               ; preds = %27
  %44 = load ptr, ptr %29, align 8, !tbaa !172
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %34, %43
  %47 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  %48 = load i32, ptr %47, align 8, !tbaa !176
  %49 = lshr i32 %48, 16
  %50 = trunc i32 %49 to i16
  %51 = and i16 %50, 1
  %52 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 12
  store i16 %51, ptr %52, align 2, !tbaa !177
  %53 = or i32 %48, 65536
  store i32 %53, ptr %47, align 8, !tbaa !176
  br label %54

54:                                               ; preds = %46, %43
  ret void
}

declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @thread_break(ptr nocapture readnone %0) #5 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %3 = zext i8 %2 to i32
  ret i32 %3
}

declare void @RE_Database_Baking(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_bake_render(ptr nocapture noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 74
  %6 = load i16, ptr %5, align 4, !tbaa !48
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = tail call i32 @RE_bake_shade_all_selected(ptr noundef %2, i32 noundef %7, ptr noundef %9, ptr noundef null, ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 5
  store i32 1, ptr %14, align 4, !tbaa !144
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

declare i32 @blender_test_break() local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @finish_bake_internal(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  tail call void @RE_Database_Free(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 74
  %6 = load i16, ptr %5, align 4, !tbaa !48
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 11
  %10 = load i16, ptr %9, align 8, !tbaa !175
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  %15 = getelementptr inbounds %struct.World, ptr %14, i64 0, i32 23
  %16 = load i16, ptr %15, align 2, !tbaa !173
  %17 = and i16 %16, -65
  store i16 %17, ptr %15, align 2, !tbaa !173
  br label %18

18:                                               ; preds = %8, %12
  br i1 %7, label %23, label %19

19:                                               ; preds = %1, %18
  %20 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !172
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19, %18
  %24 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 12
  %25 = load i16, ptr %24, align 2, !tbaa !177
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 47
  %29 = load i32, ptr %28, align 8, !tbaa !176
  %30 = and i32 %29, -65537
  store i32 %30, ptr %28, align 8, !tbaa !176
  br label %31

31:                                               ; preds = %23, %27, %19
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 75
  %33 = load i16, ptr %32, align 2, !tbaa !71
  %34 = and i16 %33, 64
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %31
  %37 = load ptr, ptr @G, align 8, !tbaa !179
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %39, null
  br i1 %40, label %82, label %41

41:                                               ; preds = %36, %79
  %42 = phi ptr [ %80, %79 ], [ %39, %36 ]
  %43 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %42, ptr noundef null, ptr noundef null) #7
  %44 = getelementptr inbounds %struct.Image, ptr %42, i64 0, i32 9
  %45 = load i16, ptr %44, align 4, !tbaa !180
  %46 = icmp eq i16 %45, 2
  %47 = icmp ne ptr %43, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 23
  %51 = load i32, ptr %50, align 4, !tbaa !181
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @GPU_free_image(ptr noundef nonnull %42) #7
  tail call void @imb_freemipmapImBuf(ptr noundef nonnull %43) #7
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, ptr %50, align 4, !tbaa !181
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = or i32 %56, 16
  store i32 %60, ptr %50, align 4, !tbaa !181
  br label %61

61:                                               ; preds = %59, %55, %41
  br i1 %47, label %62, label %79

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 25
  %64 = load ptr, ptr %63, align 8, !tbaa !184
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.BakeImBufuserData, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !185
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %71(ptr noundef nonnull %68) #7
  br label %72

72:                                               ; preds = %70, %66
  %73 = load ptr, ptr %64, align 8, !tbaa !187
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %76(ptr noundef nonnull %73) #7
  br label %77

77:                                               ; preds = %75, %72
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %78(ptr noundef nonnull %64) #7
  store ptr null, ptr %63, align 8, !tbaa !184
  br label %79

79:                                               ; preds = %62, %77, %61
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %42, ptr noundef %43, ptr noundef null) #7
  tail call void @DAG_id_tag_update(ptr noundef nonnull %42, i16 noundef signext 0) #7
  %80 = load ptr, ptr %42, align 8, !tbaa !73
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %41, !llvm.loop !188

82:                                               ; preds = %79, %36, %31
  %83 = load ptr, ptr %3, align 8, !tbaa !171
  %84 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 75
  %85 = load i16, ptr %84, align 2, !tbaa !71
  %86 = and i16 %85, 64
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr @G, align 8, !tbaa !179
  %90 = getelementptr inbounds %struct.Main, ptr %89, i64 0, i32 14
  %91 = load ptr, ptr %90, align 8, !tbaa !73
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %88, %100
  %94 = phi ptr [ %101, %100 ], [ %91, %88 ]
  %95 = getelementptr inbounds %struct.ID, ptr %94, i64 0, i32 5
  %96 = load i16, ptr %95, align 2, !tbaa !189
  %97 = and i16 %96, 1024
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  tail call void @DAG_id_tag_update(ptr noundef nonnull %94, i16 noundef signext 2) #7
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %94) #7
  br label %100

100:                                              ; preds = %93, %99
  %101 = load ptr, ptr %94, align 8, !tbaa !73
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %93, !llvm.loop !190

103:                                              ; preds = %100, %88, %82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @multiresbake_check(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %11

11:                                               ; preds = %115, %2
  %12 = phi ptr [ %3, %2 ], [ %14, %115 ]
  %13 = phi i8 [ 1, %2 ], [ %117, %115 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %119, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !191
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.6) #7
  br label %115

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = call ptr @get_multires_modifier(ptr noundef %4, ptr noundef %20, i8 noundef zeroext 0) #7
  %30 = icmp ne i8 %13, 0
  %31 = icmp ne ptr %29, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.MultiresModifierData, ptr %29, i64 0, i32 4
  %35 = load i8, ptr %34, align 1, !tbaa !123
  %36 = icmp ne i8 %35, 0
  %37 = zext i1 %36 to i8
  %38 = load ptr, ptr %29, align 8, !tbaa !192
  %39 = icmp ne ptr %38, null
  %40 = select i1 %39, i1 %36, i1 false
  br i1 %40, label %41, label %51

41:                                               ; preds = %33, %41
  %42 = phi ptr [ %47, %41 ], [ %38, %33 ]
  %43 = phi i8 [ %46, %41 ], [ %37, %33 ]
  %44 = call zeroext i8 @modifier_isEnabled(ptr noundef %4, ptr noundef nonnull %42, i32 noundef 1) #7
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i8 %43, i8 0
  %47 = load ptr, ptr %42, align 8, !tbaa !192
  %48 = icmp ne ptr %47, null
  %49 = icmp ne i8 %46, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %41, label %51, !llvm.loop !193

51:                                               ; preds = %41, %33, %26
  %52 = phi i8 [ 0, %26 ], [ %37, %33 ], [ %46, %41 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load ptr, ptr %9, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %55, i32 noundef 32, ptr noundef nonnull @.str.7) #7
  br label %115

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !97
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %8, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %61, i32 noundef 32, ptr noundef nonnull @.str.8) #7
  br label %110

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 30
  %64 = load i32, ptr %63, align 8, !tbaa !98
  %65 = sext i32 %64 to i64
  br label %66

66:                                               ; preds = %62, %107
  %67 = phi i64 [ %65, %62 ], [ %69, %107 ]
  %68 = phi i8 [ 1, %62 ], [ %108, %107 ]
  %69 = add nsw i64 %67, -1
  %70 = icmp ne i64 %67, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load ptr, ptr %57, align 8, !tbaa !97
  %73 = getelementptr inbounds %struct.MTexPoly, ptr %72, i64 %69
  %74 = load ptr, ptr %73, align 8, !tbaa !99
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %7, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %77, i32 noundef 32, ptr noundef nonnull @.str.9) #7
  br label %107

78:                                               ; preds = %71
  %79 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %74, ptr noundef null, ptr noundef null) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !194
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !195
  %88 = icmp eq ptr %87, null
  %89 = select i1 %88, i8 0, i8 %68
  br label %90

90:                                               ; preds = %85, %81
  %91 = phi i8 [ %68, %81 ], [ %89, %85 ]
  %92 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !195
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ImBuf, ptr %79, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !196
  switch i32 %97, label %98 [
    i32 0, label %99
    i32 4, label %99
  ]

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %95, %95, %98, %90
  %100 = phi i8 [ %91, %95 ], [ 0, %98 ], [ %91, %90 ], [ %91, %95 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99, %78
  %103 = phi ptr [ @.str.10, %78 ], [ @.str.11, %99 ]
  %104 = load ptr, ptr %10, align 8, !tbaa !134
  call void @BKE_report(ptr noundef %104, i32 noundef 32, ptr noundef nonnull %103) #7
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i8 [ 1, %99 ], [ 0, %102 ]
  call void @BKE_image_release_ibuf(ptr noundef nonnull %74, ptr noundef %79, ptr noundef null) #7
  br label %107

107:                                              ; preds = %105, %76
  %108 = phi i8 [ %106, %105 ], [ 0, %76 ]
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %66, !llvm.loop !197

110:                                              ; preds = %66, %107, %60
  %111 = phi i1 [ true, %60 ], [ %70, %107 ], [ %70, %66 ]
  %112 = select i1 %111, i32 2, i32 0
  %113 = xor i1 %111, true
  %114 = zext i1 %113 to i8
  br label %115

115:                                              ; preds = %110, %54, %24
  %116 = phi i32 [ 2, %24 ], [ 2, %54 ], [ %112, %110 ]
  %117 = phi i8 [ 0, %24 ], [ 0, %54 ], [ %114, %110 ]
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %11, label %119, !llvm.loop !198

119:                                              ; preds = %115, %11
  %120 = phi i8 [ %117, %115 ], [ %13, %11 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i8 %120
}

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #2

declare void @RE_multires_bake_images(ptr noundef) local_unnamed_addr #2

declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_single_image(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.vec_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.nor_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.nor_solid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.disp_alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.clear_single_image.disp_solid, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = and i16 %10, 1024
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null) #7
  %15 = getelementptr inbounds %struct.ImBuf, ptr %14, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !199
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
  call void @IMB_rectfill(ptr noundef %14, ptr noundef nonnull %25) #7
  %26 = load i16, ptr %9, align 2, !tbaa !92
  %27 = or i16 %26, 1024
  store i16 %27, ptr %9, align 2, !tbaa !92
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %14, ptr noundef null) #7
  br label %28

28:                                               ; preds = %24, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @IMB_rectfill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #2

declare void @DM_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CustomData_set_only_copy(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @multires_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_object_editmode_load(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

declare i32 @RE_bake_shade_all_selected(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #2

declare void @GPU_free_image(ptr noundef) local_unnamed_addr #2

declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bake_freejob(ptr noundef %0) #1 {
  tail call fastcc void @finish_bake_internal(ptr noundef %0)
  %2 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !147
  switch i32 %3, label %10 [
    i32 1, label %4
    i32 2, label %7
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  tail call void @BKE_report(ptr noundef %6, i32 noundef 32, ptr noundef nonnull @.str.20) #7
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  tail call void @BKE_report(ptr noundef %9, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %10

10:                                               ; preds = %1, %7, %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %11(ptr noundef %0) #7
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !165
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bake_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 7
  store ptr %1, ptr %9, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 8
  store ptr %2, ptr %10, align 8, !tbaa !201
  %11 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 9
  store ptr %3, ptr %11, align 8, !tbaa !178
  %12 = load ptr, ptr %0, align 8, !tbaa !139
  tail call void @RE_test_break_cb(ptr noundef %12, ptr noundef null, ptr noundef nonnull @thread_break) #7
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !140
  %13 = load ptr, ptr %0, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !142
  %16 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 74
  %17 = load i16, ptr %16, align 4, !tbaa !48
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !172
  tail call void @RE_Database_Baking(ptr noundef %13, ptr noundef %8, ptr noundef %6, i32 noundef %15, i32 noundef %18, ptr noundef %20) #7
  %21 = load ptr, ptr %0, align 8, !tbaa !139
  %22 = load i16, ptr %16, align 4, !tbaa !48
  %23 = sext i16 %22 to i32
  %24 = load ptr, ptr %19, align 8, !tbaa !172
  %25 = load ptr, ptr %10, align 8, !tbaa !201
  %26 = load ptr, ptr %11, align 8, !tbaa !178
  %27 = tail call i32 @RE_bake_shade_all_selected(ptr noundef %21, i32 noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26) #7
  %28 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bake_update(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.BakeRender, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !202
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @RE_bake_shade_get_image() #7
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %11, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !205
  br label %16

16:                                               ; preds = %9, %13, %5, %1
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @multiresbake_freejob(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %24
  %5 = phi ptr [ %6, %24 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  %7 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  tail call void %10(ptr noundef %8) #7
  %11 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  tail call void %14(ptr noundef %12) #7
  %15 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %4 ]
  %20 = getelementptr inbounds %struct.LinkData, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !212
  tail call void @GPU_free_image(ptr noundef %21) #7
  %22 = load ptr, ptr %19, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !214

24:                                               ; preds = %18, %4
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #7
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %25(ptr noundef nonnull %5) #7
  %26 = icmp eq ptr %6, null
  br i1 %26, label %27, label %4, !llvm.loop !215

27:                                               ; preds = %24, %1
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %28(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @multiresbake_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.MultiresBakeRender, align 8
  %6 = tail call i32 @BLI_countlist(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !152
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %62
  %16 = phi ptr [ %11, %13 ], [ %63, %62 ]
  %17 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %20 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %19, i32 noundef 5) #7
  %21 = load i16, ptr %14, align 8, !tbaa !150
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
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  %28 = tail call i32 %27(ptr noundef %18) #7
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = zext nneg i32 %28 to i64
  br label %35

32:                                               ; preds = %35
  br i1 %29, label %33, label %62

33:                                               ; preds = %32
  %34 = zext nneg i32 %28 to i64
  br label %47

35:                                               ; preds = %35, %30
  %36 = phi i64 [ 0, %30 ], [ %42, %35 ]
  %37 = getelementptr inbounds %struct.MTFace, ptr %20, i64 %36, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.ID, ptr %38, i64 0, i32 5
  %40 = load i16, ptr %39, align 2, !tbaa !92
  %41 = and i16 %40, -1025
  store i16 %41, ptr %39, align 2, !tbaa !92
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %32, label %35, !llvm.loop !94

44:                                               ; preds = %47
  br i1 %29, label %45, label %62

45:                                               ; preds = %44
  %46 = zext nneg i32 %28 to i64
  br label %53

47:                                               ; preds = %47, %33
  %48 = phi i64 [ 0, %33 ], [ %51, %47 ]
  %49 = getelementptr inbounds %struct.MTFace, ptr %20, i64 %48, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !90
  tail call fastcc void @clear_single_image(ptr noundef %50, i32 noundef %25)
  %51 = add nuw nsw i64 %48, 1
  %52 = icmp eq i64 %51, %34
  br i1 %52, label %44, label %47, !llvm.loop !95

53:                                               ; preds = %53, %45
  %54 = phi i64 [ 0, %45 ], [ %60, %53 ]
  %55 = getelementptr inbounds %struct.MTFace, ptr %20, i64 %54, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  %57 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !92
  %59 = and i16 %58, -1025
  store i16 %59, ptr %57, align 2, !tbaa !92
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, %46
  br i1 %61, label %62, label %53, !llvm.loop !96

62:                                               ; preds = %53, %24, %32, %44
  %63 = load ptr, ptr %16, align 8, !tbaa !73
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %15, !llvm.loop !217

65:                                               ; preds = %62, %10, %4
  %66 = load ptr, ptr %0, align 8, !tbaa !73
  %67 = icmp eq ptr %66, null
  br i1 %67, label %123, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 2
  %70 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 3
  %71 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 3
  %72 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 6
  %73 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 4
  %74 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 7
  %75 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 10
  %76 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 18
  %77 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 1
  %78 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 5
  %79 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 4
  %80 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 2
  %81 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 10
  %82 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 13
  %83 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 19
  %84 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 20
  %85 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 21
  %86 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 6
  %87 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 9
  %88 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 5
  %89 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 8
  %90 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 7
  %91 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 15
  %92 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 8
  %93 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 16
  %94 = getelementptr inbounds %struct.MultiresBakeJob, ptr %0, i64 0, i32 9
  %95 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 17
  %96 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 12
  br label %97

97:                                               ; preds = %68, %97
  %98 = phi ptr [ %66, %68 ], [ %121, %97 ]
  %99 = phi i32 [ 0, %68 ], [ %120, %97 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %100 = load i32, ptr %69, align 4, !tbaa !148
  store i32 %100, ptr %70, align 4, !tbaa !105
  %101 = load i16, ptr %71, align 8, !tbaa !150
  store i16 %101, ptr %72, align 8, !tbaa !107
  %102 = load i8, ptr %73, align 2, !tbaa !151
  store i8 %102, ptr %74, align 2, !tbaa !108
  %103 = load float, ptr %75, align 8, !tbaa !158
  store float %103, ptr %76, align 4, !tbaa !119
  %104 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %98, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !161
  store ptr %105, ptr %5, align 8, !tbaa !132
  %106 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %98, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !159
  store ptr %107, ptr %77, align 8, !tbaa !131
  %108 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %98, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !218
  store i32 %109, ptr %78, align 4, !tbaa !219
  %110 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %98, i64 0, i32 5
  %111 = load i32, ptr %110, align 4, !tbaa !162
  store i32 %111, ptr %79, align 8, !tbaa !220
  %112 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %98, i64 0, i32 4
  %113 = load i8, ptr %112, align 8, !tbaa !221
  store i8 %113, ptr %80, align 8, !tbaa !222
  store i32 %6, ptr %81, align 4, !tbaa !223
  store i32 %99, ptr %82, align 8, !tbaa !224
  store ptr %1, ptr %83, align 8, !tbaa !225
  store ptr %2, ptr %84, align 8, !tbaa !226
  store ptr %3, ptr %85, align 8, !tbaa !227
  %114 = load float, ptr %86, align 8, !tbaa !153
  store float %114, ptr %87, align 8, !tbaa !110
  %115 = load i32, ptr %88, align 4, !tbaa !154
  store i32 %115, ptr %89, align 4, !tbaa !112
  %116 = load i32, ptr %90, align 4, !tbaa !155
  store i32 %116, ptr %91, align 8, !tbaa !114
  %117 = load i32, ptr %92, align 8, !tbaa !156
  store i32 %117, ptr %93, align 4, !tbaa !116
  %118 = load i32, ptr %94, align 4, !tbaa !157
  store i32 %118, ptr %95, align 8, !tbaa !117
  call void @RE_multires_bake_images(ptr noundef nonnull %5) #7
  %119 = getelementptr inbounds %struct.MultiresBakerJobData, ptr %98, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(16) %96, i64 16, i1 false), !tbaa.struct !228
  %120 = add nuw nsw i32 %99, 1
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #7
  %121 = load ptr, ptr %98, align 8, !tbaa !73
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %97, !llvm.loop !229

123:                                              ; preds = %97, %65
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RE_bake_shade_get_image() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 72}
!48 = !{!49, !41, i64 932}
!49 = !{!"Scene", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !62, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !36, i64 4608, !68, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !55, i64 4664, !56, i64 4824, !70, i64 4888, !36, i64 4952}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !57, i64 264, !58, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !54, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !59, i64 544, !59, i64 560, !60, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !51, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !51, i64 2576, !54, i64 2580, !37, i64 2584, !61, i64 2616, !51, i64 3976, !51, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !55, i64 24, !56, i64 184}
!54 = !{!"float", !37, i64 0}
!55 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!57 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!58 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !54, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!59 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!60 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!61 = !{!"BakeData", !53, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!62 = !{!"AudioData", !51, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!63 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!64 = !{!"GameData", !63, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !65, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !66, i64 72, !54, i64 128, !54, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!65 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!66 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !51, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!67 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!68 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!69 = !{!"long", !37, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!71 = !{!49, !41, i64 934}
!72 = !{i8 0, i8 2}
!73 = !{!36, !36, i64 0}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!78, !36, i64 32}
!78 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !79, i64 16}
!79 = !{!"PointerRNA", !80, i64 0, !36, i64 8, !36, i64 16}
!80 = !{!"", !36, i64 0}
!81 = !{!82, !36, i64 32}
!82 = !{!"Base", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!83 = !{!84, !36, i64 296}
!84 = !{!"Object", !50, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !85, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !69, i64 1304, !69, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!85 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!86 = !{!87, !36, i64 216}
!87 = !{!"Mesh", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !88, i64 280, !88, i64 480, !88, i64 680, !88, i64 880, !88, i64 1080, !51, i64 1280, !51, i64 1284, !51, i64 1288, !51, i64 1292, !51, i64 1296, !51, i64 1300, !51, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !51, i64 1344, !41, i64 1348, !41, i64 1350, !54, i64 1352, !51, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!88 = !{!"CustomData", !36, i64 0, !37, i64 8, !51, i64 172, !51, i64 176, !51, i64 180, !36, i64 184, !36, i64 192}
!89 = !{!87, !51, i64 1288}
!90 = !{!91, !36, i64 32}
!91 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !41, i64 44, !41, i64 46}
!92 = !{!93, !41, i64 98}
!93 = !{!"Image", !50, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !51, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !51, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !54, i64 1296, !51, i64 1300, !41, i64 1304, !41, i64 1306, !51, i64 1308, !51, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !54, i64 1336, !54, i64 1340, !70, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!94 = distinct !{!94, !75, !76}
!95 = distinct !{!95, !75, !76}
!96 = distinct !{!96, !75, !76}
!97 = !{!87, !36, i64 176}
!98 = !{!87, !51, i64 1296}
!99 = !{!100, !36, i64 0}
!100 = !{!"MTexPoly", !36, i64 0, !37, i64 8, !37, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!101 = distinct !{!101, !75, !76}
!102 = distinct !{!102, !75, !76}
!103 = distinct !{!103, !75, !76}
!104 = !{!49, !41, i64 930}
!105 = !{!106, !51, i64 20}
!106 = !{!"MultiresBakeRender", !36, i64 0, !36, i64 8, !37, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !41, i64 32, !37, i64 34, !51, i64 36, !54, i64 40, !51, i64 44, !51, i64 48, !39, i64 56, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !51, i64 88, !54, i64 92, !36, i64 96, !36, i64 104, !36, i64 112}
!107 = !{!106, !41, i64 32}
!108 = !{!106, !37, i64 34}
!109 = !{!49, !54, i64 944}
!110 = !{!106, !54, i64 40}
!111 = !{!49, !41, i64 948}
!112 = !{!106, !51, i64 36}
!113 = !{!49, !41, i64 808}
!114 = !{!106, !51, i64 80}
!115 = !{!49, !41, i64 812}
!116 = !{!106, !51, i64 84}
!117 = !{!106, !51, i64 88}
!118 = !{!49, !54, i64 952}
!119 = !{!106, !54, i64 92}
!120 = !{i64 0, i64 8, !73, i64 8, i64 8, !73, i64 16, i64 4, !121, i64 20, i64 4, !121, i64 24, i64 4, !121, i64 28, i64 4, !121, i64 32, i64 64, !122, i64 96, i64 8, !73, i64 104, i64 8, !73, i64 112, i64 1, !122, i64 113, i64 1, !122, i64 114, i64 1, !122, i64 115, i64 1, !122, i64 116, i64 1, !122, i64 117, i64 1, !122, i64 118, i64 2, !122}
!121 = !{!51, !51, i64 0}
!122 = !{!37, !37, i64 0}
!123 = !{!124, !37, i64 115}
!124 = !{!"MultiresModifierData", !125, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118}
!125 = !{!"ModifierData", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!126 = !{!124, !37, i64 116}
!127 = !{!124, !37, i64 112}
!128 = !{!124, !37, i64 113}
!129 = !{!130, !36, i64 1680}
!130 = !{!"DerivedMesh", !88, i64 0, !88, i64 200, !88, i64 400, !88, i64 600, !88, i64 800, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !36, i64 1032, !36, i64 1040, !51, i64 1048, !54, i64 1052, !51, i64 1056, !51, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!131 = !{!106, !36, i64 8}
!132 = !{!106, !36, i64 0}
!133 = distinct !{!133, !75, !76}
!134 = !{!135, !36, i64 120}
!135 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!136 = !{!49, !36, i64 136}
!137 = !{!138, !36, i64 40}
!138 = !{!"BakeRender", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !51, i64 32, !51, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !41, i64 88, !41, i64 90, !36, i64 96}
!139 = !{!138, !36, i64 0}
!140 = !{!141, !37, i64 2080}
!141 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !51, i64 2096, !51, i64 2100, !37, i64 2104, !51, i64 2108, !51, i64 2112, !37, i64 2116}
!142 = !{!49, !51, i64 232}
!143 = !{!49, !36, i64 168}
!144 = !{!138, !51, i64 36}
!145 = !{!141, !37, i64 2081}
!146 = distinct !{!146, !75, !76}
!147 = !{!138, !51, i64 32}
!148 = !{!149, !51, i64 20}
!149 = !{!"", !39, i64 0, !37, i64 16, !51, i64 20, !41, i64 24, !37, i64 26, !51, i64 28, !54, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !54, i64 48}
!150 = !{!149, !41, i64 24}
!151 = !{!149, !37, i64 26}
!152 = !{!149, !37, i64 16}
!153 = !{!149, !54, i64 32}
!154 = !{!149, !51, i64 28}
!155 = !{!149, !51, i64 36}
!156 = !{!149, !51, i64 40}
!157 = !{!149, !51, i64 44}
!158 = !{!149, !54, i64 48}
!159 = !{!160, !36, i64 24}
!160 = !{!"MultiresBakerJobData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !51, i64 36, !51, i64 40, !39, i64 48}
!161 = !{!160, !36, i64 16}
!162 = !{!160, !51, i64 36}
!163 = distinct !{!163, !75, !76}
!164 = !{!149, !36, i64 0}
!165 = !{!141, !37, i64 2090}
!166 = !{!167, !41, i64 16}
!167 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !51, i64 48, !51, i64 52, !168, i64 56, !51, i64 64, !51, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !51, i64 108, !36, i64 112}
!168 = !{!"double", !37, i64 0}
!169 = !{!138, !36, i64 96}
!170 = !{!138, !36, i64 8}
!171 = !{!138, !36, i64 16}
!172 = !{!138, !36, i64 24}
!173 = !{!174, !41, i64 202}
!174 = !{!"World", !50, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !54, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !41, i64 504, !41, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!175 = !{!138, !41, i64 88}
!176 = !{!49, !51, i64 800}
!177 = !{!138, !41, i64 90}
!178 = !{!138, !36, i64 64}
!179 = !{!141, !36, i64 0}
!180 = !{!93, !41, i64 1244}
!181 = !{!182, !51, i64 292}
!182 = !{!"ImBuf", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !37, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !54, i64 112, !37, i64 120, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !36, i64 296, !36, i64 304, !51, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !51, i64 2376, !36, i64 2384, !51, i64 2392, !51, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !51, i64 2432, !60, i64 2436, !183, i64 2456}
!183 = !{!"DDSData", !51, i64 0, !51, i64 4, !36, i64 8, !51, i64 16}
!184 = !{!182, !36, i64 304}
!185 = !{!186, !36, i64 8}
!186 = !{!"BakeImBufuserData", !36, i64 0, !36, i64 8}
!187 = !{!186, !36, i64 0}
!188 = distinct !{!188, !75, !76}
!189 = !{!87, !41, i64 98}
!190 = distinct !{!190, !75, !76}
!191 = !{!84, !41, i64 136}
!192 = !{!125, !36, i64 0}
!193 = distinct !{!193, !75, !76}
!194 = !{!182, !36, i64 40}
!195 = !{!182, !36, i64 48}
!196 = !{!182, !51, i64 28}
!197 = distinct !{!197, !75, !76}
!198 = distinct !{!198, !75, !76}
!199 = !{!182, !37, i64 24}
!200 = !{!138, !36, i64 48}
!201 = !{!138, !36, i64 56}
!202 = !{!203, !37, i64 72}
!203 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !60, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!204 = !{!203, !36, i64 96}
!205 = !{!206, !36, i64 40}
!206 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !51, i64 36, !36, i64 40, !207, i64 48, !36, i64 88, !208, i64 96, !209, i64 5360, !36, i64 10520, !37, i64 10528, !54, i64 10536, !54, i64 10540, !54, i64 10544, !54, i64 10548, !54, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !210, i64 10568}
!207 = !{!"ImageUser", !36, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !51, i64 36}
!208 = !{!"Scopes", !51, i64 0, !51, i64 4, !51, i64 8, !54, i64 12, !51, i64 16, !54, i64 20, !54, i64 24, !51, i64 28, !54, i64 32, !51, i64 36, !37, i64 40, !209, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !51, i64 5256, !51, i64 5260}
!209 = !{!"Histogram", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !54, i64 5128, !54, i64 5132, !41, i64 5136, !41, i64 5138, !51, i64 5140, !37, i64 5144}
!210 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!211 = !{!160, !36, i64 0}
!212 = !{!213, !36, i64 16}
!213 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!214 = distinct !{!214, !75, !76}
!215 = distinct !{!215, !75, !76}
!216 = !{!130, !36, i64 1120}
!217 = distinct !{!217, !75, !76}
!218 = !{!160, !51, i64 40}
!219 = !{!106, !51, i64 28}
!220 = !{!106, !51, i64 24}
!221 = !{!160, !37, i64 32}
!222 = !{!106, !37, i64 16}
!223 = !{!106, !51, i64 44}
!224 = !{!106, !51, i64 72}
!225 = !{!106, !36, i64 96}
!226 = !{!106, !36, i64 104}
!227 = !{!106, !36, i64 112}
!228 = !{i64 0, i64 8, !73, i64 8, i64 8, !73}
!229 = distinct !{!229, !75, !76}
